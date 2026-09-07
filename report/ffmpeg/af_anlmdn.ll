Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_anlmdn?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"anlmdn\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Reduce broadband noise from stream using Non-Local Means.\00", align 1
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@ff_af_anlmdn = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @ff_audio_default_filterpad, ptr @outputs, ptr @anlmdn_class, i32 131076, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 6, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, { i32, [4 x i8] } { i32 8, [4 x i8] zeroinitializer }, i32 4194408, i32 0, ptr @process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"K:%d S:%d H:%d N:%d\0A\00", align 1
@anlmdn_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @anlmdn_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"set denoising strength\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"set patch duration\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"research\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"set research duration\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"set output mode\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"noise\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"set smooth factor\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@anlmdn_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, i32 8, i32 5, { double } { double 1.000000e-05 }, double 1.000000e-05, double 1.000000e+04, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.6, i32 8, i32 5, { double } { double 1.000000e-05 }, double 1.000000e-05, double 1.000000e+04, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 16, i32 16, %union.anon.2 { i64 2000 }, double 1.000000e+03, double 1.000000e+05, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.9, i32 16, i32 16, %union.anon.2 { i64 2000 }, double 1.000000e+03, double 1.000000e+05, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 24, i32 16, %union.anon.2 { i64 6000 }, double 2.000000e+03, double 3.000000e+05, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.12, i32 24, i32 16, %union.anon.2 { i64 6000 }, double 2.000000e+03, double 3.000000e+05, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 36, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 2.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.15, i32 36, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 2.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.14, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.16 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 32, i32 5, { double } { double 1.100000e+01 }, double 1.000000e+00, double 1.000000e+03, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.23, i32 32, i32 5, { double } { double 1.100000e+01 }, double 1.000000e+00, double 1.000000e+03, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ff_anlmdn_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @compute_distance_ssd_c, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @compute_cache_c, ptr %i.a, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal float @compute_distance_ssd_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %.neg = mul i64 %2, -4294967296
  %i.a = ashr exact i64 %.neg, 32                 ; 5 uses
  %.not11 = icmp slt i64 %2, %i.a
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %2, 1
  %i.c = sub i64 %i.b, %i.a
  %i.d = sub i64 %2, %i.a
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %.0912.prol = phi float [ %i.k, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.e = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.prol
  %i.f = load float, ptr %i.e, align 4, !tbaa !14
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.h = load float, ptr %i.g, align 4, !tbaa !14
  %i.i = fsub nsz float %i.f, %i.h                ; 2 uses
  %i.j = fmul nsz float %i.i, %i.i
  %i.k = fadd nsz float %.0912.prol, %i.j         ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !57

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.a, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0912.unr = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.lcssa.unr = phi float [ poison, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.d, 3
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.09.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.an, %.lr.ph ]
  ret float %.09.lcssa

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0912 = phi float [ %i.an, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.p = load float, ptr %i.o, align 4, !tbaa !14
  %i.q = fsub nsz float %i.n, %i.p                ; 2 uses
  %i.r = fmul nsz float %i.q, %i.q
  %i.s = fadd nsz float %.0912, %i.r
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = load float, ptr %i.t, align 4, !tbaa !14
  %i.v = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.w = load float, ptr %i.v, align 4, !tbaa !14
  %i.x = fsub nsz float %i.u, %i.w                ; 2 uses
  %i.y = fmul nsz float %i.x, %i.x
  %i.z = fadd nsz float %i.s, %i.y
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !14
  %i.ae = fsub nsz float %i.ab, %i.ad             ; 2 uses
  %i.af = fmul nsz float %i.ae, %i.ae
  %i.ag = fadd nsz float %i.z, %i.af
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !14
  %i.aj = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !14
  %i.al = fsub nsz float %i.ai, %i.ak             ; 2 uses
  %i.am = fmul nsz float %i.al, %i.al
  %i.an = fadd nsz float %i.ag, %i.am             ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %.not.not.3 = icmp sgt i64 %2, %indvars.iv.next.2
  br i1 %.not.not.3, label %.lr.ph, label %._crit_edge, !llvm.loop !58
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @compute_cache_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #2 {
bb.a:
  %i.a = add nsw i64 %5, %2                       ; 4 uses
  %sext = shl i64 %5, 32                          ; 2 uses
  %i.b = ashr exact i64 %sext, 32                 ; 6 uses
  %i.c = icmp sgt i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = xor i64 %3, -1                           ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %1, i64 %4   ; 2 uses
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr [4 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %3 ; 3 uses
  %i.i = getelementptr [4 x i8], ptr %1, i64 %3   ; 2 uses
  %i.j = add i64 %5, %2
  %i.k = sub i64 %i.j, %i.b                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl i64 %i.a, 2                          ; 2 uses
  %i.m = ashr exact i64 %sext, 30                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m
  %scevgep = getelementptr i8, ptr %0, i64 %i.n   ; 4 uses
  %i.o = shl i64 %3, 2                            ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  %scevgep29 = getelementptr i8, ptr %i.p, i64 %i.m
  %i.q = add i64 %i.a, %3
  %i.r = shl i64 %i.q, 2
  %scevgep30 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = shl i64 %4, 2                            ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 %i.o
  %scevgep31 = getelementptr i8, ptr %i.u, i64 4
  %i.v = add nsw i64 %i.m, -4
  %i.w = sub i64 %i.v, %i.o
  %scevgep32 = getelementptr i8, ptr %1, i64 %i.w
  %i.x = add i64 %i.l, -4
  %i.y = sub i64 %i.x, %i.o
  %scevgep33 = getelementptr i8, ptr %1, i64 %i.y
  %i.z = sub i64 %i.s, %i.o
  %scevgep34 = getelementptr i8, ptr %1, i64 %i.z
  %bound0 = icmp ult ptr %0, %scevgep30
  %bound1 = icmp ult ptr %scevgep29, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %0, %scevgep31
  %bound136 = icmp ult ptr %i.h, %scevgep
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  %bound038 = icmp ult ptr %0, %scevgep33
  %bound139 = icmp ult ptr %scevgep32, %scevgep
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  %bound042 = icmp ult ptr %0, %scevgep34
  %bound143 = icmp ult ptr %i.f, %scevgep
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  br i1 %conflict.rdx45, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, -8                       ; 4 uses
  %i.aa = add i64 %i.b, %n.vec
  %i.ab = load float, ptr %i.f, align 4, !tbaa !14, !alias.scope !68
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ac = load float, ptr %i.h, align 4, !tbaa !14, !alias.scope !69
  %broadcast.splatinsert49 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat50 = shufflevector <4 x float> %broadcast.splatinsert49, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = add i64 %i.b, %index                    ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.g, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %wide.load = load <4 x float>, ptr %i.ae, align 4, !tbaa !14, !alias.scope !70
  %wide.load46 = load <4 x float>, ptr %i.af, align 4, !tbaa !14, !alias.scope !70
  %i.ag = fsub nsz <4 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.ah = fsub nsz <4 x float> %broadcast.splat, %wide.load46 ; 2 uses
  %i.ai = fmul nsz <4 x float> %i.ag, %i.ag
  %i.aj = fmul nsz <4 x float> %i.ah, %i.ah
  %i.ak = getelementptr [4 x i8], ptr %i.i, i64 %i.ad ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load47 = load <4 x float>, ptr %i.ak, align 4, !tbaa !14, !alias.scope !71
  %wide.load48 = load <4 x float>, ptr %i.al, align 4, !tbaa !14, !alias.scope !71
  %i.am = fsub nsz <4 x float> %broadcast.splat50, %wide.load47 ; 2 uses
  %i.an = fsub nsz <4 x float> %broadcast.splat50, %wide.load48 ; 2 uses
  %i.ao = fmul nsz <4 x float> %i.am, %i.am
  %i.ap = fmul nsz <4 x float> %i.an, %i.an
  %i.aq = fsub nsz <4 x float> %i.ao, %i.ai
  %i.ar = fsub nsz <4 x float> %i.ap, %i.aj
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load51 = load <4 x float>, ptr %i.as, align 4, !tbaa !14, !alias.scope !72, !noalias !73
  %wide.load52 = load <4 x float>, ptr %i.at, align 4, !tbaa !14, !alias.scope !72, !noalias !73
  %i.au = fadd nsz <4 x float> %wide.load51, %i.aq
  %i.av = fadd nsz <4 x float> %wide.load52, %i.ar
  store <4 x float> %i.au, ptr %i.as, align 4, !tbaa !14, !alias.scope !72, !noalias !73
  store <4 x float> %i.av, ptr %i.at, align 4, !tbaa !14, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv23.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph ], [ %i.aa, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %scalar.ph ], [ %indvars.iv23.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ax = load float, ptr %i.f, align 4, !tbaa !14
  %i.ay = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.az = load float, ptr %i.ay, align 4, !tbaa !14
  %i.ba = fsub nsz float %i.ax, %i.az             ; 2 uses
  %i.bb = fmul nsz float %i.ba, %i.ba
  %i.bc = load float, ptr %i.h, align 4, !tbaa !14
  %i.bd = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.be = load float, ptr %i.bd, align 4, !tbaa !14
  %i.bf = fsub nsz float %i.bc, %i.be             ; 2 uses
  %i.bg = fmul nsz float %i.bf, %i.bf
  %i.bh = fsub nsz float %i.bg, %i.bb
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv23 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !14
  %i.bk = fadd nsz float %i.bj, %i.bh
  store float %i.bk, ptr %i.bi, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %i.bl = icmp sgt i64 %i.a, %indvars.iv.next
  br i1 %i.bl, label %scalar.ph, label %._crit_edge, !llvm.loop !67
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4194376
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4194384
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #10 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @config_filter(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.m = tail call i32 @ff_outlink_get_status(ptr noundef %i.j) #10 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.g, i32 noundef %i.m) #10
  br label %bb.q

.critedge:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4194360 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = call i32 @ff_inlink_consume_samples(ptr noundef %i.g, i32 noundef %i.o, i32 noundef %i.o, ptr noundef nonnull %i.b) #10 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.q, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not26 = icmp eq i32 %i.p, 0
  br i1 %.not26, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !75   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = call i32 @av_frame_is_writable(ptr noundef %i.r) #10
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ac = call ptr @ff_get_audio_buffer(ptr noundef %i.w, i32 noundef %i.ab) #10 ; 3 uses
  %.not15.i = icmp eq ptr %i.ac, null
  br i1 %.not15.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_0
