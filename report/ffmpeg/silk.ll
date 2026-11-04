Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/silk?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { float, i32, [5 x float] }

@.str = private unnamed_addr constant [48 x i8] c"Invalid parameters passed to the SILK decoder.\0A\00", align 1
@ff_silk_model_lbrr_flags_40 = external hidden constant [0 x i16], align 2
@ff_silk_model_lbrr_flags_60 = external hidden constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid number of output channels: %d\0A\00", align 1
@ff_silk_model_stereo_s1 = external hidden constant [0 x i16], align 2
@ff_silk_model_stereo_s2 = external hidden constant [0 x i16], align 2
@ff_silk_model_stereo_s3 = external hidden constant [0 x i16], align 2
@ff_silk_stereo_weights = external hidden local_unnamed_addr constant [0 x i16], align 2
@ff_silk_model_mid_only = external hidden constant [0 x i16], align 2
@ff_silk_model_frame_type_inactive = external hidden constant [0 x i16], align 2
@ff_silk_model_frame_type_active = external hidden constant [0 x i16], align 2
@ff_silk_model_gain_highbits = external hidden constant [3 x [9 x i16]], align 16
@ff_silk_model_gain_lowbits = external hidden constant [0 x i16], align 2
@ff_silk_model_gain_delta = external hidden constant [0 x i16], align 2
@ff_silk_model_pitch_delta = external hidden constant [0 x i16], align 2
@silk_decode_frame.model = internal unnamed_addr constant [3 x ptr] [ptr @ff_silk_model_lcg_seed, ptr @ff_silk_model_pitch_lowbits_mb, ptr @ff_silk_model_gain_lowbits], align 16
@ff_silk_model_lcg_seed = external hidden constant [0 x i16], align 2
@ff_silk_model_pitch_lowbits_mb = external hidden constant [0 x i16], align 2
@ff_silk_model_pitch_highbits = external hidden constant [0 x i16], align 2
@ff_silk_pitch_min_lag = external hidden local_unnamed_addr constant [0 x i16], align 2
@ff_silk_pitch_scale = external hidden local_unnamed_addr constant [0 x i16], align 2
@ff_silk_pitch_offset_nb10ms = external hidden local_unnamed_addr constant [3 x [2 x i8]], align 1
@ff_silk_model_pitch_contour_nb10ms = external hidden constant [0 x i16], align 2
@ff_silk_pitch_offset_mbwb10ms = external hidden local_unnamed_addr constant [12 x [2 x i8]], align 16
@ff_silk_model_pitch_contour_mbwb10ms = external hidden constant [0 x i16], align 2
@ff_silk_pitch_offset_nb20ms = external hidden local_unnamed_addr constant [11 x [4 x i8]], align 16
@ff_silk_model_pitch_contour_nb20ms = external hidden constant [0 x i16], align 2
@ff_silk_pitch_offset_mbwb20ms = external hidden local_unnamed_addr constant [34 x [4 x i8]], align 16
@ff_silk_model_pitch_contour_mbwb20ms = external hidden constant [0 x i16], align 2
@ff_silk_pitch_max_lag = external hidden local_unnamed_addr constant [0 x i16], align 2
@ff_silk_model_ltp_filter = external hidden constant [0 x i16], align 2
@silk_decode_frame.filter_sel = internal unnamed_addr constant [3 x ptr] [ptr @ff_silk_model_ltp_filter0_sel, ptr @ff_silk_model_ltp_filter1_sel, ptr @ff_silk_model_ltp_filter2_sel], align 16
@ff_silk_model_ltp_filter0_sel = external hidden constant [0 x i16], align 2
@ff_silk_model_ltp_filter1_sel = external hidden constant [0 x i16], align 2
@ff_silk_model_ltp_filter2_sel = external hidden constant [0 x i16], align 2
@silk_decode_frame.filter_taps = internal unnamed_addr constant [3 x ptr] [ptr @ff_silk_ltp_filter0_taps, ptr @ff_silk_ltp_filter1_taps, ptr @ff_silk_ltp_filter2_taps], align 16
@ff_silk_ltp_filter0_taps = external hidden constant [8 x [5 x i8]], align 16
@ff_silk_ltp_filter1_taps = external hidden constant [16 x [5 x i8]], align 16
@ff_silk_ltp_filter2_taps = external hidden constant [32 x [5 x i8]], align 16
@ff_silk_ltp_scale_factor = external hidden local_unnamed_addr constant [0 x i16], align 2
@ff_silk_model_ltp_scale_index = external hidden constant [0 x i16], align 2
@ff_silk_model_lsf_s1 = external hidden constant [2 x [2 x [33 x i16]]], align 16
@ff_silk_lsf_s2_model_sel_wb = external hidden local_unnamed_addr constant [32 x [16 x i8]], align 16
@ff_silk_lsf_s2_model_sel_nbmb = external hidden local_unnamed_addr constant [32 x [10 x i8]], align 16
@ff_silk_model_lsf_s2 = external hidden constant [32 x [10 x i16]], align 16
@ff_silk_model_lsf_s2_ext = external hidden constant [0 x i16], align 2
@ff_silk_lsf_pred_weights_wb = external hidden local_unnamed_addr constant [2 x [15 x i8]], align 16
@ff_silk_lsf_weight_sel_wb = external hidden local_unnamed_addr constant [32 x [15 x i8]], align 16
@ff_silk_lsf_pred_weights_nbmb = external hidden local_unnamed_addr constant [2 x [9 x i8]], align 16
@ff_silk_lsf_weight_sel_nbmb = external hidden local_unnamed_addr constant [32 x [9 x i8]], align 16
@ff_silk_lsf_codebook_wb = external hidden local_unnamed_addr constant [32 x [16 x i8]], align 16
@ff_silk_lsf_codebook_nbmb = external hidden local_unnamed_addr constant [32 x [10 x i8]], align 16
@ff_silk_model_lsf_weight_wb = external hidden local_unnamed_addr constant [32 x [16 x i16]], align 16
@ff_silk_model_lsf_weight_nbmb = external hidden local_unnamed_addr constant [32 x [10 x i16]], align 16
@ff_silk_lsf_min_spacing_wb = external hidden local_unnamed_addr constant [0 x i16], align 2
@ff_silk_lsf_min_spacing_nbmb = external hidden local_unnamed_addr constant [0 x i16], align 2
@ff_silk_model_lsf_interpolation_offset = external hidden constant [0 x i16], align 2
@ff_silk_lsf_ordering_nbmb = external hidden local_unnamed_addr constant [0 x i8], align 1
@ff_silk_lsf_ordering_wb = external hidden local_unnamed_addr constant [0 x i8], align 1
@ff_silk_cosine = external hidden local_unnamed_addr constant [0 x i16], align 2
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@ff_silk_shell_blocks = external hidden local_unnamed_addr constant [3 x [2 x i8]], align 1
@ff_silk_model_exc_rate = external hidden constant [2 x [10 x i16]], align 16
@ff_silk_model_pulse_count = external hidden constant [11 x [19 x i16]], align 16
@ff_silk_model_excitation_lsb = external hidden constant [0 x i16], align 2
@ff_silk_model_excitation_sign = external hidden constant [3 x [2 x [7 x [3 x i16]]]], align 16
@ff_silk_quant_offset = external hidden local_unnamed_addr constant [2 x [2 x i8]], align 1
@ff_silk_model_pulse_location = external hidden constant [4 x [168 x i16]], align 16
@ff_silk_stereo_interp_len = external hidden local_unnamed_addr constant [3 x i32], align 4

