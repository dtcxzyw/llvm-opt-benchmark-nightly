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
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double
  %i.w = fmul reassoc nsz arcp contract afn double %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.y = load float, ptr %i.x, align 8, !tbaa !109
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = fdiv reassoc nsz arcp contract afn double %i.w, %i.z
  %i.ab = fptosi double %i.aa to i32              ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !110
  %i.ae = add nsw i64 %i.m, 60
  %i.af = and i64 %i.ae, -64
  %i.ag = tail call ptr @dt_alloc_aligned(i64 noundef %i.af) #15 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = load i32, ptr %i.j, align 4, !tbaa !105
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %._crit_edge229.split
  %i.aj = fptrunc reassoc nsz arcp contract afn double %i.ad to float
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.al = add i32 %i.ab, 1
  %i.am = sub nsw i32 0, %i.ab
  %i.an = sitofp reassoc nsz arcp contract afn i32 %i.am to double
  %i.ao = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.an, double 0.000000e+00)
  %i.ap = fptosi double %i.ao to i32              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aj, 3.906250e-03
  %i.as = sext i32 %i.f to i64                    ; 3 uses
  %6 = sext i32 %i.ap to i64                      ; 4 uses
  %i.at = sext i32 %i.ab to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 608 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 640 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 704 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 736 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 768 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 800 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 832 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 864 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 928 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 960 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 992 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 608 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 640 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 704 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 736 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 768 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 800 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 832 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 864 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 928 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 960 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 992 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 608 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 640 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 672 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 704 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 736 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 768 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 800 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 832 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 864 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 928 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 960 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 992 ; 2 uses
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.el = mul nuw nsw i64 %indvars.iv, %i.i       ; 2 uses
  %i.em = mul i64 %i.el, %i.q
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.el
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond278.not, label %._crit_edge229.split, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0192225 = phi i32 [ 0, %.lr.ph ], [ %i.fg, %bb.b ]
  %.0193224 = phi ptr [ %i.eo, %.lr.ph ], [ %i.ff, %bb.b ] ; 2 uses
  %.0194223 = phi ptr [ %i.en, %.lr.ph ], [ %i.fe, %bb.b ] ; 4 uses
  %i.ep = load float, ptr %.0194223, align 4, !tbaa !111 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0194223, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !111 ; 2 uses
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ep, float %i.er)
  %i.et = getelementptr inbounds nuw i8, ptr %.0194223, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !111 ; 2 uses
  %i.ev = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.es, float %i.eu) ; 3 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %i.ev, 0.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.ev, 1.000000e+00
  %spec.select210 = select reassoc nsz arcp contract afn i1 %.inv, float %i.ev, float 1.000000e+00
  %i.ex = select reassoc nsz arcp contract afn i1 %i.ew, float 0.000000e+00, float %spec.select210
  %i.ey = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ep, float %i.er)
  %i.ez = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ey, float %i.eu) ; 3 uses
  %i.fa = fcmp reassoc nsz arcp contract afn ult float %i.ez, 0.000000e+00
  %.inv212 = fcmp reassoc nsz arcp contract afn ole float %i.ez, 1.000000e+00
  %spec.select211 = select reassoc nsz arcp contract afn i1 %.inv212, float %i.ez, float 1.000000e+00
  %i.fb = select reassoc nsz arcp contract afn i1 %i.fa, float 0.000000e+00, float %spec.select211
  %i.fc = fadd reassoc nsz arcp contract afn float %i.ex, %i.fb
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, 5.000000e-01
  store float %i.fd, ptr %.0193224, align 4, !tbaa !111
  %i.fe = getelementptr inbounds [4 x i8], ptr %.0194223, i64 %i.q
  %i.ff = getelementptr inbounds nuw i8, ptr %.0193224, i64 4
  %i.fg = add nuw nsw i32 %.0192225, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fg, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge272:                                   ; preds = %._crit_edge268, %._crit_edge229.split
  tail call void @free(ptr noundef %i.ag) #15
  tail call void @free(ptr noundef %i.o) #15
  ret void

bb.c:                                             ; preds = %.lr.ph271, %._crit_edge268
  %indvars.iv327 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next328, %._crit_edge268 ] ; 5 uses
  %i.fh = trunc i64 %indvars.iv327 to i32
  %i.fi = sub i32 %i.fh, %i.ab
  %i.fj = sitofp reassoc nsz arcp contract afn i32 %i.fi to double
  %i.fk = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.fj, double 0.000000e+00)
  %i.fl = fptosi double %i.fk to i32              ; 4 uses
  %i.fm = load i32, ptr %i.ak, align 4, !tbaa !105
  %i.fn = trunc nuw nsw i64 %indvars.iv327 to i32
  %i.fo = add i32 %i.al, %i.fn
  %i.fp = tail call i32 @llvm.smin.i32(i32 %i.fm, i32 %i.fo) ; 4 uses
  %i.fq = sub nsw i32 %i.fp, %i.fl
  %i.fr = load i32, ptr %i.aq, align 4, !tbaa !104 ; 2 uses
  %i.fs = add i32 %i.fr, -1
  %i.ft = tail call i32 @llvm.smin.i32(i32 %i.fs, i32 %i.ab) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.a, i8 0, i64 1028, i1 false)
  %i.fu = icmp sle i32 %i.fp, %i.fl               ; 3 uses
  br i1 %i.fu, label %._crit_edge234.split, label %.preheader222.lr.ph

.preheader222.lr.ph:                              ; preds = %bb.c
  %i.fv = icmp sgt i32 %i.ft, %i.ap
  %i.fw = sext i32 %i.fr to i64
  br i1 %i.fv, label %.preheader222.preheader, label %._crit_edge234.split

.preheader222.preheader:                          ; preds = %.preheader222.lr.ph
  %7 = sext i32 %i.fl to i64
  %sext = sext i32 %i.fp to i64
  %wide.trip.count281 = sext i32 %i.ft to i64     ; 3 uses
  %i.fx = sub nsw i64 %wide.trip.count281, %6
  %xtraiter = and i64 %i.fx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fy = sub nsw i64 %6, %wide.trip.count281
  %i.fz = icmp ugt i64 %i.fy, -4
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.preheader, %._crit_edge232
  %indvars.iv284 = phi i64 [ %7, %.preheader222.preheader ], [ %indvars.iv.next285, %._crit_edge232 ] ; 2 uses
  %i.ga = mul nsw i64 %indvars.iv284, %i.fw
  %i.gb = getelementptr [4 x i8], ptr %i.o, i64 %i.ga ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader222, %.prol.preheader
  %indvars.iv279.prol = phi i64 [ %indvars.iv.next280.prol, %.prol.preheader ], [ %6, %.preheader222 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader222 ]
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv279.prol
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !111
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, 2.560000e+02
  %i.gf = fpext reassoc nsz arcp contract afn float %i.ge to double
  %i.gg = fadd reassoc nsz arcp contract afn double %i.gf, 5.000000e-01
  %i.gh = fptoui double %i.gg to i32
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !112
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !112
  %indvars.iv.next280.prol = add nsw i64 %indvars.iv279.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !93

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader222
  %indvars.iv279.unr = phi i64 [ %6, %.preheader222 ], [ %indvars.iv.next280.prol, %.prol.preheader ]
  br i1 %i.fz, label %._crit_edge232, label %.preheader222.new

._crit_edge234.split:                             ; preds = %._crit_edge232, %.preheader222.lr.ph, %bb.c
  %i.gm = load i32, ptr %i.g, align 4, !tbaa !104
  %i.gn = sext i32 %i.gm to i64
  %i.go = shl nsw i64 %i.gn, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ag, i8 0, i64 %i.go, i1 false)
  %i.gp = load i32, ptr %i.g, align 4, !tbaa !104 ; 4 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph259, label %._crit_edge268

.lr.ph259:                                        ; preds = %._crit_edge234.split
  %i.gr = load i32, ptr %i.aq, align 4, !tbaa !104 ; 2 uses
  %i.gs = sext i32 %i.gr to i64                   ; 12 uses
  %i.gt = mul nsw i64 %indvars.iv327, %i.gs
  %i.gu = getelementptr [4 x i8], ptr %i.o, i64 %i.gt
  %8 = sext i32 %i.fl to i64                      ; 6 uses
  %sext289 = sext i32 %i.fp to i64                ; 4 uses
  %wide.trip.count317 = zext nneg i32 %i.gp to i64
  %i.gv = sub nsw i64 %sext289, %8                ; 2 uses
  %i.gw = xor i64 %8, -1
  %i.gx = add nsw i64 %i.gw, %sext289             ; 2 uses
  %xtraiter473 = and i64 %i.gv, 3                 ; 2 uses
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  %i.gy = icmp ult i64 %i.gx, 3
  %xtraiter478 = and i64 %i.gv, 3                 ; 2 uses
  %lcmp.mod479.not = icmp eq i64 %xtraiter478, 0
  %i.gz = icmp ult i64 %i.gx, 3
  br label %bb.d

._crit_edge232:                                   ; preds = %.preheader222.new, %.prol.loopexit
  %indvars.iv.next285 = add nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.ha = icmp slt i64 %indvars.iv.next285, %sext
  br i1 %i.ha, label %.preheader222, label %._crit_edge234.split

.preheader222.new:                                ; preds = %.prol.loopexit, %.preheader222.new
  %indvars.iv279 = phi i64 [ %indvars.iv.next280.3, %.preheader222.new ], [ %indvars.iv279.unr, %.prol.loopexit ] ; 5 uses
  %i.hb = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv279
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !111
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, 2.560000e+02
  %i.he = fpext reassoc nsz arcp contract afn float %i.hd to double
  %i.hf = fadd reassoc nsz arcp contract afn double %i.he, 5.000000e-01
  %i.hg = fptoui double %i.hf to i32
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hh ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !112
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !112
  %i.hl = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv279
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !111
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, 2.560000e+02
  %i.hp = fpext reassoc nsz arcp contract afn float %i.ho to double
  %i.hq = fadd reassoc nsz arcp contract afn double %i.hp, 5.000000e-01
  %i.hr = fptoui double %i.hq to i32
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !112
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !112
  %i.hw = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv279
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !111
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, 2.560000e+02
  %i.ia = fpext reassoc nsz arcp contract afn float %i.hz to double
  %i.ib = fadd reassoc nsz arcp contract afn double %i.ia, 5.000000e-01
  %i.ic = fptoui double %i.ib to i32
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.id ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !112
  %i.ig = add nsw i32 %i.if, 1
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !112
  %i.ih = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv279
  %i.ii = getelementptr i8, ptr %i.ih, i64 12
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !111
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, 2.560000e+02
  %i.il = fpext reassoc nsz arcp contract afn float %i.ik to double
  %i.im = fadd reassoc nsz arcp contract afn double %i.il, 5.000000e-01
  %i.in = fptoui double %i.im to i32
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !112
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !112
  %indvars.iv.next280.3 = add nsw i64 %indvars.iv279, 4 ; 2 uses
  %exitcond283.not.3 = icmp eq i64 %indvars.iv.next280.3, %wide.trip.count281
  br i1 %exitcond283.not.3, label %._crit_edge232, label %.preheader222.new

