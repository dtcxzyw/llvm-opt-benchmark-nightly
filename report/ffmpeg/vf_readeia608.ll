Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_readeia608?download=true
inline.NumInlined: 12
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@extract_lines:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.v = sext i32 %i.k to i64
  br label %bb.b

._crit_edge:                                      ; preds = %extract_line.exit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %extract_line.exit
  %indvars.iv = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next, %extract_line.exit ] ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.x = getelementptr inbounds [48 x i8], ptr %i.w, i64 %indvars.iv ; 10 uses
  %i.y = load i32, ptr %i.t, align 8, !tbaa !51   ; 8 uses
  %i.z = load i32, ptr %i.f, align 8, !tbaa !27
  %i.aa = trunc nsw i64 %indvars.iv to i32
  %i.ab = add nsw i32 %i.z, %i.aa                 ; 3 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !19  ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52 ; 99 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.a, i8 0, i64 19, i1 false)
  %i.af = add i32 %i.y, 25                        ; 6 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ag, 24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 25 ; 4 uses
  store i8 0, ptr %i.aj, align 1, !tbaa !45
  store i8 0, ptr %i.ai, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47
  %i.ao = icmp sgt i32 %i.an, 8
  %i.ap = zext i1 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !84
  tail call void %i.ar(ptr noundef %1, i32 noundef %i.ab, ptr noundef %i.ae, i32 noundef %i.at, i32 noundef %i.y) #11, !inline_history !66
  %i.au = getelementptr i8, ptr %i.ac, i64 32     ; 2 uses
  %.val.i = load i32, ptr %i.au, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.ax = add nsw i32 %.val.i, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.az, i1 false)
  %i.ba = icmp sgt i32 %i.y, 0                    ; 3 uses
  br i1 %i.ba, label %.lr.ph.i.i, label %build_histogram.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !53 ; 3 uses
  %i.bc = add nuw i32 %i.y, 24                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 25) ; 2 uses
  %i.bd = zext nneg i32 %smax.i.i to i64          ; 2 uses
  %xtraiter = and i64 %i.bd, 1
  %i.be = icmp slt i32 %i.bc, 26
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %i.bf = and i64 %i.bd, 2147483646
  %i.bg = add nsw i64 %i.bf, -26
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 25, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.c ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !55
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !86
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !55
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !86
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !86
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.bg
  br i1 %niter.ncmp.1, label %build_histogram.exit.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !67

build_histogram.exit.i.loopexit.unr-lcssa:        ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %build_histogram.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %build_histogram.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 25, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %build_histogram.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod41 = trunc i32 %smax.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i.i.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !55
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !86
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !86
  br label %build_histogram.exit.i

build_histogram.exit.i:                           ; preds = %.epil.preheader, %build_histogram.exit.i.loopexit.unr-lcssa, %bb.b
  %.val106.i = load i32, ptr %i.au, align 8, !tbaa !48 ; 3 uses
  %.not4.i.i = icmp slt i32 %.val106.i, 0
  br i1 %.not4.i.i, label %._crit_edge11.i.i, label %.lr.ph.i107.i

