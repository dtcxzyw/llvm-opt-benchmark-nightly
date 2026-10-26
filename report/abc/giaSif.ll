Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSif?download=true
inline.NumInlined: 509
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@Gia_ManSifInitPos:Vec_IntAlloc.exit.i
  %.val65 = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.bx = sext i32 %.val65 to i64
  %i.by = icmp slt i64 %indvars.iv.next103, %i.bx
  br i1 %i.by, label %bb.d, label %.critedge2.preheader, !llvm.loop !59

bb.g:                                             ; preds = %.lr.ph99, %.critedge2
  %.val73106 = phi i32 [ %.val7395, %.lr.ph99 ], [ %.val73, %.critedge2 ] ; 2 uses
  %.05697 = phi i32 [ 1, %.lr.ph99 ], [ %.1, %.critedge2 ] ; 3 uses
  %.296 = phi i32 [ 0, %.lr.ph99 ], [ %i.ct, %.critedge2 ] ; 2 uses
  %.val76 = load ptr, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %.val76, null
  br i1 %.not, label %.critedge4, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val75 = load ptr, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val75, i64 8
  %.val77.val = load ptr, ptr %i.bz, align 8, !tbaa !40
  %i.ca = getelementptr i8, ptr %.val75, i64 4
  %.val75.val = load i32, ptr %i.ca, align 4, !tbaa !42
  %i.cb = sub i32 %.296, %.val73106
  %i.cc = add i32 %i.cb, %.val75.val
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %.val77.val, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !34 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [12 x i8], ptr %.val76, i64 %i.cg
  %.val3.i = load i64, ptr %i.ch, align 4
  %i.ci = trunc i64 %.val3.i to i32               ; 2 uses
  %i.cj = and i32 %i.ci, 536870911
  %i.ck = sub nsw i32 %i.cf, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !34 ; 2 uses
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = lshr i32 %i.ci, 29
  %.lobit = and i32 %i.cp, 1
  %i.cq = xor i32 %i.cn, %.lobit
  %i.cr = xor i32 %i.cq, 1
  %i.cs = tail call fastcc i32 @Gia_ManAppendAnd2(ptr noundef nonnull %i.a, i32 noundef %.05697, i32 noundef %i.cr)
  %.val73.pre = load i32, ptr %i.ao, align 8, !tbaa !45
  br label %.critedge2

.critedge2:                                       ; preds = %bb.h, %bb.i
  %.val73 = phi i32 [ %.val73.pre, %bb.i ], [ %.val73106, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %i.cs, %bb.i ], [ %.05697, %bb.h ] ; 2 uses
  %i.ct = add nuw nsw i32 %.296, 1                ; 2 uses
  %i.cu = icmp slt i32 %i.ct, %.val73
  br i1 %i.cu, label %bb.g, label %.critedge4, !llvm.loop !60

.critedge4:                                       ; preds = %bb.g, %.critedge2, %.critedge2.preheader
  %.056.lcssa = phi i32 [ 1, %.critedge2.preheader ], [ %.1, %.critedge2 ], [ %.05697, %bb.g ]
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.a, i32 noundef %.056.lcssa)
  %i.cv = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.a) #25 ; 3 uses
  tail call void @Gia_ManStop(ptr noundef nonnull %i.a) #25
  %i.cw = tail call ptr @Abc_NtkSolveGiaMiter(ptr noundef %i.cv) #25 ; 2 uses
  %.not62 = icmp eq ptr %i.cw, null
  %.val63 = load i32, ptr %i.i, align 4, !tbaa !42 ; 7 uses
  %i.cx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 9 uses
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %.val63, ptr %i.cy, align 4, !tbaa !42
  store i32 %.val63, ptr %i.cx, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !40
  tail call void @Gia_ManSetPhasePattern(ptr noundef %i.cv, ptr noundef nonnull %i.cx) #25
  br label %Vec_IntFree.exit

bb.k:                                             ; preds = %.critedge4
  %i.da = add i32 %.val63, -1
  %or.cond.i.i83 = icmp ult i32 %i.da, 15
  %spec.store.select.i.i84 = select i1 %or.cond.i.i83, i32 16, i32 %.val63 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i84, ptr %i.cx, align 8, !tbaa !43
  %.not.i.i85 = icmp eq i32 %spec.store.select.i.i84, 0
  br i1 %.not.i.i85, label %Vec_IntAlloc.exit.thread.i88, label %Vec_IntAlloc.exit.i86

Vec_IntAlloc.exit.thread.i88:                     ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr null, ptr %i.dc, align 8, !tbaa !40
  store i32 %.val63, ptr %i.db, align 4, !tbaa !42
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i86:                            ; preds = %bb.k
  %i.dd = sext i32 %spec.store.select.i.i84 to i64
  %i.de = shl nsw i64 %i.dd, 2
  %i.df = tail call noalias ptr @malloc(i64 noundef %i.de) #26 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !40
  store i32 %.val63, ptr %i.db, align 4, !tbaa !42
  %.not.i87 = icmp eq ptr %i.df, null
  br i1 %.not.i87, label %Vec_IntStart.exit, label %bb.l

bb.l:                                             ; preds = %Vec_IntAlloc.exit.i86
  %i.dh = sext i32 %.val63 to i64
  %i.di = shl nsw i64 %i.dh, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.df, i8 0, i64 %i.di, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i88, %Vec_IntAlloc.exit.i86, %bb.l
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntStart.exit, %bb.j
  tail call void @Gia_ManStop(ptr noundef %i.cv) #25
  tail call void @free(ptr noundef nonnull %i.f) #25
  ret ptr %i.cx
}

declare ptr @Abc_NtkSolveGiaMiter(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManSetPhasePattern(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @Gia_ManSifDerive(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val509 = load i32, ptr %i.a, align 8, !tbaa !44 ; 9 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 6 uses
  %i.c = add i32 %.val509, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val509 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !43
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i554, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i.i to i64
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #26 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !40
  store i32 %.val509, ptr %i.d, align 4, !tbaa !42
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %Vec_IntAlloc.exit.i552, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.i = sext i32 %.val509 to i64
  %i.j = shl nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 -1, i64 %i.j, i1 false)
  br label %Vec_IntAlloc.exit.i552

Vec_IntAlloc.exit.thread.i554:                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !40
  store i32 %.val509, ptr %i.d, align 4, !tbaa !42
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.l, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !40
  store i32 %.val509, ptr %i.m, align 4, !tbaa !42
  br label %.preheader730

Vec_IntAlloc.exit.i552:                           ; preds = %Vec_IntAlloc.exit.i, %bb.b
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %spec.store.select.i.i, ptr %i.o, align 8, !tbaa !43
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.f) #26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !40
  store i32 %.val509, ptr %i.p, align 4, !tbaa !42
  %.not.i553 = icmp eq ptr %i.q, null
  br i1 %.not.i553, label %.preheader730, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i552
  %i.s = sext i32 %.val509 to i64
  %i.t = shl nsw i64 %i.s, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 -1, i64 %i.t, i1 false)
  br label %.preheader730

.preheader730:                                    ; preds = %bb.c, %Vec_IntAlloc.exit.i552, %Vec_IntAlloc.exit.thread.i554
  %i.u = phi ptr [ %i.l, %Vec_IntAlloc.exit.thread.i554 ], [ %i.o, %Vec_IntAlloc.exit.i552 ], [ %i.o, %bb.c ] ; 5 uses
  %i.v = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 7 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 8 uses
  store i32 0, ptr %i.w, align 4, !tbaa !42
  store i32 100, ptr %i.v, align 8, !tbaa !43
  %i.x = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.y = getelementptr i8, ptr %i.v, i64 8        ; 11 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !40
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 6 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 6 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !42
  store i32 100, ptr %i.z, align 8, !tbaa !43
  %i.ab = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.ac = getelementptr i8, ptr %i.z, i64 8       ; 8 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !40
  %i.ad = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 7 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4      ; 8 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !42
  store i32 100, ptr %i.ad, align 8, !tbaa !43
  %i.af = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.ag = getelementptr i8, ptr %i.ad, i64 8      ; 10 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !40
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 7 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4      ; 7 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !42
  store i32 100, ptr %i.ah, align 8, !tbaa !43
  %i.aj = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.ak = getelementptr i8, ptr %i.ah, i64 8      ; 9 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !40
  %i.al = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 6 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4      ; 8 uses
  store i32 0, ptr %i.am, align 4, !tbaa !42
  store i32 100, ptr %i.al, align 8, !tbaa !43
  %i.an = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.ao = getelementptr i8, ptr %i.al, i64 8      ; 9 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !40
  %i.ap = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 9 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4      ; 7 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !42
  store i32 100, ptr %i.ap, align 8, !tbaa !43
  %i.ar = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.as = getelementptr i8, ptr %i.ap, i64 8      ; 12 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !40
  %i.at = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 6 uses
  store i32 0, ptr %i.au, align 4, !tbaa !42
  store i32 100, ptr %i.at, align 8, !tbaa !43
  %i.av = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26 ; 4 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 8      ; 4 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !40
  %i.ax = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 6 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4      ; 6 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !42
  store i32 100, ptr %i.ax, align 8, !tbaa !43
  %i.az = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26
  %i.ba = getelementptr i8, ptr %i.ax, i64 8      ; 8 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !40
  %i.bb = icmp sgt i32 %.val509, 1
  br i1 %i.bb, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader730
  %i.bc = getelementptr i8, ptr %0, i64 264
  %i.bd = getelementptr i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ag
  %i.be = phi ptr [ %i.av, %.lr.ph ], [ %i.dl, %bb.ag ] ; 6 uses
  %i.bf = phi ptr [ %i.av, %.lr.ph ], [ %i.dm, %bb.ag ] ; 8 uses
  %i.bg = phi i32 [ 100, %.lr.ph ], [ %i.dn, %bb.ag ] ; 12 uses
  %i.bh = phi i32 [ 0, %.lr.ph ], [ %i.do, %bb.ag ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 4 uses
  %.val540 = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bi = getelementptr i8, ptr %.val540, i64 8
  %.val540.val = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.val540.val, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !34
  %.not728 = icmp eq i32 %i.bk, 0
  br i1 %.not728, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val469 = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val469, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34
  switch i32 %i.bm, label %bb.ag [
    i32 1, label %bb.f
    i32 -1, label %bb.o
    i32 0, label %bb.x
  ]

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.w, align 4, !tbaa !42  ; 7 uses
  %i.bo = load i32, ptr %i.v, align 8, !tbaa !43
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.f
  %.pre998 = load ptr, ptr %i.y, align 8, !tbaa !40
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.bq = icmp slt i32 %i.bn, 16
  br i1 %i.bq, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !40  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.br, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.br, i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.bt = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.bu = icmp samesign ult i32 %i.bn, 1073741823
  %i.bv = shl nuw nsw i32 %i.bn, 1
  %spec.select.i = select i1 %i.bu, i32 %i.bv, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bn, %spec.select.i
  %.pre999 = load ptr, ptr %i.y, align 8, !tbaa !40 ; 3 uses
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %.pre999, null
  %i.bw = zext nneg i32 %spec.select.i to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = tail call ptr @realloc(ptr noundef nonnull %.pre999, i64 noundef %i.bx) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.bx) #26
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %i.ca = phi ptr [ %i.bt, %bb.j ], [ %i.bs, %bb.i ], [ %i.by, %bb.m ], [ %i.bz, %bb.n ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ]
  store ptr %i.ca, ptr %i.y, align 8, !tbaa !40
  store i32 %spec.select.sink.i, ptr %i.v, align 8, !tbaa !43
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.cb = phi ptr [ %.pre998, %.Vec_IntPush.exit_crit_edge ], [ %.pre999, %bb.k ], [ %i.ca, %Vec_IntGrow.exit11.sink.split.i ]
  %i.cc = add nsw i32 %i.bn, 1
  store i32 %i.cc, ptr %i.w, align 4, !tbaa !42
  br label %.sink.split

bb.o:                                             ; preds = %bb.e
  %i.cd = load i32, ptr %i.ai, align 4, !tbaa !42 ; 7 uses
  %i.ce = load i32, ptr %i.ah, align 8, !tbaa !43
  %i.cf = icmp eq i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.p, label %.Vec_IntPush.exit563_crit_edge

.Vec_IntPush.exit563_crit_edge:                   ; preds = %bb.o
  %.pre996 = load ptr, ptr %i.ak, align 8, !tbaa !40
  br label %Vec_IntPush.exit563

bb.p:                                             ; preds = %bb.o
  %i.cg = icmp slt i32 %i.cd, 16
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %.not9.i.i561 = icmp eq ptr %i.ch, null
  br i1 %.not9.i.i561, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ch, i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i559

bb.s:                                             ; preds = %bb.q
  %i.cj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i559

bb.t:                                             ; preds = %bb.p
  %i.ck = icmp samesign ult i32 %i.cd, 1073741823
  %i.cl = shl nuw nsw i32 %i.cd, 1
  %spec.select.i556 = select i1 %i.ck, i32 %i.cl, i32 2147483647 ; 4 uses
  %.not.i9.i557 = icmp samesign ult i32 %i.cd, %spec.select.i556
  %.pre997 = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 3 uses
  br i1 %.not.i9.i557, label %bb.u, label %Vec_IntPush.exit563

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i558 = icmp eq ptr %.pre997, null
  %i.cm = zext nneg i32 %spec.select.i556 to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2                ; 2 uses
  br i1 %.not9.i10.i558, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = tail call ptr @realloc(ptr noundef nonnull %.pre997, i64 noundef %i.cn) #28
  br label %Vec_IntGrow.exit11.sink.split.i559

bb.w:                                             ; preds = %bb.u
  %i.cp = tail call noalias ptr @malloc(i64 noundef %i.cn) #26
  br label %Vec_IntGrow.exit11.sink.split.i559

Vec_IntGrow.exit11.sink.split.i559:               ; preds = %bb.v, %bb.w, %bb.r, %bb.s
  %i.cq = phi ptr [ %i.cj, %bb.s ], [ %i.ci, %bb.r ], [ %i.co, %bb.v ], [ %i.cp, %bb.w ] ; 2 uses
  %spec.select.sink.i560 = phi i32 [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i556, %bb.v ], [ %spec.select.i556, %bb.w ]
  store ptr %i.cq, ptr %i.ak, align 8, !tbaa !40
  store i32 %spec.select.sink.i560, ptr %i.ah, align 8, !tbaa !43
  br label %Vec_IntPush.exit563

