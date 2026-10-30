Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clahe?download=true
inline.NumInlined: 23
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [19 x i8] c"old local contrast\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"this module is deprecated. better use new local contrast module instead.\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"size of features to preserve\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"strength of the effect\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/darktable/darktable/src/iop/clahe.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #15
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 144
}

; Function Attrs: nounwind uwtable
define ptr @deprecated_msg() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #15
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [257 x i32], align 16             ; 19 uses
  %i.b = alloca [257 x i32], align 16             ; 113 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !29  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !103  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !104  ; 3 uses
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !105  ; 3 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.n = mul i64 %i.m, %i.l
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #16 ; 6 uses
  %i.p = icmp sgt i32 %i.k, 0
  br i1 %i.p, label %.lr.ph228, label %._crit_edge229.split

.lr.ph228:                                        ; preds = %bb.a
  %i.q = sext i32 %i.f to i64                     ; 2 uses
  %i.r = icmp sgt i32 %i.h, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge229.split

.lr.ph.preheader:                                 ; preds = %.lr.ph228
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph

._crit_edge229.split:                             ; preds = %._crit_edge, %.lr.ph228, %bb.a
  %i.s = load double, ptr %i.d, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !108
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load float, ptr %i.v, align 8, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !110
  %i.z = add nsw i64 %i.m, 60
  %i.aa = and i64 %i.z, -64
  %i.ab = tail call ptr @dt_alloc_aligned(i64 noundef %i.aa) #15 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !105
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %._crit_edge229.split
  %6 = fpext reassoc nsz arcp contract afn float %i.u to double
  %7 = fmul reassoc nsz arcp contract afn double %i.s, %6
  %8 = fpext reassoc nsz arcp contract afn float %i.w to double
  %9 = fdiv reassoc nsz arcp contract afn double %7, %8
  %10 = fptosi double %9 to i32                   ; 6 uses
  %i.ae = fptrunc reassoc nsz arcp contract afn double %i.y to float
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ag = add i32 %10, 1
  %i.ah = sub nsw i32 0, %10
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.ah to double
  %i.aj = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.ai, double 0.000000e+00)
  %i.ak = fptosi double %i.aj to i32              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %11 = sitofp reassoc nsz arcp contract afn i32 %10 to double
  %i.am = fmul reassoc nsz arcp contract afn float %i.ae, 3.906250e-03
  %i.an = sext i32 %i.f to i64                    ; 3 uses
  %i.ao = zext nneg i32 %i.ak to i64              ; 4 uses
  %i.ap = sext i32 %10 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 608 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 640 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 704 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 736 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 768 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 800 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 832 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 864 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 928 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 960 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 992 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 608 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 640 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 704 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 736 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 768 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 800 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 832 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 864 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 928 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 960 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 992 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 608 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 640 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 704 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 736 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 768 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 800 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 832 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 864 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 928 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 960 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 992 ; 2 uses
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.eh = mul nuw nsw i64 %indvars.iv, %i.i       ; 2 uses
  %i.ei = mul i64 %i.eh, %i.q
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.eh
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond278.not, label %._crit_edge229.split, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0192225 = phi i32 [ 0, %.lr.ph ], [ %i.fc, %bb.b ]
  %.0193224 = phi ptr [ %i.ek, %.lr.ph ], [ %i.fb, %bb.b ] ; 2 uses
  %.0194223 = phi ptr [ %i.ej, %.lr.ph ], [ %i.fa, %bb.b ] ; 4 uses
  %i.el = load float, ptr %.0194223, align 4, !tbaa !111 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0194223, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !111 ; 2 uses
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.el, float %i.en)
  %i.ep = getelementptr inbounds nuw i8, ptr %.0194223, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !111 ; 2 uses
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eo, float %i.eq) ; 3 uses
  %i.es = fcmp reassoc nsz arcp contract afn ult float %i.er, 0.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.er, 1.000000e+00
  %spec.select210 = select reassoc nsz arcp contract afn i1 %.inv, float %i.er, float 1.000000e+00
  %i.et = select reassoc nsz arcp contract afn i1 %i.es, float 0.000000e+00, float %spec.select210
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.el, float %i.en)
  %i.ev = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.eu, float %i.eq) ; 3 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %i.ev, 0.000000e+00
  %.inv212 = fcmp reassoc nsz arcp contract afn ole float %i.ev, 1.000000e+00
  %spec.select211 = select reassoc nsz arcp contract afn i1 %.inv212, float %i.ev, float 1.000000e+00
  %i.ex = select reassoc nsz arcp contract afn i1 %i.ew, float 0.000000e+00, float %spec.select211
  %i.ey = fadd reassoc nsz arcp contract afn float %i.et, %i.ex
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, 5.000000e-01
  store float %i.ez, ptr %.0193224, align 4, !tbaa !111
  %i.fa = getelementptr inbounds [4 x i8], ptr %.0194223, i64 %i.q
  %i.fb = getelementptr inbounds nuw i8, ptr %.0193224, i64 4
  %i.fc = add nuw nsw i32 %.0192225, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fc, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge272:                                   ; preds = %._crit_edge268, %._crit_edge229.split
  tail call void @free(ptr noundef %i.ab) #15
  tail call void @free(ptr noundef %i.o) #15
  ret void

bb.c:                                             ; preds = %.lr.ph271, %._crit_edge268
  %indvars.iv331 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next332, %._crit_edge268 ] ; 5 uses
  %i.fd = trunc i64 %indvars.iv331 to i32
  %i.fe = sub i32 %i.fd, %10
  %i.ff = sitofp reassoc nsz arcp contract afn i32 %i.fe to double
  %i.fg = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.ff, double 0.000000e+00)
  %i.fh = fptosi double %i.fg to i32              ; 4 uses
  %i.fi = load i32, ptr %i.af, align 4, !tbaa !105
  %12 = sitofp reassoc nsz arcp contract afn i32 %i.fi to double
  %i.fj = trunc nuw nsw i64 %indvars.iv331 to i32
  %i.fk = add i32 %i.ag, %i.fj
  %13 = sitofp reassoc nsz arcp contract afn i32 %i.fk to double
  %14 = tail call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %12, double %13)
  %15 = fptosi double %14 to i32                  ; 5 uses
  %i.fl = sub nsw i32 %15, %i.fh
  %i.fm = load i32, ptr %i.al, align 4, !tbaa !104 ; 2 uses
  %i.fn = add nsw i32 %i.fm, -1
  %16 = sitofp reassoc nsz arcp contract afn i32 %i.fn to double
  %17 = tail call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %16, double %11)
  %18 = fptosi double %17 to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.a, i8 0, i64 1028, i1 false)
  %19 = icmp sge i32 %i.fh, %15                   ; 3 uses
  br i1 %19, label %._crit_edge234.split, label %.preheader222.lr.ph

.preheader222.lr.ph:                              ; preds = %bb.c
  %20 = icmp slt i32 %i.ak, %18
  %i.fo = sext i32 %i.fm to i64
  br i1 %20, label %.preheader222.preheader, label %._crit_edge234.split

