Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@DwaCompressor_setupChannelData:.preheader61
  %.not = icmp eq ptr %i.ah, null
  %i.am = icmp sgt i8 %i.z, 1                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %bb.a
  br i1 %i.am, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader59
  %wide.trip.count = zext nneg i8 %i.z to i64
  %i.an = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.an, 3                    ; 3 uses
  %i.ao = add nsw i8 %i.z, -2
  %i.ap = icmp ult i8 %i.ao, 3
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.an, -4
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.am, label %.lr.ph65.preheader, label %.loopexit

.lr.ph65.preheader:                               ; preds = %.preheader
  %narrow = add nsw i8 %i.z, -1
  %i.aq = zext nneg i8 %narrow to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.ar, i1 false), !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep71, i8 0, i64 %i.ar, i1 false), !tbaa !65
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.as = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.x ; 2 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.x ; 2 uses
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.next.1 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.x ; 2 uses
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.next.2 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.x ; 2 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !65
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bm = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.epil ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.x ; 2 uses
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !65
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.epil
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !218

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.lr.ph65.preheader, %.preheader59, %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 26
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !44
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 552 ; 2 uses
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !72
  %i.bv = icmp eq i32 %i.ae, 1
  br i1 %i.bv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  store i32 2, ptr %i.bu, align 8, !tbaa !72
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  store ptr %i.bw, ptr %i.ag, align 8, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond77.not = icmp eq i64 %indvar.next, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge, label %bb.a, !llvm.loop !1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DctCoderChannelData_push_row(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 408 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 2 uses
  %i.d = load i64, ptr %i.c, align 16, !tbaa !76
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 392
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  %i.g = mul i64 %i.b, 3
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.f, i64 16, i64 %i.h         ; 2 uses
  %i.j = shl i64 %i.i, 3
  %i.k = tail call ptr %0(i64 noundef %i.j) #21   ; 4 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 392 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %.not26 = icmp eq ptr %i.m, null
  br i1 %.not26, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !75
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.m, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !77
  tail call void %1(ptr noundef %i.p) #21
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  store ptr %i.k, ptr %i.l, align 8, !tbaa !77
  store i64 %i.i, ptr %i.c, align 16, !tbaa !76
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread
  %i.q = phi i64 [ %i.b, %._crit_edge ], [ %.pre27, %.thread ] ; 2 uses
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.k, %.thread ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  store ptr %3, ptr %i.s, align 8, !tbaa !65
  %i.t = add i64 %i.q, 1
  store i64 %i.t, ptr %i.a, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ 0, %bb.e ], [ 1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LossyDctEncoder_execute(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((8, 24)) %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 16 uses
  %i.b = alloca [64 x i16], align 16              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !106  ; 2 uses
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul nnan float %i.g, 1.250000e-01
  %i.i = tail call float @llvm.ceil.f32(float %i.h)
  %i.j = fptosi float %i.i to i32                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %i.m = sitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, 1.250000e-01
  %i.o = tail call float @llvm.ceil.f32(float %i.n)
  %i.p = fptosi float %i.o to i32                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp sgt i32 %i.d, 0                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br i1 %i.u, label %.lr.ph, label %._crit_edge196.thread

._crit_edge196.thread:                            ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !109
  %i.x = load ptr, ptr %i.a, align 16, !tbaa !82  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  store ptr %i.w, ptr %i.y, align 32, !tbaa !246
  br label %.preheader163

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.aa = sext i32 %i.f to i64
  %i.ab = sext i32 %i.l to i64
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 5 uses
  %i.ad = zext nneg i32 %i.d to i64               ; 4 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.z, i64 %i.ae, i1 false), !tbaa !82
  %i.af = add nsw i64 %i.ad, -1                   ; 2 uses
  %xtraiter = and i64 %i.ad, 3                    ; 3 uses
  %i.ag = icmp ult i32 %i.d, 4
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ad, 2147483644
  br label %bb.c

._crit_edge.unr-lcssa:                            ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0133181.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1134.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod405 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod405)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.0133181.epil = phi i64 [ %.0133181.epil.init, %.epil.preheader ], [ %.1134.epil, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 416
  %i.ak = load i32, ptr %i.aj, align 32, !tbaa !45
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = select i1 %i.al, i64 %i.ac, i64 0
  %.1134.epil = add i64 %i.am, %.0133181.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %.1134.lcssa = phi i64 [ %.1134.3, %._crit_edge.unr-lcssa ], [ %.1134.epil, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.1134.lcssa, 0
  br i1 %.not, label %.lr.ph195.preheader, label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.0133181 = phi i64 [ 0, %.lr.ph.new ], [ %.1134.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 416
  %i.aq = load i32, ptr %i.ap, align 32, !tbaa !45
  %i.ar = icmp eq i32 %i.aq, 2
  %i.as = select i1 %i.ar, i64 %i.ac, i64 0
  %.1134 = add i64 %i.as, %.0133181
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 416
  %i.ax = load i32, ptr %i.aw, align 32, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 2
  %i.az = select i1 %i.ay, i64 %i.ac, i64 0
  %.1134.1 = add i64 %i.az, %.1134
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.be = load i32, ptr %i.bd, align 32, !tbaa !45
  %i.bf = icmp eq i32 %i.be, 2
  %i.bg = select i1 %i.bf, i64 %i.ac, i64 0
  %.1134.2 = add i64 %i.bg, %.1134.1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !82
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 416
  %i.bl = load i32, ptr %i.bk, align 32, !tbaa !45
  %i.bm = icmp eq i32 %i.bl, 2
  %i.bn = select i1 %i.bm, i64 %i.ac, i64 0
  %.1134.3 = add i64 %i.bn, %.1134.2              ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !220

bb.d:                                             ; preds = %._crit_edge
  %i.bo = shl i64 %.1134.lcssa, 1
  %i.bp = tail call ptr %0(i64 noundef %i.bo) #21 ; 2 uses
  %.not146 = icmp eq ptr %i.bp, null
  br i1 %.not146, label %bb.fg, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %bb.d, %._crit_edge
  %.0130.ph = phi ptr [ %i.bp, %bb.d ], [ null, %._crit_edge ] ; 4 uses
  %wide.trip.count260 = zext nneg i32 %i.d to i64
  br label %.lr.ph195

._crit_edge196:                                   ; preds = %.loopexit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = load ptr, ptr %i.a, align 16, !tbaa !82 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 384
  store ptr %i.br, ptr %i.bt, align 32, !tbaa !246
  %.not385 = icmp eq i32 %i.d, 1
  br i1 %.not385, label %.preheader163, label %.lr.ph199

.lr.ph199:                                        ; preds = %._crit_edge196
  %i.bu = mul nsw i32 %i.p, %i.j
  %i.bv = sext i32 %i.bu to i64                   ; 5 uses
  %xtraiter414 = and i64 %i.af, 3                 ; 3 uses
  %i.bw = add nsw i32 %i.d, -2
  %i.bx = icmp ult i32 %i.bw, 3
  br i1 %i.bx, label %.epil.preheader413, label %.lr.ph199.new

.lr.ph199.new:                                    ; preds = %.lr.ph199
  %unroll_iter418 = and i64 %i.af, -4
  br label %bb.q

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %.loopexit
  %indvars.iv257 = phi i64 [ 0, %.lr.ph195.preheader ], [ %indvars.iv.next258, %.loopexit ] ; 2 uses
  %.1131192 = phi ptr [ %.0130.ph, %.lr.ph195.preheader ], [ %.3, %.loopexit ] ; 5 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv257
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !82 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 416
  %i.cb = load i32, ptr %i.ca, align 32, !tbaa !45
  %.not152 = icmp eq i32 %i.cb, 2
  br i1 %.not152, label %.preheader164, label %.loopexit

.preheader164:                                    ; preds = %.lr.ph195
  %i.cc = load i32, ptr %i.k, align 8, !tbaa !107 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph190, label %.loopexit

.lr.ph190:                                        ; preds = %.preheader164
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 392
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !77 ; 10 uses
  %i.cg = load i32, ptr %i.e, align 4, !tbaa !106 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  %i.ci = sext i32 %i.cg to i64                   ; 10 uses
  %wide.trip.count255 = zext nneg i32 %i.cc to i64 ; 3 uses
  br i1 %i.ch, label %.lr.ph185.us.preheader, label %.lr.ph190.split.preheader

.lr.ph190.split.preheader:                        ; preds = %.lr.ph190
  %xtraiter406 = and i64 %wide.trip.count255, 7   ; 3 uses
  %i.cj = icmp ult i32 %i.cc, 8
  br i1 %i.cj, label %.lr.ph190.split.epil.preheader, label %.lr.ph190.split.preheader.new

.lr.ph190.split.preheader.new:                    ; preds = %.lr.ph190.split.preheader
  %unroll_iter411 = and i64 %wide.trip.count255, 2147483640
  br label %.lr.ph190.split

.lr.ph185.us.preheader:                           ; preds = %.lr.ph190
  %wide.trip.count250 = zext nneg i32 %i.cg to i64
  br label %.lr.ph185.us

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge186.us
  %indvars.iv252 = phi i64 [ 0, %.lr.ph185.us.preheader ], [ %indvars.iv.next253, %._crit_edge186.us ] ; 2 uses
  %.2188.us = phi ptr [ %.1131192, %.lr.ph185.us.preheader ], [ %i.eh, %._crit_edge186.us ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv252 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph185.us, %float_to_half.exit.us
  %indvars.iv247 = phi i64 [ 0, %.lr.ph185.us ], [ %indvars.iv.next248, %float_to_half.exit.us ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv247
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !103 ; 3 uses
  %i.co = fcmp ogt float %i.cn, 6.550400e+04
  %i.cp = fcmp olt float %i.cn, -6.550400e+04
  %spec.store.select.us = select i1 %i.cp, float -6.550400e+04, float %i.cn
  %.0125.us = select i1 %i.co, float 6.550400e+04, float %spec.store.select.us ; 2 uses
  %i.cq = bitcast float %.0125.us to i32
  %i.cr = tail call float @llvm.fabs.f32(float %.0125.us)
  %i.cs = bitcast float %i.cr to i32              ; 10 uses
  %i.ct = lshr i32 %i.cq, 16                      ; 3 uses
  %i.cu = trunc nuw i32 %i.ct to i16
  %i.cv = and i16 %i.cu, -32768                   ; 3 uses
  %i.cw = icmp samesign ugt i32 %i.cs, 947912703
  br i1 %i.cw, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cx = icmp samesign ult i32 %i.cs, 855638017
  br i1 %i.cx, label %float_to_half.exit.us, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@LossyDctEncoder_execute:bb.a
  %i.ua = and i32 %.signext.i.i.4, -2147483648    ; 3 uses
  %i.ub = icmp samesign ugt i32 %i.tz, 8388607
  br i1 %i.ub, label %bb.cb, label %bb.bz, !prof !105

bb.bz:                                            ; preds = %half_to_float.exit.3
  %.not.i.i153.4 = icmp eq i32 %i.tz, 0
  br i1 %.not.i.i153.4, label %half_to_float.exit.4, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.uc = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.tz, i1 true)
  %i.ud = add nsw i32 %i.uc, -8                   ; 2 uses
  %i.ue = shl i32 %i.tz, %i.ud
  %i.uf = or i32 %i.ua, %i.ue
  %i.ug = or i32 %i.uf, 947912704
  %i.uh = shl nuw nsw i32 %i.ud, 23
  %i.ui = sub nuw i32 %i.ug, %i.uh
  br label %half_to_float.exit.4

bb.cb:                                            ; preds = %half_to_float.exit.3
  %i.uj = or disjoint i32 %i.tz, %i.ua            ; 2 uses
  %i.uk = icmp samesign ult i32 %i.tz, 260046848
  br i1 %i.uk, label %bb.cd, label %bb.cc, !prof !105

bb.cc:                                            ; preds = %bb.cb
  %i.ul = or i32 %i.uj, 2139095040
  br label %half_to_float.exit.4

bb.cd:                                            ; preds = %bb.cb
  %i.um = add nuw nsw i32 %i.uj, 939524096
  br label %half_to_float.exit.4

half_to_float.exit.4:                             ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.bz
  %.sroa.0.0.i.i.4 = phi i32 [ %i.um, %bb.cd ], [ %i.ul, %bb.cc ], [ %i.ui, %bb.ca ], [ %i.ua, %bb.bz ]
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qe
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store i32 %.sroa.0.0.i.i.4, ptr %i.uo, align 4, !tbaa !103
  %i.up = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.ik
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !62
  %i.ur = zext i16 %i.uq to i64
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %i.ur
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !62 ; 2 uses
  %i.uu = zext i16 %i.ut to i32
  %i.uv = shl nuw nsw i32 %i.uu, 13
  %i.uw = and i32 %i.uv, 268427264                ; 6 uses
  %.signext.i.i.5 = sext i16 %i.ut to i32
  %i.ux = and i32 %.signext.i.i.5, -2147483648    ; 3 uses
  %i.uy = icmp samesign ugt i32 %i.uw, 8388607
  br i1 %i.uy, label %bb.cg, label %bb.ce, !prof !105

bb.ce:                                            ; preds = %half_to_float.exit.4
  %.not.i.i153.5 = icmp eq i32 %i.uw, 0
  br i1 %.not.i.i153.5, label %half_to_float.exit.5, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.uz = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.uw, i1 true)
  %i.va = add nsw i32 %i.uz, -8                   ; 2 uses
  %i.vb = shl i32 %i.uw, %i.va
  %i.vc = or i32 %i.ux, %i.vb
  %i.vd = or i32 %i.vc, 947912704
  %i.ve = shl nuw nsw i32 %i.va, 23
  %i.vf = sub nuw i32 %i.vd, %i.ve
  br label %half_to_float.exit.5

bb.cg:                                            ; preds = %half_to_float.exit.4
  %i.vg = or disjoint i32 %i.uw, %i.ux            ; 2 uses
  %i.vh = icmp samesign ult i32 %i.uw, 260046848
  br i1 %i.vh, label %bb.ci, label %bb.ch, !prof !105

bb.ch:                                            ; preds = %bb.cg
  %i.vi = or i32 %i.vg, 2139095040
  br label %half_to_float.exit.5

bb.ci:                                            ; preds = %bb.cg
  %i.vj = add nuw nsw i32 %i.vg, 939524096
  br label %half_to_float.exit.5

half_to_float.exit.5:                             ; preds = %bb.ci, %bb.ch, %bb.cf, %bb.ce
  %.sroa.0.0.i.i.5 = phi i32 [ %i.vj, %bb.ci ], [ %i.vi, %bb.ch ], [ %i.vf, %bb.cf ], [ %i.ux, %bb.ce ]
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qe
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 20
  store i32 %.sroa.0.0.i.i.5, ptr %i.vl, align 4, !tbaa !103
  %i.vm = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.im
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !62
  %i.vo = zext i16 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %i.vo
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !62 ; 2 uses
  %i.vr = zext i16 %i.vq to i32
  %i.vs = shl nuw nsw i32 %i.vr, 13
  %i.vt = and i32 %i.vs, 268427264                ; 6 uses
  %.signext.i.i.6 = sext i16 %i.vq to i32
  %i.vu = and i32 %.signext.i.i.6, -2147483648    ; 3 uses
  %i.vv = icmp samesign ugt i32 %i.vt, 8388607
  br i1 %i.vv, label %bb.cl, label %bb.cj, !prof !105

bb.cj:                                            ; preds = %half_to_float.exit.5
  %.not.i.i153.6 = icmp eq i32 %i.vt, 0
  br i1 %.not.i.i153.6, label %half_to_float.exit.6, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vw = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.vt, i1 true)
  %i.vx = add nsw i32 %i.vw, -8                   ; 2 uses
  %i.vy = shl i32 %i.vt, %i.vx
  %i.vz = or i32 %i.vu, %i.vy
  %i.wa = or i32 %i.vz, 947912704
  %i.wb = shl nuw nsw i32 %i.vx, 23
  %i.wc = sub nuw i32 %i.wa, %i.wb
  br label %half_to_float.exit.6

bb.cl:                                            ; preds = %half_to_float.exit.5
  %i.wd = or disjoint i32 %i.vt, %i.vu            ; 2 uses
  %i.we = icmp samesign ult i32 %i.vt, 260046848
  br i1 %i.we, label %bb.cn, label %bb.cm, !prof !105

bb.cm:                                            ; preds = %bb.cl
  %i.wf = or i32 %i.wd, 2139095040
  br label %half_to_float.exit.6

bb.cn:                                            ; preds = %bb.cl
  %i.wg = add nuw nsw i32 %i.wd, 939524096
  br label %half_to_float.exit.6

half_to_float.exit.6:                             ; preds = %bb.cn, %bb.cm, %bb.ck, %bb.cj
  %.sroa.0.0.i.i.6 = phi i32 [ %i.wg, %bb.cn ], [ %i.wf, %bb.cm ], [ %i.wc, %bb.ck ], [ %i.vu, %bb.cj ]
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qe
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  store i32 %.sroa.0.0.i.i.6, ptr %i.wi, align 4, !tbaa !103
  %i.wj = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.io
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !62
  %i.wl = zext i16 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %i.wl
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !62 ; 2 uses
  %i.wo = zext i16 %i.wn to i32
  %i.wp = shl nuw nsw i32 %i.wo, 13
  %i.wq = and i32 %i.wp, 268427264                ; 6 uses
  %.signext.i.i.7 = sext i16 %i.wn to i32
  %i.wr = and i32 %.signext.i.i.7, -2147483648    ; 3 uses
  %i.ws = icmp samesign ugt i32 %i.wq, 8388607
  br i1 %i.ws, label %bb.cq, label %bb.co, !prof !105

bb.co:                                            ; preds = %half_to_float.exit.6
  %.not.i.i153.7 = icmp eq i32 %i.wq, 0
  br i1 %.not.i.i153.7, label %half_to_float.exit.7, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wt = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.wq, i1 true)
  %i.wu = add nsw i32 %i.wt, -8                   ; 2 uses
  %i.wv = shl i32 %i.wq, %i.wu
  %i.ww = or i32 %i.wr, %i.wv
  %i.wx = or i32 %i.ww, 947912704
  %i.wy = shl nuw nsw i32 %i.wu, 23
  %i.wz = sub nuw i32 %i.wx, %i.wy
  br label %half_to_float.exit.7

bb.cq:                                            ; preds = %half_to_float.exit.6
  %i.xa = or disjoint i32 %i.wq, %i.wr            ; 2 uses
  %i.xb = icmp samesign ult i32 %i.wq, 260046848
  br i1 %i.xb, label %bb.cs, label %bb.cr, !prof !105

bb.cr:                                            ; preds = %bb.cq
  %i.xc = or i32 %i.xa, 2139095040
  br label %half_to_float.exit.7

bb.cs:                                            ; preds = %bb.cq
  %i.xd = add nuw nsw i32 %i.xa, 939524096
  br label %half_to_float.exit.7

half_to_float.exit.7:                             ; preds = %bb.cs, %bb.cr, %bb.cp, %bb.co
  %.sroa.0.0.i.i.7 = phi i32 [ %i.xd, %bb.cs ], [ %i.xc, %bb.cr ], [ %i.wz, %bb.cp ], [ %i.wr, %bb.co ]
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qe
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 28
  store i32 %.sroa.0.0.i.i.7, ptr %i.xf, align 4, !tbaa !103
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next272, 8
  br i1 %exitcond274.not, label %.split203, label %.preheader, !llvm.loop !227

.preheader221:                                    ; preds = %vector.memcheck, %.preheader221
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader221 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i ; 2 uses
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !103 ; 3 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i ; 2 uses
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !103 ; 3 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !103 ; 3 uses
  %i.xm = fmul float %i.xj, 7.152000e-01
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.xh, float 2.126000e-01, float %i.xm)
  %i.xo = tail call float @llvm.fmuladd.f32(float %i.xl, float 7.220000e-02, float %i.xn)
  store float %i.xo, ptr %i.xg, align 4, !tbaa !103
  %i.xp = fmul float %i.xj, -3.854000e-01
  %i.xq = tail call float @llvm.fmuladd.f32(float %i.xh, float -1.146000e-01, float %i.xp)
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.xl, float 5.000000e-01, float %i.xq)
  store float %i.xr, ptr %i.xi, align 4, !tbaa !103
  %i.xs = fmul float %i.xj, -4.542000e-01
  %i.xt = tail call float @llvm.fmuladd.f32(float %i.xh, float 5.000000e-01, float %i.xs)
  %i.xu = tail call float @llvm.fmuladd.f32(float %i.xl, float -4.580000e-02, float %i.xt)
  store float %i.xu, ptr %i.xk, align 4, !tbaa !103
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %.lr.ph211.preheader, label %.preheader221, !llvm.loop !235

