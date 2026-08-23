Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEsop?download=true
inline.NumInlined: 269
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Eso_ManCoverPrint:bb.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34   ; 26 uses
  %i.e = add nsw i32 %i.d, 4                      ; 2 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 11 uses
  %i.g = add nsw i32 %i.d, 3                      ; 5 uses
  %or.cond.i = icmp ult i32 %i.g, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.e ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  store i32 0, ptr %i.h, align 4, !tbaa !69
  store i32 %spec.store.select.i, ptr %i.f, align 8, !tbaa !71
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_StrAlloc.exit.thread, label %Vec_StrAlloc.exit

Vec_StrAlloc.exit:                                ; preds = %bb.c
  %i.i = sext i32 %spec.store.select.i to i64
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #23 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !72
  %.not.i.i = icmp slt i32 %spec.store.select.i, %i.d
  br i1 %.not.i.i, label %bb.d, label %Vec_StrGrow.exit.i

Vec_StrAlloc.exit.thread:                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr null, ptr %i.l, align 8, !tbaa !72
  %.not.i.i78 = icmp sgt i32 %i.d, 0
  br i1 %.not.i.i78, label %.thread, label %Vec_StrFill.exit

.thread:                                          ; preds = %Vec_StrAlloc.exit.thread
  %i.m = zext nneg i32 %i.d to i64
  br label %bb.f

bb.d:                                             ; preds = %Vec_StrAlloc.exit
  %.not9.i.i = icmp eq ptr %i.j, null
  %i.n = sext i32 %i.d to i64                     ; 2 uses
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.n) #24
  br label %bb.g

