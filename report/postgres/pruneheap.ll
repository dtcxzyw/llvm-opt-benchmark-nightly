Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pruneheap?download=true
inline.NumInlined: 109
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@heap_page_prune_execute:bb.a

.lr.ph47:                                         ; preds = %.preheader
  %i.aw = getelementptr i8, ptr %.0.i.i, i64 20   ; 5 uses
  %xtraiter61 = and i32 %7, 3                     ; 3 uses
  %i.ax = icmp ult i32 %7, 4
  br i1 %i.ax, label %.epil.preheader60, label %.lr.ph47.new

.lr.ph47.new:                                     ; preds = %.lr.ph47
  %unroll_iter65 = and i32 %7, 2147483644
  br label %bb.h

bb.f:                                             ; preds = %bb.f, %.lr.ph44.new
  %.143 = phi ptr [ %4, %.lr.ph44.new ], [ %i.bk, %bb.f ] ; 5 uses
  %niter59 = phi i32 [ 0, %.lr.ph44.new ], [ %niter59.next.3, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.143, i64 2
  %i.az = load i16, ptr %.143, align 2
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %i.x, i64 %i.ba
  store i32 98304, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.143, i64 4
  %i.bd = load i16, ptr %i.ay, align 2
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %i.x, i64 %i.be
  store i32 98304, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.143, i64 6
  %i.bh = load i16, ptr %i.bc, align 2
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.x, i64 %i.bi
  store i32 98304, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.143, i64 8 ; 2 uses
  %i.bl = load i16, ptr %i.bg, align 2
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %i.x, i64 %i.bm
  store i32 98304, ptr %i.bn, align 4
  %niter59.next.3 = add nuw nsw i32 %niter59, 4   ; 2 uses
  %niter59.ncmp.3 = icmp eq i32 %niter59.next.3, %unroll_iter58
  br i1 %niter59.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod63.not = icmp eq i32 %xtraiter61, 0
  br i1 %lcmp.mod63.not, label %._crit_edge, label %.epil.preheader60

.epil.preheader60:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph47
  %.246.epil.init = phi ptr [ %6, %.lr.ph47 ], [ %i.ce, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i32 %xtraiter61, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader60
  %.246.epil = phi ptr [ %.246.epil.init, %.epil.preheader60 ], [ %i.bo, %bb.g ] ; 2 uses
  %epil.iter62 = phi i32 [ 0, %.epil.preheader60 ], [ %epil.iter62.next, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.246.epil, i64 2
  %i.bp = load i16, ptr %.246.epil, align 2
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.aw, i64 %i.bq
  store i32 0, ptr %i.br, align 4
  %epil.iter62.next = add i32 %epil.iter62, 1     ; 2 uses
  %epil.iter62.cmp.not = icmp eq i32 %epil.iter62.next, %xtraiter61
  br i1 %epil.iter62.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !24

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.preheader
  br i1 %1, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.h, %.lr.ph47.new
  %.246 = phi ptr [ %6, %.lr.ph47.new ], [ %i.ce, %bb.h ] ; 5 uses
  %niter66 = phi i32 [ 0, %.lr.ph47.new ], [ %niter66.next.3, %bb.h ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.246, i64 2
  %i.bt = load i16, ptr %.246, align 2
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %i.aw, i64 %i.bu
  store i32 0, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.246, i64 4
  %i.bx = load i16, ptr %i.bs, align 2
  %i.by = zext i16 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %i.aw, i64 %i.by
  store i32 0, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.246, i64 6
  %i.cb = load i16, ptr %i.bw, align 2
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr %i.aw, i64 %i.cc
  store i32 0, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.246, i64 8 ; 2 uses
  %i.cf = load i16, ptr %i.ca, align 2
  %i.cg = zext i16 %i.cf to i64
  %i.ch = getelementptr [4 x i8], ptr %i.aw, i64 %i.cg
  store i32 0, ptr %i.ch, align 4
  %niter66.next.3 = add nuw nsw i32 %niter66, 4   ; 2 uses
  %niter66.ncmp.3 = icmp eq i32 %niter66.next.3, %unroll_iter65
  br i1 %niter66.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !2

bb.i:                                             ; preds = %._crit_edge
  tail call void @PageTruncateLinePointerArray(ptr noundef %.0.i.i) #8
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  tail call void @PageRepairFragmentation(ptr noundef %.0.i.i) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare void @heap_freeze_prepared_tuples(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @visibilitymap_set(i32 noundef, i32 noundef, i8 noundef zeroext, i64, i32) local_unnamed_addr #2

declare void @MarkBufferDirty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @log_heap_prune_and_freeze(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %15 = alloca %struct.xl_heap_prune, align 2     ; 12 uses
  %16 = alloca [291 x %struct.xlhp_freeze_plan], align 16 ; 8 uses
  %17 = alloca %struct.xlhp_freeze_plans, align 4 ; 4 uses
  %18 = alloca %struct.xlhp_prune_items, align 2  ; 4 uses
  %19 = alloca %struct.xlhp_prune_items, align 2  ; 4 uses
  %20 = alloca %struct.xlhp_prune_items, align 2  ; 4 uses
  %i.b = alloca [291 x i16], align 16             ; 5 uses
  store i32 %4, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.e = xor i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @BufferBlocks, align 8
  %i.j = add nsw i32 %1, -1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.n = icmp sgt i32 %10, 0                      ; 2 uses
  %i.o = icmp sgt i32 %12, 0                      ; 2 uses
  %i.p = icmp sgt i32 %14, 0                      ; 2 uses
  %i.q = zext i8 %3 to i32                        ; 3 uses
  %i.r = and i32 %i.q, 3
  %.not65 = icmp eq i32 %i.r, 0                   ; 3 uses
  store i16 0, ptr %15, align 2
  %i.s = load volatile i64, ptr %.0.i.i, align 8
  %.not66 = icmp eq i64 %i.s, 0
  br i1 %.not66, label %bb.i, label %bb.d

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.t = icmp ne i32 %8, 0
  %i.u = or i1 %i.t, %i.o
  %i.v = or i1 %i.n, %i.u
  %or.cond3.not = or i1 %i.v, %i.p
  br i1 %or.cond3.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not65, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr @wal_log_hints, align 1, !range !7, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call zeroext i1 @DataChecksumsNeedWrite() #8
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  br label %bb.i

bb.i:                                             ; preds = %BufferGetPage.exit, %bb.d, %bb.f, %bb.g, %bb.h
  %.058 = phi i8 [ 8, %bb.f ], [ 8, %bb.g ], [ 10, %bb.h ], [ 8, %bb.d ], [ 9, %BufferGetPage.exit ]
  %.0 = phi i1 [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.h ], [ true, %bb.d ], [ true, %BufferGetPage.exit ]
  tail call void @XLogBeginInsert() #8
  tail call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %1, i8 noundef zeroext %.058) #8
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @XLogRegisterBuffer(i8 noundef zeroext 1, i32 noundef %2, i8 noundef zeroext 0) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = icmp sgt i32 %8, 0                       ; 2 uses
  br i1 %i.z, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  store i16 16, ptr %15, align 2
  %i.aa = zext nneg i32 %8 to i64                 ; 2 uses
  tail call void @pg_qsort(ptr noundef %7, i64 noundef %i.aa, i64 noundef 12, ptr noundef nonnull @heap_log_freeze_cmp) #8
  %i.ab = load i32, ptr %7, align 4
  store i32 %i.ab, ptr %16, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.ae = load <2 x i16>, ptr %i.ac, align 4
  store <2 x i16> %i.ae, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 10
  store i16 1, ptr %i.ai, align 2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 10
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  store i16 %.pre.i, ptr %i.b, align 16
  %exitcond.peel.not.i = icmp eq i32 %8, 1
  br i1 %exitcond.peel.not.i, label %heap_log_freeze_plan.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.l, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 1, %bb.l ] ; 3 uses
  %.02126.i = phi i32 [ %.1.i, %bb.q ], [ 1, %bb.l ] ; 2 uses
  %.02225.i = phi ptr [ %.123.i, %bb.q ], [ %16, %bb.l ] ; 11 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i ; 8 uses
  %21 = load i32, ptr %.02225.i, align 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp eq i32 %21, %i.ak
  br i1 %i.al, label %bb.m, label %heap_log_freeze_eq.exit.i

bb.m:                                             ; preds = %.peel.next.i
  %i.am = getelementptr inbounds nuw i8, ptr %.02225.i, i64 4
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = icmp eq i16 %i.an, %i.ap
  br i1 %i.aq, label %bb.n, label %heap_log_freeze_eq.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.02225.i, i64 6
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.au = load i16, ptr %i.at, align 2
  %i.av = icmp eq i16 %i.as, %i.au
  br i1 %i.av, label %bb.o, label %heap_log_freeze_eq.exit.i

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.02225.i, i64 8
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = icmp eq i8 %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %heap_log_freeze_eq.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.02225.i, i64 10 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = add i16 %i.bc, 1
  store i16 %i.bd, ptr %i.bb, align 2
  br label %bb.q

heap_log_freeze_eq.exit.i:                        ; preds = %bb.o, %bb.n, %bb.m, %.peel.next.i
  %22 = getelementptr inbounds nuw i8, ptr %.02225.i, i64 12 ; 2 uses
  store i32 %i.ak, ptr %22, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %23 = load i16, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.02225.i, i64 16
  store i16 %23, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.02225.i, i64 18
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.02225.i, i64 20
  store i8 %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.02225.i, i64 22
  store i16 1, ptr %i.bm, align 2
  %i.bn = add i32 %.02126.i, 1
  br label %bb.q

bb.q:                                             ; preds = %heap_log_freeze_eq.exit.i, %bb.p
  %.123.i = phi ptr [ %22, %heap_log_freeze_eq.exit.i ], [ %.02225.i, %bb.p ]
  %.1.i = phi i32 [ %i.bn, %heap_log_freeze_eq.exit.i ], [ %.02126.i, %bb.p ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  store i16 %i.bp, ptr %i.bq, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aa
  br i1 %exitcond.not.i, label %heap_log_freeze_plan.exit, label %.peel.next.i, !llvm.loop !25

heap_log_freeze_plan.exit:                        ; preds = %bb.q, %bb.l
  %.1.lcssa.i = phi i32 [ 1, %bb.l ], [ %.1.i, %bb.q ] ; 2 uses
  %i.br = trunc i32 %.1.lcssa.i to i16
  store i16 %i.br, ptr %17, align 4
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %17, i32 noundef 4) #8
  %i.bs = mul i32 %.1.lcssa.i, 12
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %16, i32 noundef %i.bs) #8
  br label %bb.r

bb.r:                                             ; preds = %heap_log_freeze_plan.exit, %bb.k
  %i.bt = phi i16 [ 16, %heap_log_freeze_plan.exit ], [ 0, %bb.k ] ; 2 uses
  br i1 %i.n, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = or disjoint i16 %i.bt, 32               ; 2 uses
  store i16 %i.bu, ptr %15, align 2
  %i.bv = trunc i32 %10 to i16
  store i16 %i.bv, ptr %18, align 2
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %18, i32 noundef 2) #8
  %i.bw = shl i32 %10, 2
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %9, i32 noundef %i.bw) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bx = phi i16 [ %i.bu, %bb.s ], [ %i.bt, %bb.r ] ; 2 uses
  br i1 %i.o, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = or i16 %i.bx, 64                        ; 2 uses
  store i16 %i.by, ptr %15, align 2
  %i.bz = trunc i32 %12 to i16
  store i16 %i.bz, ptr %19, align 2
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %19, i32 noundef 2) #8
  %i.ca = shl nuw i32 %12, 1
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %11, i32 noundef %i.ca) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cb = phi i16 [ %i.by, %bb.u ], [ %i.bx, %bb.t ] ; 2 uses
  br i1 %i.p, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cc = or i16 %i.cb, 128                       ; 2 uses
  store i16 %i.cc, ptr %15, align 2
  %i.cd = trunc i32 %14 to i16
  store i16 %i.cd, ptr %20, align 2
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %20, i32 noundef 2) #8
  %i.ce = shl nuw i32 %14, 1
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %13, i32 noundef %i.ce) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cf = phi i16 [ %i.cc, %bb.w ], [ %i.cb, %bb.v ] ; 3 uses
  br i1 %i.z, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = shl nuw i32 %8, 1
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %i.b, i32 noundef %i.cg) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ch = and i32 %i.q, 1
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ci = or i16 %i.cf, 256                       ; 2 uses
  store i16 %i.ci, ptr %15, align 2
  %i.cj = and i32 %i.q, 2
  %.not68 = icmp eq i32 %i.cj, 0
  br i1 %.not68, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = or i16 %i.cf, 768                       ; 2 uses
  store i16 %i.ck, ptr %15, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.cl = phi i16 [ %i.ci, %bb.aa ], [ %i.ck, %bb.ab ], [ %i.cf, %bb.z ] ; 8 uses
  %i.cm = load i32, ptr @wal_level, align 4       ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  %i.co = load i8, ptr @XLogLogicalInfo, align 1, !range !7
  %i.cp = trunc nuw i8 %i.co to i1
  %or.cond5 = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %or.cond5, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 118
  %i.ct = load i8, ptr %i.cs, align 2
  %i.cu = icmp eq i8 %i.ct, 112
  br i1 %i.cu, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.cv = icmp sgt i32 %i.cm, 0
  br i1 %i.cv, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.dc = call zeroext i1 @IsCatalogRelation(ptr noundef nonnull %0) #8
  br i1 %i.dc, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not69 = icmp eq ptr %i.de, null
  br i1 %.not69, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = load ptr, ptr %i.cq, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 119
  %i.dh = load i8, ptr %i.dg, align 1
  switch i8 %i.dh, label %bb.am [
    i8 114, label %bb.ak
    i8 109, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  %i.dj = load i8, ptr %i.di, align 8, !range !7, !noundef !8
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.dl = or i16 %i.cl, 2                         ; 2 uses
  store i16 %i.dl, ptr %15, align 2
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.al, %bb.ak, %bb.ag, %bb.af, %bb.ad
  %i.dm = phi i16 [ %i.cl, %bb.aj ], [ %i.cl, %bb.ai ], [ %i.cl, %bb.ac ], [ %i.dl, %bb.al ], [ %i.cl, %bb.ak ], [ %i.cl, %bb.ag ], [ %i.cl, %bb.af ], [ %i.cl, %bb.ad ] ; 2 uses
  %.not70 = icmp ne i32 %4, 0                     ; 3 uses
  %i.dn = or i1 %.not70, %5
  br i1 %i.dn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.do = or i16 %i.dm, 8
  %i.dp = select i1 %.not70, i16 %i.do, i16 %i.dm ; 2 uses
  %i.dq = or i16 %i.dp, 4
  %simplifycfg.merge = select i1 %5, i16 %i.dq, i16 %i.dp
  store i16 %simplifycfg.merge, ptr %15, align 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @XLogRegisterData(ptr noundef nonnull %15, i32 noundef 2) #8
  br i1 %.not70, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @XLogRegisterData(ptr noundef nonnull %i.a, i32 noundef 4) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dr = icmp ult i32 %6, 3
  br i1 %i.dr, label %switch.lookup, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dt = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2734, ptr noundef nonnull @__func__.log_heap_prune_and_freeze) #8
  unreachable

switch.lookup:                                    ; preds = %bb.aq
  %switch.idx.cast = trunc nuw i32 %6 to i8
  %switch.idx.mult = shl nuw nsw i8 %switch.idx.cast, 4
  %switch.offset = add nuw nsw i8 %switch.idx.mult, 16
  %i.du = call i64 @XLogInsert(i8 noundef zeroext 9, i8 noundef zeroext %switch.offset) #8 ; 4 uses
  br i1 %.not65, label %bb.av, label %bb.as

bb.as:                                            ; preds = %switch.lookup
  %i.dv = icmp slt i32 %2, 0
  br i1 %i.dv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dw = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.dx = xor i32 %2, -1
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8
  br label %BufferGetPage.exit73

end_hunk_0