.lr.ph267.preheader:                              ; preds = %._crit_edge254
  %i.is = mul nsw i64 %indvars.iv327, %i.as
  %i.it = zext nneg i32 %i.gp to i64
  %i.iu = mul i64 %i.is, %i.it                    ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.iu
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.iu
  %wide.trip.count325 = zext nneg i32 %i.gp to i64
  br label %.lr.ph267

bb.d:                                             ; preds = %.lr.ph259, %._crit_edge254
  %indvars.iv317 = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next318, %._crit_edge254 ] ; 4 uses
  %.0187256 = phi ptr [ %i.ag, %.lr.ph259 ], [ %i.ww, %._crit_edge254 ] ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %i.gu, i64 %indvars.iv317
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !111
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, 2.560000e+02
  %i.ja = fpext reassoc nsz arcp contract afn float %i.iz to double
  %i.jb = fadd reassoc nsz arcp contract afn double %i.ja, 5.000000e-01
  %i.jc = fptoui double %i.jb to i32              ; 5 uses
  %i.jd = trunc i64 %indvars.iv317 to i32
  %i.je = sub i32 %i.jd, %i.ab
  %i.jf = sitofp reassoc nsz arcp contract afn i32 %i.je to double
  %i.jg = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.jf, double 0.000000e+00)
  %i.jh = fptosi double %i.jg to i32              ; 3 uses
  %i.ji = add nsw i64 %indvars.iv317, %i.at       ; 3 uses
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = add i32 %i.jj, 1
  %i.jl = tail call i32 @llvm.smin.i32(i32 %i.gr, i32 %i.jk)
  %i.jm = sub i32 %i.jl, %i.jh
  %i.jn = mul nsw i32 %i.fq, %i.jm
  %i.jo = sitofp reassoc nsz arcp contract afn i32 %i.jn to float
  %i.jp = fmul reassoc nsz arcp contract afn float %i.ar, %i.jo
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jp, 5.000000e-01
  %i.jr = fptosi float %i.jq to i32               ; 3 uses
  %9 = icmp slt i32 %i.jh, 1
  %brmerge = or i1 %9, %i.fu
  br i1 %brmerge, label %.loopexit221, label %.lr.ph236.a

.lr.ph236.a:                                      ; preds = %bb.d
  %i.js = zext nneg i32 %i.jh to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.o, i64 %i.js ; 5 uses
  br i1 %lcmp.mod474.not, label %.prol.loopexit472, label %.prol.preheader471

.prol.preheader471:                               ; preds = %.lr.ph236.a, %.prol.preheader471
  %indvars.iv287.prol = phi i64 [ %indvars.iv.next288.prol, %.prol.preheader471 ], [ %8, %.lr.ph236.a ] ; 2 uses
  %prol.iter475 = phi i64 [ %prol.iter475.next, %.prol.preheader471 ], [ 0, %.lr.ph236.a ]
  %i.jt = mul nsw i64 %indvars.iv287.prol, %i.gs
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jt
  %i.ju = getelementptr i8, ptr %gep.prol, i64 -4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !111
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, 2.560000e+02
  %i.jx = fpext reassoc nsz arcp contract afn float %i.jw to double
  %i.jy = fadd reassoc nsz arcp contract afn double %i.jx, 5.000000e-01
  %i.jz = fptoui double %i.jy to i32
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !112
  %i.kd = add nsw i32 %i.kc, -1
  store i32 %i.kd, ptr %i.kb, align 4, !tbaa !112
  %indvars.iv.next288.prol = add nsw i64 %indvars.iv287.prol, 1 ; 2 uses
  %prol.iter475.next = add i64 %prol.iter475, 1   ; 2 uses
  %prol.iter475.cmp.not = icmp eq i64 %prol.iter475.next, %xtraiter473
  br i1 %prol.iter475.cmp.not, label %.prol.loopexit472, label %.prol.preheader471, !llvm.loop !94

.prol.loopexit472:                                ; preds = %.prol.preheader471, %.lr.ph236.a
  %indvars.iv287.unr = phi i64 [ %8, %.lr.ph236.a ], [ %indvars.iv.next288.prol, %.prol.preheader471 ]
  br i1 %i.gy, label %.loopexit221, label %.lr.ph236.new.a

.lr.ph236.new.a:                                  ; preds = %.prol.loopexit472, %.lr.ph236.new.a
  %indvars.iv287 = phi i64 [ %indvars.iv.next288.3, %.lr.ph236.new.a ], [ %indvars.iv287.unr, %.prol.loopexit472 ] ; 5 uses
  %i.ke = mul nsw i64 %indvars.iv287, %i.gs
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ke
  %i.kf = getelementptr i8, ptr %gep, i64 -4
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !111
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, 2.560000e+02
  %i.ki = fpext reassoc nsz arcp contract afn float %i.kh to double
  %i.kj = fadd reassoc nsz arcp contract afn double %i.ki, 5.000000e-01
  %i.kk = fptoui double %i.kj to i32
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kl ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !112
  %i.ko = add nsw i32 %i.kn, -1
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !112
  %indvars.iv.next288 = add nsw i64 %indvars.iv287, 1
  %i.kp = mul nsw i64 %indvars.iv.next288, %i.gs
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kp
  %i.kq = getelementptr i8, ptr %gep.1, i64 -4
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !111
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kr, 2.560000e+02
  %i.kt = fpext reassoc nsz arcp contract afn float %i.ks to double
  %i.ku = fadd reassoc nsz arcp contract afn double %i.kt, 5.000000e-01
  %i.kv = fptoui double %i.ku to i32
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kw ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !112
  %i.kz = add nsw i32 %i.ky, -1
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !112
  %indvars.iv.next288.1 = add nsw i64 %indvars.iv287, 2
  %i.la = mul nsw i64 %indvars.iv.next288.1, %i.gs
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.la
  %i.lb = getelementptr i8, ptr %gep.2, i64 -4
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !111
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, 2.560000e+02
  %i.le = fpext reassoc nsz arcp contract afn float %i.ld to double
  %i.lf = fadd reassoc nsz arcp contract afn double %i.le, 5.000000e-01
  %i.lg = fptoui double %i.lf to i32
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !112
  %i.lk = add nsw i32 %i.lj, -1
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !112
  %indvars.iv.next288.2 = add nsw i64 %indvars.iv287, 3
  %i.ll = mul nsw i64 %indvars.iv.next288.2, %i.gs
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ll
  %i.lm = getelementptr i8, ptr %gep.3, i64 -4
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !111
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, 2.560000e+02
  %i.lp = fpext reassoc nsz arcp contract afn float %i.lo to double
  %i.lq = fadd reassoc nsz arcp contract afn double %i.lp, 5.000000e-01
  %i.lr = fptoui double %i.lq to i32
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ls ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !112
  %i.lv = add nsw i32 %i.lu, -1
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !112
  %indvars.iv.next288.3 = add nsw i64 %indvars.iv287, 4 ; 2 uses
  %i.lw = icmp slt i64 %indvars.iv.next288.3, %sext289
  br i1 %i.lw, label %.lr.ph236.new.a, label %.loopexit221

.loopexit221:                                     ; preds = %.prol.loopexit472, %.lr.ph236.new.a, %bb.d
  %.not202.not = icmp sge i64 %i.ji, %i.gs
  %brmerge275 = or i1 %.not202.not, %i.fu
  br i1 %brmerge275, label %.loopexit219, label %.lr.ph238

.lr.ph238:                                        ; preds = %.loopexit221
  %invariant.gep239 = getelementptr [4 x i8], ptr %i.o, i64 %i.ji ; 5 uses
  br i1 %lcmp.mod479.not, label %.prol.loopexit477, label %.prol.preheader476

.prol.preheader476:                               ; preds = %.lr.ph238, %.prol.preheader476
  %indvars.iv291.prol = phi i64 [ %indvars.iv.next292.prol, %.prol.preheader476 ], [ %8, %.lr.ph238 ] ; 2 uses
  %prol.iter480 = phi i64 [ %prol.iter480.next, %.prol.preheader476 ], [ 0, %.lr.ph238 ]
  %i.lx = mul nsw i64 %indvars.iv291.prol, %i.gs
  %gep240.prol = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.lx
  %i.ly = load float, ptr %gep240.prol, align 4, !tbaa !111
  %i.lz = fmul reassoc nsz arcp contract afn float %i.ly, 2.560000e+02
  %i.ma = fpext reassoc nsz arcp contract afn float %i.lz to double
  %i.mb = fadd reassoc nsz arcp contract afn double %i.ma, 5.000000e-01
  %i.mc = fptoui double %i.mb to i32
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !112
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !112
  %indvars.iv.next292.prol = add nsw i64 %indvars.iv291.prol, 1 ; 2 uses
  %prol.iter480.next = add i64 %prol.iter480, 1   ; 2 uses
  %prol.iter480.cmp.not = icmp eq i64 %prol.iter480.next, %xtraiter478
  br i1 %prol.iter480.cmp.not, label %.prol.loopexit477, label %.prol.preheader476, !llvm.loop !95

.prol.loopexit477:                                ; preds = %.prol.preheader476, %.lr.ph238
  %indvars.iv291.unr = phi i64 [ %8, %.lr.ph238 ], [ %indvars.iv.next292.prol, %.prol.preheader476 ]
  br i1 %i.gz, label %.loopexit219, label %.lr.ph238.new

