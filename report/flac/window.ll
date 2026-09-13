Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/window?download=true
inline.NumInlined: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define hidden void @FLAC__window_bartlett(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 5 uses
  %i.b = and i32 %1, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader35, label %.preheader38

.preheader38:                                     ; preds = %bb.a
  %i.c = ashr exact i32 %i.a, 1                   ; 3 uses
  %.not3339 = icmp slt i32 %i.c, 0
  br i1 %.not3339, label %.preheader36, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.d = uitofp nneg i32 %i.a to float            ; 2 uses
  %i.e = add nuw nsw i32 %i.c, 1                  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.g = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.h = fmul reassoc nnan nsz arcp <4 x float> %i.g, splat (float 2.000000e+00)
  %i.i = fmul reassoc nsz arcp <4 x float> %i.h, %i.f
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x float> %i.i, ptr %i.j, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader36, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.l = fdiv reassoc nsz arcp float 1.000000e+00, %i.d
  br label %scalar.ph

.preheader35:                                     ; preds = %bb.a
  %i.m = ashr exact i32 %1, 1                     ; 5 uses
  %.not31.not44 = icmp sgt i32 %i.m, 0
  br i1 %.not31.not44, label %.lr.ph46, label %.preheader

.lr.ph46:                                         ; preds = %.preheader35
  %i.n = sitofp reassoc nsz arcp i32 %i.a to float ; 2 uses
  %wide.trip.count62 = zext nneg i32 %i.m to i64  ; 3 uses
  %min.iters.check90 = icmp ult i32 %i.m, 4
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph46
  %n.vec92 = and i64 %wide.trip.count62, 2147483644 ; 3 uses
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat94
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next98, %vector.body95 ] ; 2 uses
  %vec.ind97 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph91 ], [ %vec.ind.next99, %vector.body95 ] ; 2 uses
  %i.p = uitofp nneg <4 x i32> %vec.ind97 to <4 x float>
  %i.q = fmul reassoc nnan nsz arcp <4 x float> %i.p, splat (float 2.000000e+00)
  %i.r = fmul reassoc nsz arcp <4 x float> %i.q, %i.o
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index96
  store <4 x float> %i.r, ptr %i.s, align 4, !tbaa !10
  %index.next98 = add nuw i64 %index96, 4         ; 2 uses
  %vec.ind.next99 = add <4 x i32> %vec.ind97, splat (i32 4)
  %i.t = icmp eq i64 %index.next98, %n.vec92
  br i1 %i.t, label %middle.block100, label %vector.body95, !llvm.loop !15

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %n.vec92, %wide.trip.count62
  br i1 %cmp.n101, label %.preheader, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %.lr.ph46, %middle.block100
  %indvars.iv59.ph = phi i64 [ 0, %.lr.ph46 ], [ %n.vec92, %middle.block100 ]
  %i.u = fdiv reassoc nsz arcp float 1.000000e+00, %i.n
  br label %scalar.ph89

.preheader36:                                     ; preds = %scalar.ph, %middle.block, %.preheader38
  %.0.lcssa = phi i32 [ 0, %.preheader38 ], [ %i.e, %middle.block ], [ %i.e, %scalar.ph ] ; 3 uses
  %.not34.not41 = icmp slt i32 %.0.lcssa, %1
  br i1 %.not34.not41, label %.lr.ph43, label %.loopexit

.lr.ph43:                                         ; preds = %.preheader36
  %i.v = uitofp nneg i32 %i.a to float            ; 2 uses
  %i.w = zext i32 %.0.lcssa to i64                ; 4 uses
  %wide.trip.count57 = zext nneg i32 %1 to i64    ; 2 uses
  %i.x = sub nsw i64 %wide.trip.count57, %i.w     ; 3 uses
  %min.iters.check74 = icmp ult i64 %i.x, 4
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph43
  %n.vec76 = and i64 %i.x, -4                     ; 3 uses
  %i.y = add nsw i64 %n.vec76, %i.w
  %broadcast.splatinsert77 = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat78 = shufflevector <4 x float> %broadcast.splatinsert77, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <4 x i32> poison, i32 %.0.lcssa, i64 0
  %broadcast.splat80 = shufflevector <4 x i32> %broadcast.splatinsert79, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat80, <i32 0, i32 1, i32 2, i32 3>
  %i.z = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat78
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.w
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph75
  %index82 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body81 ] ; 2 uses
  %vec.ind83 = phi <4 x i32> [ %induction, %vector.ph75 ], [ %vec.ind.next85, %vector.body81 ] ; 2 uses
  %i.aa = uitofp nneg <4 x i32> %vec.ind83 to <4 x float>
  %i.ab = fmul reassoc nnan nsz arcp <4 x float> %i.aa, splat (float 2.000000e+00)
  %i.ac = fmul reassoc nsz arcp <4 x float> %i.ab, %i.z
  %i.ad = fsub reassoc nsz arcp <4 x float> splat (float 2.000000e+00), %i.ac
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index82
  store <4 x float> %i.ad, ptr %gep, align 4, !tbaa !10
  %index.next84 = add nuw i64 %index82, 4         ; 2 uses
  %vec.ind.next85 = add <4 x i32> %vec.ind83, splat (i32 4)
  %i.ae = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.ae, label %middle.block86, label %vector.body81, !llvm.loop !16

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %i.x, %n.vec76
  br i1 %cmp.n87, label %.loopexit, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %.lr.ph43, %middle.block86
  %indvars.iv54.ph = phi i64 [ %i.w, %.lr.ph43 ], [ %i.y, %middle.block86 ]
  %i.af = fdiv reassoc nsz arcp float 1.000000e+00, %i.v
  br label %scalar.ph73

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = uitofp nneg i32 %i.ag to float
  %i.ai = fmul reassoc nnan nsz arcp float %i.ah, 2.000000e+00
  %i.aj = fmul reassoc nsz arcp float %i.ai, %i.l
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader36, label %scalar.ph, !llvm.loop !17

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %scalar.ph73 ], [ %indvars.iv54.ph, %scalar.ph73.preheader ] ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.am = uitofp nneg i32 %i.al to float
  %i.an = fmul reassoc nnan nsz arcp float %i.am, 2.000000e+00
  %i.ao = fmul reassoc nsz arcp float %i.an, %i.af
  %i.ap = fsub reassoc nsz arcp float 2.000000e+00, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv54
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %.loopexit, label %scalar.ph73, !llvm.loop !18

.preheader:                                       ; preds = %scalar.ph89, %middle.block100, %.preheader35
  %.2.lcssa = phi i32 [ 0, %.preheader35 ], [ %i.m, %middle.block100 ], [ %i.m, %scalar.ph89 ] ; 3 uses
  %.not32.not48 = icmp slt i32 %.2.lcssa, %1
  br i1 %.not32.not48, label %.lr.ph50, label %.loopexit

.lr.ph50:                                         ; preds = %.preheader
  %i.ar = uitofp nneg i32 %i.a to float           ; 2 uses
  %i.as = zext nneg i32 %.2.lcssa to i64          ; 4 uses
  %wide.trip.count67 = zext nneg i32 %1 to i64    ; 2 uses
  %i.at = sub nsw i64 %wide.trip.count67, %i.as   ; 3 uses
  %min.iters.check104 = icmp ult i64 %i.at, 4
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph50
  %n.vec106 = and i64 %i.at, -4                   ; 3 uses
  %i.au = add nsw i64 %n.vec106, %i.as
  %broadcast.splatinsert107 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat108 = shufflevector <4 x float> %broadcast.splatinsert107, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %.2.lcssa, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction111 = add nuw <4 x i32> %broadcast.splat110, <i32 0, i32 1, i32 2, i32 3>
  %i.av = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat108
  %invariant.gep121 = getelementptr [4 x i8], ptr %0, i64 %i.as
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph105
  %index113 = phi i64 [ 0, %vector.ph105 ], [ %index.next115, %vector.body112 ] ; 2 uses
  %vec.ind114 = phi <4 x i32> [ %induction111, %vector.ph105 ], [ %vec.ind.next116, %vector.body112 ] ; 2 uses
  %i.aw = uitofp nneg <4 x i32> %vec.ind114 to <4 x float>
  %i.ax = fmul reassoc nnan nsz arcp <4 x float> %i.aw, splat (float 2.000000e+00)
  %i.ay = fmul reassoc nsz arcp <4 x float> %i.ax, %i.av
  %i.az = fsub reassoc nsz arcp <4 x float> splat (float 2.000000e+00), %i.ay
  %gep122 = getelementptr [4 x i8], ptr %invariant.gep121, i64 %index113
  store <4 x float> %i.az, ptr %gep122, align 4, !tbaa !10
  %index.next115 = add nuw i64 %index113, 4       ; 2 uses
  %vec.ind.next116 = add <4 x i32> %vec.ind114, splat (i32 4)
  %i.ba = icmp eq i64 %index.next115, %n.vec106
  br i1 %i.ba, label %middle.block117, label %vector.body112, !llvm.loop !19

middle.block117:                                  ; preds = %vector.body112
  %cmp.n118 = icmp eq i64 %i.at, %n.vec106
  br i1 %cmp.n118, label %.loopexit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.lr.ph50, %middle.block117
  %indvars.iv64.ph = phi i64 [ %i.as, %.lr.ph50 ], [ %i.au, %middle.block117 ]
  %i.bb = fdiv reassoc nsz arcp float 1.000000e+00, %i.ar
  br label %scalar.ph103

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %scalar.ph89
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %scalar.ph89 ], [ %indvars.iv59.ph, %scalar.ph89.preheader ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv59 to i32
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = fmul reassoc nnan nsz arcp float %i.bd, 2.000000e+00
  %i.bf = fmul reassoc nsz arcp float %i.be, %i.u
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv59
  store float %i.bf, ptr %i.bg, align 4, !tbaa !10
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.preheader, label %scalar.ph89, !llvm.loop !20

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %scalar.ph103 ], [ %indvars.iv64.ph, %scalar.ph103.preheader ] ; 3 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv64 to i32
  %i.bi = uitofp nneg i32 %i.bh to float
  %i.bj = fmul reassoc nnan nsz arcp float %i.bi, 2.000000e+00
  %i.bk = fmul reassoc nsz arcp float %i.bj, %i.bb
  %i.bl = fsub reassoc nsz arcp float 2.000000e+00, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv64
  store float %i.bl, ptr %i.bm, align 4, !tbaa !10
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.loopexit, label %scalar.ph103, !llvm.loop !21

