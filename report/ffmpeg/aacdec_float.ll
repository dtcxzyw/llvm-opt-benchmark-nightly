inline.NumInlined: 20
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CBRT = type { [4096 x double] }
%struct.VLCElem = type { %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i16, i16 }

@ff_aac_decode_init_float.init_float_once = internal global i32 0, align 4
@ff_aac_pow2sf_tab = external local_unnamed_addr global [428 x float], align 16
@ff_aac_kbd_long_1024 = external global [1024 x float], align 16
@ff_sine_1024 = external global [1024 x float], align 16
@ff_aac_kbd_short_128 = external global [128 x float], align 16
@ff_sine_128 = external global [128 x float], align 16
@ff_aac_pred_sfb_max = external local_unnamed_addr constant [0 x i8], align 1
@aac_kbd_short_96 = internal global [96 x float] zeroinitializer, align 16
@sine_96 = internal global [96 x float] zeroinitializer, align 16
@aac_kbd_long_768 = internal global [768 x float] zeroinitializer, align 16
@sine_768 = internal global [768 x float] zeroinitializer, align 16
@aac_kbd_short_120 = internal global [120 x float] zeroinitializer, align 16
@sine_120 = internal global [120 x float] zeroinitializer, align 16
@aac_kbd_long_960 = internal global [960 x float] zeroinitializer, align 16
@sine_960 = internal global [960 x float] zeroinitializer, align 16
@ff_sine_512 = external global [512 x float], align 16
@ff_aac_eld_window_480 = external local_unnamed_addr constant [1800 x float], align 16
@ff_aac_eld_window_512 = external local_unnamed_addr constant [1920 x float], align 16
@.str = private unnamed_addr constant [55 x i8] c"Dependent coupling is not supported together with LTP\0A\00", align 1
@ff_aac_codebook_vector_vals = external local_unnamed_addr constant [0 x ptr], align 8
@ff_vlc_spectral = external hidden local_unnamed_addr global [11 x ptr], align 16
@.str.1 = private unnamed_addr constant [38 x i8] c"error in spectral data, ESC overflow\0A\00", align 1
@ff_cbrt_tab_internal = external local_unnamed_addr global %union.CBRT, align 8
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@cce_scale = internal unnamed_addr constant [4 x float] [float f0x3F8B95C2, float f0x3F9837F0, float f0x3FB504F3, float 2.000000e+00], align 16
@ff_vlc_scalefactors = external hidden local_unnamed_addr global [0 x %struct.VLCElem], align 2

