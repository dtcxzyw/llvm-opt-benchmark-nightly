Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Solver?download=true
inline.NumInlined: 620
inline.NumDeleted: 139
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Solver17checkLiteralCountEv:bb.a
._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.epil.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.not = icmp eq i32 %.07.lcssa, %i.p
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.079 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = load i32, ptr %i.r, align 4, !tbaa !80   ; 2 uses
  %i.t = and i32 %i.s, 6
  %i.u = icmp eq i32 %i.t, 0
  %i.v = lshr i32 %i.s, 3
  %i.w = select i1 %i.u, i32 %i.v, i32 0
  %.1 = add nuw nsw i32 %i.w, %.079
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80  ; 2 uses
  %i.ab = and i32 %i.aa, 6
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = lshr i32 %i.aa, 3
  %i.ae = select i1 %i.ac, i32 %i.ad, i32 0
  %.1.1 = add nuw nsw i32 %i.ae, %.1              ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !190

bb.c:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !96
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.7, i32 noundef %i.p, i32 noundef %.07.lcssa) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEE6insertEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !guid !193 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = add nsw i32 %1, 1                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %.not.i.not = icmp sgt i32 %i.d, %1
  br i1 %.not.i.not, label %_ZN3vecIiE6growToEiRKi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75   ; 3 uses
  %.not.i.i.not = icmp slt i32 %1, %i.f
  br i1 %.not.i.i.not, label %_ZN3vecIiE4growEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %.preheader.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %i.i = phi i32 [ %i.l, %.preheader.i.i ], [ %i.f, %bb.c ]
  %i.j = mul nsw i32 %i.i, 3
  %i.k = add nsw i32 %i.j, 1
  %i.l = ashr i32 %i.k, 1                         ; 3 uses
  %.not = icmp sgt i32 %i.l, %1
  br i1 %.not, label %.loopexit.i.i, label %.preheader.i.i, !llvm.loop !192

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.d
  %storemerge.i.i = phi i32 [ %i.h, %bb.d ], [ %i.l, %.preheader.i.i ] ; 2 uses
  store i32 %storemerge.i.i, ptr %i.e, align 4, !tbaa !75
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.n = sext i32 %storemerge.i.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.o) #19
  store ptr %i.p, ptr %i.a, align 8, !tbaa !65
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !66
  br label %_ZN3vecIiE4growEi.exit.i

_ZN3vecIiE4growEi.exit.i:                         ; preds = %.loopexit.i.i, %bb.b
  %i.q = phi i32 [ %i.d, %bb.b ], [ %.pre.i, %.loopexit.i.i ] ; 2 uses
  %.not8 = icmp sgt i32 %i.q, %1
  br i1 %.not8, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3vecIiE4growEi.exit.i
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.s = sext i32 %i.q to i64                     ; 2 uses
  %wide.trip.count.i = sext i32 %i.b to i64
  %i.t = shl nsw i64 %i.s, 2
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.t
  %i.u = sub nsw i64 %wide.trip.count.i, %i.s
  %i.v = shl nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %i.v, i1 false), !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN3vecIiE4growEi.exit.i
  store i32 %i.b, ptr %i.c, align 8, !tbaa !66
  br label %_ZN3vecIiE6growToEiRKi.exit

_ZN3vecIiE6growToEiRKi.exit:                      ; preds = %bb.a, %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !66   ; 4 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.aa = sext i32 %1 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.ae = icmp eq i32 %i.y, %i.ad
  %.pre.i1 = load ptr, ptr %i.w, align 8, !tbaa !65 ; 2 uses
  br i1 %i.ae, label %bb.e, label %_ZN3vecIiE4pushERKi.exit

bb.e:                                             ; preds = %_ZN3vecIiE6growToEiRKi.exit
  %i.af = mul nsw i32 %i.y, 3
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = tail call noundef i32 @llvm.smax.i32(i32 %i.ah, i32 2) ; 2 uses
  store i32 %i.ai, ptr %i.ac, align 4, !tbaa !75
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call ptr @realloc(ptr noundef %.pre.i1, i64 noundef %i.ak) #19 ; 2 uses
  store ptr %i.al, ptr %i.w, align 8, !tbaa !65
  %.pre2.i = load i32, ptr %i.x, align 8, !tbaa !66
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %_ZN3vecIiE4pushERKi.exit