.lr.ph238.new:                                    ; preds = %.prol.loopexit477, %.lr.ph238.new
  %indvars.iv291 = phi i64 [ %indvars.iv.next292.3, %.lr.ph238.new ], [ %indvars.iv291.unr, %.prol.loopexit477 ] ; 5 uses
  %i.mh = mul nsw i64 %indvars.iv291, %i.gs
  %gep240 = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.mh
  %i.mi = load float, ptr %gep240, align 4, !tbaa !111
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mi, 2.560000e+02
  %i.mk = fpext reassoc nsz arcp contract afn float %i.mj to double
  %i.ml = fadd reassoc nsz arcp contract afn double %i.mk, 5.000000e-01
  %i.mm = fptoui double %i.ml to i32
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !112
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !112
  %indvars.iv.next292 = add nsw i64 %indvars.iv291, 1
  %i.mr = mul nsw i64 %indvars.iv.next292, %i.gs
  %gep240.1 = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.mr
  %i.ms = load float, ptr %gep240.1, align 4, !tbaa !111
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, 2.560000e+02
  %i.mu = fpext reassoc nsz arcp contract afn float %i.mt to double
  %i.mv = fadd reassoc nsz arcp contract afn double %i.mu, 5.000000e-01
  %i.mw = fptoui double %i.mv to i32
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mx ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !112
  %i.na = add nsw i32 %i.mz, 1
  store i32 %i.na, ptr %i.my, align 4, !tbaa !112
  %indvars.iv.next292.1 = add nsw i64 %indvars.iv291, 2
  %i.nb = mul nsw i64 %indvars.iv.next292.1, %i.gs
  %gep240.2 = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.nb
  %i.nc = load float, ptr %gep240.2, align 4, !tbaa !111
  %i.nd = fmul reassoc nsz arcp contract afn float %i.nc, 2.560000e+02
  %i.ne = fpext reassoc nsz arcp contract afn float %i.nd to double
  %i.nf = fadd reassoc nsz arcp contract afn double %i.ne, 5.000000e-01
  %i.ng = fptoui double %i.nf to i32
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nh ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !112
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !112
  %indvars.iv.next292.2 = add nsw i64 %indvars.iv291, 3
  %i.nl = mul nsw i64 %indvars.iv.next292.2, %i.gs
  %gep240.3 = getelementptr [4 x i8], ptr %invariant.gep239, i64 %i.nl
  %i.nm = load float, ptr %gep240.3, align 4, !tbaa !111
  %i.nn = fmul reassoc nsz arcp contract afn float %i.nm, 2.560000e+02
  %i.no = fpext reassoc nsz arcp contract afn float %i.nn to double
  %i.np = fadd reassoc nsz arcp contract afn double %i.no, 5.000000e-01
  %i.nq = fptoui double %i.np to i32
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nr ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !112
  %i.nu = add nsw i32 %i.nt, 1
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !112
  %indvars.iv.next292.3 = add nsw i64 %indvars.iv291, 4 ; 2 uses
  %i.nv = icmp slt i64 %indvars.iv.next292.3, %sext289
  br i1 %i.nv, label %.lr.ph238.new, label %.loopexit219

.loopexit219:                                     ; preds = %.prol.loopexit477, %.lr.ph238.new, %.loopexit221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.b, ptr noundef nonnull align 16 dereferenceable(1028) %i.a, i64 1028, i1 false)
  %broadcast.splatinsert439 = insertelement <8 x i32> poison, i32 %i.jr, i64 0
  %broadcast.splat440 = shufflevector <8 x i32> %broadcast.splatinsert439, <8 x i32> poison, <8 x i32> zeroinitializer ; 64 uses
  br label %vector.ph438

vector.ph438:                                     ; preds = %.loopexit219, %.loopexit
  %.0182 = phi i32 [ 0, %.loopexit219 ], [ %.2, %.loopexit ]
  %wide.load447.a = load <8 x i32>, ptr %i.b, align 16, !tbaa !112
  %wide.load448 = load <8 x i32>, ptr %i.au, align 16, !tbaa !112
  %wide.load449 = load <8 x i32>, ptr %i.av, align 16, !tbaa !112
  %wide.load450 = load <8 x i32>, ptr %i.aw, align 16, !tbaa !112
  %i.nw = sub nsw <8 x i32> %wide.load447.a, %broadcast.splat440 ; 2 uses
  %i.nx = sub nsw <8 x i32> %wide.load448, %broadcast.splat440 ; 2 uses
  %i.ny = sub nsw <8 x i32> %wide.load449, %broadcast.splat440 ; 2 uses
  %i.nz = sub nsw <8 x i32> %wide.load450, %broadcast.splat440 ; 2 uses
  %i.oa = icmp sgt <8 x i32> %i.nw, zeroinitializer
  %i.ob = icmp sgt <8 x i32> %i.nx, zeroinitializer
  %i.oc = icmp sgt <8 x i32> %i.ny, zeroinitializer
  %i.od = icmp sgt <8 x i32> %i.nz, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.b, <8 x i1> %i.oa), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.au, <8 x i1> %i.ob), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.av, <8 x i1> %i.oc), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.aw, <8 x i1> %i.od), !tbaa !112
  %i.oe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nw, <8 x i32> zeroinitializer)
  %i.of = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nx, <8 x i32> zeroinitializer)
  %i.og = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ny, <8 x i32> zeroinitializer)
  %i.oh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nz, <8 x i32> zeroinitializer)
  %wide.load447.1.a = load <8 x i32>, ptr %i.ax, align 16, !tbaa !112
  %wide.load448.1 = load <8 x i32>, ptr %i.ay, align 16, !tbaa !112
  %wide.load449.1 = load <8 x i32>, ptr %i.az, align 16, !tbaa !112
  %wide.load450.1 = load <8 x i32>, ptr %i.ba, align 16, !tbaa !112
  %i.oi = sub nsw <8 x i32> %wide.load447.1.a, %broadcast.splat440 ; 2 uses
  %i.oj = sub nsw <8 x i32> %wide.load448.1, %broadcast.splat440 ; 2 uses
  %i.ok = sub nsw <8 x i32> %wide.load449.1, %broadcast.splat440 ; 2 uses
  %i.ol = sub nsw <8 x i32> %wide.load450.1, %broadcast.splat440 ; 2 uses
  %i.om = icmp sgt <8 x i32> %i.oi, zeroinitializer
  %i.on = icmp sgt <8 x i32> %i.oj, zeroinitializer
  %i.oo = icmp sgt <8 x i32> %i.ok, zeroinitializer
  %i.op = icmp sgt <8 x i32> %i.ol, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.ax, <8 x i1> %i.om), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.ay, <8 x i1> %i.on), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.az, <8 x i1> %i.oo), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.ba, <8 x i1> %i.op), !tbaa !112
  %i.oq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.oi, <8 x i32> zeroinitializer)
  %predphi.1 = add nuw <8 x i32> %i.oe, %i.oq
  %i.or = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.oj, <8 x i32> zeroinitializer)
  %predphi451.1 = add nuw <8 x i32> %i.of, %i.or
  %i.os = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ok, <8 x i32> zeroinitializer)
  %predphi452.1 = add nuw <8 x i32> %i.og, %i.os
  %i.ot = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ol, <8 x i32> zeroinitializer)
  %predphi453.1 = add nuw <8 x i32> %i.oh, %i.ot
  %wide.load447.2.a = load <8 x i32>, ptr %i.bb, align 16, !tbaa !112
  %wide.load448.2 = load <8 x i32>, ptr %i.bc, align 16, !tbaa !112
  %wide.load449.2 = load <8 x i32>, ptr %i.bd, align 16, !tbaa !112
  %wide.load450.2 = load <8 x i32>, ptr %i.be, align 16, !tbaa !112
  %i.ou = sub nsw <8 x i32> %wide.load447.2.a, %broadcast.splat440 ; 2 uses
  %i.ov = sub nsw <8 x i32> %wide.load448.2, %broadcast.splat440 ; 2 uses
  %i.ow = sub nsw <8 x i32> %wide.load449.2, %broadcast.splat440 ; 2 uses
  %i.ox = sub nsw <8 x i32> %wide.load450.2, %broadcast.splat440 ; 2 uses
  %i.oy = icmp sgt <8 x i32> %i.ou, zeroinitializer
  %i.oz = icmp sgt <8 x i32> %i.ov, zeroinitializer
  %i.pa = icmp sgt <8 x i32> %i.ow, zeroinitializer
  %i.pb = icmp sgt <8 x i32> %i.ox, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bb, <8 x i1> %i.oy), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bc, <8 x i1> %i.oz), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bd, <8 x i1> %i.pa), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.be, <8 x i1> %i.pb), !tbaa !112
  %i.pc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ou, <8 x i32> zeroinitializer)
  %predphi.2 = add <8 x i32> %predphi.1, %i.pc
  %i.pd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ov, <8 x i32> zeroinitializer)
  %predphi451.2 = add <8 x i32> %predphi451.1, %i.pd
  %i.pe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ow, <8 x i32> zeroinitializer)
  %predphi452.2 = add <8 x i32> %predphi452.1, %i.pe
  %i.pf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ox, <8 x i32> zeroinitializer)
  %predphi453.2 = add <8 x i32> %predphi453.1, %i.pf
  %wide.load447.3.a = load <8 x i32>, ptr %i.bf, align 16, !tbaa !112
  %wide.load448.3 = load <8 x i32>, ptr %i.bg, align 16, !tbaa !112
  %wide.load449.3 = load <8 x i32>, ptr %i.bh, align 16, !tbaa !112
  %wide.load450.3 = load <8 x i32>, ptr %i.bi, align 16, !tbaa !112
  %i.pg = sub nsw <8 x i32> %wide.load447.3.a, %broadcast.splat440 ; 2 uses
  %i.ph = sub nsw <8 x i32> %wide.load448.3, %broadcast.splat440 ; 2 uses
  %i.pi = sub nsw <8 x i32> %wide.load449.3, %broadcast.splat440 ; 2 uses
  %i.pj = sub nsw <8 x i32> %wide.load450.3, %broadcast.splat440 ; 2 uses
  %i.pk = icmp sgt <8 x i32> %i.pg, zeroinitializer
  %i.pl = icmp sgt <8 x i32> %i.ph, zeroinitializer
  %i.pm = icmp sgt <8 x i32> %i.pi, zeroinitializer
  %i.pn = icmp sgt <8 x i32> %i.pj, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bf, <8 x i1> %i.pk), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bg, <8 x i1> %i.pl), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bh, <8 x i1> %i.pm), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bi, <8 x i1> %i.pn), !tbaa !112
  %i.po = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pg, <8 x i32> zeroinitializer)
  %predphi.3 = add <8 x i32> %predphi.2, %i.po
  %i.pp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ph, <8 x i32> zeroinitializer)
  %predphi451.3 = add <8 x i32> %predphi451.2, %i.pp
  %i.pq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pi, <8 x i32> zeroinitializer)
  %predphi452.3 = add <8 x i32> %predphi452.2, %i.pq
  %i.pr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pj, <8 x i32> zeroinitializer)
  %predphi453.3 = add <8 x i32> %predphi453.2, %i.pr
  %wide.load447.4.a = load <8 x i32>, ptr %i.bj, align 16, !tbaa !112
  %wide.load448.4 = load <8 x i32>, ptr %i.bk, align 16, !tbaa !112
  %wide.load449.4 = load <8 x i32>, ptr %i.bl, align 16, !tbaa !112
  %wide.load450.4 = load <8 x i32>, ptr %i.bm, align 16, !tbaa !112
  %i.ps = sub nsw <8 x i32> %wide.load447.4.a, %broadcast.splat440 ; 2 uses
  %i.pt = sub nsw <8 x i32> %wide.load448.4, %broadcast.splat440 ; 2 uses
  %i.pu = sub nsw <8 x i32> %wide.load449.4, %broadcast.splat440 ; 2 uses
  %i.pv = sub nsw <8 x i32> %wide.load450.4, %broadcast.splat440 ; 2 uses
  %i.pw = icmp sgt <8 x i32> %i.ps, zeroinitializer
  %i.px = icmp sgt <8 x i32> %i.pt, zeroinitializer
  %i.py = icmp sgt <8 x i32> %i.pu, zeroinitializer
  %i.pz = icmp sgt <8 x i32> %i.pv, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bj, <8 x i1> %i.pw), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bk, <8 x i1> %i.px), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bl, <8 x i1> %i.py), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bm, <8 x i1> %i.pz), !tbaa !112
  %i.qa = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ps, <8 x i32> zeroinitializer)
  %predphi.4 = add <8 x i32> %predphi.3, %i.qa
  %i.qb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pt, <8 x i32> zeroinitializer)
  %predphi451.4 = add <8 x i32> %predphi451.3, %i.qb
  %i.qc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pu, <8 x i32> zeroinitializer)
  %predphi452.4 = add <8 x i32> %predphi452.3, %i.qc
  %i.qd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pv, <8 x i32> zeroinitializer)
  %predphi453.4 = add <8 x i32> %predphi453.3, %i.qd
  %wide.load447.5.a = load <8 x i32>, ptr %i.bn, align 16, !tbaa !112
  %wide.load448.5 = load <8 x i32>, ptr %i.bo, align 16, !tbaa !112
  %wide.load449.5 = load <8 x i32>, ptr %i.bp, align 16, !tbaa !112
  %wide.load450.5 = load <8 x i32>, ptr %i.bq, align 16, !tbaa !112
  %i.qe = sub nsw <8 x i32> %wide.load447.5.a, %broadcast.splat440 ; 2 uses
  %i.qf = sub nsw <8 x i32> %wide.load448.5, %broadcast.splat440 ; 2 uses
  %i.qg = sub nsw <8 x i32> %wide.load449.5, %broadcast.splat440 ; 2 uses
  %i.qh = sub nsw <8 x i32> %wide.load450.5, %broadcast.splat440 ; 2 uses
  %i.qi = icmp sgt <8 x i32> %i.qe, zeroinitializer
  %i.qj = icmp sgt <8 x i32> %i.qf, zeroinitializer
  %i.qk = icmp sgt <8 x i32> %i.qg, zeroinitializer
  %i.ql = icmp sgt <8 x i32> %i.qh, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bn, <8 x i1> %i.qi), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bo, <8 x i1> %i.qj), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bp, <8 x i1> %i.qk), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bq, <8 x i1> %i.ql), !tbaa !112
  %i.qm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qe, <8 x i32> zeroinitializer)
  %predphi.5 = add <8 x i32> %predphi.4, %i.qm
  %i.qn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qf, <8 x i32> zeroinitializer)
  %predphi451.5 = add <8 x i32> %predphi451.4, %i.qn
  %i.qo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qg, <8 x i32> zeroinitializer)
  %predphi452.5 = add <8 x i32> %predphi452.4, %i.qo
  %i.qp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qh, <8 x i32> zeroinitializer)
  %predphi453.5 = add <8 x i32> %predphi453.4, %i.qp
  %wide.load447.6.a = load <8 x i32>, ptr %i.br, align 16, !tbaa !112
  %wide.load448.6 = load <8 x i32>, ptr %i.bs, align 16, !tbaa !112
  %wide.load449.6 = load <8 x i32>, ptr %i.bt, align 16, !tbaa !112
  %wide.load450.6 = load <8 x i32>, ptr %i.bu, align 16, !tbaa !112
  %i.qq = sub nsw <8 x i32> %wide.load447.6.a, %broadcast.splat440 ; 2 uses
  %i.qr = sub nsw <8 x i32> %wide.load448.6, %broadcast.splat440 ; 2 uses
  %i.qs = sub nsw <8 x i32> %wide.load449.6, %broadcast.splat440 ; 2 uses
  %i.qt = sub nsw <8 x i32> %wide.load450.6, %broadcast.splat440 ; 2 uses
  %i.qu = icmp sgt <8 x i32> %i.qq, zeroinitializer
  %i.qv = icmp sgt <8 x i32> %i.qr, zeroinitializer
  %i.qw = icmp sgt <8 x i32> %i.qs, zeroinitializer
  %i.qx = icmp sgt <8 x i32> %i.qt, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.br, <8 x i1> %i.qu), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bs, <8 x i1> %i.qv), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bt, <8 x i1> %i.qw), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bu, <8 x i1> %i.qx), !tbaa !112
  %i.qy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qq, <8 x i32> zeroinitializer)
  %predphi.6 = add <8 x i32> %predphi.5, %i.qy
  %i.qz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qr, <8 x i32> zeroinitializer)
  %predphi451.6 = add <8 x i32> %predphi451.5, %i.qz
  %i.ra = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qs, <8 x i32> zeroinitializer)
  %predphi452.6 = add <8 x i32> %predphi452.5, %i.ra
  %i.rb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qt, <8 x i32> zeroinitializer)
  %predphi453.6 = add <8 x i32> %predphi453.5, %i.rb
  %wide.load447.7.a = load <8 x i32>, ptr %i.bv, align 16, !tbaa !112
  %wide.load448.7 = load <8 x i32>, ptr %i.bw, align 16, !tbaa !112
  %wide.load449.7 = load <8 x i32>, ptr %i.bx, align 16, !tbaa !112
  %wide.load450.7 = load <8 x i32>, ptr %i.by, align 16, !tbaa !112
  %i.rc = sub nsw <8 x i32> %wide.load447.7.a, %broadcast.splat440 ; 2 uses
  %i.rd = sub nsw <8 x i32> %wide.load448.7, %broadcast.splat440 ; 2 uses
  %i.re = sub nsw <8 x i32> %wide.load449.7, %broadcast.splat440 ; 2 uses
  %i.rf = sub nsw <8 x i32> %wide.load450.7, %broadcast.splat440 ; 2 uses
  %i.rg = icmp sgt <8 x i32> %i.rc, zeroinitializer
  %i.rh = icmp sgt <8 x i32> %i.rd, zeroinitializer
  %i.ri = icmp sgt <8 x i32> %i.re, zeroinitializer
  %i.rj = icmp sgt <8 x i32> %i.rf, zeroinitializer
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bv, <8 x i1> %i.rg), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bw, <8 x i1> %i.rh), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.bx, <8 x i1> %i.ri), !tbaa !112
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat440, ptr align 16 %i.by, <8 x i1> %i.rj), !tbaa !112
  %i.rk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rc, <8 x i32> zeroinitializer)
  %predphi.7 = add <8 x i32> %predphi.6, %i.rk
  %i.rl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rd, <8 x i32> zeroinitializer)
  %predphi451.7 = add <8 x i32> %predphi451.6, %i.rl
  %i.rm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.re, <8 x i32> zeroinitializer)
  %predphi452.7 = add <8 x i32> %predphi452.6, %i.rm
  %i.rn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rf, <8 x i32> zeroinitializer)
  %predphi453.7 = add <8 x i32> %predphi453.6, %i.rn
  %bin.rdx456 = add <8 x i32> %predphi451.7, %predphi.7
  %bin.rdx457 = add <8 x i32> %predphi452.7, %bin.rdx456
  %bin.rdx458 = add <8 x i32> %predphi453.7, %bin.rdx457
  %i.ro = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx458) ; 2 uses
  %i.rp = load i32, ptr %i.bz, align 16, !tbaa !112
  %i.rq = sub nsw i32 %i.rp, %i.jr                ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, 0
  br i1 %i.rr, label %bb.e, label %vector.ph428