bb.f:                                             ; preds = %.thread, %bb.d
  %i.p = phi i64 [ %i.m, %.thread ], [ %i.n, %bb.d ]
  %i.q = phi ptr [ %i.l, %.thread ], [ %i.k, %bb.d ]
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = phi ptr [ %i.k, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.t = phi ptr [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  store ptr %i.t, ptr %i.s, align 8, !tbaa !72
  store i32 %i.d, ptr %i.f, align 8, !tbaa !71
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.g, %Vec_StrAlloc.exit
  %i.u = phi i32 [ %spec.store.select.i, %Vec_StrAlloc.exit ], [ %i.d, %bb.g ] ; 3 uses
  %i.v = phi ptr [ %i.k, %Vec_StrAlloc.exit ], [ %i.s, %bb.g ] ; 8 uses
  %i.w = icmp sgt i32 %i.d, 0
  br i1 %i.w, label %.lr.ph.i.preheader, label %Vec_StrFill.exit

.lr.ph.i.preheader:                               ; preds = %Vec_StrGrow.exit.i
  %i.x = zext nneg i32 %i.d to i64                ; 2 uses
  %xtraiter = and i64 %i.x, 3                     ; 3 uses
  %i.y = add nsw i32 %i.d, -1
  %i.z = icmp ult i32 %i.y, 3
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.x, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i
  store i8 45, ptr %i.ab, align 1, !tbaa !73
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 45, ptr %i.ae, align 1, !tbaa !73
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 45, ptr %i.ah, align 1, !tbaa !73
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  store i8 45, ptr %i.ak, align 1, !tbaa !73
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Vec_StrFill.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !74

Vec_StrFill.exit.loopexit.unr-lcssa:              ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_StrFill.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Vec_StrFill.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %Vec_StrFill.exit.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i.epil
  store i8 45, ptr %i.am, align 1, !tbaa !73
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Vec_StrFill.exit, label %.lr.ph.i.epil, !llvm.loop !75

Vec_StrFill.exit:                                 ; preds = %Vec_StrFill.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %Vec_StrAlloc.exit.thread, %Vec_StrGrow.exit.i
  %i.an = phi i32 [ 0, %Vec_StrAlloc.exit.thread ], [ %i.u, %Vec_StrGrow.exit.i ], [ %i.u, %.lr.ph.i.epil ], [ %i.u, %Vec_StrFill.exit.loopexit.unr-lcssa ]
  %i.ao = phi ptr [ %i.l, %Vec_StrAlloc.exit.thread ], [ %i.v, %Vec_StrGrow.exit.i ], [ %i.v, %.lr.ph.i.epil ], [ %i.v, %Vec_StrFill.exit.loopexit.unr-lcssa ] ; 12 uses
  %i.ap = icmp eq i32 %i.d, %i.an
  br i1 %i.ap, label %bb.h, label %Vec_StrFill.exit.Vec_StrPush.exit_crit_edge

Vec_StrFill.exit.Vec_StrPush.exit_crit_edge:      ; preds = %Vec_StrFill.exit
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !72
  br label %Vec_StrPush.exit

bb.h:                                             ; preds = %Vec_StrFill.exit
  %i.aq = icmp slt i32 %i.d, 16
  br i1 %i.aq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 2 uses
  %.not9.i.i51 = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.at = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23
  br label %Vec_StrGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.au = icmp samesign ult i32 %i.d, 1073741823
  %i.av = shl nuw nsw i32 %i.d, 1
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.d, %spec.select.i
  %.pre98 = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_StrPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre98, null
  %i.aw = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %.pre98, i64 noundef %i.aw) #24
  br label %Vec_StrGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.aw) #23
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge = phi ptr [ %i.at, %bb.k ], [ %i.as, %bb.j ], [ %i.ax, %bb.n ], [ %i.ay, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %storemerge, ptr %i.ao, align 8, !tbaa !72
  store i32 %spec.select.sink.i, ptr %i.f, align 8, !tbaa !71
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %Vec_StrFill.exit.Vec_StrPush.exit_crit_edge, %bb.l, %Vec_StrGrow.exit11.sink.split.i
  %i.az = phi ptr [ %.pre, %Vec_StrFill.exit.Vec_StrPush.exit_crit_edge ], [ %.pre98, %bb.l ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = add nsw i32 %i.d, 1                     ; 6 uses
  store i32 %i.ba, ptr %i.h, align 4, !tbaa !69
  %i.bb = sext i32 %i.d to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  store i8 32, ptr %i.bc, align 1, !tbaa !73
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !71  ; 2 uses
  %i.be = icmp eq i32 %i.ba, %i.bd
  br i1 %i.be, label %bb.p, label %Vec_StrPush.exit60

bb.p:                                             ; preds = %Vec_StrPush.exit
  %i.bf = icmp slt i32 %i.d, 15
  br i1 %i.bf, label %Vec_StrGrow.exit11.sink.split.i56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp samesign ult i32 %i.d, 1073741822
  %i.bh = shl nuw nsw i32 %i.ba, 1
  %spec.select.i53 = select i1 %i.bg, i32 %i.bh, i32 2147483647 ; 3 uses
  %.not.i9.i54 = icmp samesign ult i32 %i.ba, %spec.select.i53
  br i1 %.not.i9.i54, label %bb.r, label %Vec_StrPush.exit68.thread

Vec_StrPush.exit68.thread:                        ; preds = %bb.q
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !72
  %2 = add nuw nsw i32 %i.d, 2                    ; 2 uses
  store i32 %2, ptr %i.h, align 4, !tbaa !69
  %i.bj = zext nneg i32 %i.ba to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  store i8 49, ptr %i.bk, align 1, !tbaa !73
  %i.bl = load ptr, ptr %i.ao, align 8, !tbaa !72
  %i.bm = zext nneg i32 %2 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 10, ptr %i.bn, align 1, !tbaa !73
  br label %Vec_StrPush.exit76thread-pre-split

bb.r:                                             ; preds = %bb.q
  %i.bo = zext nneg i32 %spec.select.i53 to i64
  br label %Vec_StrGrow.exit11.sink.split.i56

Vec_StrGrow.exit11.sink.split.i56:                ; preds = %bb.p, %bb.r
  %.sink = phi i64 [ %i.bo, %bb.r ], [ 16, %bb.p ]
  %spec.select.sink.i57 = phi i32 [ %spec.select.i53, %bb.r ], [ 16, %bb.p ] ; 2 uses
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.az, i64 noundef %.sink) #24
  store ptr %i.bp, ptr %i.ao, align 8, !tbaa !72
  store i32 %spec.select.sink.i57, ptr %i.f, align 8, !tbaa !71
  br label %Vec_StrPush.exit60

Vec_StrPush.exit60:                               ; preds = %Vec_StrPush.exit, %Vec_StrGrow.exit11.sink.split.i56
  %i.bq = phi i32 [ %i.bd, %Vec_StrPush.exit ], [ %spec.select.sink.i57, %Vec_StrGrow.exit11.sink.split.i56 ] ; 5 uses
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 2 uses
  %i.bs = add nsw i32 %i.d, 2                     ; 2 uses
  %i.bt = sext i32 %i.ba to i64
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.bt
  store i8 49, ptr %i.bu, align 1, !tbaa !73
  %i.bv = icmp eq i32 %i.bs, %i.bq
  br i1 %i.bv, label %bb.s, label %Vec_StrPush.exit68

bb.s:                                             ; preds = %Vec_StrPush.exit60
  %i.bw = icmp slt i32 %i.d, 14
  br i1 %i.bw, label %Vec_StrGrow.exit11.sink.split.i64, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = icmp samesign ult i32 %i.d, 1073741821
  %i.by = shl nuw nsw i32 %i.bq, 1
  %spec.select.i61 = select i1 %i.bx, i32 %i.by, i32 2147483647 ; 3 uses
  %.not.i9.i62 = icmp samesign ult i32 %i.bq, %spec.select.i61
  br i1 %.not.i9.i62, label %bb.u, label %Vec_StrPush.exit68

bb.u:                                             ; preds = %bb.t
  %i.bz = zext nneg i32 %spec.select.i61 to i64
  br label %Vec_StrGrow.exit11.sink.split.i64

Vec_StrGrow.exit11.sink.split.i64:                ; preds = %bb.s, %bb.u
  %.sink108 = phi i64 [ %i.bz, %bb.u ], [ 16, %bb.s ]
  %spec.select.sink.i65 = phi i32 [ %spec.select.i61, %bb.u ], [ 16, %bb.s ] ; 2 uses
  %i.ca = tail call ptr @realloc(ptr noundef nonnull %i.br, i64 noundef %.sink108) #24
  store ptr %i.ca, ptr %i.ao, align 8, !tbaa !72
  store i32 %spec.select.sink.i65, ptr %i.f, align 8, !tbaa !71
  br label %Vec_StrPush.exit68

Vec_StrPush.exit68:                               ; preds = %Vec_StrPush.exit60, %bb.t, %Vec_StrGrow.exit11.sink.split.i64
  %i.cb = phi i32 [ %i.bq, %Vec_StrPush.exit60 ], [ %i.bq, %bb.t ], [ %spec.select.sink.i65, %Vec_StrGrow.exit11.sink.split.i64 ]
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 2 uses
  %i.cd = sext i32 %i.bs to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd
  store i8 10, ptr %i.ce, align 1, !tbaa !73
  %i.cf = icmp eq i32 %i.g, %i.cb
  br i1 %i.cf, label %bb.v, label %Vec_StrPush.exit76thread-pre-split

bb.v:                                             ; preds = %Vec_StrPush.exit68
  %i.cg = icmp slt i32 %i.d, 13
  br i1 %i.cg, label %Vec_StrGrow.exit11.sink.split.i72, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = icmp samesign ult i32 %i.d, 1073741820
  %i.ci = shl nuw nsw i32 %i.g, 1
  %spec.select.i69 = select i1 %i.ch, i32 %i.ci, i32 2147483647 ; 3 uses
  %.not.i9.i70 = icmp samesign ult i32 %i.g, %spec.select.i69
  br i1 %.not.i9.i70, label %bb.x, label %Vec_StrPush.exit76thread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.cj = zext nneg i32 %spec.select.i69 to i64
  br label %Vec_StrGrow.exit11.sink.split.i72

Vec_StrGrow.exit11.sink.split.i72:                ; preds = %bb.v, %bb.x
  %.sink109 = phi i64 [ %i.cj, %bb.x ], [ 16, %bb.v ]
  %spec.select.sink.i73 = phi i32 [ %spec.select.i69, %bb.x ], [ 16, %bb.v ]
  %i.ck = tail call ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef %.sink109) #24 ; 2 uses
  store ptr %i.ck, ptr %i.ao, align 8, !tbaa !72
  store i32 %spec.select.sink.i73, ptr %i.f, align 8, !tbaa !71
  br label %Vec_StrPush.exit76

