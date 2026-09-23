Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraClaus?download=true
inline.NumInlined: 241
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Fra_ClausProcessClausesCut:bb.a
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, 32
  br i1 %exitcond78.not, label %bb.o, label %bb.n, !llvm.loop !122

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.preheader.loopexit, label %.lr.ph59, !llvm.loop !123
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @Fra_ClausProcessClausesCut2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = lshr i32 %i.g, 29                        ; 7 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = sext i32 %i.d to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !48
  %i.m = mul nsw i32 %i.l, %i.b
  %i.n = sext i32 %i.m to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.n ; 7 uses
  %exitcond.not = icmp eq i32 %i.h, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !48
  %i.q = mul nsw i32 %i.p, %i.b
  %i.r = sext i32 %i.q to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.r ; 6 uses
  %exitcond.not.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !48
  %i.u = mul nsw i32 %i.t, %i.b
  %i.v = sext i32 %i.u to i64
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.v ; 5 uses
  %exitcond.not.2 = icmp eq i32 %i.h, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !48
  %i.y = mul nsw i32 %i.x, %i.b
  %i.z = sext i32 %i.y to i64
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.z ; 4 uses
  %exitcond.not.3 = icmp eq i32 %i.h, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !48
  %i.ac = mul nsw i32 %i.ab, %i.b
  %i.ad = sext i32 %i.ac to i64
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ad ; 3 uses
  %exitcond.not.4 = icmp eq i32 %i.h, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = mul nsw i32 %i.af, %i.b
  %i.ah = sext i32 %i.ag to i64
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah ; 2 uses
  %exitcond.not.5 = icmp eq i32 %i.h, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !48
  %i.ak = mul nsw i32 %i.aj, %i.b
  %i.al = sext i32 %i.ak to i64
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.al
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a
  %.sroa.14.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ %gep.6, %bb.g ]
  %.sroa.12.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ %gep.5, %bb.f ], [ %gep.5, %bb.g ]
  %.sroa.10.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %gep.4, %bb.e ], [ %gep.4, %bb.f ], [ %gep.4, %bb.g ]
  %.sroa.8.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ undef, %bb.c ], [ %gep.3, %bb.d ], [ %gep.3, %bb.e ], [ %gep.3, %bb.f ], [ %gep.3, %bb.g ]
  %.sroa.6.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ %gep.2, %bb.c ], [ %gep.2, %bb.d ], [ %gep.2, %bb.e ], [ %gep.2, %bb.f ], [ %gep.2, %bb.g ]
  %.sroa.4.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ %gep.1, %bb.b ], [ %gep.1, %bb.c ], [ %gep.1, %bb.d ], [ %gep.1, %bb.e ], [ %gep.1, %bb.f ], [ %gep.1, %bb.g ]
  %.sroa.0.0 = phi ptr [ undef, %bb.a ], [ %gep, %bb.g ], [ %gep, %bb.f ], [ %gep, %bb.e ], [ %gep, %bb.d ], [ %gep, %bb.c ], [ %gep, %bb.b ], [ %gep, %.lr.ph ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.am = icmp sgt i32 %i.e, 0
  br i1 %i.am, label %.preheader40.preheader, label %.preheader

.preheader40.preheader:                           ; preds = %._crit_edge
  %wide.trip.count62 = zext nneg i32 %i.e to i64
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.preheader, %bb.n
  %indvars.iv59 = phi i64 [ 0, %.preheader40.preheader ], [ %indvars.iv.next60, %bb.n ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv59
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0, i64 %indvars.iv59
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %indvars.iv59
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %indvars.iv59
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0, i64 %indvars.iv59
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.0, i64 %indvars.iv59
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.0, i64 %indvars.iv59
  br label %.preheader39

.preheader.loopexit:                              ; preds = %bb.n
  %i.au = load <16 x i32>, ptr %3, align 4, !tbaa !48
  %i.av = icmp ne <16 x i32> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %.137.15 = phi i32 [ %i.ax, %.preheader.loopexit ], [ 0, %._crit_edge ]
  ret i32 %.137.15

.preheader39:                                     ; preds = %.preheader40, %._crit_edge45
  %.03246 = phi i32 [ 0, %.preheader40 ], [ %i.bz, %._crit_edge45 ] ; 3 uses
  %i.ay = load i32, ptr %i.f, align 4
  %i.az = lshr i32 %i.ay, 29                      ; 7 uses
  %.not51 = icmp eq i32 %i.az, 0
  br i1 %.not51, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader39
  %i.ba = shl nuw i32 1, %.03246                  ; 6 uses
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !48
  %i.bc = lshr i32 %i.bb, %.03246
  %i.bd = and i32 %i.bc, 1                        ; 2 uses
  %exitcond57.not = icmp eq i32 %i.az, 1
  br i1 %exitcond57.not, label %._crit_edge45.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph44
  %i.be = load i32, ptr %i.ao, align 4, !tbaa !48
  %i.bf = and i32 %i.be, %i.ba
  %.not38.1 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not38.1, i32 0, i32 2
  %.135.1 = or disjoint i32 %i.bg, %i.bd          ; 2 uses
  %exitcond57.not.1 = icmp eq i32 %i.az, 2
  br i1 %exitcond57.not.1, label %._crit_edge45.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.ap, align 4, !tbaa !48
  %i.bi = and i32 %i.bh, %i.ba
  %.not38.2 = icmp eq i32 %i.bi, 0
  %i.bj = select i1 %.not38.2, i32 0, i32 4
  %.135.2 = or disjoint i32 %i.bj, %.135.1        ; 2 uses
  %exitcond57.not.2 = icmp eq i32 %i.az, 3
  br i1 %exitcond57.not.2, label %._crit_edge45.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %i.aq, align 4, !tbaa !48
  %i.bl = and i32 %i.bk, %i.ba
  %.not38.3 = icmp eq i32 %i.bl, 0
  %i.bm = select i1 %.not38.3, i32 0, i32 8
  %.135.3 = or disjoint i32 %i.bm, %.135.2        ; 2 uses
  %exitcond57.not.3 = icmp eq i32 %i.az, 4
  br i1 %exitcond57.not.3, label %._crit_edge45.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load i32, ptr %i.ar, align 4, !tbaa !48
  %i.bo = and i32 %i.bn, %i.ba
  %.not38.4 = icmp eq i32 %i.bo, 0
  %i.bp = select i1 %.not38.4, i32 0, i32 16
  %.135.4 = or disjoint i32 %i.bp, %.135.3        ; 2 uses
  %exitcond57.not.4 = icmp eq i32 %i.az, 5
  br i1 %exitcond57.not.4, label %._crit_edge45.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.as, align 4, !tbaa !48
  %i.br = and i32 %i.bq, %i.ba
  %.not38.5 = icmp eq i32 %i.br, 0
  %i.bs = select i1 %.not38.5, i32 0, i32 32
  %.135.5 = or disjoint i32 %i.bs, %.135.4        ; 2 uses
  %exitcond57.not.5 = icmp eq i32 %i.az, 6
  br i1 %exitcond57.not.5, label %._crit_edge45.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = load i32, ptr %i.at, align 4, !tbaa !48
  %i.bu = and i32 %i.bt, %i.ba
  %.not38.6 = icmp eq i32 %i.bu, 0
  %i.bv = select i1 %.not38.6, i32 0, i32 64
  %.135.6 = or i32 %i.bv, %.135.5
  br label %._crit_edge45.loopexit

._crit_edge45.loopexit:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.lr.ph44
  %.135.lcssa = phi i32 [ %i.bd, %.lr.ph44 ], [ %.135.1, %bb.h ], [ %.135.2, %bb.i ], [ %.135.3, %bb.j ], [ %.135.4, %bb.k ], [ %.135.5, %bb.l ], [ %.135.6, %bb.m ]
  %4 = sext i32 %.135.lcssa to i64
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %._crit_edge45.loopexit, %.preheader39
  %.034.lcssa = phi i64 [ 0, %.preheader39 ], [ %4, %._crit_edge45.loopexit ]
  %i.bw = getelementptr inbounds [4 x i8], ptr %3, i64 %.034.lcssa ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !48
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !48
  %i.bz = add nuw nsw i32 %.03246, 1              ; 2 uses
  %exitcond58.not = icmp eq i32 %i.bz, 32
  br i1 %exitcond58.not, label %bb.n, label %.preheader39, !llvm.loop !124

bb.n:                                             ; preds = %._crit_edge45
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.preheader.loopexit, label %.preheader40, !llvm.loop !125
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Fra_ClausProcessClausesCut3(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 48 uses
  %i.b = alloca [16 x ptr], align 16              ; 50 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 3 uses
  %i.g = sub i32 %i.d, %i.f                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 23 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !62    ; 3 uses
  %i.j = sext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp sgt i8 %i.i, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = sext i32 %i.f to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.n ; 5 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.o = icmp ult i8 %i.i, 4
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 124
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48
  %i.r = mul nsw i32 %i.q, %i.d
  %i.s = sext i32 %i.r to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.s
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %gep, ptr %i.t, align 16, !tbaa !57
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48
  %i.w = mul nsw i32 %i.v, %i.d
  %i.x = sext i32 %i.w to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.x
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %gep.1, ptr %i.y, align 8, !tbaa !57
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !48
  %i.ab = mul nsw i32 %i.aa, %i.d
  %i.ac = sext i32 %i.ab to i64
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ac
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.1
  store ptr %gep.2, ptr %i.ad, align 16, !tbaa !57
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = mul nsw i32 %i.af, %i.d
  %i.ah = sext i32 %i.ag to i64
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.2
  store ptr %gep.3, ptr %i.ai, align 8, !tbaa !57
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !126

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.epil
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !48
  %i.al = mul nsw i32 %i.ak, %i.d
  %i.am = sext i32 %i.al to i64
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.am
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil
  store ptr %gep.epil, ptr %i.an, align 8, !tbaa !57
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !127

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ao = shl nuw i32 1, %i.j
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 0, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !142
  %i.at = icmp eq i8 %i.as, 4
  br i1 %i.at, label %bb.d, label %.preheader63

.preheader63:                                     ; preds = %._crit_edge
  %i.au = icmp sgt i32 %i.g, 0
  br i1 %i.au, label %.preheader62.lr.ph, label %.loopexit

.preheader62.lr.ph:                               ; preds = %.preheader63
  %i.av = load i8, ptr %i.h, align 1, !tbaa !62   ; 5 uses
  %i.aw = icmp sgt i8 %i.av, 0
  br i1 %i.aw, label %.preheader62.us.preheader, label %.preheader62.lr.ph.split

.preheader62.us.preheader:                        ; preds = %.preheader62.lr.ph
  %wide.trip.count101 = zext nneg i32 %i.g to i64
  %i.ax = icmp eq i8 %i.av, 1
  %i.ay = and i8 %i.av, 126
  %unroll_iter143 = zext nneg i8 %i.ay to i64
  %i.az = and i8 %i.av, 1
  %lcmp.mod140.not = icmp eq i8 %i.az, 0
  %lcmp.mod142 = trunc i8 %i.av to i1
  br label %.preheader62.us

.preheader62.us:                                  ; preds = %.preheader62.us.preheader, %.split.us.us
  %indvars.iv98 = phi i64 [ 0, %.preheader62.us.preheader ], [ %indvars.iv.next99, %.split.us.us ] ; 4 uses
  br label %.preheader61.us.us

.preheader61.us.us:                               ; preds = %._crit_edge70.us.us, %.preheader62.us
  %.272.us.us = phi i32 [ 0, %.preheader62.us ], [ %i.cd, %._crit_edge70.us.us ] ; 2 uses
  %i.ba = shl nuw i32 1, %.272.us.us              ; 3 uses
  br i1 %i.ax, label %.epil.preheader137, label %.preheader61.us.us.new

.preheader61.us.us.new:                           ; preds = %.preheader61.us.us, %.preheader61.us.us.new
  %indvars.iv92 = phi i64 [ %indvars.iv.next93.1, %.preheader61.us.us.new ], [ 0, %.preheader61.us.us ] ; 4 uses
  %.05667.us.us = phi i32 [ %.157.us.us.1, %.preheader61.us.us.new ], [ 0, %.preheader61.us.us ]
  %niter144 = phi i64 [ %niter144.next.1, %.preheader61.us.us.new ], [ 0, %.preheader61.us.us ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv92
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !57
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv98
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !48
  %i.bf = and i32 %i.be, %i.ba
  %.not.us.us = icmp eq i32 %i.bf, 0
  %i.bg = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = select i1 %.not.us.us, i32 0, i32 %i.bh
  %.157.us.us = or i32 %i.bi, %.05667.us.us
  %indvars.iv.next93 = or disjoint i64 %indvars.iv92, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next93
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv98
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !48
  %i.bn = and i32 %i.bm, %i.ba
  %.not.us.us.1 = icmp eq i32 %i.bn, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv.next93 to i32
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = select i1 %.not.us.us.1, i32 0, i32 %i.bp
  %.157.us.us.1 = or i32 %i.bq, %.157.us.us       ; 3 uses
  %indvars.iv.next93.1 = add nuw nsw i64 %indvars.iv92, 2 ; 2 uses
  %niter144.next.1 = add i64 %niter144, 2         ; 2 uses
  %niter144.ncmp.1 = icmp eq i64 %niter144.next.1, %unroll_iter143
  br i1 %niter144.ncmp.1, label %._crit_edge70.us.us.unr-lcssa, label %.preheader61.us.us.new, !llvm.loop !128

._crit_edge70.us.us.unr-lcssa:                    ; preds = %.preheader61.us.us.new
  br i1 %lcmp.mod140.not, label %._crit_edge70.us.us, label %.epil.preheader137

.epil.preheader137:                               ; preds = %._crit_edge70.us.us.unr-lcssa, %.preheader61.us.us
  %indvars.iv92.epil.init = phi i64 [ 0, %.preheader61.us.us ], [ %indvars.iv.next93.1, %._crit_edge70.us.us.unr-lcssa ] ; 2 uses
  %.05667.us.us.epil.init = phi i32 [ 0, %.preheader61.us.us ], [ %.157.us.us.1, %._crit_edge70.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv92.epil.init
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv98
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !48
  %i.bv = and i32 %i.bu, %i.ba
  %.not.us.us.epil = icmp eq i32 %i.bv, 0
  %i.bw = trunc nuw nsw i64 %indvars.iv92.epil.init to i32
  %i.bx = shl nuw i32 1, %i.bw
  %i.by = select i1 %.not.us.us.epil, i32 0, i32 %i.bx
  %.157.us.us.epil = or i32 %i.by, %.05667.us.us.epil.init
  br label %._crit_edge70.us.us

._crit_edge70.us.us:                              ; preds = %._crit_edge70.us.us.unr-lcssa, %.epil.preheader137
  %.157.us.us.lcssa = phi i32 [ %.157.us.us.1, %._crit_edge70.us.us.unr-lcssa ], [ %.157.us.us.epil, %.epil.preheader137 ]
  %i.bz = sext i32 %.157.us.us.lcssa to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bz ; 2 uses
end_hunk_0