.preheader222.preheader:                          ; preds = %.preheader222.lr.ph
  %i.fp = zext nneg i32 %i.fh to i64
  %wide.trip.count287 = zext i32 %15 to i64
  %wide.trip.count282 = zext i32 %18 to i64       ; 3 uses
  %i.fq = sub nsw i64 %wide.trip.count282, %i.ao
  %xtraiter = and i64 %i.fq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fr = sub nsw i64 %i.ao, %wide.trip.count282
  %i.fs = icmp ugt i64 %i.fr, -4
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.preheader, %._crit_edge232
  %indvars.iv284 = phi i64 [ %i.fp, %.preheader222.preheader ], [ %indvars.iv.next285, %._crit_edge232 ] ; 2 uses
  %i.ft = mul nsw i64 %indvars.iv284, %i.fo
  %i.fu = getelementptr [4 x i8], ptr %i.o, i64 %i.ft ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader222, %.prol.preheader
  %indvars.iv279.prol = phi i64 [ %indvars.iv.next280.prol, %.prol.preheader ], [ %i.ao, %.preheader222 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader222 ]
  %i.fv = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv279.prol
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !111
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, 2.560000e+02
  %i.fy = fpext reassoc nsz arcp contract afn float %i.fx to double
  %i.fz = fadd reassoc nsz arcp contract afn double %i.fy, 5.000000e-01
  %i.ga = fptoui double %i.fz to i32
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !112
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !112
  %indvars.iv.next280.prol = add nuw nsw i64 %indvars.iv279.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !93

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader222
  %indvars.iv279.unr = phi i64 [ %i.ao, %.preheader222 ], [ %indvars.iv.next280.prol, %.prol.preheader ]
  br i1 %i.fs, label %._crit_edge232, label %.preheader222.new

._crit_edge234.split:                             ; preds = %._crit_edge232, %.preheader222.lr.ph, %bb.c
  %i.gf = load i32, ptr %i.g, align 4, !tbaa !104
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ab, i8 0, i64 %i.gh, i1 false)
  %i.gi = load i32, ptr %i.g, align 4, !tbaa !104 ; 4 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph259, label %._crit_edge268

.lr.ph259:                                        ; preds = %._crit_edge234.split
  %i.gk = load i32, ptr %i.al, align 4, !tbaa !104 ; 2 uses
  %i.gl = sext i32 %i.gk to i64                   ; 12 uses
  %i.gm = mul nsw i64 %indvars.iv331, %i.gl
  %i.gn = getelementptr [4 x i8], ptr %i.o, i64 %i.gm
  %21 = sitofp reassoc nsz arcp contract afn i32 %i.gk to double
  %i.go = zext nneg i32 %i.fh to i64              ; 6 uses
  %wide.trip.count324 = zext nneg i32 %i.gi to i64
  %wide.trip.count292 = zext i32 %15 to i64       ; 3 uses
  %wide.trip.count297 = zext i32 %15 to i64
  %i.gp = sub nsw i64 %wide.trip.count292, %i.go  ; 2 uses
  %i.gq = xor i64 %i.go, -1
  %i.gr = add nsw i64 %i.gq, %wide.trip.count292  ; 2 uses
  %xtraiter479 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  %i.gs = icmp ult i64 %i.gr, 3
  %xtraiter484 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  %i.gt = icmp ult i64 %i.gr, 3
  br label %bb.d

._crit_edge232:                                   ; preds = %.preheader222.new, %.prol.loopexit
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge234.split, label %.preheader222

.preheader222.new:                                ; preds = %.prol.loopexit, %.preheader222.new
  %indvars.iv279 = phi i64 [ %indvars.iv.next280.3, %.preheader222.new ], [ %indvars.iv279.unr, %.prol.loopexit ] ; 5 uses
  %i.gu = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv279
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !111
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, 2.560000e+02
  %i.gx = fpext reassoc nsz arcp contract afn float %i.gw to double
  %i.gy = fadd reassoc nsz arcp contract afn double %i.gx, 5.000000e-01
  %i.gz = fptoui double %i.gy to i32
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !112
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !112
  %i.he = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv279
  %i.hf = getelementptr i8, ptr %i.he, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !111
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, 2.560000e+02
  %i.hi = fpext reassoc nsz arcp contract afn float %i.hh to double
  %i.hj = fadd reassoc nsz arcp contract afn double %i.hi, 5.000000e-01
  %i.hk = fptoui double %i.hj to i32
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hl ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !112
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !112
  %i.hp = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv279
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !111
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, 2.560000e+02
  %i.ht = fpext reassoc nsz arcp contract afn float %i.hs to double
  %i.hu = fadd reassoc nsz arcp contract afn double %i.ht, 5.000000e-01
  %i.hv = fptoui double %i.hu to i32
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hw ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !112
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !112
  %i.ia = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv279
  %i.ib = getelementptr i8, ptr %i.ia, i64 12
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !111
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, 2.560000e+02
  %i.ie = fpext reassoc nsz arcp contract afn float %i.id to double
  %i.if = fadd reassoc nsz arcp contract afn double %i.ie, 5.000000e-01
  %i.ig = fptoui double %i.if to i32
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !112
  %i.ik = add nsw i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !112
  %indvars.iv.next280.3 = add nuw nsw i64 %indvars.iv279, 4 ; 2 uses
  %exitcond283.not.3 = icmp eq i64 %indvars.iv.next280.3, %wide.trip.count282
  br i1 %exitcond283.not.3, label %._crit_edge232, label %.preheader222.new

.lr.ph267.preheader:                              ; preds = %._crit_edge254
  %i.il = mul nsw i64 %indvars.iv331, %i.an
  %i.im = zext nneg i32 %i.gi to i64
  %i.in = mul i64 %i.il, %i.im                    ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.in
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.in
  %wide.trip.count329 = zext nneg i32 %i.gi to i64
  br label %.lr.ph267

bb.d:                                             ; preds = %.lr.ph259, %._crit_edge254
  %indvars.iv321 = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next322, %._crit_edge254 ] ; 4 uses
  %.0187256 = phi ptr [ %i.ab, %.lr.ph259 ], [ %i.wn, %._crit_edge254 ] ; 2 uses
  %i.iq = getelementptr [4 x i8], ptr %i.gn, i64 %indvars.iv321
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !111
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, 2.560000e+02
  %i.it = fpext reassoc nsz arcp contract afn float %i.is to double
  %i.iu = fadd reassoc nsz arcp contract afn double %i.it, 5.000000e-01
  %i.iv = fptoui double %i.iu to i32              ; 5 uses
  %i.iw = trunc i64 %indvars.iv321 to i32
  %i.ix = sub i32 %i.iw, %10
  %i.iy = sitofp reassoc nsz arcp contract afn i32 %i.ix to double
  %i.iz = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.iy, double 0.000000e+00)
  %i.ja = fptosi double %i.iz to i32              ; 3 uses
  %i.jb = add nsw i64 %indvars.iv321, %i.ap       ; 3 uses
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = add i32 %i.jc, 1
  %22 = sitofp reassoc nsz arcp contract afn i32 %i.jd to double
  %23 = tail call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %21, double %22)
  %24 = uitofp nsz nneg i32 %i.ja to double
  %25 = fsub reassoc nsz arcp contract afn double %23, %24
  %26 = fptosi double %25 to i32
  %i.je = mul nsw i32 %i.fl, %26
  %i.jf = sitofp reassoc nsz arcp contract afn i32 %i.je to float
  %i.jg = fmul reassoc nsz arcp contract afn float %i.am, %i.jf
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jg, 5.000000e-01
  %i.ji = fptosi float %i.jh to i32               ; 3 uses
  %.not = icmp eq i32 %i.ja, 0
  %brmerge = or i1 %.not, %19
  br i1 %brmerge, label %.loopexit221, label %.lr.ph236

.lr.ph236:                                        ; preds = %bb.d
  %i.jj = zext nneg i32 %i.ja to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.o, i64 %i.jj ; 5 uses
  br i1 %lcmp.mod480.not, label %.prol.loopexit478, label %.prol.preheader477