._crit_edge212:                                   ; preds = %LossyDctEncoder_rleAc.exit, %.preheader161
  %.2159.lcssa = phi ptr [ %.1158214, %.preheader161 ], [ %.2.i.a, %LossyDctEncoder_rleAc.exit ] ; 2 uses
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge216, label %.preheader161, !llvm.loop !236

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %LossyDctEncoder_rleAc.exit
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %LossyDctEncoder_rleAc.exit ], [ 0, %.lr.ph211.preheader ] ; 2 uses
  %.0119209 = phi ptr [ %i.fy, %LossyDctEncoder_rleAc.exit ], [ %i.fw, %.lr.ph211.preheader ] ; 4 uses
  %.0120208 = phi ptr [ %i.fx, %LossyDctEncoder_rleAc.exit ], [ %i.fv, %.lr.ph211.preheader ] ; 4 uses
  %.2159207 = phi ptr [ %.2.i.a, %LossyDctEncoder_rleAc.exit ], [ %.1158214, %.lr.ph211.preheader ]
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv293
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !82 ; 22 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 32 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 64 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 96 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 16 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xw, i64 128 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xw, i64 160 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xw, i64 192 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xw, i64 224 ; 2 uses
  %.pre.i = load <4 x float>, ptr %i.xw, align 16, !tbaa !60 ; 2 uses
  %.pre196.i = load <4 x float>, ptr %i.ye, align 16, !tbaa !60 ; 2 uses
  %.pre197.i = load <4 x float>, ptr %i.xx, align 16, !tbaa !60 ; 2 uses
  %.pre198.i = load <4 x float>, ptr %i.xy, align 16, !tbaa !60 ; 2 uses
  %.pre199.i = load <4 x float>, ptr %i.xz, align 16, !tbaa !60 ; 2 uses
  %.pre200.i = load <4 x float>, ptr %i.yb, align 16, !tbaa !60 ; 2 uses
  %.pre201.i = load <4 x float>, ptr %i.yc, align 16, !tbaa !60 ; 2 uses
  %.pre202.i = load <4 x float>, ptr %i.yd, align 16, !tbaa !60 ; 2 uses
  %.pre203.i = load <4 x float>, ptr %i.ya, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 240 ; 2 uses
  %.pre204.i = load <4 x float>, ptr %.phi.trans.insert.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert205.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 48 ; 2 uses
  %.pre206.i = load <4 x float>, ptr %.phi.trans.insert205.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert207.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 80 ; 2 uses
  %.pre208.i = load <4 x float>, ptr %.phi.trans.insert207.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert209.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 112 ; 2 uses
  %.pre210.i = load <4 x float>, ptr %.phi.trans.insert209.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert211.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 144 ; 2 uses
  %.pre212.i = load <4 x float>, ptr %.phi.trans.insert211.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert213.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 176 ; 2 uses
  %.pre214.i = load <4 x float>, ptr %.phi.trans.insert213.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert215.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 208 ; 2 uses
  %.pre216.i = load <4 x float>, ptr %.phi.trans.insert215.i, align 16, !tbaa !60 ; 2 uses
  %i.yf = fadd <4 x float> %.pre196.i, %.pre.i    ; 2 uses
  %i.yg = fadd <4 x float> %.pre198.i, %.pre197.i ; 2 uses
  %i.yh = fadd <4 x float> %.pre200.i, %.pre199.i ; 2 uses
  %i.yi = fadd <4 x float> %.pre202.i, %.pre201.i ; 2 uses
  %i.yj = fsub <4 x float> %.pre.i, %.pre196.i    ; 2 uses
  %i.yk = fsub <4 x float> %.pre197.i, %.pre198.i ; 2 uses
  %i.yl = fsub <4 x float> %.pre199.i, %.pre200.i ; 2 uses
  %i.ym = fsub <4 x float> %.pre201.i, %.pre202.i ; 2 uses
  %i.yn = fadd <4 x float> %i.yh, %i.yf
  %i.yo = fadd <4 x float> %i.yi, %i.yg
  %i.yp = fmul <4 x float> %i.yn, splat (float f0x3F3504F3) ; 2 uses
  %i.yq = fmul <4 x float> %i.yo, splat (float f0x3F3504F3) ; 2 uses
  %i.yr = fadd <4 x float> %i.yq, %i.yp
  %i.ys = fsub <4 x float> %i.yp, %i.yq
  %i.yt = fmul <4 x float> %i.yr, splat (float 5.000000e-01) ; 2 uses
  %i.yu = fmul <4 x float> %i.ys, splat (float 5.000000e-01) ; 2 uses
  %i.yv = fsub <4 x float> %i.yk, %i.ym           ; 2 uses
  %i.yw = fsub <4 x float> %i.yf, %i.yh           ; 2 uses
  %i.yx = fmul <4 x float> %i.yv, splat (float f0x3E43EF15)
  %i.yy = fmul <4 x float> %i.yw, splat (float f0x3EEC835F)
  %i.yz = fadd <4 x float> %i.yx, %i.yy           ; 2 uses
  %i.za = fmul <4 x float> %i.yw, splat (float f0x3E43EF15)
  %i.zb = fmul <4 x float> %i.yv, splat (float f0x3EEC835F)
  %i.zc = fsub <4 x float> %i.za, %i.zb           ; 2 uses
  %i.zd = fsub <4 x float> %i.yg, %i.yi
  %i.ze = fmul <4 x float> %i.zd, splat (float f0x3F3504F3) ; 2 uses
  %i.zf = fadd <4 x float> %i.ym, %i.yk
  %i.zg = fmul <4 x float> %i.zf, splat (float f0xBF3504F3) ; 2 uses
  %i.zh = fsub <4 x float> %i.yj, %i.ze           ; 2 uses
  %i.zi = fadd <4 x float> %i.yl, %i.zg           ; 2 uses
  %i.zj = fmul <4 x float> %i.zh, splat (float f0x3ED4DB31)
  %i.zk = fmul <4 x float> %i.zi, splat (float f0x3E8E39DA)
  %i.zl = fsub <4 x float> %i.zj, %i.zk           ; 2 uses
  %i.zm = fmul <4 x float> %i.zh, splat (float f0x3E8E39DA)
  %i.zn = fmul <4 x float> %i.zi, splat (float f0x3ED4DB31)
  %i.zo = fadd <4 x float> %i.zm, %i.zn           ; 2 uses
  %i.zp = fadd <4 x float> %i.yj, %i.ze           ; 2 uses
  %i.zq = fsub <4 x float> %i.zg, %i.yl           ; 2 uses
  %i.zr = fmul <4 x float> %i.zp, splat (float f0x3EFB14BE)
  %i.zs = fmul <4 x float> %i.zq, splat (float f0x3DC7C5C2)
  %i.zt = fsub <4 x float> %i.zr, %i.zs           ; 2 uses
  %i.zu = fmul <4 x float> %i.zp, splat (float f0x3DC7C5C2)
  %i.zv = fmul <4 x float> %i.zq, splat (float f0x3EFB14BE)
  %i.zw = fadd <4 x float> %i.zu, %i.zv           ; 2 uses
  %i.zx = fadd <4 x float> %.pre204.i, %.pre203.i ; 2 uses
  %i.zy = fadd <4 x float> %.pre208.i, %.pre206.i ; 2 uses
  %i.zz = fadd <4 x float> %.pre212.i, %.pre210.i ; 2 uses
  %i.aaa = fadd <4 x float> %.pre216.i, %.pre214.i ; 2 uses
  %i.aab = fsub <4 x float> %.pre203.i, %.pre204.i ; 2 uses
  %i.aac = fsub <4 x float> %.pre206.i, %.pre208.i ; 2 uses
  %i.aad = fsub <4 x float> %.pre210.i, %.pre212.i ; 2 uses
  %i.aae = fsub <4 x float> %.pre214.i, %.pre216.i ; 2 uses
  %i.aaf = fadd <4 x float> %i.zz, %i.zx
  %i.aag = fadd <4 x float> %i.aaa, %i.zy
  %i.aah = fmul <4 x float> %i.aaf, splat (float f0x3F3504F3) ; 2 uses
  %i.aai = fmul <4 x float> %i.aag, splat (float f0x3F3504F3) ; 2 uses
  %i.aaj = fadd <4 x float> %i.aai, %i.aah
  %i.aak = fsub <4 x float> %i.aah, %i.aai
  %i.aal = fmul <4 x float> %i.aaj, splat (float 5.000000e-01) ; 2 uses
  %i.aam = fmul <4 x float> %i.aak, splat (float 5.000000e-01) ; 2 uses
  %i.aan = fsub <4 x float> %i.aac, %i.aae        ; 2 uses
  %i.aao = fsub <4 x float> %i.zx, %i.zz          ; 2 uses
  %i.aap = fmul <4 x float> %i.aan, splat (float f0x3E43EF15)
  %i.aaq = fmul <4 x float> %i.aao, splat (float f0x3EEC835F)
  %i.aar = fadd <4 x float> %i.aap, %i.aaq        ; 2 uses
  %i.aas = fmul <4 x float> %i.aao, splat (float f0x3E43EF15)
  %i.aat = fmul <4 x float> %i.aan, splat (float f0x3EEC835F)
  %i.aau = fsub <4 x float> %i.aas, %i.aat        ; 2 uses
  %i.aav = fsub <4 x float> %i.zy, %i.aaa
  %i.aaw = fmul <4 x float> %i.aav, splat (float f0x3F3504F3) ; 2 uses
  %i.aax = fadd <4 x float> %i.aae, %i.aac
  %i.aay = fmul <4 x float> %i.aax, splat (float f0xBF3504F3) ; 2 uses
  %i.aaz = fsub <4 x float> %i.aab, %i.aaw        ; 2 uses
  %i.aba = fadd <4 x float> %i.aad, %i.aay        ; 2 uses
  %i.abb = fmul <4 x float> %i.aaz, splat (float f0x3ED4DB31)
  %i.abc = fmul <4 x float> %i.aba, splat (float f0x3E8E39DA)
  %i.abd = fsub <4 x float> %i.abb, %i.abc        ; 2 uses
  %i.abe = fmul <4 x float> %i.aaz, splat (float f0x3E8E39DA)
  %i.abf = fmul <4 x float> %i.aba, splat (float f0x3ED4DB31)
  %i.abg = fadd <4 x float> %i.abe, %i.abf        ; 2 uses
  %i.abh = fadd <4 x float> %i.aab, %i.aaw        ; 2 uses
  %i.abi = fsub <4 x float> %i.aay, %i.aad        ; 2 uses
  %i.abj = fmul <4 x float> %i.abh, splat (float f0x3EFB14BE)
  %i.abk = fmul <4 x float> %i.abi, splat (float f0x3DC7C5C2)
  %i.abl = fsub <4 x float> %i.abj, %i.abk        ; 2 uses
  %i.abm = fmul <4 x float> %i.abh, splat (float f0x3DC7C5C2)
  %i.abn = fmul <4 x float> %i.abi, splat (float f0x3EFB14BE)
  %i.abo = fadd <4 x float> %i.abm, %i.abn        ; 2 uses
  %i.abp = shufflevector <4 x float> %i.yt, <4 x float> %i.zt, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.abq = shufflevector <4 x float> %i.yz, <4 x float> %i.zl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.abr = shufflevector <4 x float> %i.yz, <4 x float> %i.zl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.abs = shufflevector <4 x float> %i.yt, <4 x float> %i.zt, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.abt = shufflevector <4 x float> %i.aam, <4 x float> %i.abg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.abu = shufflevector <4 x float> %i.aau, <4 x float> %i.abo, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.abv = shufflevector <4 x float> %i.aam, <4 x float> %i.abg, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.abw = shufflevector <4 x float> %i.aau, <4 x float> %i.abo, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.abx = shufflevector <4 x float> %i.abp, <4 x float> %i.abq, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.aby = shufflevector <4 x float> %i.abs, <4 x float> %i.abr, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.abz = shufflevector <4 x float> %i.abp, <4 x float> %i.abq, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aca = shufflevector <4 x float> %i.abs, <4 x float> %i.abr, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acb = shufflevector <4 x float> %i.abt, <4 x float> %i.abu, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.acc = shufflevector <4 x float> %i.abv, <4 x float> %i.abw, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.acd = shufflevector <4 x float> %i.abt, <4 x float> %i.abu, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ace = shufflevector <4 x float> %i.abv, <4 x float> %i.abw, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acf = shufflevector <4 x float> %i.aal, <4 x float> %i.abl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.acg = shufflevector <4 x float> %i.aar, <4 x float> %i.abd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ach = shufflevector <4 x float> %i.aal, <4 x float> %i.abl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.aci = shufflevector <4 x float> %i.aar, <4 x float> %i.abd, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.acj = shufflevector <4 x float> %i.yu, <4 x float> %i.zo, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ack = shufflevector <4 x float> %i.zc, <4 x float> %i.zw, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.acl = shufflevector <4 x float> %i.yu, <4 x float> %i.zo, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.acm = shufflevector <4 x float> %i.zc, <4 x float> %i.zw, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.acn = shufflevector <4 x float> %i.acf, <4 x float> %i.acg, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.aco = shufflevector <4 x float> %i.ach, <4 x float> %i.aci, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.acp = shufflevector <4 x float> %i.acf, <4 x float> %i.acg, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acq = shufflevector <4 x float> %i.ach, <4 x float> %i.aci, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acr = shufflevector <4 x float> %i.acj, <4 x float> %i.ack, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.acs = shufflevector <4 x float> %i.acl, <4 x float> %i.acm, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.act = shufflevector <4 x float> %i.acj, <4 x float> %i.ack, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acu = shufflevector <4 x float> %i.acl, <4 x float> %i.acm, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acv = fadd <4 x float> %i.acq, %i.abx        ; 2 uses
  %i.acw = fadd <4 x float> %i.aby, %i.abz        ; 2 uses
  %i.acx = fadd <4 x float> %i.acn, %i.aca        ; 2 uses
  %i.acy = fadd <4 x float> %i.aco, %i.acp        ; 2 uses
  %i.acz = fsub <4 x float> %i.abx, %i.acq        ; 2 uses
  %i.ada = fsub <4 x float> %i.abz, %i.aby        ; 2 uses
  %i.adb = fsub <4 x float> %i.aca, %i.acn        ; 2 uses
  %i.adc = fsub <4 x float> %i.acp, %i.aco        ; 2 uses
  %i.add = fadd <4 x float> %i.acx, %i.acv
  %i.ade = fadd <4 x float> %i.acy, %i.acw
  %i.adf = fmul <4 x float> %i.add, splat (float f0x3F3504F3) ; 2 uses
  %i.adg = fmul <4 x float> %i.ade, splat (float f0x3F3504F3) ; 2 uses
  %i.adh = fadd <4 x float> %i.adg, %i.adf
  %i.adi = fsub <4 x float> %i.adf, %i.adg
  %i.adj = fmul <4 x float> %i.adh, splat (float 5.000000e-01) ; 2 uses
  %i.adk = fmul <4 x float> %i.adi, splat (float 5.000000e-01) ; 2 uses
  %i.adl = fsub <4 x float> %i.ada, %i.adc        ; 2 uses
  %i.adm = fsub <4 x float> %i.acv, %i.acx        ; 2 uses
  %i.adn = fmul <4 x float> %i.adl, splat (float f0x3E43EF15)
  %i.ado = fmul <4 x float> %i.adm, splat (float f0x3EEC835F)
  %i.adp = fadd <4 x float> %i.adn, %i.ado        ; 2 uses
  %i.adq = fmul <4 x float> %i.adm, splat (float f0x3E43EF15)
  %i.adr = fmul <4 x float> %i.adl, splat (float f0x3EEC835F)
  %i.ads = fsub <4 x float> %i.adq, %i.adr        ; 2 uses
  %i.adt = fsub <4 x float> %i.acw, %i.acy
  %i.adu = fmul <4 x float> %i.adt, splat (float f0x3F3504F3) ; 2 uses
  %i.adv = fadd <4 x float> %i.adc, %i.ada
  %i.adw = fmul <4 x float> %i.adv, splat (float f0xBF3504F3) ; 2 uses
  %i.adx = fsub <4 x float> %i.acz, %i.adu        ; 2 uses
  %i.ady = fadd <4 x float> %i.adb, %i.adw        ; 2 uses
  %i.adz = fmul <4 x float> %i.adx, splat (float f0x3ED4DB31)
  %i.aea = fmul <4 x float> %i.ady, splat (float f0x3E8E39DA)
  %i.aeb = fsub <4 x float> %i.adz, %i.aea        ; 2 uses
  %i.aec = fmul <4 x float> %i.adx, splat (float f0x3E8E39DA)
  %i.aed = fmul <4 x float> %i.ady, splat (float f0x3ED4DB31)
  %i.aee = fadd <4 x float> %i.aec, %i.aed        ; 2 uses
  %i.aef = fadd <4 x float> %i.acz, %i.adu        ; 2 uses
  %i.aeg = fsub <4 x float> %i.adw, %i.adb        ; 2 uses
  %i.aeh = fmul <4 x float> %i.aef, splat (float f0x3EFB14BE)
  %i.aei = fmul <4 x float> %i.aeg, splat (float f0x3DC7C5C2)
  %i.aej = fsub <4 x float> %i.aeh, %i.aei        ; 2 uses
  %i.aek = fmul <4 x float> %i.aef, splat (float f0x3DC7C5C2)
  %i.ael = fmul <4 x float> %i.aeg, splat (float f0x3EFB14BE)
  %i.aem = fadd <4 x float> %i.aek, %i.ael        ; 2 uses
  %i.aen = fadd <4 x float> %i.ace, %i.acr        ; 2 uses
  %i.aeo = fadd <4 x float> %i.acs, %i.act        ; 2 uses
  %i.aep = fadd <4 x float> %i.acb, %i.acu        ; 2 uses