; Function Attrs: cold nounwind optsize uwtable
define i32 @ff_aac_decode_init_float(ptr noundef initializes((348, 352)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36440
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 8, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @dequant_scalefactors, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @apply_mid_side_stereo, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @apply_intensity_stereo, ptr %i.g, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @apply_tns, ptr %i.h, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @apply_ltp, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @update_ltp, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr @apply_prediction, ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @imdct_and_windowing, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr @imdct_and_windowing_768, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @imdct_and_windowing_960, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr @imdct_and_windowing_ld, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @imdct_and_windowing_eld, ptr %i.p, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @apply_dependent_coupling, ptr %i.q, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @apply_independent_coupling, ptr %i.r, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr @clip_output, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @decode_spectrum_and_dequant, ptr %i.t, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr @decode_cce, ptr %i.u, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @ff_aac_sbr_ctx_alloc_init, ptr %i.v, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr @ff_aac_sbr_decode_extension, ptr %i.w, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @ff_aac_sbr_apply, ptr %i.x, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr @ff_aac_sbr_ctx_close, ptr %i.y, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !59
  %i.ab = and i32 %i.aa, 8388608
  %i.ac = tail call ptr @avpriv_float_dsp_alloc(i32 noundef %i.ab) #11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 9536
  store ptr %i.ac, ptr %i.ad, align 16, !tbaa !60
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call i32 @pthread_once(ptr noundef nonnull @ff_aac_decode_init_float.init_float_once, ptr noundef nonnull @init_tables_float_fn) #11 ; 0 uses
  %i.af = tail call i32 @ff_aac_decode_init(ptr noundef nonnull %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.af, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @init_tables_float_fn() #3 {
bb.a:
  tail call void @ff_cbrt_tableinit() #11
  tail call void @ff_kbd_window_init(ptr noundef nonnull @ff_aac_kbd_long_1024, float noundef 4.000000e+00, i32 noundef 1024) #11
  tail call void @ff_kbd_window_init(ptr noundef nonnull @ff_aac_kbd_short_128, float noundef 6.000000e+00, i32 noundef 128) #11
  tail call void @ff_kbd_window_init(ptr noundef nonnull @aac_kbd_long_960, float noundef 4.000000e+00, i32 noundef 960) #11
  tail call void @ff_kbd_window_init(ptr noundef nonnull @aac_kbd_short_120, float noundef 6.000000e+00, i32 noundef 120) #11
  tail call void @ff_sine_window_init(ptr noundef nonnull @sine_960, i32 noundef 960) #11
  tail call void @ff_sine_window_init(ptr noundef nonnull @sine_120, i32 noundef 120) #11
  tail call void @ff_init_ff_sine_windows(i32 noundef 9) #11
  tail call void @ff_aac_sbr_init() #11
  tail call void @ff_aac_float_common_init() #11
  ret void
}

declare i32 @ff_aac_decode_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dequant_scalefactors(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4484 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4996
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge34.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = load i8, ptr %0, align 8, !tbaa !65      ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3972
  br i1 %.not, label %._crit_edge34.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.h = zext i8 %i.f to i64                      ; 2 uses
  %wide.trip.count43 = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 2 uses
  %.02832 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next36, %._crit_edge ]
  %i.i = mul nuw nsw i64 %indvars.iv40, %i.h
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.i
  br label %bb.b

._crit_edge34.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.f
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !66

bb.b:                                             ; preds = %.preheader, %bb.f
  %indvars.iv35 = phi i64 [ %.02832, %.preheader ], [ %indvars.iv.next36, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  switch i32 %i.l, label %bb.e [
    i32 0, label %bb.f
    i32 15, label %bb.c
    i32 14, label %bb.c
    i32 13, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv35
  %i.n = load i32, ptr %i.m, align 4, !tbaa !68
  %i.o = sub i32 100, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !69
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv35
  %i.t = load i32, ptr %i.s, align 4, !tbaa !68
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 800
  %i.x = load float, ptr %i.w, align 4, !tbaa !69
  %i.y = fneg nsz float %i.x
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv35
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !68
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 800
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !69
  %i.af = fneg nsz float %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sink = phi float [ %i.af, %bb.e ], [ %i.r, %bb.c ], [ %i.y, %bb.d ], [ 0.000000e+00, %bb.b ]
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv35
  store float %.sink, ptr %i.ag, align 4, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !70
}

; Function Attrs: nounwind uwtable
define internal void @apply_mid_side_stereo(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader46.lr.ph, label %._crit_edge54

.preheader46.lr.ph:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 46016
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5664
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4116
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44468
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.pre = load i8, ptr %i.h, align 4, !tbaa !72   ; 2 uses
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %._crit_edge
  %i.n = phi i32 [ %i.d, %.preheader46.lr.ph ], [ %i.r, %._crit_edge ]
  %i.o = phi i8 [ %.pre, %.preheader46.lr.ph ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.p = phi i8 [ %.pre, %.preheader46.lr.ph ], [ %i.t, %._crit_edge ] ; 2 uses
  %indvars.iv61 = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next62, %._crit_edge ] ; 4 uses
  %.04153 = phi ptr [ %i.g, %.preheader46.lr.ph ], [ %i.y, %._crit_edge ] ; 2 uses
  %.04451 = phi ptr [ %i.f, %.preheader46.lr.ph ], [ %i.z, %._crit_edge ] ; 2 uses
  %.not55 = icmp eq i8 %i.p, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader46
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv61 ; 2 uses
  br label %bb.b

._crit_edge54:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre65 = load i32, ptr %i.c, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader46
  %i.r = phi i32 [ %.pre65, %._crit_edge.loopexit ], [ %i.n, %.preheader46 ] ; 2 uses
  %i.s = phi i8 [ %i.bi, %._crit_edge.loopexit ], [ %i.o, %.preheader46 ]
  %i.t = phi i8 [ %i.bi, %._crit_edge.loopexit ], [ 0, %.preheader46 ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv61
  %i.v = load i8, ptr %i.u, align 1, !tbaa !60
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 7                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.04153, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.04451, i64 %i.x
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.aa = sext i32 %i.r to i64
  %i.ab = icmp slt i64 %indvars.iv.next62, %i.aa
  br i1 %i.ab, label %.preheader46, label %._crit_edge54, !llvm.loop !78

bb.b:                                             ; preds = %.lr.ph50, %.loopexit
  %i.ac = phi i8 [ %i.o, %.lr.ph50 ], [ %i.bi, %.loopexit ] ; 4 uses
  %indvars.iv58 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next59, %.loopexit ] ; 3 uses
  %.in = phi i8 [ %i.p, %.lr.ph50 ], [ %i.bi, %.loopexit ]
  %i.ad = zext i8 %.in to i64
  %i.ae = mul nuw nsw i64 %indvars.iv61, %i.ad
  %i.af = add nuw nsw i64 %i.ae, %indvars.iv58    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !60
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.af
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !68
  %i.ak = icmp ult i32 %i.aj, 13
  br i1 %i.ak, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.af
  %i.am = load i32, ptr %i.al, align 4, !tbaa !68
  %i.an = icmp ult i32 %i.am, 13
  br i1 %i.an, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.ao = load i8, ptr %i.q, align 1, !tbaa !60
  %.not56 = icmp eq i8 %i.ao, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv58 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ar = load ptr, ptr %i.m, align 16, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79
  %i.au = shl nuw nsw i64 %indvars.iv, 7          ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.04153, i64 %i.au
  %i.aw = load i16, ptr %i.ap, align 2, !tbaa !81 ; 2 uses
  %i.ax = zext i16 %i.aw to i32
  %i.ay = zext i16 %i.aw to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.04451, i64 %i.au
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = load i16, ptr %i.aq, align 2, !tbaa !81
  %i.bd = zext i16 %i.bc to i32
  %i.be = sub nsw i32 %i.bd, %i.ax
  tail call void %i.at(ptr noundef %i.az, ptr noundef %i.bb, i32 noundef %i.be) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i8, ptr %i.q, align 1, !tbaa !60
  %i.bg = zext i8 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.e, label %.loopexit.loopexit, !llvm.loop !82

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre64 = load i8, ptr %i.h, align 4, !tbaa !72
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.d, %bb.c, %bb.b
  %i.bi = phi i8 [ %.pre64, %.loopexit.loopexit ], [ %i.ac, %.preheader ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ], [ %i.ac, %bb.b ] ; 5 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next59, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !83
}

; Function Attrs: nounwind uwtable
define internal void @apply_intensity_stereo(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40496 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40576
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40512 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge67

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 46016 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5664 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44468 ; 2 uses
  %.not = icmp eq i32 %2, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 45492 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40520 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9536 ; 2 uses
  %.pre91 = load i8, ptr %i.a, align 8, !tbaa !65 ; 4 uses
  br i1 %.not, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.split.us.us
  %i.n = phi i32 [ %i.q, %._crit_edge.split.us.us ], [ %i.e, %.preheader.lr.ph ]
  %i.o = phi i8 [ %i.r, %._crit_edge.split.us.us ], [ %.pre91, %.preheader.lr.ph ] ; 2 uses
  %i.p = phi i8 [ %i.s, %._crit_edge.split.us.us ], [ %.pre91, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %.05065.us = phi ptr [ %i.x, %._crit_edge.split.us.us ], [ %i.h, %.preheader.lr.ph ] ; 2 uses
  %.05361.us = phi ptr [ %i.y, %._crit_edge.split.us.us ], [ %i.g, %.preheader.lr.ph ] ; 2 uses
  %.not70 = icmp eq i8 %i.p, 0
  br i1 %.not70, label %._crit_edge.split.us.us, label %.lr.ph60.us

._crit_edge.split.us.us.loopexit:                 ; preds = %.loopexit.us.us
  %.pre93 = load i32, ptr %i.d, align 8, !tbaa !61
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.preheader.us
  %i.q = phi i32 [ %.pre93, %._crit_edge.split.us.us.loopexit ], [ %i.n, %.preheader.us ] ; 2 uses
  %i.r = phi i8 [ %i.bh, %._crit_edge.split.us.us.loopexit ], [ %i.o, %.preheader.us ]
  %i.s = phi i8 [ %i.bh, %._crit_edge.split.us.us.loopexit ], [ 0, %.preheader.us ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv86
  %i.u = load i8, ptr %i.t, align 1, !tbaa !60
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 7                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.05065.us, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.05361.us, i64 %i.w
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.z = sext i32 %i.q to i64
  %i.aa = icmp slt i64 %indvars.iv.next87, %i.z
  br i1 %i.aa, label %.preheader.us, label %._crit_edge67, !llvm.loop !84

.lr.ph60.us:                                      ; preds = %.preheader.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv86 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.us, %.lr.ph60.us
  %i.ac = phi i8 [ %i.bh, %.loopexit.us.us ], [ %i.o, %.lr.ph60.us ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.loopexit.us.us ], [ 0, %.lr.ph60.us ] ; 3 uses
  %.in96 = phi i8 [ %i.bh, %.loopexit.us.us ], [ %i.p, %.lr.ph60.us ]
  %i.ad = zext i8 %.in96 to i64
  %i.ae = mul nuw nsw i64 %indvars.iv86, %i.ad
  %i.af = add nuw nsw i64 %i.ae, %indvars.iv83    ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !68 ; 2 uses
  %i.ai = and i32 %i.ah, -2
  %switch.us.us = icmp eq i32 %i.ai, 14
  br i1 %switch.us.us, label %bb.c, label %.loopexit.us.us

end_hunk_0
begin_hunk_1_@imdct_and_windowing_eld:bb.a
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.jl
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !69
  %i.jo = tail call nsz float @llvm.fmuladd.f32(float %i.jj, float %i.jn, float %i.jh)
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ir
  store float %i.jo, ptr %i.jp, align 4, !tbaa !69
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count
  br i1 %exitcond.not, label %.preheader164, label %scalar.ph, !llvm.loop !231

.preheader:                                       ; preds = %vector.body324, %scalar.ph320
  %i.jq = add nuw nsw i32 %i.g, %i.f
  %i.jr = add nuw nsw i32 %i.g, %i.ac
  %i.js = zext i32 %i.at to i64                   ; 2 uses
  %i.jt = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.ju = zext nneg i32 %i.an to i64
  %i.jv = zext nneg i32 %i.jq to i64              ; 2 uses
  %i.jw = zext nneg i32 %i.jr to i64              ; 2 uses
  %wide.trip.count185 = zext nneg i32 %i.ac to i64
  %invariant.gep213 = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ax ; 3 uses
  %invariant.gep215 = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ju ; 2 uses
  %i.jx = getelementptr [4 x i8], ptr %i.aa, i64 %i.ax ; 2 uses
  %invariant.gep217 = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.jt ; 3 uses
  %invariant.gep219 = getelementptr [4 x i8], ptr %i.aa, i64 %i.jv ; 3 uses
  %invariant.gep221 = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.js ; 3 uses
  %invariant.gep223 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jw ; 8 uses
  %i.jy = shl nuw nsw i64 %i.jw, 2
  %i.jz = getelementptr i8, ptr %i.c, i64 %i.jy
  %scevgep341 = getelementptr i8, ptr %i.jz, i64 %i.am ; 6 uses
  %i.ka = getelementptr i8, ptr %0, i64 %i.gl
  %scevgep342 = getelementptr i8, ptr %i.ka, i64 4784
  %i.kb = shl nuw nsw i64 %i.js, 2
  %i.kc = getelementptr i8, ptr %i.ad, i64 %i.kb
  %scevgep343 = getelementptr i8, ptr %i.kc, i64 %i.am
  %i.kd = shl nuw nsw i64 %i.jt, 2
  %i.ke = getelementptr i8, ptr %i.ad, i64 %i.kd
  %scevgep344 = getelementptr i8, ptr %i.ke, i64 %i.am
  %i.kf = shl nuw nsw i64 %i.av, 2
  %i.kg = getelementptr i8, ptr %i.ad, i64 %i.kf
  %scevgep345 = getelementptr i8, ptr %i.kg, i64 %i.am
  %i.kh = shl nuw nsw i64 %i.jv, 2
  %i.ki = getelementptr i8, ptr %1, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 %i.am
  %scevgep346 = getelementptr i8, ptr %i.kj, i64 13712
  %i.kk = getelementptr i8, ptr %1, i64 %i.am
  %scevgep347 = getelementptr i8, ptr %i.kk, i64 13712
  %bound0348 = icmp ult ptr %invariant.gep223, %scevgep342
  %bound1349 = icmp ult ptr %invariant.gep213, %scevgep341
  %found.conflict350 = and i1 %bound0348, %bound1349
  %bound0351 = icmp ult ptr %invariant.gep223, %scevgep343
  %bound1352 = icmp ult ptr %invariant.gep221, %scevgep341
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx354 = or i1 %found.conflict350, %found.conflict353
  %bound0355 = icmp ult ptr %invariant.gep223, %scevgep344
  %bound1356 = icmp ult ptr %invariant.gep217, %scevgep341
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %conflict.rdx354, %found.conflict357
  %bound0359 = icmp ult ptr %invariant.gep223, %scevgep345
  %bound1360 = icmp ult ptr %invariant.gep205, %scevgep341
  %found.conflict361 = and i1 %bound0359, %bound1360
  %conflict.rdx362 = or i1 %conflict.rdx358, %found.conflict361
  %bound0363 = icmp ult ptr %invariant.gep223, %scevgep346
  %bound1364 = icmp ult ptr %invariant.gep219, %scevgep341
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx362, %found.conflict365
  %bound0367 = icmp ult ptr %invariant.gep223, %invariant.gep
  %bound1368 = icmp ult ptr %scevgep347, %scevgep341
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx366, %found.conflict369
  br i1 %conflict.rdx370, label %scalar.ph371, label %vector.body375

vector.body375:                                   ; preds = %.preheader, %vector.body375
  %index376 = phi i64 [ %index.next384, %vector.body375 ], [ 0, %.preheader ] ; 8 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213, i64 %index376
  %wide.load377 = load <4 x float>, ptr %i.kl, align 4, !tbaa !69, !alias.scope !232
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep215, i64 %index376
  %wide.load378 = load <4 x float>, ptr %i.km, align 16, !tbaa !69, !alias.scope !235
  %i.kn = xor i64 %index376, -1
  %i.ko = getelementptr [4 x i8], ptr %i.jx, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ko, i64 -12
  %wide.load379 = load <4 x float>, ptr %i.kp, align 4, !tbaa !69, !alias.scope !237
  %i.kq = fneg nsz <4 x float> %wide.load379
  %reverse380 = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep217, i64 %index376
  %wide.load381 = load <4 x float>, ptr %i.kr, align 16, !tbaa !69, !alias.scope !239
  %i.ks = fmul nsz <4 x float> %wide.load381, %reverse380
  %i.kt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load377, <4 x float> %wide.load378, <4 x float> %i.ks)
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep219, i64 %index376
  %wide.load382 = load <4 x float>, ptr %i.ku, align 4, !tbaa !69, !alias.scope !241
  %i.kv = fneg nsz <4 x float> %wide.load382
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep221, i64 %index376
  %wide.load383 = load <4 x float>, ptr %i.kw, align 16, !tbaa !69, !alias.scope !243
  %i.kx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kv, <4 x float> %wide.load383, <4 x float> %i.kt)
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep223, i64 %index376
  store <4 x float> %i.kx, ptr %i.ky, align 4, !tbaa !69, !alias.scope !245, !noalias !247
  %index.next384 = add nuw i64 %index376, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next384, %i.au
  br i1 %i.kz, label %middle.block385, label %vector.body375, !llvm.loop !248

scalar.ph320:                                     ; preds = %.preheader164, %scalar.ph320
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %scalar.ph320 ], [ 0, %.preheader164 ] ; 6 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv177
  %i.lb = load float, ptr %i.la, align 4, !tbaa !69
  %i.lc = add nuw nsw i64 %indvars.iv177, %i.ax   ; 3 uses
  %i.ld = sub nuw nsw i64 %i.lc, %i.aw
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !69
  %i.lg = xor i64 %indvars.iv177, -1              ; 2 uses
  %i.lh = getelementptr [4 x i8], ptr %i.gm, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !69
  %i.lj = fneg nsz float %i.li
  %i.lk = trunc i64 %i.lc to i32
  %i.ll = add i32 %i.an, %i.lk
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.lm
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !69
  %i.lp = fmul nsz float %i.lo, %i.lj
  %i.lq = tail call nsz float @llvm.fmuladd.f32(float %i.lb, float %i.lf, float %i.lp)
  %gep210 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep209, i64 %indvars.iv177
  %i.lr = load float, ptr %gep210, align 4, !tbaa !69
  %i.ls = fneg nsz float %i.lr
  %i.lt = trunc nuw nsw i64 %i.lc to i32          ; 2 uses
  %i.lu = add i32 %i.aq, %i.lt
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.lv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !69
  %i.ly = tail call nsz float @llvm.fmuladd.f32(float %i.ls, float %i.lx, float %i.lq)
  %i.lz = getelementptr [4 x i8], ptr %i.gn, i64 %i.lg
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !69
  %i.mb = add i32 %i.at, %i.lt
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !69
  %i.mf = tail call nsz float @llvm.fmuladd.f32(float %i.ma, float %i.me, float %i.ly)
  %gep212 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep211, i64 %indvars.iv177
  store float %i.mf, ptr %gep212, align 4, !tbaa !69
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %i.i
  br i1 %exitcond181.not, label %.preheader, label %scalar.ph320, !llvm.loop !249

scalar.ph371:                                     ; preds = %.preheader, %scalar.ph371
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %scalar.ph371 ], [ 0, %.preheader ] ; 8 uses
  %gep214 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213, i64 %indvars.iv182
  %i.mg = load float, ptr %gep214, align 4, !tbaa !69
  %gep216 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep215, i64 %indvars.iv182
  %i.mh = load float, ptr %gep216, align 4, !tbaa !69
  %i.mi = xor i64 %indvars.iv182, -1
  %i.mj = getelementptr [4 x i8], ptr %i.jx, i64 %i.mi
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !69
  %i.ml = fneg nsz float %i.mk
  %gep218 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep217, i64 %indvars.iv182
  %i.mm = load float, ptr %gep218, align 4, !tbaa !69
  %i.mn = fmul nsz float %i.mm, %i.ml
  %i.mo = tail call nsz float @llvm.fmuladd.f32(float %i.mg, float %i.mh, float %i.mn)
  %gep220 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep219, i64 %indvars.iv182
  %i.mp = load float, ptr %gep220, align 4, !tbaa !69
  %i.mq = fneg nsz float %i.mp
  %gep222 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep221, i64 %indvars.iv182
  %i.mr = load float, ptr %gep222, align 4, !tbaa !69
  %i.ms = tail call nsz float @llvm.fmuladd.f32(float %i.mq, float %i.mr, float %i.mo)
  %gep224 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep223, i64 %indvars.iv182
  store float %i.ms, ptr %gep224, align 4, !tbaa !69
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %middle.block385, label %scalar.ph371, !llvm.loop !250

middle.block385:                                  ; preds = %vector.body375, %scalar.ph371
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.mu = shl nuw nsw i32 %i.f, 3
  %i.mv = zext nneg i32 %i.mu to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.mt, ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i64 %i.mv, i1 false)
  %i.mw = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, ptr noundef nonnull align 4 dereferenceable(1) %i.ab, i64 %i.mw, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_dependent_coupling(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 23256
  %i.e = load i32, ptr %i.d, align 8, !tbaa !251
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !252
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.h, i32 noundef 16, ptr noundef nonnull @.str) #11
  br label %.loopexit46

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph, label %.loopexit46

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.l = load i8, ptr %i.a, align 8, !tbaa !65    ; 2 uses
  %.not60 = icmp eq i8 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4116
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80952
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds [480 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 168
  br i1 %.not60, label %.loopexit46, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 5664
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5520
  %wide.trip.count78 = zext nneg i32 %i.j to i64
  %wide.trip.count73 = zext i8 %i.l to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge55
  %indvars.iv75 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next76, %._crit_edge55 ] ; 2 uses
  %.059 = phi ptr [ %i.s, %.preheader.preheader ], [ %i.bu, %._crit_edge55 ] ; 7 uses
  %.04058 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next67.a, %._crit_edge55 ]
  %.04556 = phi ptr [ %i.r, %.preheader.preheader ], [ %i.bv, %._crit_edge55 ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv75 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv68.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next69.a, %.loopexit ] ; 2 uses
  %indvars.iv66.a = phi i64 [ %.04058, %.preheader ], [ %indvars.iv.next67.a, %.loopexit ] ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv66.a
  %i.v = load i32, ptr %i.u, align 4, !tbaa !68
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv66.a
  %i.x = load float, ptr %i.w, align 4, !tbaa !60 ; 4 uses
  %i.y = load i8, ptr %i.t, align 1, !tbaa !60
  %.not61 = icmp eq i8 %i.y, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv68.a ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !81  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !81 ; 2 uses
  %i.ad = icmp ult i16 %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph50
  %i.ae = zext i16 %i.aa to i64                   ; 6 uses
  %wide.trip.count = zext i16 %i.ac to i64        ; 5 uses
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = shl nuw nsw i64 %wide.trip.count, 2
  %i.ah = sub nsw i64 %wide.trip.count, %i.ae     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.ai = add nsw i64 %n.vec, %i.ae
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.x, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  %i.aj = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv63 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next64, %._crit_edge ] ; 3 uses
  %i.ak = shl nuw nsw i64 %indvars.iv63, 7        ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.al = shl nuw nsw i64 %indvars.iv63, 9        ; 2 uses
  %i.am = add nuw i64 %i.ag, %i.al                ; 2 uses
  %scevgep83.a = getelementptr i8, ptr %.04556, i64 %i.am
  %i.an = add nuw i64 %i.af, %i.al                ; 2 uses
  %scevgep82 = getelementptr nuw i8, ptr %.04556, i64 %i.an
  %scevgep81 = getelementptr i8, ptr %.059, i64 %i.am
  %scevgep = getelementptr nuw i8, ptr %.059, i64 %i.an
  %bound0 = icmp ult ptr %scevgep, %scevgep83.a
  %bound1 = icmp ult ptr %scevgep82, %scevgep81
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %invariant.op = add nuw i64 %i.ae, %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.04556, i64 %.reass ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <4 x float>, ptr %i.ao, align 4, !tbaa !69, !alias.scope !253
  %wide.load84 = load <4 x float>, ptr %i.ap, align 4, !tbaa !69, !alias.scope !253
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.059, i64 %.reass ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load85 = load <4 x float>, ptr %i.aq, align 4, !tbaa !69, !alias.scope !256, !noalias !253
  %wide.load86 = load <4 x float>, ptr %i.ar, align 4, !tbaa !69, !alias.scope !256, !noalias !253
  %i.as = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load85)
  %i.at = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load84, <4 x float> %wide.load86)
  store <4 x float> %i.as, ptr %i.aq, align 4, !tbaa !69, !alias.scope !256, !noalias !253
  store <4 x float> %i.at, ptr %i.ar, align 4, !tbaa !69, !alias.scope !256, !noalias !253
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph ], [ %i.ai, %middle.block ] ; 5 uses
  %i.av = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aw = add nuw nsw i64 %indvars.iv.ph, %i.ak   ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.04556, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !69
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.059, i64 %i.aw ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !69
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.ay, float %i.ba)
  store float %i.bb, ptr %i.az, align 4, !tbaa !69
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.bc, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op87 = add nuw nsw i64 1, %i.ak
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.1, %scalar.ph ] ; 3 uses
  %i.bd = add nuw nsw i64 %indvars.iv, %i.ak      ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.04556, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !69
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.059, i64 %i.bd ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !69
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.bf, float %i.bh)
  store float %i.bi, ptr %i.bg, align 4, !tbaa !69
  %.reass88 = add nuw nsw i64 %indvars.iv, %invariant.op87 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.04556, i64 %.reass88
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !69
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.059, i64 %.reass88 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !69
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.bk, float %i.bm)
  store float %i.bn, ptr %i.bl, align 4, !tbaa !69
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !259

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.bo = load i8, ptr %i.t, align 1, !tbaa !60
  %i.bp = zext i8 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next64, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.loopexit, !llvm.loop !260

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %.lr.ph50, %bb.d
  %indvars.iv.next69.a = add nuw nsw i64 %indvars.iv68.a, 1 ; 2 uses
  %indvars.iv.next67.a = add nsw i64 %indvars.iv66.a, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next69.a, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge55, label %bb.d, !llvm.loop !261