.prol.preheader477:                               ; preds = %.lr.ph236, %.prol.preheader477
  %indvars.iv289.prol = phi i64 [ %indvars.iv.next290.prol, %.prol.preheader477 ], [ %i.go, %.lr.ph236 ] ; 2 uses
  %prol.iter481 = phi i64 [ %prol.iter481.next, %.prol.preheader477 ], [ 0, %.lr.ph236 ]
  %i.jk = mul nsw i64 %indvars.iv289.prol, %i.gl
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jk
  %i.jl = getelementptr i8, ptr %gep.prol, i64 -4
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !111
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, 2.560000e+02
  %i.jo = fpext reassoc nsz arcp contract afn float %i.jn to double
  %i.jp = fadd reassoc nsz arcp contract afn double %i.jo, 5.000000e-01
  %i.jq = fptoui double %i.jp to i32
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jr ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !112
  %i.ju = add nsw i32 %i.jt, -1
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !112
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.prol, 1 ; 2 uses
  %prol.iter481.next = add i64 %prol.iter481, 1   ; 2 uses
  %prol.iter481.cmp.not = icmp eq i64 %prol.iter481.next, %xtraiter479
  br i1 %prol.iter481.cmp.not, label %.prol.loopexit478, label %.prol.preheader477, !llvm.loop !94

.prol.loopexit478:                                ; preds = %.prol.preheader477, %.lr.ph236
  %indvars.iv289.unr = phi i64 [ %i.go, %.lr.ph236 ], [ %indvars.iv.next290.prol, %.prol.preheader477 ]
  br i1 %i.gs, label %.loopexit221, label %.lr.ph236.new

.lr.ph236.new:                                    ; preds = %.prol.loopexit478, %.lr.ph236.new
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.3, %.lr.ph236.new ], [ %indvars.iv289.unr, %.prol.loopexit478 ] ; 5 uses
  %i.jv = mul nsw i64 %indvars.iv289, %i.gl
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jv
  %i.jw = getelementptr i8, ptr %gep, i64 -4
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !111
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, 2.560000e+02
  %i.jz = fpext reassoc nsz arcp contract afn float %i.jy to double
  %i.ka = fadd reassoc nsz arcp contract afn double %i.jz, 5.000000e-01
  %i.kb = fptoui double %i.ka to i32
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !112
  %i.kf = add nsw i32 %i.ke, -1
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !112
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1
  %i.kg = mul nsw i64 %indvars.iv.next290, %i.gl
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kg
  %i.kh = getelementptr i8, ptr %gep.1, i64 -4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !111
  %i.kj = fmul reassoc nsz arcp contract afn float %i.ki, 2.560000e+02
  %i.kk = fpext reassoc nsz arcp contract afn float %i.kj to double
  %i.kl = fadd reassoc nsz arcp contract afn double %i.kk, 5.000000e-01
  %i.km = fptoui double %i.kl to i32
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kn ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !112
  %i.kq = add nsw i32 %i.kp, -1
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !112
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2
  %i.kr = mul nsw i64 %indvars.iv.next290.1, %i.gl
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kr
  %i.ks = getelementptr i8, ptr %gep.2, i64 -4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !111
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, 2.560000e+02
  %i.kv = fpext reassoc nsz arcp contract afn float %i.ku to double
  %i.kw = fadd reassoc nsz arcp contract afn double %i.kv, 5.000000e-01
  %i.kx = fptoui double %i.kw to i32
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !112
  %i.lb = add nsw i32 %i.la, -1
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !112
  %indvars.iv.next290.2 = add nuw nsw i64 %indvars.iv289, 3
  %i.lc = mul nsw i64 %indvars.iv.next290.2, %i.gl
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.lc
  %i.ld = getelementptr i8, ptr %gep.3, i64 -4
  %i.le = load float, ptr %i.ld, align 4, !tbaa !111
  %i.lf = fmul reassoc nsz arcp contract afn float %i.le, 2.560000e+02
  %i.lg = fpext reassoc nsz arcp contract afn float %i.lf to double
  %i.lh = fadd reassoc nsz arcp contract afn double %i.lg, 5.000000e-01
  %i.li = fptoui double %i.lh to i32
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lj ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !112
  %i.lm = add nsw i32 %i.ll, -1
  store i32 %i.lm, ptr %i.lk, align 4, !tbaa !112
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %indvars.iv.next290.3, %wide.trip.count292
  br i1 %exitcond293.not.3, label %.loopexit221, label %.lr.ph236.new

.loopexit221:                                     ; preds = %.prol.loopexit478, %.lr.ph236.new, %bb.d
  %.not202.not = icmp sge i64 %i.jb, %i.gl
  %brmerge275 = or i1 %.not202.not, %19
  br i1 %brmerge275, label %.loopexit219, label %.lr.ph238

.lr.ph238:                                        ; preds = %.loopexit221
  %invariant.gep239 = getelementptr [4 x i8], ptr %i.o, i64 %i.jb ; 5 uses
  br i1 %lcmp.mod485.not, label %.prol.loopexit483, label %.prol.preheader482

.prol.preheader482:                               ; preds = %.lr.ph238, %.prol.preheader482
  %indvars.iv294.prol = phi i64 [ %indvars.iv.next295.prol, %.prol.preheader482 ], [ %i.go, %.lr.ph238 ] ; 2 uses
  %prol.iter486 = phi i64 [ %prol.iter486.next, %.prol.preheader482 ], [ 0, %.lr.ph238 ]
  %i.ln = mul nsw i64 %indvars.iv294.prol, %i.gl
  %gep240.prol = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.ln
  %i.lo = load float, ptr %gep240.prol, align 4, !tbaa !111
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, 2.560000e+02
  %i.lq = fpext reassoc nsz arcp contract afn float %i.lp to double
  %i.lr = fadd reassoc nsz arcp contract afn double %i.lq, 5.000000e-01
  %i.ls = fptoui double %i.lr to i32
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lt ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !112
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !112
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.prol, 1 ; 2 uses
  %prol.iter486.next = add i64 %prol.iter486, 1   ; 2 uses
  %prol.iter486.cmp.not = icmp eq i64 %prol.iter486.next, %xtraiter484
  br i1 %prol.iter486.cmp.not, label %.prol.loopexit483, label %.prol.preheader482, !llvm.loop !95

.prol.loopexit483:                                ; preds = %.prol.preheader482, %.lr.ph238
  %indvars.iv294.unr = phi i64 [ %i.go, %.lr.ph238 ], [ %indvars.iv.next295.prol, %.prol.preheader482 ]
  br i1 %i.gt, label %.loopexit219, label %.lr.ph238.new

