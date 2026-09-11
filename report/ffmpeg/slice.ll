Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/slice?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ff_init_slice_from_src:bb.a
  %i.fu = sub nsw i32 %i.a, %i.fs                 ; 2 uses
  %.not81.3 = icmp slt i32 %4, %i.fs
  %.not82.3 = icmp slt i32 %i.ft, %i.fu
  %or.cond.3 = select i1 %.not81.3, i1 true, i1 %.not82.3
  br i1 %or.cond.3, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !15
  %..3 = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 %i.fw)
  store i32 %..3, ptr %i.fv, align 8, !tbaa !15
  %i.fx = icmp sgt i32 %5, 0
  br i1 %i.fx, label %.lr.ph.3, label %.critedge

.lr.ph.3:                                         ; preds = %bb.x
  %i.fy = load i32, ptr %i.fl, align 4, !tbaa !20
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !21
  %i.gb = sub i32 %4, %i.fs
  %i.gc = sext i32 %i.fy to i64                   ; 5 uses
  %i.gd = sext i32 %i.gb to i64
  %wide.trip.count.3 = zext nneg i32 %5 to i64    ; 2 uses
  %invariant.gep135 = getelementptr [8 x i8], ptr %i.ga, i64 %i.gd ; 5 uses
  %xtraiter197 = and i64 %wide.trip.count.3, 3    ; 3 uses
  %i.ge = icmp ult i32 %5, 4
  br i1 %i.ge, label %.epil.preheader196, label %.lr.ph.3.new

.lr.ph.3.new:                                     ; preds = %.lr.ph.3
  %unroll_iter201 = and i64 %wide.trip.count.3, 2147483644
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.3.new
  %indvars.iv.3 = phi i64 [ 0, %.lr.ph.3.new ], [ %indvars.iv.next.3.3, %bb.y ] ; 6 uses
  %niter202 = phi i64 [ 0, %.lr.ph.3.new ], [ %niter202.next.3, %bb.y ]
  %i.gf = mul nsw i64 %indvars.iv.3, %i.gc
  %i.gg = getelementptr inbounds i8, ptr %i.fp, i64 %i.gf
  %gep136 = getelementptr [8 x i8], ptr %invariant.gep135, i64 %indvars.iv.3
  store ptr %i.gg, ptr %gep136, align 8, !tbaa !19
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv.3, 1 ; 2 uses
  %i.gh = mul nsw i64 %indvars.iv.next.3, %i.gc
  %i.gi = getelementptr inbounds i8, ptr %i.fp, i64 %i.gh
  %gep136.1 = getelementptr [8 x i8], ptr %invariant.gep135, i64 %indvars.iv.next.3
  store ptr %i.gi, ptr %gep136.1, align 8, !tbaa !19
  %indvars.iv.next.3.1 = or disjoint i64 %indvars.iv.3, 2 ; 2 uses
  %i.gj = mul nsw i64 %indvars.iv.next.3.1, %i.gc
  %i.gk = getelementptr inbounds i8, ptr %i.fp, i64 %i.gj
  %gep136.2 = getelementptr [8 x i8], ptr %invariant.gep135, i64 %indvars.iv.next.3.1
  store ptr %i.gk, ptr %gep136.2, align 8, !tbaa !19
  %indvars.iv.next.3.2 = or disjoint i64 %indvars.iv.3, 3 ; 2 uses
  %i.gl = mul nsw i64 %indvars.iv.next.3.2, %i.gc
  %i.gm = getelementptr inbounds i8, ptr %i.fp, i64 %i.gl
  %gep136.3 = getelementptr [8 x i8], ptr %invariant.gep135, i64 %indvars.iv.next.3.2
  store ptr %i.gm, ptr %gep136.3, align 8, !tbaa !19
  %indvars.iv.next.3.3 = add nuw nsw i64 %indvars.iv.3, 4 ; 2 uses
  %niter202.next.3 = add i64 %niter202, 4         ; 2 uses
  %niter202.ncmp.3 = icmp eq i64 %niter202.next.3, %unroll_iter201
  br i1 %niter202.ncmp.3, label %.critedge.loopexit144.unr-lcssa, label %bb.y, !llvm.loop !49