_ZN3vecIiE4pushERKi.exit:                         ; preds = %_ZN3vecIiE6growToEiRKi.exit, %bb.e
  %i.am = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN3vecIiE6growToEiRKi.exit ] ; 3 uses
  %i.an = phi i32 [ %.pre2.i, %bb.e ], [ %i.y, %_ZN3vecIiE6growToEiRKi.exit ] ; 2 uses
  %i.ao = phi ptr [ %i.al, %bb.e ], [ %.pre.i1, %_ZN3vecIiE6growToEiRKi.exit ] ; 6 uses
  %i.ap = add nsw i32 %i.an, 1
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !66
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  store i32 %1, ptr %i.ar, align 4, !tbaa !15
  %i.as = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.aa
  %i.at = load i32, ptr %i.as, align 4, !tbaa !15 ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !15 ; 2 uses
  %.not16.i = icmp eq i32 %i.at, 0
  %.pre20.i = sext i32 %i.aw to i64               ; 2 uses
  br i1 %.not16.i, label %_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %_ZN3vecIiE4pushERKi.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !91, !nonnull !77, !align !88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !69 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.pre20.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i2
  %.017.i = phi i32 [ %i.at, %.lr.ph.i2 ], [ %i.bc, %bb.g ] ; 4 uses
  %i.bb = add nsw i32 %.017.i, -1
  %i.bc = ashr i32 %i.bb, 1                       ; 3 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !15 ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !23
  %i.bj = fcmp ogt double %i.ba, %i.bi
  %i.bk = sext i32 %.017.i to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bk ; 2 uses
  br i1 %i.bj, label %bb.g, label %_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi.exit

bb.g:                                             ; preds = %bb.f
  store i32 %i.bf, ptr %i.bl, align 4, !tbaa !15
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bg
  store i32 %.017.i, ptr %i.bm, align 4, !tbaa !15
  %.not.i3 = icmp eq i32 %i.bc, 0
  br i1 %.not.i3, label %_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi.exit, label %bb.f, !llvm.loop !3

_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi.exit: ; preds = %bb.g, %bb.f, %_ZN3vecIiE4pushERKi.exit
  %.015.i = phi i32 [ 0, %_ZN3vecIiE4pushERKi.exit ], [ 0, %bb.g ], [ %.017.i, %bb.f ]
  %phi.call.i = phi ptr [ %i.ao, %_ZN3vecIiE4pushERKi.exit ], [ %i.ao, %bb.g ], [ %i.bl, %bb.f ]
  store i32 %i.aw, ptr %phi.call.i, align 4, !tbaa !15
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.am, i64 %.pre20.i
  store i32 %.015.i, ptr %i.bn, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 comdat !guid !200 {
bb.a:
  %i.a = icmp slt i32 %1, 16
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ah, %tailrecurse ] ; 7 uses
  %.tr39.lcssa = phi i32 [ %1, %bb.a ], [ %i.am, %tailrecurse ] ; 3 uses
  %i.b = icmp sgt i32 %.tr39.lcssa, 1
  br i1 %i.b, label %.lr.ph27.preheader.i, label %_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_.exit