bb.e:                                             ; preds = %vector.ph438
  %i.rs = add nuw nsw i32 %i.rq, %i.ro
  store i32 %i.jr, ptr %i.bz, align 16, !tbaa !112
  br label %vector.ph428

vector.ph428:                                     ; preds = %bb.e, %vector.ph438
  %.2 = phi i32 [ %i.rs, %bb.e ], [ %i.ro, %vector.ph438 ] ; 4 uses
  %i.rt = uitofp nneg i32 %.2 to float
  %i.ru = fmul reassoc nsz arcp contract afn float %i.rt, f0x3B7F00FF
  %i.rv = fptosi float %i.ru to i32               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.rv, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 32 uses
  %wide.load431.a = load <8 x i32>, ptr %i.b, align 16, !tbaa !112
  %wide.load432 = load <8 x i32>, ptr %i.ca, align 16, !tbaa !112
  %wide.load433 = load <8 x i32>, ptr %i.cb, align 16, !tbaa !112
  %wide.load434 = load <8 x i32>, ptr %i.cc, align 16, !tbaa !112
  %i.rw = add nsw <8 x i32> %wide.load431.a, %broadcast.splat
  %i.rx = add nsw <8 x i32> %wide.load432, %broadcast.splat
  %i.ry = add nsw <8 x i32> %wide.load433, %broadcast.splat
  %i.rz = add nsw <8 x i32> %wide.load434, %broadcast.splat
  store <8 x i32> %i.rw, ptr %i.b, align 16, !tbaa !112
  store <8 x i32> %i.rx, ptr %i.ca, align 16, !tbaa !112
  store <8 x i32> %i.ry, ptr %i.cb, align 16, !tbaa !112
  store <8 x i32> %i.rz, ptr %i.cc, align 16, !tbaa !112
  %wide.load431.1.a = load <8 x i32>, ptr %i.cd, align 16, !tbaa !112
  %wide.load432.1 = load <8 x i32>, ptr %i.ce, align 16, !tbaa !112
  %wide.load433.1 = load <8 x i32>, ptr %i.cf, align 16, !tbaa !112
  %wide.load434.1 = load <8 x i32>, ptr %i.cg, align 16, !tbaa !112
  %i.sa = add nsw <8 x i32> %wide.load431.1.a, %broadcast.splat
  %i.sb = add nsw <8 x i32> %wide.load432.1, %broadcast.splat
  %i.sc = add nsw <8 x i32> %wide.load433.1, %broadcast.splat
  %i.sd = add nsw <8 x i32> %wide.load434.1, %broadcast.splat
  store <8 x i32> %i.sa, ptr %i.cd, align 16, !tbaa !112
  store <8 x i32> %i.sb, ptr %i.ce, align 16, !tbaa !112
  store <8 x i32> %i.sc, ptr %i.cf, align 16, !tbaa !112
  store <8 x i32> %i.sd, ptr %i.cg, align 16, !tbaa !112
  %wide.load431.2.a = load <8 x i32>, ptr %i.ch, align 16, !tbaa !112
  %wide.load432.2 = load <8 x i32>, ptr %i.ci, align 16, !tbaa !112
  %wide.load433.2 = load <8 x i32>, ptr %i.cj, align 16, !tbaa !112
  %wide.load434.2 = load <8 x i32>, ptr %i.ck, align 16, !tbaa !112
  %i.se = add nsw <8 x i32> %wide.load431.2.a, %broadcast.splat
  %i.sf = add nsw <8 x i32> %wide.load432.2, %broadcast.splat
  %i.sg = add nsw <8 x i32> %wide.load433.2, %broadcast.splat
  %i.sh = add nsw <8 x i32> %wide.load434.2, %broadcast.splat
  store <8 x i32> %i.se, ptr %i.ch, align 16, !tbaa !112
  store <8 x i32> %i.sf, ptr %i.ci, align 16, !tbaa !112
  store <8 x i32> %i.sg, ptr %i.cj, align 16, !tbaa !112
  store <8 x i32> %i.sh, ptr %i.ck, align 16, !tbaa !112
  %wide.load431.3.a = load <8 x i32>, ptr %i.cl, align 16, !tbaa !112
  %wide.load432.3 = load <8 x i32>, ptr %i.cm, align 16, !tbaa !112
  %wide.load433.3 = load <8 x i32>, ptr %i.cn, align 16, !tbaa !112
  %wide.load434.3 = load <8 x i32>, ptr %i.co, align 16, !tbaa !112
  %i.si = add nsw <8 x i32> %wide.load431.3.a, %broadcast.splat
  %i.sj = add nsw <8 x i32> %wide.load432.3, %broadcast.splat
  %i.sk = add nsw <8 x i32> %wide.load433.3, %broadcast.splat
  %i.sl = add nsw <8 x i32> %wide.load434.3, %broadcast.splat
  store <8 x i32> %i.si, ptr %i.cl, align 16, !tbaa !112
  store <8 x i32> %i.sj, ptr %i.cm, align 16, !tbaa !112
  store <8 x i32> %i.sk, ptr %i.cn, align 16, !tbaa !112
  store <8 x i32> %i.sl, ptr %i.co, align 16, !tbaa !112
  %wide.load431.4.a = load <8 x i32>, ptr %i.cp, align 16, !tbaa !112
  %wide.load432.4 = load <8 x i32>, ptr %i.cq, align 16, !tbaa !112
  %wide.load433.4 = load <8 x i32>, ptr %i.cr, align 16, !tbaa !112
  %wide.load434.4 = load <8 x i32>, ptr %i.cs, align 16, !tbaa !112
  %i.sm = add nsw <8 x i32> %wide.load431.4.a, %broadcast.splat
  %i.sn = add nsw <8 x i32> %wide.load432.4, %broadcast.splat
  %i.so = add nsw <8 x i32> %wide.load433.4, %broadcast.splat
  %i.sp = add nsw <8 x i32> %wide.load434.4, %broadcast.splat
  store <8 x i32> %i.sm, ptr %i.cp, align 16, !tbaa !112
  store <8 x i32> %i.sn, ptr %i.cq, align 16, !tbaa !112
  store <8 x i32> %i.so, ptr %i.cr, align 16, !tbaa !112
  store <8 x i32> %i.sp, ptr %i.cs, align 16, !tbaa !112
  %wide.load431.5.a = load <8 x i32>, ptr %i.ct, align 16, !tbaa !112
  %wide.load432.5 = load <8 x i32>, ptr %i.cu, align 16, !tbaa !112
  %wide.load433.5 = load <8 x i32>, ptr %i.cv, align 16, !tbaa !112
  %wide.load434.5 = load <8 x i32>, ptr %i.cw, align 16, !tbaa !112
  %i.sq = add nsw <8 x i32> %wide.load431.5.a, %broadcast.splat
  %i.sr = add nsw <8 x i32> %wide.load432.5, %broadcast.splat
  %i.ss = add nsw <8 x i32> %wide.load433.5, %broadcast.splat
  %i.st = add nsw <8 x i32> %wide.load434.5, %broadcast.splat
  store <8 x i32> %i.sq, ptr %i.ct, align 16, !tbaa !112
  store <8 x i32> %i.sr, ptr %i.cu, align 16, !tbaa !112
  store <8 x i32> %i.ss, ptr %i.cv, align 16, !tbaa !112
  store <8 x i32> %i.st, ptr %i.cw, align 16, !tbaa !112
  %wide.load431.6.a = load <8 x i32>, ptr %i.cx, align 16, !tbaa !112
  %wide.load432.6 = load <8 x i32>, ptr %i.cy, align 16, !tbaa !112
  %wide.load433.6 = load <8 x i32>, ptr %i.cz, align 16, !tbaa !112
  %wide.load434.6 = load <8 x i32>, ptr %i.da, align 16, !tbaa !112
  %i.su = add nsw <8 x i32> %wide.load431.6.a, %broadcast.splat
  %i.sv = add nsw <8 x i32> %wide.load432.6, %broadcast.splat
  %i.sw = add nsw <8 x i32> %wide.load433.6, %broadcast.splat
  %i.sx = add nsw <8 x i32> %wide.load434.6, %broadcast.splat
  store <8 x i32> %i.su, ptr %i.cx, align 16, !tbaa !112
  store <8 x i32> %i.sv, ptr %i.cy, align 16, !tbaa !112
  store <8 x i32> %i.sw, ptr %i.cz, align 16, !tbaa !112
  store <8 x i32> %i.sx, ptr %i.da, align 16, !tbaa !112
  %wide.load431.7.a = load <8 x i32>, ptr %i.db, align 16, !tbaa !112
  %wide.load432.7 = load <8 x i32>, ptr %i.dc, align 16, !tbaa !112
  %wide.load433.7 = load <8 x i32>, ptr %i.dd, align 16, !tbaa !112
  %wide.load434.7 = load <8 x i32>, ptr %i.de, align 16, !tbaa !112
  %i.sy = add nsw <8 x i32> %wide.load431.7.a, %broadcast.splat
  %i.sz = add nsw <8 x i32> %wide.load432.7, %broadcast.splat
  %i.ta = add nsw <8 x i32> %wide.load433.7, %broadcast.splat
  %i.tb = add nsw <8 x i32> %wide.load434.7, %broadcast.splat
  store <8 x i32> %i.sy, ptr %i.db, align 16, !tbaa !112
  store <8 x i32> %i.sz, ptr %i.dc, align 16, !tbaa !112
  store <8 x i32> %i.ta, ptr %i.dd, align 16, !tbaa !112
  store <8 x i32> %i.tb, ptr %i.de, align 16, !tbaa !112
  %i.tc = load i32, ptr %i.df, align 16, !tbaa !112
  %i.td = add nsw i32 %i.tc, %i.rv
  store i32 %i.td, ptr %i.df, align 16, !tbaa !112
  %i.te = urem i32 %.2, 257                       ; 2 uses
  %.not203 = icmp eq i32 %i.te, 0
  br i1 %.not203, label %.loopexit, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %vector.ph428
  %i.tf = uitofp nneg i32 %i.te to float
  %i.tg = fdiv reassoc nsz arcp contract afn float 2.560000e+02, %i.tf
  %i.th = fptosi float %i.tg to i32               ; 2 uses
  %10 = sext i32 %i.th to i64
  %ident.check416.not = icmp eq i32 %i.th, 1
  br i1 %ident.check416.not, label %vector.body418, label %scalar.ph.preheader