end_hunk_1
begin_hunk_2_@LossyDctEncoder_execute:bb.a
  %i.aos = getelementptr inbounds nuw [2 x i8], ptr %.0119209, i64 %i.ajd
  %i.aot = load i16, ptr %i.aos, align 2, !tbaa !62, !alias.scope !254, !noalias !257
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %.0119209, i64 %i.akw
  %i.aov = load i16, ptr %i.aou, align 2, !tbaa !62, !alias.scope !254, !noalias !257
  %i.aow = getelementptr inbounds nuw [2 x i8], ptr %.0119209, i64 %i.amp
  %i.aox = load i16, ptr %i.aow, align 2, !tbaa !62, !alias.scope !254, !noalias !257
  %i.aoy = zext i16 %.033.i.i.i to i32            ; 2 uses
  %i.aoz = zext i16 %i.aor to i32
  %i.apa = shl nuw nsw i32 %i.aoy, 13
  %i.apb = and i32 %i.apa, 268427264              ; 6 uses
  %.signext.i.i.i = sext i16 %.033.i.i.i to i32
  %i.apc = and i32 %.signext.i.i.i, -2147483648   ; 3 uses
  %i.apd = icmp samesign ugt i32 %i.apb, 8388607
  br i1 %i.apd, label %bb.ei, label %bb.el, !prof !105