; Function Attrs: nounwind uwtable
define i32 @ff_silk_decode_superframe(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [6 x i32]], align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp ugt i32 %3, 2
  %i.c = icmp sgt i32 %4, 2
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp sgt i32 %5, 60
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 16, ptr noundef nonnull @.str) #9
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %5, 20                      ; 2 uses
  %i.g = select i1 %i.f, i32 2, i32 1
  %i.h = icmp sgt i32 %5, 40
  %i.i = zext i1 %i.h to i32
  %i.j = add nuw nsw i32 %i.g, %i.i               ; 5 uses
  %i.k = sdiv i32 %5, %i.j
  %i.l = sdiv i32 %i.k, 5                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.l, ptr %i.m, align 8, !tbaa !12
  %i.n = mul nuw nsw i32 %3, 20
  %i.o = add nuw nsw i32 %i.n, 40                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.o, ptr %i.p, align 4, !tbaa !13
  %i.q = mul nsw i32 %i.l, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %3, ptr %i.s, align 8, !tbaa !15
  %i.t = icmp eq i32 %3, 2
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.u, ptr %i.v, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10584 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50
  %i.y = icmp sgt i32 %4, %i.x
  br i1 %i.y, label %bb.d, label %silk_flush_frame.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %silk_flush_frame.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5264) %i.z, i8 0, i64 5264, i1 false)
  br label %silk_flush_frame.exit

silk_flush_frame.exit:                            ; preds = %bb.e, %bb.d, %bb.c
  store i32 %4, ptr %i.w, align 8, !tbaa !50
  %i.ab = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.ab, label %.preheader127.preheader, label %.preheader125.split

.preheader127.preheader:                          ; preds = %silk_flush_frame.exit
  %wide.trip.count148 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.preheader127