.loopexit:                                        ; preds = %scalar.ph73, %scalar.ph103, %middle.block86, %middle.block117, %.preheader36, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_bartlett_hann(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to float
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = fdiv reassoc nsz arcp float 1.000000e+00, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = uitofp nneg i32 %i.e to float
  %i.g = fmul reassoc nsz arcp float %i.f, %i.d   ; 2 uses
  %i.h = fadd reassoc nsz arcp float %i.g, -5.000000e-01
  %i.i = tail call reassoc nsz arcp float @llvm.fabs.f32(float %i.h)
  %i.j = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.i, float -4.800000e-01, float 6.200000e-01)
  %i.k = fpext reassoc nsz arcp float %i.g to double
  %i.l = fmul reassoc nsz arcp double %i.k, f0x401921FB54442D18
  %i.m = fptrunc reassoc nsz arcp double %i.l to float
  %i.n = tail call reassoc nsz arcp float @cosf(float noundef %i.m) #6
  %i.o = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.n, float -3.800000e-01, float %i.j)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_blackman(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nneg i32 %i.g to double
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fmul reassoc nnan nsz arcp <2 x double> %i.j, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %i.l = fmul reassoc nsz arcp <2 x double> %i.k, %i.f
  %i.m = fptrunc <2 x double> %i.l to <2 x float> ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = tail call reassoc nsz arcp float @cosf(float noundef %i.n) #6
  %i.p = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.o, float -5.000000e-01, float 4.200000e-01)
  %i.q = extractelement <2 x float> %i.m, i64 1
  %i.r = tail call reassoc nsz arcp float @cosf(float noundef %i.q) #6
  %i.s = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.r, float 8.000000e-02, float %i.p)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.s, ptr %i.t, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_blackman_harris_4term_92db_sidelobe(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not.not12 = icmp sgt i32 %1, 0
  br i1 %.not.not12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  %i.b = uitofp nneg i32 %i.a to double           ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.c = insertelement <2 x double> poison, double %i.b, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = fdiv reassoc nsz arcp double 1.000000e+00, %i.b
  %i.f = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nneg i32 %i.g to double           ; 2 uses
  %i.i = fmul reassoc nnan nsz arcp double %i.h, f0x401921FB54442D18
  %i.j = fmul reassoc nsz arcp double %i.i, %i.e
  %i.k = fptrunc reassoc nsz arcp double %i.j to float
  %i.l = tail call reassoc nsz arcp float @cosf(float noundef %i.k) #6
  %i.m = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.l, float -4.882900e-01, float 3.587500e-01)
  %i.n = insertelement <2 x double> poison, double %i.h, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul reassoc nnan nsz arcp <2 x double> %i.o, <double f0x402921FB54442D18, double f0x4032D97C7F3321D2>
  %i.q = fmul reassoc nsz arcp <2 x double> %i.p, %i.f
  %i.r = fptrunc <2 x double> %i.q to <2 x float> ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call reassoc nsz arcp float @cosf(float noundef %i.s) #6
  %i.u = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.t, float 1.412800e-01, float %i.m)
  %i.v = extractelement <2 x float> %i.r, i64 1
  %i.w = tail call reassoc nsz arcp float @cosf(float noundef %i.v) #6
  %i.x = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.w, float -1.168000e-02, float %i.u)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define hidden void @FLAC__window_connes(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = sitofp reassoc nsz arcp i32 %i.a to double ; 3 uses
  %i.c = fmul reassoc nnan nsz arcp double %i.b, 5.000000e-01 ; 2 uses
  %.not.not13 = icmp sgt i32 %1, 0
  br i1 %.not.not13, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <4 x double> poison, double %i.b, i64 0
  %broadcast.splat17 = shufflevector <4 x double> %broadcast.splatinsert16, <4 x double> poison, <4 x i32> zeroinitializer
  %i.d = fdiv reassoc nsz arcp <4 x double> splat (double 1.000000e+00), %broadcast.splat17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.e = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.f = fsub reassoc nnan nsz arcp <4 x double> %i.e, %broadcast.splat
  %i.g = fmul reassoc nnan nsz arcp <4 x double> %i.f, splat (double 2.000000e+00)
  %i.h = fmul reassoc nsz arcp <4 x double> %i.g, %i.d ; 2 uses
  %i.i = fneg reassoc nsz arcp <4 x double> %i.h
  %i.j = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.i, <4 x double> %i.h, <4 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.k = fmul reassoc nsz arcp <4 x double> %i.j, %i.j
  %i.l = fptrunc reassoc nsz arcp <4 x double> %i.k to <4 x float>
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x float> %i.l, ptr %i.m, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.o = fdiv reassoc nsz arcp double 1.000000e+00, %i.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = fsub reassoc nnan nsz arcp double %i.q, %i.c
  %i.s = fmul reassoc nnan nsz arcp double %i.r, 2.000000e+00
  %i.t = fmul reassoc nsz arcp double %i.s, %i.o  ; 2 uses
  %i.u = fneg reassoc nsz arcp double %i.t
  %i.v = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.u, double %i.t, double 1.000000e+00) ; 2 uses
  %i.w = fmul reassoc nsz arcp double %i.v, %i.v
  %i.x = fptrunc reassoc nsz arcp double %i.w to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_flattop(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = insertelement <4 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <4 x double> %i.d, <4 x double> poison, <4 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp <4 x double> splat (double 1.000000e+00), %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nneg i32 %i.g to double
  %i.i = insertelement <4 x double> poison, double %i.h, i64 0
  %i.j = shufflevector <4 x double> %i.i, <4 x double> poison, <4 x i32> zeroinitializer
  %i.k = fmul reassoc nnan nsz arcp <4 x double> %i.j, <double f0x401921FB54442D18, double f0x402921FB54442D18, double f0x4032D97C7F3321D2, double f0x403921FB54442D18>
  %i.l = fmul reassoc nsz arcp <4 x double> %i.k, %i.f
  %i.m = fptrunc <4 x double> %i.l to <4 x float> ; 4 uses
  %i.n = extractelement <4 x float> %i.m, i64 0
  %i.o = tail call reassoc nsz arcp float @cosf(float noundef %i.n) #6
  %i.p = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.o, float f0xBED550BC, float f0x3E5CC0BA)
  %i.q = extractelement <4 x float> %i.m, i64 1
  %i.r = tail call reassoc nsz arcp float @cosf(float noundef %i.q) #6
  %i.s = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.r, float f0x3E8DF570, float %i.p)
  %i.t = extractelement <4 x float> %i.m, i64 2
  %i.u = tail call reassoc nsz arcp float @cosf(float noundef %i.t) #6
  %i.v = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.u, float f0xBDAB2B70, float %i.s)
  %i.w = extractelement <4 x float> %i.m, i64 3
  %i.x = tail call reassoc nsz arcp float @cosf(float noundef %i.w) #6
  %i.y = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.x, float f0x3BE3A6BF, float %i.v)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.y, ptr %i.z, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_gauss(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = sitofp reassoc nsz arcp i32 %i.a to double ; 2 uses
  %i.c = fmul reassoc nnan nsz arcp double %i.b, 5.000000e-01 ; 3 uses
  %i.d = fcmp reassoc nsz arcp ogt float %2, 0.000000e+00
  %i.e = fcmp reassoc nsz arcp ole float %2, 5.000000e-01
  %or.cond = and i1 %i.d, %i.e
  %.not.not22 = icmp sgt i32 %1, 0                ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %bb.a
  br i1 %.not.not22, label %.lr.ph, label %FLAC__window_gauss.exit

.lr.ph:                                           ; preds = %.preheader18
  %i.f = fdiv reassoc nsz arcp double 8.000000e+00, %i.b ; 2 uses
  %invariant.op = fmul reassoc nnan nsz arcp double %i.f, -5.000000e-01
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not.not22, label %.lr.ph24, label %FLAC__window_gauss.exit

.lr.ph24:                                         ; preds = %.preheader
  %i.g = fpext reassoc nnan ninf nsz arcp float %2 to double
  %i.h = fmul reassoc nnan nsz arcp double %i.c, %i.g
  %i.i = fdiv reassoc nsz arcp double 1.000000e+00, %i.h ; 2 uses
  %invariant.op25 = fmul reassoc nnan nsz arcp double %i.i, -5.000000e-01
  %wide.trip.count32 = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = uitofp nneg i32 %i.j to double
  %i.l = fsub reassoc nsz arcp double %i.k, %i.c  ; 2 uses
  %i.m = fmul reassoc nsz arcp double %i.l, %i.f
  %.reass = fmul reassoc nsz arcp double %i.l, %invariant.op
  %i.n = fmul reassoc nsz arcp double %.reass, %i.m
  %i.o = tail call reassoc nsz arcp double @exp(double noundef %i.n) #6, !inline_history !29
  %i.p = fptrunc reassoc nsz arcp double %i.o to float
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.p, ptr %i.q, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %FLAC__window_gauss.exit, label %bb.b, !llvm.loop !28

bb.c:                                             ; preds = %.lr.ph24, %bb.c
  %indvars.iv29 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next30, %bb.c ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv29 to i32
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = fsub reassoc nsz arcp double %i.s, %i.c  ; 2 uses
  %i.u = fmul reassoc nsz arcp double %i.t, %i.i
  %.reass26 = fmul reassoc nsz arcp double %i.t, %invariant.op25
  %i.v = fmul reassoc nsz arcp double %.reass26, %i.u
  %i.w = tail call reassoc nsz arcp double @exp(double noundef %i.v) #6
  %i.x = fptrunc reassoc nsz arcp double %i.w to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv29
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %FLAC__window_gauss.exit, label %bb.c, !llvm.loop !28

FLAC__window_gauss.exit:                          ; preds = %bb.b, %bb.c, %.preheader18, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_hamming(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double           ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.e = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  %i.f = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nneg i32 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp double %i.h, f0x401921FB54442D18
  %i.j = fmul reassoc nsz arcp double %i.i, %i.e
  %i.k = fptrunc reassoc nsz arcp double %i.j to float
  %i.l = tail call reassoc nsz arcp float @cosf(float noundef %i.k) #6
  %i.m = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.l, float -4.600000e-01, float 5.400000e-01)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.m, ptr %i.n, align 4, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.p = uitofp nneg i32 %i.o to double
  %i.q = fmul reassoc nnan nsz arcp double %i.p, f0x401921FB54442D18
  %i.r = fmul reassoc nsz arcp double %i.q, %i.f
  %i.s = fptrunc reassoc nsz arcp double %i.r to float
  %i.t = tail call reassoc nsz arcp float @cosf(float noundef %i.s) #6
  %i.u = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.t, float -4.600000e-01, float 5.400000e-01)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !30

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fmul reassoc nnan nsz arcp double %i.x, f0x401921FB54442D18
  %i.z = fdiv reassoc nsz arcp double %i.y, %i.c
  %i.aa = fptrunc reassoc nsz arcp double %i.z to float
  %i.ab = tail call reassoc nsz arcp float @cosf(float noundef %i.aa) #6
  %i.ac = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ab, float -4.600000e-01, float 5.400000e-01)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_hann(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double           ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.e = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  %i.f = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nneg i32 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp double %i.h, f0x401921FB54442D18
  %i.j = fmul reassoc nsz arcp double %i.i, %i.e
  %i.k = fptrunc reassoc nsz arcp double %i.j to float
  %i.l = tail call reassoc nsz arcp float @cosf(float noundef %i.k) #6
  %i.m = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.l, float -5.000000e-01, float 5.000000e-01)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.m, ptr %i.n, align 4, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.p = uitofp nneg i32 %i.o to double
  %i.q = fmul reassoc nnan nsz arcp double %i.p, f0x401921FB54442D18
  %i.r = fmul reassoc nsz arcp double %i.q, %i.f
  %i.s = fptrunc reassoc nsz arcp double %i.r to float
  %i.t = tail call reassoc nsz arcp float @cosf(float noundef %i.s) #6
  %i.u = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.t, float -5.000000e-01, float 5.000000e-01)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fmul reassoc nnan nsz arcp double %i.x, f0x401921FB54442D18
  %i.z = fdiv reassoc nsz arcp double %i.y, %i.c
  %i.aa = fptrunc reassoc nsz arcp double %i.z to float
  %i.ab = tail call reassoc nsz arcp float @cosf(float noundef %i.aa) #6
  %i.ac = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ab, float -5.000000e-01, float 5.000000e-01)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_kaiser_bessel(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double           ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  %i.g = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = uitofp nneg i32 %i.h to double           ; 2 uses
  %i.j = fmul reassoc nnan nsz arcp double %i.i, f0x401921FB54442D18
  %i.k = fmul reassoc nsz arcp double %i.j, %i.f
  %i.l = fptrunc reassoc nsz arcp double %i.k to float
  %i.m = tail call reassoc nsz arcp float @cosf(float noundef %i.l) #6
  %i.n = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.m, float -4.980000e-01, float 4.020000e-01)
  %i.o = insertelement <2 x double> poison, double %i.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nnan nsz arcp <2 x double> %i.p, <double f0x402921FB54442D18, double f0x4032D97C7F3321D2>
  %i.r = fmul reassoc nsz arcp <2 x double> %i.q, %i.g
  %i.s = fptrunc <2 x double> %i.r to <2 x float> ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = tail call reassoc nsz arcp float @cosf(float noundef %i.t) #6
  %i.v = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.u, float f0x3DC8B439, float %i.n)
  %i.w = extractelement <2 x float> %i.s, i64 1
  %i.x = tail call reassoc nsz arcp float @cosf(float noundef %i.w) #6
  %i.y = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.x, float -1.000000e-03, float %i.v)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.y, ptr %i.z, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_nuttall(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double           ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  %i.g = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = uitofp nneg i32 %i.h to double           ; 2 uses
  %i.j = fmul reassoc nnan nsz arcp double %i.i, f0x401921FB54442D18
  %i.k = fmul reassoc nsz arcp double %i.j, %i.f
  %i.l = fptrunc reassoc nsz arcp double %i.k to float
  %i.m = tail call reassoc nsz arcp float @cosf(float noundef %i.l) #6
  %i.n = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.m, float f0xBEFA7579, float f0x3EBA2768)
  %i.o = insertelement <2 x double> poison, double %i.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nnan nsz arcp <2 x double> %i.p, <double f0x402921FB54442D18, double f0x4032D97C7F3321D2>
  %i.r = fmul reassoc nsz arcp <2 x double> %i.q, %i.g
  %i.s = fptrunc <2 x double> %i.r to <2 x float> ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = tail call reassoc nsz arcp float @cosf(float noundef %i.t) #6
  %i.v = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.u, float f0x3E0BE0BD, float %i.n)
  %i.w = extractelement <2 x float> %i.s, i64 1
  %i.x = tail call reassoc nsz arcp float @cosf(float noundef %i.w) #6
  %i.y = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.x, float -1.064110e-02, float %i.v)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.y, ptr %i.z, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define hidden void @FLAC__window_rectangle(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.b, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.d = icmp eq i64 %index.next, %n.vec
  br i1 %i.d, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader6

.lr.ph.preheader6:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader6 ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define hidden void @FLAC__window_triangle(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader36, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.b = add nsw i32 %1, 1                        ; 2 uses
  %i.c = ashr exact i32 %i.b, 1                   ; 4 uses
  %.not3440 = icmp slt i32 %i.c, 1
  br i1 %.not3440, label %.preheader37, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader39
  %i.d = sitofp reassoc nsz arcp i32 %1 to float
  %i.e = fadd reassoc nsz arcp float %i.d, 1.000000e+00 ; 2 uses
  %i.f = add nuw nsw i32 %i.c, 1                  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  %i.g = zext nneg i32 %i.c to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 2147483644               ; 3 uses
  %i.h = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.j = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.k = fmul reassoc nnan nsz arcp <4 x float> %i.j, splat (float 2.000000e+00)
  %i.l = fmul reassoc nsz arcp <4 x float> %i.k, %i.i
  %i.m = getelementptr [4 x i8], ptr %0, i64 %index
  store <4 x float> %i.l, ptr %i.m, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.preheader37, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph ], [ %i.h, %middle.block ]
  %i.o = fdiv reassoc nsz arcp float 1.000000e+00, %i.e
  br label %scalar.ph

.preheader36:                                     ; preds = %bb.a
  %i.p = ashr exact i32 %1, 1                     ; 4 uses
  %.not3245 = icmp slt i32 %i.p, 1
  br i1 %.not3245, label %.preheader, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader36
  %i.q = uitofp nneg i32 %1 to float
  %i.r = fadd reassoc nsz arcp float %i.q, 1.000000e+00 ; 2 uses
  %i.s = add nuw nsw i32 %i.p, 1                  ; 3 uses
  %wide.trip.count63 = zext nneg i32 %i.s to i64
  %i.t = zext nneg i32 %i.p to i64                ; 2 uses
  %min.iters.check94 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check94, label %scalar.ph93.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph47
  %n.vec96 = and i64 %i.t, 2147483644             ; 3 uses
  %i.u = or disjoint i64 %n.vec96, 1
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat98
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph95
  %index100 = phi i64 [ 0, %vector.ph95 ], [ %index.next102, %vector.body99 ] ; 2 uses
  %vec.ind101 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph95 ], [ %vec.ind.next103, %vector.body99 ] ; 2 uses
  %i.w = uitofp nneg <4 x i32> %vec.ind101 to <4 x float>
  %i.x = fmul reassoc nnan nsz arcp <4 x float> %i.w, splat (float 2.000000e+00)
  %i.y = fmul reassoc nsz arcp <4 x float> %i.x, %i.v
  %i.z = getelementptr [4 x i8], ptr %0, i64 %index100
  store <4 x float> %i.y, ptr %i.z, align 4, !tbaa !10
  %index.next102 = add nuw i64 %index100, 4       ; 2 uses
  %vec.ind.next103 = add <4 x i32> %vec.ind101, splat (i32 4)
  %i.aa = icmp eq i64 %index.next102, %n.vec96
  br i1 %i.aa, label %middle.block104, label %vector.body99, !llvm.loop !36

middle.block104:                                  ; preds = %vector.body99
  %cmp.n105 = icmp eq i64 %n.vec96, %i.t
  br i1 %cmp.n105, label %.preheader, label %scalar.ph93.preheader

scalar.ph93.preheader:                            ; preds = %.lr.ph47, %middle.block104
  %indvars.iv60.ph = phi i64 [ 1, %.lr.ph47 ], [ %i.u, %middle.block104 ]
  %i.ab = fdiv reassoc nsz arcp float 1.000000e+00, %i.r
  br label %scalar.ph93

.preheader37:                                     ; preds = %scalar.ph, %middle.block, %.preheader39
  %.0.lcssa = phi i32 [ 1, %.preheader39 ], [ %i.f, %middle.block ], [ %i.f, %scalar.ph ] ; 3 uses
  %.not3542 = icmp sgt i32 %.0.lcssa, %1
  br i1 %.not3542, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader37
  %i.ac = uitofp nneg i32 %1 to float
  %i.ad = fadd reassoc nsz arcp float %i.ac, 1.000000e+00 ; 2 uses
  %i.ae = zext i32 %.0.lcssa to i64               ; 4 uses
  %wide.trip.count58 = zext nneg i32 %i.b to i64  ; 2 uses
  %i.af = sub nsw i64 %wide.trip.count58, %i.ae   ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.af, 4
  br i1 %min.iters.check76, label %scalar.ph75.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph44
  %n.vec78 = and i64 %i.af, -4                    ; 3 uses
  %i.ag = add nsw i64 %n.vec78, %i.ae
  %broadcast.splatinsert79 = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat80 = shufflevector <4 x float> %broadcast.splatinsert79, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat82 = shufflevector <4 x i32> %broadcast.splatinsert81, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <4 x i32> poison, i32 %.0.lcssa, i64 0
  %broadcast.splat84 = shufflevector <4 x i32> %broadcast.splatinsert83, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat84, <i32 0, i32 1, i32 2, i32 3>
  %i.ah = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat80
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ae
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph77
  %index86 = phi i64 [ 0, %vector.ph77 ], [ %index.next88, %vector.body85 ] ; 2 uses
  %vec.ind87 = phi <4 x i32> [ %induction, %vector.ph77 ], [ %vec.ind.next89, %vector.body85 ] ; 2 uses
  %i.ai = sub <4 x i32> %broadcast.splat82, %vec.ind87
  %i.aj = shl nuw <4 x i32> %i.ai, splat (i32 1)
  %i.ak = add <4 x i32> %i.aj, splat (i32 2)
  %i.al = sitofp reassoc nsz arcp <4 x i32> %i.ak to <4 x float>
  %i.am = fmul reassoc nsz arcp <4 x float> %i.al, %i.ah
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index86
  %i.an = getelementptr i8, ptr %gep, i64 -4
  store <4 x float> %i.am, ptr %i.an, align 4, !tbaa !10
  %index.next88 = add nuw i64 %index86, 4         ; 2 uses
  %vec.ind.next89 = add <4 x i32> %vec.ind87, splat (i32 4)
  %i.ao = icmp eq i64 %index.next88, %n.vec78
  br i1 %i.ao, label %middle.block90, label %vector.body85, !llvm.loop !37

middle.block90:                                   ; preds = %vector.body85
  %cmp.n91 = icmp eq i64 %i.af, %n.vec78
  br i1 %cmp.n91, label %.loopexit, label %scalar.ph75.preheader

scalar.ph75.preheader:                            ; preds = %.lr.ph44, %middle.block90
  %indvars.iv55.ph = phi i64 [ %i.ae, %.lr.ph44 ], [ %i.ag, %middle.block90 ]
  %i.ap = fdiv reassoc nsz arcp float 1.000000e+00, %i.ad
  br label %scalar.ph75

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fmul reassoc nnan nsz arcp float %i.ar, 2.000000e+00
  %i.at = fmul reassoc nsz arcp float %i.as, %i.o
  %i.au = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store float %i.at, ptr %i.av, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader37, label %scalar.ph, !llvm.loop !38

scalar.ph75:                                      ; preds = %scalar.ph75.preheader, %scalar.ph75
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %scalar.ph75 ], [ %indvars.iv55.ph, %scalar.ph75.preheader ] ; 3 uses
  %i.aw = trunc i64 %indvars.iv55 to i32
  %.tr = sub i32 %1, %i.aw
  %i.ax = shl nuw i32 %.tr, 1
  %i.ay = add i32 %i.ax, 2
  %i.az = sitofp reassoc nsz arcp i32 %i.ay to float
  %i.ba = fmul reassoc nsz arcp float %i.az, %i.ap
  %i.bb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv55
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  store float %i.ba, ptr %i.bc, align 4, !tbaa !10
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %.loopexit, label %scalar.ph75, !llvm.loop !39