.lr.ph238.new:                                    ; preds = %.prol.loopexit483, %.lr.ph238.new
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.3, %.lr.ph238.new ], [ %indvars.iv294.unr, %.prol.loopexit483 ] ; 5 uses
  %i.lx = mul nsw i64 %indvars.iv294, %i.gl
  %gep240 = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.lx
  %i.ly = load float, ptr %gep240, align 4, !tbaa !111
  %i.lz = fmul reassoc nsz arcp contract afn float %i.ly, 2.560000e+02
  %i.ma = fpext reassoc nsz arcp contract afn float %i.lz to double
  %i.mb = fadd reassoc nsz arcp contract afn double %i.ma, 5.000000e-01
  %i.mc = fptoui double %i.mb to i32
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !112
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !112
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1
  %i.mh = mul nsw i64 %indvars.iv.next295, %i.gl
  %gep240.1 = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.mh
  %i.mi = load float, ptr %gep240.1, align 4, !tbaa !111
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mi, 2.560000e+02
  %i.mk = fpext reassoc nsz arcp contract afn float %i.mj to double
  %i.ml = fadd reassoc nsz arcp contract afn double %i.mk, 5.000000e-01
  %i.mm = fptoui double %i.ml to i32
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !112
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !112
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2
  %i.mr = mul nsw i64 %indvars.iv.next295.1, %i.gl
  %gep240.2 = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.mr
  %i.ms = load float, ptr %gep240.2, align 4, !tbaa !111
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, 2.560000e+02
  %i.mu = fpext reassoc nsz arcp contract afn float %i.mt to double
  %i.mv = fadd reassoc nsz arcp contract afn double %i.mu, 5.000000e-01
  %i.mw = fptoui double %i.mv to i32
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mx ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !112
  %i.na = add nsw i32 %i.mz, 1
  store i32 %i.na, ptr %i.my, align 4, !tbaa !112
  %indvars.iv.next295.2 = add nuw nsw i64 %indvars.iv294, 3
  %i.nb = mul nsw i64 %indvars.iv.next295.2, %i.gl
  %gep240.3 = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.nb
  %i.nc = load float, ptr %gep240.3, align 4, !tbaa !111
  %i.nd = fmul reassoc nsz arcp contract afn float %i.nc, 2.560000e+02
  %i.ne = fpext reassoc nsz arcp contract afn float %i.nd to double
  %i.nf = fadd reassoc nsz arcp contract afn double %i.ne, 5.000000e-01
  %i.ng = fptoui double %i.nf to i32
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nh ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !112
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !112
  %indvars.iv.next295.3 = add nuw nsw i64 %indvars.iv294, 4 ; 2 uses
  %exitcond298.not.3 = icmp eq i64 %indvars.iv.next295.3, %wide.trip.count297
  br i1 %exitcond298.not.3, label %.loopexit219, label %.lr.ph238.new

.loopexit219:                                     ; preds = %.prol.loopexit483, %.lr.ph238.new, %.loopexit221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.b, ptr noundef nonnull align 16 dereferenceable(1028) %i.a, i64 1028, i1 false)
  %broadcast.splatinsert445 = insertelement <8 x i32> poison, i32 %i.ji, i64 0
  %broadcast.splat446 = shufflevector <8 x i32> %broadcast.splatinsert445, <8 x i32> poison, <8 x i32> zeroinitializer ; 64 uses
  br label %vector.ph444