Vec_StrPush.exit76thread-pre-split:               ; preds = %bb.w, %Vec_StrPush.exit68, %Vec_StrPush.exit68.thread
  %.pr = load ptr, ptr %i.ao, align 8, !tbaa !72
  br label %Vec_StrPush.exit76

Vec_StrPush.exit76:                               ; preds = %Vec_StrPush.exit76thread-pre-split, %Vec_StrGrow.exit11.sink.split.i72
  %i.cl = phi ptr [ %.pr, %Vec_StrPush.exit76thread-pre-split ], [ %i.ck, %Vec_StrGrow.exit11.sink.split.i72 ] ; 7 uses
  store i32 %i.e, ptr %i.h, align 4, !tbaa !69
  %i.cm = sext i32 %i.g to i64
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  store i8 0, ptr %i.cn, align 1, !tbaa !73
  %.val4188 = load i32, ptr %i.a, align 4, !tbaa !33
  %i.co = icmp sgt i32 %.val4188, 0
  br i1 %i.co, label %.lr.ph90, label %.critedge

.lr.ph90:                                         ; preds = %Vec_StrPush.exit76
  %i.cp = getelementptr i8, ptr %1, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cr = getelementptr i8, ptr %0, i64 24
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph90, %.critedge4
  %indvars.iv95 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next96, %.critedge4 ] ; 2 uses
  %.val45 = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv95
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !55 ; 3 uses
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !35
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.cl) ; 0 uses
  br label %.critedge4