.preheader:                                       ; preds = %scalar.ph93, %middle.block104, %.preheader36
  %.2.lcssa = phi i32 [ 1, %.preheader36 ], [ %i.s, %middle.block104 ], [ %i.s, %scalar.ph93 ] ; 3 uses
  %.not3349 = icmp sgt i32 %.2.lcssa, %1
  br i1 %.not3349, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader
  %i.bd = uitofp nneg i32 %1 to float
  %i.be = fadd reassoc nsz arcp float %i.bd, 1.000000e+00 ; 2 uses
  %i.bf = zext i32 %.2.lcssa to i64               ; 4 uses
  %i.bg = or disjoint i32 %1, 1
  %wide.trip.count68 = zext nneg i32 %i.bg to i64 ; 2 uses
  %i.bh = sub nsw i64 %wide.trip.count68, %i.bf   ; 3 uses
  %min.iters.check108 = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check108, label %scalar.ph107.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph51
  %n.vec110 = and i64 %i.bh, -4                   ; 3 uses
  %i.bi = add nsw i64 %n.vec110, %i.bf
  %broadcast.splatinsert111 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat112 = shufflevector <4 x float> %broadcast.splatinsert111, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat114 = shufflevector <4 x i32> %broadcast.splatinsert113, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %.2.lcssa, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction117 = add <4 x i32> %broadcast.splat116, <i32 0, i32 1, i32 2, i32 3>
  %i.bj = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat112
  %invariant.gep127 = getelementptr [4 x i8], ptr %0, i64 %i.bf
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph109
  %index119 = phi i64 [ 0, %vector.ph109 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %vec.ind120 = phi <4 x i32> [ %induction117, %vector.ph109 ], [ %vec.ind.next122, %vector.body118 ] ; 2 uses
  %i.bk = sub <4 x i32> %broadcast.splat114, %vec.ind120
  %i.bl = shl nuw <4 x i32> %i.bk, splat (i32 1)
  %i.bm = add <4 x i32> %i.bl, splat (i32 2)
  %i.bn = sitofp reassoc nsz arcp <4 x i32> %i.bm to <4 x float>
  %i.bo = fmul reassoc nsz arcp <4 x float> %i.bn, %i.bj
  %gep128 = getelementptr [4 x i8], ptr %invariant.gep127, i64 %index119
  %i.bp = getelementptr i8, ptr %gep128, i64 -4
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !10
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %vec.ind.next122 = add <4 x i32> %vec.ind120, splat (i32 4)
  %i.bq = icmp eq i64 %index.next121, %n.vec110
  br i1 %i.bq, label %middle.block123, label %vector.body118, !llvm.loop !40

middle.block123:                                  ; preds = %vector.body118
  %cmp.n124 = icmp eq i64 %i.bh, %n.vec110
  br i1 %cmp.n124, label %.loopexit, label %scalar.ph107.preheader

scalar.ph107.preheader:                           ; preds = %.lr.ph51, %middle.block123
  %indvars.iv65.ph = phi i64 [ %i.bf, %.lr.ph51 ], [ %i.bi, %middle.block123 ]
  %i.br = fdiv reassoc nsz arcp float 1.000000e+00, %i.be
  br label %scalar.ph107

scalar.ph93:                                      ; preds = %scalar.ph93.preheader, %scalar.ph93
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph93 ], [ %indvars.iv60.ph, %scalar.ph93.preheader ] ; 3 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv60 to i32
  %i.bt = uitofp nneg i32 %i.bs to float
  %i.bu = fmul reassoc nnan nsz arcp float %i.bt, 2.000000e+00
  %i.bv = fmul reassoc nsz arcp float %i.bu, %i.ab
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %indvars.iv60
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  store float %i.bv, ptr %i.bx, align 4, !tbaa !10
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.preheader, label %scalar.ph93, !llvm.loop !41

scalar.ph107:                                     ; preds = %scalar.ph107.preheader, %scalar.ph107
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %scalar.ph107 ], [ %indvars.iv65.ph, %scalar.ph107.preheader ] ; 3 uses
  %i.by = trunc i64 %indvars.iv65 to i32
  %.tr72 = sub i32 %1, %i.by
  %i.bz = shl nuw i32 %.tr72, 1
  %i.ca = add i32 %i.bz, 2
  %i.cb = sitofp reassoc nsz arcp i32 %i.ca to float
  %i.cc = fmul reassoc nsz arcp float %i.cb, %i.br
  %i.cd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv65
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  store float %i.cc, ptr %i.ce, align 4, !tbaa !10
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.loopexit, label %scalar.ph107, !llvm.loop !42

.loopexit:                                        ; preds = %scalar.ph75, %scalar.ph107, %middle.block90, %middle.block123, %.preheader37, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_tukey(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp reassoc nsz arcp ugt float %2, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %FLAC__window_rectangle.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.e = icmp eq i64 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %FLAC__window_rectangle.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %FLAC__window_rectangle.exit, label %.lr.ph.i, !llvm.loop !44

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp reassoc nsz arcp ult float %2, 1.000000e+00
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph.i32, label %FLAC__window_rectangle.exit

.lr.ph.i32:                                       ; preds = %bb.d
  %i.i = add nsw i32 %1, -1
  %i.j = uitofp nneg i32 %i.i to double           ; 3 uses
  %wide.trip.count.i33 = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i33, 1
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i32.new

.lr.ph.i32.new:                                   ; preds = %.lr.ph.i32
  %unroll_iter = and i64 %wide.trip.count.i33, 2147483646
  %i.l = fdiv reassoc nsz arcp double 1.000000e+00, %i.j
  %i.m = fdiv reassoc nsz arcp double 1.000000e+00, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i32.new
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i32.new ], [ %indvars.iv.next.i35.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i32.new ], [ %niter.next.1, %bb.e ]
  %i.n = trunc nuw nsw i64 %indvars.iv.i34 to i32
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fmul reassoc nnan nsz arcp double %i.o, f0x401921FB54442D18
  %i.q = fmul reassoc nsz arcp double %i.p, %i.l
  %i.r = fptrunc reassoc nsz arcp double %i.q to float
  %i.s = tail call reassoc nsz arcp float @cosf(float noundef %i.r) #6
  %i.t = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.s, float -5.000000e-01, float 5.000000e-01)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i34
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  %indvars.iv.next.i35 = or disjoint i64 %indvars.iv.i34, 1 ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i35 to i32
  %i.w = uitofp nneg i32 %i.v to double
  %i.x = fmul reassoc nnan nsz arcp double %i.w, f0x401921FB54442D18
  %i.y = fmul reassoc nsz arcp double %i.x, %i.m
  %i.z = fptrunc reassoc nsz arcp double %i.y to float
  %i.aa = tail call reassoc nsz arcp float @cosf(float noundef %i.z) #6
  %i.ab = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.aa, float -5.000000e-01, float 5.000000e-01)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i35
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  %indvars.iv.next.i35.1 = add nuw nsw i64 %indvars.iv.i34, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %bb.c
  %i.ad = fcmp reassoc nsz arcp ogt float %2, 0.000000e+00
  %i.ae = fcmp reassoc nsz arcp olt float %2, 1.000000e+00
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sitofp reassoc nsz arcp i32 %1 to float
  %i.ag = fmul reassoc nnan nsz arcp float %i.af, 2.500000e-01
  %i.ah = fptosi float %i.ag to i32               ; 4 uses
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  %i.aj = icmp sgt i32 %1, 0
  br i1 %i.aj, label %.lr.ph.preheader.i44, label %FLAC__window_rectangle.exit50

.lr.ph.preheader.i44:                             ; preds = %bb.g
  %wide.trip.count.i45 = zext nneg i32 %1 to i64  ; 3 uses
  %min.iters.check79 = icmp ult i32 %1, 8
  br i1 %min.iters.check79, label %.lr.ph.i46.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.preheader.i44
  %n.vec81 = and i64 %wide.trip.count.i45, 2147483640 ; 3 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next84, %vector.body82 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index83 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ak, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.al, align 4, !tbaa !10
  %index.next84 = add nuw i64 %index83, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next84, %n.vec81
  br i1 %i.am, label %middle.block85, label %vector.body82, !llvm.loop !45

middle.block85:                                   ; preds = %vector.body82
  %cmp.n86 = icmp eq i64 %n.vec81, %wide.trip.count.i45
  br i1 %cmp.n86, label %FLAC__window_rectangle.exit50, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %.lr.ph.preheader.i44, %middle.block85
  %indvars.iv.i47.ph = phi i64 [ 0, %.lr.ph.preheader.i44 ], [ %n.vec81, %middle.block85 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i48, %.lr.ph.i46 ], [ %indvars.iv.i47.ph, %.lr.ph.i46.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i47
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !10
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i45
  br i1 %exitcond.not.i49, label %FLAC__window_rectangle.exit50, label %.lr.ph.i46, !llvm.loop !46

FLAC__window_rectangle.exit50:                    ; preds = %.lr.ph.i46, %middle.block85, %bb.g
  %i.ao = icmp sgt i32 %i.ah, 1
  br i1 %i.ao, label %.preheader52, label %FLAC__window_rectangle.exit

.preheader52:                                     ; preds = %FLAC__window_rectangle.exit50
  %i.ap = uitofp nneg i32 %i.ai to double
  %i.aq = sub i32 %1, %i.ah
  %i.ar = sext i32 %i.aq to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ar
  %i.as = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.at
  br label %bb.h

bb.h:                                             ; preds = %.preheader52, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ax = trunc i64 %indvars.iv to i32
  %i.ay = add i32 %i.ai, %i.ax
  %i.az = sitofp reassoc nsz arcp i32 %i.ay to double
  %i.ba = uitofp nneg i32 %i.av to double
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.az, i64 1
  %i.bd = fmul reassoc nnan nsz arcp <2 x double> %i.bc, splat (double f0x400921FB54442D18)
  %i.be = fmul reassoc nsz arcp <2 x double> %i.bd, %i.au
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call reassoc nsz arcp float @cosf(float noundef %i.bg) #6, !inline_history !50
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = tail call reassoc nsz arcp float @cosf(float noundef %i.bi) #6, !inline_history !50
  %i.bk = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = tail call reassoc nsz arcp <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  store float %i.bn, ptr %i.aw, align 4, !tbaa !10
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  store float %i.bo, ptr %gep, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %FLAC__window_rectangle.exit, label %bb.h, !llvm.loop !47

bb.i:                                             ; preds = %bb.f
  %i.bp = fmul reassoc nnan nsz arcp float %2, 5.000000e-01
  %i.bq = sitofp reassoc nsz arcp i32 %1 to float
  %i.br = fmul reassoc nsz arcp float %i.bp, %i.bq
  %i.bs = fptosi float %i.br to i32               ; 4 uses
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  %i.bu = icmp sgt i32 %1, 0
  br i1 %i.bu, label %.lr.ph.preheader.i37, label %FLAC__window_rectangle.exit43

.lr.ph.preheader.i37:                             ; preds = %bb.i
  %wide.trip.count.i38 = zext nneg i32 %1 to i64  ; 3 uses
  %min.iters.check89 = icmp ult i32 %1, 8
  br i1 %min.iters.check89, label %.lr.ph.i39.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.preheader.i37
  %n.vec91 = and i64 %wide.trip.count.i38, 2147483640 ; 3 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next94, %vector.body92 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index93 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.bv, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.bw, align 4, !tbaa !10
  %index.next94 = add nuw i64 %index93, 8         ; 2 uses
  %i.bx = icmp eq i64 %index.next94, %n.vec91
  br i1 %i.bx, label %middle.block95, label %vector.body92, !llvm.loop !48

middle.block95:                                   ; preds = %vector.body92
  %cmp.n96 = icmp eq i64 %n.vec91, %wide.trip.count.i38
  br i1 %cmp.n96, label %FLAC__window_rectangle.exit43, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %.lr.ph.preheader.i37, %middle.block95
  %indvars.iv.i40.ph = phi i64 [ 0, %.lr.ph.preheader.i37 ], [ %n.vec91, %middle.block95 ]
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i41, %.lr.ph.i39 ], [ %indvars.iv.i40.ph, %.lr.ph.i39.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i40
  store float 1.000000e+00, ptr %i.by, align 4, !tbaa !10
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %wide.trip.count.i38
  br i1 %exitcond.not.i42, label %FLAC__window_rectangle.exit43, label %.lr.ph.i39, !llvm.loop !49

FLAC__window_rectangle.exit43:                    ; preds = %.lr.ph.i39, %middle.block95, %bb.i
  %i.bz = icmp sgt i32 %i.bs, 1
  br i1 %i.bz, label %.preheader, label %FLAC__window_rectangle.exit

.preheader:                                       ; preds = %FLAC__window_rectangle.exit43
  %i.ca = uitofp nneg i32 %i.bt to double
  %i.cb = sub i32 %1, %i.bs
  %i.cc = sext i32 %i.cb to i64
  %wide.trip.count65 = zext nneg i32 %i.bs to i64
  %invariant.gep73 = getelementptr [4 x i8], ptr %0, i64 %i.cc
  %i.cd = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.ce
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %indvars.iv62 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next63, %bb.j ] ; 5 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv62
  %i.ci = trunc i64 %indvars.iv62 to i32
  %i.cj = add i32 %i.bt, %i.ci
  %i.ck = sitofp reassoc nsz arcp i32 %i.cj to double
  %i.cl = uitofp nneg i32 %i.cg to double
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.ck, i64 1
  %i.co = fmul reassoc nnan nsz arcp <2 x double> %i.cn, splat (double f0x400921FB54442D18)
  %i.cp = fmul reassoc nsz arcp <2 x double> %i.co, %i.cf
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float> ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0
  %i.cs = tail call reassoc nsz arcp float @cosf(float noundef %i.cr) #6
  %i.ct = extractelement <2 x float> %i.cq, i64 1
  %i.cu = tail call reassoc nsz arcp float @cosf(float noundef %i.ct) #6
  %i.cv = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cu, i64 1
  %i.cx = tail call reassoc nsz arcp <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  store float %i.cy, ptr %i.ch, align 4, !tbaa !10
  %gep74 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %indvars.iv62
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  store float %i.cz, ptr %gep74, align 4, !tbaa !10
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %FLAC__window_rectangle.exit, label %bb.j, !llvm.loop !47

FLAC__window_rectangle.exit.loopexit99.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %FLAC__window_rectangle.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, %.lr.ph.i32
  %indvars.iv.i34.epil.init = phi i64 [ 0, %.lr.ph.i32 ], [ %indvars.iv.next.i35.1, %FLAC__window_rectangle.exit.loopexit99.unr-lcssa ] ; 2 uses
  %lcmp.mod101 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.da = trunc nuw nsw i64 %indvars.iv.i34.epil.init to i32
  %i.db = uitofp nneg i32 %i.da to double
  %i.dc = fmul reassoc nnan nsz arcp double %i.db, f0x401921FB54442D18
  %i.dd = fdiv reassoc nsz arcp double %i.dc, %i.j
  %i.de = fptrunc reassoc nsz arcp double %i.dd to float
  %i.df = tail call reassoc nsz arcp float @cosf(float noundef %i.de) #6
  %i.dg = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.df, float -5.000000e-01, float 5.000000e-01)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i34.epil.init
  store float %i.dg, ptr %i.dh, align 4, !tbaa !10
  br label %FLAC__window_rectangle.exit

FLAC__window_rectangle.exit:                      ; preds = %.lr.ph.i, %.epil.preheader, %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, %bb.h, %bb.j, %middle.block, %FLAC__window_rectangle.exit50, %bb.d, %bb.b, %FLAC__window_rectangle.exit43
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_partial_tukey(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = sitofp reassoc nsz arcp i32 %1 to float  ; 2 uses
  %i.b = fmul reassoc nsz arcp float %3, %i.a
  %i.c = fptosi float %i.b to i32                 ; 9 uses
  %i.d = fmul reassoc nsz arcp float %4, %i.a
  %i.e = fptosi float %i.d to i32                 ; 9 uses
  %i.f = sub nsw i32 %i.e, %i.c                   ; 4 uses
  %i.g = fcmp reassoc nsz arcp ugt float %2, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sitofp reassoc nsz arcp i32 %i.f to float
  %i.i = fmul reassoc nnan nsz arcp float %i.h, 2.500000e-02
  %i.j = fptosi float %i.i to i32                 ; 7 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %1) ; 3 uses
  %i.k = icmp sgt i32 %invariant.smin, 0
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader102

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = zext nneg i32 %invariant.smin to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.m, i1 false), !tbaa !10
  br label %.preheader102

.preheader102:                                    ; preds = %.lr.ph.preheader, %bb.b
  %.066.i.lcssa = phi i32 [ 0, %bb.b ], [ %invariant.smin, %.lr.ph.preheader ] ; 3 uses
  %i.n = add nsw i32 %i.j, %i.c
  %invariant.smin104 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %1) ; 4 uses
  %i.o = icmp slt i32 %.066.i.lcssa, %invariant.smin104
  br i1 %i.o, label %.lr.ph107, label %.preheader101

.lr.ph107:                                        ; preds = %.preheader102
  %i.p = sitofp reassoc nsz arcp i32 %i.j to double ; 3 uses
  %i.q = zext nneg i32 %.066.i.lcssa to i64       ; 4 uses
  %wide.trip.count200 = zext nneg i32 %invariant.smin104 to i64 ; 2 uses
  %i.r = sub nsw i64 %wide.trip.count200, %i.q    ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = add nsw i64 %wide.trip.count200, -1
  %i.t = icmp eq i64 %i.s, %i.q
  br i1 %i.t, label %.epil.preheader, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.lr.ph107
  %unroll_iter = and i64 %i.r, -2
  %i.u = fdiv reassoc nsz arcp double 1.000000e+00, %i.p
  %i.v = fdiv reassoc nsz arcp double 1.000000e+00, %i.p
  br label %bb.c