vector.ph444:                                     ; preds = %.loopexit219, %.loopexit
  %.0182 = phi i32 [ 0, %.loopexit219 ], [ %.2, %.loopexit ]
  %wide.load453 = load <8 x i32>, ptr %i.b, align 16, !tbaa !112
  %wide.load454 = load <8 x i32>, ptr %i.aq, align 16, !tbaa !112
  %wide.load455 = load <8 x i32>, ptr %i.ar, align 16, !tbaa !112
  %wide.load456 = load <8 x i32>, ptr %i.as, align 16, !tbaa !112
  %i.nl = sub nsw <8 x i32> %wide.load453, %broadcast.splat446 ; 2 uses
  %i.nm = sub nsw <8 x i32> %wide.load454, %broadcast.splat446 ; 2 uses
  %i.nn = sub nsw <8 x i32> %wide.load455, %broadcast.splat446 ; 2 uses
  %i.no = sub nsw <8 x i32> %wide.load456, %broadcast.splat446 ; 2 uses
  %i.np = icmp sgt <8 x i32> %i.nl, zeroinitializer
  %i.nq = icmp sgt <8 x i32> %i.nm, zeroinitializer
  %i.nr = icmp sgt <8 x i32> %i.nn, zeroinitializer
  %i.ns = icmp sgt <8 x i32> %i.no, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.b, <8 x i1> %i.np), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.aq, <8 x i1> %i.nq), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.ar, <8 x i1> %i.nr), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.as, <8 x i1> %i.ns), !tbaa !112
  %i.nt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nl, <8 x i32> zeroinitializer)
  %i.nu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nm, <8 x i32> zeroinitializer)
  %i.nv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nn, <8 x i32> zeroinitializer)
  %i.nw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.no, <8 x i32> zeroinitializer)
  %wide.load453.1 = load <8 x i32>, ptr %i.at, align 16, !tbaa !112
  %wide.load454.1 = load <8 x i32>, ptr %i.au, align 16, !tbaa !112
  %wide.load455.1 = load <8 x i32>, ptr %i.av, align 16, !tbaa !112
  %wide.load456.1 = load <8 x i32>, ptr %i.aw, align 16, !tbaa !112
  %i.nx = sub nsw <8 x i32> %wide.load453.1, %broadcast.splat446 ; 2 uses
  %i.ny = sub nsw <8 x i32> %wide.load454.1, %broadcast.splat446 ; 2 uses
  %i.nz = sub nsw <8 x i32> %wide.load455.1, %broadcast.splat446 ; 2 uses
  %i.oa = sub nsw <8 x i32> %wide.load456.1, %broadcast.splat446 ; 2 uses
  %i.ob = icmp sgt <8 x i32> %i.nx, zeroinitializer
  %i.oc = icmp sgt <8 x i32> %i.ny, zeroinitializer
  %i.od = icmp sgt <8 x i32> %i.nz, zeroinitializer
  %i.oe = icmp sgt <8 x i32> %i.oa, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.at, <8 x i1> %i.ob), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.au, <8 x i1> %i.oc), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.av, <8 x i1> %i.od), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.aw, <8 x i1> %i.oe), !tbaa !112
  %i.of = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nx, <8 x i32> zeroinitializer)
  %predphi.1 = add nuw <8 x i32> %i.nt, %i.of
  %i.og = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ny, <8 x i32> zeroinitializer)
  %predphi457.1 = add nuw <8 x i32> %i.nu, %i.og
  %i.oh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nz, <8 x i32> zeroinitializer)
  %predphi458.1 = add nuw <8 x i32> %i.nv, %i.oh
  %i.oi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.oa, <8 x i32> zeroinitializer)
  %predphi459.1 = add nuw <8 x i32> %i.nw, %i.oi
  %wide.load453.2 = load <8 x i32>, ptr %i.ax, align 16, !tbaa !112
  %wide.load454.2 = load <8 x i32>, ptr %i.ay, align 16, !tbaa !112
  %wide.load455.2 = load <8 x i32>, ptr %i.az, align 16, !tbaa !112
  %wide.load456.2 = load <8 x i32>, ptr %i.ba, align 16, !tbaa !112
  %i.oj = sub nsw <8 x i32> %wide.load453.2, %broadcast.splat446 ; 2 uses
  %i.ok = sub nsw <8 x i32> %wide.load454.2, %broadcast.splat446 ; 2 uses
  %i.ol = sub nsw <8 x i32> %wide.load455.2, %broadcast.splat446 ; 2 uses
  %i.om = sub nsw <8 x i32> %wide.load456.2, %broadcast.splat446 ; 2 uses
  %i.on = icmp sgt <8 x i32> %i.oj, zeroinitializer
  %i.oo = icmp sgt <8 x i32> %i.ok, zeroinitializer
  %i.op = icmp sgt <8 x i32> %i.ol, zeroinitializer
  %i.oq = icmp sgt <8 x i32> %i.om, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.ax, <8 x i1> %i.on), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.ay, <8 x i1> %i.oo), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.az, <8 x i1> %i.op), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.ba, <8 x i1> %i.oq), !tbaa !112
  %i.or = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.oj, <8 x i32> zeroinitializer)
  %predphi.2 = add <8 x i32> %predphi.1, %i.or
  %i.os = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ok, <8 x i32> zeroinitializer)
  %predphi457.2 = add <8 x i32> %predphi457.1, %i.os
  %i.ot = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ol, <8 x i32> zeroinitializer)
  %predphi458.2 = add <8 x i32> %predphi458.1, %i.ot
  %i.ou = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.om, <8 x i32> zeroinitializer)
  %predphi459.2 = add <8 x i32> %predphi459.1, %i.ou
  %wide.load453.3 = load <8 x i32>, ptr %i.bb, align 16, !tbaa !112
  %wide.load454.3 = load <8 x i32>, ptr %i.bc, align 16, !tbaa !112
  %wide.load455.3 = load <8 x i32>, ptr %i.bd, align 16, !tbaa !112
  %wide.load456.3 = load <8 x i32>, ptr %i.be, align 16, !tbaa !112
  %i.ov = sub nsw <8 x i32> %wide.load453.3, %broadcast.splat446 ; 2 uses
  %i.ow = sub nsw <8 x i32> %wide.load454.3, %broadcast.splat446 ; 2 uses
  %i.ox = sub nsw <8 x i32> %wide.load455.3, %broadcast.splat446 ; 2 uses
  %i.oy = sub nsw <8 x i32> %wide.load456.3, %broadcast.splat446 ; 2 uses
  %i.oz = icmp sgt <8 x i32> %i.ov, zeroinitializer
  %i.pa = icmp sgt <8 x i32> %i.ow, zeroinitializer
  %i.pb = icmp sgt <8 x i32> %i.ox, zeroinitializer
  %i.pc = icmp sgt <8 x i32> %i.oy, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bb, <8 x i1> %i.oz), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bc, <8 x i1> %i.pa), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bd, <8 x i1> %i.pb), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.be, <8 x i1> %i.pc), !tbaa !112
  %i.pd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ov, <8 x i32> zeroinitializer)
  %predphi.3 = add <8 x i32> %predphi.2, %i.pd
  %i.pe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ow, <8 x i32> zeroinitializer)
  %predphi457.3 = add <8 x i32> %predphi457.2, %i.pe
  %i.pf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ox, <8 x i32> zeroinitializer)
  %predphi458.3 = add <8 x i32> %predphi458.2, %i.pf
  %i.pg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.oy, <8 x i32> zeroinitializer)
  %predphi459.3 = add <8 x i32> %predphi459.2, %i.pg
  %wide.load453.4 = load <8 x i32>, ptr %i.bf, align 16, !tbaa !112
  %wide.load454.4 = load <8 x i32>, ptr %i.bg, align 16, !tbaa !112
  %wide.load455.4 = load <8 x i32>, ptr %i.bh, align 16, !tbaa !112
  %wide.load456.4 = load <8 x i32>, ptr %i.bi, align 16, !tbaa !112
  %i.ph = sub nsw <8 x i32> %wide.load453.4, %broadcast.splat446 ; 2 uses
  %i.pi = sub nsw <8 x i32> %wide.load454.4, %broadcast.splat446 ; 2 uses
  %i.pj = sub nsw <8 x i32> %wide.load455.4, %broadcast.splat446 ; 2 uses
  %i.pk = sub nsw <8 x i32> %wide.load456.4, %broadcast.splat446 ; 2 uses
  %i.pl = icmp sgt <8 x i32> %i.ph, zeroinitializer
  %i.pm = icmp sgt <8 x i32> %i.pi, zeroinitializer
  %i.pn = icmp sgt <8 x i32> %i.pj, zeroinitializer
  %i.po = icmp sgt <8 x i32> %i.pk, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bf, <8 x i1> %i.pl), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bg, <8 x i1> %i.pm), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bh, <8 x i1> %i.pn), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bi, <8 x i1> %i.po), !tbaa !112
  %i.pp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ph, <8 x i32> zeroinitializer)
  %predphi.4 = add <8 x i32> %predphi.3, %i.pp
  %i.pq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pi, <8 x i32> zeroinitializer)
  %predphi457.4 = add <8 x i32> %predphi457.3, %i.pq
  %i.pr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pj, <8 x i32> zeroinitializer)
  %predphi458.4 = add <8 x i32> %predphi458.3, %i.pr
  %i.ps = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pk, <8 x i32> zeroinitializer)
  %predphi459.4 = add <8 x i32> %predphi459.3, %i.ps
  %wide.load453.5 = load <8 x i32>, ptr %i.bj, align 16, !tbaa !112
  %wide.load454.5 = load <8 x i32>, ptr %i.bk, align 16, !tbaa !112
  %wide.load455.5 = load <8 x i32>, ptr %i.bl, align 16, !tbaa !112
  %wide.load456.5 = load <8 x i32>, ptr %i.bm, align 16, !tbaa !112
  %i.pt = sub nsw <8 x i32> %wide.load453.5, %broadcast.splat446 ; 2 uses
  %i.pu = sub nsw <8 x i32> %wide.load454.5, %broadcast.splat446 ; 2 uses
  %i.pv = sub nsw <8 x i32> %wide.load455.5, %broadcast.splat446 ; 2 uses
  %i.pw = sub nsw <8 x i32> %wide.load456.5, %broadcast.splat446 ; 2 uses
  %i.px = icmp sgt <8 x i32> %i.pt, zeroinitializer
  %i.py = icmp sgt <8 x i32> %i.pu, zeroinitializer
  %i.pz = icmp sgt <8 x i32> %i.pv, zeroinitializer
  %i.qa = icmp sgt <8 x i32> %i.pw, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bj, <8 x i1> %i.px), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bk, <8 x i1> %i.py), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bl, <8 x i1> %i.pz), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bm, <8 x i1> %i.qa), !tbaa !112
  %i.qb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pt, <8 x i32> zeroinitializer)
  %predphi.5 = add <8 x i32> %predphi.4, %i.qb
  %i.qc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pu, <8 x i32> zeroinitializer)
  %predphi457.5 = add <8 x i32> %predphi457.4, %i.qc
  %i.qd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pv, <8 x i32> zeroinitializer)
  %predphi458.5 = add <8 x i32> %predphi458.4, %i.qd
  %i.qe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pw, <8 x i32> zeroinitializer)
  %predphi459.5 = add <8 x i32> %predphi459.4, %i.qe
  %wide.load453.6 = load <8 x i32>, ptr %i.bn, align 16, !tbaa !112
  %wide.load454.6 = load <8 x i32>, ptr %i.bo, align 16, !tbaa !112
  %wide.load455.6 = load <8 x i32>, ptr %i.bp, align 16, !tbaa !112
  %wide.load456.6 = load <8 x i32>, ptr %i.bq, align 16, !tbaa !112
  %i.qf = sub nsw <8 x i32> %wide.load453.6, %broadcast.splat446 ; 2 uses
  %i.qg = sub nsw <8 x i32> %wide.load454.6, %broadcast.splat446 ; 2 uses
  %i.qh = sub nsw <8 x i32> %wide.load455.6, %broadcast.splat446 ; 2 uses
  %i.qi = sub nsw <8 x i32> %wide.load456.6, %broadcast.splat446 ; 2 uses
  %i.qj = icmp sgt <8 x i32> %i.qf, zeroinitializer
  %i.qk = icmp sgt <8 x i32> %i.qg, zeroinitializer
  %i.ql = icmp sgt <8 x i32> %i.qh, zeroinitializer
  %i.qm = icmp sgt <8 x i32> %i.qi, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bn, <8 x i1> %i.qj), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bo, <8 x i1> %i.qk), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bp, <8 x i1> %i.ql), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bq, <8 x i1> %i.qm), !tbaa !112
  %i.qn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qf, <8 x i32> zeroinitializer)
  %predphi.6 = add <8 x i32> %predphi.5, %i.qn
  %i.qo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qg, <8 x i32> zeroinitializer)
  %predphi457.6 = add <8 x i32> %predphi457.5, %i.qo
  %i.qp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qh, <8 x i32> zeroinitializer)
  %predphi458.6 = add <8 x i32> %predphi458.5, %i.qp
  %i.qq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qi, <8 x i32> zeroinitializer)
  %predphi459.6 = add <8 x i32> %predphi459.5, %i.qq
  %wide.load453.7 = load <8 x i32>, ptr %i.br, align 16, !tbaa !112
  %wide.load454.7 = load <8 x i32>, ptr %i.bs, align 16, !tbaa !112
  %wide.load455.7 = load <8 x i32>, ptr %i.bt, align 16, !tbaa !112
  %wide.load456.7 = load <8 x i32>, ptr %i.bu, align 16, !tbaa !112
  %i.qr = sub nsw <8 x i32> %wide.load453.7, %broadcast.splat446 ; 2 uses
  %i.qs = sub nsw <8 x i32> %wide.load454.7, %broadcast.splat446 ; 2 uses
  %i.qt = sub nsw <8 x i32> %wide.load455.7, %broadcast.splat446 ; 2 uses
  %i.qu = sub nsw <8 x i32> %wide.load456.7, %broadcast.splat446 ; 2 uses
  %i.qv = icmp sgt <8 x i32> %i.qr, zeroinitializer
  %i.qw = icmp sgt <8 x i32> %i.qs, zeroinitializer
  %i.qx = icmp sgt <8 x i32> %i.qt, zeroinitializer
  %i.qy = icmp sgt <8 x i32> %i.qu, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.br, <8 x i1> %i.qv), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bs, <8 x i1> %i.qw), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bt, <8 x i1> %i.qx), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat446, ptr align 16 %i.bu, <8 x i1> %i.qy), !tbaa !112
  %i.qz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qr, <8 x i32> zeroinitializer)
  %predphi.7 = add <8 x i32> %predphi.6, %i.qz
  %i.ra = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qs, <8 x i32> zeroinitializer)
  %predphi457.7 = add <8 x i32> %predphi457.6, %i.ra
  %i.rb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qt, <8 x i32> zeroinitializer)
  %predphi458.7 = add <8 x i32> %predphi458.6, %i.rb
  %i.rc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qu, <8 x i32> zeroinitializer)
  %predphi459.7 = add <8 x i32> %predphi459.6, %i.rc
  %bin.rdx462 = add <8 x i32> %predphi457.7, %predphi.7
  %bin.rdx463 = add <8 x i32> %predphi458.7, %bin.rdx462
  %bin.rdx464 = add <8 x i32> %predphi459.7, %bin.rdx463
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xh, 5.000000e-01
  %i.xj = fcmp reassoc nsz arcp contract afn olt float %i.xi, 5.000000e-01
  br i1 %i.xj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.xk = fpext reassoc nsz arcp contract afn float %i.xa to double
  %i.xl = fpext reassoc nsz arcp contract afn float %i.xc to double
  %i.xm = fadd reassoc nsz arcp contract afn double %i.xk, %i.xl
  %i.xn = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.xm
  %i.xo = fptrunc reassoc nsz arcp contract afn double %i.xn to float
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi float [ %i.xo, %bb.g ], [ %i.xh, %bb.f ]
  %i.xp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.xq = fdiv reassoc nsz arcp contract afn float %i.xd, %i.xp ; 4 uses
  %i.xr = fcmp reassoc nsz arcp contract afn oeq float %i.xa, %i.wu
  br i1 %i.xr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.xs = fsub reassoc nsz arcp contract afn float %i.ww, %i.wy
  %i.xt = fdiv reassoc nsz arcp contract afn float %i.xs, %i.xd
  br label %rgb2hsl.exit