.preheader127:                                    ; preds = %.preheader127.preheader, %bb.g
  %.sroa.0.0 = phi i32 [ undef, %.preheader127.preheader ], [ %spec.select, %bb.g ]
  %.sroa.6.0 = phi i32 [ undef, %.preheader127.preheader ], [ %spec.select218, %bb.g ]
  %indvars.iv145 = phi i64 [ 0, %.preheader127.preheader ], [ %indvars.iv.next146, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv145
  br label %bb.f

.lr.ph:                                           ; preds = %bb.g
  %i.ad = icmp eq i32 %5, 40
  %i.ae = select i1 %i.ad, ptr @ff_silk_model_lbrr_flags_40, ptr @ff_silk_model_lbrr_flags_60
  br i1 %i.f, label %.lr.ph.split.preheader, label %.preheader124.us.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count153 = zext nneg i32 %4 to i64
  br label %.lr.ph.split

bb.f:                                             ; preds = %.preheader127, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.af = tail call i32 @ff_opus_rc_dec_log(ptr noundef %1, i32 noundef 1) #9
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.g, label %bb.f, !llvm.loop !31

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call i32 @ff_opus_rc_dec_log(ptr noundef %1, i32 noundef 1) #9 ; 2 uses
  %.sroa.idx175 = icmp eq i64 %indvars.iv145, 1   ; 2 uses
  %spec.select = select i1 %.sroa.idx175, i32 %.sroa.0.0, i32 %i.ah ; 3 uses
  %spec.select218 = select i1 %.sroa.idx175, i32 %i.ah, i32 %.sroa.6.0 ; 3 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %.lr.ph, label %.preheader127, !llvm.loop !32

.preheader124.us.preheader:                       ; preds = %bb.j, %.lr.ph
  %.sroa.6.2209 = phi i32 [ %spec.select218, %.lr.ph ], [ %.sroa.6.4, %bb.j ] ; 2 uses
  %.sroa.0.2208 = phi i32 [ %spec.select, %.lr.ph ], [ %.sroa.0.4, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %exitcond159.peel.not = icmp eq i32 %4, 1
  br label %.preheader124.us

.preheader124.us:                                 ; preds = %.preheader124.us.preheader, %._crit_edge.us
  %.2108133.us = phi i32 [ %i.ao, %._crit_edge.us ], [ 0, %.preheader124.us.preheader ] ; 5 uses
  %i.aj = shl nuw nsw i32 1, %.2108133.us         ; 2 uses
  %i.ak = and i32 %.sroa.0.2208, %i.aj
  %.not119.us.peel = icmp eq i32 %i.ak, 0
  br i1 %.not119.us.peel, label %bb.h, label %.split112.us.peel

.split112.us.peel:                                ; preds = %.preheader124.us
  %i.al = lshr i32 %.sroa.6.2209, %.2108133.us
  %i.am = and i32 %i.al, 1
  tail call fastcc void @silk_decode_frame(ptr noundef %0, ptr noundef %1, i32 noundef %.2108133.us, i32 noundef 0, i32 noundef %4, i32 noundef 1, i32 noundef %i.am, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %.split112.us.peel, %.preheader124.us
  %i.an = and i32 %.sroa.6.2209, %i.aj
  %.not119.us = icmp eq i32 %i.an, 0
  %or.cond193 = select i1 %exitcond159.peel.not, i1 true, i1 %.not119.us
  br i1 %or.cond193, label %._crit_edge.us, label %.split.us

.split.us:                                        ; preds = %bb.h
  tail call fastcc void @silk_decode_frame(ptr noundef %0, ptr noundef %1, i32 noundef %.2108133.us, i32 noundef 1, i32 noundef %4, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.split.us, %bb.h
  store i32 0, ptr %i.ai, align 4, !tbaa !21
  %i.ao = add nuw nsw i32 %.2108133.us, 1         ; 2 uses
  %exitcond161.not = icmp eq i32 %i.ao, %i.j
  br i1 %exitcond161.not, label %.preheader123, label %.preheader124.us, !llvm.loop !33

.preheader125.split:                              ; preds = %silk_flush_frame.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.ap, align 4, !tbaa !21
  br label %.preheader123

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %.sroa.0.3 = phi i32 [ %spec.select, %.lr.ph.split.preheader ], [ %.sroa.0.4, %bb.j ] ; 3 uses
  %.sroa.6.3 = phi i32 [ %spec.select218, %.lr.ph.split.preheader ], [ %.sroa.6.4, %bb.j ] ; 3 uses
  %indvars.iv150 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next151, %bb.j ] ; 2 uses
  %.sroa.idx = icmp eq i64 %indvars.iv150, 1      ; 3 uses
  %.sroa.speculated188 = select i1 %.sroa.idx, i32 %.sroa.6.3, i32 %.sroa.0.3
  %.not141 = icmp eq i32 %.sroa.speculated188, 0
  br i1 %.not141, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.aq = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.ae) #9 ; 2 uses
  %spec.select220 = select i1 %.sroa.idx, i32 %.sroa.0.3, i32 %i.aq
  %spec.select221 = select i1 %.sroa.idx, i32 %i.aq, i32 %.sroa.6.3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %.lr.ph.split ], [ %spec.select220, %bb.i ] ; 2 uses
  %.sroa.6.4 = phi i32 [ %.sroa.6.3, %.lr.ph.split ], [ %spec.select221, %bb.i ] ; 2 uses
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %.preheader124.us.preheader, label %.lr.ph.split, !llvm.loop !34

.preheader123:                                    ; preds = %._crit_edge.us, %.preheader125.split
  %i.ar = phi ptr [ %i.ap, %.preheader125.split ], [ %i.ai, %._crit_edge.us ] ; 3 uses
  %i.as = icmp sgt i32 %4, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 2 uses
  %i.av = icmp eq i32 %4, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 6696
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 10568 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 10576 ; 2 uses
  %wide.trip.count173 = zext nneg i32 %i.j to i64
  %wide.trip.count165 = zext nneg i32 %4 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader123, %.loopexit
  %indvars.iv170 = phi i64 [ 0, %.preheader123 ], [ %indvars.iv.next171, %.loopexit ] ; 6 uses
  br i1 %i.ab, label %.lr.ph135, label %.thread

.thread:                                          ; preds = %.preheader
  %.pre176188 = load i32, ptr %i.aw, align 8, !tbaa !22
  br label %bb.p

.lr.ph135:                                        ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv170
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv170
  %i.bd = trunc nuw nsw i64 %indvars.iv170 to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph135, %bb.n
  %indvars.iv162 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next163, %bb.n ] ; 3 uses
  %i.be = load i32, ptr %i.ar, align 4, !tbaa !21
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.l, label %.critedge.thread186