bb.ei:                                            ; preds = %float_to_half.exit64.i
  %i.ape = or disjoint i32 %i.apb, %i.apc         ; 2 uses
  %i.apf = icmp samesign ult i32 %i.apb, 260046848
  br i1 %i.apf, label %bb.ej, label %bb.ek, !prof !105

bb.ej:                                            ; preds = %bb.ei
  %i.apg = add nuw nsw i32 %i.ape, 939524096
  br label %half_to_float.exit.i

bb.ek:                                            ; preds = %bb.ei
  %i.aph = or i32 %i.ape, 2139095040
  br label %half_to_float.exit.i

bb.el:                                            ; preds = %float_to_half.exit64.i
  %.not.i.i65.i = icmp eq i32 %i.apb, 0
  br i1 %.not.i.i65.i, label %half_to_float.exit.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.api = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.apb, i1 true)
  %i.apj = add nsw i32 %i.api, -8                 ; 2 uses
  %i.apk = shl i32 %i.apb, %i.apj
  %i.apl = or i32 %i.apc, %i.apk
  %i.apm = or i32 %i.apl, 947912704
  %i.apn = shl nuw nsw i32 %i.apj, 23
  %i.apo = sub nuw i32 %i.apm, %i.apn
  br label %half_to_float.exit.i