bb.z:                                             ; preds = %bb.w
  store i32 %4, ptr %i.fr, align 4, !tbaa !14
  %i.gn = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.ft) ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.gn, ptr %i.go, align 8, !tbaa !15
  %i.gp = icmp sgt i32 %i.gn, 0
  br i1 %i.gp, label %.lr.ph86.3, label %.critedge

.lr.ph86.3:                                       ; preds = %bb.z
  %i.gq = load i32, ptr %i.fl, align 4, !tbaa !20
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !21 ; 5 uses
  %i.gt = sext i32 %i.gq to i64                   ; 5 uses
  %wide.trip.count93.3 = zext nneg i32 %i.gn to i64 ; 2 uses
  %xtraiter204 = and i64 %wide.trip.count93.3, 3  ; 3 uses
  %i.gu = icmp ult i32 %i.gn, 4
  br i1 %i.gu, label %.epil.preheader203, label %.lr.ph86.3.new

.lr.ph86.3.new:                                   ; preds = %.lr.ph86.3
  %unroll_iter208 = and i64 %wide.trip.count93.3, 2147483644
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph86.3.new
  %indvars.iv90.3 = phi i64 [ 0, %.lr.ph86.3.new ], [ %indvars.iv.next91.3.3, %bb.aa ] ; 6 uses
  %niter209 = phi i64 [ 0, %.lr.ph86.3.new ], [ %niter209.next.3, %bb.aa ]
  %i.gv = mul nsw i64 %indvars.iv90.3, %i.gt
  %i.gw = getelementptr inbounds i8, ptr %i.fp, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv90.3
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !19
  %indvars.iv.next91.3 = or disjoint i64 %indvars.iv90.3, 1 ; 2 uses
  %i.gy = mul nsw i64 %indvars.iv.next91.3, %i.gt
  %i.gz = getelementptr inbounds i8, ptr %i.fp, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next91.3
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !19
  %indvars.iv.next91.3.1 = or disjoint i64 %indvars.iv90.3, 2 ; 2 uses
  %i.hb = mul nsw i64 %indvars.iv.next91.3.1, %i.gt
  %i.hc = getelementptr inbounds i8, ptr %i.fp, i64 %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next91.3.1
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !19
  %indvars.iv.next91.3.2 = or disjoint i64 %indvars.iv90.3, 3 ; 2 uses
  %i.he = mul nsw i64 %indvars.iv.next91.3.2, %i.gt
  %i.hf = getelementptr inbounds i8, ptr %i.fp, i64 %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next91.3.2
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !19
  %indvars.iv.next91.3.3 = add nuw nsw i64 %indvars.iv90.3, 4 ; 2 uses
  %niter209.next.3 = add i64 %niter209, 4         ; 2 uses
  %niter209.ncmp.3 = icmp eq i64 %niter209.next.3, %unroll_iter208
  br i1 %niter209.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !50

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod206.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod206.not, label %.critedge, label %.epil.preheader203