bb.l:                                             ; preds = %bb.k
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bg = phi i32 [ %i.bf, %bb.m ], [ 0, %bb.l ]
  %gep = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %i.bh = load i32, ptr %gep, align 4, !tbaa !19
  %i.bi = trunc nuw nsw i64 %indvars.iv162 to i32
  tail call fastcc void @silk_decode_frame(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bd, i32 noundef %i.bi, i32 noundef %4, i32 noundef %i.bh, i32 noundef %i.bg, i32 noundef 0)
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %.critedge, label %bb.k, !llvm.loop !35

.critedge:                                        ; preds = %bb.n
  %.pre175.pre = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.bj = icmp eq i32 %.pre175.pre, 0
  br i1 %i.bj, label %bb.o, label %.critedge.thread186

.critedge.thread186:                              ; preds = %bb.k, %.critedge
  %i.bk = load i32, ptr %i.au, align 8, !tbaa !18
  %.not118 = icmp eq i32 %i.bk, 0
  br i1 %.not118, label %bb.o, label %silk_flush_frame.exit122

silk_flush_frame.exit122:                         ; preds = %.critedge.thread186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5264) %i.au, i8 0, i64 5264, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %silk_flush_frame.exit122, %.critedge.thread186, %.critedge
  %.pre176 = load i32, ptr %i.aw, align 8, !tbaa !22 ; 2 uses
  br i1 %i.av, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %.pre176189 = phi i32 [ %.pre176188, %.thread ], [ %.pre176, %bb.o ]
  %i.bl = icmp eq i32 %.pre176189, 1
  br i1 %i.bl, label %.lr.ph138.preheader, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bm = icmp sgt i32 %.pre176, 0
  br i1 %i.bm, label %.lr.ph138.preheader, label %.loopexit

.lr.ph138.preheader:                              ; preds = %bb.p, %bb.q
  %i.bn = trunc nuw nsw i64 %indvars.iv170 to i32
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %indvars.iv167 = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next168, %.lr.ph138 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv167
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.bq = load i32, ptr %i.r, align 8, !tbaa !14  ; 2 uses
  %i.br = mul nsw i32 %i.bq, %i.bn
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = sext i32 %i.bq to i64                   ; 2 uses
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 1424
  %i.by = shl nsw i64 %i.bu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bt, ptr align 4 %i.bx, i64 %i.by, i1 false)
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.bz = load i32, ptr %i.aw, align 8, !tbaa !22
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next168, %i.ca
  br i1 %i.cb, label %.lr.ph138, label %.loopexit, !llvm.loop !36

bb.r:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %2, align 8, !tbaa !52    ; 4 uses
  %i.cd = load i32, ptr %i.r, align 8, !tbaa !14  ; 4 uses
  %i.ce = trunc i64 %indvars.iv170 to i32
  %i.cf = mul i32 %i.cd, %i.ce
  %i.cg = sext i32 %i.cf to i64                   ; 5 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cc, i64 %i.cg ; 6 uses
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !52 ; 4 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.cg ; 6 uses
  %i.ck = sext i32 %i.cd to i64                   ; 3 uses
  %i.cl = sub nsw i64 0, %i.ck                    ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.cl ; 8 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.cl ; 4 uses
  %i.co = load <2 x float>, ptr %i.ba, align 8, !tbaa !24 ; 5 uses
  %i.cp = load <2 x float>, ptr %i.bb, align 8, !tbaa !24 ; 4 uses
  %i.cq = load i32, ptr %i.s, align 8, !tbaa !15
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @ff_silk_stereo_interp_len, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !19 ; 6 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.cv = uitofp nneg i32 %i.ct to float          ; 2 uses
  %i.cw = fsub nsz <2 x float> %i.cp, %i.co       ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ct to i64 ; 5 uses
  %min.iters.check244 = icmp ult i32 %i.ct, 4
  br i1 %min.iters.check244, label %scalar.ph243.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i
  %i.cx = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.cy = add nsw i64 %i.cg, %wide.trip.count.i
  %i.cz = shl nsw i64 %i.cy, 2                    ; 2 uses
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz  ; 2 uses
  %i.db = getelementptr i8, ptr %i.ci, i64 %i.cz  ; 2 uses
  %i.dc = shl nsw i64 %i.ck, 2                    ; 2 uses
  %i.dd = sub nsw i64 1424, %i.dc
  %i.de = getelementptr i8, ptr %0, i64 %i.dd     ; 2 uses
  %i.df = add nuw nsw i64 %i.cx, 6692
  %i.dg = sub nsw i64 %i.df, %i.dc
  %i.dh = getelementptr i8, ptr %0, i64 %i.dg     ; 2 uses
  %bound0246 = icmp ult ptr %i.ch, %i.db
  %bound1247 = icmp ult ptr %i.cj, %i.da
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0249 = icmp ult ptr %i.ch, %i.dh
  %bound1250 = icmp ult ptr %i.de, %i.da
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %found.conflict248, %found.conflict251
  %bound0253 = icmp ult ptr %i.cj, %i.dh
  %bound1254 = icmp ult ptr %i.de, %i.db
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  br i1 %conflict.rdx256, label %scalar.ph243.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck245
  %n.vec258 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splat260 = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert261 = insertelement <4 x float> poison, float %i.cv, i64 0
  %broadcast.splat262 = shufflevector <4 x float> %broadcast.splatinsert261, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat264 = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat266 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat268 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph257
  %index270 = phi i64 [ 0, %vector.ph257 ], [ %index.next277, %vector.body269 ] ; 5 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph257 ], [ %vec.ind.next, %vector.body269 ] ; 2 uses
  %i.di = uitofp nneg <4 x i32> %vec.ind to <4 x float> ; 2 uses
  %i.dj = fmul nsz <4 x float> %broadcast.splat260, %i.di
  %i.dk = fdiv nsz <4 x float> %i.dj, %broadcast.splat262
  %i.dl = fadd nsz <4 x float> %broadcast.splat266, %i.dk ; 2 uses
  %i.dm = fmul nsz <4 x float> %broadcast.splat264, %i.di
  %i.dn = fdiv nsz <4 x float> %i.dm, %broadcast.splat262
  %i.do = fadd nsz <4 x float> %broadcast.splat268, %i.dn ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.cm, i64 %index270 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -8
  %wide.load271 = load <4 x float>, ptr %i.dq, align 4, !tbaa !24, !alias.scope !53
  %i.dr = add nsw i64 %index270, -1               ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.dr ; 2 uses
  %wide.load272 = load <4 x float>, ptr %i.ds, align 4, !tbaa !24, !alias.scope !53 ; 2 uses
  %i.dt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load272, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load271)
  %wide.load273 = load <4 x float>, ptr %i.dp, align 4, !tbaa !24, !alias.scope !53
  %i.du = fadd nsz <4 x float> %i.dt, %wide.load273
  %i.dv = fmul nsz <4 x float> %i.du, splat (float 2.500000e-01) ; 2 uses
  %i.dw = fadd nsz <4 x float> %i.do, splat (float 1.000000e+00)
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dr ; 2 uses
  %wide.load274 = load <4 x float>, ptr %i.dx, align 4, !tbaa !24, !alias.scope !53
  %i.dy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %wide.load272, <4 x float> %wide.load274)
  %i.dz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dv, <4 x float> %i.dy) ; 2 uses
  %i.ea = fcmp nsz ogt <4 x float> %i.dz, splat (float -1.000000e+00)
  %i.eb = select nsz <4 x i1> %i.ea, <4 x float> %i.dz, <4 x float> splat (float -1.000000e+00) ; 2 uses
  %i.ec = fcmp nsz ogt <4 x float> %i.eb, splat (float 1.000000e+00)
