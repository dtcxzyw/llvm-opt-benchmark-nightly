Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/conflicts?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@conflict_log:bb.a

.preheader.us.i:                                  ; preds = %bb.e, %.preheader.lr.ph.i
  %.01934.us.i = phi ptr [ %spec.select28.us.i, %bb.e ], [ %i.z, %.preheader.lr.ph.i ] ; 3 uses
  %.02033.us.i = phi i32 [ %spec.select27.us.i, %bb.e ], [ 1, %.preheader.lr.ph.i ] ; 6 uses
  %.02532.us.i = phi i32 [ %i.ax, %bb.e ], [ 0, %.preheader.lr.ph.i ]
  %i.ac = phi i32 [ %i.au, %bb.e ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  br i1 %i.ab, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %.031.us.i = phi ptr [ %i.as, %.preheader.us.i.new ], [ %.01934.us.i, %.preheader.us.i ] ; 2 uses
  %.02230.us.i = phi i32 [ %spec.select.us.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %niter = phi i32 [ %niter.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.ad = load i32, ptr %.031.us.i, align 4, !tbaa !10
  %i.ae = and i32 %i.ad, %.02033.us.i
  %.not.us.i = icmp ne i32 %i.ae, 0
  %i.af = zext i1 %.not.us.i to i32
  %spec.select.us.i = add nuw nsw i32 %.02230.us.i, %i.af
  %i.ag = getelementptr inbounds [4 x i8], ptr %.031.us.i, i64 %i.v ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10
  %i.ai = and i32 %i.ah, %.02033.us.i
  %.not.us.i.1 = icmp ne i32 %i.ai, 0
  %i.aj = zext i1 %.not.us.i.1 to i32
  %spec.select.us.i.1 = add nuw nsw i32 %spec.select.us.i, %i.aj
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.v ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = and i32 %i.al, %.02033.us.i
  %.not.us.i.2 = icmp ne i32 %i.am, 0
  %i.an = zext i1 %.not.us.i.2 to i32
  %spec.select.us.i.2 = add nuw nsw i32 %spec.select.us.i.1, %i.an
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.v ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !10
  %i.aq = and i32 %i.ap, %.02033.us.i
  %.not.us.i.3 = icmp ne i32 %i.aq, 0
  %i.ar = zext i1 %.not.us.i.3 to i32
  %spec.select.us.i.3 = add nuw nsw i32 %spec.select.us.i.2, %i.ar ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.v ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !1

bb.d:                                             ; preds = %._crit_edge.us.i
  %i.at = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.at, ptr @rrc_count, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.i, %bb.d
  %i.au = phi i32 [ %i.at, %bb.d ], [ %i.ac, %._crit_edge.us.i ] ; 2 uses
  %i.av = shl i32 %.02033.us.i, 1                 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  %spec.select27.us.i = tail call i32 @llvm.umax.i32(i32 %i.av, i32 1)
  %spec.select28.idx.us.i = select i1 %i.aw, i64 4, i64 0
  %spec.select28.us.i = getelementptr inbounds nuw i8, ptr %.01934.us.i, i64 %spec.select28.idx.us.i
  %i.ax = add nuw nsw i32 %.02532.us.i, 1         ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.ax, %i.s
  br i1 %exitcond36.not.i, label %count_rr_conflicts.exit, label %.preheader.us.i, !llvm.loop !2

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %.031.us.i.epil.init = phi ptr [ %.01934.us.i, %.preheader.us.i ], [ %i.as, %._crit_edge.us.i.unr-lcssa ]
  %.02230.us.i.epil.init = phi i32 [ 0, %.preheader.us.i ], [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.031.us.i.epil = phi ptr [ %.031.us.i.epil.init, %.epil.preheader ], [ %i.bb, %bb.f ] ; 2 uses
  %.02230.us.i.epil = phi i32 [ %.02230.us.i.epil.init, %.epil.preheader ], [ %spec.select.us.i.epil, %bb.f ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ay = load i32, ptr %.031.us.i.epil, align 4, !tbaa !10
  %i.az = and i32 %i.ay, %.02033.us.i
  %.not.us.i.epil = icmp ne i32 %i.az, 0
  %i.ba = zext i1 %.not.us.i.epil to i32
  %spec.select.us.i.epil = add nuw nsw i32 %.02230.us.i.epil, %i.ba ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.031.us.i.epil, i64 %i.v
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.f, !llvm.loop !57

._crit_edge.us.i:                                 ; preds = %bb.f, %._crit_edge.us.i.unr-lcssa
  %spec.select.us.i.lcssa = phi i32 [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ], [ %spec.select.us.i.epil, %bb.f ]
  %i.bc = icmp samesign ugt i32 %spec.select.us.i.lcssa, 1
  br i1 %i.bc, label %bb.d, label %bb.e

count_rr_conflicts.exit:                          ; preds = %bb.e, %bb.b, %bb.c
  %i.bd = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.au, %bb.e ]
  %i.be = load i32, ptr @src_count, align 4, !tbaa !10
  %i.bf = add nsw i32 %i.e, %i.be                 ; 2 uses
  store i32 %i.bf, ptr @src_total, align 4, !tbaa !10
  %i.bg = add nsw i32 %i.f, %i.bd                 ; 2 uses
  store i32 %i.bg, ptr @rrc_total, align 4, !tbaa !10
  %.pre8 = load i32, ptr @nstates, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %count_rr_conflicts.exit
  %i.bh = phi i32 [ %i.c, %.lr.ph ], [ %.pre8, %count_rr_conflicts.exit ] ; 2 uses
  %i.bi = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %count_rr_conflicts.exit ]
  %i.bj = phi i32 [ %i.f, %.lr.ph ], [ %i.bg, %count_rr_conflicts.exit ]
  %i.bk = phi i32 [ %i.e, %.lr.ph ], [ %i.bf, %count_rr_conflicts.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = sext i32 %i.bh to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.g, %bb.a
  tail call void @total_conflicts()
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @count_sr_conflicts(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  store i32 0, ptr @src_count, align 4, !tbaa !10
  %i.a = load ptr, ptr @shift_table, align 8, !tbaa !22
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader53

.preheader53:                                     ; preds = %bb.a
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader53
  %i.g = load ptr, ptr @shiftset, align 8, !tbaa !15
  %i.h = load ptr, ptr @lookaheadset, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.i, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 0, ptr %i.j, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.b, %.preheader53
  %i.n = phi i32 [ %i.e, %.preheader53 ], [ %i.k, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = icmp sgt i16 %i.p, 0
  br i1 %i.q, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %._crit_edge
  %wide.trip.count = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.s = load ptr, ptr @accessing_symbol, align 8
  %i.t = load ptr, ptr @shiftset, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv78 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next79, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv78
  %i.v = load i16, ptr %i.u, align 2, !tbaa !30   ; 2 uses
  %.not49 = icmp eq i16 %i.v, 0
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !30
  %i.z = sext i16 %i.y to i32                     ; 3 uses
  %i.aa = load i32, ptr @ntokens, align 4, !tbaa !10
  %.not50 = icmp sgt i32 %i.aa, %i.z
  br i1 %.not50, label %bb.e, label %._crit_edge58.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %i.z, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.z, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10
  %i.ah = or i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58.loopexit, label %bb.c, !llvm.loop !60

._crit_edge58.loopexit:                           ; preds = %bb.d, %bb.f
  %.pre = load i32, ptr @tokensetsize, align 4, !tbaa !10
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge58.loopexit, %._crit_edge
  %i.ai = phi i32 [ %.pre, %._crit_edge58.loopexit ], [ %i.n, %._crit_edge ] ; 3 uses
  %i.aj = load ptr, ptr @lookaheads, align 8, !tbaa !29
  %i.ak = getelementptr [2 x i8], ptr %i.aj, i64 %i.b ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !30 ; 2 uses
  %i.an = sext i16 %i.am to i32
  %i.ao = load ptr, ptr @lookaheadset, align 8, !tbaa !15 ; 16 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 12 uses
  %i.aq = sext i32 %i.ai to i64
  %.idx = shl nsw i64 %i.aq, 2                    ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %.idx ; 2 uses
  %i.as = load i16, ptr %i.ak, align 2, !tbaa !30 ; 2 uses
  %i.at = icmp slt i16 %i.as, %i.am
  br i1 %i.at, label %.lr.ph67, label %._crit_edge68.split

.lr.ph67:                                         ; preds = %._crit_edge58
  %i.au = load ptr, ptr @LA, align 8, !tbaa !15   ; 2 uses
  %i.av = icmp sgt i32 %i.ai, 0
  br i1 %i.av, label %.lr.ph63.preheader, label %.preheader

.lr.ph63.preheader:                               ; preds = %.lr.ph67
  %i.aw = sext i16 %i.as to i32
  %i.ax = add i64 %.idx, %i.ap
  %i.ay = add i64 %i.ap, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = xor i64 %i.ap, -1
  %i.ba = add i64 %umax, %i.az
  %i.bb = and i64 %i.ba, -4
  %i.bc = add i64 %i.bb, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.bc
  %scevgep90 = getelementptr i8, ptr %i.au, i64 %i.bc
  %i.bd = add i64 %.idx, %i.ap
  %i.be = add i64 %i.ap, 4
  %i.bf = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bg = xor i64 %i.ap, -1
  %i.bh = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 28
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bk = shl i64 %n.vec, 2                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ao, i64 %i.bk
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %._crit_edge64
  %.24365 = phi i32 [ %i.ce, %._crit_edge64 ], [ %i.aw, %.lr.ph63.preheader ] ; 2 uses
  %i.bm = load i32, ptr @tokensetsize, align 4, !tbaa !10
  %i.bn = mul i32 %i.bm, %.24365
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr [4 x i8], ptr %i.au, i64 %i.bo ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph63
  %i.bq = shl nsw i64 %i.bo, 2
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.bq
  %bound0 = icmp ult ptr %i.ao, %scevgep91
  %bound1 = icmp ult ptr %i.bp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = getelementptr i8, ptr %i.bp, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.bs ; 3 uses
  %next.gep92 = getelementptr i8, ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !10, !alias.scope !73
  %wide.load93 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !10, !alias.scope !73
  %i.bu = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load94 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !10, !alias.scope !74, !noalias !73
  %wide.load95 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !10, !alias.scope !74, !noalias !73
  %i.bv = or <4 x i32> %wide.load94, %wide.load
  %i.bw = or <4 x i32> %wide.load95, %wide.load93
  store <4 x i32> %i.bv, ptr %next.gep, align 4, !tbaa !10, !alias.scope !74, !noalias !73
  store <4 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !10, !alias.scope !74, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge64, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph63, %middle.block
  %.061.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph63 ], [ %i.bl, %middle.block ]
  %.03760.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph63 ], [ %i.br, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.061 = phi ptr [ %i.ca, %scalar.ph ], [ %.061.ph, %scalar.ph.preheader ] ; 3 uses
  %.03760 = phi ptr [ %i.by, %scalar.ph ], [ %.03760.ph, %scalar.ph.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.03760, i64 4
  %i.bz = load i32, ptr %.03760, align 4, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.061, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.061, align 4, !tbaa !10
  %i.cc = or i32 %i.cb, %i.bz
  store i32 %i.cc, ptr %.061, align 4, !tbaa !10
  %i.cd = icmp ult ptr %i.ca, %i.ar
  br i1 %i.cd, label %scalar.ph, label %._crit_edge64, !llvm.loop !65

._crit_edge64:                                    ; preds = %scalar.ph, %middle.block
  %i.ce = add nsw i32 %.24365, 1                  ; 2 uses
  %exitcond81.not = icmp eq i32 %i.ce, %i.an
  br i1 %exitcond81.not, label %._crit_edge68.split, label %.lr.ph63, !llvm.loop !66

._crit_edge68.split:                              ; preds = %._crit_edge64, %._crit_edge58
  %i.cf = icmp sgt i32 %i.ai, 0
  br i1 %i.cf, label %.lr.ph72.preheader, label %.preheader

.lr.ph72.preheader:                               ; preds = %._crit_edge68.split
  %i.cg = load ptr, ptr @shiftset, align 8, !tbaa !15 ; 6 uses
  %i.ch = add i64 %.idx, %i.ap
  %i.ci = add i64 %i.ap, 4
  %i.cj = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.ci)
  %i.ck = xor i64 %i.ap, -1
  %i.cl = add i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.cl, 76
  br i1 %min.iters.check105, label %.lr.ph72.preheader121, label %vector.memcheck97

vector.memcheck97:                                ; preds = %.lr.ph72.preheader
  %1 = add i64 %.idx, %i.ap
  %2 = add i64 %i.ap, 4
  %umax98 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  %3 = xor i64 %i.ap, -1
  %4 = add i64 %umax98, %3
  %i.co = and i64 %4, -4
  %i.cp = add i64 %i.co, 4                        ; 2 uses
  %scevgep99 = getelementptr i8, ptr %i.ao, i64 %i.cp
  %scevgep100 = getelementptr i8, ptr %i.cg, i64 %i.cp
  %bound0101 = icmp ult ptr %i.ao, %scevgep100
  %bound1102 = icmp ult ptr %i.cg, %scevgep99
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph72.preheader121, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck97
  %n.vec107 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.cq = shl i64 %n.vec107, 2                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ao, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cq
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next116, %vector.body108 ] ; 2 uses
  %i.ct = shl i64 %index109, 2                    ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.ao, i64 %i.ct ; 3 uses
  %next.gep111 = getelementptr i8, ptr %i.cg, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load112 = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !10, !alias.scope !75
  %wide.load113 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !10, !alias.scope !75
  %i.cv = getelementptr i8, ptr %next.gep110, i64 16 ; 2 uses
  %wide.load114 = load <4 x i32>, ptr %next.gep110, align 4, !tbaa !10, !alias.scope !76, !noalias !75
  %wide.load115 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !10, !alias.scope !76, !noalias !75
  %i.cw = and <4 x i32> %wide.load114, %wide.load112
  %i.cx = and <4 x i32> %wide.load115, %wide.load113
  store <4 x i32> %i.cw, ptr %next.gep110, align 4, !tbaa !10, !alias.scope !76, !noalias !75
  store <4 x i32> %i.cx, ptr %i.cv, align 4, !tbaa !10, !alias.scope !76, !noalias !75
  %index.next116 = add nuw i64 %index109, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next116, %n.vec107
  br i1 %i.cy, label %middle.block117, label %vector.body108, !llvm.loop !70

middle.block117:                                  ; preds = %vector.body108
  %cmp.n118 = icmp eq i64 %i.cn, %n.vec107
  br i1 %cmp.n118, label %.preheader, label %.lr.ph72.preheader121

.lr.ph72.preheader121:                            ; preds = %vector.memcheck97, %.lr.ph72.preheader, %middle.block117
  %.170.ph = phi ptr [ %i.ao, %vector.memcheck97 ], [ %i.ao, %.lr.ph72.preheader ], [ %i.cr, %middle.block117 ]
  %.13869.ph = phi ptr [ %i.cg, %vector.memcheck97 ], [ %i.cg, %.lr.ph72.preheader ], [ %i.cs, %middle.block117 ]
  br label %.lr.ph72

.preheader:                                       ; preds = %.lr.ph72, %middle.block117, %.lr.ph67, %._crit_edge68.split
  %i.cz = load i32, ptr @ntokens, align 4, !tbaa !10 ; 5 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.cz, 1
  %i.db = icmp eq i32 %i.cz, 1
  br i1 %i.db, label %.lr.ph76.epil.preheader, label %.lr.ph76.preheader.new

.lr.ph76.preheader.new:                           ; preds = %.lr.ph76.preheader
  %unroll_iter = and i32 %i.cz, 2147483646
  br label %.lr.ph76

.lr.ph72:                                         ; preds = %.lr.ph72.preheader121, %.lr.ph72
  %.170 = phi ptr [ %i.de, %.lr.ph72 ], [ %.170.ph, %.lr.ph72.preheader121 ] ; 3 uses
  %.13869 = phi ptr [ %i.dc, %.lr.ph72 ], [ %.13869.ph, %.lr.ph72.preheader121 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.13869, i64 4
  %i.dd = load i32, ptr %.13869, align 4, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %.170, i64 4 ; 2 uses
  %i.df = load i32, ptr %.170, align 4, !tbaa !10
  %i.dg = and i32 %i.df, %i.dd
  store i32 %i.dg, ptr %.170, align 4, !tbaa !10
  %i.dh = icmp ult ptr %i.de, %i.ar
  br i1 %i.dh, label %.lr.ph72, label %.preheader, !llvm.loop !71

.lr.ph76:                                         ; preds = %bb.i, %.lr.ph76.preheader.new
  %.275 = phi ptr [ %i.ao, %.lr.ph76.preheader.new ], [ %spec.select52.1, %bb.i ] ; 2 uses
  %.03974 = phi i32 [ 1, %.lr.ph76.preheader.new ], [ %spec.select.1, %bb.i ] ; 2 uses
  %i.di = phi i32 [ 0, %.lr.ph76.preheader.new ], [ %i.ds, %bb.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph76.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.dj = load i32, ptr %.275, align 4, !tbaa !10
  %i.dk = and i32 %i.dj, %.03974
  %.not51 = icmp eq i32 %i.dk, 0
  br i1 %.not51, label %.lr.ph76.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph76
  %i.dl = add nsw i32 %i.di, 1                    ; 2 uses
  store i32 %i.dl, ptr @src_count, align 4, !tbaa !10
  br label %.lr.ph76.1

.lr.ph76.1:                                       ; preds = %bb.g, %.lr.ph76
  %i.dm = phi i32 [ %i.dl, %bb.g ], [ %i.di, %.lr.ph76 ] ; 2 uses
  %i.dn = shl i32 %.03974, 1                      ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.dn, i32 1) ; 2 uses
  %spec.select52.idx = select i1 %i.do, i64 4, i64 0
  %spec.select52 = getelementptr inbounds nuw i8, ptr %.275, i64 %spec.select52.idx ; 2 uses
  %i.dp = load i32, ptr %spec.select52, align 4, !tbaa !10
  %i.dq = and i32 %i.dp, %spec.select
  %.not51.1 = icmp eq i32 %i.dq, 0
  br i1 %.not51.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph76.1
  %i.dr = add nsw i32 %i.dm, 1                    ; 2 uses
  store i32 %i.dr, ptr @src_count, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph76.1
  %i.ds = phi i32 [ %i.dr, %bb.h ], [ %i.dm, %.lr.ph76.1 ] ; 2 uses
  %i.dt = shl i32 %spec.select, 1                 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  %spec.select.1 = tail call i32 @llvm.umax.i32(i32 %i.dt, i32 1) ; 2 uses
  %spec.select52.idx.1 = select i1 %i.du, i64 4, i64 0
  %spec.select52.1 = getelementptr inbounds nuw i8, ptr %spec.select52, i64 %spec.select52.idx.1 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76, !llvm.loop !72

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph76.epil.preheader

.lr.ph76.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.preheader
  %.275.epil.init = phi ptr [ %i.ao, %.lr.ph76.preheader ], [ %spec.select52.1, %.loopexit.loopexit.unr-lcssa ]
  %.03974.epil.init = phi i32 [ 1, %.lr.ph76.preheader ], [ %spec.select.1, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph76.preheader ], [ %i.ds, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod122 = trunc i32 %i.cz to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.dv = load i32, ptr %.275.epil.init, align 4, !tbaa !10
  %i.dw = and i32 %i.dv, %.03974.epil.init
  %.not51.epil = icmp eq i32 %i.dw, 0
  br i1 %.not51.epil, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph76.epil.preheader
  %i.dx = add nsw i32 %.epil.init, 1
  store i32 %i.dx, ptr @src_count, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph76.epil.preheader, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @count_rr_conflicts(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  store i32 0, ptr @rrc_count, align 4, !tbaa !10
  %i.a = load ptr, ptr @lookaheads, align 8, !tbaa !29
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !30   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !30   ; 2 uses
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = sub nsw i32 %i.h, %i.e                   ; 3 uses
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr @ntokens, align 4, !tbaa !10 ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = load i32, ptr @tokensetsize, align 4, !tbaa !10 ; 2 uses
  %i.n = icmp slt i16 %i.d, %i.g
  %i.o = sext i32 %i.m to i64                     ; 5 uses
  br i1 %i.n, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.p = load ptr, ptr @LA, align 8, !tbaa !15
  %i.q = mul nsw i32 %i.m, %i.e
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.r
  %xtraiter = and i32 %i.i, 3                     ; 3 uses
  %i.t = sub nsw i32 %i.e, %i.h
  %i.u = icmp ugt i32 %i.t, -4
  %unroll_iter = and i32 %i.i, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.d
  %.01934.us = phi ptr [ %spec.select28.us, %bb.d ], [ %i.s, %.preheader.us.preheader ] ; 3 uses
  %.02033.us = phi i32 [ %spec.select27.us, %bb.d ], [ 1, %.preheader.us.preheader ] ; 6 uses
  %.02532.us = phi i32 [ %i.aq, %bb.d ], [ 0, %.preheader.us.preheader ]
  %i.v = phi i32 [ %i.an, %bb.d ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br i1 %i.u, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.031.us = phi ptr [ %i.al, %.preheader.us.new ], [ %.01934.us, %.preheader.us ] ; 2 uses
  %.02230.us = phi i32 [ %spec.select.us.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %niter = phi i32 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.w = load i32, ptr %.031.us, align 4, !tbaa !10
  %i.x = and i32 %i.w, %.02033.us
  %.not.us = icmp ne i32 %i.x, 0
  %i.y = zext i1 %.not.us to i32
  %spec.select.us = add nuw nsw i32 %.02230.us, %i.y
  %i.z = getelementptr inbounds [4 x i8], ptr %.031.us, i64 %i.o ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = and i32 %i.aa, %.02033.us
  %.not.us.1 = icmp ne i32 %i.ab, 0
  %i.ac = zext i1 %.not.us.1 to i32
  %spec.select.us.1 = add nuw nsw i32 %spec.select.us, %i.ac
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.o ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
end_hunk_0