vector.body418:                                   ; preds = %vector.scevcheck
  %wide.load420.a = load <8 x i32>, ptr %i.b, align 16, !tbaa !112
  %wide.load421 = load <8 x i32>, ptr %i.dg, align 16, !tbaa !112
  %wide.load422 = load <8 x i32>, ptr %i.dh, align 16, !tbaa !112
  %wide.load423 = load <8 x i32>, ptr %i.di, align 16, !tbaa !112
  %i.ti = add nsw <8 x i32> %wide.load420.a, splat (i32 1)
  %i.tj = add nsw <8 x i32> %wide.load421, splat (i32 1)
  %i.tk = add nsw <8 x i32> %wide.load422, splat (i32 1)
  %i.tl = add nsw <8 x i32> %wide.load423, splat (i32 1)
  store <8 x i32> %i.ti, ptr %i.b, align 16, !tbaa !112
  store <8 x i32> %i.tj, ptr %i.dg, align 16, !tbaa !112
  store <8 x i32> %i.tk, ptr %i.dh, align 16, !tbaa !112
  store <8 x i32> %i.tl, ptr %i.di, align 16, !tbaa !112
  %wide.load420.1.a = load <8 x i32>, ptr %i.dj, align 16, !tbaa !112
  %wide.load421.1 = load <8 x i32>, ptr %i.dk, align 16, !tbaa !112
  %wide.load422.1 = load <8 x i32>, ptr %i.dl, align 16, !tbaa !112
  %wide.load423.1 = load <8 x i32>, ptr %i.dm, align 16, !tbaa !112
  %i.tm = add nsw <8 x i32> %wide.load420.1.a, splat (i32 1)
  %i.tn = add nsw <8 x i32> %wide.load421.1, splat (i32 1)
  %i.to = add nsw <8 x i32> %wide.load422.1, splat (i32 1)
  %i.tp = add nsw <8 x i32> %wide.load423.1, splat (i32 1)
  store <8 x i32> %i.tm, ptr %i.dj, align 16, !tbaa !112
  store <8 x i32> %i.tn, ptr %i.dk, align 16, !tbaa !112
  store <8 x i32> %i.to, ptr %i.dl, align 16, !tbaa !112
  store <8 x i32> %i.tp, ptr %i.dm, align 16, !tbaa !112
  %wide.load420.2.a = load <8 x i32>, ptr %i.dn, align 16, !tbaa !112
  %wide.load421.2 = load <8 x i32>, ptr %i.do, align 16, !tbaa !112
  %wide.load422.2 = load <8 x i32>, ptr %i.dp, align 16, !tbaa !112
  %wide.load423.2 = load <8 x i32>, ptr %i.dq, align 16, !tbaa !112
  %i.tq = add nsw <8 x i32> %wide.load420.2.a, splat (i32 1)
  %i.tr = add nsw <8 x i32> %wide.load421.2, splat (i32 1)
  %i.ts = add nsw <8 x i32> %wide.load422.2, splat (i32 1)
  %i.tt = add nsw <8 x i32> %wide.load423.2, splat (i32 1)
  store <8 x i32> %i.tq, ptr %i.dn, align 16, !tbaa !112
  store <8 x i32> %i.tr, ptr %i.do, align 16, !tbaa !112
  store <8 x i32> %i.ts, ptr %i.dp, align 16, !tbaa !112
  store <8 x i32> %i.tt, ptr %i.dq, align 16, !tbaa !112
  %wide.load420.3.a = load <8 x i32>, ptr %i.dr, align 16, !tbaa !112
  %wide.load421.3 = load <8 x i32>, ptr %i.ds, align 16, !tbaa !112
  %wide.load422.3 = load <8 x i32>, ptr %i.dt, align 16, !tbaa !112
  %wide.load423.3 = load <8 x i32>, ptr %i.du, align 16, !tbaa !112
  %i.tu = add nsw <8 x i32> %wide.load420.3.a, splat (i32 1)
  %i.tv = add nsw <8 x i32> %wide.load421.3, splat (i32 1)
  %i.tw = add nsw <8 x i32> %wide.load422.3, splat (i32 1)
  %i.tx = add nsw <8 x i32> %wide.load423.3, splat (i32 1)
  store <8 x i32> %i.tu, ptr %i.dr, align 16, !tbaa !112
  store <8 x i32> %i.tv, ptr %i.ds, align 16, !tbaa !112
  store <8 x i32> %i.tw, ptr %i.dt, align 16, !tbaa !112
  store <8 x i32> %i.tx, ptr %i.du, align 16, !tbaa !112
  %wide.load420.4.a = load <8 x i32>, ptr %i.dv, align 16, !tbaa !112
  %wide.load421.4 = load <8 x i32>, ptr %i.dw, align 16, !tbaa !112
  %wide.load422.4 = load <8 x i32>, ptr %i.dx, align 16, !tbaa !112
  %wide.load423.4 = load <8 x i32>, ptr %i.dy, align 16, !tbaa !112
  %i.ty = add nsw <8 x i32> %wide.load420.4.a, splat (i32 1)
  %i.tz = add nsw <8 x i32> %wide.load421.4, splat (i32 1)
  %i.ua = add nsw <8 x i32> %wide.load422.4, splat (i32 1)
  %i.ub = add nsw <8 x i32> %wide.load423.4, splat (i32 1)
  store <8 x i32> %i.ty, ptr %i.dv, align 16, !tbaa !112
  store <8 x i32> %i.tz, ptr %i.dw, align 16, !tbaa !112
  store <8 x i32> %i.ua, ptr %i.dx, align 16, !tbaa !112
  store <8 x i32> %i.ub, ptr %i.dy, align 16, !tbaa !112
  %wide.load420.5.a = load <8 x i32>, ptr %i.dz, align 16, !tbaa !112
  %wide.load421.5 = load <8 x i32>, ptr %i.ea, align 16, !tbaa !112
  %wide.load422.5 = load <8 x i32>, ptr %i.eb, align 16, !tbaa !112
  %wide.load423.5 = load <8 x i32>, ptr %i.ec, align 16, !tbaa !112
  %i.uc = add nsw <8 x i32> %wide.load420.5.a, splat (i32 1)
  %i.ud = add nsw <8 x i32> %wide.load421.5, splat (i32 1)
  %i.ue = add nsw <8 x i32> %wide.load422.5, splat (i32 1)
  %i.uf = add nsw <8 x i32> %wide.load423.5, splat (i32 1)
  store <8 x i32> %i.uc, ptr %i.dz, align 16, !tbaa !112
  store <8 x i32> %i.ud, ptr %i.ea, align 16, !tbaa !112
  store <8 x i32> %i.ue, ptr %i.eb, align 16, !tbaa !112
  store <8 x i32> %i.uf, ptr %i.ec, align 16, !tbaa !112
  %wide.load420.6.a = load <8 x i32>, ptr %i.ed, align 16, !tbaa !112
  %wide.load421.6 = load <8 x i32>, ptr %i.ee, align 16, !tbaa !112
  %wide.load422.6 = load <8 x i32>, ptr %i.ef, align 16, !tbaa !112
  %wide.load423.6 = load <8 x i32>, ptr %i.eg, align 16, !tbaa !112
  %i.ug = add nsw <8 x i32> %wide.load420.6.a, splat (i32 1)
  %i.uh = add nsw <8 x i32> %wide.load421.6, splat (i32 1)
  %i.ui = add nsw <8 x i32> %wide.load422.6, splat (i32 1)
  %i.uj = add nsw <8 x i32> %wide.load423.6, splat (i32 1)
  store <8 x i32> %i.ug, ptr %i.ed, align 16, !tbaa !112
  store <8 x i32> %i.uh, ptr %i.ee, align 16, !tbaa !112
  store <8 x i32> %i.ui, ptr %i.ef, align 16, !tbaa !112
  store <8 x i32> %i.uj, ptr %i.eg, align 16, !tbaa !112
  %wide.load420.7.a = load <8 x i32>, ptr %i.eh, align 16, !tbaa !112
  %wide.load421.7 = load <8 x i32>, ptr %i.ei, align 16, !tbaa !112
  %wide.load422.7 = load <8 x i32>, ptr %i.ej, align 16, !tbaa !112
  %wide.load423.7 = load <8 x i32>, ptr %i.ek, align 16, !tbaa !112
  %i.uk = add nsw <8 x i32> %wide.load420.7.a, splat (i32 1)
  %i.ul = add nsw <8 x i32> %wide.load421.7, splat (i32 1)
  %i.um = add nsw <8 x i32> %wide.load422.7, splat (i32 1)
  %i.un = add nsw <8 x i32> %wide.load423.7, splat (i32 1)
  store <8 x i32> %i.uk, ptr %i.eh, align 16, !tbaa !112
  store <8 x i32> %i.ul, ptr %i.ei, align 16, !tbaa !112
  store <8 x i32> %i.um, ptr %i.ej, align 16, !tbaa !112
  store <8 x i32> %i.un, ptr %i.ek, align 16, !tbaa !112
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body418, %vector.scevcheck
  %indvars.iv303.ph = phi i64 [ 0, %vector.scevcheck ], [ 256, %vector.body418 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv303.a = phi i64 [ %indvars.iv.next304.a, %scalar.ph ], [ %indvars.iv303.ph, %scalar.ph.preheader ] ; 2 uses
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv303.a ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !112
  %i.uq = add nsw i32 %i.up, 1
  store i32 %i.uq, ptr %i.uo, align 4, !tbaa !112
  %indvars.iv.next304.a = add nsw i64 %indvars.iv303.a, %10 ; 2 uses
  %11 = icmp slt i64 %indvars.iv.next304.a, 257
  br i1 %11, label %scalar.ph, label %.loopexit, !llvm.loop !96

.loopexit:                                        ; preds = %scalar.ph, %vector.ph428
  %.not204.a = icmp eq i32 %.2, %.0182
  br i1 %.not204.a, label %.preheader217, label %vector.ph438

.preheader216:                                    ; preds = %.preheader217
  %.not205247 = icmp sgt i32 %spec.select, %i.jc
  br i1 %.not205247, label %.preheader, label %iter.check398

iter.check398:                                    ; preds = %.preheader216
  %i.ur = sub i32 %i.jc, %spec.select             ; 3 uses
  %i.us = zext i32 %i.ur to i64
  %i.ut = add nuw nsw i64 %i.us, 1                ; 5 uses
  %min.iters.check377 = icmp ult i32 %i.ur, 7
  br i1 %min.iters.check377, label %.lr.ph250.preheader, label %vector.main.loop.iter.check378

vector.main.loop.iter.check378:                   ; preds = %iter.check398
  %min.iters.check379 = icmp ult i32 %i.ur, 31
  br i1 %min.iters.check379, label %vec.epilog.ph402, label %vector.ph380

vector.ph380:                                     ; preds = %vector.main.loop.iter.check378
  %i.uu = and i64 %i.ut, 24
  %n.vec381 = and i64 %i.ut, 8589934560           ; 4 uses
  %i.uv = add nuw nsw i64 %n.vec381, %i.vn
  %invariant.gep493 = getelementptr [4 x i8], ptr %i.b, i64 %i.vn
  br label %vector.body382

vector.body382:                                   ; preds = %vector.ph380, %vector.body382
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next392, %vector.body382 ] ; 2 uses
  %vec.phi384.a = phi <8 x i32> [ zeroinitializer, %vector.ph380 ], [ %i.uz, %vector.body382 ]
  %vec.phi385 = phi <8 x i32> [ zeroinitializer, %vector.ph380 ], [ %i.va, %vector.body382 ]
  %vec.phi386 = phi <8 x i32> [ zeroinitializer, %vector.ph380 ], [ %i.vb, %vector.body382 ]
  %vec.phi387 = phi <8 x i32> [ zeroinitializer, %vector.ph380 ], [ %i.vc, %vector.body382 ]
  %gep494 = getelementptr [4 x i8], ptr %invariant.gep493, i64 %index383 ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %gep494, i64 32
  %i.ux = getelementptr inbounds nuw i8, ptr %gep494, i64 64
  %i.uy = getelementptr inbounds nuw i8, ptr %gep494, i64 96
  %wide.load388.a = load <8 x i32>, ptr %gep494, align 4, !tbaa !112
  %wide.load389 = load <8 x i32>, ptr %i.uw, align 4, !tbaa !112
  %wide.load390 = load <8 x i32>, ptr %i.ux, align 4, !tbaa !112
  %wide.load391 = load <8 x i32>, ptr %i.uy, align 4, !tbaa !112
  %i.uz = add <8 x i32> %wide.load388.a, %vec.phi384.a ; 2 uses
  %i.va = add <8 x i32> %wide.load389, %vec.phi385 ; 2 uses
  %i.vb = add <8 x i32> %wide.load390, %vec.phi386 ; 2 uses
  %i.vc = add <8 x i32> %wide.load391, %vec.phi387 ; 2 uses
  %index.next392 = add nuw i64 %index383, 32      ; 2 uses
  %i.vd = icmp eq i64 %index.next392, %n.vec381
  br i1 %i.vd, label %middle.block393, label %vector.body382, !llvm.loop !97