end_hunk_0
begin_hunk_1_@ff_silk_decode_superframe:bb.a
  %i.ey = zext nneg i32 %.0.lcssa.i to i64        ; 7 uses
  %wide.trip.count85.i = zext i32 %i.cd to i64    ; 4 uses
  %i.ez = sub nsw i64 %wide.trip.count85.i, %i.ey ; 3 uses
  %min.iters.check = icmp ult i64 %i.ez, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph80.i
  %i.fa = shl nuw nsw i64 %i.ey, 2
  %i.fb = add nsw i64 %i.cg, %i.ey
  %i.fc = shl nsw i64 %i.fb, 2                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.cc, i64 %i.fc  ; 2 uses
  %i.fe = add nsw i64 %i.cg, %wide.trip.count85.i
  %i.ff = shl nsw i64 %i.fe, 2                    ; 2 uses
  %i.fg = getelementptr i8, ptr %i.cc, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ci, i64 %i.fc  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ci, i64 %i.ff  ; 2 uses
  %i.fj = shl nsw i64 %i.ck, 2                    ; 2 uses
  %i.fk = add nuw nsw i64 %i.fa, 1424
  %i.fl = sub nsw i64 %i.fk, %i.fj
  %i.fm = getelementptr i8, ptr %0, i64 %i.fl     ; 2 uses
  %i.fn = shl nuw nsw i64 %wide.trip.count85.i, 2
  %i.fo = add nuw nsw i64 %i.fn, 6692
  %i.fp = sub nsw i64 %i.fo, %i.fj
  %i.fq = getelementptr i8, ptr %0, i64 %i.fp     ; 2 uses
  %bound0 = icmp ult ptr %i.fd, %i.fi
  %bound1 = icmp ult ptr %i.fh, %i.fg
  %found.conflict = and i1 %bound0, %bound1
  %bound0208 = icmp ult ptr %i.fd, %i.fq
  %bound1209 = icmp ult ptr %i.fm, %i.fg
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx = or i1 %found.conflict, %found.conflict210
  %bound0211 = icmp ult ptr %i.fh, %i.fq
  %bound1212 = icmp ult ptr %i.fm, %i.fi
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx, %found.conflict213
  br i1 %conflict.rdx214, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ez, -4                      ; 3 uses
  %i.fr = add nsw i64 %n.vec, %i.ey
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <4 x float> poison, float %i.ev, i64 0
  %broadcast.splat216 = shufflevector <4 x float> %broadcast.splatinsert215, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert217 = insertelement <4 x float> poison, float %i.ex, i64 0
  %broadcast.splat218 = shufflevector <4 x float> %broadcast.splatinsert217, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat220 = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fs = add nuw i64 %index, %i.ey               ; 4 uses
  %i.ft = getelementptr [4 x i8], ptr %i.cm, i64 %i.fs ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %wide.load = load <4 x float>, ptr %i.fu, align 4, !tbaa !24, !alias.scope !57
  %i.fv = add nsw i64 %i.fs, -1                   ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.fv ; 2 uses
  %wide.load221 = load <4 x float>, ptr %i.fw, align 4, !tbaa !24, !alias.scope !57 ; 2 uses
  %i.fx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load221, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load)
  %wide.load222 = load <4 x float>, ptr %i.ft, align 4, !tbaa !24, !alias.scope !57
  %i.fy = fadd nsz <4 x float> %i.fx, %wide.load222
  %i.fz = fmul nsz <4 x float> %i.fy, splat (float 2.500000e-01) ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.fv ; 2 uses
  %wide.load223 = load <4 x float>, ptr %i.ga, align 4, !tbaa !24, !alias.scope !57
  %i.gb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load221, <4 x float> %wide.load223)
  %i.gc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat220, <4 x float> %i.fz, <4 x float> %i.gb) ; 2 uses
  %i.gd = fcmp nsz ogt <4 x float> %i.gc, splat (float -1.000000e+00)
  %i.ge = select nsz <4 x i1> %i.gd, <4 x float> %i.gc, <4 x float> splat (float -1.000000e+00) ; 2 uses
  %i.gf = fcmp nsz ogt <4 x float> %i.ge, splat (float 1.000000e+00)
  %i.gg = select nsz <4 x i1> %i.gf, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ge
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.fs
  store <4 x float> %i.gg, ptr %i.gh, align 4, !tbaa !24, !alias.scope !58, !noalias !59
  %wide.load224 = load <4 x float>, ptr %i.fw, align 4, !tbaa !24, !alias.scope !57
  %wide.load225 = load <4 x float>, ptr %i.ga, align 4, !tbaa !24, !alias.scope !57
  %i.gi = fneg nsz <4 x float> %wide.load225
  %i.gj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat216, <4 x float> %wide.load224, <4 x float> %i.gi)
  %i.gk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat218, <4 x float> %i.fz, <4 x float> %i.gj) ; 2 uses
  %i.gl = fcmp nsz ogt <4 x float> %i.gk, splat (float -1.000000e+00)
  %i.gm = select nsz <4 x i1> %i.gl, <4 x float> %i.gk, <4 x float> splat (float -1.000000e+00) ; 2 uses
  %i.gn = fcmp nsz ogt <4 x float> %i.gm, splat (float 1.000000e+00)
  %i.go = select nsz <4 x i1> %i.gn, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gm
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.fs
  store <4 x float> %i.go, ptr %i.gp, align 4, !tbaa !24, !alias.scope !60, !noalias !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br i1 %cmp.n, label %silk_unmix_ms.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph80.i, %middle.block
  %indvars.iv82.i.ph = phi i64 [ %i.ey, %vector.memcheck ], [ %i.ey, %.lr.ph80.i ], [ %i.fr, %middle.block ]
  br label %scalar.ph

