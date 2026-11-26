Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sgrep?download=true
inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@prep:bb.a
  br i1 %or.cond148, label %._crit_edge105.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %._crit_edge
  %wide.trip.count130 = zext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count, 1
  %i.as = icmp eq i32 %2, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod152.not = icmp eq i64 %xtraiter149, 0
  %lcmp.mod155 = trunc i32 %i.a to i1
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge93
  %.2102 = phi i32 [ %i.cf, %._crit_edge93 ], [ 0, %.preheader.lr.ph.preheader ] ; 3 uses
  %shift_1.promoted8699101 = phi i32 [ %shift_1.promoted8695.lcssa, %._crit_edge93 ], [ %i.b, %.preheader.lr.ph.preheader ] ; 2 uses
  %i.at = mul i32 %i.b, %.2102
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge85
  %indvars.iv127 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next128, %._crit_edge85 ] ; 5 uses
  %shift_1.promoted8697 = phi i32 [ %shift_1.promoted8699101, %.preheader.lr.ph ], [ %shift_1.promoted8695.lcssa, %._crit_edge85 ] ; 2 uses
  %shift_1.promoted9091 = phi i32 [ %shift_1.promoted8699101, %.preheader.lr.ph ], [ %shift_1.promoted87.lcssa, %._crit_edge85 ] ; 4 uses
  %i.au = trunc nuw nsw i64 %indvars.iv127 to i32 ; 12 uses
  %i.av = add i32 %i.at, %i.au
  %i.aw = sub i32 %i.e, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax ; 3 uses
  %.pre142 = load i8, ptr %i.ay, align 1, !tbaa !35 ; 2 uses
  br i1 %i.as, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.i
  %i.az = phi i8 [ %i.bu, %bb.i ], [ %.pre142, %.preheader ] ; 2 uses
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.1, %bb.i ], [ 0, %.preheader ] ; 3 uses
  %shift_1.promoted8696 = phi i32 [ %shift_1.promoted8695.1, %bb.i ], [ %shift_1.promoted8697, %.preheader ]
  %shift_1.promoted88 = phi i32 [ %shift_1.promoted87.1, %bb.i ], [ %shift_1.promoted9091, %.preheader ]
  %i.ba = phi i32 [ %i.bv, %bb.i ], [ %shift_1.promoted9091, %.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.i ], [ 0, %.preheader ]
  %i.bb = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.bc = mul i32 %i.b, %i.bb
  %i.bd = sub i32 %i.e, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  %i.bh = icmp eq i8 %i.az, %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = icmp slt i64 %indvars.iv127, %i.bi
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.new
  store i32 %i.au, ptr @shift_1, align 4, !tbaa !20
  %.pre = load i8, ptr %i.ay, align 1, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %.preheader.new, %bb.f
  %i.bk = phi i8 [ %i.az, %.preheader.new ], [ %.pre, %bb.f ] ; 2 uses
  %shift_1.promoted8695 = phi i32 [ %shift_1.promoted8696, %.preheader.new ], [ %i.au, %bb.f ]
  %shift_1.promoted87 = phi i32 [ %shift_1.promoted88, %.preheader.new ], [ %i.au, %bb.f ]
  %i.bl = phi i32 [ %i.ba, %.preheader.new ], [ %i.au, %bb.f ] ; 2 uses
  %i.bm = trunc i64 %indvars.iv124 to i32
  %.neg = xor i32 %i.bm, -1
  %.neg156 = mul i32 %i.b, %.neg
  %i.bn = add i32 %.neg156, %i.e
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = icmp eq i8 %i.bk, %i.bq
  %i.bs = sext i32 %i.bl to i64
  %i.bt = icmp slt i64 %indvars.iv127, %i.bs
  %or.cond.1 = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.au, ptr @shift_1, align 4, !tbaa !20
  %.pre.1 = load i8, ptr %i.ay, align 1, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bu = phi i8 [ %i.bk, %bb.g ], [ %.pre.1, %bb.h ] ; 2 uses
  %shift_1.promoted8695.1 = phi i32 [ %shift_1.promoted8695, %bb.g ], [ %i.au, %bb.h ] ; 3 uses
  %shift_1.promoted87.1 = phi i32 [ %shift_1.promoted87, %bb.g ], [ %i.au, %bb.h ] ; 3 uses
  %i.bv = phi i32 [ %i.bl, %bb.g ], [ %i.au, %bb.h ] ; 2 uses
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge85.unr-lcssa, label %.preheader.new, !llvm.loop !79

