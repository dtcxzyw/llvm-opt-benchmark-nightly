inline.NumInlined: 9
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Invalid number of coded channels: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid start/end band: %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid CELT frame size: %d\0A\00", align 1
@ff_celt_window_padded = external hidden constant [0 x float], align 4
@ff_opus_deemph_weights = external hidden constant [0 x float], align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid number of output channels: %d\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@ff_celt_model_tapset = external hidden constant [0 x i16], align 2
@ff_celt_postfilter_taps = external hidden local_unnamed_addr constant [3 x [3 x float]], align 16
@ff_celt_alpha_coef = external hidden local_unnamed_addr constant [0 x float], align 4
@ff_celt_beta_coef = external hidden local_unnamed_addr constant [0 x float], align 4
@ff_celt_coarse_energy_dist = external hidden local_unnamed_addr constant [4 x [2 x [42 x i8]]], align 16
@ff_celt_tf_select = external hidden local_unnamed_addr constant [4 x [2 x [2 x [2 x i8]]]], align 16
@ff_celt_freq_range = external hidden local_unnamed_addr constant [0 x i8], align 1
@ff_celt_freq_bands = external hidden local_unnamed_addr constant [0 x i8], align 1
@ff_celt_mean_energy = external hidden local_unnamed_addr constant [0 x float], align 4
@ff_celt_window2 = external hidden local_unnamed_addr constant [120 x float], align 16

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_celt_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = add i32 %3, -3
  %or.cond = icmp ult i32 %i.b, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.c, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %3) #8
  br label %bb.cb

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %5, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp sgt i32 %5, %6
  %i.f = icmp sgt i32 %6, 21
  %or.cond3 = or i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr %0, align 16, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.g, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %6) #8
  br label %bb.cb

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 34036 ; 4 uses
  store i32 0, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 33924 ; 7 uses
  store i32 0, ptr %i.i, align 4, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34044 ; 3 uses
  store i32 0, ptr %i.j, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34056
  store i32 0, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33896 ; 8 uses
  store i32 %3, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33912 ; 11 uses
  store i32 %5, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33916 ; 12 uses
  store i32 %6, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !24
  %i.q = shl i32 %i.p, 3                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34084 ; 10 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !29
  %i.s = sdiv i32 %4, 120                         ; 3 uses
  %.not.i = icmp ult i32 %i.s, 65536              ; 2 uses
  %i.t = lshr i32 %i.s, 16
  %spec.select.i = select i1 %.not.i, i32 %i.s, i32 %i.t ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.u = lshr i32 %spec.select.i, 8
  %i.v = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.u
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.v
  %i.w = zext nneg i32 %.110.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %.1.i, %i.z             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 33908 ; 11 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !31
  %i.ac = icmp samesign ult i32 %i.aa, 4
  %i.ad = shl nuw nsw i32 120, %i.aa
  %.not = icmp eq i32 %4, %i.ad
  %or.cond254 = select i1 %i.ac, i1 %.not, i1 false
  br i1 %or.cond254, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %0, align 16, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %4) #8
  br label %bb.cb

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33900 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %.not240 = icmp eq i32 %i.ag, 0
  br i1 %.not240, label %bb.i, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  store i32 %3, ptr %i.af, align 4, !tbaa !32
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.ai = add nsw i32 %3, -1
  %i.aj = icmp ult i32 %i.ai, 3
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [16896 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3840) %i.al, i8 0, i64 3840, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.am, i8 0, i64 21, i1 false)
  %i.an = getelementptr inbounds nuw [16896 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 25536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3840) %i.ao, i8 0, i64 3840, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 17316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.ap, i8 0, i64 21, i1 false)
  %i.aq = getelementptr inbounds nuw [16896 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 42432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3840) %i.ar, i8 0, i64 3840, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 34212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.as, i8 0, i64 21, i1 false)
  %i.at = getelementptr inbounds nuw [16896 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 59328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3840) %i.au, i8 0, i64 3840, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 51108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.av, i8 0, i64 21, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !33

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  %lcmp.mod.not = icmp eq i32 %3, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod562 = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %lcmp.mod562)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aw = getelementptr inbounds nuw [16896 x i8], ptr %i.ah, i64 %indvars.iv.epil ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3840) %i.ax, i8 0, i64 3840, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.ay, i8 0, i64 21, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.j, %._crit_edge.unr-lcssa
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !38 ; 4 uses
  %.not.i.i256 = icmp ult i32 %i.bc, 65536        ; 2 uses
  %i.bd = lshr i32 %i.bc, 16                      ; 2 uses
  %spec.select.i.i257 = select i1 %.not.i.i256, i32 %i.bc, i32 %i.bd ; 3 uses
  %spec.select12.i.i258 = select i1 %.not.i.i256, i32 0, i32 16 ; 2 uses
  %.not11.i.i259 = icmp samesign ult i32 %spec.select.i.i257, 256 ; 2 uses
  %i.be = lshr i32 %spec.select.i.i257, 8
  %i.bf = or disjoint i32 %spec.select12.i.i258, 8
  %.110.i.i260 = select i1 %.not11.i.i259, i32 %spec.select.i.i257, i32 %i.be
  %.1.i.i261 = select i1 %.not11.i.i259, i32 %spec.select12.i.i258, i32 %i.bf
  %i.bg = zext nneg i32 %.110.i.i260 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %.1.i.i261, %i.bj
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %i.ba, %i.bl                    ; 3 uses
  %.not241 = icmp slt i32 %i.bm, %i.q
  br i1 %.not241, label %bb.k, label %.thread

.thread:                                          ; preds = %._crit_edge
  store i32 1, ptr %i.h, align 4, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %bb.k
  %i.bo = tail call i32 @ff_opus_rc_dec_log(ptr noundef nonnull %1, i32 noundef 15) #8 ; 2 uses
  store i32 %i.bo, ptr %i.h, align 4, !tbaa !17
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %thread-pre-split.thread, label %._crit_edge430

._crit_edge430:                                   ; preds = %thread-pre-split
  %.pre = load i32, ptr %i.r, align 4, !tbaa !29
  %.pre431 = load i32, ptr %i.bb, align 8, !tbaa !38 ; 2 uses
  %.pre436 = lshr i32 %.pre431, 16
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge430, %.thread
  %.pre-phi = phi i32 [ %.pre436, %._crit_edge430 ], [ %i.bd, %.thread ]
  %i.bq = phi i32 [ %.pre431, %._crit_edge430 ], [ %i.bc, %.thread ] ; 2 uses
  %i.br = phi i32 [ %.pre, %._crit_edge430 ], [ %i.q, %.thread ] ; 2 uses
  %.not.i.i = icmp ult i32 %i.bq, 65536           ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.bq, i32 %.pre-phi ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.bs = lshr i32 %spec.select.i.i, 8
  %i.bt = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.bs
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.bt
  %i.bu = zext nneg i32 %.110.i.i to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !30
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %.1.i.i, %i.bx
  %.neg379 = add nuw nsw i32 %i.by, 1
  %i.bz = add i32 %.neg379, %i.br
  store i32 %i.bz, ptr %i.az, align 8, !tbaa !37
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.k, %bb.l, %thread-pre-split
  %.0218 = phi i32 [ %i.br, %bb.l ], [ 1, %thread-pre-split ], [ %i.bm, %bb.k ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16916 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ca, i8 0, i64 12, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 33812 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, i8 0, i64 12, i1 false)
  %i.cc = load i32, ptr %i.m, align 8, !tbaa !22
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %parse_postfilter.exit