half_to_float.exit.i:                             ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej
  %.sroa.0.0.i.i.i = phi i32 [ %i.apg, %bb.ej ], [ %i.aph, %bb.ek ], [ %i.apo, %bb.em ], [ %i.apc, %bb.el ]
  %i.app = bitcast i32 %.sroa.0.0.i.i.i to float
  %i.apq = tail call fastcc zeroext i16 @algoQuantize(i32 noundef %i.aoy, i32 noundef %i.aoz, float noundef %i.aoj, float noundef %i.app)
  %i.apr = zext i16 %.033.i.i55.i to i32          ; 2 uses
  %i.aps = zext i16 %i.aot to i32
  %i.apt = shl nuw nsw i32 %i.apr, 13
  %i.apu = and i32 %i.apt, 268427264              ; 6 uses
  %.signext.i.i66.i = sext i16 %.033.i.i55.i to i32
  %i.apv = and i32 %.signext.i.i66.i, -2147483648 ; 3 uses
  %i.apw = icmp samesign ugt i32 %i.apu, 8388607
  br i1 %i.apw, label %bb.en, label %bb.eq, !prof !105

bb.en:                                            ; preds = %half_to_float.exit.i
  %i.apx = or disjoint i32 %i.apu, %i.apv         ; 2 uses
  %i.apy = icmp samesign ult i32 %i.apu, 260046848
  br i1 %i.apy, label %bb.eo, label %bb.ep, !prof !105