bb.j:                                             ; preds = %bb.h
  %i.xu = fcmp reassoc nsz arcp contract afn oeq float %i.xa, %i.ww
  br i1 %i.xu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.xv = fsub reassoc nsz arcp contract afn float %i.wy, %i.wu
  %i.xw = fdiv reassoc nsz arcp contract afn float %i.xv, %i.xd
  %i.xx = fadd reassoc nsz arcp contract afn float %i.xw, 2.000000e+00
  br label %rgb2hsl.exit

bb.l:                                             ; preds = %bb.j
  %i.xy = fcmp reassoc nsz arcp contract afn oeq float %i.xa, %i.wy
  br i1 %i.xy, label %bb.m, label %rgb2hsl.exit

bb.m:                                             ; preds = %bb.l
  %i.xz = fsub reassoc nsz arcp contract afn float %i.wu, %i.ww
  %i.ya = fdiv reassoc nsz arcp contract afn float %i.xz, %i.xd
  %i.yb = fadd reassoc nsz arcp contract afn float %i.ya, 4.000000e+00
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %.043.i = phi nsz float [ %i.xt, %bb.i ], [ %i.xx, %bb.k ], [ %i.yb, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.yc = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.yd = fmul reassoc nsz arcp contract afn double %i.yc, f0x3FC5555555555555 ; 3 uses
  %i.ye = fptrunc reassoc nsz arcp contract afn double %i.yd to float ; 3 uses
  %i.yf = fcmp reassoc nsz arcp contract afn olt double %i.yd, f0xB690000000000000
  %i.yg = fadd reassoc nsz arcp contract afn float %i.ye, 1.000000e+00
  %i.yh = fcmp reassoc nsz arcp contract afn ogt double %i.yd, f0x3FF0000010000000
  %i.yi = fadd reassoc nsz arcp contract afn float %i.ye, -1.000000e+00
  %spec.select.i = select nsz i1 %i.yh, float %i.yi, float %i.ye
  %.1.i = select nsz i1 %i.yf, float %i.yg, float %spec.select.i
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv326
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !111 ; 5 uses
  %i.yl = fcmp reassoc nsz arcp contract afn oeq float %i.xq, 0.000000e+00
  br i1 %i.yl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rgb2hsl.exit.thread, %rgb2hsl.exit
  %i.ym = phi float [ %i.xg, %rgb2hsl.exit.thread ], [ %i.yk, %rgb2hsl.exit ] ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.0171263, i64 8
  store float %i.ym, ptr %i.yn, align 4, !tbaa !111
  %i.yo = getelementptr inbounds nuw i8, ptr %.0171263, i64 4
  store float %i.ym, ptr %i.yo, align 4, !tbaa !111
  store float %i.ym, ptr %.0171263, align 4, !tbaa !111
  br label %hsl2rgb.exit

bb.o:                                             ; preds = %rgb2hsl.exit
  %i.yp = fpext reassoc nsz arcp contract afn float %i.yk to double ; 2 uses
  %i.yq = fcmp reassoc nsz arcp contract afn olt float %i.yk, 5.000000e-01
  br i1 %i.yq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.yr = fpext reassoc nsz arcp contract afn float %i.xq to double
  %i.ys = fadd reassoc nsz arcp contract afn double %i.yr, 1.000000e+00
  %i.yt = fmul reassoc nsz arcp contract afn double %i.ys, %i.yp
  %i.yu = fptrunc reassoc nsz arcp contract afn double %i.yt to float
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.yv = fadd reassoc nsz arcp contract afn float %i.yk, %i.xq
  %i.yw = fmul reassoc nsz arcp contract afn float %i.xq, %i.yk
  %i.yx = fsub reassoc nsz arcp contract afn float %i.yv, %i.yw
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.yy = phi float [ %i.yu, %bb.p ], [ %i.yx, %bb.q ] ; 10 uses
  %i.yz = fmul reassoc nsz arcp contract afn double %i.yp, 2.000000e+00
  %i.za = fpext reassoc nsz arcp contract afn float %i.yy to double
  %i.zb = fsub reassoc nsz arcp contract afn double %i.yz, %i.za
  %i.zc = fptrunc reassoc nsz arcp contract afn double %i.zb to float ; 15 uses
  %i.zd = fmul reassoc nsz arcp contract afn float %.1.i, 6.000000e+00 ; 8 uses
  %i.ze = fcmp reassoc nsz arcp contract afn olt float %i.zd, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.ze, float 2.000000e+00, float -4.000000e+00
  %i.zf = fadd reassoc nsz arcp contract afn float %.v.i, %i.zd ; 5 uses
  %i.zg = fcmp reassoc nsz arcp contract afn olt float %i.zf, 1.000000e+00
  br i1 %i.zg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.zh = fsub reassoc nsz arcp contract afn float %i.yy, %i.zc
  %i.zi = fmul reassoc nsz arcp contract afn float %i.zh, %i.zf
  %i.zj = fadd reassoc nsz arcp contract afn float %i.zi, %i.zc
  br label %hue2rgb.exit.i

bb.t:                                             ; preds = %bb.r
  %i.zk = fcmp reassoc nsz arcp contract afn olt float %i.zf, 3.000000e+00
  br i1 %i.zk, label %hue2rgb.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.zl = fcmp reassoc nsz arcp contract afn olt float %i.zf, 4.000000e+00
  %i.zm = fsub reassoc nsz arcp contract afn float %i.yy, %i.zc
  %i.zn = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.zf
  %i.zo = fmul reassoc nsz arcp contract afn float %i.zm, %i.zn
  %i.zp = fadd reassoc nsz arcp contract afn float %i.zo, %i.zc
  %i.zq = select reassoc nsz arcp contract afn i1 %i.zl, float %i.zp, float %i.zc
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.u, %bb.t, %bb.s
  %.0.i.i = phi nsz float [ %i.zj, %bb.s ], [ %i.zq, %bb.u ], [ %i.yy, %bb.t ]
  store float %.0.i.i, ptr %.0171263, align 4, !tbaa !111
  %i.zr = fcmp reassoc nsz arcp contract afn olt float %i.zd, 1.000000e+00
  br i1 %i.zr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %hue2rgb.exit.i
  %i.zs = fsub reassoc nsz arcp contract afn float %i.yy, %i.zc
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, %i.zd
  %i.zu = fadd reassoc nsz arcp contract afn float %i.zt, %i.zc
  br label %hue2rgb.exit36.i

bb.w:                                             ; preds = %hue2rgb.exit.i
  %i.zv = fcmp reassoc nsz arcp contract afn olt float %i.zd, 3.000000e+00
  br i1 %i.zv, label %hue2rgb.exit36.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.zw = fsub reassoc nsz arcp contract afn float %i.yy, %i.zc
  %i.zx = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.zd
  %i.zy = fmul reassoc nsz arcp contract afn float %i.zw, %i.zx
  %i.zz = fadd reassoc nsz arcp contract afn float %i.zy, %i.zc
  %i.aaa = select reassoc nsz arcp contract afn i1 %i.ze, float %i.zz, float %i.zc
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.x, %bb.w, %bb.v
  %.0.i35.i = phi nsz float [ %i.zu, %bb.v ], [ %i.aaa, %bb.x ], [ %i.yy, %bb.w ]
  %i.aab = getelementptr inbounds nuw i8, ptr %.0171263, i64 4
  store float %.0.i35.i, ptr %i.aab, align 4, !tbaa !111
  %i.aac = fcmp reassoc nsz arcp contract afn ogt float %i.zd, 2.000000e+00
  %.v34.i = select i1 %i.aac, float -2.000000e+00, float 4.000000e+00
  %i.aad = fadd reassoc nsz arcp contract afn float %.v34.i, %i.zd ; 5 uses
  %i.aae = fcmp reassoc nsz arcp contract afn olt float %i.aad, 1.000000e+00
  br i1 %i.aae, label %bb.y, label %bb.z

bb.y:                                             ; preds = %hue2rgb.exit36.i
  %i.aaf = fsub reassoc nsz arcp contract afn float %i.yy, %i.zc
  %i.aag = fmul reassoc nsz arcp contract afn float %i.aaf, %i.aad
  %i.aah = fadd reassoc nsz arcp contract afn float %i.aag, %i.zc
  br label %hue2rgb.exit38.i

bb.z:                                             ; preds = %hue2rgb.exit36.i
  %i.aai = fcmp reassoc nsz arcp contract afn olt float %i.aad, 3.000000e+00
  br i1 %i.aai, label %hue2rgb.exit38.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aaj = fcmp reassoc nsz arcp contract afn olt float %i.aad, 4.000000e+00
  %i.aak = fsub reassoc nsz arcp contract afn float %i.yy, %i.zc
  %i.aal = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.aad
  %i.aam = fmul reassoc nsz arcp contract afn float %i.aak, %i.aal
  %i.aan = fadd reassoc nsz arcp contract afn float %i.aam, %i.zc
  %i.aao = select reassoc nsz arcp contract afn i1 %i.aaj, float %i.aan, float %i.zc
  br label %hue2rgb.exit38.i

hue2rgb.exit38.i:                                 ; preds = %bb.aa, %bb.z, %bb.y
  %.0.i37.i = phi nsz float [ %i.aah, %bb.y ], [ %i.aao, %bb.aa ], [ %i.yy, %bb.z ]
  %i.aap = getelementptr inbounds nuw i8, ptr %.0171263, i64 8
  store float %.0.i37.i, ptr %i.aap, align 4, !tbaa !111
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.n, %hue2rgb.exit38.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0171263, i64 12
  store float 0.000000e+00, ptr %i.aaq, align 4, !tbaa !111
  %i.aar = getelementptr inbounds [4 x i8], ptr %.0171263, i64 %i.an
  %i.aas = getelementptr inbounds [4 x i8], ptr %.0172262, i64 %i.an
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge268, label %.lr.ph267
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !31
  store <2 x double> %i.c, ptr %i.b, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29
  tail call void @free(ptr noundef %i.b) #15
  store ptr null, ptr %i.a, align 16, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !43  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.f = load double, ptr %i.d, align 8, !tbaa !48
  %i.g = fptrunc reassoc nsz arcp contract afn double %i.f to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.e, float noundef %i.g) #15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !50
  %i.l = fptrunc reassoc nsz arcp contract afn double %i.k to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.l) #15
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init(ptr nofree noundef writeonly captures(none) initializes((676, 700), (704, 712)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.a, ptr %i.b, align 8, !tbaa !44
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.c, ptr %i.d, align 16, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.e, align 4, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 16, ptr %i.f, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr null, ptr %i.g, align 16, !tbaa !43
  store <2 x double> <double 6.400000e+01, double 1.250000e+00>, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 16) #15 ; 9 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !51  ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !48
  %i.g = fptrunc reassoc nsz arcp contract afn double %i.f to float
  %i.h = tail call ptr @dt_bauhaus_slider_new_with_range(ptr noundef null, float noundef 0.000000e+00, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef %i.g, i32 noundef 0) #15
  store ptr %i.h, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !50
  %i.k = fptrunc reassoc nsz arcp contract afn double %i.j to float
  %i.l = tail call ptr @dt_bauhaus_slider_new_with_range(ptr noundef null, float noundef 1.000000e+00, float noundef 3.000000e+00, float noundef 0.000000e+00, float noundef %i.k, i32 noundef 2) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !49
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #15
  %i.p = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.n, ptr noundef null, ptr noundef %i.o) #15 ; 0 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.r = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #15
  %i.s = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.q, ptr noundef null, ptr noundef %i.r) #15 ; 0 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.u = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #15
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.t, ptr noundef %i.u) #15
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.w = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #15
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.v, ptr noundef %i.w) #15
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.y = tail call i64 @g_signal_connect_data(ptr noundef %i.x, ptr noundef nonnull @.str.6, ptr noundef nonnull @radius_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.aa = tail call i64 @g_signal_connect_data(ptr noundef %i.z, ptr noundef nonnull @.str.6, ptr noundef nonnull @slope_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.ab = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #15
  %i.ac = load <2 x ptr>, ptr %i.b, align 8, !tbaa !119
  store <2 x ptr> %i.ac, ptr %i.a, align 16, !tbaa !120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ad, align 16, !tbaa !120
  %i.ae = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.7, i32 noundef 334, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ab, ptr noundef nonnull %i.a) #15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !121
  ret void
}