.preheader101.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader101, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader101.loopexit.unr-lcssa, %.lr.ph107
  %indvars.iv.epil.init = phi i64 [ %i.q, %.lr.ph107 ], [ %indvars.iv.next.1, %.preheader101.loopexit.unr-lcssa ]
  %.0.i106.epil.init = phi i32 [ 1, %.lr.ph107 ], [ %i.bf, %.preheader101.loopexit.unr-lcssa ]
  %lcmp.mod338 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.w = uitofp nneg i32 %.0.i106.epil.init to double
  %i.x = fmul reassoc nnan nsz arcp double %i.w, f0x400921FB54442D18
  %i.y = fdiv reassoc nsz arcp double %i.x, %i.p
  %i.z = fptrunc reassoc nsz arcp double %i.y to float
  %i.aa = tail call reassoc nsz arcp float @cosf(float noundef %i.z) #6, !inline_history !61
  %i.ab = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.aa, float -5.000000e-01, float 5.000000e-01)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  br label %.preheader101

.preheader101:                                    ; preds = %.epil.preheader, %.preheader101.loopexit.unr-lcssa, %.preheader102
  %.167.i.lcssa = phi i32 [ %.066.i.lcssa, %.preheader102 ], [ %invariant.smin104, %.preheader101.loopexit.unr-lcssa ], [ %invariant.smin104, %.epil.preheader ] ; 5 uses
  %i.ad = sub nsw i32 %i.e, %i.j
  %invariant.smin109 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %1) ; 3 uses
  %i.ae = icmp slt i32 %.167.i.lcssa, %invariant.smin109
  br i1 %i.ae, label %.lr.ph111.preheader, label %.preheader100

.lr.ph111.preheader:                              ; preds = %.preheader101
  %i.af = zext nneg i32 %.167.i.lcssa to i64      ; 3 uses
  %i.ag = xor i32 %.167.i.lcssa, -1
  %i.ah = add i32 %invariant.smin109, %i.ag       ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ah, 7
  br i1 %min.iters.check, label %.lr.ph111.preheader336, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111.preheader
  %n.vec = and i64 %i.aj, 8589934584              ; 4 uses
  %i.ak = add nuw nsw i64 %n.vec, %i.af
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %gep, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.al, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %i.an = trunc i64 %n.vec to i32
  %i.ao = add i32 %.167.i.lcssa, %i.an
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.preheader100, label %.lr.ph111.preheader336

.lr.ph111.preheader336:                           ; preds = %.lr.ph111.preheader, %middle.block
  %indvars.iv201.ph = phi i64 [ %i.af, %.lr.ph111.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph111

bb.c:                                             ; preds = %bb.c, %.lr.ph107.new
  %indvars.iv = phi i64 [ %i.q, %.lr.ph107.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0.i106 = phi i32 [ 1, %.lr.ph107.new ], [ %i.bf, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph107.new ], [ %niter.next.1, %bb.c ]
  %i.ap = uitofp nneg i32 %.0.i106 to double
  %i.aq = fmul reassoc nnan nsz arcp double %i.ap, f0x400921FB54442D18
  %i.ar = fmul reassoc nsz arcp double %i.aq, %i.u
  %i.as = fptrunc reassoc nsz arcp double %i.ar to float
  %i.at = tail call reassoc nsz arcp float @cosf(float noundef %i.as) #6, !inline_history !61
  %i.au = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.at, float -5.000000e-01, float 5.000000e-01)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.au, ptr %i.av, align 4, !tbaa !10
  %i.aw = add nuw nsw i32 %.0.i106, 1
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = fmul reassoc nnan nsz arcp double %i.ax, f0x400921FB54442D18
  %i.az = fmul reassoc nsz arcp double %i.ay, %i.v
  %i.ba = fptrunc reassoc nsz arcp double %i.az to float
  %i.bb = tail call reassoc nsz arcp float @cosf(float noundef %i.ba) #6, !inline_history !61
  %i.bc = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.bb, float -5.000000e-01, float 5.000000e-01)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store float %i.bc, ptr %i.be, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bf = add nuw nsw i32 %.0.i106, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader101.loopexit.unr-lcssa, label %bb.c, !llvm.loop !52

.preheader100:                                    ; preds = %.lr.ph111, %middle.block, %.preheader101
  %.2.i.lcssa = phi i32 [ %.167.i.lcssa, %.preheader101 ], [ %i.ao, %middle.block ], [ %i.bx, %.lr.ph111 ] ; 5 uses
  %invariant.smin113 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %1) ; 4 uses
  %i.bg = icmp slt i32 %.2.i.lcssa, %invariant.smin113
  br i1 %i.bg, label %.lr.ph116, label %.preheader98

.lr.ph116:                                        ; preds = %.preheader100
  %i.bh = sitofp reassoc nsz arcp i32 %i.j to double ; 3 uses
  %i.bi = zext nneg i32 %.2.i.lcssa to i64        ; 3 uses
  %i.bj = sub i32 %invariant.smin113, %.2.i.lcssa
  %.neg = add i32 %.2.i.lcssa, 1
  %xtraiter339 = and i32 %i.bj, 1
  %lcmp.mod340.not = icmp eq i32 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph116
  %i.bk = sitofp reassoc nsz arcp i32 %i.j to double
  %i.bl = fmul reassoc nnan nsz arcp double %i.bk, f0x400921FB54442D18
  %i.bm = fdiv reassoc nsz arcp double %i.bl, %i.bh
  %i.bn = fptrunc reassoc nsz arcp double %i.bm to float
  %i.bo = tail call reassoc nsz arcp float @cosf(float noundef %i.bn) #6, !inline_history !61
  %i.bp = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.bo, float -5.000000e-01, float 5.000000e-01)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  store float %i.bp, ptr %i.bq, align 4, !tbaa !10
  %indvars.iv.next205.prol = add nuw nsw i64 %i.bi, 1 ; 2 uses
  %i.br = add nsw i32 %i.j, -1
  %i.bs = trunc nuw i64 %indvars.iv.next205.prol to i32
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph116
  %indvars.iv204.unr = phi i64 [ %i.bi, %.lr.ph116 ], [ %indvars.iv.next205.prol, %.prol.loopexit.unr-lcssa ]
  %.1.i115.unr = phi i32 [ %i.j, %.lr.ph116 ], [ %i.br, %.prol.loopexit.unr-lcssa ]
  %.lcssa335.unr = phi i32 [ poison, %.lr.ph116 ], [ %i.bs, %.prol.loopexit.unr-lcssa ]
  %i.bt = icmp eq i32 %invariant.smin113, %.neg
  br i1 %i.bt, label %.preheader98, label %.lr.ph116.new

.lr.ph116.new:                                    ; preds = %.prol.loopexit
  %i.bu = fdiv reassoc nsz arcp double 1.000000e+00, %i.bh
  %i.bv = fdiv reassoc nsz arcp double 1.000000e+00, %i.bh
  br label %bb.d

.lr.ph111:                                        ; preds = %.lr.ph111.preheader336, %.lr.ph111
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %.lr.ph111 ], [ %indvars.iv201.ph, %.lr.ph111.preheader336 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv201
  store float 1.000000e+00, ptr %i.bw, align 4, !tbaa !10
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.next202 to i32 ; 2 uses
  %i.by = icmp sgt i32 %invariant.smin109, %i.bx
  br i1 %i.by, label %.lr.ph111, label %.preheader100, !llvm.loop !53

.preheader98:                                     ; preds = %.prol.loopexit, %bb.d, %.preheader100
  %.3.i.lcssa = phi i32 [ %.2.i.lcssa, %.preheader100 ], [ %.lcssa335.unr, %.prol.loopexit ], [ %i.cr, %bb.d ] ; 2 uses
  %i.bz = icmp slt i32 %.3.i.lcssa, %1
  br i1 %i.bz, label %FLAC__window_partial_tukey.exit.sink.split, label %FLAC__window_partial_tukey.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph116.new
  %indvars.iv204 = phi i64 [ %indvars.iv204.unr, %.lr.ph116.new ], [ %indvars.iv.next205.1, %bb.d ] ; 3 uses
  %.1.i115 = phi i32 [ %.1.i115.unr, %.lr.ph116.new ], [ %i.cq, %bb.d ] ; 3 uses
  %i.ca = sitofp reassoc nsz arcp i32 %.1.i115 to double
  %i.cb = fmul reassoc nnan nsz arcp double %i.ca, f0x400921FB54442D18
  %i.cc = fmul reassoc nsz arcp double %i.cb, %i.bu
  %i.cd = fptrunc reassoc nsz arcp double %i.cc to float
  %i.ce = tail call reassoc nsz arcp float @cosf(float noundef %i.cd) #6, !inline_history !61
  %i.cf = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ce, float -5.000000e-01, float 5.000000e-01)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv204
  store float %i.cf, ptr %i.cg, align 4, !tbaa !10
  %i.ch = add nsw i32 %.1.i115, -1
  %i.ci = sitofp reassoc nsz arcp i32 %i.ch to double
  %i.cj = fmul reassoc nnan nsz arcp double %i.ci, f0x400921FB54442D18
  %i.ck = fmul reassoc nsz arcp double %i.cj, %i.bv
  %i.cl = fptrunc reassoc nsz arcp double %i.ck to float
  %i.cm = tail call reassoc nsz arcp float @cosf(float noundef %i.cl) #6, !inline_history !61
  %i.cn = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.cm, float -5.000000e-01, float 5.000000e-01)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv204
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store float %i.cn, ptr %i.cp, align 4, !tbaa !10
  %indvars.iv.next205.1 = add nuw nsw i64 %indvars.iv204, 2 ; 2 uses
  %i.cq = add nsw i32 %.1.i115, -2
  %i.cr = trunc nuw i64 %indvars.iv.next205.1 to i32 ; 2 uses
  %i.cs = icmp sgt i32 %invariant.smin113, %i.cr
  br i1 %i.cs, label %bb.d, label %.preheader98, !llvm.loop !54

bb.e:                                             ; preds = %bb.a
  %i.ct = fcmp reassoc nsz arcp ult float %2, 1.000000e+00
  br i1 %i.ct, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cu = sitofp reassoc nsz arcp i32 %i.f to float
  %i.cv = fmul reassoc nnan nsz arcp float %i.cu, 4.750000e-01
  %i.cw = fptosi float %i.cv to i32               ; 7 uses
  %invariant.smin120 = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %1) ; 3 uses
  %i.cx = icmp sgt i32 %invariant.smin120, 0
  br i1 %i.cx, label %.lr.ph122.preheader, label %.preheader97

.lr.ph122.preheader:                              ; preds = %bb.f
  %i.cy = zext nneg i32 %invariant.smin120 to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cz, i1 false), !tbaa !10
  br label %.preheader97

.preheader97:                                     ; preds = %.lr.ph122.preheader, %bb.f
  %.066.i69.lcssa = phi i32 [ 0, %bb.f ], [ %invariant.smin120, %.lr.ph122.preheader ] ; 3 uses
  %i.da = add nsw i32 %i.cw, %i.c
  %invariant.smin124 = tail call i32 @llvm.smin.i32(i32 %i.da, i32 %1) ; 4 uses
  %i.db = icmp slt i32 %.066.i69.lcssa, %invariant.smin124
  br i1 %i.db, label %.lr.ph127, label %.preheader96

.lr.ph127:                                        ; preds = %.preheader97
  %i.dc = sitofp reassoc nsz arcp i32 %i.cw to double ; 3 uses
  %i.dd = zext nneg i32 %.066.i69.lcssa to i64    ; 4 uses
  %wide.trip.count218 = zext nneg i32 %invariant.smin124 to i64 ; 2 uses
  %i.de = sub nsw i64 %wide.trip.count218, %i.dd  ; 3 uses
  %xtraiter342 = and i64 %i.de, 1
  %i.df = add nsw i64 %wide.trip.count218, -1
  %i.dg = icmp eq i64 %i.df, %i.dd
  br i1 %i.dg, label %.epil.preheader341, label %.lr.ph127.new

.lr.ph127.new:                                    ; preds = %.lr.ph127
  %unroll_iter345 = and i64 %i.de, -2
  %i.dh = fdiv reassoc nsz arcp double 1.000000e+00, %i.dc
  %i.di = fdiv reassoc nsz arcp double 1.000000e+00, %i.dc
  br label %bb.g

.preheader96.loopexit.unr-lcssa:                  ; preds = %bb.g
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %.preheader96, label %.epil.preheader341

.epil.preheader341:                               ; preds = %.preheader96.loopexit.unr-lcssa, %.lr.ph127
  %indvars.iv215.epil.init = phi i64 [ %i.dd, %.lr.ph127 ], [ %indvars.iv.next216.1, %.preheader96.loopexit.unr-lcssa ]
  %.0.i71126.epil.init = phi i32 [ 1, %.lr.ph127 ], [ %i.es, %.preheader96.loopexit.unr-lcssa ]
  %lcmp.mod344 = trunc i64 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod344)
  %i.dj = uitofp nneg i32 %.0.i71126.epil.init to double
  %i.dk = fmul reassoc nnan nsz arcp double %i.dj, f0x400921FB54442D18
  %i.dl = fdiv reassoc nsz arcp double %i.dk, %i.dc
  %i.dm = fptrunc reassoc nsz arcp double %i.dl to float
  %i.dn = tail call reassoc nsz arcp float @cosf(float noundef %i.dm) #6, !inline_history !61
  %i.do = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.dn, float -5.000000e-01, float 5.000000e-01)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv215.epil.init
  store float %i.do, ptr %i.dp, align 4, !tbaa !10
  br label %.preheader96

.preheader96:                                     ; preds = %.epil.preheader341, %.preheader96.loopexit.unr-lcssa, %.preheader97
  %.167.i70.lcssa = phi i32 [ %.066.i69.lcssa, %.preheader97 ], [ %invariant.smin124, %.preheader96.loopexit.unr-lcssa ], [ %invariant.smin124, %.epil.preheader341 ] ; 5 uses
  %i.dq = sub nsw i32 %i.e, %i.cw
  %invariant.smin129 = tail call i32 @llvm.smin.i32(i32 %i.dq, i32 %1) ; 3 uses
  %i.dr = icmp slt i32 %.167.i70.lcssa, %invariant.smin129
  br i1 %i.dr, label %.lr.ph131.preheader, label %.preheader95

.lr.ph131.preheader:                              ; preds = %.preheader96
  %i.ds = zext nneg i32 %.167.i70.lcssa to i64    ; 3 uses
  %i.dt = xor i32 %.167.i70.lcssa, -1
  %i.du = add i32 %invariant.smin129, %i.dt       ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check298 = icmp ult i32 %i.du, 7
  br i1 %min.iters.check298, label %.lr.ph131.preheader333, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph131.preheader
  %n.vec300 = and i64 %i.dw, 8589934584           ; 4 uses
  %i.dx = add nuw nsw i64 %n.vec300, %i.ds
  %invariant.gep386 = getelementptr [4 x i8], ptr %0, i64 %i.ds
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next303, %vector.body301 ] ; 2 uses
  %gep387 = getelementptr [4 x i8], ptr %invariant.gep386, i64 %index302 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %gep387, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %gep387, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.dy, align 4, !tbaa !10
  %index.next303 = add nuw i64 %index302, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next303, %n.vec300
  br i1 %i.dz, label %middle.block304, label %vector.body301, !llvm.loop !55

middle.block304:                                  ; preds = %vector.body301
  %i.ea = trunc i64 %n.vec300 to i32
  %i.eb = add i32 %.167.i70.lcssa, %i.ea
  %cmp.n305 = icmp eq i64 %i.dw, %n.vec300
  br i1 %cmp.n305, label %.preheader95, label %.lr.ph131.preheader333

.lr.ph131.preheader333:                           ; preds = %.lr.ph131.preheader, %middle.block304
  %indvars.iv220.ph = phi i64 [ %i.ds, %.lr.ph131.preheader ], [ %i.dx, %middle.block304 ]
  br label %.lr.ph131