bb.eo:                                            ; preds = %bb.en
  %i.apz = add nuw nsw i32 %i.apx, 939524096
  br label %half_to_float.exit69.i

bb.ep:                                            ; preds = %bb.en
  %i.aqa = or i32 %i.apx, 2139095040
  br label %half_to_float.exit69.i

bb.eq:                                            ; preds = %half_to_float.exit.i
  %.not.i.i67.i = icmp eq i32 %i.apu, 0
  br i1 %.not.i.i67.i, label %half_to_float.exit69.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aqb = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.apu, i1 true)
  %i.aqc = add nsw i32 %i.aqb, -8                 ; 2 uses
  %i.aqd = shl i32 %i.apu, %i.aqc
  %i.aqe = or i32 %i.apv, %i.aqd
  %i.aqf = or i32 %i.aqe, 947912704
  %i.aqg = shl nuw nsw i32 %i.aqc, 23
  %i.aqh = sub nuw i32 %i.aqf, %i.aqg
  br label %half_to_float.exit69.i

half_to_float.exit69.i:                           ; preds = %bb.er, %bb.eq, %bb.ep, %bb.eo
  %.sroa.0.0.i.i68.i = phi i32 [ %i.apz, %bb.eo ], [ %i.aqa, %bb.ep ], [ %i.aqh, %bb.er ], [ %i.apv, %bb.eq ]
  %i.aqi = bitcast i32 %.sroa.0.0.i.i68.i to float
  %i.aqj = tail call fastcc zeroext i16 @algoQuantize(i32 noundef %i.apr, i32 noundef %i.aps, float noundef %i.aol, float noundef %i.aqi)
  %i.aqk = zext i16 %.033.i.i59.i to i32          ; 2 uses
  %i.aql = zext i16 %i.aov to i32
  %i.aqm = shl nuw nsw i32 %i.aqk, 13
  %i.aqn = and i32 %i.aqm, 268427264              ; 6 uses
  %.signext.i.i70.i = sext i16 %.033.i.i59.i to i32
  %i.aqo = and i32 %.signext.i.i70.i, -2147483648 ; 3 uses
  %i.aqp = icmp samesign ugt i32 %i.aqn, 8388607
  br i1 %i.aqp, label %bb.es, label %bb.ev, !prof !105

bb.es:                                            ; preds = %half_to_float.exit69.i
  %i.aqq = or disjoint i32 %i.aqn, %i.aqo         ; 2 uses
  %i.aqr = icmp samesign ult i32 %i.aqn, 260046848
  br i1 %i.aqr, label %bb.et, label %bb.eu, !prof !105

bb.et:                                            ; preds = %bb.es
  %i.aqs = add nuw nsw i32 %i.aqq, 939524096
  br label %half_to_float.exit73.i

bb.eu:                                            ; preds = %bb.es
  %i.aqt = or i32 %i.aqq, 2139095040
  br label %half_to_float.exit73.i

bb.ev:                                            ; preds = %half_to_float.exit69.i
  %.not.i.i71.i = icmp eq i32 %i.aqn, 0
  br i1 %.not.i.i71.i, label %half_to_float.exit73.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aqu = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.aqn, i1 true)
  %i.aqv = add nsw i32 %i.aqu, -8                 ; 2 uses
  %i.aqw = shl i32 %i.aqn, %i.aqv
  %i.aqx = or i32 %i.aqo, %i.aqw
  %i.aqy = or i32 %i.aqx, 947912704
  %i.aqz = shl nuw nsw i32 %i.aqv, 23
  %i.ara = sub nuw i32 %i.aqy, %i.aqz
  br label %half_to_float.exit73.i

half_to_float.exit73.i:                           ; preds = %bb.ew, %bb.ev, %bb.eu, %bb.et
  %.sroa.0.0.i.i72.i = phi i32 [ %i.aqs, %bb.et ], [ %i.aqt, %bb.eu ], [ %i.ara, %bb.ew ], [ %i.aqo, %bb.ev ]
  %i.arb = bitcast i32 %.sroa.0.0.i.i72.i to float
  %i.arc = tail call fastcc zeroext i16 @algoQuantize(i32 noundef %i.aqk, i32 noundef %i.aql, float noundef %i.aon, float noundef %i.arb)
  %i.ard = zext i16 %.033.i.i63.i to i32          ; 2 uses
  %i.are = zext i16 %i.aox to i32
  %i.arf = shl nuw nsw i32 %i.ard, 13
  %i.arg = and i32 %i.arf, 268427264              ; 6 uses
  %.signext.i.i74.i = sext i16 %.033.i.i63.i to i32
  %i.arh = and i32 %.signext.i.i74.i, -2147483648 ; 3 uses
  %i.ari = icmp samesign ugt i32 %i.arg, 8388607
  br i1 %i.ari, label %bb.ex, label %bb.fa, !prof !105

bb.ex:                                            ; preds = %half_to_float.exit73.i
  %i.arj = or disjoint i32 %i.arg, %i.arh         ; 2 uses
  %i.ark = icmp samesign ult i32 %i.arg, 260046848
  br i1 %i.ark, label %bb.ey, label %bb.ez, !prof !105

bb.ey:                                            ; preds = %bb.ex
  %i.arl = add nuw nsw i32 %i.arj, 939524096
  br label %half_to_float.exit77.i

bb.ez:                                            ; preds = %bb.ex
  %i.arm = or i32 %i.arj, 2139095040
  br label %half_to_float.exit77.i

bb.fa:                                            ; preds = %half_to_float.exit73.i
  %.not.i.i75.i = icmp eq i32 %i.arg, 0
  br i1 %.not.i.i75.i, label %half_to_float.exit77.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.arn = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.arg, i1 true)
  %i.aro = add nsw i32 %i.arn, -8                 ; 2 uses
  %i.arp = shl i32 %i.arg, %i.aro
  %i.arq = or i32 %i.arh, %i.arp
  %i.arr = or i32 %i.arq, 947912704
  %i.ars = shl nuw nsw i32 %i.aro, 23
  %i.art = sub nuw i32 %i.arr, %i.ars
  br label %half_to_float.exit77.i

half_to_float.exit77.i:                           ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %.sroa.0.0.i.i76.i = phi i32 [ %i.arl, %bb.ey ], [ %i.arm, %bb.ez ], [ %i.art, %bb.fb ], [ %i.arh, %bb.fa ]
  %i.aru = bitcast i32 %.sroa.0.0.i.i76.i to float
  %i.arv = tail call fastcc zeroext i16 @algoQuantize(i32 noundef %i.ard, i32 noundef %i.are, float noundef %i.aop, float noundef %i.aru)
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr @quantizeCoeffAndZigXDR.inv_remap, i64 %indvars.iv.i154
  %i.arx = load i32, ptr %i.arw, align 16, !tbaa !36, !noalias !258
  %i.ary = sext i32 %i.arx to i64
  %i.arz = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.ary
  store i16 %i.apq, ptr %i.arz, align 2, !tbaa !62, !alias.scope !251, !noalias !259
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr @quantizeCoeffAndZigXDR.inv_remap, i64 %i.ajd
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !36, !noalias !258
  %i.asc = sext i32 %i.asb to i64
  %i.asd = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.asc
  store i16 %i.aqj, ptr %i.asd, align 2, !tbaa !62, !alias.scope !251, !noalias !259
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr @quantizeCoeffAndZigXDR.inv_remap, i64 %i.akw
  %i.asf = load i32, ptr %i.ase, align 8, !tbaa !36, !noalias !258
  %i.asg = sext i32 %i.asf to i64
  %i.ash = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.asg
  store i16 %i.arc, ptr %i.ash, align 2, !tbaa !62, !alias.scope !251, !noalias !259
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr @quantizeCoeffAndZigXDR.inv_remap, i64 %i.amp
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !36, !noalias !258
  %i.ask = sext i32 %i.asj to i64
  %i.asl = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.ask
  store i16 %i.arv, ptr %i.asl, align 2, !tbaa !62, !alias.scope !251, !noalias !259
  %indvars.iv.next.i155 = add nuw nsw i64 %indvars.iv.i154, 4
  %i.asm = icmp samesign ult i64 %indvars.iv.i154, 60
  br i1 %i.asm, label %bb.ct, label %quantizeCoeffAndZigXDR.exit, !llvm.loop !242