bb.m:                                             ; preds = %thread-pre-split.thread
  %i.ce = add nsw i32 %.0218, 16
  %i.cf = load i32, ptr %i.r, align 4, !tbaa !29
  %.not.i262 = icmp sgt i32 %i.ce, %i.cf
  br i1 %.not.i262, label %parse_postfilter.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = tail call i32 @ff_opus_rc_dec_log(ptr noundef nonnull %1, i32 noundef 1) #8
  %.not33.i = icmp eq i32 %i.cg, 0
  br i1 %.not33.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = tail call i32 @ff_opus_rc_dec_uint(ptr noundef nonnull %1, i32 noundef 6) #8 ; 2 uses
  %i.ci = shl i32 16, %i.ch
  %i.cj = add nsw i32 %i.ch, 4
  %i.ck = tail call i32 @ff_opus_rc_get_raw(ptr noundef nonnull %1, i32 noundef %i.cj) #8
  %i.cl = add i32 %i.ck, -1
  %i.cm = add i32 %i.cl, %i.ci
  %i.cn = tail call i32 @ff_opus_rc_get_raw(ptr noundef nonnull %1, i32 noundef 3) #8
  %i.co = add i32 %i.cn, 1
  %i.cp = uitofp nsz i32 %i.co to float
  %i.cq = fmul nnan nsz float %i.cp, 9.375000e-02 ; 3 uses
  %i.cr = load i32, ptr %i.az, align 8, !tbaa !37
  %i.cs = load i32, ptr %i.bb, align 8, !tbaa !38 ; 3 uses
  %.not.i.i35.i = icmp ult i32 %i.cs, 65536       ; 2 uses
  %i.ct = lshr i32 %i.cs, 16
  %spec.select.i.i36.i = select i1 %.not.i.i35.i, i32 %i.cs, i32 %i.ct ; 3 uses
  %spec.select12.i.i37.neg.i = select i1 %.not.i.i35.i, i32 0, i32 -16 ; 2 uses
  %.not11.i.i38.i = icmp samesign ult i32 %spec.select.i.i36.i, 256 ; 2 uses
  %i.cu = lshr i32 %spec.select.i.i36.i, 8
  %.neg43.i = add nsw i32 %spec.select12.i.i37.neg.i, -8
  %.110.i.i39.i = select i1 %.not11.i.i38.i, i32 %spec.select.i.i36.i, i32 %i.cu
  %.1.i.i40.neg44.i = select i1 %.not11.i.i38.i, i32 %spec.select12.i.i37.neg.i, i32 %.neg43.i
  %i.cv = zext nneg i32 %.110.i.i39.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !30
  %i.cy = zext i8 %i.cx to i32
  %.neg41.i = add i32 %i.cr, 1
  %i.cz = sub i32 %.neg41.i, %i.cy
  %i.da = add i32 %i.cz, %.1.i.i40.neg44.i
  %i.db = load i32, ptr %i.r, align 4, !tbaa !29
  %.not34.i = icmp ugt i32 %i.da, %i.db
  br i1 %.not34.i, label %.loopexit.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef nonnull %1, ptr noundef nonnull @ff_celt_model_tapset) #8
  %i.dd = sext i32 %i.dc to i64
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.p, %bb.o
  %i.de = phi i64 [ %i.dd, %bb.p ], [ 0, %bb.o ]
  %i.df = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 15) ; 2 uses
  %i.dg = getelementptr inbounds [12 x i8], ptr @ff_celt_postfilter_taps, i64 %i.de ; 3 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !39
  %i.di = fmul nsz float %i.cq, %i.dh             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !39
  %i.dl = fmul nsz float %i.cq, %i.dk             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !39
  %i.do = fmul nsz float %i.cq, %i.dn             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16912
  store i32 %i.df, ptr %i.dp, align 16, !tbaa !40
  store float %i.di, ptr %i.ca, align 4, !tbaa !39
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16920
  store float %i.dl, ptr %i.dq, align 8, !tbaa !39
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16924
  store float %i.do, ptr %i.dr, align 4, !tbaa !39
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 33808
  store i32 %i.df, ptr %i.ds, align 16, !tbaa !40
  store float %i.di, ptr %i.cb, align 4, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 33816
  store float %i.dl, ptr %i.dt, align 8, !tbaa !39
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 33820
  store float %i.do, ptr %i.du, align 4, !tbaa !39
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.n
  %i.dv = load i32, ptr %i.az, align 8, !tbaa !37
  %i.dw = load i32, ptr %i.bb, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i = icmp ult i32 %i.dw, 65536         ; 2 uses
  %i.dx = lshr i32 %i.dw, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.dw, i32 %i.dx ; 3 uses
  %spec.select12.i.i.i = select i1 %.not.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.dy = lshr i32 %spec.select.i.i.i, 8
  %i.dz = or disjoint i32 %spec.select12.i.i.i, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.dy
  %.1.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select12.i.i.i, i32 %i.dz
  %i.ea = zext nneg i32 %.110.i.i.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !30
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %.1.i.i.i, %i.ed
  %i.ef = xor i32 %i.ee, -1
  %i.eg = add i32 %i.dv, %i.ef
  br label %parse_postfilter.exit

parse_postfilter.exit:                            ; preds = %thread-pre-split.thread, %bb.m, %.loopexit.i
  %.0.i = phi i32 [ %i.eg, %.loopexit.i ], [ %.0218, %bb.m ], [ %.0218, %thread-pre-split.thread ]
  %i.eh = load i32, ptr %i.ab, align 4, !tbaa !31
  %.not243 = icmp eq i32 %i.eh, 0
  br i1 %.not243, label %thread-pre-split331, label %bb.q

bb.q:                                             ; preds = %parse_postfilter.exit
  %i.ei = add nsw i32 %.0.i, 3
  %i.ej = load i32, ptr %i.r, align 4, !tbaa !29
  %.not244 = icmp sgt i32 %i.ei, %i.ej
  br i1 %.not244, label %thread-pre-split331, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = tail call i32 @ff_opus_rc_dec_log(ptr noundef nonnull %1, i32 noundef 3) #8 ; 2 uses
  store i32 %i.ek, ptr %i.i, align 4, !tbaa !18
  br label %bb.s

thread-pre-split331:                              ; preds = %parse_postfilter.exit, %bb.q
  %.pr332 = load i32, ptr %i.i, align 4, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split331, %bb.r
  %i.el = phi i32 [ %.pr332, %thread-pre-split331 ], [ %i.ek, %bb.r ]
  %.not245 = icmp eq i32 %i.el, 0
  br i1 %.not245, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.em = load i32, ptr %i.ab, align 4, !tbaa !31 ; 2 uses
  %i.en = shl nuw i32 1, %i.em                    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 34028 ; 2 uses
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !42
  %i.ep = sdiv i32 %4, %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 34032 ; 2 uses
  store i32 %i.ep, ptr %i.eq, align 16, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 34028 ; 2 uses
  store i32 1, ptr %i.es, align 4, !tbaa !42
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 34032 ; 2 uses
  store i32 %4, ptr %i.et, align 16, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i32, ptr %i.ab, align 4, !tbaa !31 ; 2 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ew
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ey = phi i32 [ %i.ev, %bb.u ], [ %i.em, %bb.t ]
  %.in = phi ptr [ %i.ex, %bb.u ], [ %i.er, %bb.t ]
  %i.ez = phi ptr [ %i.es, %bb.u ], [ %i.eo, %bb.t ] ; 3 uses
  %i.fa = phi ptr [ %i.et, %bb.u ], [ %i.eq, %bb.t ] ; 2 uses
  %i.fb = phi i64 [ %i.ew, %bb.u ], [ 0, %bb.t ]
  %i.fc = load ptr, ptr %.in, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !46
  %i.fg = icmp eq i32 %3, 1                       ; 2 uses
  br i1 %i.fg, label %.preheader342, label %.loopexit343

.preheader342:                                    ; preds = %bb.v
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16976
  %i.fj = load <4 x float>, ptr %i.fh, align 8, !tbaa !39 ; 2 uses
  %i.fk = load <4 x float>, ptr %i.fi, align 8, !tbaa !39 ; 2 uses
  %i.fl = fcmp nsz ogt <4 x float> %i.fj, %i.fk
  %i.fm = select <4 x i1> %i.fl, <4 x float> %i.fj, <4 x float> %i.fk
  store <4 x float> %i.fm, ptr %i.fh, align 8, !tbaa !39
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16992
  %i.fp = load <4 x float>, ptr %i.fn, align 8, !tbaa !39 ; 2 uses
  %i.fq = load <4 x float>, ptr %i.fo, align 8, !tbaa !39 ; 2 uses
  %i.fr = fcmp nsz ogt <4 x float> %i.fp, %i.fq
  %i.fs = select <4 x i1> %i.fr, <4 x float> %i.fp, <4 x float> %i.fq
  store <4 x float> %i.fs, ptr %i.fn, align 8, !tbaa !39
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 17008
  %i.fv = load <4 x float>, ptr %i.ft, align 8, !tbaa !39 ; 2 uses
  %i.fw = load <4 x float>, ptr %i.fu, align 8, !tbaa !39 ; 2 uses
  %i.fx = fcmp nsz ogt <4 x float> %i.fv, %i.fw
  %i.fy = select <4 x i1> %i.fx, <4 x float> %i.fv, <4 x float> %i.fw
  store <4 x float> %i.fy, ptr %i.ft, align 8, !tbaa !39
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 17024
  %i.gb = load <4 x float>, ptr %i.fz, align 8, !tbaa !39 ; 2 uses
  %i.gc = load <4 x float>, ptr %i.ga, align 8, !tbaa !39 ; 2 uses
  %i.gd = fcmp nsz ogt <4 x float> %i.gb, %i.gc
  %i.ge = select <4 x i1> %i.gd, <4 x float> %i.gb, <4 x float> %i.gc
  store <4 x float> %i.ge, ptr %i.fz, align 8, !tbaa !39
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 17040
  %i.gh = load <4 x float>, ptr %i.gf, align 8, !tbaa !39 ; 2 uses
  %i.gi = load <4 x float>, ptr %i.gg, align 8, !tbaa !39 ; 2 uses
  %i.gj = fcmp nsz ogt <4 x float> %i.gh, %i.gi
  %i.gk = select <4 x i1> %i.gj, <4 x float> %i.gh, <4 x float> %i.gi
  store <4 x float> %i.gk, ptr %i.gf, align 8, !tbaa !39
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 8, !tbaa !39 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 17056
  %i.go = load float, ptr %i.gn, align 8, !tbaa !39 ; 2 uses
  %i.gp = fcmp nsz ogt float %i.gm, %i.go
  %..20 = select nsz i1 %i.gp, float %i.gm, float %i.go
  store float %..20, ptr %i.gl, align 8, !tbaa !39
  %.pre432 = load i32, ptr %i.ab, align 4, !tbaa !31
  br label %.loopexit343