Vec_IntPush.exit563:                              ; preds = %.Vec_IntPush.exit563_crit_edge, %bb.t, %Vec_IntGrow.exit11.sink.split.i559
  %i.cr = phi ptr [ %.pre996, %.Vec_IntPush.exit563_crit_edge ], [ %.pre997, %bb.t ], [ %i.cq, %Vec_IntGrow.exit11.sink.split.i559 ]
  %i.cs = add nsw i32 %i.cd, 1
  store i32 %i.cs, ptr %i.ai, align 4, !tbaa !42
  br label %.sink.split

bb.x:                                             ; preds = %bb.e
  %i.ct = icmp eq i32 %i.bh, %i.bg
  br i1 %i.ct, label %bb.y, label %Vec_IntPush.exit571

bb.y:                                             ; preds = %bb.x
  %i.cu = icmp slt i32 %i.bg, 16
  br i1 %i.cu, label %bb.z, label %bb.ac

end_hunk_0
begin_hunk_1_@Gia_ManSifDerive:bb.a

.lr.ph771.new:                                    ; preds = %.lr.ph771
  %unroll_iter1121 = and i64 %i.nb, 2147483644
  br label %bb.ca

.lr.ph779.unr-lcssa:                              ; preds = %bb.ca
  %lcmp.mod1119.not = icmp eq i64 %xtraiter1117, 0
  br i1 %lcmp.mod1119.not, label %.lr.ph779, label %.epil.preheader1116

.epil.preheader1116:                              ; preds = %.lr.ph779.unr-lcssa, %.lr.ph771
  %indvars.iv886.epil.init = phi i64 [ 0, %.lr.ph771 ], [ %indvars.iv.next887.3, %.lr.ph779.unr-lcssa ]
  %lcmp.mod1120 = icmp ne i64 %xtraiter1117, 0
  tail call void @llvm.assume(i1 %lcmp.mod1120)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader1116
  %indvars.iv886.epil = phi i64 [ %indvars.iv886.epil.init, %.epil.preheader1116 ], [ %indvars.iv.next887.epil, %bb.bz ] ; 2 uses
  %epil.iter1118 = phi i64 [ 0, %.epil.preheader1116 ], [ %epil.iter1118.next, %bb.bz ]
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.val463, i64 %indvars.iv886.epil
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !34
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %.val489, i64 %i.nf
  store i32 %.val488.pre, ptr %i.ng, align 4, !tbaa !34
  %indvars.iv.next887.epil = add nuw nsw i64 %indvars.iv886.epil, 1
  %epil.iter1118.next = add i64 %epil.iter1118, 1 ; 2 uses
  %epil.iter1118.cmp.not = icmp eq i64 %epil.iter1118.next, %xtraiter1117
  br i1 %epil.iter1118.cmp.not, label %.lr.ph779, label %bb.bz, !llvm.loop !72

.lr.ph779:                                        ; preds = %bb.bz, %.lr.ph779.unr-lcssa
  %i.nh = getelementptr i8, ptr %0, i64 264       ; 2 uses
  %.val462.pre = load ptr, ptr %i.y, align 8, !tbaa !40
  %.val472772.pre = load ptr, ptr %i.nh, align 8, !tbaa !39 ; 3 uses
  br label %bb.cb

bb.ca:                                            ; preds = %bb.ca, %.lr.ph771.new
  %indvars.iv886 = phi i64 [ 0, %.lr.ph771.new ], [ %indvars.iv.next887.3, %bb.ca ] ; 5 uses
  %niter1122 = phi i64 [ 0, %.lr.ph771.new ], [ %niter1122.next.3, %bb.ca ]
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.val463, i64 %indvars.iv886
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !34
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %.val489, i64 %i.nk
  store i32 %.val488.pre, ptr %i.nl, align 4, !tbaa !34
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.val463, i64 %indvars.iv886
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !34
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %.val489, i64 %i.np
  store i32 %.val488.pre, ptr %i.nq, align 4, !tbaa !34
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.val463, i64 %indvars.iv886
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !34
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %.val489, i64 %i.nu
  store i32 %.val488.pre, ptr %i.nv, align 4, !tbaa !34
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.val463, i64 %indvars.iv886
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !34
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %.val489, i64 %i.nz
  store i32 %.val488.pre, ptr %i.oa, align 4, !tbaa !34
  %indvars.iv.next887.3 = add nuw nsw i64 %indvars.iv886, 4 ; 2 uses
  %niter1122.next.3 = add i64 %niter1122, 4       ; 2 uses
  %niter1122.ncmp.3.not = icmp eq i64 %niter1122.next.3, %unroll_iter1121
  br i1 %niter1122.ncmp.3.not, label %.lr.ph779.unr-lcssa, label %bb.ca, !llvm.loop !73

bb.cb:                                            ; preds = %.lr.ph779, %.critedge18
  %.val472.pre1038 = phi ptr [ %.val472772.pre, %.lr.ph779 ], [ %.val472.pre1039, %.critedge18 ] ; 2 uses
  %.val4211021 = phi i32 [ %.val422769, %.lr.ph779 ], [ %.val421, %.critedge18 ]
  %.val4721017 = phi ptr [ %.val472772.pre, %.lr.ph779 ], [ %.val4721018, %.critedge18 ] ; 2 uses
  %.val472772 = phi ptr [ %.val472772.pre, %.lr.ph779 ], [ %.val4727721013, %.critedge18 ] ; 2 uses
  %indvars.iv892 = phi i64 [ 0, %.lr.ph779 ], [ %indvars.iv.next893, %.critedge18 ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.val462.pre, i64 %indvars.iv892
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !34
  %i.od = sext i32 %i.oc to i64                   ; 2 uses
  %i.oe = getelementptr i8, ptr %.val472772, i64 8
  %.val472.val773 = load ptr, ptr %i.oe, align 8, !tbaa !40 ; 2 uses
  %i.of = getelementptr inbounds [4 x i8], ptr %.val472.val773, i64 %i.od
  %i.og = load i32, ptr %i.of, align 4, !tbaa !34
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %.val472.val773, i64 %i.oh ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !34
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %.lr.ph776, label %.critedge18

.lr.ph776:                                        ; preds = %bb.cb, %Gia_ObjUpdateTravIdCurrentId.exit
  %.val472.pre1040 = phi ptr [ %.val472.pre1041, %Gia_ObjUpdateTravIdCurrentId.exit ], [ %.val472.pre1038, %bb.cb ] ; 3 uses
  %.val4721019 = phi ptr [ %.val472, %Gia_ObjUpdateTravIdCurrentId.exit ], [ %.val4721017, %bb.cb ]
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %Gia_ObjUpdateTravIdCurrentId.exit ], [ 0, %bb.cb ] ; 2 uses
  %i.ol = phi ptr [ %i.po, %Gia_ObjUpdateTravIdCurrentId.exit ], [ %i.oi, %bb.cb ]
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv889
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !34 ; 2 uses
  %.val496 = load i32, ptr %i.jn, align 8, !tbaa !35 ; 2 uses
  %.val497 = load ptr, ptr %i.jo, align 8, !tbaa !32
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %.val497, i64 %i.op ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !34
  %.not.i599 = icmp eq i32 %i.or, %.val496
  br i1 %.not.i599, label %Gia_ObjUpdateTravIdCurrentId.exit, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph776
  store i32 %.val496, ptr %i.oq, align 4, !tbaa !34
  %i.os = load i32, ptr %i.ae, align 4, !tbaa !42 ; 7 uses
  %i.ot = load i32, ptr %i.ad, align 8, !tbaa !43
  %i.ou = icmp eq i32 %i.os, %i.ot
  br i1 %i.ou, label %bb.cd, label %.Vec_IntPush.exit607_crit_edge

.Vec_IntPush.exit607_crit_edge:                   ; preds = %bb.cc
  %.pre1015 = load ptr, ptr %i.ag, align 8, !tbaa !40
  br label %Vec_IntPush.exit607

bb.cd:                                            ; preds = %bb.cc
  %i.ov = icmp slt i32 %i.os, 16
  br i1 %i.ov, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.ow = load ptr, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %.not9.i.i605 = icmp eq ptr %i.ow, null
  br i1 %.not9.i.i605, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ox = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ow, i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i603

bb.cg:                                            ; preds = %bb.ce
  %i.oy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i603

bb.ch:                                            ; preds = %bb.cd
  %i.oz = icmp samesign ult i32 %i.os, 1073741823
  %i.pa = shl nuw nsw i32 %i.os, 1
  %spec.select.i600 = select i1 %i.oz, i32 %i.pa, i32 2147483647 ; 4 uses
  %.not.i9.i601 = icmp samesign ult i32 %i.os, %spec.select.i600
  %.pre1016 = load ptr, ptr %i.ag, align 8, !tbaa !40 ; 3 uses
  br i1 %.not.i9.i601, label %bb.ci, label %Vec_IntPush.exit607

bb.ci:                                            ; preds = %bb.ch
  %.not9.i10.i602 = icmp eq ptr %.pre1016, null
  %i.pb = zext nneg i32 %spec.select.i600 to i64
  %i.pc = shl nuw nsw i64 %i.pb, 2                ; 2 uses
  br i1 %.not9.i10.i602, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pd = tail call ptr @realloc(ptr noundef nonnull %.pre1016, i64 noundef %i.pc) #28
  br label %Vec_IntGrow.exit11.sink.split.i603

bb.ck:                                            ; preds = %bb.ci
  %i.pe = tail call noalias ptr @malloc(i64 noundef %i.pc) #26
  br label %Vec_IntGrow.exit11.sink.split.i603

Vec_IntGrow.exit11.sink.split.i603:               ; preds = %bb.cj, %bb.ck, %bb.cf, %bb.cg
  %i.pf = phi ptr [ %i.oy, %bb.cg ], [ %i.ox, %bb.cf ], [ %i.pd, %bb.cj ], [ %i.pe, %bb.ck ] ; 2 uses
  %spec.select.sink.i604 = phi i32 [ 16, %bb.cg ], [ 16, %bb.cf ], [ %spec.select.i600, %bb.cj ], [ %spec.select.i600, %bb.ck ]
  store ptr %i.pf, ptr %i.ag, align 8, !tbaa !40
  store i32 %spec.select.sink.i604, ptr %i.ad, align 8, !tbaa !43
  %.val472.pre.pre = load ptr, ptr %i.nh, align 8, !tbaa !39
  br label %Vec_IntPush.exit607

Vec_IntPush.exit607:                              ; preds = %.Vec_IntPush.exit607_crit_edge, %bb.ch, %Vec_IntGrow.exit11.sink.split.i603
  %.val472.pre = phi ptr [ %.val472.pre1040, %.Vec_IntPush.exit607_crit_edge ], [ %.val472.pre1040, %bb.ch ], [ %.val472.pre.pre, %Vec_IntGrow.exit11.sink.split.i603 ] ; 2 uses
  %i.pg = phi ptr [ %.pre1015, %.Vec_IntPush.exit607_crit_edge ], [ %.pre1016, %bb.ch ], [ %i.pf, %Vec_IntGrow.exit11.sink.split.i603 ]
  %i.ph = add nsw i32 %i.os, 1
  store i32 %i.ph, ptr %i.ae, align 4, !tbaa !42
  %i.pi = sext i32 %i.os to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.pg, i64 %i.pi
  store i32 %i.oo, ptr %i.pj, align 4, !tbaa !34
  br label %Gia_ObjUpdateTravIdCurrentId.exit

Gia_ObjUpdateTravIdCurrentId.exit:                ; preds = %.lr.ph776, %Vec_IntPush.exit607
  %.val472.pre1041 = phi ptr [ %.val472.pre1040, %.lr.ph776 ], [ %.val472.pre, %Vec_IntPush.exit607 ] ; 2 uses
  %.val472 = phi ptr [ %.val4721019, %.lr.ph776 ], [ %.val472.pre, %Vec_IntPush.exit607 ] ; 4 uses
  %indvars.iv.next890 = add nuw nsw i64 %indvars.iv889, 1 ; 2 uses
  %i.pk = getelementptr i8, ptr %.val472, i64 8
  %.val472.val = load ptr, ptr %i.pk, align 8, !tbaa !40 ; 2 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %.val472.val, i64 %i.od
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !34
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %.val472.val, i64 %i.pn ; 2 uses
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !34
  %i.pq = sext i32 %i.pp to i64
  %i.pr = icmp slt i64 %indvars.iv.next890, %i.pq
  br i1 %i.pr, label %.lr.ph776, label %.critedge18.loopexit, !llvm.loop !74

.critedge18.loopexit:                             ; preds = %Gia_ObjUpdateTravIdCurrentId.exit
  %.val421.pre = load i32, ptr %i.w, align 4, !tbaa !42
  br label %.critedge18

.critedge18:                                      ; preds = %.critedge18.loopexit, %bb.cb
  %.val472.pre1039 = phi ptr [ %.val472.pre1041, %.critedge18.loopexit ], [ %.val472.pre1038, %bb.cb ]
  %.val421 = phi i32 [ %.val421.pre, %.critedge18.loopexit ], [ %.val4211021, %bb.cb ] ; 3 uses
  %.val4721018 = phi ptr [ %.val472, %.critedge18.loopexit ], [ %.val4721017, %bb.cb ]
  %.val4727721013 = phi ptr [ %.val472, %.critedge18.loopexit ], [ %.val472772, %bb.cb ]
  %indvars.iv.next893 = add nuw nsw i64 %indvars.iv892, 1 ; 2 uses
  %i.ps = sext i32 %.val421 to i64
  %i.pt = icmp slt i64 %indvars.iv.next893, %i.ps
  br i1 %i.pt, label %bb.cb, label %.critedge16, !llvm.loop !75

