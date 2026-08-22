Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/printing?download=true
inline.NumInlined: 16
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
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
%struct._image_pos = type { float, float, float, float }

@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str = private unnamed_addr constant [57 x i8] c"[printing] screen/page  (%3.1f, %3.1f) -> (%3.1f, %3.1f)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"[printing] screen/parea (%3.1f, %3.1f) -> (%3.1f, %3.1f)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_clear_pos(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @dt_printing_clear_box(ptr nofree noundef writeonly captures(none) initializes((0, 96)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  store i32 4, ptr %i.a, align 4, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @dt_printing_clear_boxes(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 1984)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  store i32 4, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.c, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.d, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.e, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.g, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 436
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.i, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.j, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 532
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.k, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 628
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.m, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.n, align 4, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 724
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.o, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 820
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.q, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 916
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.s, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1012
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.u, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.w, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.x, align 4, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.y, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.z, align 4, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1300
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.aa, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.ab, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.ac, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.ad, align 4, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1492
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.ae, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.af, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1588
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.ag, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.ah, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1684
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.ai, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.aj, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.ak, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.al, align 4, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1876
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.am, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.an, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ao, i8 0, i64 56, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aq, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.ar, align 4, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store i32 -1, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @dt_printing_get_image_box(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sitofp reassoc nsz arcp contract afn i32 %1 to float ; 4 uses
  %i.e = sitofp reassoc nsz arcp contract afn i32 %2 to float ; 4 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.035.lcssa = phi i32 [ -1, %bb.a ], [ %.237, %bb.e ]
  ret i32 %.035.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.03447 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.2, %bb.e ] ; 4 uses
  %.03546 = phi i32 [ -1, %.lr.ph ], [ %.237, %bb.e ] ; 3 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load float, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.j = load float, ptr %i.i, align 8, !tbaa !23
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %i.h ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.m = load float, ptr %i.l, align 4, !tbaa !24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.o = load float, ptr %i.n, align 4, !tbaa !25
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, %i.m ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.h, %i.d
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.k, %i.d
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.e
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.p, %i.e
  %or.cond45 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond45, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = fsub reassoc nsz arcp contract afn float %i.h, %i.d ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.u
  %i.w = fsub reassoc nsz arcp contract afn float %i.k, %i.d ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.w
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.x)
  %i.z = fsub reassoc nsz arcp contract afn float %i.m, %i.e ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float %i.aa)
  %i.ac = fsub reassoc nsz arcp contract afn float %i.p, %i.e ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ab, float %i.ad) ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.ae, %.03447 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %.136 = select i1 %i.af, i32 %i.ag, i32 %.03546
  %.1 = select nsz i1 %i.af, float %i.ae, float %.03447
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.237 = phi i32 [ %.136, %bb.d ], [ %.03546, %bb.b ], [ %.03546, %bb.c ] ; 2 uses
  %.2 = phi nsz float [ %.1, %bb.d ], [ %.03447, %bb.b ], [ %.03447, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_compute_rel_pos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x float>, ptr %i.a, align 8, !tbaa !26
  %i.e = load <2 x float>, ptr %i.b, align 8, !tbaa !26
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !26
  %i.h = fsub reassoc nsz arcp contract afn <2 x float> %i.g, %i.d
  %i.i = load <2 x float>, ptr %i.c, align 4, !tbaa !26
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.k = fdiv reassoc nsz arcp contract afn <4 x float> %i.j, %i.f
  store <4 x float> %i.k, ptr %2, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_printing_setup_display(ptr nofree noundef captures(none) initializes((1952, 1988)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1952
  store float %1, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1956
  store float %2, ptr %i.b, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store float %3, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1964
  store float %4, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store float %5, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1972
  store float %6, ptr %i.f, align 4, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1976
  store float %7, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1980
  store float %8, ptr %i.h, align 4, !tbaa !34
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !35
  %i.j = and i32 %i.i, 32768
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fpext reassoc nsz arcp contract afn float %1 to double
  %i.l = fpext reassoc nsz arcp contract afn float %2 to double
  %i.m = fpext reassoc nsz arcp contract afn float %3 to double
  %i.n = fpext reassoc nsz arcp contract afn float %4 to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, double noundef %i.k, double noundef %i.l, double noundef %i.m, double noundef %i.n) #12
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !35
  %.pre49 = and i32 %.pre, 32768
  %i.o = icmp eq i32 %.pre49, 0
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fpext reassoc nsz arcp contract afn float %5 to double
  %i.q = fpext reassoc nsz arcp contract afn float %6 to double
  %i.r = fpext reassoc nsz arcp contract afn float %7 to double
  %i.s = fpext reassoc nsz arcp contract afn float %8 to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, double noundef %i.p, double noundef %i.q, double noundef %i.r, double noundef %i.s) #12
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store i32 %9, ptr %i.t, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17   ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %i.y = insertelement <4 x float> poison, float %3, i64 0
  %i.z = insertelement <4 x float> %i.y, float %4, i64 1
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ab = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %1, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %2, i64 1 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.v, 1
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv.epil.init ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load float, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.epil.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.am = load <2 x float>, ptr %i.al, align 8, !tbaa !26
  %i.an = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ar = fmul reassoc nsz arcp contract afn <4 x float> %i.aq, %i.aa
  %i.as = fadd reassoc nsz arcp contract afn <4 x float> %i.ar, %i.ac
  store <4 x float> %i.as, ptr %i.ai, align 8, !tbaa !26
  br label %._crit_edge

end_hunk_0
begin_hunk_1_@dt_printing_setup_page:bb.a
  %wide.gep28 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.u, <8 x ptr> align 8 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load <2 x float>, ptr %i.x, align 8, !tbaa !26
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.j
  %i.ab = fptosi <2 x float> %i.aa to <2 x i32>
  store <2 x i32> %i.ab, ptr %i.y, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !92
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_align_pos(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = sitofp reassoc nsz arcp contract afn i32 %2 to float ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.a, ptr %i.b, align 4, !tbaa !93
  %i.c = sitofp reassoc nsz arcp contract afn i32 %3 to float ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.c, ptr %i.d, align 4, !tbaa !94
  switch i32 %1, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 4, !tbaa !95
  store float %i.e, ptr %4, align 4, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !96
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = load float, ptr %0, align 4, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !93
  %i.k = fsub reassoc nsz arcp contract afn float %i.j, %i.a
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, 5.000000e-01
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.h
  store float %i.m, ptr %4, align 4, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !96
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.p = load float, ptr %0, align 4, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !93
  %i.s = fsub reassoc nsz arcp contract afn float %i.p, %i.a
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, %i.r
  store float %i.t, ptr %4, align 4, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !96
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.w = load float, ptr %0, align 4, !tbaa !95
  store float %i.w, ptr %4, align 4, !tbaa !95
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !94
  %i.ab = fsub reassoc nsz arcp contract afn float %i.aa, %i.c
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, 5.000000e-01
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.y
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.ae = load float, ptr %0, align 4, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !93
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ag, %i.a
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, 5.000000e-01
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.ae
  store float %i.aj, ptr %4, align 4, !tbaa !95
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !94
  %i.ao = fsub reassoc nsz arcp contract afn float %i.an, %i.c
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 5.000000e-01
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.al
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.ar = load float, ptr %0, align 4, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !93
  %i.au = fsub reassoc nsz arcp contract afn float %i.ar, %i.a
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.at
  store float %i.av, ptr %4, align 4, !tbaa !95
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !94
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.c
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, 5.000000e-01
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.ax
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.bd = load float, ptr %0, align 4, !tbaa !95
  store float %i.bd, ptr %4, align 4, !tbaa !95
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !96
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !94
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bf, %i.c
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bh
  br label %.sink.split

bb.i:                                             ; preds = %bb.a
  %i.bk = load float, ptr %0, align 4, !tbaa !95
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !93
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.a
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, 5.000000e-01
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  store float %i.bp, ptr %4, align 4, !tbaa !95
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !96
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !94
  %i.bu = fsub reassoc nsz arcp contract afn float %i.br, %i.c
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.bt
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  %i.bw = load float, ptr %0, align 4, !tbaa !95
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !93
  %i.bz = fsub reassoc nsz arcp contract afn float %i.bw, %i.a
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.by
  store float %i.ca, ptr %4, align 4, !tbaa !95
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !96
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !94
  %i.cf = fsub reassoc nsz arcp contract afn float %i.cc, %i.c
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.ce
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sink = phi float [ %i.cg, %bb.j ], [ %i.bv, %bb.i ], [ %i.bj, %bb.h ], [ %i.bc, %bb.g ], [ %i.aq, %bb.f ], [ %i.ad, %bb.e ], [ %i.v, %bb.d ], [ %i.o, %bb.c ], [ %i.g, %bb.b ]
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %.sink, ptr %i.ch, align 4, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_printing_get_screen_pos(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  tail call void @_align_pos(ptr noundef nonnull %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_printing_get_screen_rel_pos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct._image_pos, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  call void @_align_pos(ptr noundef nonnull readonly %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load <2 x float>, ptr %i.h, align 8, !tbaa !26
  %i.l = load <2 x float>, ptr %i.i, align 8, !tbaa !26
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.n = load <2 x float>, ptr %3, align 8, !tbaa !26
  %i.o = fsub reassoc nsz arcp contract afn <2 x float> %i.n, %i.k
  %i.p = load <2 x float>, ptr %i.j, align 8, !tbaa !26
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.r = fdiv reassoc nsz arcp contract afn <4 x float> %i.q, %i.m
  store <4 x float> %i.r, ptr %2, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_printing_get_image_pos_mm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct._image_pos, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  call void @_align_pos(ptr noundef nonnull readonly %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.l = load <2 x float>, ptr %i.h, align 8, !tbaa !26
  %i.m = load <2 x float>, ptr %i.i, align 8, !tbaa !26
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.o = load <2 x float>, ptr %3, align 8, !tbaa !26
  %i.p = fsub reassoc nsz arcp contract afn <2 x float> %i.o, %i.l
  %i.q = load <2 x float>, ptr %i.j, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.r = load <2 x float>, ptr %i.k, align 8, !tbaa !26
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fmul reassoc nsz arcp contract afn <4 x float> %i.s, %i.t
  %i.v = fdiv reassoc nsz arcp contract afn <4 x float> %i.u, %i.n
  store <4 x float> %i.v, ptr %2, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_printing_get_image_pos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct._image_pos, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  call void @_align_pos(ptr noundef nonnull readonly %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.l = load <2 x float>, ptr %i.h, align 8, !tbaa !26
  %i.m = load <2 x float>, ptr %i.i, align 8, !tbaa !26
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.o = load <2 x float>, ptr %3, align 8, !tbaa !26
  %i.p = fsub reassoc nsz arcp contract afn <2 x float> %i.o, %i.l
  %i.q = load <2 x float>, ptr %i.j, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.r = load <2 x float>, ptr %i.k, align 8, !tbaa !26
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fmul reassoc nsz arcp contract afn <4 x float> %i.s, %i.t
  %i.v = fdiv reassoc nsz arcp contract afn <4 x float> %i.u, %i.n
  store <4 x float> %i.v, ptr %2, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_printing_setup_image(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct._image_pos, align 4         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [96 x i8], ptr %i.a, i64 %i.b ; 17 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !99
  %.not = icmp eq i32 %i.d, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = tail call i32 @dt_image_get_final_size(i32 noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %2, ptr %i.c, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %3, ptr %i.h, align 4, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %4, ptr %i.i, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %5, ptr %i.j, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1940
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.q = load float, ptr %i.n, align 4, !tbaa !102
  %i.r = load <2 x float>, ptr %i.l, align 8, !tbaa !26
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = load <4 x float>, ptr %i.k, align 8, !tbaa !26
  %i.u = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %i.s
  store <4 x float> %i.u, ptr %i.m, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_align_pos(ptr noundef nonnull %i.m, i32 noundef %5, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %i.v = load float, ptr %6, align 4, !tbaa !95
  store float %i.v, ptr %i.m, align 8, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load float, ptr %i.y, align 4, !tbaa !94
  %i.ab = load <2 x float>, ptr %i.z, align 4, !tbaa !26
  %i.ac = fadd reassoc nsz arcp contract afn float %i.x, %i.aa
  %i.ad = fsub reassoc nsz arcp contract afn float %i.q, %i.ac
  store float %i.ad, ptr %i.o, align 4, !tbaa !104
  store <2 x float> %i.ab, ptr %i.p, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !105 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !106 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !98
  %i.ak = sitofp reassoc nsz arcp contract afn i32 %i.af to float ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = load float, ptr %i.al, align 8, !tbaa !23 ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.am, %i.ak
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = fptosi float %i.am to i32               ; 2 uses
  store i32 %i.ao, ptr %i.ag, align 4, !tbaa !97
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  %i.aq = fadd reassoc nnan nsz arcp contract afn float %i.ap, 5.000000e-01
  %i.ar = fmul reassoc nsz arcp contract afn float %i.am, %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn float %i.ar, %i.ak
  %i.at = fptosi float %i.as to i32               ; 2 uses
  store i32 %i.at, ptr %i.aj, align 8, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = phi i32 [ %i.ao, %bb.d ], [ %i.af, %bb.c ]
  %i.av = phi i32 [ %i.at, %bb.d ], [ %i.ai, %bb.c ]
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %i.av to float ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !25 ; 3 uses
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ay, %i.aw
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.au to float
  %i.bb = fadd reassoc nnan nsz arcp contract afn float %i.ba, 5.000000e-01
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.ay
  %i.bd = fdiv reassoc nsz arcp contract afn float %i.bc, %i.aw
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ay, i64 1
  %i.bg = fptosi <2 x float> %i.bf to <2 x i32>
  store <2 x i32> %i.bg, ptr %i.ag, align 4, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

declare i32 @dt_image_get_final_size(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 36}
!12 = !{!"_image_box", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 56, !13, i64 72, !15, i64 88}
!13 = !{!"_image_pos", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!14 = !{!"float", !9, i64 0}
!15 = !{!"p1 short", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!18, !8, i64 8}
!18 = !{!"dt_images_box", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 16, !14, i64 1936, !14, i64 1940, !14, i64 1944, !14, i64 1948, !19, i64 1952}
!19 = !{!"dt_screen_pos", !13, i64 0, !13, i64 16, !8, i64 32}
!20 = !{!18, !8, i64 4}
!21 = !{!18, !8, i64 0}
!22 = !{!12, !14, i64 56}
!23 = !{!12, !14, i64 64}
!24 = !{!12, !14, i64 60}
!25 = !{!12, !14, i64 68}
!26 = !{!14, !14, i64 0}
!27 = !{!18, !14, i64 1952}
!28 = !{!18, !14, i64 1956}
!29 = !{!18, !14, i64 1960}
!30 = !{!18, !14, i64 1964}
!31 = !{!18, !14, i64 1968}
!32 = !{!18, !14, i64 1972}
!33 = !{!18, !14, i64 1976}
!34 = !{!18, !14, i64 1980}
!35 = !{!36, !8, i64 8}
!36 = !{!"darktable_t", !37, i64 0, !8, i64 4, !8, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !40, i64 56, !41, i64 64, !42, i64 72, !43, i64 80, !44, i64 88, !45, i64 96, !46, i64 104, !47, i64 112, !48, i64 120, !49, i64 128, !50, i64 136, !51, i64 144, !52, i64 152, !53, i64 160, !54, i64 168, !55, i64 176, !56, i64 184, !57, i64 192, !58, i64 200, !59, i64 208, !60, i64 216, !61, i64 224, !9, i64 232, !62, i64 2792, !62, i64 2832, !62, i64 2872, !62, i64 2912, !62, i64 2952, !62, i64 2992, !63, i64 3032, !63, i64 3040, !63, i64 3048, !63, i64 3056, !63, i64 3064, !63, i64 3072, !63, i64 3080, !63, i64 3088, !63, i64 3096, !63, i64 3104, !63, i64 3112, !63, i64 3120, !63, i64 3128, !64, i64 3136, !38, i64 3288, !71, i64 3296, !38, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !72, i64 3520, !73, i64 3528, !74, i64 3536, !77, i64 3576, !78, i64 3600, !79, i64 3632, !8, i64 3672}
!37 = !{!"dt_codepath_t", !8, i64 0}
!38 = !{!"p1 _ZTS6_GList", !16, i64 0}
end_hunk_1