._crit_edge55:                                    ; preds = %.loopexit
  %i.br = load i8, ptr %i.t, align 1, !tbaa !60
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 7                ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.059, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.04556, i64 %i.bt
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.loopexit46, label %.preheader, !llvm.loop !262

.loopexit46:                                      ; preds = %._crit_edge55, %bb.c, %.preheader.lr.ph, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_independent_coupling(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80952
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [480 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40488
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40344
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 23272
  %i.j = load i32, ptr %i.i, align 8, !tbaa !263
  %i.k = icmp eq i32 %i.j, 1
  %i.l = zext i1 %i.k to i32
  %i.m = shl nuw nsw i32 1024, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264
  tail call void %i.q(ptr noundef %i.h, ptr noundef %i.f, float noundef %i.d, i32 noundef %i.m) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @clip_output(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3) #6 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_spectrum_and_dequant(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 5520 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.c = load i32, ptr %i.b, align 4, !tbaa !89   ; 5 uses
  %i.d = sdiv i32 1024, %i.c                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4996 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 3972 ; 2 uses
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %.lr.ph, label %.preheader579

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i8, ptr %3, align 8, !tbaa !65
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.k ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.c, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader579.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader579, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader579.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader579.loopexit.unr-lcssa ]
  %lcmp.mod739 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod739)
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 9
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.epil
  %i.o = load i16, ptr %i.l, align 2, !tbaa !81   ; 2 uses
  %i.p = zext i16 %i.o to i32
  %i.q = zext i16 %i.o to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q
  %i.s = sub nsw i32 %i.d, %i.p
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.r, i8 0, i64 %i.u, i1 false)
  br label %.preheader579