bb.g:                                             ; preds = %bb.g, %.lr.ph127.new
  %indvars.iv215 = phi i64 [ %i.dd, %.lr.ph127.new ], [ %indvars.iv.next216.1, %bb.g ] ; 3 uses
  %.0.i71126 = phi i32 [ 1, %.lr.ph127.new ], [ %i.es, %bb.g ] ; 3 uses
  %niter346 = phi i64 [ 0, %.lr.ph127.new ], [ %niter346.next.1, %bb.g ]
  %i.ec = uitofp nneg i32 %.0.i71126 to double
  %i.ed = fmul reassoc nnan nsz arcp double %i.ec, f0x400921FB54442D18
  %i.ee = fmul reassoc nsz arcp double %i.ed, %i.dh
  %i.ef = fptrunc reassoc nsz arcp double %i.ee to float
  %i.eg = tail call reassoc nsz arcp float @cosf(float noundef %i.ef) #6, !inline_history !61
  %i.eh = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.eg, float -5.000000e-01, float 5.000000e-01)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv215
  store float %i.eh, ptr %i.ei, align 4, !tbaa !10
  %i.ej = add nuw nsw i32 %.0.i71126, 1
  %i.ek = uitofp nneg i32 %i.ej to double
  %i.el = fmul reassoc nnan nsz arcp double %i.ek, f0x400921FB54442D18
  %i.em = fmul reassoc nsz arcp double %i.el, %i.di
  %i.en = fptrunc reassoc nsz arcp double %i.em to float
  %i.eo = tail call reassoc nsz arcp float @cosf(float noundef %i.en) #6, !inline_history !61
  %i.ep = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.eo, float -5.000000e-01, float 5.000000e-01)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv215
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store float %i.ep, ptr %i.er, align 4, !tbaa !10
  %indvars.iv.next216.1 = add nuw nsw i64 %indvars.iv215, 2 ; 2 uses
  %i.es = add nuw nsw i32 %.0.i71126, 2           ; 2 uses
  %niter346.next.1 = add i64 %niter346, 2         ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345
  br i1 %niter346.ncmp.1, label %.preheader96.loopexit.unr-lcssa, label %bb.g, !llvm.loop !52

.preheader95:                                     ; preds = %.lr.ph131, %middle.block304, %.preheader96
  %.2.i72.lcssa = phi i32 [ %.167.i70.lcssa, %.preheader96 ], [ %i.eb, %middle.block304 ], [ %i.fk, %.lr.ph131 ] ; 5 uses
  %invariant.smin133 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %1) ; 4 uses
  %i.et = icmp slt i32 %.2.i72.lcssa, %invariant.smin133
  br i1 %i.et, label %.lr.ph136, label %.preheader93

.lr.ph136:                                        ; preds = %.preheader95
  %i.eu = sitofp reassoc nsz arcp i32 %i.cw to double ; 3 uses
  %i.ev = zext nneg i32 %.2.i72.lcssa to i64      ; 3 uses
  %i.ew = sub i32 %invariant.smin133, %.2.i72.lcssa
  %.neg371 = add i32 %.2.i72.lcssa, 1
  %xtraiter349 = and i32 %i.ew, 1
  %lcmp.mod350.not = icmp eq i32 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.prol.loopexit348, label %.prol.loopexit348.unr-lcssa

.prol.loopexit348.unr-lcssa:                      ; preds = %.lr.ph136
  %i.ex = sitofp reassoc nsz arcp i32 %i.cw to double
  %i.ey = fmul reassoc nnan nsz arcp double %i.ex, f0x400921FB54442D18
  %i.ez = fdiv reassoc nsz arcp double %i.ey, %i.eu
  %i.fa = fptrunc reassoc nsz arcp double %i.ez to float
  %i.fb = tail call reassoc nsz arcp float @cosf(float noundef %i.fa) #6, !inline_history !61
  %i.fc = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.fb, float -5.000000e-01, float 5.000000e-01)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ev
  store float %i.fc, ptr %i.fd, align 4, !tbaa !10
  %indvars.iv.next224.prol = add nuw nsw i64 %i.ev, 1 ; 2 uses
  %i.fe = add nsw i32 %i.cw, -1
  %i.ff = trunc nuw i64 %indvars.iv.next224.prol to i32
  br label %.prol.loopexit348

.prol.loopexit348:                                ; preds = %.prol.loopexit348.unr-lcssa, %.lr.ph136
  %indvars.iv223.unr = phi i64 [ %i.ev, %.lr.ph136 ], [ %indvars.iv.next224.prol, %.prol.loopexit348.unr-lcssa ]
  %.1.i74135.unr = phi i32 [ %i.cw, %.lr.ph136 ], [ %i.fe, %.prol.loopexit348.unr-lcssa ]
  %.lcssa332.unr = phi i32 [ poison, %.lr.ph136 ], [ %i.ff, %.prol.loopexit348.unr-lcssa ]
  %i.fg = icmp eq i32 %invariant.smin133, %.neg371
  br i1 %i.fg, label %.preheader93, label %.lr.ph136.new

.lr.ph136.new:                                    ; preds = %.prol.loopexit348
  %i.fh = fdiv reassoc nsz arcp double 1.000000e+00, %i.eu
  %i.fi = fdiv reassoc nsz arcp double 1.000000e+00, %i.eu
  br label %bb.h

.lr.ph131:                                        ; preds = %.lr.ph131.preheader333, %.lr.ph131
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %.lr.ph131 ], [ %indvars.iv220.ph, %.lr.ph131.preheader333 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv220
  store float 1.000000e+00, ptr %i.fj, align 4, !tbaa !10
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.fk = trunc nuw i64 %indvars.iv.next221 to i32 ; 2 uses
  %i.fl = icmp sgt i32 %invariant.smin129, %i.fk
  br i1 %i.fl, label %.lr.ph131, label %.preheader95, !llvm.loop !56

.preheader93:                                     ; preds = %.prol.loopexit348, %bb.h, %.preheader95
  %.3.i73.lcssa = phi i32 [ %.2.i72.lcssa, %.preheader95 ], [ %.lcssa332.unr, %.prol.loopexit348 ], [ %i.ge, %bb.h ] ; 2 uses
  %i.fm = icmp slt i32 %.3.i73.lcssa, %1
  br i1 %i.fm, label %FLAC__window_partial_tukey.exit.sink.split, label %FLAC__window_partial_tukey.exit

bb.h:                                             ; preds = %bb.h, %.lr.ph136.new
  %indvars.iv223 = phi i64 [ %indvars.iv223.unr, %.lr.ph136.new ], [ %indvars.iv.next224.1, %bb.h ] ; 3 uses
  %.1.i74135 = phi i32 [ %.1.i74135.unr, %.lr.ph136.new ], [ %i.gd, %bb.h ] ; 3 uses
  %i.fn = sitofp reassoc nsz arcp i32 %.1.i74135 to double
  %i.fo = fmul reassoc nnan nsz arcp double %i.fn, f0x400921FB54442D18
  %i.fp = fmul reassoc nsz arcp double %i.fo, %i.fh
  %i.fq = fptrunc reassoc nsz arcp double %i.fp to float
  %i.fr = tail call reassoc nsz arcp float @cosf(float noundef %i.fq) #6, !inline_history !61
  %i.fs = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.fr, float -5.000000e-01, float 5.000000e-01)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv223
  store float %i.fs, ptr %i.ft, align 4, !tbaa !10
  %i.fu = add nsw i32 %.1.i74135, -1
  %i.fv = sitofp reassoc nsz arcp i32 %i.fu to double
  %i.fw = fmul reassoc nnan nsz arcp double %i.fv, f0x400921FB54442D18
  %i.fx = fmul reassoc nsz arcp double %i.fw, %i.fi
  %i.fy = fptrunc reassoc nsz arcp double %i.fx to float
  %i.fz = tail call reassoc nsz arcp float @cosf(float noundef %i.fy) #6, !inline_history !61
  %i.ga = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.fz, float -5.000000e-01, float 5.000000e-01)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv223
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store float %i.ga, ptr %i.gc, align 4, !tbaa !10
  %indvars.iv.next224.1 = add nuw nsw i64 %indvars.iv223, 2 ; 2 uses
  %i.gd = add nsw i32 %.1.i74135, -2
  %i.ge = trunc nuw i64 %indvars.iv.next224.1 to i32 ; 2 uses
  %i.gf = icmp sgt i32 %invariant.smin133, %i.ge
  br i1 %i.gf, label %bb.h, label %.preheader93, !llvm.loop !54

bb.i:                                             ; preds = %bb.e
  %i.gg = fcmp reassoc nsz arcp ogt float %2, 0.000000e+00
  %i.gh = fcmp reassoc nsz arcp olt float %2, 1.000000e+00
  %or.cond = and i1 %i.gg, %i.gh
  br i1 %or.cond, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gi = sitofp reassoc nsz arcp i32 %i.f to float
  %i.gj = fmul reassoc nnan nsz arcp float %i.gi, 2.500000e-01
  %i.gk = fptosi float %i.gj to i32               ; 7 uses
  %invariant.smin140 = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %1) ; 3 uses
  %i.gl = icmp sgt i32 %invariant.smin140, 0
  br i1 %i.gl, label %.lr.ph142.preheader, label %.preheader92

.lr.ph142.preheader:                              ; preds = %bb.j
  %i.gm = zext nneg i32 %invariant.smin140 to i64
  %i.gn = shl nuw nsw i64 %i.gm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.gn, i1 false), !tbaa !10
  br label %.preheader92

.preheader92:                                     ; preds = %.lr.ph142.preheader, %bb.j
  %.066.i77.lcssa = phi i32 [ 0, %bb.j ], [ %invariant.smin140, %.lr.ph142.preheader ] ; 3 uses
  %i.go = add nsw i32 %i.gk, %i.c
  %invariant.smin144 = tail call i32 @llvm.smin.i32(i32 %i.go, i32 %1) ; 4 uses
  %i.gp = icmp slt i32 %.066.i77.lcssa, %invariant.smin144
  br i1 %i.gp, label %.lr.ph147, label %.preheader91

.lr.ph147:                                        ; preds = %.preheader92
  %i.gq = sitofp reassoc nsz arcp i32 %i.gk to double ; 3 uses
  %i.gr = zext nneg i32 %.066.i77.lcssa to i64    ; 4 uses
  %wide.trip.count238 = zext nneg i32 %invariant.smin144 to i64 ; 2 uses
  %i.gs = sub nsw i64 %wide.trip.count238, %i.gr  ; 3 uses
  %xtraiter352 = and i64 %i.gs, 1
  %i.gt = add nsw i64 %wide.trip.count238, -1
  %i.gu = icmp eq i64 %i.gt, %i.gr
  br i1 %i.gu, label %.epil.preheader351, label %.lr.ph147.new

.lr.ph147.new:                                    ; preds = %.lr.ph147
  %unroll_iter355 = and i64 %i.gs, -2
  %i.gv = fdiv reassoc nsz arcp double 1.000000e+00, %i.gq
  %i.gw = fdiv reassoc nsz arcp double 1.000000e+00, %i.gq
  br label %bb.k

.preheader91.loopexit.unr-lcssa:                  ; preds = %bb.k
  %lcmp.mod353.not = icmp eq i64 %xtraiter352, 0
  br i1 %lcmp.mod353.not, label %.preheader91, label %.epil.preheader351

.epil.preheader351:                               ; preds = %.preheader91.loopexit.unr-lcssa, %.lr.ph147
  %indvars.iv235.epil.init = phi i64 [ %i.gr, %.lr.ph147 ], [ %indvars.iv.next236.1, %.preheader91.loopexit.unr-lcssa ]
  %.0.i79146.epil.init = phi i32 [ 1, %.lr.ph147 ], [ %i.ig, %.preheader91.loopexit.unr-lcssa ]
  %lcmp.mod354 = trunc i64 %i.gs to i1
  tail call void @llvm.assume(i1 %lcmp.mod354)
  %i.gx = uitofp nneg i32 %.0.i79146.epil.init to double
  %i.gy = fmul reassoc nnan nsz arcp double %i.gx, f0x400921FB54442D18
  %i.gz = fdiv reassoc nsz arcp double %i.gy, %i.gq
  %i.ha = fptrunc reassoc nsz arcp double %i.gz to float
  %i.hb = tail call reassoc nsz arcp float @cosf(float noundef %i.ha) #6, !inline_history !61
  %i.hc = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.hb, float -5.000000e-01, float 5.000000e-01)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv235.epil.init
  store float %i.hc, ptr %i.hd, align 4, !tbaa !10
  br label %.preheader91

.preheader91:                                     ; preds = %.epil.preheader351, %.preheader91.loopexit.unr-lcssa, %.preheader92
  %.167.i78.lcssa = phi i32 [ %.066.i77.lcssa, %.preheader92 ], [ %invariant.smin144, %.preheader91.loopexit.unr-lcssa ], [ %invariant.smin144, %.epil.preheader351 ] ; 5 uses
  %i.he = sub nsw i32 %i.e, %i.gk
  %invariant.smin149 = tail call i32 @llvm.smin.i32(i32 %i.he, i32 %1) ; 3 uses
  %i.hf = icmp slt i32 %.167.i78.lcssa, %invariant.smin149
  br i1 %i.hf, label %.lr.ph151.preheader, label %.preheader90

.lr.ph151.preheader:                              ; preds = %.preheader91
  %i.hg = zext nneg i32 %.167.i78.lcssa to i64    ; 3 uses
  %i.hh = xor i32 %.167.i78.lcssa, -1
  %i.hi = add i32 %invariant.smin149, %i.hh       ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %min.iters.check308 = icmp ult i32 %i.hi, 7
  br i1 %min.iters.check308, label %.lr.ph151.preheader330, label %vector.ph309

vector.ph309:                                     ; preds = %.lr.ph151.preheader
  %n.vec310 = and i64 %i.hk, 8589934584           ; 4 uses
  %i.hl = add nuw nsw i64 %n.vec310, %i.hg
  %invariant.gep388 = getelementptr [4 x i8], ptr %0, i64 %i.hg
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next313, %vector.body311 ] ; 2 uses
  %gep389 = getelementptr [4 x i8], ptr %invariant.gep388, i64 %index312 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %gep389, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %gep389, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.hm, align 4, !tbaa !10
  %index.next313 = add nuw i64 %index312, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next313, %n.vec310
  br i1 %i.hn, label %middle.block314, label %vector.body311, !llvm.loop !57

middle.block314:                                  ; preds = %vector.body311
  %i.ho = trunc i64 %n.vec310 to i32
  %i.hp = add i32 %.167.i78.lcssa, %i.ho
  %cmp.n315 = icmp eq i64 %i.hk, %n.vec310
  br i1 %cmp.n315, label %.preheader90, label %.lr.ph151.preheader330

.lr.ph151.preheader330:                           ; preds = %.lr.ph151.preheader, %middle.block314
  %indvars.iv240.ph = phi i64 [ %i.hg, %.lr.ph151.preheader ], [ %i.hl, %middle.block314 ]
  br label %.lr.ph151

bb.k:                                             ; preds = %bb.k, %.lr.ph147.new
  %indvars.iv235 = phi i64 [ %i.gr, %.lr.ph147.new ], [ %indvars.iv.next236.1, %bb.k ] ; 3 uses
  %.0.i79146 = phi i32 [ 1, %.lr.ph147.new ], [ %i.ig, %bb.k ] ; 3 uses
  %niter356 = phi i64 [ 0, %.lr.ph147.new ], [ %niter356.next.1, %bb.k ]
  %i.hq = uitofp nneg i32 %.0.i79146 to double
  %i.hr = fmul reassoc nnan nsz arcp double %i.hq, f0x400921FB54442D18
  %i.hs = fmul reassoc nsz arcp double %i.hr, %i.gv
  %i.ht = fptrunc reassoc nsz arcp double %i.hs to float
  %i.hu = tail call reassoc nsz arcp float @cosf(float noundef %i.ht) #6, !inline_history !61
  %i.hv = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.hu, float -5.000000e-01, float 5.000000e-01)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv235
  store float %i.hv, ptr %i.hw, align 4, !tbaa !10
  %i.hx = add nuw nsw i32 %.0.i79146, 1
  %i.hy = uitofp nneg i32 %i.hx to double
  %i.hz = fmul reassoc nnan nsz arcp double %i.hy, f0x400921FB54442D18
  %i.ia = fmul reassoc nsz arcp double %i.hz, %i.gw
  %i.ib = fptrunc reassoc nsz arcp double %i.ia to float
  %i.ic = tail call reassoc nsz arcp float @cosf(float noundef %i.ib) #6, !inline_history !61
  %i.id = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ic, float -5.000000e-01, float 5.000000e-01)
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv235
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store float %i.id, ptr %i.if, align 4, !tbaa !10
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %i.ig = add nuw nsw i32 %.0.i79146, 2           ; 2 uses
  %niter356.next.1 = add i64 %niter356, 2         ; 2 uses
  %niter356.ncmp.1 = icmp eq i64 %niter356.next.1, %unroll_iter355
  br i1 %niter356.ncmp.1, label %.preheader91.loopexit.unr-lcssa, label %bb.k, !llvm.loop !52

.preheader90:                                     ; preds = %.lr.ph151, %middle.block314, %.preheader91
  %.2.i80.lcssa = phi i32 [ %.167.i78.lcssa, %.preheader91 ], [ %i.hp, %middle.block314 ], [ %i.iy, %.lr.ph151 ] ; 5 uses
  %invariant.smin153 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %1) ; 4 uses
  %i.ih = icmp slt i32 %.2.i80.lcssa, %invariant.smin153
  br i1 %i.ih, label %.lr.ph156, label %.preheader88

.lr.ph156:                                        ; preds = %.preheader90
  %i.ii = sitofp reassoc nsz arcp i32 %i.gk to double ; 3 uses
  %i.ij = zext nneg i32 %.2.i80.lcssa to i64      ; 3 uses
  %i.ik = sub i32 %invariant.smin153, %.2.i80.lcssa
  %.neg372 = add i32 %.2.i80.lcssa, 1
  %xtraiter359 = and i32 %i.ik, 1
  %lcmp.mod360.not = icmp eq i32 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %.prol.loopexit358, label %.prol.loopexit358.unr-lcssa