.loopexit343:                                     ; preds = %.preheader342, %bb.v
  %i.gq = phi i32 [ %.pre432, %.preheader342 ], [ %i.ey, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8
  %i.gr = zext i32 %i.gq to i64                   ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @ff_celt_alpha_coef, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !39 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr @ff_celt_beta_coef, i64 %i.gr
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !39 ; 2 uses
  %i.gw = getelementptr inbounds nuw [84 x i8], ptr @ff_celt_coarse_energy_dist, i64 %i.gr ; 2 uses
  %i.gx = load i32, ptr %i.az, align 8, !tbaa !37
  %i.gy = load i32, ptr %i.bb, align 8, !tbaa !38 ; 3 uses
  %.not.i.i56.i = icmp ult i32 %i.gy, 65536       ; 2 uses
  %i.gz = lshr i32 %i.gy, 16
  %spec.select.i.i57.i = select i1 %.not.i.i56.i, i32 %i.gy, i32 %i.gz ; 3 uses
  %spec.select12.i.i58.neg.i = select i1 %.not.i.i56.i, i32 0, i32 -16 ; 2 uses
  %.not11.i.i59.i = icmp samesign ult i32 %spec.select.i.i57.i, 256 ; 2 uses
  %i.ha = lshr i32 %spec.select.i.i57.i, 8
  %.neg71.i = add nsw i32 %spec.select12.i.i58.neg.i, -8
  %.110.i.i60.i = select i1 %.not11.i.i59.i, i32 %spec.select.i.i57.i, i32 %i.ha
  %.1.i.i61.neg72.i = select i1 %.not11.i.i59.i, i32 %spec.select12.i.i58.neg.i, i32 %.neg71.i
  %i.hb = zext nneg i32 %.110.i.i60.i to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !30
  %i.he = zext i8 %i.hd to i32
  %.neg62.i = add i32 %i.gx, 2
  %i.hf = sub i32 %.neg62.i, %i.he
  %i.hg = add i32 %i.hf, %.1.i.i61.neg72.i
  %i.hh = load i32, ptr %i.r, align 4, !tbaa !29
  %.not.i263 = icmp ugt i32 %i.hg, %i.hh
  br i1 %.not.i263, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.loopexit343
  %i.hi = tail call i32 @ff_opus_rc_dec_log(ptr noundef nonnull %1, i32 noundef 3) #8
  %.not54.i = icmp eq i32 %i.hi, 0
  br i1 %.not54.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hj = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [84 x i8], ptr @ff_celt_coarse_energy_dist, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 42
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.loopexit343
  %.051.i = phi nsz float [ 0.000000e+00, %bb.x ], [ %i.gt, %bb.w ], [ %i.gt, %.loopexit343 ]
  %.050.i = phi nsz float [ f0x3F599A00, %bb.x ], [ %i.gv, %bb.w ], [ %i.gv, %.loopexit343 ]
  %.049.i = phi ptr [ %i.hm, %bb.x ], [ %i.gw, %bb.w ], [ %i.gw, %.loopexit343 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 15 uses
  %i.ho = load i32, ptr %i.l, align 8, !tbaa !21  ; 4 uses
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.preheader.i.preheader, label %celt_decode_coarse_energy.exit

.preheader.i.preheader:                           ; preds = %bb.y
  %i.hq = insertelement <2 x float> poison, float %.051.i, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %.050.i, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %i.hs = phi i32 [ %i.kn, %._crit_edge.i ], [ %i.ho, %.preheader.i.preheader ] ; 10 uses
  %i.ht = phi i32 [ %i.ko, %._crit_edge.i ], [ %i.ho, %.preheader.i.preheader ] ; 2 uses
  %i.hu = phi i32 [ %i.kp, %._crit_edge.i ], [ %i.ho, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 8 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.hw = shl nuw nsw i64 %indvars.iv79.i, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i32, ptr %i.m, align 8, !tbaa !22
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp slt i64 %indvars.iv79.i, %i.ia
  br i1 %i.ib, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv79.i ; 5 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %xtraiter564 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ic = icmp slt i32 %i.hs, 4
  br i1 %i.ic, label %.epil.preheader563, label %.lr.ph.split.us.i.new

.lr.ph.split.us.i.new:                            ; preds = %.lr.ph.split.us.i
  %unroll_iter568 = and i64 %wide.trip.count.i, 2147483644
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.split.us.i.new
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %indvars.iv.next77.i.3, %bb.z ] ; 5 uses
  %niter569 = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %niter569.next.3, %bb.z ]
  %gep.i = getelementptr inbounds nuw [16896 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i
  store float 0.000000e+00, ptr %gep.i, align 4, !tbaa !39
  %i.id = getelementptr inbounds nuw [16896 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.id, i64 16896
  store float 0.000000e+00, ptr %gep.i.1, align 4, !tbaa !39
  %i.ie = getelementptr inbounds nuw [16896 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.ie, i64 33792
  store float 0.000000e+00, ptr %gep.i.2, align 4, !tbaa !39
  %i.if = getelementptr inbounds nuw [16896 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.if, i64 50688
  store float 0.000000e+00, ptr %gep.i.3, align 4, !tbaa !39
  %indvars.iv.next77.i.3 = add nuw nsw i64 %indvars.iv76.i, 4 ; 2 uses
  %niter569.next.3 = add i64 %niter569, 4         ; 2 uses
  %niter569.ncmp.3 = icmp eq i64 %niter569.next.3, %unroll_iter568
  br i1 %niter569.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.z, !llvm.loop !47

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.aj
  %i.ig = phi i32 [ %i.kj, %bb.aj ], [ %i.hs, %.lr.ph.i ]
  %i.ih = phi i32 [ %i.kk, %bb.aj ], [ %i.ht, %.lr.ph.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aj ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [16896 x i8], ptr %i.hn, i64 %indvars.iv.i ; 2 uses
  %i.ij = load i32, ptr %i.m, align 8, !tbaa !22
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv79.i, %i.ik
  br i1 %i.il, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.i
  %i.im = load i32, ptr %i.n, align 4, !tbaa !23
  %i.in = sext i32 %i.im to i64
  %.not55.i = icmp slt i64 %indvars.iv79.i, %i.in
  br i1 %.not55.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.split.i
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  store float 0.000000e+00, ptr %i.io, align 4, !tbaa !39
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  %i.ip = load i32, ptr %i.r, align 4, !tbaa !29
  %i.iq = load i32, ptr %i.az, align 8, !tbaa !37
  %i.ir = load i32, ptr %i.bb, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i264 = icmp ult i32 %i.ir, 65536      ; 2 uses
  %i.is = lshr i32 %i.ir, 16
  %spec.select.i.i.i265 = select i1 %.not.i.i.i264, i32 %i.ir, i32 %i.is ; 3 uses
  %spec.select12.i.i.i266 = select i1 %.not.i.i.i264, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i267 = icmp samesign ult i32 %spec.select.i.i.i265, 256 ; 2 uses
  %i.it = lshr i32 %spec.select.i.i.i265, 8
  %i.iu = or disjoint i32 %spec.select12.i.i.i266, 8
  %.110.i.i.i268 = select i1 %.not11.i.i.i267, i32 %spec.select.i.i.i265, i32 %i.it
  %.1.i.i.i269 = select i1 %.not11.i.i.i267, i32 %spec.select12.i.i.i266, i32 %i.iu
  %i.iv = zext nneg i32 %.110.i.i.i268 to i64
  %i.iw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !30
  %i.iy = zext i8 %i.ix to i32
  %.neg65.i = sub i32 %i.ip, %i.iq
  %i.iz = add i32 %.neg65.i, 1
  %.neg.i = add i32 %i.iz, %i.iy
  %i.ja = add i32 %.neg.i, %.1.i.i.i269           ; 3 uses
  %i.jb = icmp sgt i32 %i.ja, 14
  br i1 %i.jb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jc = load i8, ptr %i.hx, align 1, !tbaa !30
  %i.jd = zext i8 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 7
  %i.jf = load i8, ptr %i.hy, align 1, !tbaa !30
  %i.jg = zext i8 %i.jf to i32
  %i.jh = shl nuw nsw i32 %i.jg, 6
  %i.ji = tail call i32 @ff_opus_rc_dec_laplace(ptr noundef nonnull %1, i32 noundef %i.je, i32 noundef %i.jh) #8
  %i.jj = sitofp nsz i32 %i.ji to float
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.jk = icmp sgt i32 %i.ja, 1
  br i1 %i.jk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jl = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef nonnull %1, ptr noundef nonnull @ff_celt_model_tapset) #8 ; 2 uses
  %i.jm = ashr i32 %i.jl, 1
  %i.jn = and i32 %i.jl, 1
  %i.jo = sub nsw i32 0, %i.jn
  %i.jp = xor i32 %i.jm, %i.jo
  %i.jq = sitofp nsz i32 %i.jp to float
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.jr = icmp eq i32 %i.ja, 1
  br i1 %i.jr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.js = tail call i32 @ff_opus_rc_dec_log(ptr noundef nonnull %1, i32 noundef 1) #8
  %i.jt = uitofp nsz i32 %i.js to float
  %i.ju = fneg nsz float %i.jt
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.048.i = phi nsz float [ %i.jj, %bb.ad ], [ %i.jq, %bb.af ], [ %i.ju, %bb.ah ], [ -1.000000e+00, %bb.ag ] ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i ; 2 uses
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !39 ; 2 uses
  %i.jx = fcmp nsz olt float %i.jw, -9.000000e+00
  %i.jy = select nsz i1 %i.jx, float -9.000000e+00, float %i.jw
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !39
  %i.kb = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kc = insertelement <2 x float> %i.kb, float %.048.i, i64 1
  %i.kd = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.hr, <2 x float> %i.ke) ; 2 uses
  %i.kg = extractelement <2 x float> %i.kf, i64 0
  %i.kh = fadd nsz float %.048.i, %i.kg
  store float %i.kh, ptr %i.jv, align 4, !tbaa !39
  %i.ki = extractelement <2 x float> %i.kf, i64 1
  store float %i.ki, ptr %i.jz, align 4, !tbaa !39
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !21 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab
  %i.kj = phi i32 [ %.pre.i, %bb.ai ], [ %i.ig, %bb.ab ] ; 2 uses
  %i.kk = phi i32 [ %.pre.i, %bb.ai ], [ %i.ih, %bb.ab ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i64 %indvars.iv.next.i, %i.kl
  br i1 %i.km, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !48

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.z
  %lcmp.mod566.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod566.not, label %._crit_edge.i, label %.epil.preheader563

.epil.preheader563:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.split.us.i
  %indvars.iv76.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i ], [ %indvars.iv.next77.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod567 = icmp ne i64 %xtraiter564, 0
  tail call void @llvm.assume(i1 %lcmp.mod567)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader563
  %indvars.iv76.i.epil = phi i64 [ %indvars.iv.next77.i.epil, %bb.ak ], [ %indvars.iv76.i.epil.init, %.epil.preheader563 ] ; 2 uses
  %epil.iter565 = phi i64 [ %epil.iter565.next, %bb.ak ], [ 0, %.epil.preheader563 ]
  %gep.i.epil = getelementptr inbounds nuw [16896 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i.epil
  store float 0.000000e+00, ptr %gep.i.epil, align 4, !tbaa !39
  %indvars.iv.next77.i.epil = add nuw nsw i64 %indvars.iv76.i.epil, 1
  %epil.iter565.next = add i64 %epil.iter565, 1   ; 2 uses
  %epil.iter565.cmp.not = icmp eq i64 %epil.iter565.next, %xtraiter564
  br i1 %epil.iter565.cmp.not, label %._crit_edge.i, label %bb.ak, !llvm.loop !50

._crit_edge.i:                                    ; preds = %bb.aj, %._crit_edge.i.loopexit.unr-lcssa, %bb.ak, %.preheader.i
  %i.kn = phi i32 [ %i.hs, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.hs, %.preheader.i ], [ %i.hs, %bb.ak ], [ %i.kj, %bb.aj ]
  %i.ko = phi i32 [ %i.hs, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ht, %.preheader.i ], [ %i.hs, %bb.ak ], [ %i.kk, %bb.aj ]
  %i.kp = phi i32 [ %i.hs, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.hu, %.preheader.i ], [ %i.hs, %bb.ak ], [ %i.kk, %bb.aj ]
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, 21
  br i1 %exitcond82.not.i, label %celt_decode_coarse_energy.exit, label %.preheader.i, !llvm.loop !51

celt_decode_coarse_energy.exit:                   ; preds = %._crit_edge.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.kq = load i32, ptr %i.i, align 4, !tbaa !18  ; 2 uses
  %.not.i270 = icmp eq i32 %i.kq, 0
  %i.kr = select i1 %.not.i270, i32 4, i32 2      ; 2 uses
  %i.ks = load i32, ptr %i.az, align 8, !tbaa !37
  %i.kt = load i32, ptr %i.bb, align 8, !tbaa !38 ; 3 uses
  %.not.i.i54.i = icmp ult i32 %i.kt, 65536       ; 2 uses
  %i.ku = lshr i32 %i.kt, 16
  %spec.select.i.i55.i = select i1 %.not.i.i54.i, i32 %i.kt, i32 %i.ku ; 3 uses
  %spec.select12.i.i56.i = select i1 %.not.i.i54.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i57.i = icmp samesign ult i32 %spec.select.i.i55.i, 256 ; 2 uses
  %i.kv = lshr i32 %spec.select.i.i55.i, 8
  %i.kw = or disjoint i32 %spec.select12.i.i56.i, 8
  %.110.i.i58.i = select i1 %.not11.i.i57.i, i32 %spec.select.i.i55.i, i32 %i.kv
  %.1.i.i59.i = select i1 %.not11.i.i57.i, i32 %spec.select12.i.i56.i, i32 %i.kw
  %i.kx = zext nneg i32 %.110.i.i58.i to i64
  %i.ky = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !30
  %i.la = zext i8 %i.kz to i32
  %i.lb = add nuw nsw i32 %.1.i.i59.i, %i.la
  %i.lc = xor i32 %i.lb, -1
  %i.ld = add i32 %i.ks, %i.lc                    ; 2 uses
  %i.le = load i32, ptr %i.ab, align 4, !tbaa !31
  %.not50.i = icmp eq i32 %i.le, 0
  br i1 %.not50.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %celt_decode_coarse_energy.exit
  %i.lf = add nsw i32 %i.ld, %i.kr
  %i.lg = load i32, ptr %i.r, align 4, !tbaa !29
  %i.lh = icmp slt i32 %i.lf, %i.lg
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %celt_decode_coarse_energy.exit
  %i.li = phi i1 [ false, %celt_decode_coarse_energy.exit ], [ %i.lh, %bb.al ] ; 2 uses
  %i.lj = zext i1 %i.li to i32
  %i.lk = load i32, ptr %i.m, align 8, !tbaa !22  ; 2 uses
  %i.ll = load i32, ptr %i.n, align 4, !tbaa !23  ; 2 uses
  %i.lm = icmp slt i32 %i.lk, %i.ll
  br i1 %i.lm, label %.lr.ph.i273, label %._crit_edge.i271

.lr.ph.i273:                                      ; preds = %bb.am
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 34432
  %i.lo = sext i32 %i.lk to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i273
  %indvars.iv.i274 = phi i64 [ %i.lo, %.lr.ph.i273 ], [ %indvars.iv.next.i282, %bb.ap ] ; 2 uses
  %.064.i = phi i32 [ %i.kr, %.lr.ph.i273 ], [ %i.mj, %bb.ap ] ; 2 uses
  %.04263.i = phi i32 [ %i.ld, %.lr.ph.i273 ], [ %.1.i281, %bb.ap ] ; 2 uses
  %.04362.i = phi i32 [ 0, %.lr.ph.i273 ], [ %.144.i, %bb.ap ] ; 2 uses
  %.04661.i = phi i32 [ 0, %.lr.ph.i273 ], [ %.147.i, %bb.ap ] ; 2 uses
  %i.lp = add nuw nsw i32 %.064.i, %i.lj
  %i.lq = add i32 %i.lp, %.04263.i
  %i.lr = load i32, ptr %i.r, align 4, !tbaa !29
  %.not52.i = icmp sgt i32 %i.lq, %i.lr
  br i1 %.not52.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ls = tail call i32 @ff_opus_rc_dec_log(ptr noundef %1, i32 noundef %.064.i) #8
  %i.lt = xor i32 %i.ls, %.04661.i                ; 2 uses
end_hunk_0
begin_hunk_1_@ff_celt_decode_frame:bb.a

.lr.ph.1.i:                                       ; preds = %.preheader.1.i
  %invariant.gep.1.i = getelementptr [4 x i8], ptr %i.hn, i64 %indvars.iv47.1.i
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.1.i
  %indvars.iv.1.i = phi i64 [ 0, %.lr.ph.1.i ], [ %indvars.iv.next.1.i, %bb.bd ] ; 2 uses
  %.233.1.i = phi i32 [ %.134.1.i, %.lr.ph.1.i ], [ %i.rv, %bb.bd ]
  %i.rk = tail call i32 @ff_opus_rc_get_raw(ptr noundef %1, i32 noundef 1) #8
  %i.rl = sitofp nsz i32 %i.rk to float
  %i.rm = fadd nnan nsz float %i.rl, -5.000000e-01
  %i.rn = load i32, ptr %i.rg, align 4, !tbaa !52
  %i.ro = sub i32 13, %i.rn
  %i.rp = shl nuw i32 1, %i.ro
  %i.rq = sitofp nsz i32 %i.rp to float
  %i.rr = fmul nsz float %i.rm, %i.rq
  %i.rs = fmul nsz float %i.rr, f0x38800000
  %gep.1.i = getelementptr [16896 x i8], ptr %invariant.gep.1.i, i64 %indvars.iv.1.i ; 2 uses
  %i.rt = load float, ptr %gep.1.i, align 4, !tbaa !39
  %i.ru = fadd nsz float %i.rt, %i.rs
  store float %i.ru, ptr %gep.1.i, align 4, !tbaa !39
  %i.rv = add nsw i32 %.233.1.i, -1               ; 2 uses
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.rw = load i32, ptr %i.l, align 8, !tbaa !21  ; 3 uses
  %i.rx = sext i32 %i.rw to i64
  %i.ry = icmp slt i64 %indvars.iv.next.1.i, %i.rx
  br i1 %i.ry, label %bb.bd, label %.loopexit.loopexit.1.i, !llvm.loop !58

.loopexit.loopexit.1.i:                           ; preds = %bb.bd
  %.pre53.i = load i32, ptr %i.n, align 4, !tbaa !23
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.preheader.1.i, %bb.bc, %bb.bb
  %i.rz = phi i32 [ %i.rb, %bb.bb ], [ %i.rb, %bb.bc ], [ %i.rb, %.preheader.1.i ], [ %.pre53.i, %.loopexit.loopexit.1.i ] ; 3 uses
  %i.sa = phi i32 [ %i.rc, %bb.bb ], [ %i.rc, %bb.bc ], [ %i.rc, %.preheader.1.i ], [ %i.rw, %.loopexit.loopexit.1.i ] ; 2 uses
  %i.sb = phi i32 [ %i.rd, %bb.bb ], [ %i.rd, %bb.bc ], [ %i.rc, %.preheader.1.i ], [ %i.rw, %.loopexit.loopexit.1.i ]
  %.3.1.i = phi i32 [ %.134.1.i, %bb.bb ], [ %.134.1.i, %bb.bc ], [ %.134.1.i, %.preheader.1.i ], [ %i.rv, %.loopexit.loopexit.1.i ]
  %indvars.iv.next48.1.i = add nsw i64 %indvars.iv47.1.i, 1 ; 2 uses
  %i.sc = sext i32 %i.rz to i64
  %i.sd = icmp slt i64 %indvars.iv.next48.1.i, %i.sc
  br i1 %i.sd, label %.lr.ph36.1.i, label %celt_decode_final_energy.exit, !llvm.loop !59

celt_decode_final_energy.exit:                    ; preds = %.lr.ph36.1.i, %.loopexit.1.i, %bb.ax, %.critedge.i
  %i.se = phi i32 [ %i.qy, %.critedge.i ], [ %i.pg, %bb.ax ], [ %i.rb, %.lr.ph36.1.i ], [ %i.rz, %.loopexit.1.i ] ; 2 uses
  %i.sf = phi i32 [ %.pre52.i, %.critedge.i ], [ %.pre434, %bb.ax ], [ %i.rc, %.lr.ph36.1.i ], [ %i.sa, %.loopexit.1.i ] ; 5 uses
  %i.sg = icmp sgt i32 %i.sf, 0
  br i1 %i.sg, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %celt_decode_final_energy.exit
  %i.sh = load i32, ptr %i.j, align 4, !tbaa !19
  %.not253 = icmp eq i32 %i.sh, 0
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 34348
  %i.sj = icmp eq i32 %i.sf, 1
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 17228
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 17312
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 34060 ; 2 uses
  %i.sn = load i32, ptr %i.m, align 8, !tbaa !22  ; 2 uses
  %i.so = icmp slt i32 %i.sn, %i.se               ; 2 uses
  %i.sp = sext i32 %i.sn to i64                   ; 2 uses
  %wide.trip.count28.i = sext i32 %i.se to i64    ; 2 uses
  %wide.trip.count399 = zext nneg i32 %i.sf to i64
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph357, %celt_denormalize.exit
  %indvars.iv396 = phi i64 [ 0, %.lr.ph357 ], [ %indvars.iv.next397, %celt_denormalize.exit ] ; 2 uses
  %i.sq = getelementptr inbounds nuw [16896 x i8], ptr %i.hn, i64 %indvars.iv396 ; 7 uses
  br i1 %.not253, label %process_anticollapse.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8640
  br i1 %i.so, label %.lr.ph89.i, label %celt_denormalize.exit

.lr.ph89.i:                                       ; preds = %bb.bf
  %i.ss = load i32, ptr %i.ab, align 4, !tbaa !31 ; 10 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 252
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 336
  %i.sv = icmp eq i32 %i.ss, 3
  %i.sw = shl nuw i32 1, %i.ss                    ; 3 uses
  %.not91.i = icmp eq i32 %i.ss, 31
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 420
  %smax.i310 = tail call i32 @llvm.smax.i32(i32 %i.sw, i32 1) ; 2 uses
  %min.iters.check514 = icmp slt i32 %i.sw, 8
  %n.vec516 = and i32 %smax.i310, 2147483640
  %exitcond98.not.i = icmp slt i32 %i.sw, 2
  %exitcond98.not.i.1 = icmp eq i32 %i.ss, 1
  %exitcond98.not.i.3 = icmp eq i32 %i.ss, 2
  br label %bb.bg

bb.bg:                                            ; preds = %celt_renormalize_vector.exit.i, %.lr.ph89.i
  %indvars.iv106.i = phi i64 [ %i.sp, %.lr.ph89.i ], [ %indvars.iv.next107.i, %celt_renormalize_vector.exit.i ] ; 10 uses
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.si, i64 %indvars.iv106.i
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !52
  %i.ta = add nsw i32 %i.sz, 1
  %i.tb = getelementptr inbounds i8, ptr @ff_celt_freq_range, i64 %indvars.iv106.i
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !30
  %.fr92.i = freeze i8 %i.tc                      ; 4 uses
  %i.td = zext i8 %.fr92.i to i32                 ; 3 uses
  %i.te = shl i32 %i.td, %i.ss                    ; 6 uses
  %i.tf = sdiv i32 %i.ta, %i.te
  %i.tg = sitofp nsz i32 %i.tf to float
  %i.th = fmul nnan nsz float %i.tg, 1.250000e-01
  %i.ti = fsub nsz float -1.000000e+00, %i.th
  %i.tj = tail call nsz float @llvm.exp2.f32(float %i.ti) ; 2 uses
  %i.tk = sitofp nsz i32 %i.te to float
  %i.tl = tail call ninf nsz float @llvm.sqrt.f32(float %i.tk)
  %i.tm = fdiv nsz float 1.000000e+00, %i.tl
  %i.tn = getelementptr inbounds i8, ptr @ff_celt_freq_bands, i64 %indvars.iv106.i
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !30
  %i.tp = zext i8 %i.to to i32
  %i.tq = shl i32 %i.tp, %i.ss
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.tr ; 10 uses
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.st, i64 %indvars.iv106.i
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !39 ; 3 uses
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %indvars.iv106.i
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !39 ; 3 uses
  br i1 %i.sj, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %indvars.iv106.i
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !39 ; 2 uses
  %i.tz = fcmp nsz ogt float %i.tu, %i.ty
  %..i = select nsz i1 %i.tz, float %i.tu, float %i.ty
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %indvars.iv106.i
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !39 ; 2 uses
  %i.uc = fcmp nsz ogt float %i.tw, %i.ub
  %i.ud = select nsz i1 %i.uc, float %i.tw, float %i.ub
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.8.0.i = phi nsz float [ %i.ud, %bb.bh ], [ %i.tw, %bb.bg ] ; 2 uses
  %.sroa.0.0.i = phi nsz float [ %..i, %bb.bh ], [ %i.tu, %bb.bg ] ; 2 uses
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %indvars.iv106.i
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !39
  %i.ug = fcmp nsz ogt float %.sroa.0.0.i, %.sroa.8.0.i
  %i.uh = select nsz i1 %i.ug, float %.sroa.8.0.i, float %.sroa.0.0.i
  %i.ui = fsub nsz float %i.uf, %i.uh             ; 2 uses
  %i.uj = fcmp nsz olt float %i.ui, 0.000000e+00
  %i.uk = select nsz i1 %i.uj, float 0.000000e+00, float %i.ui
  %i.ul = fsub nsz float 1.000000e+00, %i.uk
  %i.um = tail call nsz float @llvm.exp2.f32(float %i.ul) ; 2 uses
  %i.un = fpext nsz float %i.um to double
  %i.uo = fmul nsz double %i.un, f0x3FF6A09E667F3BCD
  %i.up = fptrunc nsz double %i.uo to float
  %.0.i311 = select nsz i1 %i.sv, float %i.up, float %i.um ; 2 uses
  %i.uq = fcmp nsz ogt float %i.tj, %.0.i311
  %i.ur = select nsz i1 %i.uq, float %.0.i311, float %i.tj
  %i.us = fmul nsz float %i.tm, %i.ur             ; 4 uses
  br i1 %.not91.i, label %celt_renormalize_vector.exit.i, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.bi
  %i.ut = getelementptr inbounds i8, ptr %i.sx, i64 %indvars.iv106.i ; 2 uses
  %.not93.i = icmp eq i8 %.fr92.i, 0
  %i.uu = fneg nsz float %i.us                    ; 3 uses
  br i1 %.not93.i, label %.lr.ph79.split.i, label %.lr.ph79.split.us.i.preheader

.lr.ph79.split.us.i.preheader:                    ; preds = %.lr.ph79.i
  %xtraiter571 = and i32 %i.td, 1
  %i.uv = icmp eq i8 %.fr92.i, 1
  %unroll_iter576 = and i32 %i.td, 254
  %lcmp.mod573.not = icmp eq i32 %xtraiter571, 0
  %lcmp.mod575 = trunc i8 %.fr92.i to i1
  br label %.lr.ph79.split.us.i

.lr.ph79.split.us.i:                              ; preds = %.lr.ph79.split.us.i.preheader, %bb.bj
  %.06578.us.i = phi i32 [ %.1.us.i, %bb.bj ], [ 0, %.lr.ph79.split.us.i.preheader ]
  %.06677.us.i = phi i32 [ %i.vt, %bb.bj ], [ 0, %.lr.ph79.split.us.i.preheader ] ; 5 uses
  %i.uw = load i8, ptr %i.ut, align 1, !tbaa !30
  %i.ux = zext i8 %i.uw to i32
  %i.uy = shl nuw i32 1, %.06677.us.i
  %i.uz = and i32 %i.uy, %i.ux
  %.not73.us.i = icmp eq i32 %i.uz, 0
  br i1 %.not73.us.i, label %.preheader.us.i, label %bb.bj

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %i.va = phi i32 [ %i.vl, %.preheader.us.i.new ], [ %.promoted.us.i, %.preheader.us.i ]
  %.06776.us.i = phi i32 [ %i.vs, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 3 uses
  %niter577 = phi i32 [ %niter577.next.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.vb = mul i32 %i.va, 1664525
  %i.vc = add i32 %i.vb, 1013904223               ; 2 uses
  %i.vd = and i32 %i.vc, 32768
  %.not74.us.i = icmp eq i32 %i.vd, 0
  %i.ve = select nsz i1 %.not74.us.i, float %i.uu, float %i.us
  %i.vf = shl i32 %.06776.us.i, %i.ss
  %i.vg = add nsw i32 %i.vf, %.06677.us.i
  %i.vh = sext i32 %i.vg to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.vh
  store float %i.ve, ptr %i.vi, align 4, !tbaa !39
  %i.vj = or disjoint i32 %.06776.us.i, 1
  %i.vk = mul i32 %i.vc, 1664525
  %i.vl = add i32 %i.vk, 1013904223               ; 4 uses
  %i.vm = and i32 %i.vl, 32768
  %.not74.us.i.1 = icmp eq i32 %i.vm, 0
  %i.vn = select nsz i1 %.not74.us.i.1, float %i.uu, float %i.us
  %i.vo = shl i32 %i.vj, %i.ss
  %i.vp = add nsw i32 %i.vo, %.06677.us.i
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.vq
  store float %i.vn, ptr %i.vr, align 4, !tbaa !39
  %i.vs = add nuw nsw i32 %.06776.us.i, 2         ; 2 uses
  %niter577.next.1 = add i32 %niter577, 2         ; 2 uses
  %niter577.ncmp.1 = icmp eq i32 %niter577.next.1, %unroll_iter576
  br i1 %niter577.ncmp.1, label %..loopexit_crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !60

bb.bj:                                            ; preds = %..loopexit_crit_edge.us.i, %.lr.ph79.split.us.i
  %.1.us.i = phi i32 [ %.06578.us.i, %.lr.ph79.split.us.i ], [ 1, %..loopexit_crit_edge.us.i ] ; 2 uses
  %i.vt = add nuw nsw i32 %.06677.us.i, 1         ; 2 uses
  %exitcond96.not.i = icmp eq i32 %i.vt, %smax.i310
  br i1 %exitcond96.not.i, label %._crit_edge.i312, label %.lr.ph79.split.us.i, !llvm.loop !61

.preheader.us.i:                                  ; preds = %.lr.ph79.split.us.i
  %.promoted.us.i = load i32, ptr %i.sm, align 4, !tbaa !62 ; 2 uses
  br i1 %i.uv, label %.epil.preheader570, label %.preheader.us.i.new

..loopexit_crit_edge.us.i.unr-lcssa:              ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod573.not, label %..loopexit_crit_edge.us.i, label %.epil.preheader570

.epil.preheader570:                               ; preds = %..loopexit_crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %.epil.init = phi i32 [ %.promoted.us.i, %.preheader.us.i ], [ %i.vl, %..loopexit_crit_edge.us.i.unr-lcssa ]
  %.06776.us.i.epil.init = phi i32 [ 0, %.preheader.us.i ], [ %i.vs, %..loopexit_crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod575)
  %i.vu = mul i32 %.epil.init, 1664525
  %i.vv = add i32 %i.vu, 1013904223               ; 2 uses
  %i.vw = and i32 %i.vv, 32768
  %.not74.us.i.epil = icmp eq i32 %i.vw, 0
  %i.vx = select nsz i1 %.not74.us.i.epil, float %i.uu, float %i.us
  %i.vy = shl i32 %.06776.us.i.epil.init, %i.ss
  %i.vz = add nsw i32 %i.vy, %.06677.us.i
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.wa
  store float %i.vx, ptr %i.wb, align 4, !tbaa !39
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %..loopexit_crit_edge.us.i.unr-lcssa, %.epil.preheader570
  %.lcssa548 = phi i32 [ %i.vl, %..loopexit_crit_edge.us.i.unr-lcssa ], [ %i.vv, %.epil.preheader570 ]
  store i32 %.lcssa548, ptr %i.sm, align 4, !tbaa !62
  br label %bb.bj

.lr.ph79.split.i:                                 ; preds = %.lr.ph79.i
  %i.wc = load i8, ptr %i.ut, align 1, !tbaa !30
  %i.wd = zext i8 %i.wc to i32                    ; 5 uses
  br i1 %min.iters.check514, label %.preheader.i319, label %vector.ph515

vector.ph515:                                     ; preds = %.lr.ph79.split.i
  %broadcast.splatinsert517 = insertelement <4 x i32> poison, i32 %i.wd, i64 0
  %broadcast.splat518 = shufflevector <4 x i32> %broadcast.splatinsert517, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph515
  %index520 = phi i32 [ 0, %vector.ph515 ], [ %index.next522, %vector.body519 ]
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph515 ], [ %i.wk, %vector.body519 ]
  %vec.phi521 = phi <4 x i1> [ zeroinitializer, %vector.ph515 ], [ %i.wl, %vector.body519 ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph515 ], [ %vec.ind.next, %vector.body519 ] ; 3 uses
  %i.we = shl nuw <4 x i32> splat (i32 1), %vec.ind
  %i.wf = shl nuw <4 x i32> splat (i32 16), %vec.ind
  %i.wg = and <4 x i32> %i.we, %broadcast.splat518
  %i.wh = and <4 x i32> %i.wf, %broadcast.splat518
  %i.wi = icmp eq <4 x i32> %i.wg, zeroinitializer
  %i.wj = icmp eq <4 x i32> %i.wh, zeroinitializer
  %i.wk = or <4 x i1> %vec.phi, %i.wi             ; 2 uses
  %i.wl = or <4 x i1> %vec.phi521, %i.wj          ; 2 uses
  %index.next522 = add nuw i32 %index520, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.wm = icmp eq i32 %index.next522, %n.vec516
  br i1 %i.wm, label %middle.block523, label %vector.body519, !llvm.loop !63

middle.block523:                                  ; preds = %vector.body519
  %bin.rdx = or <4 x i1> %i.wl, %i.wk
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.wn = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not546 = icmp ne i4 %i.wn, 0
  %rdx.select = zext i1 %.not546 to i32
  br label %._crit_edge.i312

.preheader.i319:                                  ; preds = %.lr.ph79.split.i
  %i.wo = and i32 %i.wd, 1
  %spec.select.i320 = xor i32 %i.wo, 1            ; 2 uses
  br i1 %exitcond98.not.i, label %._crit_edge.i312, label %.preheader.i319.1

.preheader.i319.1:                                ; preds = %.preheader.i319
  %i.wp = and i32 %i.wd, 2
  %.not73.i.1 = icmp eq i32 %i.wp, 0
  %spec.select.i320.1 = select i1 %.not73.i.1, i32 1, i32 %spec.select.i320 ; 2 uses
  br i1 %exitcond98.not.i.1, label %._crit_edge.i312, label %.preheader.i319.3

.preheader.i319.3:                                ; preds = %.preheader.i319.1
  %i.wq = and i32 %i.wd, 12
  %.not585 = icmp eq i32 %i.wq, 12
  %spec.select.i320.3 = select i1 %.not585, i32 %spec.select.i320.1, i32 1 ; 2 uses
  br i1 %exitcond98.not.i.3, label %._crit_edge.i312, label %.preheader.i319.6

.preheader.i319.6:                                ; preds = %.preheader.i319.3
  %i.wr = and i32 %i.wd, 112
  %.not587 = icmp eq i32 %i.wr, 112
  %spec.select.i320.6 = select i1 %.not587, i32 %spec.select.i320.3, i32 1
  br label %._crit_edge.i312

._crit_edge.i312:                                 ; preds = %bb.bj, %.preheader.i319, %.preheader.i319.1, %.preheader.i319.3, %.preheader.i319.6, %middle.block523
  %.065.lcssa.i = phi i32 [ %spec.select.i320.3, %.preheader.i319.3 ], [ %rdx.select, %middle.block523 ], [ %spec.select.i320, %.preheader.i319 ], [ %spec.select.i320.1, %.preheader.i319.1 ], [ %spec.select.i320.6, %.preheader.i319.6 ], [ %.1.us.i, %bb.bj ]
  %.not.i313 = icmp ne i32 %.065.lcssa.i, 0
  %i.ws = icmp sgt i32 %i.te, 0
  %or.cond.i = and i1 %i.ws, %.not.i313
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %celt_renormalize_vector.exit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i312
  %wide.trip.count.i314 = zext nneg i32 %i.te to i64 ; 5 uses
  %xtraiter578 = and i64 %wide.trip.count.i314, 3 ; 3 uses
  %i.wt = icmp ult i32 %i.te, 4
  br i1 %i.wt, label %.lr.ph.i315.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter583 = and i64 %wide.trip.count.i314, 2147483644
  br label %.lr.ph.i315

.lr.ph.i315:                                      ; preds = %.lr.ph.i315, %.lr.ph.preheader.i.new
  %indvars.iv.i316 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i317.3, %.lr.ph.i315 ] ; 5 uses
  %.0.i81.i = phi float [ 1.000000e-15, %.lr.ph.preheader.i.new ], [ %i.xi, %.lr.ph.i315 ]
  %niter584 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter584.next.3, %.lr.ph.i315 ]
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv.i316
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !39 ; 2 uses
  %i.ww = tail call nsz float @llvm.fmuladd.f32(float %i.wv, float %i.wv, float %.0.i81.i)
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv.i316
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !39 ; 2 uses
  %i.xa = tail call nsz float @llvm.fmuladd.f32(float %i.wz, float %i.wz, float %i.ww)
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv.i316
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !39 ; 2 uses
  %i.xe = tail call nsz float @llvm.fmuladd.f32(float %i.xd, float %i.xd, float %i.xa)
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv.i316
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 12
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !39 ; 2 uses
  %i.xi = tail call nsz float @llvm.fmuladd.f32(float %i.xh, float %i.xh, float %i.xe) ; 3 uses
  %indvars.iv.next.i317.3 = add nuw nsw i64 %indvars.iv.i316, 4 ; 2 uses
  %niter584.next.3 = add i64 %niter584, 4         ; 2 uses
  %niter584.ncmp.3 = icmp eq i64 %niter584.next.3, %unroll_iter583
  br i1 %niter584.ncmp.3, label %.lr.ph86.preheader.i.unr-lcssa, label %.lr.ph.i315, !llvm.loop !66

.lr.ph86.preheader.i.unr-lcssa:                   ; preds = %.lr.ph.i315
  %lcmp.mod580.not = icmp eq i64 %xtraiter578, 0
  br i1 %lcmp.mod580.not, label %.lr.ph86.preheader.i, label %.lr.ph.i315.epil.preheader

.lr.ph.i315.epil.preheader:                       ; preds = %.lr.ph86.preheader.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i316.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i317.3, %.lr.ph86.preheader.i.unr-lcssa ]
  %.0.i81.i.epil.init = phi float [ 1.000000e-15, %.lr.ph.preheader.i ], [ %i.xi, %.lr.ph86.preheader.i.unr-lcssa ]
  %lcmp.mod582 = icmp ne i64 %xtraiter578, 0
  tail call void @llvm.assume(i1 %lcmp.mod582)
  br label %.lr.ph.i315.epil

.lr.ph.i315.epil:                                 ; preds = %.lr.ph.i315.epil, %.lr.ph.i315.epil.preheader
  %indvars.iv.i316.epil = phi i64 [ %indvars.iv.i316.epil.init, %.lr.ph.i315.epil.preheader ], [ %indvars.iv.next.i317.epil, %.lr.ph.i315.epil ] ; 2 uses
  %.0.i81.i.epil = phi float [ %.0.i81.i.epil.init, %.lr.ph.i315.epil.preheader ], [ %i.xl, %.lr.ph.i315.epil ]
  %epil.iter579 = phi i64 [ 0, %.lr.ph.i315.epil.preheader ], [ %epil.iter579.next, %.lr.ph.i315.epil ]
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv.i316.epil
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !39 ; 2 uses
  %i.xl = tail call nsz float @llvm.fmuladd.f32(float %i.xk, float %i.xk, float %.0.i81.i.epil) ; 2 uses
  %indvars.iv.next.i317.epil = add nuw nsw i64 %indvars.iv.i316.epil, 1
  %epil.iter579.next = add i64 %epil.iter579, 1   ; 2 uses
  %epil.iter579.cmp.not = icmp eq i64 %epil.iter579.next, %xtraiter578
  br i1 %epil.iter579.cmp.not, label %.lr.ph86.preheader.i, label %.lr.ph.i315.epil, !llvm.loop !67

.lr.ph86.preheader.i:                             ; preds = %.lr.ph.i315.epil, %.lr.ph86.preheader.i.unr-lcssa
  %.lcssa551 = phi float [ %i.xi, %.lr.ph86.preheader.i.unr-lcssa ], [ %i.xl, %.lr.ph.i315.epil ]
  %i.xm = tail call nsz float @llvm.sqrt.f32(float %.lcssa551)
  %i.xn = fdiv nsz float 1.000000e+00, %i.xm      ; 2 uses
  %min.iters.check500 = icmp ult i32 %i.te, 8
  br i1 %min.iters.check500, label %.lr.ph86.i.preheader, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph86.preheader.i
  %n.vec502 = and i64 %wide.trip.count.i314, 2147483640 ; 3 uses
  %broadcast.splatinsert503 = insertelement <4 x float> poison, float %i.xn, i64 0
  %broadcast.splat504 = shufflevector <4 x float> %broadcast.splatinsert503, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph501
  %index506 = phi i64 [ 0, %vector.ph501 ], [ %index.next509, %vector.body505 ] ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %index506 ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 16 ; 2 uses
  %wide.load507 = load <4 x float>, ptr %i.xo, align 4, !tbaa !39
  %wide.load508 = load <4 x float>, ptr %i.xp, align 4, !tbaa !39
  %i.xq = fmul nsz <4 x float> %broadcast.splat504, %wide.load507
  %i.xr = fmul nsz <4 x float> %broadcast.splat504, %wide.load508
  store <4 x float> %i.xq, ptr %i.xo, align 4, !tbaa !39
  store <4 x float> %i.xr, ptr %i.xp, align 4, !tbaa !39
  %index.next509 = add nuw i64 %index506, 8       ; 2 uses
  %i.xs = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.xs, label %middle.block510, label %vector.body505, !llvm.loop !68

middle.block510:                                  ; preds = %vector.body505
  %cmp.n511 = icmp eq i64 %n.vec502, %wide.trip.count.i314
  br i1 %cmp.n511, label %celt_renormalize_vector.exit.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %.lr.ph86.preheader.i, %middle.block510
  %indvars.iv101.i.ph = phi i64 [ 0, %.lr.ph86.preheader.i ], [ %n.vec502, %middle.block510 ]
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %.lr.ph86.i ], [ %indvars.iv101.i.ph, %.lr.ph86.i.preheader ] ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv101.i ; 2 uses
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !39
  %i.xv = fmul nsz float %i.xn, %i.xu
  store float %i.xv, ptr %i.xt, align 4, !tbaa !39
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count.i314
  br i1 %exitcond105.not.i, label %celt_renormalize_vector.exit.i, label %.lr.ph86.i, !llvm.loop !69

celt_renormalize_vector.exit.i:                   ; preds = %.lr.ph86.i, %middle.block510, %._crit_edge.i312, %bb.bi
  %indvars.iv.next107.i = add nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond110.not.i = icmp eq i64 %indvars.iv.next107.i, %wide.trip.count28.i
  br i1 %exitcond110.not.i, label %process_anticollapse.exit, label %bb.bg, !llvm.loop !70

process_anticollapse.exit:                        ; preds = %celt_renormalize_vector.exit.i, %bb.be
  %i.xw = getelementptr inbounds nuw i8, ptr %i.sq, i64 8640
  br i1 %i.so, label %.lr.ph22.i321, label %celt_denormalize.exit

.lr.ph22.i321:                                    ; preds = %process_anticollapse.exit
  %i.xx = load i32, ptr %i.ab, align 4, !tbaa !31 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i322, %.lr.ph22.i321
  %indvars.iv25.i = phi i64 [ %i.sp, %.lr.ph22.i321 ], [ %indvars.iv.next26.i, %._crit_edge.i322 ] ; 5 uses
  %i.xy = getelementptr inbounds i8, ptr @ff_celt_freq_bands, i64 %indvars.iv25.i
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !30
  %i.ya = zext i8 %i.xz to i32
  %i.yb = shl i32 %i.ya, %i.xx
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.xw, i64 %i.yc ; 2 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %indvars.iv25.i
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !39
  %i.yg = getelementptr inbounds [4 x i8], ptr @ff_celt_mean_energy, i64 %indvars.iv25.i
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !39
  %i.yi = fadd nsz float %i.yf, %i.yh             ; 2 uses
  %i.yj = fcmp nsz ogt float %i.yi, 3.200000e+01
  %i.yk = select nsz i1 %i.yj, float 3.200000e+01, float %i.yi
  %i.yl = tail call nsz float @llvm.exp2.f32(float %i.yk) ; 2 uses
  %i.ym = getelementptr inbounds i8, ptr @ff_celt_freq_range, i64 %indvars.iv25.i
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !30
  %i.yo = zext i8 %i.yn to i32
  %i.yp = shl i32 %i.yo, %i.xx                    ; 3 uses
  %i.yq = icmp sgt i32 %i.yp, 0
  br i1 %i.yq, label %.lr.ph.preheader.i323, label %._crit_edge.i322

.lr.ph.preheader.i323:                            ; preds = %bb.bk
  %wide.trip.count.i324 = zext nneg i32 %i.yp to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.yp, 8
  br i1 %min.iters.check, label %.lr.ph.i325.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i323
  %n.vec = and i64 %wide.trip.count.i324, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.yl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %index ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.yr, align 4, !tbaa !39
  %wide.load498 = load <4 x float>, ptr %i.ys, align 4, !tbaa !39
  %i.yt = fmul nsz <4 x float> %broadcast.splat, %wide.load
  %i.yu = fmul nsz <4 x float> %broadcast.splat, %wide.load498
  store <4 x float> %i.yt, ptr %i.yr, align 4, !tbaa !39
  store <4 x float> %i.yu, ptr %i.ys, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.yv = icmp eq i64 %index.next, %n.vec
  br i1 %i.yv, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i324
  br i1 %cmp.n, label %._crit_edge.i322, label %.lr.ph.i325.preheader

.lr.ph.i325.preheader:                            ; preds = %.lr.ph.preheader.i323, %middle.block
  %indvars.iv.i326.ph = phi i64 [ 0, %.lr.ph.preheader.i323 ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i325

.lr.ph.i325:                                      ; preds = %.lr.ph.i325.preheader, %.lr.ph.i325
  %indvars.iv.i326 = phi i64 [ %indvars.iv.next.i327, %.lr.ph.i325 ], [ %indvars.iv.i326.ph, %.lr.ph.i325.preheader ] ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv.i326 ; 2 uses
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !39
  %i.yy = fmul nsz float %i.yl, %i.yx
  store float %i.yy, ptr %i.yw, align 4, !tbaa !39
  %indvars.iv.next.i327 = add nuw nsw i64 %indvars.iv.i326, 1 ; 2 uses
  %exitcond.not.i328 = icmp eq i64 %indvars.iv.next.i327, %wide.trip.count.i324
  br i1 %exitcond.not.i328, label %._crit_edge.i322, label %.lr.ph.i325, !llvm.loop !72

._crit_edge.i322:                                 ; preds = %.lr.ph.i325, %middle.block, %bb.bk
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %celt_denormalize.exit, label %bb.bk, !llvm.loop !73

celt_denormalize.exit:                            ; preds = %._crit_edge.i322, %bb.bf, %process_anticollapse.exit
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %._crit_edge358, label %bb.be, !llvm.loop !74

._crit_edge358:                                   ; preds = %celt_denormalize.exit, %celt_decode_final_energy.exit
  %i.yz = load i32, ptr %i.af, align 4, !tbaa !32 ; 2 uses
  %.not252 = icmp slt i32 %i.yz, %i.sf            ; 2 uses
  br i1 %.not252, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge358
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !75
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !76
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 8720
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 25616
  %i.zg = add nuw nsw i32 %4, 15
  %i.zh = and i32 %i.zg, -16
  tail call void %i.zd(ptr noundef nonnull %i.ze, ptr noundef nonnull %i.zf, float noundef 1.000000e+00, i32 noundef %i.zh) #8
  br label %bb.bo

bb.bm:                                            ; preds = %._crit_edge358
  %i.zi = icmp sgt i32 %i.yz, %i.sf
  br i1 %i.zi, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 25616
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 8720
  %i.zl = zext nneg i32 %4 to i64
  %i.zm = shl nuw nsw i64 %i.zl, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.zj, ptr nonnull align 16 %i.zk, i64 %i.zm, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bl
  %i.zn = load i32, ptr %i.h, align 4, !tbaa !17
  %.not249 = icmp eq i32 %i.zn, 0
  br i1 %.not249, label %bb.bp, label %.preheader339.preheader

.preheader339.preheader:                          ; preds = %bb.bo
  store <4 x float> splat (float -2.800000e+01), ptr %i.hn, align 8, !tbaa !39
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> splat (float -2.800000e+01), ptr %i.zo, align 8, !tbaa !39
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> splat (float -2.800000e+01), ptr %i.zp, align 8, !tbaa !39
end_hunk_1