.epil.preheader203:                               ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph86.3
  %indvars.iv90.3.epil.init = phi i64 [ 0, %.lr.ph86.3 ], [ %indvars.iv.next91.3.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod207 = icmp ne i64 %xtraiter204, 0
  tail call void @llvm.assume(i1 %lcmp.mod207)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader203
  %indvars.iv90.3.epil = phi i64 [ %indvars.iv90.3.epil.init, %.epil.preheader203 ], [ %indvars.iv.next91.3.epil, %bb.ab ] ; 3 uses
  %epil.iter205 = phi i64 [ 0, %.epil.preheader203 ], [ %epil.iter205.next, %bb.ab ]
  %i.hh = mul nsw i64 %indvars.iv90.3.epil, %i.gt
  %i.hi = getelementptr inbounds i8, ptr %i.fp, i64 %i.hh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv90.3.epil
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !19
  %indvars.iv.next91.3.epil = add nuw nsw i64 %indvars.iv90.3.epil, 1
  %epil.iter205.next = add i64 %epil.iter205, 1   ; 2 uses
  %epil.iter205.cmp.not = icmp eq i64 %epil.iter205.next, %xtraiter204
  br i1 %epil.iter205.cmp.not, label %.critedge, label %bb.ab, !llvm.loop !57

.critedge.loopexit144.unr-lcssa:                  ; preds = %bb.y
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %.critedge, label %.epil.preheader196

.epil.preheader196:                               ; preds = %.critedge.loopexit144.unr-lcssa, %.lr.ph.3
  %indvars.iv.3.epil.init = phi i64 [ 0, %.lr.ph.3 ], [ %indvars.iv.next.3.3, %.critedge.loopexit144.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter197, 0
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader196
  %indvars.iv.3.epil = phi i64 [ %indvars.iv.3.epil.init, %.epil.preheader196 ], [ %indvars.iv.next.3.epil, %bb.ac ] ; 3 uses
  %epil.iter198 = phi i64 [ 0, %.epil.preheader196 ], [ %epil.iter198.next, %bb.ac ]
  %i.hk = mul nsw i64 %indvars.iv.3.epil, %i.gc
  %i.hl = getelementptr inbounds i8, ptr %i.fp, i64 %i.hk
  %gep136.epil = getelementptr [8 x i8], ptr %invariant.gep135, i64 %indvars.iv.3.epil
  store ptr %i.hl, ptr %gep136.epil, align 8, !tbaa !19
  %indvars.iv.next.3.epil = add nuw nsw i64 %indvars.iv.3.epil, 1
  %epil.iter198.next = add i64 %epil.iter198, 1   ; 2 uses
  %epil.iter198.cmp.not = icmp eq i64 %epil.iter198.next, %xtraiter197
  br i1 %epil.iter198.cmp.not, label %.critedge, label %bb.ac, !llvm.loop !58

.critedge:                                        ; preds = %.critedge.loopexit144.unr-lcssa, %bb.ac, %.critedge.loopexit.unr-lcssa, %bb.ab, %bb.x, %bb.z, %.loopexit.2, %.loopexit.1, %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_init_filters(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !83   ; 2 uses
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 785) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !85
  %i.f = and i64 %i.e, 16
  %.not3.i = icmp eq i64 %i.f, 0
  br i1 %.not3.i, label %isPlanarYUV.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #8 ; 3 uses
  %.not.i234 = icmp eq ptr %i.g, null
  br i1 %.not.i234, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 778) #8
  tail call void @abort() #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !85
  %i.j = and i64 %i.i, 32
  %.not3.i235 = icmp eq i64 %i.j, 0
  br i1 %.not3.i235, label %isPlanarYUV.exit, label %isPlanarYUV.exit.thread

isPlanarYUV.exit:                                 ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !86
  %i.m = icmp ult i8 %i.l, 2
  br i1 %i.m, label %isPlanarYUV.exit.thread, label %bb.g

bb.g:                                             ; preds = %isPlanarYUV.exit
  %i.n = load i32, ptr %i.a, align 4, !tbaa !83   ; 2 uses
  %i.o = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.n) #8 ; 3 uses
  %.not.i231 = icmp eq ptr %i.o, null
  br i1 %.not.i231, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 810) #8
  tail call void @abort() #9
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85
  %i.r = and i64 %i.q, 10
  %or.cond10.i = icmp eq i64 %i.r, 0
  br i1 %or.cond10.i, label %bb.j, label %isGray.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !86
  %1 = icmp ugt i8 %i.t, 2
  %2 = add i32 %i.n, -9
  %3 = icmp ult i32 %2, 2
  %or.cond = or i1 %3, %1
  br i1 %or.cond, label %isGray.exit.thread, label %isPlanarYUV.exit.thread

isGray.exit.thread:                               ; preds = %bb.i, %bb.j
  br label %isPlanarYUV.exit.thread

