Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dec_celt?download=true
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
  %i.c = load ptr, ptr %0, align 16, !tbaa !16
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
  %i.g = load ptr, ptr %0, align 16, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.g, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %6) #8
  br label %bb.cb

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 34036 ; 4 uses
  store i32 0, ptr %i.h, align 4, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 33924 ; 7 uses
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34044 ; 3 uses
  store i32 0, ptr %i.j, align 4, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34056
  store i32 0, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33896 ; 8 uses
  store i32 %3, ptr %i.l, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33912 ; 11 uses
  store i32 %5, ptr %i.m, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33916 ; 12 uses
  store i32 %6, ptr %i.n, align 4, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !72
  %i.q = shl i32 %i.p, 3                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34084 ; 10 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !73
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
  %i.y = load i8, ptr %i.x, align 1, !tbaa !74
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %.1.i, %i.z             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 33908 ; 11 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !75
  %i.ac = icmp samesign ult i32 %i.aa, 4
  %i.ad = shl nuw nsw i32 120, %i.aa
  %.not = icmp eq i32 %4, %i.ad
  %or.cond254 = select i1 %i.ac, i1 %.not, i1 false
  br i1 %or.cond254, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %0, align 16, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %4) #8
  br label %bb.cb

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33900 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !19
  %.not240 = icmp eq i32 %i.ag, 0
  br i1 %.not240, label %bb.i, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  store i32 %3, ptr %i.af, align 4, !tbaa !19
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
  br i1 %niter.ncmp.3, label %.epil.preheader, label %.lr.ph.new, !llvm.loop !32

.epil.preheader:                                  ; preds = %.lr.ph.new, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.lr.ph.new ]
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
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !78 ; 4 uses
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
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !74
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %.1.i.i261, %i.bj
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %i.ba, %i.bl                    ; 3 uses
  %.not241 = icmp slt i32 %i.bm, %i.q
  br i1 %.not241, label %bb.k, label %.thread

.thread:                                          ; preds = %._crit_edge
  store i32 1, ptr %i.h, align 4, !tbaa !63
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %bb.k
  %i.bo = tail call i32 @ff_opus_rc_dec_log(ptr noundef nonnull %1, i32 noundef 15) #8 ; 2 uses
  store i32 %i.bo, ptr %i.h, align 4, !tbaa !63
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %thread-pre-split.thread, label %._crit_edge430

._crit_edge430:                                   ; preds = %thread-pre-split
  %.pre = load i32, ptr %i.r, align 4, !tbaa !73
  %.pre431 = load i32, ptr %i.bb, align 8, !tbaa !78 ; 2 uses
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
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !74
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %.1.i.i, %i.bx
  %.neg379 = add nuw nsw i32 %i.by, 1
  %i.bz = add i32 %.neg379, %i.br
  store i32 %i.bz, ptr %i.az, align 8, !tbaa !77
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.k, %bb.l, %thread-pre-split
  %.0218 = phi i32 [ %i.br, %bb.l ], [ 1, %thread-pre-split ], [ %i.bm, %bb.k ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16916 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ca, i8 0, i64 12, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 33812 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, i8 0, i64 12, i1 false)
  %i.cc = load i32, ptr %i.m, align 8, !tbaa !67
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %parse_postfilter.exit

bb.m:                                             ; preds = %thread-pre-split.thread
  %i.ce = add nsw i32 %.0218, 16
  %i.cf = load i32, ptr %i.r, align 4, !tbaa !73
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
  %i.cr = load i32, ptr %i.az, align 8, !tbaa !77
  %i.cs = load i32, ptr %i.bb, align 8, !tbaa !78 ; 3 uses
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
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !74
  %i.cy = zext i8 %i.cx to i32
  %.neg41.i = add i32 %i.cr, 1
  %i.cz = sub i32 %.neg41.i, %i.cy
  %i.da = add i32 %i.cz, %.1.i.i40.neg44.i
  %i.db = load i32, ptr %i.r, align 4, !tbaa !73
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
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !21
  %i.di = fmul nsz float %i.cq, %i.dh             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !21
  %i.dl = fmul nsz float %i.cq, %i.dk             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !21
  %i.do = fmul nsz float %i.cq, %i.dn             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16912
  store i32 %i.df, ptr %i.dp, align 16, !tbaa !79
  store float %i.di, ptr %i.ca, align 4, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16920
  store float %i.dl, ptr %i.dq, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16924
  store float %i.do, ptr %i.dr, align 4, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 33808
  store i32 %i.df, ptr %i.ds, align 16, !tbaa !79
  store float %i.di, ptr %i.cb, align 4, !tbaa !21
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 33816
  store float %i.dl, ptr %i.dt, align 8, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 33820
  store float %i.do, ptr %i.du, align 4, !tbaa !21
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.n
  %i.dv = load i32, ptr %i.az, align 8, !tbaa !77
  %i.dw = load i32, ptr %i.bb, align 8, !tbaa !78 ; 3 uses
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
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !74
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %.1.i.i.i, %i.ed
  %i.ef = xor i32 %i.ee, -1
  %i.eg = add i32 %i.dv, %i.ef
  br label %parse_postfilter.exit

parse_postfilter.exit:                            ; preds = %thread-pre-split.thread, %bb.m, %.loopexit.i
  %.0.i = phi i32 [ %i.eg, %.loopexit.i ], [ %.0218, %bb.m ], [ %.0218, %thread-pre-split.thread ]
  %i.eh = load i32, ptr %i.ab, align 4, !tbaa !75
  %.not243 = icmp eq i32 %i.eh, 0
  br i1 %.not243, label %thread-pre-split331, label %bb.q

bb.q:                                             ; preds = %parse_postfilter.exit
  %i.ei = add nsw i32 %.0.i, 3
  %i.ej = load i32, ptr %i.r, align 4, !tbaa !73
  %.not244 = icmp sgt i32 %i.ei, %i.ej
  br i1 %.not244, label %thread-pre-split331, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = tail call i32 @ff_opus_rc_dec_log(ptr noundef nonnull %1, i32 noundef 3) #8 ; 2 uses
  store i32 %i.ek, ptr %i.i, align 4, !tbaa !64
  br label %bb.s

thread-pre-split331:                              ; preds = %parse_postfilter.exit, %bb.q
  %.pr332 = load i32, ptr %i.i, align 4, !tbaa !64
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split331, %bb.r
  %i.el = phi i32 [ %.pr332, %thread-pre-split331 ], [ %i.ek, %bb.r ]
  %.not245 = icmp eq i32 %i.el, 0
  br i1 %.not245, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_0