middle.block393:                                  ; preds = %vector.body382
  %bin.rdx394 = add <8 x i32> %i.va, %i.uz
  %bin.rdx395 = add <8 x i32> %i.vb, %bin.rdx394
  %bin.rdx396 = add <8 x i32> %i.vc, %bin.rdx395
  %i.ve = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx396) ; 3 uses
  %cmp.n397 = icmp eq i64 %i.ut, %n.vec381
  br i1 %cmp.n397, label %.preheader, label %vec.epilog.iter.check399

vec.epilog.iter.check399:                         ; preds = %middle.block393
  %min.epilog.iters.check401 = icmp eq i64 %i.uu, 0
  br i1 %min.epilog.iters.check401, label %.lr.ph250.preheader, label %vec.epilog.ph402, !prof !116

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check378, %vec.epilog.iter.check399
  %vec.epilog.resume.val403 = phi i64 [ %n.vec381, %vec.epilog.iter.check399 ], [ 0, %vector.main.loop.iter.check378 ]
  %bc.merge.rdx404 = phi i32 [ %i.ve, %vec.epilog.iter.check399 ], [ 0, %vector.main.loop.iter.check378 ]
  %n.vec405 = and i64 %i.ut, 8589934584           ; 3 uses
  %i.vf = add nuw nsw i64 %n.vec405, %i.vn
  %i.vg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx404, i64 0
  %invariant.gep495 = getelementptr [4 x i8], ptr %i.b, i64 %i.vn
  br label %vec.epilog.vector.body406

vec.epilog.vector.body406:                        ; preds = %vec.epilog.vector.body406, %vec.epilog.ph402
  %index407 = phi i64 [ %vec.epilog.resume.val403, %vec.epilog.ph402 ], [ %index.next410, %vec.epilog.vector.body406 ] ; 2 uses
  %vec.phi408 = phi <8 x i32> [ %i.vg, %vec.epilog.ph402 ], [ %i.vh, %vec.epilog.vector.body406 ]
  %gep496 = getelementptr [4 x i8], ptr %invariant.gep495, i64 %index407
  %wide.load409 = load <8 x i32>, ptr %gep496, align 4, !tbaa !112
  %i.vh = add <8 x i32> %wide.load409, %vec.phi408 ; 2 uses
  %index.next410 = add nuw i64 %index407, 8       ; 2 uses
  %i.vi = icmp eq i64 %index.next410, %n.vec405
  br i1 %i.vi, label %vec.epilog.middle.block411, label %vec.epilog.vector.body406, !llvm.loop !98