.prol.loopexit358.unr-lcssa:                      ; preds = %.lr.ph156
  %i.il = sitofp reassoc nsz arcp i32 %i.gk to double
  %i.im = fmul reassoc nnan nsz arcp double %i.il, f0x400921FB54442D18
  %i.in = fdiv reassoc nsz arcp double %i.im, %i.ii
  %i.io = fptrunc reassoc nsz arcp double %i.in to float
  %i.ip = tail call reassoc nsz arcp float @cosf(float noundef %i.io) #6, !inline_history !61
  %i.iq = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ip, float -5.000000e-01, float 5.000000e-01)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ij
  store float %i.iq, ptr %i.ir, align 4, !tbaa !10
  %indvars.iv.next244.prol = add nuw nsw i64 %i.ij, 1 ; 2 uses
  %i.is = add nsw i32 %i.gk, -1
  %i.it = trunc nuw i64 %indvars.iv.next244.prol to i32
  br label %.prol.loopexit358

.prol.loopexit358:                                ; preds = %.prol.loopexit358.unr-lcssa, %.lr.ph156
  %indvars.iv243.unr = phi i64 [ %i.ij, %.lr.ph156 ], [ %indvars.iv.next244.prol, %.prol.loopexit358.unr-lcssa ]
  %.1.i82155.unr = phi i32 [ %i.gk, %.lr.ph156 ], [ %i.is, %.prol.loopexit358.unr-lcssa ]
  %.lcssa329.unr = phi i32 [ poison, %.lr.ph156 ], [ %i.it, %.prol.loopexit358.unr-lcssa ]
  %i.iu = icmp eq i32 %invariant.smin153, %.neg372
  br i1 %i.iu, label %.preheader88, label %.lr.ph156.new

.lr.ph156.new:                                    ; preds = %.prol.loopexit358
  %i.iv = fdiv reassoc nsz arcp double 1.000000e+00, %i.ii
  %i.iw = fdiv reassoc nsz arcp double 1.000000e+00, %i.ii
  br label %bb.l

.lr.ph151:                                        ; preds = %.lr.ph151.preheader330, %.lr.ph151
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %.lr.ph151 ], [ %indvars.iv240.ph, %.lr.ph151.preheader330 ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv240
  store float 1.000000e+00, ptr %i.ix, align 4, !tbaa !10
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.iy = trunc nuw i64 %indvars.iv.next241 to i32 ; 2 uses
  %i.iz = icmp sgt i32 %invariant.smin149, %i.iy
  br i1 %i.iz, label %.lr.ph151, label %.preheader90, !llvm.loop !58

.preheader88:                                     ; preds = %.prol.loopexit358, %bb.l, %.preheader90
  %.3.i81.lcssa = phi i32 [ %.2.i80.lcssa, %.preheader90 ], [ %.lcssa329.unr, %.prol.loopexit358 ], [ %i.js, %bb.l ] ; 2 uses
  %i.ja = icmp slt i32 %.3.i81.lcssa, %1
  br i1 %i.ja, label %FLAC__window_partial_tukey.exit.sink.split, label %FLAC__window_partial_tukey.exit

bb.l:                                             ; preds = %bb.l, %.lr.ph156.new
  %indvars.iv243 = phi i64 [ %indvars.iv243.unr, %.lr.ph156.new ], [ %indvars.iv.next244.1, %bb.l ] ; 3 uses
  %.1.i82155 = phi i32 [ %.1.i82155.unr, %.lr.ph156.new ], [ %i.jr, %bb.l ] ; 3 uses
  %i.jb = sitofp reassoc nsz arcp i32 %.1.i82155 to double
  %i.jc = fmul reassoc nnan nsz arcp double %i.jb, f0x400921FB54442D18
  %i.jd = fmul reassoc nsz arcp double %i.jc, %i.iv
  %i.je = fptrunc reassoc nsz arcp double %i.jd to float
  %i.jf = tail call reassoc nsz arcp float @cosf(float noundef %i.je) #6, !inline_history !61
  %i.jg = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.jf, float -5.000000e-01, float 5.000000e-01)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv243
  store float %i.jg, ptr %i.jh, align 4, !tbaa !10
  %i.ji = add nsw i32 %.1.i82155, -1
  %i.jj = sitofp reassoc nsz arcp i32 %i.ji to double
  %i.jk = fmul reassoc nnan nsz arcp double %i.jj, f0x400921FB54442D18
  %i.jl = fmul reassoc nsz arcp double %i.jk, %i.iw
  %i.jm = fptrunc reassoc nsz arcp double %i.jl to float
  %i.jn = tail call reassoc nsz arcp float @cosf(float noundef %i.jm) #6, !inline_history !61
  %i.jo = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.jn, float -5.000000e-01, float 5.000000e-01)
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv243
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  store float %i.jo, ptr %i.jq, align 4, !tbaa !10
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %i.jr = add nsw i32 %.1.i82155, -2
  %i.js = trunc nuw i64 %indvars.iv.next244.1 to i32 ; 2 uses
  %i.jt = icmp sgt i32 %invariant.smin153, %i.js
  br i1 %i.jt, label %bb.l, label %.preheader88, !llvm.loop !54

bb.m:                                             ; preds = %bb.i
  %i.ju = fmul reassoc nnan nsz arcp float %2, 5.000000e-01
  %i.jv = sitofp reassoc nsz arcp i32 %i.f to float
  %i.jw = fmul reassoc nsz arcp float %i.ju, %i.jv
  %i.jx = fptosi float %i.jw to i32               ; 7 uses
  %invariant.smin160 = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %1) ; 3 uses
  %i.jy = icmp sgt i32 %invariant.smin160, 0
  br i1 %i.jy, label %.lr.ph162.preheader, label %.preheader87

.lr.ph162.preheader:                              ; preds = %bb.m
  %i.jz = zext nneg i32 %invariant.smin160 to i64
  %i.ka = shl nuw nsw i64 %i.jz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.ka, i1 false), !tbaa !10
  br label %.preheader87

.preheader87:                                     ; preds = %.lr.ph162.preheader, %bb.m
  %.066.lcssa = phi i32 [ 0, %bb.m ], [ %invariant.smin160, %.lr.ph162.preheader ] ; 3 uses
  %i.kb = add nsw i32 %i.jx, %i.c
  %invariant.smin164 = tail call i32 @llvm.smin.i32(i32 %i.kb, i32 %1) ; 4 uses
  %i.kc = icmp slt i32 %.066.lcssa, %invariant.smin164
  br i1 %i.kc, label %.lr.ph167, label %.preheader86

.lr.ph167:                                        ; preds = %.preheader87
  %i.kd = sitofp reassoc nsz arcp i32 %i.jx to double ; 3 uses
  %i.ke = zext nneg i32 %.066.lcssa to i64        ; 4 uses
  %wide.trip.count258 = zext nneg i32 %invariant.smin164 to i64 ; 2 uses
  %i.kf = sub nsw i64 %wide.trip.count258, %i.ke  ; 3 uses
  %xtraiter362 = and i64 %i.kf, 1
  %i.kg = add nsw i64 %wide.trip.count258, -1
  %i.kh = icmp eq i64 %i.kg, %i.ke
  br i1 %i.kh, label %.epil.preheader361, label %.lr.ph167.new

.lr.ph167.new:                                    ; preds = %.lr.ph167
  %unroll_iter365 = and i64 %i.kf, -2
  %i.ki = fdiv reassoc nsz arcp double 1.000000e+00, %i.kd
  %i.kj = fdiv reassoc nsz arcp double 1.000000e+00, %i.kd
  br label %bb.n

.preheader86.loopexit.unr-lcssa:                  ; preds = %bb.n
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %.preheader86, label %.epil.preheader361

.epil.preheader361:                               ; preds = %.preheader86.loopexit.unr-lcssa, %.lr.ph167
  %indvars.iv255.epil.init = phi i64 [ %i.ke, %.lr.ph167 ], [ %indvars.iv.next256.1, %.preheader86.loopexit.unr-lcssa ]
  %.0166.epil.init = phi i32 [ 1, %.lr.ph167 ], [ %i.lt, %.preheader86.loopexit.unr-lcssa ]
  %lcmp.mod364 = trunc i64 %i.kf to i1
  tail call void @llvm.assume(i1 %lcmp.mod364)
  %i.kk = uitofp nneg i32 %.0166.epil.init to double
  %i.kl = fmul reassoc nnan nsz arcp double %i.kk, f0x400921FB54442D18
  %i.km = fdiv reassoc nsz arcp double %i.kl, %i.kd
  %i.kn = fptrunc reassoc nsz arcp double %i.km to float
  %i.ko = tail call reassoc nsz arcp float @cosf(float noundef %i.kn) #6
  %i.kp = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ko, float -5.000000e-01, float 5.000000e-01)
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv255.epil.init
  store float %i.kp, ptr %i.kq, align 4, !tbaa !10
  br label %.preheader86

.preheader86:                                     ; preds = %.epil.preheader361, %.preheader86.loopexit.unr-lcssa, %.preheader87
  %.167.lcssa = phi i32 [ %.066.lcssa, %.preheader87 ], [ %invariant.smin164, %.preheader86.loopexit.unr-lcssa ], [ %invariant.smin164, %.epil.preheader361 ] ; 5 uses
  %i.kr = sub nsw i32 %i.e, %i.jx
  %invariant.smin169 = tail call i32 @llvm.smin.i32(i32 %i.kr, i32 %1) ; 3 uses
  %i.ks = icmp slt i32 %.167.lcssa, %invariant.smin169
  br i1 %i.ks, label %.lr.ph171.preheader, label %.preheader85

.lr.ph171.preheader:                              ; preds = %.preheader86
  %i.kt = zext nneg i32 %.167.lcssa to i64        ; 3 uses
  %i.ku = xor i32 %.167.lcssa, -1
  %i.kv = add i32 %invariant.smin169, %i.ku       ; 2 uses
  %i.kw = zext i32 %i.kv to i64
  %i.kx = add nuw nsw i64 %i.kw, 1                ; 2 uses
  %min.iters.check318 = icmp ult i32 %i.kv, 7
  br i1 %min.iters.check318, label %.lr.ph171.preheader327, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph171.preheader
  %n.vec320 = and i64 %i.kx, 8589934584           ; 4 uses
  %i.ky = add nuw nsw i64 %n.vec320, %i.kt
  %invariant.gep390 = getelementptr [4 x i8], ptr %0, i64 %i.kt
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next323, %vector.body321 ] ; 2 uses
  %gep391 = getelementptr [4 x i8], ptr %invariant.gep390, i64 %index322 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %gep391, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %gep391, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.kz, align 4, !tbaa !10
  %index.next323 = add nuw i64 %index322, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next323, %n.vec320
  br i1 %i.la, label %middle.block324, label %vector.body321, !llvm.loop !59

middle.block324:                                  ; preds = %vector.body321
  %i.lb = trunc i64 %n.vec320 to i32
  %i.lc = add i32 %.167.lcssa, %i.lb
  %cmp.n325 = icmp eq i64 %i.kx, %n.vec320
  br i1 %cmp.n325, label %.preheader85, label %.lr.ph171.preheader327

.lr.ph171.preheader327:                           ; preds = %.lr.ph171.preheader, %middle.block324
  %indvars.iv260.ph = phi i64 [ %i.kt, %.lr.ph171.preheader ], [ %i.ky, %middle.block324 ]
  br label %.lr.ph171

bb.n:                                             ; preds = %bb.n, %.lr.ph167.new
  %indvars.iv255 = phi i64 [ %i.ke, %.lr.ph167.new ], [ %indvars.iv.next256.1, %bb.n ] ; 3 uses
  %.0166 = phi i32 [ 1, %.lr.ph167.new ], [ %i.lt, %bb.n ] ; 3 uses
  %niter366 = phi i64 [ 0, %.lr.ph167.new ], [ %niter366.next.1, %bb.n ]
  %i.ld = uitofp nneg i32 %.0166 to double
  %i.le = fmul reassoc nnan nsz arcp double %i.ld, f0x400921FB54442D18
  %i.lf = fmul reassoc nsz arcp double %i.le, %i.ki
  %i.lg = fptrunc reassoc nsz arcp double %i.lf to float
  %i.lh = tail call reassoc nsz arcp float @cosf(float noundef %i.lg) #6
  %i.li = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.lh, float -5.000000e-01, float 5.000000e-01)
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv255
  store float %i.li, ptr %i.lj, align 4, !tbaa !10
  %i.lk = add nuw nsw i32 %.0166, 1
  %i.ll = uitofp nneg i32 %i.lk to double
  %i.lm = fmul reassoc nnan nsz arcp double %i.ll, f0x400921FB54442D18
  %i.ln = fmul reassoc nsz arcp double %i.lm, %i.kj
  %i.lo = fptrunc reassoc nsz arcp double %i.ln to float
  %i.lp = tail call reassoc nsz arcp float @cosf(float noundef %i.lo) #6
  %i.lq = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.lp, float -5.000000e-01, float 5.000000e-01)
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv255
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  store float %i.lq, ptr %i.ls, align 4, !tbaa !10
  %indvars.iv.next256.1 = add nuw nsw i64 %indvars.iv255, 2 ; 2 uses
  %i.lt = add nuw nsw i32 %.0166, 2               ; 2 uses
  %niter366.next.1 = add i64 %niter366, 2         ; 2 uses
  %niter366.ncmp.1 = icmp eq i64 %niter366.next.1, %unroll_iter365
  br i1 %niter366.ncmp.1, label %.preheader86.loopexit.unr-lcssa, label %bb.n, !llvm.loop !52

.preheader85:                                     ; preds = %.lr.ph171, %middle.block324, %.preheader86
  %.2.lcssa = phi i32 [ %.167.lcssa, %.preheader86 ], [ %i.lc, %middle.block324 ], [ %i.ml, %.lr.ph171 ] ; 5 uses
  %invariant.smin173 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %1) ; 4 uses
  %i.lu = icmp slt i32 %.2.lcssa, %invariant.smin173
  br i1 %i.lu, label %.lr.ph176, label %.preheader

.lr.ph176:                                        ; preds = %.preheader85
  %i.lv = sitofp reassoc nsz arcp i32 %i.jx to double ; 3 uses
  %i.lw = zext nneg i32 %.2.lcssa to i64          ; 3 uses
  %i.lx = sub i32 %invariant.smin173, %.2.lcssa
  %.neg373 = add i32 %.2.lcssa, 1
  %xtraiter369 = and i32 %i.lx, 1
  %lcmp.mod370.not = icmp eq i32 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %.prol.loopexit368, label %.prol.loopexit368.unr-lcssa

.prol.loopexit368.unr-lcssa:                      ; preds = %.lr.ph176
  %i.ly = sitofp reassoc nsz arcp i32 %i.jx to double
  %i.lz = fmul reassoc nnan nsz arcp double %i.ly, f0x400921FB54442D18
  %i.ma = fdiv reassoc nsz arcp double %i.lz, %i.lv
  %i.mb = fptrunc reassoc nsz arcp double %i.ma to float
  %i.mc = tail call reassoc nsz arcp float @cosf(float noundef %i.mb) #6
  %i.md = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.mc, float -5.000000e-01, float 5.000000e-01)
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lw
  store float %i.md, ptr %i.me, align 4, !tbaa !10
  %indvars.iv.next264.prol = add nuw nsw i64 %i.lw, 1 ; 2 uses
  %i.mf = add nsw i32 %i.jx, -1
  %i.mg = trunc nuw i64 %indvars.iv.next264.prol to i32
  br label %.prol.loopexit368

.prol.loopexit368:                                ; preds = %.prol.loopexit368.unr-lcssa, %.lr.ph176
  %indvars.iv263.unr = phi i64 [ %i.lw, %.lr.ph176 ], [ %indvars.iv.next264.prol, %.prol.loopexit368.unr-lcssa ]
  %.1175.unr = phi i32 [ %i.jx, %.lr.ph176 ], [ %i.mf, %.prol.loopexit368.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph176 ], [ %i.mg, %.prol.loopexit368.unr-lcssa ]
  %i.mh = icmp eq i32 %invariant.smin173, %.neg373
  br i1 %i.mh, label %.preheader, label %.lr.ph176.new

.lr.ph176.new:                                    ; preds = %.prol.loopexit368
  %i.mi = fdiv reassoc nsz arcp double 1.000000e+00, %i.lv
  %i.mj = fdiv reassoc nsz arcp double 1.000000e+00, %i.lv
  br label %bb.o