declare ptr @dt_bauhaus_slider_new_with_range(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #13

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #13

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal void @radius_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #15
  %i.g = fpext reassoc nsz arcp contract afn float %i.f to double
  store double %i.g, ptr %i.e, align 8, !tbaa !48
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !92
  tail call void @dt_dev_add_history_item(ptr noundef %i.h, ptr noundef %1, i32 noundef 1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @slope_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #15
  %i.g = fpext reassoc nsz arcp contract afn float %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.g, ptr %i.h, align 8, !tbaa !50
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !92
  tail call void @dt_dev_add_history_item(ptr noundef %i.i, ptr noundef %1, i32 noundef 1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #13

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #13

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !11, i64 16}
!30 = !{!"double", !7, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!33 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!34 = !{!"dt_pthread_mutex_t", !7, i64 0}
!35 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!36 = !{!"", !25, i64 0, !25, i64 8}
!37 = !{!"", !12, i64 0, !8, i64 8}
!38 = !{!"", !36, i64 0, !37, i64 16}
!39 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!40 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!41 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!42 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !32, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !16, i64 608, !18, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !33, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !34, i64 712, !11, i64 752, !11, i64 760, !35, i64 768, !35, i64 776, !11, i64 784, !38, i64 792, !39, i64 824, !39, i64 832, !39, i64 840, !39, i64 848, !39, i64 856, !39, i64 864, !39, i64 872, !8, i64 880, !39, i64 888, !39, i64 896, !39, i64 904, !40, i64 912, !40, i64 920, !39, i64 928, !39, i64 936, !8, i64 944, !41, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !39, i64 1096, !11, i64 1104, !8, i64 1112}
!43 = !{!42, !11, i64 704}
!44 = !{!42, !11, i64 680}
!45 = !{!"dt_iop_rlce_gui_data_t", !39, i64 0, !39, i64 8}
!46 = !{!45, !39, i64 0}
!47 = !{!"dt_iop_rlce_params_t", !30, i64 0, !30, i64 8}
!48 = !{!47, !30, i64 0}
!49 = !{!45, !39, i64 8}
!50 = !{!47, !30, i64 8}
!51 = !{!42, !11, i64 688}
!52 = !{!"dt_codepath_t", !8, i64 0}
!53 = !{!"p1 _ZTS6_GList", !11, i64 0}
!54 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!55 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!56 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!57 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!58 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!59 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!60 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!61 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!62 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!63 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!64 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!65 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!66 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!67 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!68 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!69 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!70 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!71 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!72 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!73 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!74 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!75 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!76 = !{!"p1 omnipotent char", !11, i64 0}
!77 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!78 = !{!"_Bool", !7, i64 0}
!79 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!80 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!81 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!82 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!83 = !{!"", !77, i64 0, !34, i64 8, !7, i64 48, !78, i64 96, !78, i64 97, !79, i64 104, !80, i64 112, !81, i64 120, !82, i64 128, !82, i64 136, !82, i64 144}
!84 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!85 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!86 = !{!"dt_sys_resources_t", !17, i64 0, !17, i64 8, !16, i64 16, !16, i64 24, !8, i64 32}
!87 = !{!"dt_backthumb_t", !30, i64 0, !30, i64 8, !8, i64 16, !8, i64 20}
!88 = !{!"dt_gimp_t", !8, i64 0, !76, i64 8, !76, i64 16, !8, i64 24, !8, i64 28}
!89 = !{!"dt_splash_t", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !8, i64 32}
!90 = !{!"darktable_t", !52, i64 0, !8, i64 4, !8, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !54, i64 48, !55, i64 56, !33, i64 64, !56, i64 72, !57, i64 80, !58, i64 88, !59, i64 96, !60, i64 104, !61, i64 112, !62, i64 120, !63, i64 128, !64, i64 136, !65, i64 144, !66, i64 152, !67, i64 160, !68, i64 168, !69, i64 176, !70, i64 184, !71, i64 192, !72, i64 200, !73, i64 208, !74, i64 216, !75, i64 224, !7, i64 232, !34, i64 2792, !34, i64 2832, !34, i64 2872, !34, i64 2912, !34, i64 2952, !34, i64 2992, !76, i64 3032, !76, i64 3040, !76, i64 3048, !76, i64 3056, !76, i64 3064, !76, i64 3072, !76, i64 3080, !76, i64 3088, !76, i64 3096, !76, i64 3104, !76, i64 3112, !76, i64 3120, !76, i64 3128, !83, i64 3136, !53, i64 3288, !30, i64 3296, !53, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !84, i64 3520, !85, i64 3528, !86, i64 3536, !87, i64 3576, !88, i64 3600, !89, i64 3632, !8, i64 3672}
!91 = !{!90, !60, i64 104}
!92 = !{!90, !33, i64 64}
!93 = distinct !{!93, !113}
!94 = distinct !{!94, !113}
!95 = distinct !{!95, !113}
!96 = distinct !{!96, !114}
!97 = distinct !{!97, !114, !115}
!98 = distinct !{!98, !114, !115}
!99 = distinct !{!99, !114, !115}
!100 = distinct !{!100, !114, !115}
!101 = distinct !{!101, !115, !114}
!102 = distinct !{!102, !115, !114}
!103 = !{!28, !8, i64 132}
!104 = !{!20, !8, i64 8}
!105 = !{!20, !8, i64 12}
!106 = !{!"dt_iop_rlce_data_t", !30, i64 0, !30, i64 8}
!107 = !{!106, !30, i64 0}
!108 = !{!20, !19, i64 16}
!109 = !{!28, !19, i64 104}
!110 = !{!106, !30, i64 8}
!111 = !{!19, !19, i64 0}
!112 = !{!8, !8, i64 0}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = !{!"branch_weights", i32 8, i32 24}
!117 = !{!42, !8, i64 676}
!118 = !{!42, !8, i64 696}
!119 = !{!39, !39, i64 0}
!120 = !{!11, !11, i64 0}
!121 = !{!42, !39, i64 824}
end_hunk_1