._crit_edge85.unr-lcssa:                          ; preds = %bb.i
  br i1 %lcmp.mod152.not, label %._crit_edge85, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge85.unr-lcssa, %.preheader
  %.epil.init = phi i8 [ %.pre142, %.preheader ], [ %i.bu, %._crit_edge85.unr-lcssa ]
  %indvars.iv124.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next125.1, %._crit_edge85.unr-lcssa ]
  %shift_1.promoted8696.epil.init = phi i32 [ %shift_1.promoted8697, %.preheader ], [ %shift_1.promoted8695.1, %._crit_edge85.unr-lcssa ]
  %shift_1.promoted88.epil.init = phi i32 [ %shift_1.promoted9091, %.preheader ], [ %shift_1.promoted87.1, %._crit_edge85.unr-lcssa ]
  %.epil.init151 = phi i32 [ %shift_1.promoted9091, %.preheader ], [ %i.bv, %._crit_edge85.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.bw = trunc nuw nsw i64 %indvars.iv124.epil.init to i32
  %i.bx = mul i32 %i.b, %i.bw
  %i.by = sub i32 %i.e, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !35
  %i.cc = icmp eq i8 %.epil.init, %i.cb
  %i.cd = sext i32 %.epil.init151 to i64
  %i.ce = icmp slt i64 %indvars.iv127, %i.cd
  %or.cond.epil = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %or.cond.epil, label %bb.j, label %._crit_edge85

bb.j:                                             ; preds = %.epil.preheader
  store i32 %i.au, ptr @shift_1, align 4, !tbaa !20
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %.epil.preheader, %bb.j, %._crit_edge85.unr-lcssa
  %shift_1.promoted8695.lcssa = phi i32 [ %shift_1.promoted8695.1, %._crit_edge85.unr-lcssa ], [ %shift_1.promoted8696.epil.init, %.epil.preheader ], [ %i.au, %bb.j ] ; 3 uses
  %shift_1.promoted87.lcssa = phi i32 [ %shift_1.promoted87.1, %._crit_edge85.unr-lcssa ], [ %shift_1.promoted88.epil.init, %.epil.preheader ], [ %i.au, %bb.j ]
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge93, label %.preheader, !llvm.loop !80

._crit_edge93:                                    ; preds = %._crit_edge85
  %i.cf = add nuw i32 %.2102, 1
  %exitcond132.not = icmp eq i32 %.2102, %2
  br i1 %exitcond132.not, label %._crit_edge105.split, label %.preheader.lr.ph, !llvm.loop !81

._crit_edge105.split:                             ; preds = %._crit_edge93, %._crit_edge
  %i.cg = phi i32 [ %i.b, %._crit_edge ], [ %shift_1.promoted8695.lcssa, %._crit_edge93 ]
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge105.split
  store i32 1, ptr @shift_1, align 4, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge105.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @MEMBER, i8 0, i64 8192, i1 false), !tbaa !35
  br i1 %.not72100, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.l
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.lr.ph118.split, label %.lr.ph111.us.preheader

.lr.ph111.us.preheader:                           ; preds = %.lr.ph118
  %exitcond140.not = icmp eq i32 %i.b, 1
  %exitcond140.not.1 = icmp eq i32 %i.b, 2
  br label %.lr.ph111.us

.lr.ph111.us:                                     ; preds = %.lr.ph111.us.preheader, %._crit_edge112.us
  %.4116.us = phi i32 [ %i.df, %._crit_edge112.us ], [ 0, %.lr.ph111.us.preheader ] ; 3 uses
  %i.ci = mul i32 %i.b, %.4116.us                 ; 3 uses
  %i.cj = sub i32 %i.e, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !35
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  br i1 %exitcond140.not, label %._crit_edge112.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph111.us
  %i.co = shl nuw nsw i32 %i.cn, 2
  %.neg157 = xor i32 %i.ci, -1
  %i.cp = add i32 %i.e, %.neg157
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.co, %i.ct            ; 2 uses
  br i1 %exitcond140.not.1, label %._crit_edge112.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = shl nuw nsw i32 %i.cu, 2
  %i.cw = add i32 %i.ci, 2
  %i.cx = sub i32 %i.e, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %0, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !35
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %i.cv, %i.db
  br label %._crit_edge112.us

._crit_edge112.us:                                ; preds = %bb.n, %bb.m, %.lr.ph111.us
  %.lcssa = phi i32 [ %i.cn, %.lr.ph111.us ], [ %i.cu, %bb.m ], [ %i.dc, %bb.n ]
  %i.dd = zext i32 %.lcssa to i64
  %i.de = getelementptr inbounds nuw i8, ptr @MEMBER, i64 %i.dd
  store i8 1, ptr %i.de, align 1, !tbaa !35
  %i.df = add nuw i32 %.4116.us, 1
  %exitcond141.not = icmp eq i32 %.4116.us, %2
  br i1 %exitcond141.not, label %._crit_edge119, label %.lr.ph111.us, !llvm.loop !82