scalar.ph243:                                     ; preds = %scalar.ph243.preheader, %scalar.ph243
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph243 ], [ %indvars.iv.i.ph, %scalar.ph243.preheader ] ; 6 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gs = uitofp nsz nneg i32 %i.gr to float
  %i.gt = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fmul nsz <2 x float> %i.cw, %i.gu
  %i.gw = fdiv nsz <2 x float> %i.gv, %i.er       ; 2 uses
  %foldExtExtBinop = fadd nsz <2 x float> %i.co, %i.gw
  %i.gx = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop282 = fadd nsz <2 x float> %i.co, %i.gw
  %i.gy = extractelement <2 x float> %foldExtExtBinop282, i64 1 ; 2 uses
  %i.gz = getelementptr [4 x i8], ptr %i.cm, i64 %indvars.iv.i ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 -8
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !24
  %i.hc = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.hc ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !24 ; 2 uses
  %i.hf = tail call nsz float @llvm.fmuladd.f32(float %i.he, float 2.000000e+00, float %i.hb)
  %i.hg = load float, ptr %i.gz, align 4, !tbaa !24
  %i.hh = fadd nsz float %i.hf, %i.hg
  %i.hi = fmul nsz float %i.hh, 2.500000e-01      ; 2 uses
  %i.hj = fadd nsz float %i.gy, 1.000000e+00
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.hc ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !24
  %i.hm = tail call nsz float @llvm.fmuladd.f32(float %i.hj, float %i.he, float %i.hl)
  %i.hn = tail call nsz float @llvm.fmuladd.f32(float %i.gx, float %i.hi, float %i.hm) ; 2 uses
  %i.ho = fcmp nsz ogt float %i.hn, -1.000000e+00
  %i.hp = select nsz i1 %i.ho, float %i.hn, float -1.000000e+00 ; 2 uses
  %i.hq = fcmp nsz ogt float %i.hp, 1.000000e+00
  %..i77.i = select nsz i1 %i.hq, float 1.000000e+00, float %i.hp
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  store float %..i77.i, ptr %i.hr, align 4, !tbaa !24
  %i.hs = fsub nsz float 1.000000e+00, %i.gy
  %i.ht = load float, ptr %i.hd, align 4, !tbaa !24
  %i.hu = load float, ptr %i.hk, align 4, !tbaa !24
  %i.hv = fneg nsz float %i.hu
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.hs, float %i.ht, float %i.hv)
  %i.hx = fneg nsz float %i.gx
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.hi, float %i.hw) ; 2 uses
  %i.hz = fcmp nsz ogt float %i.hy, -1.000000e+00
  %i.ia = select nsz i1 %i.hz, float %i.hy, float -1.000000e+00 ; 2 uses
  %i.ib = fcmp nsz ogt float %i.ia, 1.000000e+00
  %..i76.i = select nsz i1 %i.ib, float 1.000000e+00, float %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i
  store float %..i76.i, ptr %i.ic, align 4, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %scalar.ph243, !llvm.loop !47

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %scalar.ph ], [ %indvars.iv82.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.id = getelementptr [4 x i8], ptr %i.cm, i64 %indvars.iv82.i ; 2 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 -8
  %i.if = load float, ptr %i.ie, align 4, !tbaa !24
  %i.ig = add nsw i64 %indvars.iv82.i, -1         ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.ig ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !24 ; 2 uses
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ii, float 2.000000e+00, float %i.if)
  %i.ik = load float, ptr %i.id, align 4, !tbaa !24
  %i.il = fadd nsz float %i.ij, %i.ik
  %i.im = fmul nsz float %i.il, 2.500000e-01      ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ig ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !24
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %i.eu, float %i.ii, float %i.io)
  %i.iq = tail call nsz float @llvm.fmuladd.f32(float %i.ew, float %i.im, float %i.ip) ; 2 uses
  %i.ir = fcmp nsz ogt float %i.iq, -1.000000e+00
  %i.is = select nsz i1 %i.ir, float %i.iq, float -1.000000e+00 ; 2 uses
  %i.it = fcmp nsz ogt float %i.is, 1.000000e+00
  %..i75.i = select nsz i1 %i.it, float 1.000000e+00, float %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv82.i
  store float %..i75.i, ptr %i.iu, align 4, !tbaa !24
  %i.iv = load float, ptr %i.ih, align 4, !tbaa !24
  %i.iw = load float, ptr %i.in, align 4, !tbaa !24
  %i.ix = fneg nsz float %i.iw
  %i.iy = tail call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.iv, float %i.ix)
  %i.iz = tail call nsz float @llvm.fmuladd.f32(float %i.ex, float %i.im, float %i.iy) ; 2 uses
  %i.ja = fcmp nsz ogt float %i.iz, -1.000000e+00
  %i.jb = select nsz i1 %i.ja, float %i.iz, float -1.000000e+00 ; 2 uses
  %i.jc = fcmp nsz ogt float %i.jb, 1.000000e+00
  %..i.i = select nsz i1 %i.jc, float 1.000000e+00, float %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv82.i
  store float %..i.i, ptr %i.jd, align 4, !tbaa !24
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count85.i
  br i1 %exitcond86.not.i, label %silk_unmix_ms.exit, label %scalar.ph, !llvm.loop !48