.lr.ph27.preheader.i:                             ; preds = %tailrecurse._crit_edge
  %i.c = add nsw i32 %.tr39.lcssa, -1
  %wide.trip.count35.i = zext nneg i32 %i.c to i64
  %wide.trip.count.i = zext nneg i32 %.tr39.lcssa to i64 ; 3 uses
  %i.d = add nsw i64 %wide.trip.count.i, -2
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph27.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph27.preheader.i ], [ %indvars.iv.next33.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph27.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.e = xor i64 %indvars.iv32.i, -1
  %i.f = add nsw i64 %i.e, %wide.trip.count.i
  %i.g = sub i64 %i.d, %indvars.iv32.i
  %i.h = trunc nuw nsw i64 %indvars.iv32.i to i32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv32.i ; 2 uses
  %.sroa.0.0.copyload.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !15 ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.sroa.0.0.copyload.i.prol.a = phi i32 [ %2, %.lr.ph.i.prol ], [ %.sroa.0.0.copyload.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv29.i.prol.a = phi i64 [ %indvars.iv.next30.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.02223.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv29.i.prol.a
  %.sroa.01.0.copyload.i.prol.a = load i32, ptr %i.i, align 4, !tbaa !15 ; 2 uses
  %i.j = icmp slt i32 %.sroa.01.0.copyload.i.prol.a, %.sroa.0.0.copyload.i.prol.a
  %i.k = trunc nuw nsw i64 %indvars.iv29.i.prol.a to i32
  %spec.select.i.prol = select i1 %i.j, i32 %i.k, i32 %.02223.i.prol ; 3 uses
  %indvars.iv.next30.i.prol = add nuw nsw i64 %indvars.iv29.i.prol.a, 1 ; 2 uses
  %2 = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.prol.a, i32 %.sroa.0.0.copyload.i.prol.a) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !194

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.sroa.0.0.copyload.i.unr = phi i32 [ %.sroa.0.0.copyload.pre.i, %.lr.ph.preheader.i ], [ %2, %.lr.ph.i.prol ]
  %indvars.iv29.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next30.i.prol, %.lr.ph.i.prol ]
  %.02223.i.unr = phi i32 [ %i.h, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.l = icmp ult i64 %i.g, 3
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.0.copyload.i.a = phi i32 [ %6, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i.3, %.lr.ph.i ], [ %indvars.iv29.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.02223.i = phi i32 [ %spec.select.i.3, %.lr.ph.i ], [ %.02223.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv29.i
  %.sroa.01.0.copyload.i.a = load i32, ptr %i.m, align 4, !tbaa !15 ; 2 uses
  %i.n = icmp slt i32 %.sroa.01.0.copyload.i.a, %.sroa.0.0.copyload.i.a
  %i.o = trunc nuw nsw i64 %indvars.iv29.i to i32
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 %.02223.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %3 = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.a, i32 %.sroa.0.0.copyload.i.a) ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next30.i
  %.sroa.01.0.copyload.i.1.a = load i32, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.q = icmp slt i32 %.sroa.01.0.copyload.i.1.a, %3
  %i.r = trunc nuw nsw i64 %indvars.iv.next30.i to i32
  %spec.select.i.1 = select i1 %i.q, i32 %i.r, i32 %spec.select.i
  %indvars.iv.next30.i.1 = add nuw nsw i64 %indvars.iv29.i, 2 ; 2 uses
  %4 = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.1.a, i32 %3) ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next30.i.1
  %.sroa.01.0.copyload.i.2.a = load i32, ptr %i.s, align 4, !tbaa !15 ; 2 uses
  %i.t = icmp slt i32 %.sroa.01.0.copyload.i.2.a, %4
  %i.u = trunc nuw nsw i64 %indvars.iv.next30.i.1 to i32
  %spec.select.i.2 = select i1 %i.t, i32 %i.u, i32 %spec.select.i.1
  %indvars.iv.next30.i.2 = add nuw nsw i64 %indvars.iv29.i, 3 ; 2 uses
  %5 = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.2.a, i32 %4) ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next30.i.2
  %.sroa.01.0.copyload.i.3.a = load i32, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.w = icmp slt i32 %.sroa.01.0.copyload.i.3.a, %5
  %i.x = trunc nuw nsw i64 %indvars.iv.next30.i.2 to i32
  %spec.select.i.3 = select i1 %i.w, i32 %i.x, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next30.i.3 = add nuw nsw i64 %indvars.iv29.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next30.i.3, %wide.trip.count.i
  %6 = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.3.a, i32 %5)
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !195

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i ]
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.y = sext i32 %spec.select.i.lcssa to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.tr.lcssa, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  store i32 %i.aa, ptr %.phi.trans.insert.i, align 4, !tbaa !15
  store i32 %.sroa.0.0.copyload.pre.i, ptr %i.z, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_.exit, label %.lr.ph.preheader.i, !llvm.loop !196

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr3945 = phi i32 [ %i.am, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %.tr44 = phi ptr [ %i.ah, %tailrecurse ], [ %0, %bb.a ] ; 6 uses
  %i.ab = lshr i32 %.tr3945, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.tr44, i64 %i.ac
  %.sroa.016.0.copyload = load i32, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.ae = zext nneg i32 %.tr3945 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.032 = phi i64 [ %i.ae, %.lr.ph ], [ %indvars.iv.next54, %bb.f ]
  %.0 = phi i64 [ -1, %.lr.ph ], [ %indvars.iv.next, %bb.f ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %.0, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 6 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %.tr44, i64 %indvars.iv.next
  %.sroa.03.0.copyload = load i32, ptr %i.af, align 4, !tbaa !15 ; 2 uses
  %i.ag = icmp slt i32 %.sroa.03.0.copyload, %.sroa.016.0.copyload
  br i1 %i.ag, label %bb.c, label %.preheader, !llvm.loop !197

.preheader:                                       ; preds = %bb.c
  %i.ah = getelementptr inbounds [4 x i8], ptr %.tr44, i64 %indvars.iv.next ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv53 = phi i64 [ %.032, %.preheader ], [ %indvars.iv.next54, %bb.d ]
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, -1 ; 5 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %.tr44, i64 %indvars.iv.next54
  %.sroa.0.0.copyload = load i32, ptr %i.ai, align 4, !tbaa !15 ; 2 uses
  %i.aj = icmp slt i32 %.sroa.016.0.copyload, %.sroa.0.0.copyload
  br i1 %i.aj, label %bb.d, label %bb.e, !llvm.loop !198

bb.e:                                             ; preds = %bb.d
  %.not = icmp slt i64 %indvars.iv.next, %indvars.iv.next54
  br i1 %.not, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds [4 x i8], ptr %.tr44, i64 %indvars.iv.next54
  store i32 %.sroa.0.0.copyload, ptr %i.ah, align 4, !tbaa !15
  store i32 %.sroa.03.0.copyload, ptr %i.ak, align 4, !tbaa !15
  br label %bb.b, !llvm.loop !199

tailrecurse:                                      ; preds = %bb.e
  %i.al = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  tail call void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(ptr noundef nonnull %.tr44, i32 noundef %i.al)
  %i.am = sub nsw i32 %.tr3945, %i.al             ; 3 uses
  %i.an = icmp slt i32 %i.am, 16
  br i1 %i.an, label %tailrecurse._crit_edge, label %.lr.ph

_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_.exit: ; preds = %._crit_edge.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 comdat !guid !206 {
bb.a:
  %i.a = icmp slt i32 %1, 16
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph87

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %.us-phi84, %tailrecurse ] ; 4 uses
  %.tr40.lcssa = phi i32 [ %1, %bb.a ], [ %i.cq, %tailrecurse ] ; 3 uses
  %i.b = icmp sgt i32 %.tr40.lcssa, 1
  br i1 %i.b, label %.lr.ph30.preheader.i, label %_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_.exit

.lr.ph30.preheader.i:                             ; preds = %tailrecurse._crit_edge
  %i.c = add nsw i32 %.tr40.lcssa, -1
  %wide.trip.count38.i = zext nneg i32 %i.c to i64
  %wide.trip.count.i = zext nneg i32 %.tr40.lcssa to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph30.preheader.i
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph30.preheader.i ], [ %indvars.iv.next36.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph30.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.d = trunc nuw nsw i64 %indvars.iv35.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i, %.lr.ph.preheader.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next33.i, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i ] ; 3 uses
  %.027.i = phi i32 [ %i.d, %.lr.ph.preheader.i ], [ %i.t, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.tr.lcssa, i64 %indvars.iv32.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = sext i32 %.027.i to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %.tr.lcssa, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59   ; 2 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !80
  %i.k = icmp ugt i32 %i.j, 23
  br i1 %i.k, label %bb.b, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = load i32, ptr %i.i, align 4, !tbaa !80
  %.mask.i.i = and i32 %i.l, -8
  %i.m = icmp eq i32 %.mask.i.i, 16
  br i1 %i.m, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread.i, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.i

_ZN11reduceDB_ltclEP6ClauseS1_.exit.i:            ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !90
  %i.r = fcmp olt float %i.o, %i.q
  %cond.fr.i = freeze i1 %i.r
  br i1 %cond.fr.i, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread.i, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i

_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread.i:     ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.i, %bb.b
  %i.s = trunc nuw nsw i64 %indvars.iv32.i to i32
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i

_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i:   ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread.i, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.i, %.lr.ph.i
  %i.t = phi i32 [ %i.s, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread.i ], [ %.027.i, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.i ], [ %.027.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !202

._crit_edge.i:                                    ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.thread24.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.tr.lcssa, i64 %indvars.iv35.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.tr.lcssa, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  store ptr %i.y, ptr %i.u, align 8, !tbaa !59
  store ptr %i.v, ptr %i.x, align 8, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_.exit, label %.lr.ph.preheader.i, !llvm.loop !203

.lr.ph87:                                         ; preds = %bb.a, %tailrecurse
  %.tr4086 = phi i32 [ %i.cq, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %.tr85 = phi ptr [ %.us-phi84, %tailrecurse ], [ %0, %bb.a ] ; 12 uses
  %i.z = lshr i32 %.tr4086, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.tr85, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 3 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !80 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 23
  %i.ag = zext nneg i32 %.tr4086 to i64           ; 2 uses
  br i1 %i.af, label %.split69.us, label %.split69.preheader

.split69.preheader:                               ; preds = %.lr.ph87
  %i.ah = icmp ugt i32 %i.ae, 15
  br label %.split69

.split69.us:                                      ; preds = %.lr.ph87, %bb.c
  %.030.us = phi i32 [ %.lcssa43.us, %bb.c ], [ -1, %.lr.ph87 ] ; 2 uses
  %.0.us = phi i64 [ %indvars.iv.next127, %bb.c ], [ %i.ag, %.lr.ph87 ]
  %i.ai = add nsw i32 %.030.us, 1                 ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !59 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !80
  %i.an = icmp ugt i32 %i.am, 23
  br i1 %i.an, label %.lr.ph.split.us70, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us

.lr.ph.split.us70:                                ; preds = %.split69.us
  %i.ao = load float, ptr %i.ad, align 4, !tbaa !90 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !90
  %i.ar = fcmp olt float %i.aq, %i.ao
  br i1 %i.ar, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71.preheader, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71.preheader: ; preds = %.lr.ph.split.us70
  %i.as = sext i32 %.030.us to i64
  %i.at = add nsw i64 %i.as, 1
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71.preheader, %.split.us
  %indvars.iv120 = phi i64 [ %i.at, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71.preheader ], [ %indvars.iv.next121, %.split.us ]
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, 1 ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next121
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !80
  %i.ax = icmp ugt i32 %i.aw, 23
  br i1 %i.ax, label %.split.us, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit, !llvm.loop !204

.split.us:                                        ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !90
  %i.ba = fcmp olt float %i.az, %i.ao
  br i1 %i.ba, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit, !llvm.loop !204

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit: ; preds = %.split.us, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us71
  %i.bb = trunc nsw i64 %indvars.iv.next121 to i32
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit, %.lr.ph.split.us70, %.split69.us
  %.lcssa47.us = phi i64 [ %i.aj, %.split69.us ], [ %i.aj, %.lr.ph.split.us70 ], [ %indvars.iv.next121, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit ]
  %.lcssa43.us = phi i32 [ %i.ai, %.split69.us ], [ %i.ai, %.lr.ph.split.us70 ], [ %i.bb, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit ] ; 3 uses
  %.lcssa41.us = phi ptr [ %i.al, %.split69.us ], [ %i.al, %.lr.ph.split.us70 ], [ %i.av, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us.loopexit ]
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us
  %indvars.iv126 = phi i64 [ %.0.us, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.us ], [ %indvars.iv.next127, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge ]
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1 ; 5 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next127
  %i.bc = load ptr, ptr %.in, align 8, !tbaa !59  ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !80
  %.mask.i37.us.us = and i32 %i.bd, -8
  %i.be = icmp eq i32 %.mask.i37.us.us, 16
  br i1 %i.be, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge, label %.split39.us.us

.split39.us.us:                                   ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us
  %i.bf = load float, ptr %i.ad, align 4, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !90
  %i.bi = fcmp olt float %i.bf, %i.bh
  br i1 %i.bi, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us.backedge: ; preds = %.split39.us.us, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.backedge.us.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread.us:  ; preds = %.split39.us.us
  %i.bj = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %.lcssa47.us ; 2 uses
  %i.bk = trunc nsw i64 %indvars.iv.next127 to i32
  %.not.us = icmp slt i32 %.lcssa43.us, %i.bk
  br i1 %.not.us, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread.us
  %.in.le = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next127
  store ptr %i.bc, ptr %i.bj, align 8, !tbaa !59
  store ptr %.lcssa41.us, ptr %.in.le, align 8, !tbaa !59
  br label %.split69.us, !llvm.loop !205

.split69:                                         ; preds = %.split69.preheader, %bb.d
  %indvars.iv117 = phi i64 [ %i.ag, %.split69.preheader ], [ %indvars.iv.next118, %bb.d ]
  %.030 = phi i32 [ -1, %.split69.preheader ], [ %.lcssa43, %bb.d ] ; 3 uses
  %i.bl = add nsw i32 %.030, 1                    ; 3 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !59 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !80
  %i.bq = icmp ugt i32 %i.bp, 23
  br i1 %i.bq, label %.lr.ph, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader

.lr.ph:                                           ; preds = %.split69
  br i1 %i.ah, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader, label %.lr.ph.split

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader: ; preds = %.lr.ph
  %i.br = sext i32 %.030 to i64
  %i.bs = add nsw i64 %i.br, 1
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us:  ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us
  %indvars.iv114 = phi i64 [ %i.bs, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us.preheader ], [ %indvars.iv.next115, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us ]
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 4 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next115
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80
  %i.bw = icmp ugt i32 %i.bv, 23
  br i1 %i.bw, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit, !llvm.loop !204

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bx = load float, ptr %i.ad, align 4, !tbaa !90 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !90
  %i.ca = fcmp olt float %i.bz, %i.bx
  br i1 %i.ca, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader: ; preds = %.lr.ph.split
  %i.cb = sext i32 %.030 to i64
  %i.cc = add nsw i64 %i.cb, 1
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge

.split:                                           ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !90
  %i.cf = fcmp olt float %i.ce, %i.bx
  br i1 %i.cf, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136, !llvm.loop !204

_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge:     ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader, %.split
  %indvars.iv = phi i64 [ %i.cc, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.preheader ], [ %indvars.iv.next, %.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !59 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !80
  %i.cj = icmp ugt i32 %i.ci, 23
  br i1 %i.cj, label %.split, label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136, !llvm.loop !204

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit: ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge.us
  %i.ck = trunc nsw i64 %indvars.iv.next115 to i32
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136: ; preds = %.split, %_ZN11reduceDB_ltclEP6ClauseS1_.exit.backedge
  %i.cl = trunc nsw i64 %indvars.iv.next to i32
  br label %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader

_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader:  ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit, %.lr.ph.split, %.split69
  %.lcssa47 = phi i64 [ %i.bm, %.split69 ], [ %indvars.iv.next115, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit ], [ %i.bm, %.lr.ph.split ], [ %indvars.iv.next, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136 ]
  %.lcssa43 = phi i32 [ %i.bl, %.split69 ], [ %i.ck, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit ], [ %i.bl, %.lr.ph.split ], [ %i.cl, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136 ] ; 3 uses
  %.lcssa41 = phi ptr [ %i.bo, %.split69 ], [ %i.bu, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit ], [ %i.bo, %.lr.ph.split ], [ %i.ch, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader.loopexit136 ]
  %i.cm = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %.lcssa47 ; 2 uses
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, -1 ; 3 uses
  %i.cn = sext i32 %.lcssa43 to i64
  %.not = icmp sgt i64 %indvars.iv.next118, %i.cn
  br i1 %.not, label %bb.d, label %tailrecurse

bb.d:                                             ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader
  %i.co = getelementptr inbounds [8 x i8], ptr %.tr85, i64 %indvars.iv.next118 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !59
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !59
  store ptr %.lcssa41, ptr %i.co, align 8, !tbaa !59
  br label %.split69, !llvm.loop !205

tailrecurse:                                      ; preds = %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread.us
  %.us-phi83 = phi i32 [ %.lcssa43.us, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread.us ], [ %.lcssa43, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader ] ; 2 uses
  %.us-phi84 = phi ptr [ %i.bj, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.thread.us ], [ %i.cm, %_ZN11reduceDB_ltclEP6ClauseS1_.exit38.preheader ] ; 2 uses
  tail call void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(ptr noundef %.tr85, i32 noundef %.us-phi83)
  %i.cq = sub nsw i32 %.tr4086, %.us-phi83        ; 3 uses
  %i.cr = icmp slt i32 %i.cq, 16
  br i1 %i.cr, label %tailrecurse._crit_edge, label %.lr.ph87

_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_.exit: ; preds = %._crit_edge.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { cold }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !60}
!1 = distinct !{!1, !60}
!2 = distinct !{!2, !60}
!3 = distinct !{!3, !60}
!4 = distinct !{!4, !60}
!5 = distinct !{!5, !60}
!6 = distinct !{!6, !60}
!7 = distinct !{!7, !60, !94}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i64 2091501134967935172}
!17 = !{i64 -1242515202961831974}
!18 = !{i64 1481979759658817352}
!19 = !{i64 -7620618659161638927}
!20 = !{i64 -439462511923435206}
!21 = !{i64 7444985255216092107}
!22 = !{!"double", !13, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"any pointer", !13, i64 0}
!25 = !{!"p1 _ZTS5lbool", !24, i64 0}
!26 = !{!"_ZTS3vecI5lboolE", !25, i64 0, !14, i64 8, !14, i64 12}
!27 = !{!"p1 _ZTS3Lit", !24, i64 0}
!28 = !{!"_ZTS3vecI3LitE", !27, i64 0, !14, i64 8, !14, i64 12}
!29 = !{!"bool", !13, i64 0}
!30 = !{!"long", !13, i64 0}
!31 = !{!"any p2 pointer", !24, i64 0}
!32 = !{!"p2 _ZTS6Clause", !31, i64 0}
!33 = !{!"_ZTS3vecIP6ClauseE", !32, i64 0, !14, i64 8, !14, i64 12}
!34 = !{!"p1 double", !24, i64 0}
!35 = !{!"_ZTS3vecIdE", !34, i64 0, !14, i64 8, !14, i64 12}
!36 = !{!"p1 _ZTS3vecIP6ClauseE", !24, i64 0}
!37 = !{!"_ZTS3vecIS_IP6ClauseEE", !36, i64 0, !14, i64 8, !14, i64 12}
!38 = !{!"p1 omnipotent char", !24, i64 0}
!39 = !{!"_ZTS3vecIcE", !38, i64 0, !14, i64 8, !14, i64 12}
!40 = !{!"p1 int", !24, i64 0}
!41 = !{!"_ZTS3vecIiE", !40, i64 0, !14, i64 8, !14, i64 12}
!42 = !{!"p1 _ZTS3vecIdE", !24, i64 0}
!43 = !{!"_ZTSN6Solver10VarOrderLtE", !42, i64 0}
!44 = !{!"_ZTS4HeapIN6Solver10VarOrderLtEE", !43, i64 0, !41, i64 8, !41, i64 24}
!45 = !{!"_ZTS6Solver", !26, i64 0, !28, i64 16, !22, i64 32, !22, i64 40, !22, i64 48, !14, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !29, i64 88, !14, i64 92, !14, i64 96, !30, i64 104, !30, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !30, i64 144, !30, i64 152, !30, i64 160, !30, i64 168, !29, i64 176, !33, i64 184, !33, i64 200, !22, i64 216, !35, i64 224, !22, i64 240, !37, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !28, i64 312, !41, i64 328, !33, i64 344, !41, i64 360, !14, i64 376, !14, i64 380, !30, i64 384, !28, i64 392, !44, i64 408, !22, i64 448, !22, i64 456, !29, i64 464, !39, i64 472, !28, i64 488, !28, i64 504, !28, i64 520}
!46 = !{!45, !22, i64 48}
!47 = !{!45, !14, i64 56}
!48 = !{!45, !22, i64 80}
!49 = !{!45, !29, i64 88}
!50 = !{!45, !14, i64 92}
!51 = !{!45, !29, i64 176}
!52 = !{!45, !22, i64 216}
!53 = !{!45, !22, i64 240}
!54 = !{!45, !14, i64 380}
!55 = !{!45, !29, i64 464}
!56 = !{!33, !14, i64 8}
!57 = !{!33, !32, i64 0}
!58 = !{!"p1 _ZTS6Clause", !24, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!28, !27, i64 0}
!62 = !{!28, !14, i64 8}
!63 = !{!39, !38, i64 0}
!64 = !{!39, !14, i64 8}
!65 = !{!41, !40, i64 0}
!66 = !{!41, !14, i64 8}
!67 = !{!37, !36, i64 0}
!68 = !{!37, !14, i64 8}
!69 = !{!35, !34, i64 0}
!70 = !{!35, !14, i64 8}
!71 = !{!26, !25, i64 0}
!72 = !{!26, !14, i64 8}
!73 = !{!33, !14, i64 12}
!74 = !{!13, !13, i64 0}
!75 = !{!41, !14, i64 12}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!28, !14, i64 12}
!79 = !{!"_ZTS6Clause", !14, i64 0, !13, i64 4, !13, i64 8}
!80 = !{!79, !14, i64 0}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!45, !14, i64 376}
!84 = !{!"_ZTS3Lit", !14, i64 0}
!85 = !{!84, !14, i64 0}
!86 = !{!45, !30, i64 384}
!87 = !{!30, !30, i64 0}
!88 = !{i64 8}
!89 = !{!"float", !13, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!43, !42, i64 0}
!92 = !{!"p1 _ZTS6Solver", !24, i64 0}
!93 = !{!45, !30, i64 144}
!94 = !{!"llvm.loop.peeled.count", i32 1}
!95 = !{!"p1 _ZTS8_IO_FILE", !24, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{i64 1547163405154131392}
!98 = !{!45, !14, i64 96}
!99 = !{!42, !42, i64 0}
!100 = distinct !{!100, !60}
!101 = distinct !{!101, !60}
!102 = distinct !{!102, !60}
!103 = !{i64 7266865896077538013}
!104 = !{i64 6035900447718342246}
!105 = !{!37, !14, i64 12}
!106 = !{!39, !14, i64 12}
!107 = !{!35, !14, i64 12}
!108 = distinct !{!108, !60}
!109 = distinct !{!109, !60, !81, !82}
!110 = distinct !{!110, !60, !82, !81}
!111 = !{i64 6451057281036638474}
!112 = !{i64 2041173817448466712}
!113 = distinct !{!113, !60}
!114 = distinct !{!114, !60, !81, !82}
!115 = distinct !{!115, !60, !81}
!116 = distinct !{!116, !60}
!117 = distinct !{!117, !60}
!118 = !{i64 -877678163703090615}
!119 = !{!45, !30, i64 128}
!120 = !{i64 1694805843800383093}
!121 = distinct !{!121, !60}
!122 = !{i64 -6654974718107029445}
!123 = !{i64 -1435717303837454215}
!124 = !{i64 -1497603837223543986}
!125 = !{i64 -3895686114742012600}
!126 = distinct !{!126, !60}
!127 = !{i64 6398611969961810665}
!128 = !{!45, !30, i64 120}
!129 = distinct !{!129, !60, !81, !82}
!130 = distinct !{!130, !60, !82, !81}
!131 = distinct !{!131, !60}
!132 = distinct !{!132, !60}
!133 = distinct !{!133, !60}
!134 = distinct !{!134, !60}
!135 = distinct !{!135, !60, !81, !82}
!136 = distinct !{!136, !60, !82, !81}
!137 = distinct !{!137, !60}
!138 = distinct !{!138, !60, !81, !82}
!139 = distinct !{!139, !60, !82, !81}
!140 = distinct !{!140, !60}
!141 = distinct !{!141, !60}
!142 = distinct !{!142, !60}
!143 = distinct !{!143, !60}
!144 = !{i64 -7945906927959568832}
!145 = !{!45, !30, i64 160}
!146 = !{!45, !30, i64 168}
!147 = distinct !{!147, !60}
!148 = distinct !{!148, !60}
!149 = distinct !{!149, !60}
!150 = !{i64 -3922754214736987029}
!151 = distinct !{!151, !60}
!152 = distinct !{!152, !60}
!153 = !{i64 1996302394921750041}
!154 = distinct !{!154, !60}
!155 = distinct !{!155, !60}
!156 = !{i64 -919995850827372264}
!157 = !{i64 -2603240141804840747}
!158 = !{i64 1608531842880393882}
!159 = !{!92, !92, i64 0}
!160 = !{!45, !30, i64 152}
!161 = distinct !{!161, !60}
!162 = distinct !{!162, !60}
end_hunk_0