vec.epilog.middle.block411:                       ; preds = %vec.epilog.vector.body406
  %i.vj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.vh) ; 2 uses
  %cmp.n412 = icmp eq i64 %i.ut, %n.vec405
  br i1 %cmp.n412, label %.preheader, label %.lr.ph250.preheader

.lr.ph250.preheader:                              ; preds = %iter.check398, %vec.epilog.iter.check399, %vec.epilog.middle.block411
  %indvars.iv310.ph.a = phi i64 [ %i.vn, %iter.check398 ], [ %i.uv, %vec.epilog.iter.check399 ], [ %i.vf, %vec.epilog.middle.block411 ]
  %.0176248.ph = phi i32 [ 0, %iter.check398 ], [ %i.ve, %vec.epilog.iter.check399 ], [ %i.vj, %vec.epilog.middle.block411 ]
  br label %.lr.ph250

.preheader217:                                    ; preds = %.loopexit, %.preheader217
  %indvars.iv306 = phi i64 [ %indvars.iv.next307, %.preheader217 ], [ 0, %.loopexit ] ; 3 uses
  %.0178245 = phi i32 [ %spec.select, %.preheader217 ], [ 256, %.loopexit ]
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv306
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !112
  %.not206 = icmp eq i32 %i.vl, 0
  %i.vm = trunc nuw nsw i64 %indvars.iv306 to i32
  %spec.select = select i1 %.not206, i32 %.0178245, i32 %i.vm ; 4 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %i.vn = zext i32 %spec.select to i64            ; 7 uses
  %i.vo = icmp samesign ult i64 %indvars.iv.next307, %i.vn
  br i1 %i.vo, label %.preheader217, label %.preheader216

.preheader:                                       ; preds = %.lr.ph250, %middle.block393, %vec.epilog.middle.block411, %.preheader216
  %.0176.lcssa = phi i32 [ 0, %.preheader216 ], [ %i.vj, %vec.epilog.middle.block411 ], [ %i.ve, %middle.block393 ], [ %i.wn, %.lr.ph250 ] ; 5 uses
  %i.vp = icmp slt i32 %i.jc, 256
  br i1 %i.vp, label %iter.check, label %._crit_edge254

iter.check:                                       ; preds = %.preheader
  %i.vq = sext i32 %i.jc to i64                   ; 6 uses
  %i.vr = sub nsw i64 256, %i.vq                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.vr, 8
  br i1 %min.iters.check, label %.lr.ph253.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check361 = icmp ult i64 %i.vr, 32
  br i1 %min.iters.check361, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.vs = and i64 %i.vr, 24
  %n.vec = and i64 %i.vr, -32                     ; 4 uses
  %i.vt = add nsw i64 %n.vec, %i.vq
  %i.vu = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0176.lcssa, i64 0
  %invariant.gep497 = getelementptr [4 x i8], ptr %i.b, i64 %i.vq
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.vu, %vector.ph ], [ %i.vz, %vector.body ]
  %vec.phi362 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.wa, %vector.body ]
  %vec.phi363 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.wb, %vector.body ]
  %vec.phi364 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.wc, %vector.body ]
  %gep498 = getelementptr [4 x i8], ptr %invariant.gep497, i64 %index ; 4 uses
  %i.vv = getelementptr i8, ptr %gep498, i64 4
  %i.vw = getelementptr i8, ptr %gep498, i64 36
  %i.vx = getelementptr i8, ptr %gep498, i64 68
  %i.vy = getelementptr i8, ptr %gep498, i64 100
  %wide.load = load <8 x i32>, ptr %i.vv, align 4, !tbaa !112
  %wide.load365 = load <8 x i32>, ptr %i.vw, align 4, !tbaa !112
  %wide.load366 = load <8 x i32>, ptr %i.vx, align 4, !tbaa !112
  %wide.load367 = load <8 x i32>, ptr %i.vy, align 4, !tbaa !112
  %i.vz = add <8 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.wa = add <8 x i32> %wide.load365, %vec.phi362 ; 2 uses
  %i.wb = add <8 x i32> %wide.load366, %vec.phi363 ; 2 uses
  %i.wc = add <8 x i32> %wide.load367, %vec.phi364 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.wd = icmp eq i64 %index.next, %n.vec
  br i1 %i.wd, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.wa, %i.vz
  %bin.rdx368 = add <8 x i32> %i.wb, %bin.rdx
  %bin.rdx369 = add <8 x i32> %i.wc, %bin.rdx368
  %i.we = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx369) ; 3 uses
  %cmp.n = icmp eq i64 %i.vr, %n.vec
  br i1 %cmp.n, label %._crit_edge254, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.vs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph253.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.we, %vec.epilog.iter.check ], [ %.0176.lcssa, %vector.main.loop.iter.check ]
  %n.vec370 = and i64 %i.vr, -8                   ; 3 uses
  %i.wf = add nsw i64 %n.vec370, %i.vq
  %i.wg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %invariant.gep499 = getelementptr [4 x i8], ptr %i.b, i64 %i.vq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index371 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next374, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi372 = phi <8 x i32> [ %i.wg, %vec.epilog.ph ], [ %i.wi, %vec.epilog.vector.body ]
  %gep500 = getelementptr [4 x i8], ptr %invariant.gep499, i64 %index371
  %i.wh = getelementptr i8, ptr %gep500, i64 4
  %wide.load373 = load <8 x i32>, ptr %i.wh, align 4, !tbaa !112
  %i.wi = add <8 x i32> %wide.load373, %vec.phi372 ; 2 uses
  %index.next374 = add nuw i64 %index371, 8       ; 2 uses
  %i.wj = icmp eq i64 %index.next374, %n.vec370
  br i1 %i.wj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.wk = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.wi) ; 2 uses
  %cmp.n375 = icmp eq i64 %i.vr, %n.vec370
  br i1 %cmp.n375, label %._crit_edge254, label %.lr.ph253.preheader

.lr.ph253.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv313.ph = phi i64 [ %i.vq, %iter.check ], [ %i.vt, %vec.epilog.iter.check ], [ %i.wf, %vec.epilog.middle.block ]
  %.0174251.ph = phi i32 [ %.0176.lcssa, %iter.check ], [ %i.we, %vec.epilog.iter.check ], [ %i.wk, %vec.epilog.middle.block ]
  br label %.lr.ph253

.lr.ph250:                                        ; preds = %.lr.ph250.preheader, %.lr.ph250
  %indvars.iv310.a = phi i64 [ %indvars.iv.next311.a, %.lr.ph250 ], [ %indvars.iv310.ph.a, %.lr.ph250.preheader ] ; 3 uses
  %.0176248 = phi i32 [ %i.wn, %.lr.ph250 ], [ %.0176248.ph, %.lr.ph250.preheader ]
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv310.a
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !112
  %i.wn = add nsw i32 %i.wm, %.0176248            ; 2 uses
  %indvars.iv.next311.a = add nuw nsw i64 %indvars.iv310.a, 1
  %i.wo = trunc nuw i64 %indvars.iv310.a to i32
  %.not205.not = icmp slt i32 %i.wo, %i.jc
  br i1 %.not205.not, label %.lr.ph250, label %.preheader, !llvm.loop !101

._crit_edge254:                                   ; preds = %.lr.ph253, %middle.block, %vec.epilog.middle.block, %.preheader
  %.0174.lcssa = phi i32 [ %.0176.lcssa, %.preheader ], [ %i.wk, %vec.epilog.middle.block ], [ %i.we, %middle.block ], [ %i.wz, %.lr.ph253 ]
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.vn
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !112 ; 2 uses
  %i.wr = sub nsw i32 %.0176.lcssa, %i.wq
  %i.ws = sitofp reassoc nsz arcp contract afn i32 %i.wr to float
  %i.wt = sub nsw i32 %.0174.lcssa, %i.wq
  %i.wu = sitofp reassoc nsz arcp contract afn i32 %i.wt to float
  %i.wv = fdiv reassoc nsz arcp contract afn float %i.ws, %i.wu
  store float %i.wv, ptr %.0187256, align 4, !tbaa !111
  %i.ww = getelementptr inbounds nuw i8, ptr %.0187256, i64 4
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count317
  br i1 %exitcond321.not, label %.lr.ph267.preheader, label %bb.d

.lr.ph253:                                        ; preds = %.lr.ph253.preheader, %.lr.ph253
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %.lr.ph253 ], [ %indvars.iv313.ph, %.lr.ph253.preheader ]
  %.0174251 = phi i32 [ %i.wz, %.lr.ph253 ], [ %.0174251.ph, %.lr.ph253.preheader ]
  %indvars.iv.next314 = add nsw i64 %indvars.iv313, 1 ; 3 uses
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next314
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !112
  %i.wz = add nsw i32 %i.wy, %.0174251            ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next314, 256
  br i1 %exitcond316.not, label %._crit_edge254, label %.lr.ph253, !llvm.loop !102

._crit_edge268:                                   ; preds = %hsl2rgb.exit, %._crit_edge234.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %i.xa = load i32, ptr %i.j, align 4, !tbaa !105
  %i.xb = sext i32 %i.xa to i64
  %i.xc = icmp slt i64 %indvars.iv.next328, %i.xb
  br i1 %i.xc, label %bb.c, label %._crit_edge272

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %hsl2rgb.exit
  %indvars.iv322 = phi i64 [ 0, %.lr.ph267.preheader ], [ %indvars.iv.next323, %hsl2rgb.exit ] ; 3 uses
  %.0171263 = phi ptr [ %i.iv, %.lr.ph267.preheader ], [ %i.aba, %hsl2rgb.exit ] ; 8 uses
  %.0172262 = phi ptr [ %i.iw, %.lr.ph267.preheader ], [ %i.abb, %hsl2rgb.exit ] ; 4 uses
  %i.xd = load float, ptr %.0172262, align 4, !tbaa !111 ; 5 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.0172262, i64 4
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !111 ; 5 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.0172262, i64 8
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !111 ; 5 uses
  %i.xi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xd, float %i.xf)
  %i.xj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xi, float %i.xh) ; 6 uses
  %i.xk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.xd, float %i.xf)
  %i.xl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.xk, float %i.xh) ; 3 uses
  %i.xm = fsub reassoc nsz arcp contract afn float %i.xj, %i.xl ; 5 uses
  %i.xn = fcmp reassoc nsz arcp contract afn une float %i.xm, 0.000000e+00
  br i1 %i.xn, label %bb.f, label %rgb2hsl.exit.thread

rgb2hsl.exit.thread:                              ; preds = %.lr.ph267
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv322
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !111
  br label %bb.n