quantizeCoeffAndZigXDR.exit:                      ; preds = %half_to_float.exit77.i
  %i.asn = load i16, ptr %i.b, align 16, !tbaa !62
  %i.aso = getelementptr inbounds nuw i8, ptr %i.xw, i64 384 ; 2 uses
  %i.asp = load ptr, ptr %i.aso, align 32, !tbaa !246 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 2
  store ptr %i.asq, ptr %i.aso, align 32, !tbaa !246
  store i16 %i.asn, ptr %i.asp, align 2, !tbaa !62
  %i.asr = load i64, ptr %i.t, align 8, !tbaa !260
  %i.ass = add i64 %i.asr, 1
  store i64 %i.ass, ptr %i.t, align 8, !tbaa !260
  %.promoted = load i64, ptr %i.s, align 8, !tbaa !261
  br label %bb.fc

bb.fc:                                            ; preds = %.critedge.thread.i, %quantizeCoeffAndZigXDR.exit
  %storemerge.in.i206 = phi i64 [ %.promoted, %quantizeCoeffAndZigXDR.exit ], [ %storemerge.i, %.critedge.thread.i ]
  %.03345.i = phi ptr [ %.2159207, %quantizeCoeffAndZigXDR.exit ], [ %.2.i.a, %.critedge.thread.i ] ; 2 uses
  %.03544.i = phi i32 [ 1, %quantizeCoeffAndZigXDR.exit ], [ %10, %.critedge.thread.i ] ; 5 uses
  %3 = zext nneg i32 %.03544.i to i64
  %i.ast = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %3
  %i.asu = load i16, ptr %i.ast, align 2, !tbaa !62 ; 2 uses
  %.not.i = icmp eq i16 %i.asu, 0
  br i1 %.not.i, label %.preheader.i156, label %.critedge.thread.i, !llvm.loop !243