.critedge16:                                      ; preds = %.critedge18, %.critedge12
  %.val420 = phi i32 [ %.val422769, %.critedge12 ], [ %.val421, %.critedge18 ] ; 2 uses
  %.val547 = load i32, ptr %i.ae, align 4, !tbaa !42
  %.val548 = load ptr, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.pu = sext i32 %.val547 to i64
  tail call void @qsort(ptr noundef %.val548, i64 noundef %i.pu, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #25
  tail call void @Gia_ManIncrementTravId(ptr noundef nonnull %0) #25
  %i.pv = icmp sgt i32 %.val420, 0
  br i1 %i.pv, label %.lr.ph785, label %.critedge20.preheader

.lr.ph785:                                        ; preds = %.critedge16
  %.val461 = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.pw = getelementptr i8, ptr %0, i64 264
  %.val471 = load ptr, ptr %i.pw, align 8, !tbaa !39
  %i.px = getelementptr i8, ptr %.val471, i64 8
  %.val471.val = load ptr, ptr %i.px, align 8, !tbaa !40 ; 4 uses
  %i.py = zext nneg i32 %.val420 to i64
  br label %bb.cl

.critedge20.preheader:                            ; preds = %.critedge22, %.critedge16
  %.val419790 = load i32, ptr %i.au, align 4, !tbaa !42 ; 2 uses
  %i.pz = icmp sgt i32 %.val419790, 0
  br i1 %i.pz, label %.lr.ph792, label %.critedge24.preheader

.lr.ph792:                                        ; preds = %.critedge20.preheader
  %i.qa = getelementptr i8, ptr %0, i64 264
  %.val470 = load ptr, ptr %i.qa, align 8, !tbaa !39
  %i.qb = getelementptr i8, ptr %.val470, i64 8
  %.val470.val = load ptr, ptr %i.qb, align 8, !tbaa !40 ; 4 uses
  %i.qc = zext nneg i32 %.val419790 to i64
  br label %bb.cn

bb.cl:                                            ; preds = %.lr.ph785, %.critedge22
  %indvars.iv898 = phi i64 [ 0, %.lr.ph785 ], [ %indvars.iv.next899, %.critedge22 ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.val461, i64 %indvars.iv898
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !34
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds [4 x i8], ptr %.val471.val, i64 %i.qf ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !34
  %i.qi = sext i32 %i.qh to i64                   ; 2 uses
  %i.qj = getelementptr inbounds [4 x i8], ptr %.val471.val, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !34
  %i.ql = icmp sgt i32 %i.qk, 0
  br i1 %i.ql, label %.lr.ph782, label %.critedge22

.lr.ph782:                                        ; preds = %bb.cl
  %.val487 = load ptr, ptr %i.jo, align 8, !tbaa !32
  %.val486.pre = load i32, ptr %i.jn, align 8, !tbaa !35
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph782, %bb.cm
  %indvars.iv895 = phi i64 [ 0, %.lr.ph782 ], [ %indvars.iv.next896, %bb.cm ] ; 2 uses
  %i.qm = phi i64 [ %i.qi, %.lr.ph782 ], [ %i.qu, %bb.cm ]
  %i.qn = getelementptr inbounds [4 x i8], ptr %.val471.val, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv895
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !34
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds [4 x i8], ptr %.val487, i64 %i.qr
  store i32 %.val486.pre, ptr %i.qs, align 4, !tbaa !34
  %indvars.iv.next896 = add nuw nsw i64 %indvars.iv895, 1 ; 2 uses
  %i.qt = load i32, ptr %i.qg, align 4, !tbaa !34
  %i.qu = sext i32 %i.qt to i64                   ; 2 uses
  %i.qv = getelementptr inbounds [4 x i8], ptr %.val471.val, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !34
  %i.qx = sext i32 %i.qw to i64
  %i.qy = icmp slt i64 %indvars.iv.next896, %i.qx
  br i1 %i.qy, label %bb.cm, label %.critedge22, !llvm.loop !76

.critedge22:                                      ; preds = %bb.cm, %bb.cl
  %indvars.iv.next899 = add nuw nsw i64 %indvars.iv898, 1 ; 2 uses
  %i.qz = icmp samesign ult i64 %indvars.iv.next899, %i.py
  br i1 %i.qz, label %bb.cl, label %.critedge20.preheader, !llvm.loop !77

.critedge24.preheader:                            ; preds = %.critedge26, %.critedge20.preheader
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !49 ; 2 uses
  %i.rc = getelementptr i8, ptr %i.rb, i64 4      ; 2 uses
  %.val418794 = load i32, ptr %i.rc, align 4, !tbaa !42
  %i.rd = icmp sgt i32 %.val418794, 0
  br i1 %i.rd, label %.lr.ph796, label %.critedge28

.lr.ph796:                                        ; preds = %.critedge24.preheader
  %.val533 = load ptr, ptr %i.lq, align 8, !tbaa !33 ; 2 uses
  %.not365 = icmp eq ptr %.val533, null
  br i1 %.not365, label %.critedge28, label %.lr.ph796.split

.lr.ph796.split:                                  ; preds = %.lr.ph796
  %i.re = getelementptr i8, ptr %i.rb, i64 8
  %.val534.val = load ptr, ptr %i.re, align 8, !tbaa !40
  %.val483 = load ptr, ptr %i.jo, align 8, !tbaa !32
  %.val482.pre = load i32, ptr %i.jn, align 8, !tbaa !35
  br label %.critedge24

bb.cn:                                            ; preds = %.lr.ph792, %.critedge26
  %indvars.iv904 = phi i64 [ 0, %.lr.ph792 ], [ %indvars.iv.next905, %.critedge26 ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %.val4601088, i64 %indvars.iv904
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !34
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [4 x i8], ptr %.val470.val, i64 %i.rh ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !34
  %i.rk = sext i32 %i.rj to i64                   ; 2 uses
  %i.rl = getelementptr inbounds [4 x i8], ptr %.val470.val, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !34
  %i.rn = icmp sgt i32 %i.rm, 0
  br i1 %i.rn, label %.lr.ph788, label %.critedge26

.lr.ph788:                                        ; preds = %bb.cn
  %.val485 = load ptr, ptr %i.jo, align 8, !tbaa !32
  %.val484.pre = load i32, ptr %i.jn, align 8, !tbaa !35
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph788, %bb.co
  %indvars.iv901 = phi i64 [ 0, %.lr.ph788 ], [ %indvars.iv.next902, %bb.co ] ; 2 uses
  %i.ro = phi i64 [ %i.rk, %.lr.ph788 ], [ %i.rw, %bb.co ]
  %i.rp = getelementptr inbounds [4 x i8], ptr %.val470.val, i64 %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %indvars.iv901
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !34
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %.val485, i64 %i.rt
  store i32 %.val484.pre, ptr %i.ru, align 4, !tbaa !34
  %indvars.iv.next902 = add nuw nsw i64 %indvars.iv901, 1 ; 2 uses
  %i.rv = load i32, ptr %i.ri, align 4, !tbaa !34
  %i.rw = sext i32 %i.rv to i64                   ; 2 uses
  %i.rx = getelementptr inbounds [4 x i8], ptr %.val470.val, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !34
  %i.rz = sext i32 %i.ry to i64
  %i.sa = icmp slt i64 %indvars.iv.next902, %i.rz
  br i1 %i.sa, label %bb.co, label %.critedge26, !llvm.loop !78

.critedge26:                                      ; preds = %bb.co, %bb.cn
  %indvars.iv.next905 = add nuw nsw i64 %indvars.iv904, 1 ; 2 uses
  %i.sb = icmp samesign ult i64 %indvars.iv.next905, %i.qc
  br i1 %i.sb, label %bb.cn, label %.critedge24.preheader, !llvm.loop !79

.critedge24:                                      ; preds = %.lr.ph796.split, %.critedge24
  %indvars.iv907 = phi i64 [ 0, %.lr.ph796.split ], [ %indvars.iv.next908, %.critedge24 ] ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.val534.val, i64 %indvars.iv907
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !34 ; 2 uses
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds [12 x i8], ptr %.val533, i64 %i.se
  %.val3.i = load i64, ptr %i.sf, align 4
  %i.sg = trunc i64 %.val3.i to i32
  %i.sh = and i32 %i.sg, 536870911
  %i.si = sub nsw i32 %i.sd, %i.sh
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [4 x i8], ptr %.val483, i64 %i.sj
  store i32 %.val482.pre, ptr %i.sk, align 4, !tbaa !34
  %indvars.iv.next908 = add nuw nsw i64 %indvars.iv907, 1 ; 2 uses
  %.val418 = load i32, ptr %i.rc, align 4, !tbaa !42
  %i.sl = sext i32 %.val418 to i64
  %i.sm = icmp slt i64 %indvars.iv.next908, %i.sl
  br i1 %i.sm, label %.critedge24, label %.critedge28, !llvm.loop !80

.critedge28:                                      ; preds = %.critedge24, %.lr.ph796, %.critedge24.preheader
  %.val417798 = load i32, ptr %i.am, align 4, !tbaa !42 ; 2 uses
  %i.sn = icmp sgt i32 %.val417798, 0
  br i1 %i.sn, label %.lr.ph800, label %.critedge30.preheader

.lr.ph800:                                        ; preds = %.critedge28
  %.val459.pre = load ptr, ptr %i.ao, align 8, !tbaa !40
  br label %bb.cp

.critedge30.preheader:                            ; preds = %bb.cz, %.critedge28
  %.val416803 = load i32, ptr %i.ai, align 4, !tbaa !42 ; 3 uses
  %i.so = icmp sgt i32 %.val416803, 0
  br i1 %i.so, label %.lr.ph805, label %.critedge32

.lr.ph805:                                        ; preds = %.critedge30.preheader
  %.val458.pre = load ptr, ptr %i.ak, align 8, !tbaa !40
  br label %bb.da

bb.cp:                                            ; preds = %.lr.ph800, %bb.cz
  %.val4171027 = phi i32 [ %.val417798, %.lr.ph800 ], [ %.val417, %bb.cz ]
  %indvars.iv910 = phi i64 [ 0, %.lr.ph800 ], [ %indvars.iv.next911, %bb.cz ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.val459.pre, i64 %indvars.iv910
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !34 ; 2 uses
  %.val480 = load i32, ptr %i.jn, align 8, !tbaa !35
  %.val481 = load ptr, ptr %i.jo, align 8, !tbaa !32
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [4 x i8], ptr %.val481, i64 %i.sr
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !34
  %.not727 = icmp eq i32 %i.st, %.val480
  br i1 %.not727, label %bb.cq, label %bb.cz

bb.cq:                                            ; preds = %bb.cp
  %i.su = load i32, ptr %i.aq, align 4, !tbaa !42 ; 7 uses
  %i.sv = load i32, ptr %i.ap, align 8, !tbaa !43
  %i.sw = icmp eq i32 %i.su, %i.sv
  br i1 %i.sw, label %bb.cr, label %.Vec_IntPush.exit615_crit_edge

.Vec_IntPush.exit615_crit_edge:                   ; preds = %bb.cq
  %.pre1025 = load ptr, ptr %i.as, align 8, !tbaa !40
  br label %Vec_IntPush.exit615

bb.cr:                                            ; preds = %bb.cq
  %i.sx = icmp slt i32 %i.su, 16
  br i1 %i.sx, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.sy = load ptr, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %.not9.i.i613 = icmp eq ptr %i.sy, null
  br i1 %.not9.i.i613, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.sy, i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i611

bb.cu:                                            ; preds = %bb.cs
  %i.ta = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i611

bb.cv:                                            ; preds = %bb.cr
  %i.tb = icmp samesign ult i32 %i.su, 1073741823
  %i.tc = shl nuw nsw i32 %i.su, 1
  %spec.select.i608 = select i1 %i.tb, i32 %i.tc, i32 2147483647 ; 4 uses
  %.not.i9.i609 = icmp samesign ult i32 %i.su, %spec.select.i608
  %.pre1026 = load ptr, ptr %i.as, align 8, !tbaa !40 ; 3 uses
  br i1 %.not.i9.i609, label %bb.cw, label %Vec_IntPush.exit615

bb.cw:                                            ; preds = %bb.cv
  %.not9.i10.i610 = icmp eq ptr %.pre1026, null
  %i.td = zext nneg i32 %spec.select.i608 to i64
  %i.te = shl nuw nsw i64 %i.td, 2                ; 2 uses
  br i1 %.not9.i10.i610, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.tf = tail call ptr @realloc(ptr noundef nonnull %.pre1026, i64 noundef %i.te) #28
  br label %Vec_IntGrow.exit11.sink.split.i611

bb.cy:                                            ; preds = %bb.cw
  %i.tg = tail call noalias ptr @malloc(i64 noundef %i.te) #26
  br label %Vec_IntGrow.exit11.sink.split.i611

Vec_IntGrow.exit11.sink.split.i611:               ; preds = %bb.cx, %bb.cy, %bb.ct, %bb.cu
  %i.th = phi ptr [ %i.ta, %bb.cu ], [ %i.sz, %bb.ct ], [ %i.tf, %bb.cx ], [ %i.tg, %bb.cy ] ; 2 uses
  %spec.select.sink.i612 = phi i32 [ 16, %bb.cu ], [ 16, %bb.ct ], [ %spec.select.i608, %bb.cx ], [ %spec.select.i608, %bb.cy ]
  store ptr %i.th, ptr %i.as, align 8, !tbaa !40
  store i32 %spec.select.sink.i612, ptr %i.ap, align 8, !tbaa !43
  br label %Vec_IntPush.exit615

Vec_IntPush.exit615:                              ; preds = %.Vec_IntPush.exit615_crit_edge, %bb.cv, %Vec_IntGrow.exit11.sink.split.i611
  %i.ti = phi ptr [ %.pre1025, %.Vec_IntPush.exit615_crit_edge ], [ %.pre1026, %bb.cv ], [ %i.th, %Vec_IntGrow.exit11.sink.split.i611 ]
  %i.tj = add nsw i32 %i.su, 1
  store i32 %i.tj, ptr %i.aq, align 4, !tbaa !42
  %i.tk = sext i32 %i.su to i64
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.tk
  store i32 %i.sq, ptr %i.tl, align 4, !tbaa !34
  %.val417.pre = load i32, ptr %i.am, align 4, !tbaa !42
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cp, %Vec_IntPush.exit615
  %.val417 = phi i32 [ %.val4171027, %bb.cp ], [ %.val417.pre, %Vec_IntPush.exit615 ] ; 2 uses
  %indvars.iv.next911 = add nuw nsw i64 %indvars.iv910, 1 ; 2 uses
  %i.tm = sext i32 %.val417 to i64
  %i.tn = icmp slt i64 %indvars.iv.next911, %i.tm
  br i1 %i.tn, label %bb.cp, label %.critedge30.preheader, !llvm.loop !81

bb.da:                                            ; preds = %.lr.ph805, %.critedge30
  %.val4161031 = phi i32 [ %.val416803, %.lr.ph805 ], [ %.val416, %.critedge30 ]
  %indvars.iv913 = phi i64 [ 0, %.lr.ph805 ], [ %indvars.iv.next914, %.critedge30 ] ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.val458.pre, i64 %indvars.iv913
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !34 ; 2 uses
  %.val478 = load i32, ptr %i.jn, align 8, !tbaa !35
  %.val479 = load ptr, ptr %i.jo, align 8, !tbaa !32
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [4 x i8], ptr %.val479, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !34
  %.not726 = icmp eq i32 %i.ts, %.val478
  br i1 %.not726, label %bb.db, label %.critedge30

bb.db:                                            ; preds = %bb.da
  %i.tt = load i32, ptr %i.aq, align 4, !tbaa !42 ; 7 uses
  %i.tu = load i32, ptr %i.ap, align 8, !tbaa !43
  %i.tv = icmp eq i32 %i.tt, %i.tu
  br i1 %i.tv, label %bb.dc, label %.Vec_IntPush.exit623_crit_edge

.Vec_IntPush.exit623_crit_edge:                   ; preds = %bb.db
  %.pre1029 = load ptr, ptr %i.as, align 8, !tbaa !40
  br label %Vec_IntPush.exit623

bb.dc:                                            ; preds = %bb.db
  %i.tw = icmp slt i32 %i.tt, 16
  br i1 %i.tw, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.tx = load ptr, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %.not9.i.i621 = icmp eq ptr %i.tx, null
  br i1 %.not9.i.i621, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ty = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.tx, i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i619

bb.df:                                            ; preds = %bb.dd
  %i.tz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i619

bb.dg:                                            ; preds = %bb.dc
  %i.ua = icmp samesign ult i32 %i.tt, 1073741823
  %i.ub = shl nuw nsw i32 %i.tt, 1
  %spec.select.i616 = select i1 %i.ua, i32 %i.ub, i32 2147483647 ; 4 uses
  %.not.i9.i617 = icmp samesign ult i32 %i.tt, %spec.select.i616
  %.pre1030 = load ptr, ptr %i.as, align 8, !tbaa !40 ; 3 uses
  br i1 %.not.i9.i617, label %bb.dh, label %Vec_IntPush.exit623

bb.dh:                                            ; preds = %bb.dg
  %.not9.i10.i618 = icmp eq ptr %.pre1030, null
  %i.uc = zext nneg i32 %spec.select.i616 to i64
  %i.ud = shl nuw nsw i64 %i.uc, 2                ; 2 uses
  br i1 %.not9.i10.i618, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ue = tail call ptr @realloc(ptr noundef nonnull %.pre1030, i64 noundef %i.ud) #28
  br label %Vec_IntGrow.exit11.sink.split.i619

bb.dj:                                            ; preds = %bb.dh
  %i.uf = tail call noalias ptr @malloc(i64 noundef %i.ud) #26
  br label %Vec_IntGrow.exit11.sink.split.i619

Vec_IntGrow.exit11.sink.split.i619:               ; preds = %bb.di, %bb.dj, %bb.de, %bb.df
  %i.ug = phi ptr [ %i.tz, %bb.df ], [ %i.ty, %bb.de ], [ %i.ue, %bb.di ], [ %i.uf, %bb.dj ] ; 2 uses
  %spec.select.sink.i620 = phi i32 [ 16, %bb.df ], [ 16, %bb.de ], [ %spec.select.i616, %bb.di ], [ %spec.select.i616, %bb.dj ]
  store ptr %i.ug, ptr %i.as, align 8, !tbaa !40
  store i32 %spec.select.sink.i620, ptr %i.ap, align 8, !tbaa !43
  br label %Vec_IntPush.exit623

Vec_IntPush.exit623:                              ; preds = %.Vec_IntPush.exit623_crit_edge, %bb.dg, %Vec_IntGrow.exit11.sink.split.i619
  %i.uh = phi ptr [ %.pre1029, %.Vec_IntPush.exit623_crit_edge ], [ %.pre1030, %bb.dg ], [ %i.ug, %Vec_IntGrow.exit11.sink.split.i619 ]
  %i.ui = add nsw i32 %i.tt, 1
  store i32 %i.ui, ptr %i.aq, align 4, !tbaa !42
  %i.uj = sext i32 %i.tt to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.uj
  store i32 %i.tp, ptr %i.uk, align 4, !tbaa !34
  %.val416.pre = load i32, ptr %i.ai, align 4, !tbaa !42
  br label %.critedge30

.critedge30:                                      ; preds = %bb.da, %Vec_IntPush.exit623
  %.val416 = phi i32 [ %.val4161031, %bb.da ], [ %.val416.pre, %Vec_IntPush.exit623 ] ; 3 uses
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 1 ; 2 uses
  %i.ul = sext i32 %.val416 to i64
  %i.um = icmp slt i64 %indvars.iv.next914, %i.ul
  br i1 %i.um, label %bb.da, label %.critedge32, !llvm.loop !82

.critedge32:                                      ; preds = %.critedge30, %.critedge30.preheader
  %.val409 = phi i32 [ %.val416803, %.critedge30.preheader ], [ %.val416, %.critedge30 ] ; 2 uses
  %.val545 = load i32, ptr %i.aq, align 4, !tbaa !42 ; 4 uses
  %.val546 = load ptr, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.un = sext i32 %.val545 to i64                ; 2 uses
  tail call void @qsort(ptr noundef %.val546, i64 noundef %i.un, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #25
  %.val415 = load i32, ptr %i.w, align 4, !tbaa !42 ; 2 uses
  %.not366 = icmp eq i32 %.val415, 0
  br i1 %.not366, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.critedge32
  %i.uo = tail call ptr @Gia_ManSifInitPos(ptr noundef nonnull %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ad)
  br label %bb.dm

bb.dl:                                            ; preds = %.critedge32
  %calloc1092 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.up = phi ptr [ %i.uo, %bb.dk ], [ %calloc1092, %bb.dl ] ; 5 uses
  %.not367 = icmp eq i32 %.val409, 0
  br i1 %.not367, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.uq = tail call ptr @Gia_ManSifInitNeg(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ap)
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ur = phi ptr [ %i.uq, %bb.dn ], [ %calloc, %bb.do ] ; 5 uses
  %.not368 = icmp eq i32 %2, 0
  br i1 %.not368, label %._crit_edge1034, label %bb.dq

._crit_edge1034:                                  ; preds = %bb.dp
  %.val405.pre = load i32, ptr %i.ae, align 4, !tbaa !42
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %.val413 = load i32, ptr %i.aa, align 4, !tbaa !42
  %.val412 = load i32, ptr %i.am, align 4, !tbaa !42
  %.val411 = load i32, ptr %i.ay, align 4, !tbaa !42
  %i.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.val413, i32 noundef %.val412, i32 noundef %.val411) ; 0 uses
  %.val408 = load i32, ptr %i.au, align 4, !tbaa !42
  %i.ut = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.val415, i32 noundef %.val409, i32 noundef %.val408) ; 0 uses
  %.val407 = load i32, ptr %i.ae, align 4, !tbaa !42 ; 2 uses
  %i.uu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.val407, i32 noundef %.val545, i32 noundef 0) ; 0 uses
  br label %bb.dr

bb.dr:                                            ; preds = %._crit_edge1034, %bb.dq
  %.val401822 = phi i32 [ %.val405.pre, %._crit_edge1034 ], [ %.val407, %bb.dq ] ; 4 uses
  %.val506 = load i32, ptr %i.a, align 8, !tbaa !44
  %i.uv = add nsw i32 %.val401822, %.val506
  %i.uw = add nsw i32 %i.uv, %.val545
  %i.ux = tail call ptr @Gia_ManStart(i32 noundef %i.uw) #25 ; 15 uses
  %i.uy = load ptr, ptr %0, align 8, !tbaa !47    ; 3 uses
  %.not.i624 = icmp eq ptr %i.uy, null
  br i1 %.not.i624, label %Abc_UtilStrsav.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.uz = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.uy) #27
  %i.va = add i64 %i.uz, 1
  %i.vb = tail call noalias ptr @malloc(i64 noundef %i.va) #26 ; 2 uses
  %i.vc = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.vb, ptr noundef nonnull readonly dereferenceable(1) %i.uy) #25 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.dr, %bb.ds
  %i.vd = phi ptr [ %i.vb, %bb.ds ], [ null, %bb.dr ]
  store ptr %i.vd, ptr %i.ux, align 8, !tbaa !47
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !48 ; 3 uses
  %.not.i625 = icmp eq ptr %i.vf, null
  br i1 %.not.i625, label %Abc_UtilStrsav.exit626, label %bb.dt