bb.aa:                                            ; preds = %bb.y
  %.val48 = load ptr, ptr %i.cr, align 8, !tbaa !50 ; 5 uses
  %i.cx = icmp ne i32 %i.ct, -1
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = getelementptr inbounds nuw i8, ptr %.val48, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %.val48, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !49
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %.val.i.i.i = load ptr, ptr %i.dc, align 8, !tbaa !45
  %i.dd = sext i32 %i.ct to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !55
  %i.dg = getelementptr i8, ptr %i.cz, i64 8
  %.val3.i.i.i = load ptr, ptr %i.dg, align 8, !tbaa !45
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !57 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val48, i64 40
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !59
  %i.dl = getelementptr i8, ptr %.val48, i64 44   ; 4 uses
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !60
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dn = getelementptr i8, ptr %.val48, i64 48   ; 3 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !61
  %i.do = icmp sgt i32 %i.dj, 0
  br i1 %i.do, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.aa ] ; 2 uses
  %.val44 = load ptr, ptr %i.dn, align 8, !tbaa !45
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !55 ; 2 uses
  %i.dr = ashr i32 %i.dq, 1
  %i.ds = and i32 %i.dq, 1
  %.not = icmp eq i32 %i.ds, 0
  %i.dt = select i1 %.not, i8 49, i8 48
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds i8, ptr %i.cl, i64 %i.du
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val40 = load i32, ptr %i.dl, align 4, !tbaa !33
  %i.dw = sext i32 %.val40 to i64
  %i.dx = icmp slt i64 %indvars.iv.next, %i.dw
  br i1 %i.dx, label %.lr.ph, label %.critedge2, !llvm.loop !77

.critedge2:                                       ; preds = %.lr.ph, %bb.aa
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.cl) ; 0 uses
  %.val85 = load i32, ptr %i.dl, align 4, !tbaa !33
  %i.dz = icmp sgt i32 %.val85, 0
  br i1 %i.dz, label %.lr.ph87, label %.critedge4

.lr.ph87:                                         ; preds = %.critedge2, %.lr.ph87
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %.lr.ph87 ], [ 0, %.critedge2 ] ; 2 uses
  %.val43 = load ptr, ptr %i.dn, align 8, !tbaa !45
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val43, i64 %indvars.iv92
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !55
  %i.ec = ashr i32 %i.eb, 1
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.cl, i64 %i.ed
  store i8 45, ptr %i.ee, align 1, !tbaa !73
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %.val = load i32, ptr %i.dl, align 4, !tbaa !33
  %i.ef = sext i32 %.val to i64
  %i.eg = icmp slt i64 %indvars.iv.next93, %i.ef
  br i1 %i.eg, label %.lr.ph87, label %.critedge4, !llvm.loop !78

.critedge4:                                       ; preds = %.lr.ph87, %.critedge2, %bb.z
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %.val41 = load i32, ptr %i.a, align 4, !tbaa !33
  %i.eh = sext i32 %.val41 to i64
  %i.ei = icmp slt i64 %indvars.iv.next96, %i.eh
  br i1 %i.ei, label %bb.y, label %.critedge, !llvm.loop !79

.critedge:                                        ; preds = %.critedge4, %Vec_StrPush.exit76
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not.i77 = icmp eq ptr %i.cl, null
  br i1 %.not.i77, label %Vec_StrFree.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.cl) #25
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %.critedge, %bb.ab
  tail call void @free(ptr noundef nonnull %i.f) #25
  br label %bb.ac

bb.ac:                                            ; preds = %Vec_StrFree.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Eso_ManCoverDerive(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !80 ; 4 uses
  %i.b = icmp sgt i32 %.val.i, 0                  ; 2 uses
  br i1 %i.b, label %.lr.ph.i, label %Vec_VecSizeSize.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.c, align 8, !tbaa !83 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.val.i to i64 ; 2 uses
end_hunk_0