.lr.ph118.split:                                  ; preds = %.lr.ph118
  store i8 1, ptr @MEMBER, align 16, !tbaa !35
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge112.us, %.lr.ph118.split, %bb.l
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @agrep(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 !guid !92 {
bb.a:
  %i.a = alloca [2048 x [2 x i32]], align 16      ; 10 uses
  %i.b = alloca [21 x i32], align 16              ; 24 uses
  %i.c = alloca [21 x i32], align 16              ; 23 uses
  %i.d = add i32 %4, 1                            ; 2 uses
  %i.e = sdiv i32 %1, %i.d                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !20
  store i32 0, ptr %i.a, align 16, !tbaa !20
  %i.g = load i32, ptr @shift_1, align 4, !tbaa !20 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.e, i32 3) ; 3 uses
  %i.h = icmp ult ptr %2, %3
  br i1 %i.h, label %.lr.ph236, label %.._crit_edge237_crit_edge

.._crit_edge237_crit_edge:                        ; preds = %bb.a
  %.pre = ptrtoint ptr %2 to i64
  br label %._crit_edge237

.lr.ph236:                                        ; preds = %bb.a
  %i.i = add nsw i32 %i.e, -1                     ; 2 uses
  %i.j = icmp ugt i32 %., 1
  %i.k = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.l = add i32 %4, %1                           ; 6 uses
  br i1 %i.j, label %.lr.ph236.split.us.preheader, label %.lr.ph236.split.preheader

.lr.ph236.split.preheader:                        ; preds = %.lr.ph236
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not340 = icmp ult ptr %i.n, %3
  br i1 %.not340, label %.lr.ph342.preheader, label %._crit_edge237

.lr.ph342.preheader:                              ; preds = %.lr.ph236.split.preheader
  %i.o = sext i32 %i.g to i64
  br label %.lr.ph342

.lr.ph236.split.us.preheader:                     ; preds = %.lr.ph236
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p ; 2 uses
  %.not.us344 = icmp ult ptr %i.q, %3
  br i1 %.not.us344, label %.lr.ph346.preheader, label %._crit_edge237

.lr.ph346.preheader:                              ; preds = %.lr.ph236.split.us.preheader
  %wide.trip.count = zext i32 %. to i64
  %i.r = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = add i32 %., -2
  %i.t = icmp ult i32 %i.s, 3
  %unroll_iter = and i64 %i.r, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod353 = icmp ne i64 %xtraiter, 0
  %i.u = sext i32 %i.g to i64
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346.preheader, %.lr.ph236.split.us
  %i.v = phi ptr [ %i.cf, %.lr.ph236.split.us ], [ %i.q, %.lr.ph346.preheader ] ; 3 uses
  %.0142234.us345 = phi i32 [ %.2144.us, %.lr.ph236.split.us ], [ 0, %.lr.ph346.preheader ] ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35    ; 2 uses
  %.old1.not.us = icmp eq i8 %i.z, 0
  br i1 %.old1.not.us, label %.loopexit227.us, label %.preheader226.us

.preheader226.us:                                 ; preds = %.lr.ph346, %bb.b
  %.1160.us = phi ptr [ %i.ah, %bb.b ], [ %i.v, %.lr.ph346 ]
  %.1152.in.us = phi i8 [ %i.al, %bb.b ], [ %i.z, %.lr.ph346 ]
  %i.aa = zext i8 %.1152.in.us to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.1160.us, i64 %i.aa ; 4 uses
  %.not172.us = icmp ult ptr %i.ab, %3
  br i1 %.not172.us, label %bb.b, label %.loopexit227.us

bb.b:                                             ; preds = %.preheader226.us
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35  ; 2 uses
  %i.am = icmp ult ptr %i.ah, %3
  %i.an = icmp ne i8 %i.al, 0
  %or.cond.us = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.us, label %.preheader226.us, label %.loopexit227.us, !llvm.loop !84

.loopexit227.us:                                  ; preds = %.preheader226.us, %bb.b, %.lr.ph346
  %.2161.us = phi ptr [ %i.v, %.lr.ph346 ], [ %i.ah, %bb.b ], [ %i.ab, %.preheader226.us ] ; 9 uses
  %.not173.us = icmp ult ptr %.2161.us, %3
  br i1 %.not173.us, label %.lr.ph.us, label %._crit_edge237

.lr.ph.us:                                        ; preds = %.loopexit227.us
  %i.ao = load i8, ptr %.2161.us, align 1, !tbaa !35
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 5 uses
  %.0150230.us = phi i32 [ %i.bn, %.lr.ph.us.new ], [ %i.ap, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.aq = sub nsw i64 0, %indvars.iv
  %i.ar = getelementptr inbounds i8, ptr %.2161.us, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = zext i8 %i.as to i32
  %i.au = shl i32 %.0150230.us, 4
  %i.av = shl nuw nsw i32 %i.at, 2
  %i.aw = add i32 %i.au, %i.av
  %i.ax = xor i64 %indvars.iv, -1
  %i.ay = getelementptr inbounds i8, ptr %.2161.us, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nsw i32 %i.aw, %i.ba
  %i.bc = sub nuw nsw i64 -2, %indvars.iv
  %i.bd = getelementptr inbounds i8, ptr %.2161.us, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl i32 %i.bb, 4
  %i.bh = shl nuw nsw i32 %i.bf, 2
  %i.bi = add i32 %i.bg, %i.bh
  %i.bj = sub nuw nsw i64 -3, %indvars.iv
  %i.bk = getelementptr inbounds i8, ptr %.2161.us, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !35
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bi, %i.bm                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !85

bb.c:                                             ; preds = %._crit_edge.us
  %i.bo = ptrtoint ptr %.2161.us to i64
  %i.bp = sub i64 %i.bo, %i.k
  %i.bq = trunc i64 %i.bp to i32                  ; 3 uses
  %i.br = sub i32 %i.bq, %i.l                     ; 2 uses
  %i.bs = add nsw i32 %i.br, -10
  %i.bt = sext i32 %.0142234.us345 to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20
  %i.bx = icmp sgt i32 %i.bs, %i.bw
  br i1 %i.bx, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = add i32 %i.l, %i.bq
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !20
  br label %.lr.ph236.split.us

bb.e:                                             ; preds = %bb.c
  %i.bz = add nsw i32 %i.br, -2
  %i.ca = add nsw i32 %.0142234.us345, 1          ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cb ; 2 uses
  store i32 %i.bz, ptr %i.cc, align 8, !tbaa !20
  %i.cd = add i32 %i.l, %i.bq
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !20
  br label %.lr.ph236.split.us

.lr.ph236.split.us:                               ; preds = %bb.e, %bb.d, %._crit_edge.us
  %.2144.us = phi i32 [ %.0142234.us345, %bb.d ], [ %i.ca, %bb.e ], [ %.0142234.us345, %._crit_edge.us ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.2161.us, i64 %i.u ; 2 uses
  %.not.us = icmp ult ptr %i.cf, %3
  br i1 %.not.us, label %.lr.ph346, label %._crit_edge237

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0150230.us.epil.init = phi i32 [ %i.ap, %.lr.ph.us ], [ %i.bn, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod353)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %.0150230.us.epil = phi i32 [ %.0150230.us.epil.init, %.epil.preheader ], [ %i.cl, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.cg = shl i32 %.0150230.us.epil, 2
  %i.ch = sub nsw i64 0, %indvars.iv.epil
  %i.ci = getelementptr inbounds i8, ptr %.2161.us, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nsw i32 %i.cg, %i.ck                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.f, !llvm.loop !86

._crit_edge.us:                                   ; preds = %bb.f, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.bn, %._crit_edge.us.unr-lcssa ], [ %i.cl, %bb.f ]
  %i.cm = sext i32 %.lcssa to i64
  %i.cn = getelementptr inbounds i8, ptr @MEMBER, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !35
  %.not174.us = icmp eq i8 %i.co, 0
  br i1 %.not174.us, label %.lr.ph236.split.us, label %bb.c

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %.lr.ph236.split
  %i.cp = phi ptr [ %i.ed, %.lr.ph236.split ], [ %i.n, %.lr.ph342.preheader ] ; 3 uses
  %.0142234341 = phi i32 [ %.2144, %.lr.ph236.split ], [ 0, %.lr.ph342.preheader ] ; 5 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !35
end_hunk_0
begin_hunk_1_@agrep:bb.a
  br i1 %.old1.not, label %.loopexit227, label %.preheader226

.preheader226:                                    ; preds = %.lr.ph342, %bb.g
  %.1160 = phi ptr [ %i.db, %bb.g ], [ %i.cp, %.lr.ph342 ]
  %.1152.in = phi i8 [ %i.df, %bb.g ], [ %i.ct, %.lr.ph342 ]
  %i.cu = zext i8 %.1152.in to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.1160, i64 %i.cu ; 4 uses
  %.not172 = icmp ult ptr %i.cv, %3
  br i1 %.not172, label %bb.g, label %.loopexit227

bb.g:                                             ; preds = %.preheader226
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !35
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !35
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.da ; 4 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !35
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35  ; 2 uses
  %i.dg = icmp ult ptr %i.db, %3
  %i.dh = icmp ne i8 %i.df, 0
  %or.cond = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond, label %.preheader226, label %.loopexit227, !llvm.loop !84

.loopexit227:                                     ; preds = %bb.g, %.preheader226, %.lr.ph342
  %.2161 = phi ptr [ %i.cp, %.lr.ph342 ], [ %i.db, %bb.g ], [ %i.cv, %.preheader226 ] ; 4 uses
  %.not173 = icmp ult ptr %.2161, %3
  br i1 %.not173, label %bb.h, label %._crit_edge237

bb.h:                                             ; preds = %.loopexit227
  %i.di = load i8, ptr %.2161, align 1, !tbaa !35
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @MEMBER, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !35
  %.not174 = icmp eq i8 %i.dl, 0
  br i1 %.not174, label %.lr.ph236.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = ptrtoint ptr %.2161 to i64
  %i.dn = sub i64 %i.dm, %i.k
  %i.do = trunc i64 %i.dn to i32                  ; 3 uses
  %i.dp = sub i32 %i.do, %i.l                     ; 2 uses
  %i.dq = add nsw i32 %i.dp, -10
  %i.dr = sext i32 %.0142234341 to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !20
  %i.dv = icmp sgt i32 %i.dq, %i.du
  br i1 %i.dv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dw = add nsw i32 %i.dp, -2
  %i.dx = add nsw i32 %.0142234341, 1             ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dy ; 2 uses
  store i32 %i.dw, ptr %i.dz, align 8, !tbaa !20
  %i.ea = add i32 %i.l, %i.do
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !20
  br label %.lr.ph236.split

bb.k:                                             ; preds = %bb.i
  %i.ec = add i32 %i.l, %i.do
  store i32 %i.ec, ptr %i.dt, align 4, !tbaa !20
  br label %.lr.ph236.split

.lr.ph236.split:                                  ; preds = %bb.h, %bb.j, %bb.k
  %.2144 = phi i32 [ %.0142234341, %bb.k ], [ %i.dx, %bb.j ], [ %.0142234341, %bb.h ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.2161, i64 %i.o ; 2 uses
  %.not = icmp ult ptr %i.ed, %3
  br i1 %.not, label %.lr.ph342, label %._crit_edge237

._crit_edge237:                                   ; preds = %.loopexit227, %.lr.ph236.split, %.loopexit227.us, %.lr.ph236.split.us, %.lr.ph236.split.preheader, %.lr.ph236.split.us.preheader, %.._crit_edge237_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge237_crit_edge ], [ %i.k, %.lr.ph236.split.us.preheader ], [ %i.k, %.loopexit227.us ], [ %i.k, %.lr.ph236.split.preheader ], [ %i.k, %.lr.ph236.split.us ], [ %i.k, %.lr.ph236.split ], [ %i.k, %.loopexit227 ]
  %.0142.lcssa = phi i32 [ 0, %.._crit_edge237_crit_edge ], [ 0, %.lr.ph236.split.us.preheader ], [ %.2144.us, %.lr.ph236.split.us ], [ 0, %.lr.ph236.split.preheader ], [ %.0142234.us345, %.loopexit227.us ], [ %.2144, %.lr.ph236.split ], [ %.0142234341, %.loopexit227 ] ; 2 uses
  %i.ee = ptrtoint ptr %3 to i64
  %i.ef = sub i64 %i.ee, %.pre-phi
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !20
  %spec.store.select187 = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 0)
  store i32 %spec.store.select187, ptr %i.eh, align 8, !tbaa !20
  %i.ej = load i32, ptr @endposition, align 4, !tbaa !20 ; 2 uses
  %.not175271 = icmp slt i32 %.0142.lcssa, 0
  br i1 %.not175271, label %.loopexit224, label %.lr.ph275

.lr.ph275:                                        ; preds = %._crit_edge237
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.not176245 = icmp slt i32 %4, 1                ; 3 uses
  %.not177247 = icmp slt i32 %4, 0                ; 4 uses
  %i.em = sext i32 %4 to i64                      ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.em
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.em
  %i.ep = zext i32 %i.d to i64                    ; 3 uses
  %i.eq = shl nuw nsw i64 %i.ep, 2                ; 8 uses
  %i.er = add nuw i32 %.0142.lcssa, 1
  %wide.trip.count314 = zext i32 %i.er to i64
  %i.es = add nsw i64 %i.ep, -1                   ; 9 uses
  %i.et = add nsw i64 %i.ep, -2                   ; 3 uses
  %xtraiter354 = and i64 %i.es, 1
  %i.eu = icmp eq i64 %i.et, 0
  %unroll_iter358 = and i64 %i.es, -2
  %lcmp.mod356.not = icmp eq i64 %xtraiter354, 0
  %lcmp.mod357 = trunc i64 %i.es to i1
  %xtraiter360 = and i64 %i.es, 1
  %i.ev = icmp eq i64 %i.et, 0
  %unroll_iter366 = and i64 %i.es, -2
  %lcmp.mod364.not = icmp eq i64 %xtraiter360, 0
  %lcmp.mod365 = trunc i64 %i.es to i1
  %xtraiter368 = and i64 %i.es, 1
  %i.ew = icmp eq i64 %i.et, 0
  %unroll_iter376 = and i64 %i.es, -2
  %lcmp.mod374.not = icmp eq i64 %xtraiter368, 0
  %lcmp.mod375 = trunc i64 %i.es to i1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph275, %._crit_edge270
  %indvars.iv311 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next312, %._crit_edge270 ] ; 2 uses
  %.0140273 = phi i32 [ 0, %.lr.ph275 ], [ %.1.lcssa, %._crit_edge270 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv311 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !20
  %spec.store.select188 = tail call i32 @llvm.smin.i32(i32 %i.fa, i32 %i.eg) ; 3 uses
  store i32 %spec.store.select188, ptr %i.ez, align 4, !tbaa !20
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 0) ; 2 uses
  store i32 -1, ptr %i.c, align 16, !tbaa !20
  store i32 -1, ptr %i.b, align 16, !tbaa !20
  store i32 2147483647, ptr %i.ek, align 4, !tbaa !20
  store i32 2147483647, ptr %i.el, align 4, !tbaa !20
  br i1 %.not176245, label %.preheader223, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %load_initial = load i32, ptr %i.b, align 16    ; 2 uses
  br i1 %i.eu, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader223.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  br i1 %lcmp.mod356.not, label %.preheader223, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader223.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.fm, %.preheader223.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv284.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next285.1, %.preheader223.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod357)
  %i.fb = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv284.epil.init
  %i.fc = lshr i32 %store_forwarded.epil.init, 1
  %i.fd = and i32 %i.fc, %store_forwarded.epil.init ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv284.epil.init
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !20
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !20
  br label %.preheader223