.preheader579:                                    ; preds = %.epil.preheader, %.preheader579.loopexit.unr-lcssa, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph629, label %._crit_edge630

.lr.ph629:                                        ; preds = %.preheader579
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9536 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9544 ; 2 uses
  %.pre = load i8, ptr %3, align 8, !tbaa !65
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %.idx = shl nuw nsw i64 %indvars.iv, 9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.ae = load i16, ptr %i.l, align 2, !tbaa !81  ; 2 uses
  %i.af = zext i16 %i.ae to i32
  %i.ag = zext i16 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = sub nsw i32 %i.d, %i.af
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ah, i8 0, i64 %i.ak, i1 false)
  %indvars.iv.next = shl i64 %indvars.iv, 9
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  %i.an = load i16, ptr %i.l, align 2, !tbaa !81  ; 2 uses
  %i.ao = zext i16 %i.an to i32
  %i.ap = zext i16 %i.an to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ap
  %i.ar = sub nsw i32 %i.d, %i.ao
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.at, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader579.loopexit.unr-lcssa, label %bb.b, !llvm.loop !265

bb.c:                                             ; preds = %.lr.ph629, %.critedge.thread
  %i.au = phi i32 [ %i.w, %.lr.ph629 ], [ %i.uj, %.critedge.thread ]
  %i.av = phi i8 [ %.pre, %.lr.ph629 ], [ %i.uk, %.critedge.thread ]
  %indvars.iv671 = phi i64 [ 0, %.lr.ph629 ], [ %indvars.iv.next672, %.critedge.thread ] ; 2 uses
  %.0442627 = phi i32 [ 0, %.lr.ph629 ], [ %.1443.lcssa, %.critedge.thread ] ; 2 uses
  %.0453626 = phi ptr [ %i.a, %.lr.ph629 ], [ %i.un, %.critedge.thread ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv671
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !60  ; 3 uses
  %i.ay = zext i8 %i.ax to i32                    ; 9 uses
  %.not538620.not = icmp eq i8 %i.av, 0
  br i1 %.not538620.not, label %.critedge.thread, label %.lr.ph624

.lr.ph624:                                        ; preds = %bb.c
  %.not634 = icmp eq i8 %i.ax, 0                  ; 7 uses
  %i.az = sext i32 %.0442627 to i64
  %xtraiter748 = and i32 %i.ay, 7                 ; 3 uses
  %i.ba = icmp ult i8 %i.ax, 8
  %unroll_iter752 = and i32 %i.ay, 248
  %lcmp.mod750.not = icmp eq i32 %xtraiter748, 0
  %lcmp.mod751 = icmp ne i32 %xtraiter748, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph624, %.critedge539
  %indvars.iv666 = phi i64 [ %i.az, %.lr.ph624 ], [ %indvars.iv.next667, %.critedge539 ] ; 8 uses
  %indvars.iv664 = phi i64 [ 0, %.lr.ph624 ], [ %indvars.iv.next665, %.critedge539 ] ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv666
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !68
  %i.bd = add i32 %i.bc, -1                       ; 4 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv664
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !81 ; 2 uses
  %i.bg = zext i16 %i.bf to i32
  %i.bh = zext i16 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0453626, i64 %i.bh ; 8 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next665
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !81
  %i.bl = zext i16 %i.bk to i32
  %i.bm = sub nsw i32 %i.bl, %i.bg                ; 12 uses
  %i.bn = icmp ugt i32 %i.bd, 12
  br i1 %i.bn, label %.preheader567, label %bb.e

.preheader567:                                    ; preds = %bb.d
  br i1 %.not634, label %.critedge539, label %.lr.ph619

.lr.ph619:                                        ; preds = %.preheader567
  %i.bo = sext i32 %i.bm to i64
  %i.bp = shl nsw i64 %i.bo, 2                    ; 9 uses
  br i1 %i.ba, label %.epil.preheader747, label %.lr.ph619.new

.lr.ph619.new:                                    ; preds = %.lr.ph619, %.lr.ph619.new
  %.0455618 = phi ptr [ %i.bx, %.lr.ph619.new ], [ %i.bi, %.lr.ph619 ] ; 9 uses
  %niter753 = phi i32 [ %niter753.next.7, %.lr.ph619.new ], [ 0, %.lr.ph619 ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0455618, i8 0, i64 %i.bp, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.0455618, i64 512
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bq, i8 0, i64 %i.bp, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.0455618, i64 1024
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.br, i8 0, i64 %i.bp, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.0455618, i64 1536
end_hunk_1