.preheader.i156:                                  ; preds = %bb.fc
  %4 = icmp samesign ult i32 %.03544.i, 63
  br i1 %4, label %.lr.ph.i.preheader, label %.critedge.thread.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i156
  %i.asv = add nuw nsw i32 %.03544.i, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.fd
  %i.asw = phi i32 [ %i.atc, %bb.fd ], [ %i.asv, %.lr.ph.i.preheader ] ; 2 uses
  %.039.i = phi i16 [ %i.ata, %bb.fd ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %5 = zext nneg i32 %i.asw to i64
  %i.asx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %5
  %i.asy = load i16, ptr %i.asx, align 2, !tbaa !62
  %i.asz = icmp eq i16 %i.asy, 0
  br i1 %i.asz, label %bb.fd, label %.critedge.i

bb.fd:                                            ; preds = %.lr.ph.i
  %i.ata = add i16 %.039.i, 1                     ; 3 uses
  %i.atb = zext i16 %i.ata to i32
  %i.atc = add nuw nsw i32 %.03544.i, %i.atb      ; 3 uses
  %6 = icmp samesign ult i32 %i.atc, 64
  br i1 %6, label %.lr.ph.i, label %.critedge.i, !llvm.loop !244

.critedge.i:                                      ; preds = %bb.fd, %.lr.ph.i
  %.0.lcssa.i = phi i16 [ %i.ata, %bb.fd ], [ %.039.i, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i32 [ %i.atc, %bb.fd ], [ %i.asw, %.lr.ph.i ]
  %i.atd = icmp eq i16 %.0.lcssa.i, 1
  br i1 %i.atd, label %.critedge.thread.i, label %bb.fe

bb.fe:                                            ; preds = %.critedge.i
  %7 = icmp eq i32 %.lcssa.i, 64
  %8 = or i16 %.0.lcssa.i, -256
  %spec.select.i = select i1 %7, i16 -256, i16 %8
  %9 = zext i16 %.0.lcssa.i to i32
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader.i156, %.critedge.i, %bb.fe, %bb.fc
  %storemerge53.i = phi i16 [ %i.asu, %bb.fc ], [ 0, %.critedge.i ], [ %spec.select.i, %bb.fe ], [ 0, %.preheader.i156 ]
  %.sink52.i = phi i32 [ 1, %bb.fc ], [ 1, %.critedge.i ], [ %9, %bb.fe ], [ 1, %.preheader.i156 ]
  store i16 %storemerge53.i, ptr %.03345.i, align 2, !tbaa !62
  %storemerge.i = add i64 %storemerge.in.i206, 1  ; 2 uses
  %10 = add nuw nsw i32 %.sink52.i, %.03544.i     ; 2 uses
  %.2.i.a = getelementptr inbounds nuw i8, ptr %.03345.i, i64 2 ; 3 uses
  %11 = icmp samesign ult i32 %10, 64
  br i1 %11, label %bb.fc, label %LossyDctEncoder_rleAc.exit

LossyDctEncoder_rleAc.exit:                       ; preds = %.critedge.thread.i
  store i64 %storemerge.i, ptr %i.s, align 8, !tbaa !261
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !245

bb.ff:                                            ; preds = %._crit_edge220.split
  tail call void %1(ptr noundef nonnull %.0130377380) #21
  br label %bb.fg

bb.fg:                                            ; preds = %._crit_edge220.split, %bb.ff, %bb.d
  %.0135 = phi i32 [ 1, %bb.d ], [ 0, %bb.ff ], [ 0, %._crit_edge220.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @exr_compress_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @exr_compress_max_buffer_size(i64 noundef) local_unnamed_addr #2

declare i32 @internal_huf_compress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @internal_zip_deconstruct_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @internal_rle_compress(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @LossyDctEncoder_base_construct(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 24), (52, 80)) %0, float noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float %1, ptr %i.a, align 4, !tbaa !263
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %5, ptr %i.b, align 4, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %6, ptr %i.c, align 8, !tbaa !107
  store ptr %4, ptr %0, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %3, ptr %i.f, align 8, !tbaa !109
  %i.g = fcmp olt float %1, 0.000000e+00
  br i1 %i.g, label %bb.b, label %vector.ph

bb.b:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !263
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.a
  %i.h = phi float [ 0.000000e+00, %bb.b ], [ %1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 720
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @__const.LossyDctEncoder_base_construct.jpegQuantTableY, i64 %index
  %wide.load = load <4 x i32>, ptr %i.m, align 16, !tbaa !36
  %i.n = sitofp <4 x i32> %wide.load to <4 x float>
  %i.o = fmul <4 x float> %broadcast.splat, %i.n
  %i.p = fdiv <4 x float> %i.o, splat (float 1.000000e+01) ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  store <4 x float> %i.p, ptr %i.q, align 4, !tbaa !103
  %i.r = bitcast <4 x float> %i.p to <4 x i32>
  %i.s = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.p)
  %i.t = bitcast <4 x float> %i.s to <4 x i32>    ; 8 uses
  %i.u = lshr <4 x i32> %i.r, splat (i32 16)      ; 2 uses
  %i.v = trunc nuw <4 x i32> %i.u to <4 x i16>
  %i.w = and <4 x i16> %i.v, splat (i16 -32768)   ; 2 uses
  %i.x = add nsw <4 x i32> %i.t, splat (i32 -855638017)
  %i.y = icmp ult <4 x i32> %i.x, splat (i32 92274687) ; 2 uses
  %i.z = lshr <4 x i32> %i.t, splat (i32 23)      ; 2 uses
  %i.aa = sub nuw nsw <4 x i32> splat (i32 126), %i.z
  %i.ab = and <4 x i32> %i.t, splat (i32 8388607)
  %i.ac = or disjoint <4 x i32> %i.ab, splat (i32 8388608) ; 2 uses
  %i.ad = add nsw <4 x i32> %i.z, splat (i32 -94)
  %i.ae = shl <4 x i32> %i.ac, %i.ad              ; 2 uses
  %i.af = lshr <4 x i32> %i.ac, %i.aa             ; 2 uses
  %i.ag = and <4 x i32> %i.u, splat (i32 32768)   ; 2 uses
  %i.ah = or <4 x i32> %i.af, %i.ag
  %i.ai = trunc nuw <4 x i32> %i.ah to <4 x i16>  ; 2 uses
  %i.aj = icmp ugt <4 x i32> %i.ae, splat (i32 -2147483648) ; 2 uses
  %i.ak = xor <4 x i1> %i.aj, splat (i1 true)
  %i.al = select <4 x i1> %i.y, <4 x i1> %i.ak, <4 x i1> zeroinitializer ; 2 uses
  %i.am = icmp ne <4 x i32> %i.ae, splat (i32 -2147483648)
  %i.an = and <4 x i32> %i.af, splat (i32 1)
  %i.ao = icmp eq <4 x i32> %i.an, zeroinitializer
  %i.ap = select <4 x i1> %i.am, <4 x i1> splat (i1 true), <4 x i1> %i.ao ; 2 uses
  %i.aq = xor <4 x i1> %i.ap, splat (i1 true)
  %i.ar = select <4 x i1> %i.al, <4 x i1> %i.aq, <4 x i1> zeroinitializer
  %i.as = select <4 x i1> %i.y, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.at = or <4 x i1> %i.ar, %i.as
  %i.au = add nuw <4 x i16> %i.ai, splat (i16 1)
  %i.av = add nsw <4 x i32> %i.t, splat (i32 -947912704)
  %i.aw = icmp ult <4 x i32> %i.av, splat (i32 251654144)
  %i.ax = add nuw nsw <4 x i32> %i.t, splat (i32 134221823)
  %i.ay = lshr <4 x i32> %i.t, splat (i32 13)     ; 2 uses
  %i.az = and <4 x i32> %i.ay, splat (i32 1)
  %i.ba = add nuw nsw <4 x i32> %i.ax, %i.az
  %i.bb = lshr <4 x i32> %i.ba, splat (i32 13)
  %i.bc = or <4 x i32> %i.bb, %i.ag
  %i.bd = trunc <4 x i32> %i.bc to <4 x i16>
  %i.be = or disjoint <4 x i16> %i.w, splat (i16 31744)
  %i.bf = and <4 x i32> %i.ay, splat (i32 1023)   ; 2 uses
  %i.bg = icmp eq <4 x i32> %i.bf, zeroinitializer
  %i.bh = zext <4 x i1> %i.bg to <4 x i16>
  %i.bi = trunc nuw nsw <4 x i32> %i.bf to <4 x i16>
  %i.bj = or <4 x i16> %i.bi, %i.bh
  %i.bk = select <4 x i1> %i.al, <4 x i1> %i.ap, <4 x i1> zeroinitializer
  %i.bl = icmp samesign ult <4 x i32> %i.t, splat (i32 855638017)
  %i.bm = icmp samesign ult <4 x i32> %i.t, splat (i32 2139095041)
  %predphi = select <4 x i1> %i.bm, <4 x i16> zeroinitializer, <4 x i16> %i.bj
  %predphi1 = or disjoint <4 x i16> %i.be, %predphi
  %predphi2 = select <4 x i1> %i.aw, <4 x i16> %i.bd, <4 x i16> %predphi1
  %predphi3 = select <4 x i1> %i.bl, <4 x i16> %i.w, <4 x i16> %predphi2
  %predphi4 = select <4 x i1> %i.bk, <4 x i16> %i.ai, <4 x i16> %predphi3
  %predphi5 = select <4 x i1> %i.at, <4 x i16> %i.au, <4 x i16> %predphi4
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index
  store <4 x i16> %predphi5, ptr %i.bn, align 2, !tbaa !62
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @__const.LossyDctEncoder_base_construct.jpegQuantTableCbCr, i64 %index
  %wide.load6 = load <4 x i32>, ptr %i.bo, align 16, !tbaa !36
  %i.bp = sitofp <4 x i32> %wide.load6 to <4 x float>
  %i.bq = fmul <4 x float> %broadcast.splat, %i.bp
  %i.br = fdiv <4 x float> %i.bq, splat (float 1.700000e+01) ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  store <4 x float> %i.br, ptr %i.bs, align 4, !tbaa !103
  %i.bt = bitcast <4 x float> %i.br to <4 x i32>
  %i.bu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.br)
  %i.bv = bitcast <4 x float> %i.bu to <4 x i32>  ; 8 uses
  %i.bw = lshr <4 x i32> %i.bt, splat (i32 16)    ; 2 uses
  %i.bx = trunc nuw <4 x i32> %i.bw to <4 x i16>
  %i.by = and <4 x i16> %i.bx, splat (i16 -32768) ; 2 uses
  %i.bz = add nsw <4 x i32> %i.bv, splat (i32 -855638017)
  %i.ca = icmp ult <4 x i32> %i.bz, splat (i32 92274687) ; 2 uses
  %i.cb = lshr <4 x i32> %i.bv, splat (i32 23)    ; 2 uses
  %i.cc = sub nuw nsw <4 x i32> splat (i32 126), %i.cb
  %i.cd = and <4 x i32> %i.bv, splat (i32 8388607)
  %i.ce = or disjoint <4 x i32> %i.cd, splat (i32 8388608) ; 2 uses
  %i.cf = add nsw <4 x i32> %i.cb, splat (i32 -94)
  %i.cg = shl <4 x i32> %i.ce, %i.cf              ; 2 uses
  %i.ch = lshr <4 x i32> %i.ce, %i.cc             ; 2 uses
  %i.ci = and <4 x i32> %i.bw, splat (i32 32768)  ; 2 uses
  %i.cj = or <4 x i32> %i.ch, %i.ci
  %i.ck = trunc nuw <4 x i32> %i.cj to <4 x i16>  ; 2 uses
  %i.cl = icmp ugt <4 x i32> %i.cg, splat (i32 -2147483648) ; 2 uses
  %i.cm = xor <4 x i1> %i.cl, splat (i1 true)
  %i.cn = select <4 x i1> %i.ca, <4 x i1> %i.cm, <4 x i1> zeroinitializer ; 2 uses
  %i.co = icmp ne <4 x i32> %i.cg, splat (i32 -2147483648)
  %i.cp = and <4 x i32> %i.ch, splat (i32 1)
  %i.cq = icmp eq <4 x i32> %i.cp, zeroinitializer
  %i.cr = select <4 x i1> %i.co, <4 x i1> splat (i1 true), <4 x i1> %i.cq ; 2 uses
  %i.cs = xor <4 x i1> %i.cr, splat (i1 true)
  %i.ct = select <4 x i1> %i.cn, <4 x i1> %i.cs, <4 x i1> zeroinitializer
  %i.cu = select <4 x i1> %i.ca, <4 x i1> %i.cl, <4 x i1> zeroinitializer
  %i.cv = or <4 x i1> %i.ct, %i.cu
  %i.cw = add nuw <4 x i16> %i.ck, splat (i16 1)
  %i.cx = add nsw <4 x i32> %i.bv, splat (i32 -947912704)
  %i.cy = icmp ult <4 x i32> %i.cx, splat (i32 251654144)
  %i.cz = add nuw nsw <4 x i32> %i.bv, splat (i32 134221823)
  %i.da = lshr <4 x i32> %i.bv, splat (i32 13)    ; 2 uses
  %i.db = and <4 x i32> %i.da, splat (i32 1)
  %i.dc = add nuw nsw <4 x i32> %i.cz, %i.db
  %i.dd = lshr <4 x i32> %i.dc, splat (i32 13)
  %i.de = or <4 x i32> %i.dd, %i.ci
  %i.df = trunc <4 x i32> %i.de to <4 x i16>
  %i.dg = or disjoint <4 x i16> %i.by, splat (i16 31744)
  %i.dh = and <4 x i32> %i.da, splat (i32 1023)   ; 2 uses
  %i.di = icmp eq <4 x i32> %i.dh, zeroinitializer
  %i.dj = zext <4 x i1> %i.di to <4 x i16>
  %i.dk = trunc nuw nsw <4 x i32> %i.dh to <4 x i16>
  %i.dl = or <4 x i16> %i.dk, %i.dj
  %i.dm = select <4 x i1> %i.cn, <4 x i1> %i.cr, <4 x i1> zeroinitializer
  %i.dn = icmp samesign ult <4 x i32> %i.bv, splat (i32 855638017)
  %i.do = icmp samesign ult <4 x i32> %i.bv, splat (i32 2139095041)
  %predphi7 = select <4 x i1> %i.do, <4 x i16> zeroinitializer, <4 x i16> %i.dl
end_hunk_2