bb.dt:                                            ; preds = %Abc_UtilStrsav.exit
  %i.vg = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.vf) #27
  %i.vh = add i64 %i.vg, 1
  %i.vi = tail call noalias ptr @malloc(i64 noundef %i.vh) #26 ; 2 uses
  %i.vj = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.vi, ptr noundef nonnull readonly dereferenceable(1) %i.vf) #25 ; 0 uses
  br label %Abc_UtilStrsav.exit626

Abc_UtilStrsav.exit626:                           ; preds = %Abc_UtilStrsav.exit, %bb.dt
  %i.vk = phi ptr [ %i.vi, %bb.dt ], [ null, %Abc_UtilStrsav.exit ]
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  store ptr %i.vk, ptr %i.vl, align 8, !tbaa !48
  %i.vm = getelementptr i8, ptr %i.b, i64 8       ; 2 uses
  %.val505 = load ptr, ptr %i.vm, align 8, !tbaa !40 ; 21 uses
  store i32 0, ptr %.val505, align 4, !tbaa !34
  %i.vn = getelementptr i8, ptr %0, i64 64        ; 5 uses
  %.val513806 = load i32, ptr %i.lr, align 8, !tbaa !45
  %.val514807 = load ptr, ptr %i.vn, align 8, !tbaa !46 ; 2 uses
  %i.vo = getelementptr i8, ptr %.val514807, i64 4
  %.val514.val808 = load i32, ptr %i.vo, align 4, !tbaa !42
  %i.vp = icmp sgt i32 %.val514.val808, %.val513806
  br i1 %i.vp, label %.lr.ph811, label %.critedge34

.lr.ph811:                                        ; preds = %Abc_UtilStrsav.exit626, %bb.du
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %bb.du ], [ 0, %Abc_UtilStrsav.exit626 ] ; 2 uses
  %.val514810 = phi ptr [ %.val514, %bb.du ], [ %.val514807, %Abc_UtilStrsav.exit626 ]
  %.val521 = load ptr, ptr %i.lq, align 8, !tbaa !33
  %.not369 = icmp eq ptr %.val521, null
  br i1 %.not369, label %.critedge34, label %bb.du

bb.du:                                            ; preds = %.lr.ph811
  %i.vq = getelementptr i8, ptr %.val514810, i64 8
  %.val522.val = load ptr, ptr %i.vq, align 8, !tbaa !40
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %.val522.val, i64 %indvars.iv916
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !34
  %i.vt = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.ux)
  %i.vu = sext i32 %i.vs to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.vu
  store i32 %i.vt, ptr %i.vv, align 4, !tbaa !34
  %indvars.iv.next917 = add nuw nsw i64 %indvars.iv916, 1 ; 2 uses
  %.val513 = load i32, ptr %i.lr, align 8, !tbaa !45
  %.val514 = load ptr, ptr %i.vn, align 8, !tbaa !46 ; 2 uses
  %i.vw = getelementptr i8, ptr %.val514, i64 4
  %.val514.val = load i32, ptr %i.vw, align 4, !tbaa !42
  %i.vx = sub nsw i32 %.val514.val, %.val513
  %i.vy = sext i32 %i.vx to i64
  %i.vz = icmp slt i64 %indvars.iv.next917, %i.vy
  br i1 %i.vz, label %.lr.ph811, label %.critedge34, !llvm.loop !83

.critedge34:                                      ; preds = %.lr.ph811, %bb.du, %Abc_UtilStrsav.exit626
  %.val403814 = load i32, ptr %i.ay, align 4, !tbaa !42 ; 2 uses
  %i.wa = icmp sgt i32 %.val403814, 0
  br i1 %i.wa, label %.lr.ph816, label %.critedge36.preheader

.lr.ph816:                                        ; preds = %.critedge34
  %.val457.pre = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.wb = zext nneg i32 %.val403814 to i64
  br label %bb.dv

.critedge36.preheader:                            ; preds = %bb.dv, %.critedge34
  %i.wc = icmp sgt i32 %.val545, 0
  br i1 %i.wc, label %.lr.ph821, label %.critedge38

.lr.ph821:                                        ; preds = %.critedge36.preheader
  %i.wd = getelementptr i8, ptr %i.ur, i64 8
  br label %.critedge36

bb.dv:                                            ; preds = %.lr.ph816, %bb.dv
  %indvars.iv919 = phi i64 [ 0, %.lr.ph816 ], [ %indvars.iv.next920, %bb.dv ] ; 2 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %.val457.pre, i64 %indvars.iv919
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !34
  %i.wg = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.ux)
  %i.wh = sext i32 %i.wf to i64
  %i.wi = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.wh
  store i32 %i.wg, ptr %i.wi, align 4, !tbaa !34
  %indvars.iv.next920 = add nuw nsw i64 %indvars.iv919, 1 ; 2 uses
  %i.wj = icmp samesign ult i64 %indvars.iv.next920, %i.wb
  br i1 %i.wj, label %bb.dv, label %.critedge36.preheader, !llvm.loop !84

.critedge36:                                      ; preds = %.lr.ph821, %.critedge36
  %indvars.iv922 = phi i64 [ 0, %.lr.ph821 ], [ %indvars.iv.next923, %.critedge36 ] ; 3 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %.val546, i64 %indvars.iv922
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !34
  %i.wm = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.ux)
  %.val455 = load ptr, ptr %i.wd, align 8, !tbaa !40
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.val455, i64 %indvars.iv922
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !34
  %i.wp = icmp sgt i32 %i.wo, 0
  %i.wq = zext i1 %i.wp to i32
  %i.wr = xor i32 %i.wm, %i.wq
  %i.ws = sext i32 %i.wl to i64
  %i.wt = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.ws
  store i32 %i.wr, ptr %i.wt, align 4, !tbaa !34
  %indvars.iv.next923 = add nuw nsw i64 %indvars.iv922, 1 ; 2 uses
  %i.wu = icmp slt i64 %indvars.iv.next923, %i.un
  br i1 %i.wu, label %.critedge36, label %.critedge38, !llvm.loop !85