.preheader223:                                    ; preds = %.lr.ph.epil.preheader, %.preheader223.loopexit.unr-lcssa, %bb.l
  %i.ff = icmp slt i32 %spec.store.select, %spec.store.select188
  br i1 %i.ff, label %.lr.ph269, label %._crit_edge270

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %i.fm, %.lr.ph ], [ %load_initial, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv284 = phi i64 [ %indvars.iv.next285.1, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %niter359 = phi i64 [ %niter359.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fg = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv284
  %i.fh = lshr i32 %store_forwarded, 1
  %i.fi = and i32 %i.fh, %store_forwarded         ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv284
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !20
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !20
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv.next285
  %i.fl = lshr i32 %i.fi, 1
  %i.fm = and i32 %i.fl, %i.fi                    ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next285
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !20
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !20
  %indvars.iv.next285.1 = add nuw nsw i64 %indvars.iv284, 2 ; 2 uses
  %niter359.next.1 = add nuw i64 %niter359, 2     ; 2 uses
  %niter359.ncmp.1 = icmp eq i64 %niter359.next.1, %unroll_iter358
  br i1 %niter359.ncmp.1, label %.preheader223.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !87

.lr.ph269:                                        ; preds = %.preheader223, %.loopexit
  %.1268 = phi i32 [ %.3, %.loopexit ], [ %.0140273, %.preheader223 ] ; 3 uses
  %.0154267 = phi i32 [ %.4158, %.loopexit ], [ %spec.store.select, %.preheader223 ] ; 3 uses
  %i.fo = add nsw i32 %.0154267, 1                ; 5 uses
  %i.fp = sext i32 %.0154267 to i64
  %i.fq = getelementptr inbounds i8, ptr %2, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !35  ; 2 uses
  %i.fs = icmp ne i8 %i.fr, 10
  %brmerge = or i1 %i.fs, %.not177247
  br i1 %brmerge, label %.loopexit222, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %.lr.ph269
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !20
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !20
  br label %.loopexit222

.loopexit222:                                     ; preds = %.lr.ph249.preheader, %.lr.ph269
  %i.ft = zext i8 %i.fr to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @Mask, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !20 ; 4 uses
  %i.fw = load i32, ptr %i.c, align 16, !tbaa !20
  %i.fx = lshr i32 %i.fw, 1
  %i.fy = or i32 %i.fx, %i.fv
  store i32 %i.fy, ptr %i.b, align 16, !tbaa !20
  br i1 %.not176245, label %._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %.loopexit222
  %load_initial349 = load i32, ptr %i.b, align 16 ; 2 uses
  br i1 %i.ev, label %.lr.ph252.epil.preheader, label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %.lr.ph252
  %i.fz = phi i32 [ %i.gq, %.lr.ph252 ], [ %load_initial349, %.lr.ph252.preheader ]
  %indvars.iv292 = phi i64 [ %indvars.iv.next293.1, %.lr.ph252 ], [ 1, %.lr.ph252.preheader ] ; 5 uses
  %niter367 = phi i64 [ %niter367.next.1, %.lr.ph252 ], [ 0, %.lr.ph252.preheader ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv292
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !20 ; 3 uses
  %i.gc = lshr i32 %i.gb, 1
  %i.gd = or i32 %i.gc, %i.fv
  %5 = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv292
  %6 = getelementptr i8, ptr %5, i64 -4
  %7 = load i32, ptr %6, align 4, !tbaa !20       ; 2 uses
  %i.ge = and i32 %i.fz, %7
  %i.gf = lshr i32 %i.ge, 1
  %i.gg = and i32 %i.gd, %i.gf
  %i.gh = and i32 %i.gg, %7                       ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv292
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !20
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next293
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !20
  %i.gl = lshr i32 %i.gk, 1
  %i.gm = or i32 %i.gl, %i.fv
  %i.gn = and i32 %i.gh, %i.gb
  %i.go = lshr i32 %i.gn, 1
  %i.gp = and i32 %i.gm, %i.go
  %i.gq = and i32 %i.gp, %i.gb                    ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next293
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !20
  %indvars.iv.next293.1 = add nuw nsw i64 %indvars.iv292, 2 ; 2 uses
  %niter367.next.1 = add nuw i64 %niter367, 2     ; 2 uses
  %niter367.ncmp.1 = icmp eq i64 %niter367.next.1, %unroll_iter366
  br i1 %niter367.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph252, !llvm.loop !88

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph252
  br i1 %lcmp.mod364.not, label %._crit_edge, label %.lr.ph252.epil.preheader

.lr.ph252.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph252.preheader
  %.epil.init363 = phi i32 [ %load_initial349, %.lr.ph252.preheader ], [ %i.gq, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv292.epil.init = phi i64 [ 1, %.lr.ph252.preheader ], [ %indvars.iv.next293.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod365)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv292.epil.init
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !20
  %i.gu = lshr i32 %i.gt, 1
  %i.gv = or i32 %i.gu, %i.fv
  %8 = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv292.epil.init
  %9 = getelementptr i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 4, !tbaa !20      ; 2 uses
  %i.gw = and i32 %.epil.init363, %10
  %i.gx = lshr i32 %i.gw, 1
  %i.gy = and i32 %i.gv, %i.gx
  %i.gz = and i32 %i.gy, %10
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv292.epil.init
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph252.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.loopexit222
  %i.hb = load i32, ptr %i.en, align 4, !tbaa !20
  %i.hc = and i32 %i.hb, %i.ej
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.m, label %.loopexit220

bb.m:                                             ; preds = %._crit_edge
  %i.he = load i32, ptr @num_of_matched, align 4, !tbaa !20
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr @num_of_matched, align 4, !tbaa !20
  %i.hg = load i32, ptr @FILENAMEONLY, align 4, !tbaa !20
  %.not179 = icmp eq i32 %i.hg, 0
  br i1 %.not179, label %bb.n, label %.loopexit224

bb.n:                                             ; preds = %bb.m
  %.not180.not = icmp slt i32 %.0154267, %.1268
  br i1 %.not180.not, label %s_output.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hh = load i32, ptr @SILENT, align 4, !tbaa !20
  %.not.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i, label %bb.p, label %s_output.exit

bb.p:                                             ; preds = %bb.o
  %i.hi = load i32, ptr @COUNT, align 4, !tbaa !20
  %.not13.i = icmp eq i32 %i.hi, 0
  br i1 %.not13.i, label %bb.q, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.p
  %i.hj = sext i32 %i.fo to i64                   ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %2, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !35
  %.not1619.i = icmp eq i8 %i.hl, 10
  br i1 %.not1619.i, label %s_output.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.hj, %.preheader17.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.i
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !35
  %.not16.i = icmp eq i8 %i.hn, 10
  br i1 %.not16.i, label %s_output.exit.loopexit, label %.lr.ph.i, !llvm.loop !0

bb.q:                                             ; preds = %bb.p
  %i.ho = load i32, ptr @FNAME, align 4, !tbaa !20
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.hr = sext i32 %i.fo to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %bb.t ], [ %i.hr, %bb.s ] ; 4 uses
  %indvars.iv.next25.i = add nsw i64 %indvars.iv24.i, -1 ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next25.i
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !35
  %.not14.i = icmp eq i8 %i.ht, 10
  br i1 %.not14.i, label %.preheader.i, label %bb.t, !llvm.loop !1

.preheader.i:                                     ; preds = %bb.t
  %i.hu = getelementptr inbounds i8, ptr %2, i64 %indvars.iv24.i
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !35  ; 2 uses
  %.not1520.i = icmp eq i8 %i.hv, 10
  br i1 %.not1520.i, label %._crit_edge.i, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.preheader.i, %.lr.ph21.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph21.i ], [ %indvars.iv24.i, %.preheader.i ]
  %i.hw = phi i8 [ %i.ib, %.lr.ph21.i ], [ %i.hv, %.preheader.i ]
  %i.hx = zext i8 %i.hw to i32
  %i.hy = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.hz = tail call noundef i32 @putc(i32 noundef %i.hx, ptr noundef %i.hy), !inline_history !2 ; 0 uses
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, 1 ; 3 uses
  %i.ia = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next28.i
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !35  ; 2 uses
  %.not15.i = icmp eq i8 %i.ib, 10
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph21.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph21.i, %.preheader.i
  %.lcssa.in.i = phi i64 [ %indvars.iv24.i, %.preheader.i ], [ %indvars.iv.next28.i, %.lr.ph21.i ]
  %.lcssa.i = trunc i64 %.lcssa.in.i to i32
  %i.ic = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.id = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ic), !inline_history !2 ; 0 uses
  br label %s_output.exit

s_output.exit.loopexit:                           ; preds = %.lr.ph.i
  %i.ie = trunc nsw i64 %indvars.iv.next.i to i32
  br label %s_output.exit

s_output.exit:                                    ; preds = %s_output.exit.loopexit, %._crit_edge.i, %.preheader17.i, %bb.o, %bb.n
  %.1155 = phi i32 [ %.1268, %bb.n ], [ %.lcssa.i, %._crit_edge.i ], [ %i.fo, %.preheader17.i ], [ %i.fo, %bb.o ], [ %i.ie, %s_output.exit.loopexit ] ; 5 uses
  br i1 %.not177247, label %.loopexit220.thread, label %.lr.ph255.preheader

.loopexit220.thread:                              ; preds = %s_output.exit
  %i.if = sext i32 %.1155 to i64
  %i.ig = getelementptr inbounds i8, ptr %2, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !35
  br label %.loopexit219

.lr.ph255.preheader:                              ; preds = %s_output.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !20
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !20
  br label %.loopexit220

.loopexit220:                                     ; preds = %.lr.ph255.preheader, %._crit_edge
  %.2156 = phi i32 [ %i.fo, %._crit_edge ], [ %.1155, %.lr.ph255.preheader ] ; 3 uses
  %.2 = phi i32 [ %.1268, %._crit_edge ], [ %.1155, %.lr.ph255.preheader ] ; 2 uses
  %i.ii = sext i32 %.2156 to i64
  %i.ij = getelementptr inbounds i8, ptr %2, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !35  ; 2 uses
  %i.il = icmp ne i8 %i.ik, 10
  %brmerge278 = or i1 %i.il, %.not177247
  br i1 %brmerge278, label %.loopexit219, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %.loopexit220
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !20
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !20
  br label %.loopexit219

.loopexit219:                                     ; preds = %.loopexit220.thread, %.lr.ph258.preheader, %.loopexit220
  %i.im = phi i8 [ %i.ih, %.loopexit220.thread ], [ 10, %.lr.ph258.preheader ], [ %i.ik, %.loopexit220 ]
  %.2335 = phi i32 [ %.1155, %.loopexit220.thread ], [ %.2, %.lr.ph258.preheader ], [ %.2, %.loopexit220 ] ; 3 uses
  %.2156334 = phi i32 [ %.1155, %.loopexit220.thread ], [ %.2156, %.lr.ph258.preheader ], [ %.2156, %.loopexit220 ] ; 2 uses
  %i.in = add nsw i32 %.2156334, 1                ; 5 uses
  %i.io = zext i8 %i.im to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @Mask, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !20 ; 4 uses
  %i.ir = load i32, ptr %i.b, align 16, !tbaa !20
  %i.is = lshr i32 %i.ir, 1
  %i.it = or i32 %i.is, %i.iq
  store i32 %i.it, ptr %i.c, align 16, !tbaa !20
  br i1 %.not176245, label %._crit_edge263, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %.loopexit219
  %load_initial351 = load i32, ptr %i.c, align 16 ; 2 uses
  br i1 %i.ew, label %.lr.ph262.epil.preheader, label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %.lr.ph262
  %i.iu = phi i32 [ %i.jl, %.lr.ph262 ], [ %load_initial351, %.lr.ph262.preheader ]
  %indvars.iv303 = phi i64 [ %indvars.iv.next304.1, %.lr.ph262 ], [ 1, %.lr.ph262.preheader ] ; 5 uses
  %niter377 = phi i64 [ %niter377.next.1, %.lr.ph262 ], [ 0, %.lr.ph262.preheader ]
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv303
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !20 ; 3 uses
  %i.ix = lshr i32 %i.iw, 1
  %i.iy = or i32 %i.ix, %i.iq
  %11 = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv303
  %12 = getelementptr i8, ptr %11, i64 -4
  %13 = load i32, ptr %12, align 4, !tbaa !20     ; 2 uses
  %i.iz = and i32 %i.iu, %13
  %i.ja = lshr i32 %i.iz, 1
  %i.jb = and i32 %i.iy, %i.ja
  %i.jc = and i32 %i.jb, %13                      ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv303
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !20
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next304
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !20
  %i.jg = lshr i32 %i.jf, 1
  %i.jh = or i32 %i.jg, %i.iq
  %i.ji = and i32 %i.jc, %i.iw
  %i.jj = lshr i32 %i.ji, 1
  %i.jk = and i32 %i.jh, %i.jj
  %i.jl = and i32 %i.jk, %i.iw                    ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next304
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !20
  %indvars.iv.next304.1 = add nuw nsw i64 %indvars.iv303, 2 ; 2 uses
  %niter377.next.1 = add nuw i64 %niter377, 2     ; 2 uses
  %niter377.ncmp.1 = icmp eq i64 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %._crit_edge263.loopexit.unr-lcssa, label %.lr.ph262, !llvm.loop !89

._crit_edge263.loopexit.unr-lcssa:                ; preds = %.lr.ph262
  br i1 %lcmp.mod374.not, label %._crit_edge263, label %.lr.ph262.epil.preheader

.lr.ph262.epil.preheader:                         ; preds = %._crit_edge263.loopexit.unr-lcssa, %.lr.ph262.preheader
  %.epil.init373 = phi i32 [ %load_initial351, %.lr.ph262.preheader ], [ %i.jl, %._crit_edge263.loopexit.unr-lcssa ]
  %indvars.iv303.epil.init = phi i64 [ 1, %.lr.ph262.preheader ], [ %indvars.iv.next304.1, %._crit_edge263.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod375)
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv303.epil.init
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !20
  %i.jp = lshr i32 %i.jo, 1
  %i.jq = or i32 %i.jp, %i.iq
  %14 = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv303.epil.init
  %15 = getelementptr i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 4, !tbaa !20     ; 2 uses
  %i.jr = and i32 %.epil.init373, %16
  %i.js = lshr i32 %i.jr, 1
  %i.jt = and i32 %i.jq, %i.js
  %i.ju = and i32 %i.jt, %16
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv303.epil.init
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !20
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %.lr.ph262.epil.preheader, %._crit_edge263.loopexit.unr-lcssa, %.loopexit219
  %i.jw = load i32, ptr %i.eo, align 4, !tbaa !20
  %i.jx = and i32 %i.jw, %i.ej
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge263
  %i.jz = load i32, ptr @num_of_matched, align 4, !tbaa !20
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr @num_of_matched, align 4, !tbaa !20
  %i.kb = load i32, ptr @FILENAMEONLY, align 4, !tbaa !20
  %.not184 = icmp eq i32 %i.kb, 0
  br i1 %.not184, label %bb.v, label %.loopexit224

bb.v:                                             ; preds = %bb.u
  %.not185.not = icmp slt i32 %.2156334, %.2335
  br i1 %.not185.not, label %s_output.exit210, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kc = load i32, ptr @SILENT, align 4, !tbaa !20
  %.not.i189 = icmp eq i32 %i.kc, 0
  br i1 %.not.i189, label %bb.x, label %s_output.exit210

bb.x:                                             ; preds = %bb.w
  %i.kd = load i32, ptr @COUNT, align 4, !tbaa !20
  %.not13.i190 = icmp eq i32 %i.kd, 0
  br i1 %.not13.i190, label %bb.y, label %.preheader17.i191

.preheader17.i191:                                ; preds = %bb.x
  %i.ke = sext i32 %i.in to i64                   ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %2, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !35
  %.not1619.i193 = icmp eq i8 %i.kg, 10
  br i1 %.not1619.i193, label %s_output.exit210, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.preheader17.i191, %.lr.ph.i194
  %indvars.iv.i195 = phi i64 [ %indvars.iv.next.i196, %.lr.ph.i194 ], [ %i.ke, %.preheader17.i191 ]
  %indvars.iv.next.i196 = add nsw i64 %indvars.iv.i195, 1 ; 3 uses
  %i.kh = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.i196
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !35
  %.not16.i197 = icmp eq i8 %i.ki, 10
  br i1 %.not16.i197, label %s_output.exit210.loopexit, label %.lr.ph.i194, !llvm.loop !0

bb.y:                                             ; preds = %bb.x
  %i.kj = load i32, ptr @FNAME, align 4, !tbaa !20
  %i.kk = icmp eq i32 %i.kj, 1
  br i1 %i.kk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.kl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.km = sext i32 %i.in to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv24.i198 = phi i64 [ %indvars.iv.next25.i199, %bb.ab ], [ %i.km, %bb.aa ] ; 4 uses
  %indvars.iv.next25.i199 = add nsw i64 %indvars.iv24.i198, -1 ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next25.i199
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !35
  %.not14.i200 = icmp eq i8 %i.ko, 10
  br i1 %.not14.i200, label %.preheader.i201, label %bb.ab, !llvm.loop !1

.preheader.i201:                                  ; preds = %bb.ab
  %i.kp = getelementptr inbounds i8, ptr %2, i64 %indvars.iv24.i198
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !35  ; 2 uses
  %.not1520.i202 = icmp eq i8 %i.kq, 10
  br i1 %.not1520.i202, label %._crit_edge.i207, label %.lr.ph21.i203

.lr.ph21.i203:                                    ; preds = %.preheader.i201, %.lr.ph21.i203
  %indvars.iv27.i204 = phi i64 [ %indvars.iv.next28.i205, %.lr.ph21.i203 ], [ %indvars.iv24.i198, %.preheader.i201 ]
  %i.kr = phi i8 [ %i.kw, %.lr.ph21.i203 ], [ %i.kq, %.preheader.i201 ]
  %i.ks = zext i8 %i.kr to i32
  %i.kt = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.ku = tail call noundef i32 @putc(i32 noundef %i.ks, ptr noundef %i.kt), !inline_history !2 ; 0 uses
  %indvars.iv.next28.i205 = add nsw i64 %indvars.iv27.i204, 1 ; 3 uses
  %i.kv = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next28.i205
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !35  ; 2 uses
  %.not15.i206 = icmp eq i8 %i.kw, 10
  br i1 %.not15.i206, label %._crit_edge.i207, label %.lr.ph21.i203, !llvm.loop !3

._crit_edge.i207:                                 ; preds = %.lr.ph21.i203, %.preheader.i201
  %.lcssa.in.i208 = phi i64 [ %indvars.iv24.i198, %.preheader.i201 ], [ %indvars.iv.next28.i205, %.lr.ph21.i203 ]
  %.lcssa.i209 = trunc i64 %.lcssa.in.i208 to i32
  %i.kx = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.ky = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.kx), !inline_history !2 ; 0 uses
  br label %s_output.exit210

s_output.exit210.loopexit:                        ; preds = %.lr.ph.i194
  %i.kz = trunc nsw i64 %indvars.iv.next.i196 to i32
  br label %s_output.exit210

s_output.exit210:                                 ; preds = %s_output.exit210.loopexit, %._crit_edge.i207, %.preheader17.i191, %bb.w, %bb.v
  %.3157 = phi i32 [ %.2335, %bb.v ], [ %.lcssa.i209, %._crit_edge.i207 ], [ %i.in, %.preheader17.i191 ], [ %i.in, %bb.w ], [ %i.kz, %s_output.exit210.loopexit ] ; 4 uses
  br i1 %.not177247, label %.loopexit, label %.lr.ph266.preheader

.lr.ph266.preheader:                              ; preds = %s_output.exit210
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !20
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph266.preheader, %s_output.exit210, %._crit_edge263
  %.4158 = phi i32 [ %i.in, %._crit_edge263 ], [ %.3157, %s_output.exit210 ], [ %.3157, %.lr.ph266.preheader ] ; 2 uses
  %.3 = phi i32 [ %.2335, %._crit_edge263 ], [ %.3157, %s_output.exit210 ], [ %.3157, %.lr.ph266.preheader ] ; 2 uses
  %i.la = icmp slt i32 %.4158, %spec.store.select188
  br i1 %i.la, label %.lr.ph269, label %._crit_edge270, !llvm.loop !90

._crit_edge270:                                   ; preds = %.loopexit, %.preheader223
  %.1.lcssa = phi i32 [ %.0140273, %.preheader223 ], [ %.3, %.loopexit ]
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count314
  br i1 %exitcond315.not, label %.loopexit224, label %bb.l, !llvm.loop !91

.loopexit224:                                     ; preds = %._crit_edge270, %bb.u, %bb.m, %._crit_edge237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @prep_bm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 !guid !93 {
bb.a:
  %i.a = trunc i32 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %i.a, i64 256, i1 false), !tbaa !35
  %i.b = add i32 %1, -1                           ; 13 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.sink.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %i.b to i64                     ; 3 uses
  %i.e = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %i.e, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @TR, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i32
  %.not29.prol = icmp sgt i32 %i.b, %i.n
  br i1 %.not29.prol, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %.lr.ph.prol
  store i8 0, ptr %i.l, align 1, !tbaa !35
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.b, %.lr.ph.prol
  %indvars.iv.next.prol = add nsw i64 %i.d, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.o = icmp eq i32 %i.b, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @TR, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  %i.x = zext i8 %i.w to i32
  %.not29 = icmp sgt i32 %i.b, %i.x
  br i1 %.not29, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.y = trunc i64 %indvars.iv to i32
  %i.z = sub i32 %i.b, %i.y
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %i.v, align 1, !tbaa !35
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @TR, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = zext i8 %i.ai to i32
  %.not29.1 = icmp sgt i32 %i.b, %i.aj
  br i1 %.not29.1, label %bb.e, label %bb.d
end_hunk_1