isPlanarYUV.exit.thread:                          ; preds = %bb.j, %bb.f, %bb.c, %isGray.exit.thread, %isPlanarYUV.exit
  %4 = phi i32 [ 1, %isPlanarYUV.exit ], [ 1, %bb.j ], [ 2, %isGray.exit.thread ], [ 1, %bb.c ], [ 1, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 53048
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !87
  %.not220 = icmp eq ptr %i.v, null
  br i1 %.not220, label %bb.k, label %bb.n

bb.k:                                             ; preds = %isPlanarYUV.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53072
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !88
  %.not221 = icmp eq ptr %i.x, null
  br i1 %.not221, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 53056
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !89
  %.not222 = icmp eq ptr %i.z, null
  br i1 %.not222, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 53080
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !90
  %i.ac = icmp ne ptr %i.ab, null
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %isPlanarYUV.exit.thread
  %i.ad = phi i1 [ true, %bb.l ], [ true, %bb.k ], [ true, %isPlanarYUV.exit.thread ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 53064
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !91
  %.not223 = icmp eq ptr %i.af, null
  br i1 %.not223, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 53088
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !92
  %i.ai = icmp ne ptr %i.ah, null
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = phi i1 [ true, %bb.n ], [ %i.ai, %bb.o ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = load i32, ptr %i.am, align 16, !tbaa !94
  %i.ao = shl i32 %i.an, 1
  %i.ap = and i32 %i.ao, -16
  %i.aq = add i32 %i.ap, 80
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !95 ; 2 uses
  %switch.tableidx = add i32 %i.as, -8            ; 2 uses
  %i.at = icmp ult i32 %switch.tableidx, 15
  br i1 %i.at, label %switch.lookup, label %usePal.exit

switch.lookup:                                    ; preds = %bb.p
  %i.au = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.ff_init_filters, i64 %i.au
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  br label %usePal.exit

usePal.exit:                                      ; preds = %bb.p, %switch.lookup
  %i.av = phi i64 [ %switch.ext, %switch.lookup ], [ 39552, %bb.p ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !96 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !99 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3660
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !100 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !101 ; 3 uses
  %i.bk = icmp sgt i32 %i.ay, 0
  br i1 %i.bk, label %.lr.ph.i, label %get_min_buffer_size.exit

.lr.ph.i:                                         ; preds = %usePal.exit
  %i.bl = load i32, ptr %i.az, align 4, !tbaa !102
  %i.bm = sext i32 %i.bl to i64
  %i.bn = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bo = add i32 %i.bf, -1
  %i.bp = add i32 %i.bh, -1
  %i.bq = shl nsw i32 -1, %i.bj
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %.0248 = phi i32 [ %i.bf, %.lr.ph.i ], [ %i.cd, %bb.q ]
  %.0246 = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.cg, %bb.q ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %i.br = mul nsw i64 %indvars.iv.i, %i.bm
  %i.bs = sdiv i64 %i.br, %i.bn
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !20 ; 2 uses
  %i.bv = add i32 %i.bo, %i.bu
  %sext.i = shl i64 %i.bs, 32
  %i.bw = ashr exact i64 %sext.i, 30
  %i.bx = getelementptr inbounds i8, ptr %i.bd, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !20 ; 2 uses
  %i.bz = add i32 %i.bp, %i.by
  %i.ca = shl i32 %i.bz, %i.bj
  %..i = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 %i.ca)
  %i.cb = and i32 %..i, %i.bq                     ; 2 uses
  %i.cc = sub nsw i32 %i.cb, %i.bu
  %i.cd = tail call i32 @llvm.smax.i32(i32 %.0248, i32 %i.cc) ; 2 uses
  %i.ce = ashr i32 %i.cb, %i.bj
  %i.cf = sub nsw i32 %i.ce, %i.by
  %i.cg = tail call i32 @llvm.smax.i32(i32 %.0246, i32 %i.cf) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bn
  br i1 %exitcond.not.i, label %get_min_buffer_size.exit, label %bb.q, !llvm.loop !60

get_min_buffer_size.exit:                         ; preds = %bb.q, %usePal.exit
  %.1249 = phi i32 [ %i.bf, %usePal.exit ], [ %i.cd, %bb.q ]
  %.1247 = phi i32 [ %i.bh, %usePal.exit ], [ %i.cg, %bb.q ]
  %i.ch = add nsw i32 %i.bf, 4
  %. = tail call i32 @llvm.smax.i32(i32 %.1249, i32 %i.ch) ; 2 uses
  %i.ci = add nsw i32 %i.bh, 4
  %i.cj = tail call i32 @llvm.smax.i32(i32 %.1247, i32 %i.ci) ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !103 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 16
  %i.cn = zext i1 %i.cm to i32
  %.0193 = shl i32 %i.aq, %i.cn                   ; 2 uses
  %i.co = icmp eq i32 %i.cl, 32
  %i.cp = shl i32 %.0193, 2
  %.1194 = select i1 %i.co, i32 %i.cp, i32 %.0193 ; 7 uses
  %i.cq = select i1 %i.ad, i32 2, i32 1           ; 3 uses
  %i.cr = select i1 %i.aj, i32 2, i32 1           ; 2 uses
  %i.cs = tail call i32 @llvm.umax.i32(i32 %i.cq, i32 %i.cr) ; 2 uses
  %i.ct = add nuw nsw i32 %i.cs, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 5 uses
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !42
  %i.cv = add nuw nsw i32 %i.cr, %i.cq            ; 2 uses
  %i.cw = add nuw nsw i32 %i.cv, %4
  %.not225 = icmp ne i32 %i.al, 0                 ; 4 uses
  %i.cx = select i1 %.not225, i32 2, i32 0
  %i.cy = add nuw nsw i32 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !43
  %i.da = zext i1 %.not225 to i32                 ; 2 uses
  %i.db = add nuw nsw i32 %i.cq, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !20
  %i.dd = add nuw nsw i32 %i.cv, %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 %i.dd, ptr %i.de, align 16, !tbaa !20
  %i.df = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.as) #8 ; 3 uses
  %.not.i232 = icmp eq ptr %i.df, null
  br i1 %.not.i232, label %bb.r, label %bb.s

bb.r:                                             ; preds = %get_min_buffer_size.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 894) #8
  tail call void @abort() #9
  unreachable

bb.s:                                             ; preds = %get_min_buffer_size.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !85
  %i.di = and i64 %i.dh, 512
  %.not3.i233 = icmp eq i64 %i.di, 0
  br i1 %.not3.i233, label %isFloat16.exit.thread, label %isFloat16.exit

isFloat16.exit:                                   ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !105
  %.not255 = icmp eq i32 %i.dk, 16
  br i1 %.not255, label %bb.t, label %isFloat16.exit.thread

bb.t:                                             ; preds = %isFloat16.exit
  %i.dl = tail call noalias ptr @av_malloc(i64 noundef 12672) #8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 53224 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !106
  %.not227 = icmp eq ptr %i.dl, null
  br i1 %.not227, label %bb.as, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @ff_init_half2float_tables(ptr noundef nonnull %i.dl) #8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !106
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 53040
  store ptr %i.dn, ptr %i.do, align 16, !tbaa !107
  br label %isFloat16.exit.thread

isFloat16.exit.thread:                            ; preds = %bb.s, %bb.u, %isFloat16.exit
  %i.dp = load i32, ptr %i.cz, align 8, !tbaa !43
  %i.dq = sext i32 %i.dp to i64
  %i.dr = tail call noalias ptr @av_calloc(i64 noundef %i.dq, i64 noundef 40) #8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  store ptr %i.dr, ptr %i.ds, align 16, !tbaa !44
  %.not228 = icmp eq ptr %i.dr, null
  br i1 %.not228, label %bb.as, label %bb.v

bb.v:                                             ; preds = %isFloat16.exit.thread
  %i.dt = load i32, ptr %i.cu, align 4, !tbaa !42
  %i.du = sext i32 %i.dt to i64
  %i.dv = tail call noalias ptr @av_calloc(i64 noundef %i.du, i64 noundef 152) #8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 13 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !45
  %.not229 = icmp eq ptr %i.dv, null
  br i1 %.not229, label %.loopexit, label %bb.w
end_hunk_0