.lr.ph171:                                        ; preds = %.lr.ph171.preheader327, %.lr.ph171
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %.lr.ph171 ], [ %indvars.iv260.ph, %.lr.ph171.preheader327 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv260
  store float 1.000000e+00, ptr %i.mk, align 4, !tbaa !10
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %i.ml = trunc nuw i64 %indvars.iv.next261 to i32 ; 2 uses
  %i.mm = icmp sgt i32 %invariant.smin169, %i.ml
  br i1 %i.mm, label %.lr.ph171, label %.preheader85, !llvm.loop !60

.preheader:                                       ; preds = %.prol.loopexit368, %bb.o, %.preheader85
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader85 ], [ %.lcssa.unr, %.prol.loopexit368 ], [ %i.nf, %bb.o ] ; 2 uses
  %i.mn = icmp slt i32 %.3.lcssa, %1
  br i1 %i.mn, label %FLAC__window_partial_tukey.exit.sink.split, label %FLAC__window_partial_tukey.exit

bb.o:                                             ; preds = %bb.o, %.lr.ph176.new
  %indvars.iv263 = phi i64 [ %indvars.iv263.unr, %.lr.ph176.new ], [ %indvars.iv.next264.1, %bb.o ] ; 3 uses
  %.1175 = phi i32 [ %.1175.unr, %.lr.ph176.new ], [ %i.ne, %bb.o ] ; 3 uses
  %i.mo = sitofp reassoc nsz arcp i32 %.1175 to double
  %i.mp = fmul reassoc nnan nsz arcp double %i.mo, f0x400921FB54442D18
  %i.mq = fmul reassoc nsz arcp double %i.mp, %i.mi
  %i.mr = fptrunc reassoc nsz arcp double %i.mq to float
  %i.ms = tail call reassoc nsz arcp float @cosf(float noundef %i.mr) #6
  %i.mt = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ms, float -5.000000e-01, float 5.000000e-01)
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv263
  store float %i.mt, ptr %i.mu, align 4, !tbaa !10
  %i.mv = add nsw i32 %.1175, -1
  %i.mw = sitofp reassoc nsz arcp i32 %i.mv to double
  %i.mx = fmul reassoc nnan nsz arcp double %i.mw, f0x400921FB54442D18
  %i.my = fmul reassoc nsz arcp double %i.mx, %i.mj
  %i.mz = fptrunc reassoc nsz arcp double %i.my to float
  %i.na = tail call reassoc nsz arcp float @cosf(float noundef %i.mz) #6
  %i.nb = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.na, float -5.000000e-01, float 5.000000e-01)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv263
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store float %i.nb, ptr %i.nd, align 4, !tbaa !10
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %i.ne = add nsw i32 %.1175, -2
  %i.nf = trunc nuw i64 %indvars.iv.next264.1 to i32 ; 2 uses
  %i.ng = icmp sgt i32 %invariant.smin173, %i.nf
  br i1 %i.ng, label %bb.o, label %.preheader, !llvm.loop !54

FLAC__window_partial_tukey.exit.sink.split:       ; preds = %.preheader, %.preheader88, %.preheader93, %.preheader98
  %.3.i.lcssa.sink289 = phi i32 [ %.3.i81.lcssa, %.preheader88 ], [ %.3.i.lcssa, %.preheader98 ], [ %.3.i73.lcssa, %.preheader93 ], [ %.3.lcssa, %.preheader ] ; 2 uses
  %i.nh = zext nneg i32 %.3.i.lcssa.sink289 to i64
  %i.ni = shl nuw nsw i64 %i.nh, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.ni
  %i.nj = xor i32 %.3.i.lcssa.sink289, -1
  %i.nk = add nsw i32 %1, %i.nj
  %i.nl = zext i32 %i.nk to i64
  %i.nm = shl nuw nsw i64 %i.nl, 2
  %i.nn = add nuw nsw i64 %i.nm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.nn, i1 false), !tbaa !10
  br label %FLAC__window_partial_tukey.exit

FLAC__window_partial_tukey.exit:                  ; preds = %FLAC__window_partial_tukey.exit.sink.split, %.preheader98, %.preheader93, %.preheader88, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_punchout_tukey(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr96 = phi float [ %2, %bb.a ], [ %.tr96.be, %tailrecurse.backedge ] ; 5 uses
  %i.a = fcmp reassoc nsz arcp ugt float %.tr96, 0.000000e+00
  br i1 %i.a, label %bb.b, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.b, %bb.c
  %.tr96.be = phi float [ f0x3F733333, %bb.b ], [ 5.000000e-02, %tailrecurse ], [ 5.000000e-01, %bb.c ]
  br label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  %i.b = fcmp reassoc nsz arcp ult float %.tr96, 1.000000e+00
  br i1 %i.b, label %bb.c, label %tailrecurse.backedge

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp reassoc nsz arcp ogt float %.tr96, 0.000000e+00
  %i.d = fcmp reassoc nsz arcp olt float %.tr96, 1.000000e+00
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %tailrecurse.backedge

bb.d:                                             ; preds = %bb.c
  %i.e = sitofp reassoc nsz arcp i32 %1 to float  ; 2 uses
  %i.f = fmul reassoc nsz arcp float %3, %i.e
  %i.g = fptosi float %i.f to i32                 ; 3 uses
  %i.h = fmul reassoc nsz arcp float %4, %i.e
  %i.i = fptosi float %i.h to i32                 ; 3 uses
  %i.j = fmul reassoc nnan nsz arcp float %.tr96, 5.000000e-01 ; 2 uses
  %i.k = sitofp reassoc nsz arcp i32 %i.g to float
  %i.l = fmul reassoc nnan nsz arcp float %i.j, %i.k
  %i.m = fptosi float %i.l to i32                 ; 7 uses
  %i.n = sub nsw i32 %1, %i.i
  %i.o = sitofp reassoc nsz arcp i32 %i.n to float
  %i.p = fmul reassoc nnan nsz arcp float %i.j, %i.o
  %i.q = fptosi float %i.p to i32                 ; 7 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %1) ; 6 uses
  %i.r = icmp sgt i32 %invariant.smin, 0
  br i1 %i.r, label %.lr.ph, label %.preheader103

.lr.ph:                                           ; preds = %bb.d
  %i.s = sitofp reassoc nsz arcp i32 %i.m to double ; 3 uses
  %wide.trip.count = zext nneg i32 %invariant.smin to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.t = icmp eq i32 %invariant.smin, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.u = fdiv reassoc nsz arcp double 1.000000e+00, %i.s
  %i.v = fdiv reassoc nsz arcp double 1.000000e+00, %i.s
  br label %bb.e

.preheader103.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader103, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader103.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader103.loopexit.unr-lcssa ]
  %.0109.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.ba, %.preheader103.loopexit.unr-lcssa ]
  %lcmp.mod185 = trunc i32 %invariant.smin to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.w = uitofp nneg i32 %.0109.epil.init to double
  %i.x = fmul reassoc nnan nsz arcp double %i.w, f0x400921FB54442D18
  %i.y = fdiv reassoc nsz arcp double %i.x, %i.s
  %i.z = fptrunc reassoc nsz arcp double %i.y to float
  %i.aa = tail call reassoc nsz arcp float @cosf(float noundef %i.z) #6
  %i.ab = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.aa, float -5.000000e-01, float 5.000000e-01)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  br label %.preheader103

.preheader103:                                    ; preds = %.epil.preheader, %.preheader103.loopexit.unr-lcssa, %bb.d
  %.089.lcssa = phi i32 [ 0, %bb.d ], [ %invariant.smin, %.preheader103.loopexit.unr-lcssa ], [ %invariant.smin, %.epil.preheader ] ; 3 uses
  %i.ad = sub nsw i32 %i.g, %i.m
  %invariant.smin110 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %1) ; 4 uses
  %i.ae = icmp slt i32 %.089.lcssa, %invariant.smin110
  br i1 %i.ae, label %.lr.ph112.preheader, label %.preheader102

.lr.ph112.preheader:                              ; preds = %.preheader103
  %i.af = zext nneg i32 %.089.lcssa to i64        ; 4 uses
  %wide.trip.count144 = zext nneg i32 %invariant.smin110 to i64 ; 2 uses
  %i.ag = sub nsw i64 %wide.trip.count144, %i.af  ; 3 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph112.preheader184, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph112.preheader
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %i.ah = add nsw i64 %n.vec, %i.af
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %gep, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.ai, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.preheader102, label %.lr.ph112.preheader184

.lr.ph112.preheader184:                           ; preds = %.lr.ph112.preheader, %middle.block
  %indvars.iv141.ph = phi i64 [ %i.af, %.lr.ph112.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph112

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.0109 = phi i32 [ 1, %.lr.ph.new ], [ %i.ba, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.ak = uitofp nneg i32 %.0109 to double
  %i.al = fmul reassoc nnan nsz arcp double %i.ak, f0x400921FB54442D18
  %i.am = fmul reassoc nsz arcp double %i.al, %i.u
  %i.an = fptrunc reassoc nsz arcp double %i.am to float
  %i.ao = tail call reassoc nsz arcp float @cosf(float noundef %i.an) #6
  %i.ap = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ao, float -5.000000e-01, float 5.000000e-01)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = add nuw nsw i32 %.0109, 1
  %i.as = uitofp nneg i32 %i.ar to double
  %i.at = fmul reassoc nnan nsz arcp double %i.as, f0x400921FB54442D18
  %i.au = fmul reassoc nsz arcp double %i.at, %i.v
  %i.av = fptrunc reassoc nsz arcp double %i.au to float
  %i.aw = tail call reassoc nsz arcp float @cosf(float noundef %i.av) #6
  %i.ax = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.aw, float -5.000000e-01, float 5.000000e-01)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store float %i.ax, ptr %i.az, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ba = add nuw nsw i32 %.0109, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader103.loopexit.unr-lcssa, label %bb.e, !llvm.loop !63

.preheader102:                                    ; preds = %.lr.ph112, %middle.block, %.preheader103
  %.190.lcssa = phi i32 [ %.089.lcssa, %.preheader103 ], [ %invariant.smin110, %middle.block ], [ %invariant.smin110, %.lr.ph112 ] ; 5 uses
  %invariant.smin114 = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %1) ; 4 uses
  %i.bb = icmp slt i32 %.190.lcssa, %invariant.smin114
  br i1 %i.bb, label %.lr.ph117, label %.preheader101

.lr.ph117:                                        ; preds = %.preheader102
  %i.bc = sitofp reassoc nsz arcp i32 %i.m to double ; 3 uses
  %i.bd = zext nneg i32 %.190.lcssa to i64        ; 3 uses
  %i.be = sub i32 %invariant.smin114, %.190.lcssa
  %.neg = add i32 %.190.lcssa, 1
  %xtraiter186 = and i32 %i.be, 1
  %lcmp.mod187.not = icmp eq i32 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph117
  %i.bf = sitofp reassoc nsz arcp i32 %i.m to double
  %i.bg = fmul reassoc nnan nsz arcp double %i.bf, f0x400921FB54442D18
  %i.bh = fdiv reassoc nsz arcp double %i.bg, %i.bc
  %i.bi = fptrunc reassoc nsz arcp double %i.bh to float
  %i.bj = tail call reassoc nsz arcp float @cosf(float noundef %i.bi) #6
  %i.bk = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.bj, float -5.000000e-01, float 5.000000e-01)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bd
  store float %i.bk, ptr %i.bl, align 4, !tbaa !10
  %indvars.iv.next147.prol = add nuw nsw i64 %i.bd, 1 ; 2 uses
  %i.bm = add nsw i32 %i.m, -1
  %i.bn = trunc nuw i64 %indvars.iv.next147.prol to i32
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph117
  %indvars.iv146.unr = phi i64 [ %i.bd, %.lr.ph117 ], [ %indvars.iv.next147.prol, %.prol.loopexit.unr-lcssa ]
  %.1116.unr = phi i32 [ %i.m, %.lr.ph117 ], [ %i.bm, %.prol.loopexit.unr-lcssa ]
  %.lcssa183.unr = phi i32 [ poison, %.lr.ph117 ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %i.bo = icmp eq i32 %invariant.smin114, %.neg
  br i1 %i.bo, label %.preheader101, label %.lr.ph117.new

.lr.ph117.new:                                    ; preds = %.prol.loopexit
  %i.bp = fdiv reassoc nsz arcp double 1.000000e+00, %i.bc
  %i.bq = fdiv reassoc nsz arcp double 1.000000e+00, %i.bc
  br label %bb.f

.lr.ph112:                                        ; preds = %.lr.ph112.preheader184, %.lr.ph112
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph112 ], [ %indvars.iv141.ph, %.lr.ph112.preheader184 ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv141
  store float 1.000000e+00, ptr %i.br, align 4, !tbaa !10
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.preheader102, label %.lr.ph112, !llvm.loop !64

.preheader101:                                    ; preds = %.prol.loopexit, %bb.f, %.preheader102
  %.291.lcssa = phi i32 [ %.190.lcssa, %.preheader102 ], [ %.lcssa183.unr, %.prol.loopexit ], [ %i.cv, %bb.f ] ; 6 uses
  %invariant.smin119 = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %1) ; 5 uses
  %i.bs = icmp slt i32 %.291.lcssa, %invariant.smin119
  br i1 %i.bs, label %.lr.ph121.preheader, label %.preheader100

.lr.ph121.preheader:                              ; preds = %.preheader101
  %i.bt = zext nneg i32 %.291.lcssa to i64        ; 3 uses
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.bu
  %i.bv = xor i32 %.291.lcssa, -1
  %i.bw = add nsw i32 %invariant.smin119, %i.bv
  %i.bx = zext i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bz, i1 false), !tbaa !10
  %i.ca = sub i32 %invariant.smin119, %.291.lcssa
  %xtraiter188 = and i32 %i.ca, 7                 ; 2 uses
  %lcmp.mod189.not = icmp eq i32 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol

.lr.ph121.prol:                                   ; preds = %.lr.ph121.preheader, %.lr.ph121.prol
  %indvars.iv149.prol = phi i64 [ %indvars.iv.next150.prol, %.lr.ph121.prol ], [ %i.bt, %.lr.ph121.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph121.prol ], [ 0, %.lr.ph121.preheader ]
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.prol, 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter188
  br i1 %prol.iter.cmp.not, label %.lr.ph121.prol.loopexit.unr-lcssa, label %.lr.ph121.prol, !llvm.loop !65

.lr.ph121.prol.loopexit.unr-lcssa:                ; preds = %.lr.ph121.prol
  %i.cb = trunc nuw i64 %indvars.iv.next150.prol to i32
  br label %.lr.ph121.prol.loopexit

.lr.ph121.prol.loopexit:                          ; preds = %.lr.ph121.prol.loopexit.unr-lcssa, %.lr.ph121.preheader
  %indvars.iv149.unr = phi i64 [ %i.bt, %.lr.ph121.preheader ], [ %indvars.iv.next150.prol, %.lr.ph121.prol.loopexit.unr-lcssa ]
  %.lcssa182.unr = phi i32 [ poison, %.lr.ph121.preheader ], [ %i.cb, %.lr.ph121.prol.loopexit.unr-lcssa ]
  %i.cc = sub i32 %.291.lcssa, %invariant.smin119
  %i.cd = icmp ugt i32 %i.cc, -8
  br i1 %i.cd, label %.preheader100, label %.lr.ph121

bb.f:                                             ; preds = %bb.f, %.lr.ph117.new
  %indvars.iv146 = phi i64 [ %indvars.iv146.unr, %.lr.ph117.new ], [ %indvars.iv.next147.1, %bb.f ] ; 3 uses
  %.1116 = phi i32 [ %.1116.unr, %.lr.ph117.new ], [ %i.cu, %bb.f ] ; 3 uses
  %i.ce = sitofp reassoc nsz arcp i32 %.1116 to double
  %i.cf = fmul reassoc nnan nsz arcp double %i.ce, f0x400921FB54442D18
  %i.cg = fmul reassoc nsz arcp double %i.cf, %i.bp
  %i.ch = fptrunc reassoc nsz arcp double %i.cg to float
  %i.ci = tail call reassoc nsz arcp float @cosf(float noundef %i.ch) #6
  %i.cj = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ci, float -5.000000e-01, float 5.000000e-01)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv146
  store float %i.cj, ptr %i.ck, align 4, !tbaa !10
  %i.cl = add nsw i32 %.1116, -1
  %i.cm = sitofp reassoc nsz arcp i32 %i.cl to double
  %i.cn = fmul reassoc nnan nsz arcp double %i.cm, f0x400921FB54442D18
  %i.co = fmul reassoc nsz arcp double %i.cn, %i.bq
  %i.cp = fptrunc reassoc nsz arcp double %i.co to float
  %i.cq = tail call reassoc nsz arcp float @cosf(float noundef %i.cp) #6
  %i.cr = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.cq, float -5.000000e-01, float 5.000000e-01)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv146
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store float %i.cr, ptr %i.ct, align 4, !tbaa !10
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.cu = add nsw i32 %.1116, -2
  %i.cv = trunc nuw i64 %indvars.iv.next147.1 to i32 ; 2 uses
  %i.cw = icmp sgt i32 %invariant.smin114, %i.cv
  br i1 %i.cw, label %bb.f, label %.preheader101, !llvm.loop !66