.lr.ph.i107.i:                                    ; preds = %build_histogram.exit.i
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !53 ; 2 uses
  %i.cb = add nuw i32 %.val106.i, 1
  %wide.trip.count.i108.i = zext i32 %i.cb to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i107.i
  %indvars.iv.i109.i = phi i64 [ 0, %.lr.ph.i107.i ], [ %indvars.iv.next.i111.i, %bb.e ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i109.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !86
  %.not52.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not52.i.i, label %bb.e, label %._crit_edge.split.loop.exit40.i.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i111.i = add nuw nsw i64 %indvars.iv.i109.i, 1 ; 2 uses
  %exitcond.not.i112.i = icmp eq i64 %indvars.iv.next.i111.i, %wide.trip.count.i108.i
  br i1 %exitcond.not.i112.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !68

._crit_edge.split.loop.exit40.i.i:                ; preds = %bb.d
  %i.ce = trunc nuw nsw i64 %indvars.iv.i109.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %._crit_edge.split.loop.exit40.i.i
  %.048.i.i = phi i32 [ %i.ce, %._crit_edge.split.loop.exit40.i.i ], [ 0, %bb.e ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.0408.i.i = phi i32 [ %.val106.i, %._crit_edge.i.i ], [ %i.ci, %bb.g ] ; 4 uses
  %i.cf = zext nneg i32 %.0408.i.i to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !86
  %.not53.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not53.i.i, label %bb.g, label %._crit_edge11.i.i

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %.0408.i.i, -1
  %i.cj = icmp sgt i32 %.0408.i.i, 0
  br i1 %i.cj, label %bb.f, label %._crit_edge11.i.i, !llvm.loop !69

._crit_edge11.i.i:                                ; preds = %bb.g, %bb.f, %build_histogram.exit.i
  %.04839.i.i = phi i32 [ 0, %build_histogram.exit.i ], [ %.048.i.i, %bb.f ], [ %.048.i.i, %bb.g ] ; 5 uses
  %.047.i.i = phi i32 [ 0, %build_histogram.exit.i ], [ 0, %bb.g ], [ %.0408.i.i, %bb.f ] ; 3 uses
  %i.ck = sub nsw i32 %.047.i.i, %.04839.i.i      ; 2 uses
  %i.cl = sdiv i32 %i.ck, 2
  %i.cm = add i32 %i.cl, %.04839.i.i              ; 4 uses
  %.not5415.i.i = icmp slt i32 %i.ck, -1
  br i1 %.not5415.i.i, label %.preheader.i.i, label %.lr.ph20.i.i

.lr.ph20.i.i:                                     ; preds = %._crit_edge11.i.i
  %i.cn = load ptr, ptr %i.av, align 8, !tbaa !53 ; 3 uses
  %i.co = zext i32 %.04839.i.i to i64             ; 3 uses
  %smax.i110.i = tail call i32 @llvm.smax.i32(i32 %.04839.i.i, i32 %i.cm)
  %i.cp = zext nneg i32 %smax.i110.i to i64
  %i.cq = add nuw nsw i64 %i.cp, 1
  %i.cr = sub nsw i64 %i.cq, %i.co                ; 3 uses
  %xtraiter43 = and i64 %i.cr, 1
  %.not78 = icmp slt i32 %.04839.i.i, %i.cm
  br i1 %.not78, label %.lr.ph20.i.i.new, label %.epil.preheader42

.lr.ph20.i.i.new:                                 ; preds = %.lr.ph20.i.i
  %unroll_iter47 = and i64 %i.cr, -2
  br label %bb.h

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %bb.h
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.preheader.i.i, label %.epil.preheader42

.epil.preheader42:                                ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph20.i.i
  %indvars.iv30.i.i.epil.init = phi i64 [ %i.co, %.lr.ph20.i.i ], [ %indvars.iv.next31.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.04217.i.i.epil.init = phi i64 [ 0, %.lr.ph20.i.i ], [ %spec.select561.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ]
  %.04516.i.i.epil.init = phi i32 [ 0, %.lr.ph20.i.i ], [ %spec.select.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i64 %i.cr to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv30.i.i.epil.init
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !86
  %sext.i.i.epil = shl i64 %.04217.i.i.epil.init, 32
  %i.cu = ashr exact i64 %sext.i.i.epil, 32
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv30.i.i.epil.init to i32
  %spec.select.i.i.epil = select i1 %i.cv, i32 %i.cw, i32 %.04516.i.i.epil.init
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.epil.preheader42, %.preheader.i.i.loopexit.unr-lcssa, %._crit_edge11.i.i
  %.045.lcssa.i.i = phi i32 [ 0, %._crit_edge11.i.i ], [ %spec.select.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ], [ %spec.select.i.i.epil, %.epil.preheader42 ] ; 3 uses
  %.not5522.i.i = icmp slt i32 %.047.i.i, %i.cm
  br i1 %.not5522.i.i, label %find_black_and_white.exit.i, label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.preheader.i.i
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.cy = zext nneg i32 %.047.i.i to i64
  %i.cz = sext i32 %i.cm to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph20.i.i.new
  %indvars.iv30.i.i = phi i64 [ %i.co, %.lr.ph20.i.i.new ], [ %indvars.iv.next31.i.i.1, %bb.h ] ; 4 uses
  %.04217.i.i = phi i64 [ 0, %.lr.ph20.i.i.new ], [ %spec.select561.i.i.1, %bb.h ]
  %.04516.i.i = phi i32 [ 0, %.lr.ph20.i.i.new ], [ %spec.select.i.i.1, %bb.h ]
  %niter48 = phi i64 [ 0, %.lr.ph20.i.i.new ], [ %niter48.next.1, %bb.h ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv30.i.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !86 ; 2 uses
  %sext.i.i = shl i64 %.04217.i.i, 32
  %i.dc = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.dd = icmp ugt i64 %i.db, %i.dc
  %i.de = trunc nuw nsw i64 %indvars.iv30.i.i to i32
  %spec.select.i.i = select i1 %i.dd, i32 %i.de, i32 %.04516.i.i
  %spec.select561.i.i = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next31.i.i
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !86 ; 2 uses
  %sext.i.i.1 = shl i64 %spec.select561.i.i, 32
  %i.dh = ashr exact i64 %sext.i.i.1, 32          ; 2 uses
  %i.di = icmp ugt i64 %i.dg, %i.dh
  %i.dj = trunc nuw nsw i64 %indvars.iv.next31.i.i to i32
  %spec.select.i.i.1 = select i1 %i.di, i32 %i.dj, i32 %spec.select.i.i ; 3 uses
  %spec.select561.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %i.dh) ; 2 uses
  %indvars.iv.next31.i.i.1 = add nuw nsw i64 %indvars.iv30.i.i, 2 ; 2 uses
  %niter48.next.1 = add i64 %niter48, 2           ; 2 uses
  %niter48.ncmp.1 = icmp eq i64 %niter48.next.1, %unroll_iter47
  br i1 %niter48.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !70

bb.i:                                             ; preds = %bb.i, %.lr.ph26.i.i
  %indvars.iv35.i.i = phi i64 [ %i.cy, %.lr.ph26.i.i ], [ %niter55.next.1, %bb.i ] ; 4 uses
  %.224.i.i = phi i64 [ 0, %.lr.ph26.i.i ], [ %spec.select582.i.i.1, %bb.i ]
  %.04323.i.i = phi i32 [ 0, %.lr.ph26.i.i ], [ %spec.select57.i.i.1, %bb.i ]
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %indvars.iv35.i.i
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !86 ; 2 uses
  %sext3.i.i.1 = shl i64 %.224.i.i, 32
  %i.dm = ashr exact i64 %sext3.i.i.1, 32         ; 2 uses
  %i.dn = icmp ugt i64 %i.dl, %i.dm
  %i.do = trunc nsw i64 %indvars.iv35.i.i to i32
  %spec.select57.i.i.1 = select i1 %i.dn, i32 %i.do, i32 %.04323.i.i ; 2 uses
  %spec.select582.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.dm)
  %niter55.next.1 = add nsw i64 %indvars.iv35.i.i, -1
  %.not55.not.i.i = icmp sgt i64 %indvars.iv35.i.i, %i.cz
  br i1 %.not55.not.i.i, label %bb.i, label %find_black_and_white.exit.i, !llvm.loop !71

find_black_and_white.exit.i:                      ; preds = %bb.i, %.preheader.i.i
  %.043.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %spec.select57.i.i.1, %bb.i ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %.045.lcssa.i.i, ptr %i.dp, align 4, !tbaa !87
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %.043.lcssa.i.i, ptr %i.dq, align 8, !tbaa !88
  %i.dr = sub nsw i32 %.043.lcssa.i.i, %.045.lcssa.i.i
  %i.ds = icmp slt i32 %i.dr, 5
  br i1 %i.ds, label %extract_line.exit, label %bb.j

bb.j:                                             ; preds = %find_black_and_white.exit.i
  br i1 %i.ba, label %.lr.ph.preheader.i.i, label %.preheader.i113.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %smax.i116.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 26)
  %wide.trip.count.i117.i = zext nneg i32 %smax.i116.i to i64 ; 2 uses
  %i.dt = add nsw i64 %wide.trip.count.i117.i, -25 ; 3 uses
  %min.iters.check = icmp ult i64 %i.dt, 5
  br i1 %min.iters.check, label %.lr.ph.i118.i.preheader, label %vector.ph

.lr.ph.i118.i.preheader:                          ; preds = %vector.body, %.lr.ph.preheader.i.i
  %indvars.iv.i119.i.ph = phi i64 [ 25, %.lr.ph.preheader.i.i ], [ %i.dx, %vector.body ]
  br label %.lr.ph.i118.i

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %i.du = and i64 %i.dt, 3                        ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = select i1 %i.dv, i64 4, i64 %i.du
  %n.vec = sub nsw i64 %i.dt, %i.dw               ; 2 uses
  %i.dx = add nsw i64 %n.vec, 25
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %index ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 600
  %i.ea = getelementptr [24 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 624
  %i.ec = getelementptr [24 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 648
  %i.ee = getelementptr [24 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 672
  %i.eg = load i32, ptr %i.dz, align 4, !tbaa !55
  %i.eh = load i32, ptr %i.eb, align 4, !tbaa !55
  %i.ei = load i32, ptr %i.ed, align 4, !tbaa !55
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !55
  %i.ek = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %i.el = insertelement <4 x i32> %i.ek, i32 %i.eh, i64 1
  %i.em = insertelement <4 x i32> %i.el, i32 %i.ei, i64 2
  %i.en = insertelement <4 x i32> %i.em, i32 %i.ej, i64 3
  %i.eo = sitofp nsz <4 x i32> %i.en to <4 x float>
  %i.ep = fdiv nsz <4 x float> %i.eo, splat (float 2.550000e+02) ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 608
  %i.er = getelementptr i8, ptr %i.ea, i64 632
  %i.es = getelementptr i8, ptr %i.ec, i64 656
  %i.et = getelementptr i8, ptr %i.ee, i64 680
  %i.eu = extractelement <4 x float> %i.ep, i64 0 ; 2 uses
  store float %i.eu, ptr %i.eq, align 4, !tbaa !89
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dy, i64 612
  store float %i.eu, ptr %i.ev, align 4, !tbaa !90
  %i.ew = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  store <2 x float> %i.ew, ptr %i.er, align 4, !tbaa !91
  %i.ex = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  store <2 x float> %i.ex, ptr %i.es, align 4, !tbaa !91
  %i.ey = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  store <2 x float> %i.ey, ptr %i.et, align 4, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %.lr.ph.i118.i.preheader, label %vector.body, !llvm.loop !72

.preheader.i113.i:                                ; preds = %.lr.ph.i118.i, %bb.j
  %i.fa = sitofp nsz i32 %i.y to float            ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.fc = load float, ptr %i.fb, align 8, !tbaa !94
  %i.fd = fmul nsz float %i.fc, %i.fa
  %i.fe = fptosi float %i.fd to i32               ; 4 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  %i.fg = sitofp nsz i32 %i.fe to float           ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fe to i64  ; 2 uses
  br i1 %i.ff, label %.lr.ph.preheader.i.us.i.i.preheader, label %.preheader.split.i.i

.lr.ph.preheader.i.us.i.i.preheader:              ; preds = %.preheader.i113.i
  %xtraiter56 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.fh = icmp ult i32 %i.fe, 4
  %unroll_iter60 = and i64 %wide.trip.count.i.i.i, 2147483644
  %lcmp.mod57.not.a = icmp eq i64 %xtraiter56, 0
  %lcmp.mod59 = icmp ne i64 %xtraiter56, 0
  br label %.lr.ph.preheader.i.us.i.i

.lr.ph.preheader.i.us.i.i:                        ; preds = %.lr.ph.preheader.i.us.i.i.preheader, %meanf.exit106.loopexit.us.i.i
  %indvars.iv130.i.i = phi i64 [ %indvars.iv.next131.i.i, %meanf.exit106.loopexit.us.i.i ], [ 0, %.lr.ph.preheader.i.us.i.i.preheader ] ; 2 uses
  br i1 %i.fh, label %.lr.ph.i101.us.i.i.epil.preheader, label %.lr.ph.i101.us.i.i

.lr.ph.i101.us.i.i:                               ; preds = %.lr.ph.preheader.i.us.i.i, %.lr.ph.i101.us.i.i
  %indvars.iv.i102.us.i.i = phi i64 [ %indvars.iv.next.i104.us.i.i.3, %.lr.ph.i101.us.i.i ], [ 0, %.lr.ph.preheader.i.us.i.i ] ; 5 uses
  %.0810.i103.us.i.i = phi float [ %i.fx, %.lr.ph.i101.us.i.i ], [ 0.000000e+00, %.lr.ph.preheader.i.us.i.i ]
  %niter61 = phi i64 [ %niter61.next.3, %.lr.ph.i101.us.i.i ], [ 0, %.lr.ph.preheader.i.us.i.i ]
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !90
  %i.fl = fadd nsz float %.0810.i103.us.i.i, %i.fk
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !90
  %i.fp = fadd nsz float %i.fl, %i.fo
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 60
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !90
  %i.ft = fadd nsz float %i.fp, %i.fs
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 84
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !90
  %i.fx = fadd nsz float %i.ft, %i.fw             ; 3 uses
  %indvars.iv.next.i104.us.i.i.3 = add nuw nsw i64 %indvars.iv.i102.us.i.i, 4 ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %meanf.exit106.loopexit.us.i.i.unr-lcssa, label %.lr.ph.i101.us.i.i, !llvm.loop !73

meanf.exit106.loopexit.us.i.i.unr-lcssa:          ; preds = %.lr.ph.i101.us.i.i
  br i1 %lcmp.mod57.not.a, label %meanf.exit106.loopexit.us.i.i, label %.lr.ph.i101.us.i.i.epil.preheader

.lr.ph.i101.us.i.i.epil.preheader:                ; preds = %meanf.exit106.loopexit.us.i.i.unr-lcssa, %.lr.ph.preheader.i.us.i.i
  %indvars.iv.i102.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i.i ], [ %indvars.iv.next.i104.us.i.i.3, %meanf.exit106.loopexit.us.i.i.unr-lcssa ]
  %.0810.i103.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.us.i.i ], [ %i.fx, %meanf.exit106.loopexit.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %.lr.ph.i101.us.i.i.epil

.lr.ph.i101.us.i.i.epil:                          ; preds = %.lr.ph.i101.us.i.i.epil, %.lr.ph.i101.us.i.i.epil.preheader
  %indvars.iv.i102.us.i.i.epil = phi i64 [ %indvars.iv.i102.us.i.i.epil.init, %.lr.ph.i101.us.i.i.epil.preheader ], [ %indvars.iv.next.i104.us.i.i.epil, %.lr.ph.i101.us.i.i.epil ] ; 2 uses
  %.0810.i103.us.i.i.epil = phi float [ %.0810.i103.us.i.i.epil.init, %.lr.ph.i101.us.i.i.epil.preheader ], [ %i.gb, %.lr.ph.i101.us.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i101.us.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i101.us.i.i.epil ]
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.i102.us.i.i.epil
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !90
  %i.gb = fadd nsz float %.0810.i103.us.i.i.epil, %i.ga ; 2 uses
  %indvars.iv.next.i104.us.i.i.epil = add nuw nsw i64 %indvars.iv.i102.us.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter56
  br i1 %epil.iter.cmp.not, label %meanf.exit106.loopexit.us.i.i, label %.lr.ph.i101.us.i.i.epil, !llvm.loop !74

meanf.exit106.loopexit.us.i.i:                    ; preds = %.lr.ph.i101.us.i.i.epil, %meanf.exit106.loopexit.us.i.i.unr-lcssa
  %.lcssa = phi float [ %i.fx, %meanf.exit106.loopexit.us.i.i.unr-lcssa ], [ %i.gb, %.lr.ph.i101.us.i.i.epil ]
  %i.gc = fdiv nsz float %.lcssa, %i.fg           ; 2 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv130.i.i ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store float %i.gc, ptr %i.ge, align 4, !tbaa !89
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store float %i.gc, ptr %i.gf, align 4, !tbaa !90
  %indvars.iv.next131.i.i = add nuw nsw i64 %indvars.iv130.i.i, 1 ; 2 uses
  %exitcond133.not.i.i = icmp eq i64 %indvars.iv.next131.i.i, 25
  br i1 %exitcond133.not.i.i, label %.lr.ph.i.preheader.loopexit.i.i, label %.lr.ph.preheader.i.us.i.i, !llvm.loop !75

.preheader.split.i.i:                             ; preds = %.preheader.i113.i
  %i.gg = fdiv nsz float 0.000000e+00, %i.fg      ; 75 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %i.gg, ptr %i.gh, align 4, !tbaa !89
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store float %i.gg, ptr %i.gi, align 4, !tbaa !90
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store float %i.gg, ptr %i.gj, align 4, !tbaa !89
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  store float %i.gg, ptr %i.gk, align 4, !tbaa !90
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store float %i.gg, ptr %i.gl, align 4, !tbaa !89
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  store float %i.gg, ptr %i.gm, align 4, !tbaa !90
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store float %i.gg, ptr %i.gn, align 4, !tbaa !89
  %i.go = getelementptr inbounds nuw i8, ptr %i.ae, i64 84
  store float %i.gg, ptr %i.go, align 4, !tbaa !90
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store float %i.gg, ptr %i.gp, align 4, !tbaa !89
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ae, i64 108
  store float %i.gg, ptr %i.gq, align 4, !tbaa !90
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store float %i.gg, ptr %i.gr, align 4, !tbaa !89
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 132
  store float %i.gg, ptr %i.gs, align 4, !tbaa !90
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  store float %i.gg, ptr %i.gt, align 4, !tbaa !89
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ae, i64 156
  store float %i.gg, ptr %i.gu, align 4, !tbaa !90
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  store float %i.gg, ptr %i.gv, align 4, !tbaa !89
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ae, i64 180
  store float %i.gg, ptr %i.gw, align 4, !tbaa !90
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  store float %i.gg, ptr %i.gx, align 4, !tbaa !89
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ae, i64 204
  store float %i.gg, ptr %i.gy, align 4, !tbaa !90
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  store float %i.gg, ptr %i.gz, align 4, !tbaa !89
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ae, i64 228
  store float %i.gg, ptr %i.ha, align 4, !tbaa !90
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  store float %i.gg, ptr %i.hb, align 4, !tbaa !89
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ae, i64 252
  store float %i.gg, ptr %i.hc, align 4, !tbaa !90
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  store float %i.gg, ptr %i.hd, align 4, !tbaa !89
  %i.he = getelementptr inbounds nuw i8, ptr %i.ae, i64 276
  store float %i.gg, ptr %i.he, align 4, !tbaa !90
end_hunk_0