.critedge38:                                      ; preds = %.critedge36, %.critedge36.preheader
  %i.wv = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #26 ; 2 uses
  %i.ww = icmp sgt i32 %.val401822, 0
  br i1 %i.ww, label %.lr.ph875, label %.critedge42.preheader

.lr.ph875:                                        ; preds = %.critedge38
  %wide.trip.count = zext nneg i32 %.val401822 to i64
  br label %.lr.ph824

.critedge40.preheader:                            ; preds = %Vec_IntPush.exit634
  %.val400882.pre = load i32, ptr %i.ae, align 4, !tbaa !42 ; 4 uses
  %i.wx = icmp sgt i32 %.val400882.pre, 0
  br i1 %i.wx, label %.lr.ph833, label %.critedge42.preheader

.lr.ph833:                                        ; preds = %.critedge40.preheader
  %i.wy = getelementptr i8, ptr %i.up, i64 8
  %.val452.pre = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.wz = zext nneg i32 %.val400882.pre to i64
  br label %.critedge40

.lr.ph824:                                        ; preds = %.lr.ph875, %Vec_IntPush.exit634
  %indvars.iv927 = phi i64 [ 0, %.lr.ph875 ], [ %indvars.iv.next928, %Vec_IntPush.exit634 ] ; 2 uses
  %indvars.iv925 = phi i64 [ 0, %.lr.ph875 ], [ %indvars.iv.next926, %Vec_IntPush.exit634 ] ; 7 uses
  %storemerge829 = phi ptr [ %i.wv, %.lr.ph875 ], [ %storemerge830, %Vec_IntPush.exit634 ] ; 6 uses
  %spec.select.sink.i631827 = phi i32 [ 100, %.lr.ph875 ], [ %spec.select.sink.i631826, %Vec_IntPush.exit634 ] ; 3 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.val548, i64 %indvars.iv927
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !34
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.xc
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !34
  %i.xf = trunc nsw i64 %indvars.iv925 to i32
  %i.xg = icmp eq i32 %spec.select.sink.i631827, %i.xf
  br i1 %i.xg, label %bb.dw, label %Vec_IntPush.exit634

bb.dw:                                            ; preds = %.lr.ph824
  %i.xh = icmp samesign ult i64 %indvars.iv925, 16
  br i1 %i.xh, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %.not9.i.i632 = icmp eq ptr %storemerge829, null
  br i1 %.not9.i.i632, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.xi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge829, i64 noundef 64) #28
  br label %Vec_IntPush.exit634

bb.dz:                                            ; preds = %bb.dx
  %i.xj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntPush.exit634

bb.ea:                                            ; preds = %bb.dw
  %i.xk = icmp samesign ult i64 %indvars.iv925, 1073741823
  %indvars.iv925.tr = trunc nsw i64 %indvars.iv925 to i32
  %i.xl = shl nsw i32 %indvars.iv925.tr, 1
  %spec.select.i627 = select i1 %i.xk, i32 %i.xl, i32 2147483647 ; 4 uses
  %i.xm = sext i32 %spec.select.i627 to i64
  %.not.i9.i628 = icmp samesign ult i64 %indvars.iv925, %i.xm
  br i1 %.not.i9.i628, label %bb.eb, label %Vec_IntPush.exit634

bb.eb:                                            ; preds = %bb.ea
  %.not9.i10.i629 = icmp eq ptr %storemerge829, null
  %i.xn = zext nneg i32 %spec.select.i627 to i64
  %i.xo = shl nuw nsw i64 %i.xn, 2                ; 2 uses
  br i1 %.not9.i10.i629, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.xp = tail call ptr @realloc(ptr noundef nonnull %storemerge829, i64 noundef %i.xo) #28
  br label %Vec_IntPush.exit634

bb.ed:                                            ; preds = %bb.eb
  %i.xq = tail call noalias ptr @malloc(i64 noundef %i.xo) #26
  br label %Vec_IntPush.exit634

Vec_IntPush.exit634:                              ; preds = %bb.dz, %bb.dy, %bb.ed, %bb.ec, %.lr.ph824, %bb.ea
  %storemerge830 = phi ptr [ %storemerge829, %.lr.ph824 ], [ %storemerge829, %bb.ea ], [ %i.xj, %bb.dz ], [ %i.xi, %bb.dy ], [ %i.xp, %bb.ec ], [ %i.xq, %bb.ed ] ; 4 uses
  %spec.select.sink.i631826 = phi i32 [ %spec.select.sink.i631827, %.lr.ph824 ], [ %spec.select.sink.i631827, %bb.ea ], [ 16, %bb.dz ], [ 16, %bb.dy ], [ %spec.select.i627, %bb.ec ], [ %spec.select.i627, %bb.ed ]
  %indvars.iv.next926 = add nuw nsw i64 %indvars.iv925, 1
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %storemerge830, i64 %indvars.iv925
  store i32 %i.xe, ptr %i.xr, align 4, !tbaa !34
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next928, %wide.trip.count
  br i1 %exitcond.not, label %.critedge40.preheader, label %.lr.ph824, !llvm.loop !86

.critedge42.preheader:                            ; preds = %.critedge40, %.critedge38, %.critedge40.preheader
  %i.xs = phi i1 [ false, %.critedge38 ], [ false, %.critedge40.preheader ], [ true, %.critedge40 ]
  %.val3981090 = phi i32 [ %.val401822, %.critedge38 ], [ %.val400882.pre, %.critedge40.preheader ], [ %.val400882.pre, %.critedge40 ] ; 2 uses
  %i.xt = phi ptr [ %i.wv, %.critedge38 ], [ %storemerge830, %.critedge40.preheader ], [ %storemerge830, %.critedge40 ] ; 7 uses
  %.val399834 = load i32, ptr %i.w, align 4, !tbaa !42 ; 2 uses
  %i.xu = icmp sgt i32 %.val399834, 0
  br i1 %i.xu, label %.lr.ph836, label %.critedge44.preheader

.lr.ph836:                                        ; preds = %.critedge42.preheader
  %i.xv = getelementptr i8, ptr %0, i64 264
  %.val450.pre = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.xw = zext nneg i32 %.val399834 to i64
  br label %bb.ee

.critedge40:                                      ; preds = %.lr.ph833, %.critedge40
  %indvars.iv932 = phi i64 [ 0, %.lr.ph833 ], [ %indvars.iv.next933, %.critedge40 ] ; 3 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %.val452.pre, i64 %indvars.iv932
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !34
  %i.xz = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.ux)
  %.val451 = load ptr, ptr %i.wy, align 8, !tbaa !40
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.val451, i64 %indvars.iv932
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !34
  %i.yc = icmp sgt i32 %i.yb, 0
  %i.yd = zext i1 %i.yc to i32
  %i.ye = xor i32 %i.xz, %i.yd
  %i.yf = sext i32 %i.xy to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.yf
  store i32 %i.ye, ptr %i.yg, align 4, !tbaa !34
  %indvars.iv.next933 = add nuw nsw i64 %indvars.iv932, 1 ; 2 uses
  %i.yh = icmp samesign ult i64 %indvars.iv.next933, %i.wz
  br i1 %i.yh, label %.critedge40, label %.critedge42.preheader, !llvm.loop !87

.critedge44.preheader:                            ; preds = %Gia_ManSifDupNode.exit, %.critedge42.preheader
  br i1 %i.xs, label %.lr.ph839, label %.critedge46

.lr.ph839:                                        ; preds = %.critedge44.preheader
  %.val449 = load ptr, ptr %i.ag, align 8, !tbaa !40 ; 5 uses
  %wide.trip.count991 = zext nneg i32 %.val3981090 to i64 ; 2 uses
  %xtraiter1167 = and i64 %wide.trip.count991, 3  ; 3 uses
  %3 = add i32 %.val3981090, -1
  %i.yi = icmp ult i32 %3, 3
  br i1 %i.yi, label %.critedge44.epil.preheader, label %.lr.ph839.new

.lr.ph839.new:                                    ; preds = %.lr.ph839
  %unroll_iter1127 = and i64 %wide.trip.count991, 2147483644
  br label %.critedge44

bb.ee:                                            ; preds = %.lr.ph836, %Gia_ManSifDupNode.exit
  %indvars.iv935 = phi i64 [ 0, %.lr.ph836 ], [ %indvars.iv.next936, %Gia_ManSifDupNode.exit ] ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.val450.pre, i64 %indvars.iv935
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !34
  %.val21.i = load ptr, ptr %i.lq, align 8, !tbaa !33
  %i.yl = sext i32 %i.yk to i64                   ; 3 uses
  tail call void @Gia_ManIncrementTravId(ptr noundef nonnull %0) #25
  %.val23.i = load ptr, ptr %i.xv, align 8, !tbaa !39
  %i.ym = getelementptr i8, ptr %.val23.i, i64 8
  %.val23.val.i = load ptr, ptr %i.ym, align 8, !tbaa !40 ; 4 uses
  %i.yn = getelementptr inbounds [4 x i8], ptr %.val23.val.i, i64 %i.yl ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !34
  %i.yp = sext i32 %i.yo to i64                   ; 2 uses
  %i.yq = getelementptr inbounds [4 x i8], ptr %.val23.val.i, i64 %i.yp
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !34
  %i.ys = icmp sgt i32 %i.yr, 0
  br i1 %i.ys, label %.lr.ph.i, label %Gia_ManSifDupNode.exit

.lr.ph.i:                                         ; preds = %bb.ee
  %.val.i635 = load ptr, ptr %i.lq, align 8, !tbaa !33
  %.val26.i = load ptr, ptr %i.jo, align 8, !tbaa !32
  %.val25.pre30.i = load i32, ptr %i.jn, align 8, !tbaa !35
  br label %bb.ef

bb.ef:                                            ; preds = %Gia_ObjUpdateTravIdCurrentId.exit.i, %.lr.ph.i
  %.val25.i = phi i32 [ %.val25.pre30.i, %.lr.ph.i ], [ %.val2531.i, %Gia_ObjUpdateTravIdCurrentId.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Gia_ObjUpdateTravIdCurrentId.exit.i ] ; 2 uses
  %i.yt = phi i64 [ %i.yp, %.lr.ph.i ], [ %i.zg, %Gia_ObjUpdateTravIdCurrentId.exit.i ]
  %i.yu = getelementptr inbounds [4 x i8], ptr %.val23.val.i, i64 %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv.i
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !34
  %i.yy = sext i32 %i.yx to i64                   ; 3 uses
  %i.yz = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.yy
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !34
  %i.zb = getelementptr inbounds [12 x i8], ptr %.val.i635, i64 %i.yy
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store i32 %i.za, ptr %i.zc, align 4, !tbaa !37
  %i.zd = getelementptr inbounds [4 x i8], ptr %.val26.i, i64 %i.yy ; 2 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !34
  %.not.i.i636 = icmp eq i32 %i.ze, %.val25.i
  br i1 %.not.i.i636, label %Gia_ObjUpdateTravIdCurrentId.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i32 %.val25.i, ptr %i.zd, align 4, !tbaa !34
  %.val25.pre.i = load i32, ptr %i.jn, align 8, !tbaa !35
  br label %Gia_ObjUpdateTravIdCurrentId.exit.i