.preheader100:                                    ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121, %.preheader101
  %.392.lcssa = phi i32 [ %.291.lcssa, %.preheader101 ], [ %.lcssa182.unr, %.lr.ph121.prol.loopexit ], [ %i.df, %.lr.ph121 ] ; 5 uses
  %i.cx = add nsw i32 %i.q, %i.i
  %invariant.smin123 = tail call i32 @llvm.smin.i32(i32 %i.cx, i32 %1) ; 3 uses
  %i.cy = icmp slt i32 %.392.lcssa, %invariant.smin123
  br i1 %i.cy, label %.lr.ph126, label %.preheader99

.lr.ph126:                                        ; preds = %.preheader100
  %i.cz = sitofp reassoc nsz arcp i32 %i.q to double ; 3 uses
  %i.da = zext nneg i32 %.392.lcssa to i64        ; 2 uses
  %i.db = sub i32 %invariant.smin123, %.392.lcssa ; 3 uses
  %.neg202 = add i32 %.392.lcssa, 1
  %xtraiter191 = and i32 %i.db, 1
  %i.dc = icmp eq i32 %invariant.smin123, %.neg202
  br i1 %i.dc, label %.epil.preheader190, label %.lr.ph126.new

.lr.ph126.new:                                    ; preds = %.lr.ph126
  %unroll_iter195 = and i32 %i.db, -2
  %i.dd = fdiv reassoc nsz arcp double 1.000000e+00, %i.cz
  %i.de = fdiv reassoc nsz arcp double 1.000000e+00, %i.cz
  br label %bb.g

.lr.ph121:                                        ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.7, %.lr.ph121 ], [ %indvars.iv149.unr, %.lr.ph121.prol.loopexit ]
  %indvars.iv.next150.7 = add nuw nsw i64 %indvars.iv149, 8 ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv.next150.7 to i32 ; 2 uses
  %i.dg = icmp sgt i32 %invariant.smin119, %i.df
  br i1 %i.dg, label %.lr.ph121, label %.preheader100, !llvm.loop !67

.preheader99.loopexit.unr-lcssa:                  ; preds = %bb.g
  %lcmp.mod192.not = icmp eq i32 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.preheader99.loopexit, label %.epil.preheader190

.epil.preheader190:                               ; preds = %.preheader99.loopexit.unr-lcssa, %.lr.ph126
  %indvars.iv152.epil.init = phi i64 [ %i.da, %.lr.ph126 ], [ %indvars.iv.next153.1, %.preheader99.loopexit.unr-lcssa ] ; 2 uses
  %.2125.epil.init = phi i32 [ 1, %.lr.ph126 ], [ %i.er, %.preheader99.loopexit.unr-lcssa ]
  %lcmp.mod194 = trunc i32 %i.db to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.dh = uitofp nneg i32 %.2125.epil.init to double
  %i.di = fmul reassoc nnan nsz arcp double %i.dh, f0x400921FB54442D18
  %i.dj = fdiv reassoc nsz arcp double %i.di, %i.cz
  %i.dk = fptrunc reassoc nsz arcp double %i.dj to float
  %i.dl = tail call reassoc nsz arcp float @cosf(float noundef %i.dk) #6
  %i.dm = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.dl, float -5.000000e-01, float 5.000000e-01)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv152.epil.init
  store float %i.dm, ptr %i.dn, align 4, !tbaa !10
  %indvars.iv.next153.epil = add nuw nsw i64 %indvars.iv152.epil.init, 1
  br label %.preheader99.loopexit

.preheader99.loopexit:                            ; preds = %.preheader99.loopexit.unr-lcssa, %.epil.preheader190
  %indvars.iv.next153.lcssa = phi i64 [ %indvars.iv.next153.1, %.preheader99.loopexit.unr-lcssa ], [ %indvars.iv.next153.epil, %.epil.preheader190 ]
  %i.do = trunc nuw i64 %indvars.iv.next153.lcssa to i32
  br label %.preheader99

.preheader99:                                     ; preds = %.preheader99.loopexit, %.preheader100
  %.4.lcssa = phi i32 [ %.392.lcssa, %.preheader100 ], [ %i.do, %.preheader99.loopexit ] ; 5 uses
  %i.dp = sub nsw i32 %1, %i.q
  %invariant.smin128 = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 %1) ; 3 uses
  %i.dq = icmp slt i32 %.4.lcssa, %invariant.smin128
  br i1 %i.dq, label %.lr.ph130.preheader, label %.preheader

.lr.ph130.preheader:                              ; preds = %.preheader99
  %i.dr = zext i32 %.4.lcssa to i64               ; 3 uses
  %i.ds = xor i32 %.4.lcssa, -1
  %i.dt = add i32 %invariant.smin128, %i.ds       ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check172 = icmp ult i32 %i.dt, 7
  br i1 %min.iters.check172, label %.lr.ph130.preheader181, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph130.preheader
  %n.vec174 = and i64 %i.dv, 8589934584           ; 4 uses
  %i.dw = add nuw nsw i64 %n.vec174, %i.dr
  %invariant.gep207 = getelementptr [4 x i8], ptr %0, i64 %i.dr
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next177, %vector.body175 ] ; 2 uses
  %gep208 = getelementptr [4 x i8], ptr %invariant.gep207, i64 %index176 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %gep208, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %gep208, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.dx, align 4, !tbaa !10
  %index.next177 = add nuw i64 %index176, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next177, %n.vec174
  br i1 %i.dy, label %middle.block178, label %vector.body175, !llvm.loop !68

middle.block178:                                  ; preds = %vector.body175
  %i.dz = trunc i64 %n.vec174 to i32
  %i.ea = add i32 %.4.lcssa, %i.dz
  %cmp.n179 = icmp eq i64 %i.dv, %n.vec174
  br i1 %cmp.n179, label %.preheader, label %.lr.ph130.preheader181

.lr.ph130.preheader181:                           ; preds = %.lr.ph130.preheader, %middle.block178
  %indvars.iv156.ph = phi i64 [ %i.dr, %.lr.ph130.preheader ], [ %i.dw, %middle.block178 ]
  br label %.lr.ph130

bb.g:                                             ; preds = %bb.g, %.lr.ph126.new
  %indvars.iv152 = phi i64 [ %i.da, %.lr.ph126.new ], [ %indvars.iv.next153.1, %bb.g ] ; 3 uses
  %.2125 = phi i32 [ 1, %.lr.ph126.new ], [ %i.er, %bb.g ] ; 3 uses
  %niter196 = phi i32 [ 0, %.lr.ph126.new ], [ %niter196.next.1, %bb.g ]
  %i.eb = uitofp nneg i32 %.2125 to double
  %i.ec = fmul reassoc nnan nsz arcp double %i.eb, f0x400921FB54442D18
  %i.ed = fmul reassoc nsz arcp double %i.ec, %i.dd
  %i.ee = fptrunc reassoc nsz arcp double %i.ed to float
  %i.ef = tail call reassoc nsz arcp float @cosf(float noundef %i.ee) #6
  %i.eg = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ef, float -5.000000e-01, float 5.000000e-01)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv152
  store float %i.eg, ptr %i.eh, align 4, !tbaa !10
  %i.ei = add nuw i32 %.2125, 1
  %i.ej = uitofp nneg i32 %i.ei to double
  %i.ek = fmul reassoc nnan nsz arcp double %i.ej, f0x400921FB54442D18
  %i.el = fmul reassoc nsz arcp double %i.ek, %i.de
  %i.em = fptrunc reassoc nsz arcp double %i.el to float
  %i.en = tail call reassoc nsz arcp float @cosf(float noundef %i.em) #6
  %i.eo = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.en, float -5.000000e-01, float 5.000000e-01)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv152
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store float %i.eo, ptr %i.eq, align 4, !tbaa !10
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 3 uses
  %i.er = add nuw i32 %.2125, 2                   ; 2 uses
  %niter196.next.1 = add i32 %niter196, 2         ; 2 uses
  %niter196.ncmp.1 = icmp eq i32 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.preheader99.loopexit.unr-lcssa, label %bb.g, !llvm.loop !69

.preheader:                                       ; preds = %.lr.ph130, %middle.block178, %.preheader99
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader99 ], [ %i.ea, %middle.block178 ], [ %i.fj, %.lr.ph130 ] ; 2 uses
  %i.es = icmp slt i32 %.5.lcssa, %1
  br i1 %i.es, label %.lr.ph134, label %._crit_edge

.lr.ph134:                                        ; preds = %.preheader
  %i.et = sitofp reassoc nsz arcp i32 %i.q to double ; 3 uses
  %i.eu = sext i32 %.5.lcssa to i64               ; 5 uses
  %wide.trip.count162 = sext i32 %1 to i64        ; 3 uses
  %i.ev = sub nsw i64 %wide.trip.count162, %i.eu
  %xtraiter199 = and i64 %i.ev, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.prol.loopexit198, label %.prol.loopexit198.unr-lcssa

.prol.loopexit198.unr-lcssa:                      ; preds = %.lr.ph134
  %i.ew = sitofp reassoc nsz arcp i32 %i.q to double
  %i.ex = fmul reassoc nnan nsz arcp double %i.ew, f0x400921FB54442D18
  %i.ey = fdiv reassoc nsz arcp double %i.ex, %i.et
  %i.ez = fptrunc reassoc nsz arcp double %i.ey to float
  %i.fa = tail call reassoc nsz arcp float @cosf(float noundef %i.ez) #6
  %i.fb = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.fa, float -5.000000e-01, float 5.000000e-01)
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eu
  store float %i.fb, ptr %i.fc, align 4, !tbaa !10
  %indvars.iv.next160.prol = add nsw i64 %i.eu, 1
  %i.fd = add nsw i32 %i.q, -1
  br label %.prol.loopexit198

.prol.loopexit198:                                ; preds = %.prol.loopexit198.unr-lcssa, %.lr.ph134
  %indvars.iv159.unr = phi i64 [ %i.eu, %.lr.ph134 ], [ %indvars.iv.next160.prol, %.prol.loopexit198.unr-lcssa ]
  %.3133.unr = phi i32 [ %i.q, %.lr.ph134 ], [ %i.fd, %.prol.loopexit198.unr-lcssa ]
  %i.fe = add nsw i64 %wide.trip.count162, -1
  %i.ff = icmp eq i64 %i.fe, %i.eu
  br i1 %i.ff, label %._crit_edge, label %.lr.ph134.new

.lr.ph134.new:                                    ; preds = %.prol.loopexit198
  %i.fg = fdiv reassoc nsz arcp double 1.000000e+00, %i.et
  %i.fh = fdiv reassoc nsz arcp double 1.000000e+00, %i.et
  br label %bb.h

.lr.ph130:                                        ; preds = %.lr.ph130.preheader181, %.lr.ph130
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %.lr.ph130 ], [ %indvars.iv156.ph, %.lr.ph130.preheader181 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156
  store float 1.000000e+00, ptr %i.fi, align 4, !tbaa !10
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.fj = trunc nuw i64 %indvars.iv.next157 to i32 ; 2 uses
  %i.fk = icmp sgt i32 %invariant.smin128, %i.fj
  br i1 %i.fk, label %.lr.ph130, label %.preheader, !llvm.loop !70

bb.h:                                             ; preds = %bb.h, %.lr.ph134.new
  %indvars.iv159 = phi i64 [ %indvars.iv159.unr, %.lr.ph134.new ], [ %indvars.iv.next160.1, %bb.h ] ; 3 uses
  %.3133 = phi i32 [ %.3133.unr, %.lr.ph134.new ], [ %i.gb, %bb.h ] ; 3 uses
  %i.fl = sitofp reassoc nsz arcp i32 %.3133 to double
  %i.fm = fmul reassoc nnan nsz arcp double %i.fl, f0x400921FB54442D18
  %i.fn = fmul reassoc nsz arcp double %i.fm, %i.fg
  %i.fo = fptrunc reassoc nsz arcp double %i.fn to float
  %i.fp = tail call reassoc nsz arcp float @cosf(float noundef %i.fo) #6
  %i.fq = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.fp, float -5.000000e-01, float 5.000000e-01)
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv159
  store float %i.fq, ptr %i.fr, align 4, !tbaa !10
  %i.fs = add nsw i32 %.3133, -1
  %i.ft = sitofp reassoc nsz arcp i32 %i.fs to double
  %i.fu = fmul reassoc nnan nsz arcp double %i.ft, f0x400921FB54442D18
  %i.fv = fmul reassoc nsz arcp double %i.fu, %i.fh
  %i.fw = fptrunc reassoc nsz arcp double %i.fv to float
  %i.fx = tail call reassoc nsz arcp float @cosf(float noundef %i.fw) #6
  %i.fy = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.fx, float -5.000000e-01, float 5.000000e-01)
  %i.fz = getelementptr [4 x i8], ptr %0, i64 %indvars.iv159
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  store float %i.fy, ptr %i.ga, align 4, !tbaa !10
  %indvars.iv.next160.1 = add nsw i64 %indvars.iv159, 2 ; 2 uses
  %i.gb = add nsw i32 %.3133, -2
  %exitcond163.not.1 = icmp eq i64 %indvars.iv.next160.1, %wide.trip.count162
  br i1 %exitcond163.not.1, label %._crit_edge, label %bb.h, !llvm.loop !71

._crit_edge:                                      ; preds = %.prol.loopexit198, %bb.h, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define hidden void @FLAC__window_welch(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = sitofp reassoc nsz arcp i32 %i.a to double ; 3 uses
  %i.c = fmul reassoc nnan nsz arcp double %i.b, 5.000000e-01 ; 2 uses
  %.not.not11 = icmp sgt i32 %1, 0
  br i1 %.not.not11, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x double> poison, double %i.b, i64 0
  %broadcast.splat15 = shufflevector <4 x double> %broadcast.splatinsert14, <4 x double> poison, <4 x i32> zeroinitializer
  %i.d = fdiv reassoc nsz arcp <4 x double> splat (double 1.000000e+00), %broadcast.splat15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.e = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.f = fsub reassoc nnan nsz arcp <4 x double> %i.e, %broadcast.splat
  %i.g = fmul reassoc nnan nsz arcp <4 x double> %i.f, splat (double 2.000000e+00)
  %i.h = fmul reassoc nsz arcp <4 x double> %i.g, %i.d ; 2 uses
  %i.i = fneg reassoc nsz arcp <4 x double> %i.h
  %i.j = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.i, <4 x double> %i.h, <4 x double> splat (double 1.000000e+00))
  %i.k = fptrunc reassoc nsz arcp <4 x double> %i.j to <4 x float>
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x float> %i.k, ptr %i.l, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.n = fdiv reassoc nsz arcp double 1.000000e+00, %i.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %i.p = uitofp nneg i32 %i.o to double
  %i.q = fsub reassoc nnan nsz arcp double %i.p, %i.c
  %i.r = fmul reassoc nnan nsz arcp double %i.q, 2.000000e+00
  %i.s = fmul reassoc nsz arcp double %i.r, %i.n  ; 2 uses
  %i.t = fneg reassoc nsz arcp double %i.s
  %i.u = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.s, double 1.000000e+00)
  %i.v = fptrunc reassoc nsz arcp double %i.u to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.v, ptr %i.w, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12, !13}
!15 = distinct !{!15, !11, !12, !13}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !13, !12}
!18 = distinct !{!18, !11, !13, !12}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11, !13, !12}
!21 = distinct !{!21, !11, !13, !12}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !11, !13, !12}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{ptr @FLAC__window_gauss}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11, !12, !13}
!34 = distinct !{!34, !11, !13, !12}
!35 = distinct !{!35, !11, !12, !13}
!36 = distinct !{!36, !11, !12, !13}
!37 = distinct !{!37, !11, !12, !13}
!38 = distinct !{!38, !11, !13, !12}
!39 = distinct !{!39, !11, !13, !12}
!40 = distinct !{!40, !11, !12, !13}
!41 = distinct !{!41, !11, !13, !12}
!42 = distinct !{!42, !11, !13, !12}
!43 = distinct !{!43, !11, !12, !13}
!44 = distinct !{!44, !11, !13, !12}
!45 = distinct !{!45, !11, !12, !13}
!46 = distinct !{!46, !11, !13, !12}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11, !12, !13}
!49 = distinct !{!49, !11, !13, !12}
!50 = !{ptr @FLAC__window_tukey}
!51 = distinct !{!51, !11, !12, !13}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11, !13, !12}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11, !12, !13}
!56 = distinct !{!56, !11, !13, !12}
!57 = distinct !{!57, !11, !12, !13}
!58 = distinct !{!58, !11, !13, !12}
!59 = distinct !{!59, !11, !12, !13}
!60 = distinct !{!60, !11, !13, !12}
!61 = !{ptr @FLAC__window_partial_tukey}
!62 = distinct !{!62, !11, !12, !13}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11, !13, !12}
!65 = distinct !{!65, !72}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11, !12, !13}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11, !13, !12}
!71 = distinct !{!71, !11}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !11, !12, !13}
!74 = distinct !{!74, !11, !13, !12}
end_hunk_0