silk_unmix_ms.exit:                               ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.je = load i64, ptr %i.bb, align 8
  store i64 %i.je, ptr %i.ba, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph138, %bb.q, %silk_unmix_ms.exit
  store i32 0, ptr %i.ar, align 4, !tbaa !21
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %bb.s, label %.preheader, !llvm.loop !49

bb.s:                                             ; preds = %.loopexit
  %i.jf = load i32, ptr %i.r, align 8, !tbaa !14
  %i.jg = mul nsw i32 %i.jf, %i.j
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.b
  %.0110 = phi i32 [ -22, %bb.b ], [ %i.jg, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_opus_rc_dec_log(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_opus_rc_dec_cdf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @silk_decode_frame(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 -2147483648, 3) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 1, 3) %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = alloca [20 x i8], align 16               ; 5 uses
  %i.c = alloca [320 x i32], align 16             ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i16], align 16              ; 6 uses
  %i.f = alloca [16 x i16], align 16              ; 37 uses
  %i.g = alloca [16 x i16], align 16              ; 5 uses
  %i.h = alloca [16 x float], align 16            ; 5 uses
  %i.i = alloca [16 x float], align 16            ; 5 uses
  %i.j = alloca [612 x float], align 16           ; 14 uses
  %8 = alloca [4 x %struct.anon], align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = zext nneg i32 %3 to i64
  %i.m = getelementptr inbounds nuw [5264 x i8], ptr %i.k, i64 %i.l ; 17 uses
  %i.n = icmp eq i32 %4, 2
  %i.o = icmp eq i32 %3, 0
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s1) #9 ; 2 uses
  %i.q = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s2) #9
  %i.r = sdiv i32 %i.p, 5
  %i.s = mul nsw i32 %i.r, 3
  %i.t = add i32 %i.s, %i.q
  %i.u = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s3) #9
  %i.v = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s2) #9
  %i.w = srem i32 %i.p, 5
  %i.x = mul nsw i32 %i.w, 3
  %i.y = add i32 %i.v, %i.x
  %i.z = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s3) #9
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr @ff_silk_stereo_weights, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !28
  %i.ad = sext i16 %i.ac to i32                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !28
  %i.ag = sext i16 %i.af to i32
  %i.ah = sub nsw i32 %i.ag, %i.ad
  %i.ai = mul nsw i32 %i.ah, 6554
  %i.aj = ashr i32 %i.ai, 16
  %i.ak = shl nsw i32 %i.u, 1
  %i.al = or disjoint i32 %i.ak, 1
  %i.am = mul nsw i32 %i.aj, %i.al
  %i.an = add nsw i32 %i.am, %i.ad
  %i.ao = sext i32 %i.y to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr @ff_silk_stereo_weights, i64 %i.ao ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !28
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !28
  %i.au = sext i16 %i.at to i32
  %i.av = sub nsw i32 %i.au, %i.ar
  %i.aw = mul nsw i32 %i.av, 6554
  %i.ax = ashr i32 %i.aw, 16
  %i.ay = shl nsw i32 %i.z, 1
  %i.az = or disjoint i32 %i.ay, 1
  %i.ba = mul nsw i32 %i.ax, %i.az
  %i.bb = add nsw i32 %i.ba, %i.ar                ; 2 uses
  %i.bc = sub nsw i32 %i.an, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 10576
  %i.be = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bf = insertelement <2 x i32> %i.be, i32 %i.bb, i64 1
  %i.bg = sitofp nsz <2 x i32> %i.bf to <2 x double>
  %i.bh = fmul nnan nsz <2 x double> %i.bg, splat (double f0x3F20000000000000)
  %i.bi = fptrunc nsz <2 x double> %i.bh to <2 x float>
  store <2 x float> %i.bi, ptr %i.bd, align 8, !tbaa !24
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bj = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_mid_only) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bk = phi i32 [ %i.bj, %bb.c ], [ 0, %bb.b ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not254 = icmp eq i32 %5, 0
  br i1 %.not254, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bm = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_frame_type_inactive) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bn = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_frame_type_active) #9 ; 2 uses
  %i.bo = and i32 %i.bn, 1
  %i.bp = ashr i32 %i.bn, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0235 = phi i32 [ %i.bo, %bb.g ], [ %i.bm, %bb.f ]
  %.0234 = phi i32 [ %i.bp, %bb.g ], [ 0, %bb.f ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 5 uses
  %i.bu = add nsw i32 %.0234, %5
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [18 x i8], ptr @ff_silk_model_gain_highbits, i64 %i.bv
  %i.bx = icmp eq i32 %2, 0
  br i1 %i.bx, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.m, align 4, !tbaa !18
  %.not261.peel = icmp eq i32 %i.by, 0
  br i1 %.not261.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_gain_delta) #9 ; 2 uses
  %i.ca = shl i32 %i.bz, 1
  %i.cb = add nsw i32 %i.ca, -16
  %i.cc = load i32, ptr %i.bt, align 4, !tbaa !104
  %i.cd = add i32 %i.bz, -4
  %i.ce = add i32 %i.cd, %i.cc
  %.263.peel = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 %i.ce)
  %i.cf = tail call i32 @llvm.smax.i32(i32 %.263.peel, i32 0)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 63)
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ch = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.bw) #9
  %i.ci = shl i32 %i.ch, 3
  %i.cj = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_gain_lowbits) #9
  %i.ck = or i32 %i.ci, %i.cj                     ; 2 uses
  %i.cl = load i32, ptr %i.m, align 4, !tbaa !18
  %.not262.peel = icmp eq i32 %i.cl, 0
  br i1 %.not262.peel, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.bt, align 4, !tbaa !104
  %i.cn = add nsw i32 %i.cm, -16
  %..peel = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cn)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1243.peel = phi i32 [ %i.cg, %bb.k ], [ %..peel, %bb.m ], [ %i.ck, %bb.l ] ; 2 uses
  store i32 %.1243.peel, ptr %i.bt, align 4, !tbaa !104
  %i.co = mul nsw i32 %.1243.peel, 1907825
  %i.cp = ashr i32 %i.co, 16
  %i.cq = add nsw i32 %i.cp, 2090                 ; 2 uses
  %i.cr = ashr i32 %i.cq, 7
  %i.cs = and i32 %i.cq, 127                      ; 3 uses
  %i.ct = shl nuw i32 1, %i.cr                    ; 2 uses
  %i.cu = mul nsw i32 %i.cs, -174
  %i.cv = sub nuw nsw i32 128, %i.cs
  %i.cw = mul nsw i32 %i.cu, %i.cv
  %i.cx = ashr i32 %i.cw, 16
  %i.cy = add nsw i32 %i.cx, %i.cs
  %i.cz = ashr i32 %i.ct, 7
  %i.da = mul nsw i32 %i.cy, %i.cz
  %i.db = add nsw i32 %i.da, %i.ct
  %i.dc = sitofp nsz i32 %i.db to float
  %i.dd = fmul nnan nsz float %i.dc, f0x37800000
  store float %i.dd, ptr %8, align 16, !tbaa !106
  %i.de = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.n, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.n ] ; 2 uses
  %i.dg = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_gain_delta) #9 ; 2 uses
  %.pre = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.dh = shl i32 %i.dg, 1
  %i.di = add nsw i32 %i.dh, -16
  %i.dj = add i32 %i.dg, -4
  %i.dk = load i32, ptr %i.bt, align 4, !tbaa !104
  %i.dl = add i32 %i.dj, %i.dk
  %.263 = tail call i32 @llvm.smax.i32(i32 %i.di, i32 %i.dl)
  %i.dm = tail call i32 @llvm.smax.i32(i32 %.263, i32 0)
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 63) ; 2 uses
  store i32 %i.dn, ptr %i.bt, align 4, !tbaa !104
  %i.do = mul nuw nsw i32 %i.dn, 1907825
end_hunk_1