bb.f:                                             ; preds = %.lr.ph267
  %i.xq = fadd reassoc nsz arcp contract afn float %i.xl, %i.xj ; 2 uses
  %i.xr = fmul reassoc nsz arcp contract afn float %i.xq, 5.000000e-01
  %i.xs = fcmp reassoc nsz arcp contract afn olt float %i.xr, 5.000000e-01
  br i1 %i.xs, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.xt = fpext reassoc nsz arcp contract afn float %i.xj to double
  %i.xu = fpext reassoc nsz arcp contract afn float %i.xl to double
  %i.xv = fadd reassoc nsz arcp contract afn double %i.xt, %i.xu
  %i.xw = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.xv
  %i.xx = fptrunc reassoc nsz arcp contract afn double %i.xw to float
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi float [ %i.xx, %bb.g ], [ %i.xq, %bb.f ]
  %i.xy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.xz = fdiv reassoc nsz arcp contract afn float %i.xm, %i.xy ; 4 uses
  %i.ya = fcmp reassoc nsz arcp contract afn oeq float %i.xj, %i.xd
  br i1 %i.ya, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.yb = fsub reassoc nsz arcp contract afn float %i.xf, %i.xh
  %i.yc = fdiv reassoc nsz arcp contract afn float %i.yb, %i.xm
  br label %rgb2hsl.exit

bb.j:                                             ; preds = %bb.h
  %i.yd = fcmp reassoc nsz arcp contract afn oeq float %i.xj, %i.xf
  br i1 %i.yd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ye = fsub reassoc nsz arcp contract afn float %i.xh, %i.xd
  %i.yf = fdiv reassoc nsz arcp contract afn float %i.ye, %i.xm
  %i.yg = fadd reassoc nsz arcp contract afn float %i.yf, 2.000000e+00
  br label %rgb2hsl.exit

bb.l:                                             ; preds = %bb.j
  %i.yh = fcmp reassoc nsz arcp contract afn oeq float %i.xj, %i.xh
  br i1 %i.yh, label %bb.m, label %rgb2hsl.exit

bb.m:                                             ; preds = %bb.l
  %i.yi = fsub reassoc nsz arcp contract afn float %i.xd, %i.xf
  %i.yj = fdiv reassoc nsz arcp contract afn float %i.yi, %i.xm
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yj, 4.000000e+00
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %.043.i = phi nsz float [ %i.yc, %bb.i ], [ %i.yg, %bb.k ], [ %i.yk, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.yl = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.ym = fmul reassoc nsz arcp contract afn double %i.yl, f0x3FC5555555555555 ; 3 uses
  %i.yn = fptrunc reassoc nsz arcp contract afn double %i.ym to float ; 3 uses
  %i.yo = fcmp reassoc nsz arcp contract afn olt double %i.ym, f0xB690000000000000
  %i.yp = fadd reassoc nsz arcp contract afn float %i.yn, 1.000000e+00
  %i.yq = fcmp reassoc nsz arcp contract afn ogt double %i.ym, f0x3FF0000010000000
  %i.yr = fadd reassoc nsz arcp contract afn float %i.yn, -1.000000e+00
  %spec.select.i = select nsz i1 %i.yq, float %i.yr, float %i.yn
  %.1.i = select nsz i1 %i.yo, float %i.yp, float %spec.select.i
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv322
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !111 ; 5 uses
  %i.yu = fcmp reassoc nsz arcp contract afn oeq float %i.xz, 0.000000e+00
  br i1 %i.yu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rgb2hsl.exit.thread, %rgb2hsl.exit
  %i.yv = phi float [ %i.xp, %rgb2hsl.exit.thread ], [ %i.yt, %rgb2hsl.exit ] ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.0171263, i64 8
  store float %i.yv, ptr %i.yw, align 4, !tbaa !111
  %i.yx = getelementptr inbounds nuw i8, ptr %.0171263, i64 4
  store float %i.yv, ptr %i.yx, align 4, !tbaa !111
  store float %i.yv, ptr %.0171263, align 4, !tbaa !111
  br label %hsl2rgb.exit

bb.o:                                             ; preds = %rgb2hsl.exit
  %i.yy = fpext reassoc nsz arcp contract afn float %i.yt to double ; 2 uses
  %i.yz = fcmp reassoc nsz arcp contract afn olt float %i.yt, 5.000000e-01
  br i1 %i.yz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.za = fpext reassoc nsz arcp contract afn float %i.xz to double
  %i.zb = fadd reassoc nsz arcp contract afn double %i.za, 1.000000e+00
  %i.zc = fmul reassoc nsz arcp contract afn double %i.zb, %i.yy
  %i.zd = fptrunc reassoc nsz arcp contract afn double %i.zc to float
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ze = fadd reassoc nsz arcp contract afn float %i.yt, %i.xz
  %i.zf = fmul reassoc nsz arcp contract afn float %i.xz, %i.yt
  %i.zg = fsub reassoc nsz arcp contract afn float %i.ze, %i.zf
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.zh = phi float [ %i.zd, %bb.p ], [ %i.zg, %bb.q ] ; 10 uses
  %i.zi = fmul reassoc nsz arcp contract afn double %i.yy, 2.000000e+00
  %i.zj = fpext reassoc nsz arcp contract afn float %i.zh to double
  %i.zk = fsub reassoc nsz arcp contract afn double %i.zi, %i.zj
  %i.zl = fptrunc reassoc nsz arcp contract afn double %i.zk to float ; 15 uses
  %i.zm = fmul reassoc nsz arcp contract afn float %.1.i, 6.000000e+00 ; 8 uses
  %i.zn = fcmp reassoc nsz arcp contract afn olt float %i.zm, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.zn, float 2.000000e+00, float -4.000000e+00
  %i.zo = fadd reassoc nsz arcp contract afn float %.v.i, %i.zm ; 5 uses
  %i.zp = fcmp reassoc nsz arcp contract afn olt float %i.zo, 1.000000e+00
  br i1 %i.zp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.zq = fsub reassoc nsz arcp contract afn float %i.zh, %i.zl
  %i.zr = fmul reassoc nsz arcp contract afn float %i.zq, %i.zo
  %i.zs = fadd reassoc nsz arcp contract afn float %i.zr, %i.zl
  br label %hue2rgb.exit.i

bb.t:                                             ; preds = %bb.r
  %i.zt = fcmp reassoc nsz arcp contract afn olt float %i.zo, 3.000000e+00
  br i1 %i.zt, label %hue2rgb.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.zu = fcmp reassoc nsz arcp contract afn olt float %i.zo, 4.000000e+00
  %i.zv = fsub reassoc nsz arcp contract afn float %i.zh, %i.zl
  %i.zw = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.zo
  %i.zx = fmul reassoc nsz arcp contract afn float %i.zv, %i.zw
  %i.zy = fadd reassoc nsz arcp contract afn float %i.zx, %i.zl
  %i.zz = select reassoc nsz arcp contract afn i1 %i.zu, float %i.zy, float %i.zl
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.u, %bb.t, %bb.s
  %.0.i.i = phi nsz float [ %i.zs, %bb.s ], [ %i.zz, %bb.u ], [ %i.zh, %bb.t ]
  store float %.0.i.i, ptr %.0171263, align 4, !tbaa !111
  %i.aaa = fcmp reassoc nsz arcp contract afn olt float %i.zm, 1.000000e+00
  br i1 %i.aaa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %hue2rgb.exit.i
  %i.aab = fsub reassoc nsz arcp contract afn float %i.zh, %i.zl
  %i.aac = fmul reassoc nsz arcp contract afn float %i.aab, %i.zm
  %i.aad = fadd reassoc nsz arcp contract afn float %i.aac, %i.zl
  br label %hue2rgb.exit36.i

bb.w:                                             ; preds = %hue2rgb.exit.i
  %i.aae = fcmp reassoc nsz arcp contract afn olt float %i.zm, 3.000000e+00
  br i1 %i.aae, label %hue2rgb.exit36.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aaf = fsub reassoc nsz arcp contract afn float %i.zh, %i.zl
  %i.aag = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.zm
  %i.aah = fmul reassoc nsz arcp contract afn float %i.aaf, %i.aag
  %i.aai = fadd reassoc nsz arcp contract afn float %i.aah, %i.zl
  %i.aaj = select reassoc nsz arcp contract afn i1 %i.zn, float %i.aai, float %i.zl
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.x, %bb.w, %bb.v
  %.0.i35.i = phi nsz float [ %i.aad, %bb.v ], [ %i.aaj, %bb.x ], [ %i.zh, %bb.w ]
  %i.aak = getelementptr inbounds nuw i8, ptr %.0171263, i64 4
  store float %.0.i35.i, ptr %i.aak, align 4, !tbaa !111
  %i.aal = fcmp reassoc nsz arcp contract afn ogt float %i.zm, 2.000000e+00
  %.v34.i = select i1 %i.aal, float -2.000000e+00, float 4.000000e+00
  %i.aam = fadd reassoc nsz arcp contract afn float %.v34.i, %i.zm ; 5 uses
  %i.aan = fcmp reassoc nsz arcp contract afn olt float %i.aam, 1.000000e+00
  br i1 %i.aan, label %bb.y, label %bb.z

bb.y:                                             ; preds = %hue2rgb.exit36.i
  %i.aao = fsub reassoc nsz arcp contract afn float %i.zh, %i.zl
  %i.aap = fmul reassoc nsz arcp contract afn float %i.aao, %i.aam
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.aap, %i.zl
  br label %hue2rgb.exit38.i

bb.z:                                             ; preds = %hue2rgb.exit36.i
  %i.aar = fcmp reassoc nsz arcp contract afn olt float %i.aam, 3.000000e+00
  br i1 %i.aar, label %hue2rgb.exit38.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aas = fcmp reassoc nsz arcp contract afn olt float %i.aam, 4.000000e+00
  %i.aat = fsub reassoc nsz arcp contract afn float %i.zh, %i.zl
  %i.aau = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.aam
  %i.aav = fmul reassoc nsz arcp contract afn float %i.aat, %i.aau
  %i.aaw = fadd reassoc nsz arcp contract afn float %i.aav, %i.zl
  %i.aax = select reassoc nsz arcp contract afn i1 %i.aas, float %i.aaw, float %i.zl
  br label %hue2rgb.exit38.i

hue2rgb.exit38.i:                                 ; preds = %bb.aa, %bb.z, %bb.y
  %.0.i37.i = phi nsz float [ %i.aaq, %bb.y ], [ %i.aax, %bb.aa ], [ %i.zh, %bb.z ]
  %i.aay = getelementptr inbounds nuw i8, ptr %.0171263, i64 8
  store float %.0.i37.i, ptr %i.aay, align 4, !tbaa !111
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.n, %hue2rgb.exit38.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0171263, i64 12
  store float 0.000000e+00, ptr %i.aaz, align 4, !tbaa !111
  %i.aba = getelementptr inbounds [4 x i8], ptr %.0171263, i64 %i.as
  %i.abb = getelementptr inbounds [4 x i8], ptr %.0172262, i64 %i.as
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %._crit_edge268, label %.lr.ph267
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #5

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
end_hunk_0