Gia_ObjUpdateTravIdCurrentId.exit.i:              ; preds = %bb.eg, %bb.ef
  %.val2531.i = phi i32 [ %.val25.i, %bb.ef ], [ %.val25.pre.i, %bb.eg ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.zf = load i32, ptr %i.yn, align 4, !tbaa !34
  %i.zg = sext i32 %i.zf to i64                   ; 2 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %.val23.val.i, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !34
  %i.zj = sext i32 %i.zi to i64
  %i.zk = icmp slt i64 %indvars.iv.next.i, %i.zj
  br i1 %i.zk, label %bb.ef, label %Gia_ManSifDupNode.exit, !llvm.loop !0

Gia_ManSifDupNode.exit:                           ; preds = %Gia_ObjUpdateTravIdCurrentId.exit.i, %bb.ee
  %i.zl = getelementptr inbounds [12 x i8], ptr %.val21.i, i64 %i.yl ; 2 uses
  tail call void @Gia_ManSifDupNode_rec(ptr noundef nonnull %i.ux, ptr noundef nonnull %0, ptr noundef %i.zl)
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !37
  %i.zo = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.yl
  store i32 %i.zn, ptr %i.zo, align 4, !tbaa !34
  %indvars.iv.next936 = add nuw nsw i64 %indvars.iv935, 1 ; 2 uses
  %i.zp = icmp samesign ult i64 %indvars.iv.next936, %i.xw
  br i1 %i.zp, label %bb.ee, label %.critedge44.preheader, !llvm.loop !88

.critedge44:                                      ; preds = %.critedge44, %.lr.ph839.new
  %indvars.iv938 = phi i64 [ 0, %.lr.ph839.new ], [ %indvars.iv.next939.3, %.critedge44 ] ; 6 uses
  %niter1128 = phi i64 [ 0, %.lr.ph839.new ], [ %niter1128.next.3, %.critedge44 ]
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %.val449, i64 %indvars.iv938
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !34
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv938
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !34
  %i.zu = sext i32 %i.zr to i64
  %i.zv = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.zu
  store i32 %i.zt, ptr %i.zv, align 4, !tbaa !34
  %indvars.iv.next939 = or disjoint i64 %indvars.iv938, 1 ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.val449, i64 %indvars.iv.next939
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !34
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv.next939
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !34
  %i.aaa = sext i32 %i.zx to i64
  %i.aab = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.aaa
  store i32 %i.zz, ptr %i.aab, align 4, !tbaa !34
  %indvars.iv.next939.1 = or disjoint i64 %indvars.iv938, 2 ; 2 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.val449, i64 %indvars.iv.next939.1
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !34
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv.next939.1
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !34
  %i.aag = sext i32 %i.aad to i64
  %i.aah = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.aag
  store i32 %i.aaf, ptr %i.aah, align 4, !tbaa !34
  %indvars.iv.next939.2 = or disjoint i64 %indvars.iv938, 3 ; 2 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %.val449, i64 %indvars.iv.next939.2
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !34
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv.next939.2
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !34
  %i.aam = sext i32 %i.aaj to i64
  %i.aan = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.aam
  store i32 %i.aal, ptr %i.aan, align 4, !tbaa !34
  %indvars.iv.next939.3 = add nuw nsw i64 %indvars.iv938, 4 ; 2 uses
  %niter1128.next.3 = add i64 %niter1128, 4       ; 2 uses
  %niter1128.ncmp.3.not = icmp eq i64 %niter1128.next.3, %unroll_iter1127
  br i1 %niter1128.ncmp.3.not, label %.critedge46.thread.loopexit.unr-lcssa, label %.critedge44, !llvm.loop !89

.critedge46:                                      ; preds = %.critedge44.preheader
  %.not.i637 = icmp eq ptr %i.xt, null
  br i1 %.not.i637, label %Vec_IntFree.exit, label %.critedge46.thread

.critedge46.thread.loopexit.unr-lcssa:            ; preds = %.critedge44
  %lcmp.mod1125.not = icmp eq i64 %xtraiter1167, 0
  br i1 %lcmp.mod1125.not, label %.critedge46.thread, label %.critedge44.epil.preheader

.critedge44.epil.preheader:                       ; preds = %.critedge46.thread.loopexit.unr-lcssa, %.lr.ph839
  %indvars.iv938.epil.init = phi i64 [ 0, %.lr.ph839 ], [ %indvars.iv.next939.3, %.critedge46.thread.loopexit.unr-lcssa ]
  %lcmp.mod1126 = icmp ne i64 %xtraiter1167, 0
  tail call void @llvm.assume(i1 %lcmp.mod1126)
  br label %.critedge44.epil

.critedge44.epil:                                 ; preds = %.critedge44.epil, %.critedge44.epil.preheader
  %indvars.iv938.epil = phi i64 [ %indvars.iv938.epil.init, %.critedge44.epil.preheader ], [ %indvars.iv.next939.epil, %.critedge44.epil ] ; 3 uses
  %epil.iter1124 = phi i64 [ 0, %.critedge44.epil.preheader ], [ %epil.iter1124.next, %.critedge44.epil ]
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %.val449, i64 %indvars.iv938.epil
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !34
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv938.epil
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !34
  %i.aas = sext i32 %i.aap to i64
  %i.aat = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.aas
  store i32 %i.aar, ptr %i.aat, align 4, !tbaa !34
  %indvars.iv.next939.epil = add nuw nsw i64 %indvars.iv938.epil, 1
  %epil.iter1124.next = add i64 %epil.iter1124, 1 ; 2 uses
  %epil.iter1124.cmp.not = icmp eq i64 %epil.iter1124.next, %xtraiter1167
  br i1 %epil.iter1124.cmp.not, label %.critedge46.thread, label %.critedge44.epil, !llvm.loop !90

.critedge46.thread:                               ; preds = %.critedge46.thread.loopexit.unr-lcssa, %.critedge44.epil, %.critedge46
  tail call void @free(ptr noundef nonnull %i.xt) #25
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge46, %.critedge46.thread
  %.val397840 = load i32, ptr %i.aa, align 4, !tbaa !42 ; 2 uses
  %i.aau = icmp sgt i32 %.val397840, 0
  br i1 %i.aau, label %.lr.ph842, label %.critedge48.preheader

.lr.ph842:                                        ; preds = %Vec_IntFree.exit
  %.val447 = load ptr, ptr %i.ac, align 8, !tbaa !40
  %.val430 = load ptr, ptr %i.lq, align 8, !tbaa !33 ; 2 uses
  %.val5.i638 = load ptr, ptr %i.ra, align 8, !tbaa !49 ; 2 uses
  %i.aav = getelementptr i8, ptr %.val5.i638, i64 4
  %.val6.i640 = load ptr, ptr %i.vn, align 8, !tbaa !46
  %i.aaw = getelementptr i8, ptr %.val6.i640, i64 4
  %i.aax = getelementptr i8, ptr %.val5.i638, i64 8
  %.val4.val.i643 = load ptr, ptr %i.aax, align 8, !tbaa !40
  %i.aay = zext nneg i32 %.val397840 to i64
  br label %bb.eh

.critedge48.preheader:                            ; preds = %bb.eh, %Vec_IntFree.exit
  %.val396843 = load i32, ptr %i.au, align 4, !tbaa !42 ; 2 uses
  %i.aaz = icmp sgt i32 %.val396843, 0
  br i1 %i.aaz, label %.lr.ph845, label %.critedge50.preheader

.lr.ph845:                                        ; preds = %.critedge48.preheader
  %i.aba = getelementptr i8, ptr %0, i64 264
  %.val444.pre = load ptr, ptr %i.aw, align 8, !tbaa !40
  %i.abb = zext nneg i32 %.val396843 to i64
  br label %bb.ei

bb.eh:                                            ; preds = %.lr.ph842, %bb.eh
  %indvars.iv941 = phi i64 [ 0, %.lr.ph842 ], [ %indvars.iv.next942, %bb.eh ] ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.val447, i64 %indvars.iv941
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !34
  %i.abe = sext i32 %i.abd to i64                 ; 2 uses
  %i.abf = getelementptr inbounds [12 x i8], ptr %.val430, i64 %i.abe
  %.val543 = load i64, ptr %i.abf, align 4
  %.val5.val.i639 = load i32, ptr %i.aav, align 4, !tbaa !42
  %.val6.val.i641 = load i32, ptr %i.aaw, align 4, !tbaa !42
  %i.abg = lshr i64 %.val543, 32
  %i.abh = trunc nuw i64 %i.abg to i32
  %i.abi = and i32 %i.abh, 536870911
  %i.abj = add i32 %i.abi, %.val5.val.i639
  %i.abk = sub i32 %i.abj, %.val6.val.i641
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [4 x i8], ptr %.val4.val.i643, i64 %i.abl
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !34 ; 2 uses
  %i.abo = sext i32 %i.abn to i64
  %i.abp = getelementptr inbounds [12 x i8], ptr %.val430, i64 %i.abo
  %.val3.i644 = load i64, ptr %i.abp, align 4
  %i.abq = trunc i64 %.val3.i644 to i32           ; 2 uses
  %i.abr = and i32 %i.abq, 536870911
  %i.abs = sub nsw i32 %i.abn, %i.abr
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.abt
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !34
  %i.abw = lshr i32 %i.abq, 29
  %.lobit725 = and i32 %i.abw, 1
  %i.abx = xor i32 %.lobit725, %i.abv
  %i.aby = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.abe
  store i32 %i.abx, ptr %i.aby, align 4, !tbaa !34
  %indvars.iv.next942 = add nuw nsw i64 %indvars.iv941, 1 ; 2 uses
  %i.abz = icmp samesign ult i64 %indvars.iv.next942, %i.aay
  br i1 %i.abz, label %bb.eh, label %.critedge48.preheader, !llvm.loop !91

.critedge50.preheader:                            ; preds = %Gia_ManSifDupNode.exit661, %.critedge48.preheader
  %.val395846 = load i32, ptr %i.am, align 4, !tbaa !42 ; 2 uses
  %i.aca = icmp sgt i32 %.val395846, 0
  br i1 %i.aca, label %.lr.ph848, label %.critedge52.preheader

.lr.ph848:                                        ; preds = %.critedge50.preheader
  %.val443 = load ptr, ptr %i.ao, align 8, !tbaa !40
  %.val429 = load ptr, ptr %i.lq, align 8, !tbaa !33 ; 2 uses
  %.val5.i662 = load ptr, ptr %i.ra, align 8, !tbaa !49 ; 2 uses
  %i.acb = getelementptr i8, ptr %.val5.i662, i64 4
  %.val6.i664 = load ptr, ptr %i.vn, align 8, !tbaa !46
  %i.acc = getelementptr i8, ptr %.val6.i664, i64 4
  %i.acd = getelementptr i8, ptr %.val5.i662, i64 8
  %.val4.val.i667 = load ptr, ptr %i.acd, align 8, !tbaa !40
  %i.ace = getelementptr i8, ptr %i.u, i64 8
  %.val498 = load ptr, ptr %i.ace, align 8, !tbaa !40
  %i.acf = zext nneg i32 %.val395846 to i64
  br label %.critedge50

bb.ei:                                            ; preds = %.lr.ph845, %Gia_ManSifDupNode.exit661
  %indvars.iv944 = phi i64 [ 0, %.lr.ph845 ], [ %indvars.iv.next945, %Gia_ManSifDupNode.exit661 ] ; 2 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %.val444.pre, i64 %indvars.iv944
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !34
  %.val21.i645 = load ptr, ptr %i.lq, align 8, !tbaa !33
  %i.aci = sext i32 %i.ach to i64                 ; 3 uses
  tail call void @Gia_ManIncrementTravId(ptr noundef nonnull %0) #25
  %.val23.i646 = load ptr, ptr %i.aba, align 8, !tbaa !39
  %i.acj = getelementptr i8, ptr %.val23.i646, i64 8
  %.val23.val.i647 = load ptr, ptr %i.acj, align 8, !tbaa !40 ; 4 uses
  %i.ack = getelementptr inbounds [4 x i8], ptr %.val23.val.i647, i64 %i.aci ; 2 uses
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !34
  %i.acm = sext i32 %i.acl to i64                 ; 2 uses
  %i.acn = getelementptr inbounds [4 x i8], ptr %.val23.val.i647, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !34
  %i.acp = icmp sgt i32 %i.aco, 0
  br i1 %i.acp, label %.lr.ph.i649, label %Gia_ManSifDupNode.exit661

.lr.ph.i649:                                      ; preds = %bb.ei
  %.val.i651 = load ptr, ptr %i.lq, align 8, !tbaa !33
  %.val26.i652 = load ptr, ptr %i.jo, align 8, !tbaa !32
  %.val25.pre30.i653 = load i32, ptr %i.jn, align 8, !tbaa !35
  br label %bb.ej

bb.ej:                                            ; preds = %Gia_ObjUpdateTravIdCurrentId.exit.i658, %.lr.ph.i649
  %.val25.i654 = phi i32 [ %.val25.pre30.i653, %.lr.ph.i649 ], [ %.val2531.i659, %Gia_ObjUpdateTravIdCurrentId.exit.i658 ] ; 3 uses
  %indvars.iv.i655 = phi i64 [ 0, %.lr.ph.i649 ], [ %indvars.iv.next.i660, %Gia_ObjUpdateTravIdCurrentId.exit.i658 ] ; 2 uses
  %i.acq = phi i64 [ %i.acm, %.lr.ph.i649 ], [ %i.add, %Gia_ObjUpdateTravIdCurrentId.exit.i658 ]
  %i.acr = getelementptr inbounds [4 x i8], ptr %.val23.val.i647, i64 %i.acq
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %indvars.iv.i655
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !34
  %i.acv = sext i32 %i.acu to i64                 ; 3 uses
  %i.acw = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.acv
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !34
  %i.acy = getelementptr inbounds [12 x i8], ptr %.val.i651, i64 %i.acv
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  store i32 %i.acx, ptr %i.acz, align 4, !tbaa !37
  %i.ada = getelementptr inbounds [4 x i8], ptr %.val26.i652, i64 %i.acv ; 2 uses
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !34
  %.not.i.i656 = icmp eq i32 %i.adb, %.val25.i654
  br i1 %.not.i.i656, label %Gia_ObjUpdateTravIdCurrentId.exit.i658, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  store i32 %.val25.i654, ptr %i.ada, align 4, !tbaa !34
  %.val25.pre.i657 = load i32, ptr %i.jn, align 8, !tbaa !35
  br label %Gia_ObjUpdateTravIdCurrentId.exit.i658

Gia_ObjUpdateTravIdCurrentId.exit.i658:           ; preds = %bb.ek, %bb.ej
  %.val2531.i659 = phi i32 [ %.val25.i654, %bb.ej ], [ %.val25.pre.i657, %bb.ek ]
  %indvars.iv.next.i660 = add nuw nsw i64 %indvars.iv.i655, 1 ; 2 uses
  %i.adc = load i32, ptr %i.ack, align 4, !tbaa !34
  %i.add = sext i32 %i.adc to i64                 ; 2 uses
  %i.ade = getelementptr inbounds [4 x i8], ptr %.val23.val.i647, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !34
  %i.adg = sext i32 %i.adf to i64
  %i.adh = icmp slt i64 %indvars.iv.next.i660, %i.adg
  br i1 %i.adh, label %bb.ej, label %Gia_ManSifDupNode.exit661, !llvm.loop !0

Gia_ManSifDupNode.exit661:                        ; preds = %Gia_ObjUpdateTravIdCurrentId.exit.i658, %bb.ei
  %i.adi = getelementptr inbounds [12 x i8], ptr %.val21.i645, i64 %i.aci ; 2 uses
  tail call void @Gia_ManSifDupNode_rec(ptr noundef nonnull %i.ux, ptr noundef nonnull %0, ptr noundef %i.adi)
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !37
  %i.adl = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.aci
  store i32 %i.adk, ptr %i.adl, align 4, !tbaa !34
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 2 uses
  %i.adm = icmp samesign ult i64 %indvars.iv.next945, %i.abb
  br i1 %i.adm, label %bb.ei, label %.critedge50.preheader, !llvm.loop !92

.critedge52.preheader:                            ; preds = %.critedge50, %.critedge50.preheader
  %.val394849 = load i32, ptr %i.ai, align 4, !tbaa !42 ; 2 uses
  %i.adn = icmp sgt i32 %.val394849, 0
  br i1 %i.adn, label %.lr.ph851, label %.critedge54.preheader

.lr.ph851:                                        ; preds = %.critedge52.preheader
  %i.ado = getelementptr i8, ptr %0, i64 264
  %i.adp = getelementptr i8, ptr %i.u, i64 8      ; 2 uses
  %.val440.pre = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.adq = zext nneg i32 %.val394849 to i64
  br label %bb.el

.critedge50:                                      ; preds = %.lr.ph848, %.critedge50
  %indvars.iv947 = phi i64 [ 0, %.lr.ph848 ], [ %indvars.iv.next948, %.critedge50 ] ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %.val443, i64 %indvars.iv947
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !34
  %i.adt = sext i32 %i.ads to i64                 ; 2 uses
  %i.adu = getelementptr inbounds [12 x i8], ptr %.val429, i64 %i.adt
  %.val542 = load i64, ptr %i.adu, align 4
  %.val5.val.i663 = load i32, ptr %i.acb, align 4, !tbaa !42
  %.val6.val.i665 = load i32, ptr %i.acc, align 4, !tbaa !42
  %i.adv = lshr i64 %.val542, 32
  %i.adw = trunc nuw i64 %i.adv to i32
  %i.adx = and i32 %i.adw, 536870911
  %i.ady = add i32 %i.adx, %.val5.val.i663
  %i.adz = sub i32 %i.ady, %.val6.val.i665
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds [4 x i8], ptr %.val4.val.i667, i64 %i.aea
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !34 ; 2 uses
  %i.aed = sext i32 %i.aec to i64
  %i.aee = getelementptr inbounds [12 x i8], ptr %.val429, i64 %i.aed
  %.val3.i668 = load i64, ptr %i.aee, align 4
  %i.aef = trunc i64 %.val3.i668 to i32           ; 2 uses
  %i.aeg = and i32 %i.aef, 536870911
  %i.aeh = sub nsw i32 %i.aec, %i.aeg
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !34
  %i.ael = lshr i32 %i.aef, 29
  %.lobit723 = and i32 %i.ael, 1
  %i.aem = xor i32 %.lobit723, %i.aek
  %i.aen = getelementptr inbounds [4 x i8], ptr %.val498, i64 %i.adt
end_hunk_1
begin_hunk_2_@Gia_ManSifDerive:bb.a
  %i.afx = icmp samesign ult i64 %indvars.iv.next951, %i.adq
  br i1 %i.afx, label %bb.el, label %.critedge54.preheader, !llvm.loop !94

.lr.ph857:                                        ; preds = %.critedge54.preheader, %.critedge54
  %indvars.iv953 = phi i64 [ %indvars.iv.next954, %.critedge54 ], [ 0, %.critedge54.preheader ] ; 2 uses
  %.val530856 = phi ptr [ %.val530, %.critedge54 ], [ %.val530853, %.critedge54.preheader ]
  %.val531 = load ptr, ptr %i.lq, align 8, !tbaa !33 ; 2 uses
  %.not372 = icmp eq ptr %.val531, null
  br i1 %.not372, label %.critedge56, label %.critedge54

.critedge54:                                      ; preds = %.lr.ph857
  %i.afy = getelementptr i8, ptr %.val530856, i64 8
  %.val532.val = load ptr, ptr %i.afy, align 8, !tbaa !40
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.val532.val, i64 %indvars.iv953
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !34 ; 2 uses
  %i.agb = sext i32 %i.aga to i64
  %i.agc = getelementptr inbounds [12 x i8], ptr %.val531, i64 %i.agb
  %.val3.i686 = load i64, ptr %i.agc, align 4
  %i.agd = trunc i64 %.val3.i686 to i32           ; 2 uses
  %i.age = and i32 %i.agd, 536870911
  %i.agf = sub nsw i32 %i.aga, %i.age
  %i.agg = sext i32 %i.agf to i64
  %i.agh = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.agg
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !34
  %i.agj = lshr i32 %i.agd, 29
  %.lobit = and i32 %i.agj, 1
  %i.agk = xor i32 %.lobit, %i.agi
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.ux, i32 noundef %i.agk)
  %indvars.iv.next954 = add nuw nsw i64 %indvars.iv953, 1 ; 2 uses
  %.val529 = load i32, ptr %i.lr, align 8, !tbaa !45
  %.val530 = load ptr, ptr %i.ra, align 8, !tbaa !49 ; 2 uses
  %i.agl = getelementptr i8, ptr %.val530, i64 4
  %.val530.val = load i32, ptr %i.agl, align 4, !tbaa !42
  %i.agm = sub nsw i32 %.val530.val, %.val529
  %i.agn = sext i32 %i.agm to i64
  %i.ago = icmp slt i64 %indvars.iv.next954, %i.agn
  br i1 %i.ago, label %.lr.ph857, label %.critedge56, !llvm.loop !95

.critedge56:                                      ; preds = %.lr.ph857, %.critedge54, %.critedge54.preheader
  %.val393858 = load i32, ptr %i.ay, align 4, !tbaa !42 ; 3 uses
  %i.agp = icmp sgt i32 %.val393858, 0
  br i1 %i.agp, label %.lr.ph860, label %.critedge58.preheader

.lr.ph860:                                        ; preds = %.critedge56
  %.val438.pre = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.agq = zext nneg i32 %.val393858 to i64
  br label %bb.eo

.critedge58.preheader:                            ; preds = %bb.eo, %.critedge56
  %.val392861 = load i32, ptr %i.aq, align 4, !tbaa !42 ; 3 uses
  %i.agr = icmp sgt i32 %.val392861, 0
  br i1 %i.agr, label %.lr.ph863, label %.critedge60.preheader

.lr.ph863:                                        ; preds = %.critedge58.preheader
  %i.ags = getelementptr i8, ptr %i.u, i64 8
  %i.agt = getelementptr i8, ptr %i.ur, i64 8
  %.val436.pre = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.agu = zext nneg i32 %.val392861 to i64
  br label %.critedge58

bb.eo:                                            ; preds = %.lr.ph860, %bb.eo
  %indvars.iv956 = phi i64 [ 0, %.lr.ph860 ], [ %indvars.iv.next957, %bb.eo ] ; 2 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.val438.pre, i64 %indvars.iv956
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !34
  %.val428 = load ptr, ptr %i.lq, align 8, !tbaa !33 ; 2 uses
  %i.agx = sext i32 %i.agw to i64
  %i.agy = getelementptr inbounds [12 x i8], ptr %.val428, i64 %i.agx
  %.val541 = load i64, ptr %i.agy, align 4
  %.val5.i687 = load ptr, ptr %i.ra, align 8, !tbaa !49 ; 2 uses
  %i.agz = getelementptr i8, ptr %.val5.i687, i64 4
  %.val5.val.i688 = load i32, ptr %i.agz, align 4, !tbaa !42
  %.val6.i689 = load ptr, ptr %i.vn, align 8, !tbaa !46
  %i.aha = getelementptr i8, ptr %.val6.i689, i64 4
  %.val6.val.i690 = load i32, ptr %i.aha, align 4, !tbaa !42
  %i.ahb = lshr i64 %.val541, 32
  %i.ahc = trunc nuw i64 %i.ahb to i32
  %i.ahd = and i32 %i.ahc, 536870911
  %i.ahe = add i32 %i.ahd, %.val5.val.i688
  %i.ahf = sub i32 %i.ahe, %.val6.val.i690
  %i.ahg = getelementptr i8, ptr %.val5.i687, i64 8
  %.val4.val.i692 = load ptr, ptr %i.ahg, align 8, !tbaa !40
  %i.ahh = sext i32 %i.ahf to i64
  %i.ahi = getelementptr inbounds [4 x i8], ptr %.val4.val.i692, i64 %i.ahh
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !34 ; 2 uses
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds [12 x i8], ptr %.val428, i64 %i.ahk
  %.val3.i693 = load i64, ptr %i.ahl, align 4
  %i.ahm = trunc i64 %.val3.i693 to i32           ; 2 uses
  %i.ahn = and i32 %i.ahm, 536870911
  %i.aho = sub nsw i32 %i.ahj, %i.ahn
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.ahp
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !34
  %i.ahs = lshr i32 %i.ahm, 29
  %.lobit721 = and i32 %i.ahs, 1
  %i.aht = xor i32 %.lobit721, %i.ahr
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.ux, i32 noundef %i.aht)
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %i.ahu = icmp samesign ult i64 %indvars.iv.next957, %i.agq
  br i1 %i.ahu, label %bb.eo, label %.critedge58.preheader, !llvm.loop !96

.critedge60.preheader:                            ; preds = %.critedge58, %.critedge58.preheader
  %.val391864 = load i32, ptr %i.ae, align 4, !tbaa !42 ; 3 uses
  %i.ahv = icmp sgt i32 %.val391864, 0
  br i1 %i.ahv, label %.lr.ph866, label %.loopexit

.lr.ph866:                                        ; preds = %.critedge60.preheader
  %i.ahw = getelementptr i8, ptr %i.up, i64 8
  %.val433.pre = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ahx = zext nneg i32 %.val391864 to i64
  br label %.critedge60

.critedge58:                                      ; preds = %.lr.ph863, %.critedge58
  %indvars.iv959 = phi i64 [ 0, %.lr.ph863 ], [ %indvars.iv.next960, %.critedge58 ] ; 3 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %.val436.pre, i64 %indvars.iv959
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !34
  %.val435 = load ptr, ptr %i.ags, align 8, !tbaa !40
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds [4 x i8], ptr %.val435, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !34
  %.val434 = load ptr, ptr %i.agt, align 8, !tbaa !40
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %.val434, i64 %indvars.iv959
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !34
  %i.aif = icmp sgt i32 %i.aie, 0
  %i.aig = zext i1 %i.aif to i32
  %i.aih = xor i32 %i.aic, %i.aig
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.ux, i32 noundef %i.aih)
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 2 uses
  %i.aii = icmp samesign ult i64 %indvars.iv.next960, %i.agu
  br i1 %i.aii, label %.critedge58, label %.critedge60.preheader, !llvm.loop !97

.critedge60:                                      ; preds = %.lr.ph866, %.critedge60
  %indvars.iv962 = phi i64 [ 0, %.lr.ph866 ], [ %indvars.iv.next963, %.critedge60 ] ; 3 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %.val433.pre, i64 %indvars.iv962
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !34
  %i.ail = sext i32 %i.aik to i64
  %i.aim = getelementptr inbounds [4 x i8], ptr %.val505, i64 %i.ail
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !34
  %.val431 = load ptr, ptr %i.ahw, align 8, !tbaa !40
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %.val431, i64 %indvars.iv962
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !34
  %i.aiq = icmp sgt i32 %i.aip, 0
  %i.air = zext i1 %i.aiq to i32
  %i.ais = xor i32 %i.ain, %i.air
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.ux, i32 noundef %i.ais)
  %indvars.iv.next963 = add nuw nsw i64 %indvars.iv962, 1 ; 2 uses
  %i.ait = icmp samesign ult i64 %indvars.iv.next963, %i.ahx
  br i1 %i.ait, label %.critedge60, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %.critedge60, %.critedge60.preheader
  %i.aiu = add nsw i32 %.val393858, %.val391864
  %i.aiv = add nsw i32 %i.aiu, %.val392861
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.ux, i32 noundef %i.aiv) #25
  %i.aiw = load ptr, ptr %i.y, align 8, !tbaa !40 ; 2 uses
  %.not.i694 = icmp eq ptr %i.aiw, null
  br i1 %.not.i694, label %bb.ep, label %.thread.i

.thread.i:                                        ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.aiw) #25
  br label %bb.ep

bb.ep:                                            ; preds = %.thread.i, %.loopexit
  tail call void @free(ptr noundef nonnull %i.v) #25
  %i.aix = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %.not.i695 = icmp eq ptr %i.aix, null
  br i1 %.not.i695, label %bb.eq, label %.thread.i696

.thread.i696:                                     ; preds = %bb.ep
  tail call void @free(ptr noundef nonnull %i.aix) #25
  br label %bb.eq

bb.eq:                                            ; preds = %.thread.i696, %bb.ep
  tail call void @free(ptr noundef nonnull %i.z) #25
  %i.aiy = load ptr, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %.not.i698 = icmp eq ptr %i.aiy, null
  br i1 %.not.i698, label %Vec_IntFreeP.exit700, label %.thread.i699

.thread.i699:                                     ; preds = %bb.eq
  tail call void @free(ptr noundef nonnull %i.aiy) #25
  br label %Vec_IntFreeP.exit700

Vec_IntFreeP.exit700:                             ; preds = %bb.eq, %.thread.i699
  tail call void @free(ptr noundef nonnull %i.ad) #25
  %i.aiz = icmp eq ptr %i.up, null
  br i1 %i.aiz, label %Vec_IntFreeP.exit703, label %bb.er

bb.er:                                            ; preds = %Vec_IntFreeP.exit700
  %i.aja = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !40 ; 2 uses
  %.not.i701 = icmp eq ptr %i.ajb, null
  br i1 %.not.i701, label %bb.es, label %.thread.i702

.thread.i702:                                     ; preds = %bb.er
  tail call void @free(ptr noundef nonnull %i.ajb) #25
  br label %bb.es

bb.es:                                            ; preds = %.thread.i702, %bb.er
  tail call void @free(ptr noundef nonnull %i.up) #25
  br label %Vec_IntFreeP.exit703

Vec_IntFreeP.exit703:                             ; preds = %Vec_IntFreeP.exit700, %bb.es
  %i.ajc = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %.not.i694.1 = icmp eq ptr %i.ajc, null
  br i1 %.not.i694.1, label %bb.et, label %.thread.i.1

.thread.i.1:                                      ; preds = %Vec_IntFreeP.exit703
  tail call void @free(ptr noundef nonnull %i.ajc) #25
  br label %bb.et

bb.et:                                            ; preds = %.thread.i.1, %Vec_IntFreeP.exit703
  tail call void @free(ptr noundef nonnull %i.ah) #25
  %i.ajd = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %.not.i695.1 = icmp eq ptr %i.ajd, null
  br i1 %.not.i695.1, label %bb.eu, label %.thread.i696.1

.thread.i696.1:                                   ; preds = %bb.et
  tail call void @free(ptr noundef nonnull %i.ajd) #25
  br label %bb.eu

bb.eu:                                            ; preds = %.thread.i696.1, %bb.et
  tail call void @free(ptr noundef nonnull %i.al) #25
  %i.aje = load ptr, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %.not.i698.1 = icmp eq ptr %i.aje, null
  br i1 %.not.i698.1, label %Vec_IntFreeP.exit700.1, label %.thread.i699.1

.thread.i699.1:                                   ; preds = %bb.eu
  tail call void @free(ptr noundef nonnull %i.aje) #25
  br label %Vec_IntFreeP.exit700.1

Vec_IntFreeP.exit700.1:                           ; preds = %bb.eu, %.thread.i699.1
  tail call void @free(ptr noundef nonnull %i.ap) #25
  %i.ajf = icmp eq ptr %i.ur, null
  br i1 %i.ajf, label %Vec_IntFreeP.exit703.1, label %bb.ev

bb.ev:                                            ; preds = %Vec_IntFreeP.exit700.1
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !40 ; 2 uses
  %.not.i701.1 = icmp eq ptr %i.ajh, null
  br i1 %.not.i701.1, label %.thread.i702.1.a, label %.thread.i702.1

.thread.i702.1:                                   ; preds = %bb.ev
  tail call void @free(ptr noundef nonnull %i.ajh) #25
  br label %.thread.i702.1.a

.thread.i702.1.a:                                 ; preds = %.thread.i702.1, %bb.ev
  tail call void @free(ptr noundef nonnull %i.ur) #25
  br label %Vec_IntFreeP.exit703.1

Vec_IntFreeP.exit703.1:                           ; preds = %Vec_IntFreeP.exit700.1, %.thread.i702.1.a
  %4 = load ptr, ptr %i.aw, align 8, !tbaa !40    ; 2 uses
  %.not.i694.2 = icmp eq ptr %4, null
  br i1 %.not.i694.2, label %Vec_IntFreeP.exit703.1.a, label %bb.ew

bb.ew:                                            ; preds = %Vec_IntFreeP.exit703.1
  tail call void @free(ptr noundef nonnull %4) #25
  br label %Vec_IntFreeP.exit703.1.a

Vec_IntFreeP.exit703.1.a:                         ; preds = %bb.ew, %Vec_IntFreeP.exit703.1
  tail call void @free(ptr noundef nonnull %i.at) #25
  %i.aji = load ptr, ptr %i.ba, align 8, !tbaa !40 ; 2 uses
  %.not.i694.2.a = icmp eq ptr %i.aji, null
  br i1 %.not.i694.2.a, label %bb.ex, label %.thread.i.2

.thread.i.2:                                      ; preds = %Vec_IntFreeP.exit703.1.a
  tail call void @free(ptr noundef nonnull %i.aji) #25
  br label %bb.ex

bb.ex:                                            ; preds = %.thread.i.2, %Vec_IntFreeP.exit703.1.a
  tail call void @free(ptr noundef nonnull %i.ax) #25
  %i.ajj = load ptr, ptr %i.vm, align 8, !tbaa !40 ; 2 uses
  %.not.i695.2 = icmp eq ptr %i.ajj, null
  br i1 %.not.i695.2, label %Vec_IntFree.exit705, label %.thread.i696.2

.thread.i696.2:                                   ; preds = %bb.ex
  tail call void @free(ptr noundef nonnull %i.ajj) #25
  br label %Vec_IntFree.exit705

Vec_IntFree.exit705:                              ; preds = %bb.ex, %.thread.i696.2
  tail call void @free(ptr noundef nonnull %i.b) #25
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !40 ; 2 uses
  %.not.i706 = icmp eq ptr %i.ajl, null
  br i1 %.not.i706, label %Vec_IntFree.exit707, label %bb.ey

bb.ey:                                            ; preds = %Vec_IntFree.exit705
  tail call void @free(ptr noundef nonnull %i.ajl) #25
  br label %Vec_IntFree.exit707

Vec_IntFree.exit707:                              ; preds = %Vec_IntFree.exit705, %bb.ey
  tail call void @free(ptr noundef nonnull %i.u) #25
  ret ptr %i.ux
}

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManSifArea_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %i.h = shl i64 %i.g, 32
  %i.i = ashr exact i64 %i.h, 30
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq i32 %i.k, %i.m
  br i1 %.not.i, label %Gia_ObjUpdateTravIdCurrent.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.m, ptr %i.j, align 4, !tbaa !34
  %.val24 = load i64, ptr %1, align 4             ; 2 uses
  %i.n = and i64 %.val24, 2147483648
  %.not.i25 = icmp ne i64 %i.n, 0
  %i.o = and i64 %.val24, 536870911
  %i.p = icmp eq i64 %i.o, 536870911
  %narrow.i.not = or i1 %.not.i25, %i.p
  br i1 %narrow.i.not, label %Gia_ObjUpdateTravIdCurrent.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = trunc i64 %i.g to i32
  %i.r = mul nsw i32 %3, %i.q
  %i.s = getelementptr i8, ptr %2, i64 8
  %.val23 = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  %.not2128 = icmp slt i32 %i.v, 1
  br i1 %.not2128, label %Gia_ObjUpdateTravIdCurrent.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.c ] ; 3 uses
  %.030 = phi i32 [ %i.ac, %.lr.ph ], [ 1, %bb.c ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !34
  %i.y = ashr i32 %i.x, 8
  %.val22 = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [12 x i8], ptr %.val22, i64 %i.z
  %i.ab = tail call i32 @Gia_ManSifArea_rec(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef nonnull %2, i32 noundef %3)
  %i.ac = add nsw i32 %i.ab, %.030                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !34
  %i.ae = sext i32 %i.ad to i64
  %.not21.not = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not21.not, label %.lr.ph, label %Gia_ObjUpdateTravIdCurrent.exit, !llvm.loop !100

Gia_ObjUpdateTravIdCurrent.exit:                  ; preds = %.lr.ph, %bb.c, %bb.a, %bb.b
  %.019 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ %i.ac, %.lr.ph ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManSifArea(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @Gia_ManIncrementTravId(ptr noundef %0) #25
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val15 = load i32, ptr %i.d, align 4, !tbaa !42
  %i.e = icmp sgt i32 %.val15, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.r, %bb.b ], [ %i.c, %bb.a ]
  %.017 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %.val13, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val14.val = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val14.val, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [12 x i8], ptr %.val13, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 4
  %i.m = and i64 %i.l, 536870911
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.n
  %i.p = tail call i32 @Gia_ManSifArea_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.o, ptr noundef %1, i32 noundef %2)
  %i.q = add nsw i32 %i.p, %.017                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val = load i32, ptr %i.s, align 4, !tbaa !42
  %i.t = sext i32 %.val to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ], [ %.017, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManSifDelay_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %i.h = shl i64 %i.g, 32
  %i.i = ashr exact i64 %i.h, 30                  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq i32 %i.k, %i.m
  br i1 %.not.i, label %Gia_ObjUpdateTravIdCurrent.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.m, ptr %i.j, align 4, !tbaa !34
  %.val38 = load i64, ptr %1, align 4             ; 2 uses
  %i.n = and i64 %.val38, 2147483648
  %.not.i39 = icmp ne i64 %i.n, 0
  %i.o = and i64 %.val38, 536870911
  %i.p = icmp eq i64 %i.o, 536870911
  %narrow.i.not = or i1 %.not.i39, %i.p
  br i1 %narrow.i.not, label %Gia_ObjUpdateTravIdCurrent.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = trunc i64 %i.g to i32
  %i.r = mul nsw i32 %4, %i.q
  %i.s = getelementptr i8, ptr %2, i64 8
  %.val37 = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val37, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  %.not3242 = icmp slt i32 %i.v, 1
  %.phi.trans.insert = getelementptr i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not3242, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.c
  %.val35.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.c ] ; 3 uses
  %.045 = phi i32 [ %i.ac, %.lr.ph ], [ 0, %bb.c ]
  %.02844 = phi i32 [ %i.ai, %.lr.ph ], [ -1000010000, %bb.c ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !34
  %i.y = ashr i32 %i.x, 8
  %.val34 = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [12 x i8], ptr %.val34, i64 %i.z
  %i.ab = tail call i32 @Gia_ManSifDelay_rec(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4)
  %i.ac = add nsw i32 %i.ab, %.045                ; 2 uses
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !34
  %i.ae = ashr i32 %i.ad, 8
  %.val36 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val36, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34
  %i.ai = tail call noundef i32 @llvm.smax.i32(i32 %.02844, i32 %i.ah) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aj = load i32, ptr %i.u, align 4, !tbaa !34
  %i.ak = sext i32 %i.aj to i64
  %.not32.not = icmp slt i64 %indvars.iv, %i.ak
  br i1 %.not32.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !101

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.val.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  %.pre = ptrtoint ptr %.val.pre to i64
end_hunk_2
begin_hunk_3_@Gia_ManAppendObj:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !43
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !40
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #28
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !40
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !43
  %.pre = load i32, ptr %i.al, align 4, !tbaa !42
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !42
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !34
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !44
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !33
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !34
  %i.b = load i32, ptr %1, align 4, !tbaa !34
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #1 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !34
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #25 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #25
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #25 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !164
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #27
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #25 ; 0 uses
  call void @free(ptr noundef %i.d) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !164, !noalias !165
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #25, !inline_history !162 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #3

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #22

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { cold noreturn nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!16 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !14, i64 8}
!17 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!18 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!19 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!21 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!22 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!23 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!24 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!25 = !{!"float", !7, i64 0}
!26 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!29 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!30 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!31 = !{!"Gia_Man_t_", !12, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !14, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !15, i64 64, !15, i64 72, !16, i64 80, !16, i64 96, !8, i64 112, !8, i64 116, !8, i64 120, !16, i64 128, !14, i64 144, !14, i64 152, !15, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !14, i64 184, !17, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !8, i64 224, !8, i64 228, !14, i64 232, !8, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !18, i64 272, !18, i64 280, !15, i64 288, !11, i64 296, !15, i64 304, !15, i64 312, !19, i64 320, !12, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !20, i64 376, !20, i64 384, !21, i64 392, !16, i64 400, !16, i64 416, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !15, i64 488, !15, i64 496, !15, i64 504, !15, i64 512, !12, i64 520, !22, i64 528, !23, i64 536, !24, i64 544, !24, i64 552, !15, i64 560, !15, i64 568, !15, i64 576, !15, i64 584, !15, i64 592, !8, i64 600, !25, i64 604, !25, i64 608, !15, i64 616, !14, i64 624, !8, i64 632, !21, i64 640, !21, i64 648, !21, i64 656, !15, i64 664, !15, i64 672, !15, i64 680, !15, i64 688, !15, i64 696, !15, i64 704, !15, i64 712, !15, i64 720, !15, i64 728, !26, i64 736, !24, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !27, i64 776, !27, i64 784, !11, i64 792, !14, i64 800, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !28, i64 856, !28, i64 864, !28, i64 872, !28, i64 880, !15, i64 888, !15, i64 896, !15, i64 904, !29, i64 912, !8, i64 920, !8, i64 924, !8, i64 928, !15, i64 936, !8, i64 944, !8, i64 948, !15, i64 952, !15, i64 960, !21, i64 968, !28, i64 976, !15, i64 984, !15, i64 992, !8, i64 1000, !8, i64 1004, !28, i64 1008, !16, i64 1016, !16, i64 1032, !16, i64 1048, !30, i64 1064, !19, i64 1072, !19, i64 1080, !8, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !19, i64 1104, !15, i64 1112, !15, i64 1120, !15, i64 1128, !21, i64 1136}
!32 = !{!31, !14, i64 624}
!33 = !{!31, !13, i64 32}
!34 = !{!8, !8, i64 0}
!35 = !{!31, !8, i64 176}
!36 = !{!"Gia_Obj_t_", !8, i64 0, !8, i64 3, !8, i64 3, !8, i64 3, !8, i64 4, !8, i64 7, !8, i64 7, !8, i64 7, !8, i64 8}
!37 = !{!36, !8, i64 8}
!38 = !{!31, !14, i64 232}
!39 = !{!31, !15, i64 264}
!40 = !{!16, !14, i64 8}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!16, !8, i64 4}
!43 = !{!16, !8, i64 0}
!44 = !{!31, !8, i64 24}
!45 = !{!31, !8, i64 16}
!46 = !{!31, !15, i64 64}
!47 = !{!31, !12, i64 0}
!48 = !{!31, !12, i64 8}
!49 = !{!31, !15, i64 72}
!50 = !{!31, !8, i64 120}
!51 = !{!31, !8, i64 116}
!52 = !{!31, !8, i64 832}
!53 = !{!31, !28, i64 1008}
!54 = distinct !{!54, !41}
!55 = distinct !{!55, !41}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !41}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !99}
!63 = distinct !{!63, !41}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !41}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !41}
!69 = distinct !{!69, !99}
!70 = distinct !{!70, !99}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !99}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !41}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !41}
!85 = distinct !{!85, !41}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !99}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41}
!93 = distinct !{!93, !41}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41}
!98 = distinct !{!98, !41}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !41}
!101 = distinct !{!101, !41}
!102 = distinct !{!102, !41}
!103 = distinct !{!103, !41}
!104 = distinct !{!104, !41}
!105 = distinct !{!105, !41}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !41}
!111 = !{!31, !14, i64 208}
!112 = distinct !{!112, !41}
!113 = distinct !{!113, !41}
!114 = distinct !{!114, !41, !122, !123}
!115 = distinct !{!115, !41, !123, !122}
!116 = distinct !{!116, !41}
!117 = distinct !{!117, !41}
!118 = distinct !{!118, !41}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !41}
!121 = distinct !{!121, !41}
!122 = !{!"llvm.loop.isvectorized", i32 1}
!123 = !{!"llvm.loop.unroll.runtime.disable"}
!124 = !{!31, !19, i64 1072}
!125 = !{!"Vec_Str_t_", !8, i64 0, !8, i64 4, !12, i64 8}
!126 = !{!125, !8, i64 4}
!127 = !{!125, !12, i64 8}
!128 = !{!7, !7, i64 0}
!129 = !{!31, !19, i64 1080}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !41}
!135 = distinct !{!135, !41}
!136 = distinct !{!136, !41}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41}
!139 = distinct !{!139, !41}
!140 = !{!15, !15, i64 0}
!141 = distinct !{!141, !41}
!142 = distinct !{!142, !41}
!143 = distinct !{!143, !41}
!144 = distinct !{!144, !41}
!145 = distinct !{!145, !41}
!146 = !{!"timespec", !27, i64 0, !27, i64 8}
!147 = !{!146, !27, i64 0}
!148 = !{!146, !27, i64 8}
!149 = !{!31, !21, i64 640}
!150 = !{!"any p2 pointer", !11, i64 0}
!151 = !{!"Vec_Ptr_t_", !8, i64 0, !8, i64 4, !150, i64 8}
!152 = !{!151, !8, i64 4}
!153 = !{!151, !150, i64 8}
!154 = !{!11, !11, i64 0}
!155 = !{!151, !8, i64 0}
!156 = !{!31, !21, i64 648}
!157 = !{!31, !8, i64 28}
!158 = !{!31, !8, i64 820}
!159 = !{!31, !14, i64 40}
!160 = distinct !{!160, i1 true, !"vprintf"}
!161 = distinct !{!161, !160, !"vprintf: argument 0"}
!162 = distinct !{null}
!163 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!164 = !{!163, !163, i64 0}
end_hunk_3
