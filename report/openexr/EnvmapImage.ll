Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/EnvmapImage?download=true
inline.NumInlined: 109
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_2::Vec3" = type { float, float, float }
%"class.Imath_3_2::Vec2.0" = type { float, float }

$_ZNK9Imath_3_24Vec3IfE10lengthTinyEv = comdat any

@imath_half_to_float_table = external local_unnamed_addr global ptr, align 8

@_ZN11EnvmapImageC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11EnvmapImageC2Ev
@_ZN11EnvmapImageC1EN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11EnvmapImageC2EN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11EnvmapImageC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 20), (24, 48)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  store i64 1, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 1, ptr %i.f, align 8, !tbaa !15
  %i.g = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #15 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.h, align 8, !tbaa !16
  %i.i = load i32, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.k = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.l = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not16.i = icmp slt i32 %i.k, %i.l
  br i1 %.not16.i, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %.not1314.i = icmp slt i32 %i.i, %i.j
  %i.m = load i64, ptr %i.f, align 8              ; 9 uses
  br i1 %.not1314.i, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.n = add i32 %i.i, 1
  %i.o = sub i32 %i.n, %i.j
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 9 uses
  %i.r = add i32 %i.k, 1
  %i.s = sub i32 %i.r, %i.l                       ; 2 uses
  %wide.trip.count.i = zext i32 %i.s to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.t = add i32 %i.s, -1
  %i.u = icmp ult i32 %i.t, 7
  br i1 %i.u, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967288
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i.7, %.preheader.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.7, %.preheader.i ]
  %i.v = mul nsw i64 %indvars.iv.i, %i.m
  %i.w = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.w, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.x = mul nsw i64 %indvars.iv.next.i, %i.m
  %i.y = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.y, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.z = mul nsw i64 %indvars.iv.next.i.1, %i.m
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aa, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.ab = mul nsw i64 %indvars.iv.next.i.2, %i.m
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ac, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4
  %i.ad = mul nsw i64 %indvars.iv.next.i.3, %i.m
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ad
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ae, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5
  %i.af = mul nsw i64 %indvars.iv.next.i.4, %i.m
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ag, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6
  %i.ah = mul nsw i64 %indvars.iv.next.i.5, %i.m
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ah
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ai, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7
  %i.aj = mul nsw i64 %indvars.iv.next.i.6, %i.m
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ak, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !0

_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.7, %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.al = mul nsw i64 %indvars.iv.i.epil, %i.m
  %i.am = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.am, i8 0, i64 %i.q, i1 false), !tbaa !26
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil, !llvm.loop !41

_ZN11EnvmapImage5clearEv.exit:                    ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.i.epil, %.preheader.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11EnvmapImage5clearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %.not16 = icmp slt i32 %i.f, %i.h
  br i1 %.not16, label %._crit_edge18.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not1314 = icmp slt i32 %i.c, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8              ; 9 uses
  br i1 %.not1314, label %._crit_edge18.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.m = add i32 %i.c, 1
  %i.n = sub i32 %i.m, %i.d
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 9 uses
  %i.q = add i32 %i.f, 1
  %i.r = sub i32 %i.q, %i.h                       ; 2 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 7
  br i1 %i.t, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.7, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.u = mul nsw i64 %i.l, %indvars.iv
  %i.v = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.v, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.w = mul nsw i64 %i.l, %indvars.iv.next
  %i.x = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.x, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.y = mul nsw i64 %i.l, %indvars.iv.next.1
  %i.z = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.z, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.aa = mul nsw i64 %i.l, %indvars.iv.next.2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.aa
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %i.ac = mul nsw i64 %i.l, %indvars.iv.next.3
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ad, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %i.ae = mul nsw i64 %i.l, %indvars.iv.next.4
  %i.af = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.af, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %i.ag = mul nsw i64 %i.l, %indvars.iv.next.5
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ah, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %i.ai = mul nsw i64 %i.l, %indvars.iv.next.6
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ai
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.aj, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge18.split.loopexit.unr-lcssa, label %.preheader, !llvm.loop !0

._crit_edge18.split.loopexit.unr-lcssa:           ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge18.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge18.split.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.7, %._crit_edge18.split.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.ak = mul nsw i64 %i.l, %indvars.iv.epil
  %i.al = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.al, i8 0, i64 %i.p, i1 false), !tbaa !26
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge18.split, label %.preheader.epil, !llvm.loop !42

._crit_edge18.split:                              ; preds = %._crit_edge18.split.loopexit.unr-lcssa, %.preheader.epil, %.preheader.lr.ph, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11EnvmapImageC2EN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 20), (24, 48)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load <2 x i32>, ptr %2, align 4, !tbaa !30
  store <2 x i32> %i.d, ptr %i.a, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32   ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.c, align 4, !tbaa !44
  %i.m = add i32 %i.j, 1
  %i.n = sub i32 %i.m, %i.l
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !45
  %i.q = add i32 %i.g, 1
  %i.r = sub i32 %i.q, %i.p
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  store i64 %i.o, ptr %i.k, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !15
  %i.u = mul nsw i64 %i.s, %i.o                   ; 2 uses
  %i.v = icmp ugt i64 %i.u, 2305843009213693951
  %i.w = shl nuw i64 %i.u, 3
  %i.x = select i1 %i.v, i64 -1, i64 %i.w
  %i.y = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #15 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.z, align 8, !tbaa !16
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !21  ; 2 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !22  ; 2 uses
  %i.ac = load i32, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %.not16.i = icmp slt i32 %i.ac, %i.ad
  br i1 %.not16.i, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %.not1314.i = icmp slt i32 %i.aa, %i.ab
  %i.ae = load i64, ptr %i.t, align 8             ; 9 uses
  br i1 %.not1314.i, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.af = add i32 %i.aa, 1
  %i.ag = sub i32 %i.af, %i.ab
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3                ; 9 uses
  %i.aj = add i32 %i.ac, 1
  %i.ak = sub i32 %i.aj, %i.ad                    ; 2 uses
  %wide.trip.count.i = zext i32 %i.ak to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.al = add i32 %i.ak, -1
  %i.am = icmp ult i32 %i.al, 7
  br i1 %i.am, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967288
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i.7, %.preheader.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.7, %.preheader.i ]
  %i.an = mul nsw i64 %indvars.iv.i, %i.ae
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.an
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ao, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ap = mul nsw i64 %indvars.iv.next.i, %i.ae
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ap
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aq, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.ar = mul nsw i64 %indvars.iv.next.i.1, %i.ae
  %i.as = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ar
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.as, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.at = mul nsw i64 %indvars.iv.next.i.2, %i.ae
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.au, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4
  %i.av = mul nsw i64 %indvars.iv.next.i.3, %i.ae
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aw, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5
  %i.ax = mul nsw i64 %indvars.iv.next.i.4, %i.ae
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ay, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6
  %i.az = mul nsw i64 %indvars.iv.next.i.5, %i.ae
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.az
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ba, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7
  %i.bb = mul nsw i64 %indvars.iv.next.i.6, %i.ae
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bc, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !0

_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.7, %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.bd = mul nsw i64 %indvars.iv.i.epil, %i.ae
  %i.be = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bd
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.be, i8 0, i64 %i.ai, i1 false), !tbaa !26
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil, !llvm.loop !43

_ZN11EnvmapImage5clearEv.exit:                    ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.i.epil, %.preheader.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 20), (24, 40)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load <2 x i32>, ptr %i.b, align 4, !tbaa !30
  %i.f = load <2 x i32>, ptr %2, align 4, !tbaa !30
  %i.g = add <2 x i32> %i.e, splat (i32 1)
  %i.h = sub <2 x i32> %i.g, %i.f                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #16
  br label %_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit

_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit: ; preds = %bb.a, %bb.b
  %i.l = extractelement <2 x i32> %i.h, i64 0     ; 6 uses
  %i.m = sext i32 %i.l to i64
  %i.n = extractelement <2 x i32> %i.h, i64 1
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.m, %i.o                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, 2305843009213693951
  %i.r = shl nuw i64 %i.p, 3
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #15 ; 6 uses
  store ptr %i.t, ptr %i.i, align 8, !tbaa !16
  %i.u = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.v = sext <2 x i32> %i.u to <2 x i64>
  store <2 x i64> %i.v, ptr %i.a, align 8, !tbaa !47
  store i32 %1, ptr %0, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %2, align 4, !tbaa !31     ; 3 uses
  store i32 %i.x, ptr %i.w, align 4, !tbaa !31
  %i.y = load i32, ptr %i.d, align 4, !tbaa !32   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !31  ; 3 uses
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !31
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !32  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !32
  %.not16.i = icmp slt i32 %i.ac, %i.y
  %.not1314.i = icmp slt i32 %i.ab, %i.x
  %or.cond = select i1 %.not16.i, i1 true, i1 %.not1314.i
  br i1 %or.cond, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit
  %reass.sub = sub i32 %i.ab, %i.x
  %i.ae = add i32 %reass.sub, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 5 uses
  %i.ah = add i32 %i.ac, 1
  %i.ai = sub i32 %i.ah, %i.y                     ; 2 uses
  %wide.trip.count.i = zext i32 %i.ai to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.aj = add i32 %i.ai, -1
  %i.ak = icmp ult i32 %i.aj, 3
  br i1 %i.ak, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  %i.al = sext i32 %i.l to i64
  %i.am = sext i32 %i.l to i64
  %i.an = sext i32 %i.l to i64
  %i.ao = sext i32 %i.l to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i.3, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.3, %.preheader.i ]
  %i.ap = mul nsw i64 %indvars.iv.i, %i.al
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ap
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aq, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ar = mul nsw i64 %indvars.iv.next.i, %i.am
  %i.as = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ar
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.as, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.at = mul nsw i64 %indvars.iv.next.i.1, %i.an
  %i.au = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.au, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.av = mul nsw i64 %indvars.iv.next.i.2, %i.ao
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aw, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !0

_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.3, %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.ax = sext i32 %i.l to i64
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.ay = mul nsw i64 %indvars.iv.i.epil, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ay
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.az, i8 0, i64 %i.ag, i1 false), !tbaa !26
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11EnvmapImage5clearEv.exit, label %.preheader.i.epil, !llvm.loop !46

_ZN11EnvmapImage5clearEv.exit:                    ; preds = %_ZN11EnvmapImage5clearEv.exit.loopexit.unr-lcssa, %.preheader.i.epil, %_ZN7Imf_3_47Array2DINS_4RgbaEE17resizeEraseUnsafeEll.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11EnvmapImage4typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11EnvmapImage6pixelsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 4 dead_on_return %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imath_3_2::Vec3", align 8   ; 6 uses
  %5 = alloca %"class.Imath_3_2::Vec3", align 8   ; 7 uses
  %6 = alloca %"class.Imath_3_2::Vec3", align 8   ; 6 uses
  %7 = alloca %"class.Imath_3_2::Vec2.0", align 4 ; 4 uses
  %8 = alloca %"class.Imath_3_2::Vec3", align 8   ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  %i.b = icmp eq i32 %i.a, 0
  %_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE._ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE = select i1 %i.b, ptr @_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE, ptr @_ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE
  %i.c = load float, ptr %1, align 4, !tbaa !35   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !66 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !67 ; 2 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g) ; 2 uses
  %i.k = fcmp olt float %i.j, f0x01000000
  br i1 %i.k, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %1) #17
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef float @sqrtf(float noundef %i.j) #17
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i:           ; preds = %bb.c, %bb.b
  %.0.i.i.a = phi float [ %i.l, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %9 = fcmp une float %.0.i.i.a, 0.000000e+00
  %.pre = load float, ptr %1, align 4, !tbaa !35  ; 2 uses
  br i1 %9, label %bb.d, label %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit, !prof !68

bb.d:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i
  %i.n = load float, ptr %i.d, align 4, !tbaa !66
  %i.o = insertelement <2 x float> poison, float %.pre, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
  %i.q = insertelement <2 x float> poison, float %.0.i.i.a, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r              ; 2 uses
  store <2 x float> %i.s, ptr %1, align 4, !tbaa !37
  %i.t = load float, ptr %i.h, align 4, !tbaa !67
  %i.u = fdiv float %i.t, %.0.i.i.a
  store float %i.u, ptr %i.h, align 4, !tbaa !67
  %i.v = extractelement <2 x float> %i.s, i64 0
  br label %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit

_ZN9Imath_3_24Vec3IfE9normalizeEv.exit:           ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i, %bb.d
  %i.w = phi float [ %.pre, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i ], [ %i.v, %bb.d ] ; 5 uses
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp ogt float %i.x, 7.070000e-01
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.z = fmul float %i.w, -0.000000e+00
  %i.aa = load <2 x float>, ptr %i.d, align 4, !tbaa !37, !noalias !69 ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1
  %i.ac = fneg float %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.z, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> zeroinitializer, <2 x float> %i.ae) ; 4 uses
  %i.ag = extractelement <2 x float> %i.aa, i64 0
  %i.ah = fmul float %i.ag, 0.000000e+00
  %i.ai = fsub float %i.w, %i.ah                  ; 3 uses
  store <2 x float> %i.af, ptr %4, align 8, !tbaa !37, !alias.scope !69
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.ai, ptr %i.aj, align 8, !tbaa !67, !alias.scope !69
  %foldExtExtBinop = fmul <2 x float> %i.af, %i.af
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.al = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak)
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.am) ; 2 uses
  %i.ao = fcmp olt float %i.an, f0x01000000
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.ap = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %4) #17, !noalias !70
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51

bb.g:                                             ; preds = %bb.e
  %i.aq = tail call noundef float @sqrtf(float noundef %i.an) #17, !noalias !70
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51:         ; preds = %bb.g, %bb.f
  %.0.i.i52 = phi float [ %i.ap, %bb.f ], [ %i.aq, %bb.g ] ; 3 uses
  %i.ar = fcmp oeq float %.0.i.i52, 0.000000e+00
  br i1 %i.ar, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit, label %bb.h, !prof !36

bb.h:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51
  %i.as = load <2 x float>, ptr %4, align 8, !tbaa !37, !noalias !70
  %i.at = insertelement <2 x float> poison, float %.0.i.i52, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fdiv <2 x float> %i.as, %i.au
  %i.aw = load float, ptr %i.aj, align 8, !tbaa !67, !noalias !70
  %i.ax = fdiv float %i.aw, %.0.i.i52
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit:        ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51, %bb.h
  %.sink.i = phi float [ %i.ax, %bb.h ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51 ]
  %i.ay = phi <2 x float> [ %i.av, %bb.h ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.m

bb.i:                                             ; preds = %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.az = load float, ptr %i.d, align 4, !tbaa !66, !noalias !71 ; 2 uses
  %i.ba = load float, ptr %i.h, align 4, !tbaa !67, !noalias !71 ; 2 uses
  %i.bb = fmul float %i.ba, -0.000000e+00
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.az, float 0.000000e+00, float %i.bb) ; 3 uses
  %i.bd = fmul ninf float %i.w, 0.000000e+00
  %i.be = fsub float %i.ba, %i.bd                 ; 3 uses
  %i.bf = fneg float %i.az
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.bf) ; 3 uses
  store float %i.bc, ptr %5, align 8, !tbaa !35, !alias.scope !71
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.be, ptr %i.bh, align 4, !tbaa !66, !alias.scope !71
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float %i.bg, ptr %i.bi, align 8, !tbaa !67, !alias.scope !71
  %i.bj = fmul float %i.be, %i.be
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bk) ; 2 uses
  %i.bm = fcmp olt float %i.bl, f0x01000000
  br i1 %i.bm, label %bb.j, label %bb.k, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.bn = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %5) #17, !noalias !72
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53

bb.k:                                             ; preds = %bb.i
  %i.bo = tail call noundef float @sqrtf(float noundef %i.bl) #17, !noalias !72
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53:         ; preds = %bb.k, %bb.j
  %.0.i.i54 = phi float [ %i.bn, %bb.j ], [ %i.bo, %bb.k ] ; 3 uses
  %i.bp = fcmp oeq float %.0.i.i54, 0.000000e+00
  br i1 %i.bp, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58, label %bb.l, !prof !36

bb.l:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53
  %i.bq = load <2 x float>, ptr %5, align 8, !tbaa !37, !noalias !72
  %i.br = insertelement <2 x float> poison, float %.0.i.i54, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fdiv <2 x float> %i.bq, %i.bs
  %i.bu = load float, ptr %i.bi, align 8, !tbaa !67, !noalias !72
  %i.bv = fdiv float %i.bu, %.0.i.i54
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58:      ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53, %bb.l
  %.sink.i57 = phi float [ %i.bv, %bb.l ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53 ]
  %i.bw = phi <2 x float> [ %i.bt, %bb.l ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit
  %.sink.i.pn = phi float [ %.sink.i, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit ], [ %.sink.i57, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58 ]
  %i.bx = phi <2 x float> [ %i.ay, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit ], [ %i.bw, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit58 ]
  %.sroa.10.0 = fmul float %2, %.sink.i.pn        ; 3 uses
  %i.by = insertelement <2 x float> poison, float %2, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bx           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.cb = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.cc = load float, ptr %1, align 4, !tbaa !35, !noalias !73 ; 2 uses
  %i.cd = extractelement <2 x float> %i.ca, i64 0
  %i.ce = fneg float %i.cd
  %i.cf = load <2 x float>, ptr %i.d, align 4, !tbaa !37, !noalias !73 ; 3 uses
  %i.cg = fneg float %i.cb
  %i.ch = extractelement <2 x float> %i.cf, i64 1
  %i.ci = fmul float %i.ch, %i.cg
  %i.cj = fneg float %.sroa.10.0
  %i.ck = fmul float %i.cc, %i.cj
  %i.cl = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x float> %i.cl, float %.sroa.10.0, i64 0
  %i.cn = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.ck, i64 1
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cm, <2 x float> %i.co) ; 4 uses
  %i.cq = extractelement <2 x float> %i.cf, i64 0
  %i.cr = fmul float %i.cq, %i.ce
  %i.cs = call float @llvm.fmuladd.f32(float %i.cc, float %i.cb, float %i.cr) ; 3 uses
  store <2 x float> %i.cp, ptr %6, align 8, !tbaa !37, !alias.scope !73
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.cs, ptr %i.ct, align 8, !tbaa !67, !alias.scope !73
  %foldExtExtBinop177 = fmul <2 x float> %i.cp, %i.cp
  %i.cu = extractelement <2 x float> %foldExtExtBinop177, i64 1
  %i.cv = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cw = call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cw) ; 2 uses
  %i.cy = fcmp olt float %i.cx, f0x01000000
  br i1 %i.cy, label %bb.n, label %bb.o, !prof !36

bb.n:                                             ; preds = %bb.m
  %i.cz = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %6) #17, !noalias !74
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59

bb.o:                                             ; preds = %bb.m
  %i.da = call noundef float @sqrtf(float noundef %i.cx) #17, !noalias !74
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59:         ; preds = %bb.o, %bb.n
  %.0.i.i60 = phi float [ %i.cz, %bb.n ], [ %i.da, %bb.o ] ; 3 uses
  %i.db = fcmp oeq float %.0.i.i60, 0.000000e+00
  br i1 %i.db, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64, label %bb.p, !prof !36

bb.p:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59
  %i.dc = load <2 x float>, ptr %6, align 8, !tbaa !37, !noalias !74
  %i.dd = insertelement <2 x float> poison, float %.0.i.i60, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fdiv <2 x float> %i.dc, %i.de
  %i.dg = load float, ptr %i.ct, align 8, !tbaa !67, !noalias !74
  %i.dh = fdiv float %i.dg, %.0.i.i60
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64:      ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59, %bb.p
  %.sink.i63 = phi float [ %i.dh, %bb.p ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59 ]
  %i.di = phi <2 x float> [ %i.df, %bb.p ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i59 ]
  %i.dj = fmul <2 x float> %i.bz, %i.di
  %i.dk = fmul float %2, %.sink.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.dl = icmp sgt i32 %3, 0
  br i1 %i.dl, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64
  %i.dm = add nuw nsw i32 %3, 1
  %i.dn = uitofp nneg i32 %i.dm to float          ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph136
  %.039135.us = phi float [ 0.000000e+00, %.lr.ph136 ], [ %i.ee, %._crit_edge.us ]
  %.043133.us = phi i32 [ 0, %.lr.ph136 ], [ %i.ez, %._crit_edge.us ] ; 2 uses
  %i.dq = phi <4 x float> [ zeroinitializer, %.lr.ph136 ], [ %i.ex, %._crit_edge.us ]
  %i.dr = shl nuw nsw i32 %.043133.us, 1
  %i.ds = add nuw nsw i32 %i.dr, 2
  %i.dt = uitofp nneg i32 %i.ds to float
  %i.du = fdiv float %i.dt, %i.dn
  %i.dv = fadd float %i.du, -1.000000e+00         ; 3 uses
  %i.dw = call noundef float @llvm.fabs.f32(float %i.dv)
  %i.dx = fsub float 1.000000e+00, %i.dw
  %i.dy = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dj, %i.dz
  %i.eb = fmul float %i.dk, %i.dv
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph.us, %bb.q
  %.1125.us = phi float [ %.039135.us, %.lr.ph.us ], [ %i.ee, %bb.q ]
  %.042123.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ey, %bb.q ] ; 2 uses
  %10 = phi <4 x float> [ %i.dq, %.lr.ph.us ], [ %i.ex, %bb.q ]
  %11 = shl nuw nsw i32 %.042123.us, 1
  %12 = add nuw nsw i32 %11, 2
  %13 = uitofp nneg i32 %12 to float
  %14 = fdiv float %13, %i.dn
  %15 = fadd float %14, -1.000000e+00             ; 3 uses
  %16 = call noundef float @llvm.fabs.f32(float %15)
  %17 = fsub float 1.000000e+00, %16
  %18 = fmul float %.sroa.10.0, %15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %19 = load float, ptr %i.h, align 4, !tbaa !67, !noalias !75
  %20 = fadd float %18, %19
  %21 = fadd float %i.eb, %20
  %22 = insertelement <2 x float> poison, float %15, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x float> %i.ca, %23
  %25 = load <2 x float>, ptr %1, align 4, !tbaa !37, !noalias !75
  %26 = fadd <2 x float> %24, %25
  %27 = fadd <2 x float> %i.ea, %26
  store <2 x float> %27, ptr %8, align 8, !tbaa !37, !alias.scope !76
  store float %21, ptr %i.dp, align 8, !tbaa !67, !alias.scope !76
  call void %_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE._ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, ptr noundef nonnull align 4 dereferenceable(16) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %8), !callees !77
  %i.ec = call i64 @_ZNK11EnvmapImage6sampleERKN9Imath_3_24Vec2IfEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 4 uses
  %.sroa.478.0.extract.shift.us = lshr i64 %i.ec, 16
  %.sroa.5.0.extract.shift.us = lshr i64 %i.ec, 32
  %.sroa.679.0.extract.shift.us = lshr i64 %i.ec, 48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ed = fmul float %i.dx, %17                   ; 2 uses
  %i.ee = fadd float %.1125.us, %i.ed             ; 3 uses
  %i.ef = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !39 ; 4 uses
  %i.eg = and i64 %i.ec, 65535
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !40
  %i.ej = and i64 %.sroa.478.0.extract.shift.us, 65535
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !40
  %i.em = and i64 %.sroa.5.0.extract.shift.us, 65535
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !40
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.sroa.679.0.extract.shift.us
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !40
  %i.er = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.el, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.eo, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.eq, i64 3
  %i.ev = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ew, <4 x float> %10) ; 3 uses
  %i.ey = add nuw nsw i32 %.042123.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ey, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.q, !llvm.loop !64

._crit_edge.us:                                   ; preds = %bb.q
  %i.ez = add nuw nsw i32 %.043133.us, 1          ; 2 uses
  %exitcond151.not = icmp eq i32 %i.ez, %3
  br i1 %exitcond151.not, label %._crit_edge137, label %.lr.ph.us, !llvm.loop !65

._crit_edge137:                                   ; preds = %._crit_edge.us, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64
  %.039.lcssa = phi float [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64 ], [ %i.ee, %._crit_edge.us ]
  %i.fa = phi <4 x float> [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit64 ], [ %i.ex, %._crit_edge.us ] ; 4 uses
  %i.fb = fdiv float 1.000000e+00, %.039.lcssa    ; 4 uses
  %i.fc = extractelement <4 x float> %i.fa, i64 0
  %i.fd = fmul float %i.fc, %i.fb                 ; 2 uses
  %i.fe = bitcast float %i.fd to i32
  %i.ff = call float @llvm.fabs.f32(float %i.fd)
  %i.fg = bitcast float %i.ff to i32              ; 10 uses
  %i.fh = lshr i32 %i.fe, 16                      ; 3 uses
  %i.fi = trunc nuw i32 %i.fh to i16
  %i.fj = and i16 %i.fi, -32768                   ; 3 uses
  %i.fk = icmp samesign ugt i32 %i.fg, 947912703
  br i1 %i.fk, label %bb.r, label %bb.x

bb.r:                                             ; preds = %._crit_edge137
  %i.fl = icmp samesign ugt i32 %i.fg, 2139095039
  br i1 %i.fl, label %bb.s, label %bb.u, !prof !36

bb.s:                                             ; preds = %bb.r
  %i.fm = or disjoint i16 %i.fj, 31744            ; 2 uses
  %i.fn = icmp eq i32 %i.fg, 2139095040
  br i1 %i.fn, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fo = lshr i32 %i.fg, 13
  %i.fp = and i32 %i.fo, 1023                     ; 2 uses
  %i.fq = icmp eq i32 %i.fp, 0
  %i.fr = zext i1 %i.fq to i16
  %i.fs = trunc nuw nsw i32 %i.fp to i16
  %i.ft = or i16 %i.fs, %i.fr
  %i.fu = or disjoint i16 %i.ft, %i.fm
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.u:                                             ; preds = %bb.r
  %i.fv = icmp samesign ugt i32 %i.fg, 1199566847
  br i1 %i.fv, label %bb.v, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.u
  %i.fw = or disjoint i16 %i.fj, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.w:                                             ; preds = %bb.u
  %i.fx = add nuw nsw i32 %i.fg, 134221823
  %i.fy = lshr i32 %i.fg, 13
  %i.fz = and i32 %i.fy, 1
  %i.ga = add nuw nsw i32 %i.fx, %i.fz
  %i.gb = lshr i32 %i.ga, 13
  %i.gc = and i32 %i.fh, 32768
  %i.gd = or i32 %i.gb, %i.gc
  %i.ge = trunc i32 %i.gd to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.x:                                             ; preds = %._crit_edge137
  %i.gf = icmp samesign ult i32 %i.fg, 855638017
  br i1 %i.gf, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gg = lshr i32 %i.fg, 23                      ; 2 uses
  %i.gh = sub nuw nsw i32 126, %i.gg
  %i.gi = and i32 %i.fg, 8388607
  %i.gj = or disjoint i32 %i.gi, 8388608          ; 2 uses
  %i.gk = add nsw i32 %i.gg, -94
  %i.gl = shl i32 %i.gj, %i.gk                    ; 2 uses
  %i.gm = lshr i32 %i.gj, %i.gh                   ; 2 uses
  %i.gn = and i32 %i.fh, 32768
  %i.go = or i32 %i.gm, %i.gn
  %i.gp = trunc nuw i32 %i.go to i16              ; 2 uses
  %i.gq = icmp ugt i32 %i.gl, -2147483648
  br i1 %i.gq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gr = icmp ne i32 %i.gl, -2147483648
  %i.gs = and i32 %i.gm, 1
  %.not.i.i.i = icmp eq i32 %i.gs, 0
  %or.cond.i.i.i = select i1 %i.gr, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gt = add nuw i16 %i.gp, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.z, %bb.aa
  %.033.i.i.i = phi i16 [ %i.fj, %bb.x ], [ %i.fu, %bb.t ], [ %i.fw, %bb.v ], [ %i.ge, %bb.w ], [ %i.fm, %bb.s ], [ %i.gt, %bb.aa ], [ %i.gp, %bb.z ]
  %i.gu = extractelement <4 x float> %i.fa, i64 1
  %i.gv = fmul float %i.gu, %i.fb                 ; 2 uses
  %i.gw = bitcast float %i.gv to i32
  %i.gx = call float @llvm.fabs.f32(float %i.gv)
  %i.gy = bitcast float %i.gx to i32              ; 10 uses
  %i.gz = lshr i32 %i.gw, 16                      ; 3 uses
  %i.ha = trunc nuw i32 %i.gz to i16
  %i.hb = and i16 %i.ha, -32768                   ; 3 uses
  %i.hc = icmp samesign ugt i32 %i.gy, 947912703
  br i1 %i.hc, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.hd = icmp samesign ugt i32 %i.gy, 2139095039
  br i1 %i.hd, label %bb.ac, label %bb.ae, !prof !36

bb.ac:                                            ; preds = %bb.ab
  %i.he = or disjoint i16 %i.hb, 31744            ; 2 uses
  %i.hf = icmp eq i32 %i.gy, 2139095040
  br i1 %i.hf, label %_ZN9Imath_3_24halfaSEf.exit68, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = lshr i32 %i.gy, 13
  %i.hh = and i32 %i.hg, 1023                     ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 0
  %i.hj = zext i1 %i.hi to i16
  %i.hk = trunc nuw nsw i32 %i.hh to i16
  %i.hl = or i16 %i.hk, %i.hj
  %i.hm = or disjoint i16 %i.hl, %i.he
  br label %_ZN9Imath_3_24halfaSEf.exit68

bb.ae:                                            ; preds = %bb.ab
  %i.hn = icmp samesign ugt i32 %i.gy, 1199566847
  br i1 %i.hn, label %bb.af, label %bb.ag, !prof !36

bb.af:                                            ; preds = %bb.ae
  %i.ho = or disjoint i16 %i.hb, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit68

bb.ag:                                            ; preds = %bb.ae
  %i.hp = add nuw nsw i32 %i.gy, 134221823
  %i.hq = lshr i32 %i.gy, 13
  %i.hr = and i32 %i.hq, 1
  %i.hs = add nuw nsw i32 %i.hp, %i.hr
  %i.ht = lshr i32 %i.hs, 13
  %i.hu = and i32 %i.gz, 32768
  %i.hv = or i32 %i.ht, %i.hu
  %i.hw = trunc i32 %i.hv to i16
  br label %_ZN9Imath_3_24halfaSEf.exit68

bb.ah:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.hx = icmp samesign ult i32 %i.gy, 855638017
  br i1 %i.hx, label %_ZN9Imath_3_24halfaSEf.exit68, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hy = lshr i32 %i.gy, 23                      ; 2 uses
  %i.hz = sub nuw nsw i32 126, %i.hy
  %i.ia = and i32 %i.gy, 8388607
  %i.ib = or disjoint i32 %i.ia, 8388608          ; 2 uses
  %i.ic = add nsw i32 %i.hy, -94
  %i.id = shl i32 %i.ib, %i.ic                    ; 2 uses
  %i.ie = lshr i32 %i.ib, %i.hz                   ; 2 uses
  %i.if = and i32 %i.gz, 32768
  %i.ig = or i32 %i.ie, %i.if
  %i.ih = trunc nuw i32 %i.ig to i16              ; 2 uses
  %i.ii = icmp ugt i32 %i.id, -2147483648
  br i1 %i.ii, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ij = icmp ne i32 %i.id, -2147483648
  %i.ik = and i32 %i.ie, 1
  %.not.i.i.i65 = icmp eq i32 %i.ik, 0
  %or.cond.i.i.i66 = select i1 %i.ij, i1 true, i1 %.not.i.i.i65
  br i1 %or.cond.i.i.i66, label %_ZN9Imath_3_24halfaSEf.exit68, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.il = add nuw i16 %i.ih, 1
  br label %_ZN9Imath_3_24halfaSEf.exit68

_ZN9Imath_3_24halfaSEf.exit68:                    ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.aj, %bb.ak
  %.033.i.i.i67 = phi i16 [ %i.hb, %bb.ah ], [ %i.hm, %bb.ad ], [ %i.ho, %bb.af ], [ %i.hw, %bb.ag ], [ %i.he, %bb.ac ], [ %i.il, %bb.ak ], [ %i.ih, %bb.aj ]
  %i.im = extractelement <4 x float> %i.fa, i64 2
  %i.in = fmul float %i.im, %i.fb                 ; 2 uses
  %i.io = bitcast float %i.in to i32
  %i.ip = call float @llvm.fabs.f32(float %i.in)
  %i.iq = bitcast float %i.ip to i32              ; 10 uses
  %i.ir = lshr i32 %i.io, 16                      ; 3 uses
  %i.is = trunc nuw i32 %i.ir to i16
  %i.it = and i16 %i.is, -32768                   ; 3 uses
  %i.iu = icmp samesign ugt i32 %i.iq, 947912703
  br i1 %i.iu, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit68
  %i.iv = icmp samesign ugt i32 %i.iq, 2139095039
  br i1 %i.iv, label %bb.am, label %bb.ao, !prof !36

bb.am:                                            ; preds = %bb.al
  %i.iw = or disjoint i16 %i.it, 31744            ; 2 uses
  %i.ix = icmp eq i32 %i.iq, 2139095040
  br i1 %i.ix, label %_ZN9Imath_3_24halfaSEf.exit72, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iy = lshr i32 %i.iq, 13
  %i.iz = and i32 %i.iy, 1023                     ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 0
  %i.jb = zext i1 %i.ja to i16
  %i.jc = trunc nuw nsw i32 %i.iz to i16
  %i.jd = or i16 %i.jc, %i.jb
  %i.je = or disjoint i16 %i.jd, %i.iw
  br label %_ZN9Imath_3_24halfaSEf.exit72

bb.ao:                                            ; preds = %bb.al
  %i.jf = icmp samesign ugt i32 %i.iq, 1199566847
  br i1 %i.jf, label %bb.ap, label %bb.aq, !prof !36

bb.ap:                                            ; preds = %bb.ao
  %i.jg = or disjoint i16 %i.it, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit72

bb.aq:                                            ; preds = %bb.ao
  %i.jh = add nuw nsw i32 %i.iq, 134221823
  %i.ji = lshr i32 %i.iq, 13
  %i.jj = and i32 %i.ji, 1
  %i.jk = add nuw nsw i32 %i.jh, %i.jj
  %i.jl = lshr i32 %i.jk, 13
  %i.jm = and i32 %i.ir, 32768
  %i.jn = or i32 %i.jl, %i.jm
  %i.jo = trunc i32 %i.jn to i16
  br label %_ZN9Imath_3_24halfaSEf.exit72

bb.ar:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit68
  %i.jp = icmp samesign ult i32 %i.iq, 855638017
  br i1 %i.jp, label %_ZN9Imath_3_24halfaSEf.exit72, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jq = lshr i32 %i.iq, 23                      ; 2 uses
  %i.jr = sub nuw nsw i32 126, %i.jq
  %i.js = and i32 %i.iq, 8388607
  %i.jt = or disjoint i32 %i.js, 8388608          ; 2 uses
  %i.ju = add nsw i32 %i.jq, -94
  %i.jv = shl i32 %i.jt, %i.ju                    ; 2 uses
  %i.jw = lshr i32 %i.jt, %i.jr                   ; 2 uses
  %i.jx = and i32 %i.ir, 32768
  %i.jy = or i32 %i.jw, %i.jx
  %i.jz = trunc nuw i32 %i.jy to i16              ; 2 uses
  %i.ka = icmp ugt i32 %i.jv, -2147483648
  br i1 %i.ka, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kb = icmp ne i32 %i.jv, -2147483648
  %i.kc = and i32 %i.jw, 1
  %.not.i.i.i69 = icmp eq i32 %i.kc, 0
  %or.cond.i.i.i70 = select i1 %i.kb, i1 true, i1 %.not.i.i.i69
  br i1 %or.cond.i.i.i70, label %_ZN9Imath_3_24halfaSEf.exit72, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.kd = add nuw i16 %i.jz, 1
  br label %_ZN9Imath_3_24halfaSEf.exit72

_ZN9Imath_3_24halfaSEf.exit72:                    ; preds = %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.ar, %bb.at, %bb.au
  %.033.i.i.i71 = phi i16 [ %i.it, %bb.ar ], [ %i.je, %bb.an ], [ %i.jg, %bb.ap ], [ %i.jo, %bb.aq ], [ %i.iw, %bb.am ], [ %i.kd, %bb.au ], [ %i.jz, %bb.at ]
  %i.ke = extractelement <4 x float> %i.fa, i64 3
  %i.kf = fmul float %i.ke, %i.fb                 ; 2 uses
  %i.kg = bitcast float %i.kf to i32
  %i.kh = call float @llvm.fabs.f32(float %i.kf)
  %i.ki = bitcast float %i.kh to i32              ; 10 uses
  %i.kj = lshr i32 %i.kg, 16                      ; 3 uses
  %i.kk = trunc nuw i32 %i.kj to i16
  %i.kl = and i16 %i.kk, -32768                   ; 3 uses
  %i.km = icmp samesign ugt i32 %i.ki, 947912703
  br i1 %i.km, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit72
  %i.kn = icmp samesign ugt i32 %i.ki, 2139095039
  br i1 %i.kn, label %bb.aw, label %bb.ay, !prof !36

bb.aw:                                            ; preds = %bb.av
  %i.ko = or disjoint i16 %i.kl, 31744            ; 2 uses
  %i.kp = icmp eq i32 %i.ki, 2139095040
  br i1 %i.kp, label %_ZN9Imath_3_24halfaSEf.exit76, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kq = lshr i32 %i.ki, 13
  %i.kr = and i32 %i.kq, 1023                     ; 2 uses
  %i.ks = icmp eq i32 %i.kr, 0
  %i.kt = zext i1 %i.ks to i16
  %i.ku = trunc nuw nsw i32 %i.kr to i16
  %i.kv = or i16 %i.ku, %i.kt
  %i.kw = or disjoint i16 %i.kv, %i.ko
  br label %_ZN9Imath_3_24halfaSEf.exit76

bb.ay:                                            ; preds = %bb.av
  %i.kx = icmp samesign ugt i32 %i.ki, 1199566847
  br i1 %i.kx, label %bb.az, label %bb.ba, !prof !36

bb.az:                                            ; preds = %bb.ay
  %i.ky = or disjoint i16 %i.kl, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit76

bb.ba:                                            ; preds = %bb.ay
  %i.kz = add nuw nsw i32 %i.ki, 134221823
  %i.la = lshr i32 %i.ki, 13
  %i.lb = and i32 %i.la, 1
  %i.lc = add nuw nsw i32 %i.kz, %i.lb
  %i.ld = lshr i32 %i.lc, 13
  %i.le = and i32 %i.kj, 32768
  %i.lf = or i32 %i.ld, %i.le
  %i.lg = trunc i32 %i.lf to i16
  br label %_ZN9Imath_3_24halfaSEf.exit76

bb.bb:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit72
  %i.lh = icmp samesign ult i32 %i.ki, 855638017
  br i1 %i.lh, label %_ZN9Imath_3_24halfaSEf.exit76, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.li = lshr i32 %i.ki, 23                      ; 2 uses
  %i.lj = sub nuw nsw i32 126, %i.li
  %i.lk = and i32 %i.ki, 8388607
  %i.ll = or disjoint i32 %i.lk, 8388608          ; 2 uses
  %i.lm = add nsw i32 %i.li, -94
  %i.ln = shl i32 %i.ll, %i.lm                    ; 2 uses
  %i.lo = lshr i32 %i.ll, %i.lj                   ; 2 uses
  %i.lp = and i32 %i.kj, 32768
  %i.lq = or i32 %i.lo, %i.lp
  %i.lr = trunc nuw i32 %i.lq to i16              ; 2 uses
  %i.ls = icmp ugt i32 %i.ln, -2147483648
  br i1 %i.ls, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lt = icmp ne i32 %i.ln, -2147483648
  %i.lu = and i32 %i.lo, 1
  %.not.i.i.i73 = icmp eq i32 %i.lu, 0
  %or.cond.i.i.i74 = select i1 %i.lt, i1 true, i1 %.not.i.i.i73
  br i1 %or.cond.i.i.i74, label %_ZN9Imath_3_24halfaSEf.exit76, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lv = add nuw i16 %i.lr, 1
  br label %_ZN9Imath_3_24halfaSEf.exit76

_ZN9Imath_3_24halfaSEf.exit76:                    ; preds = %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.be
  %.033.i.i.i75 = phi i16 [ %i.kl, %bb.bb ], [ %i.kw, %bb.ax ], [ %i.ky, %bb.az ], [ %i.lg, %bb.ba ], [ %i.ko, %bb.aw ], [ %i.lv, %bb.be ], [ %i.lr, %bb.bd ]
  %i.lw = insertelement <4 x i16> poison, i16 %.033.i.i.i, i64 0
  %i.lx = insertelement <4 x i16> %i.lw, i16 %.033.i.i.i67, i64 1
  %i.ly = insertelement <4 x i16> %i.lx, i16 %.033.i.i.i71, i64 2
  %i.lz = insertelement <4 x i16> %i.ly, i16 %.033.i.i.i75, i64 3
  %i.ma = bitcast <4 x i16> %i.lz to i64
  ret i64 %i.ma
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  tail call void @_ZN7Imf_3_410LatLongMap13pixelPositionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS1_4Vec3IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 4 uses
  %4 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN7Imf_3_47CubeMap20faceAndPixelPositionERKN9Imath_3_24Vec3IfEERKNS1_3BoxINS1_4Vec2IiEEEERNS_11CubeMapFaceERNS7_IfEE(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = load <2 x float>, ptr %3, align 8, !tbaa !37
  store <2 x float> %i.c, ptr %4, align 8, !tbaa !37
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZNK11EnvmapImage6sampleERKN9Imath_3_24Vec2IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !81   ; 4 uses
  %i.b = fcmp ult float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fptosi float %i.a to i32
  br label %_ZN9Imath_3_25floorIfEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = fneg float %i.a                          ; 2 uses
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp i32 %i.e to float
  %i.g = fcmp ogt float %i.d, %i.f
  %.neg.i = sext i1 %i.g to i32
  %.neg5.i = sub nsw i32 %.neg.i, %i.e
  br label %_ZN9Imath_3_25floorIfEEiT_.exit

_ZN9Imath_3_25floorIfEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.c, %bb.b ], [ %.neg5.i, %bb.c ] ; 3 uses
  %i.i = add nsw i32 %i.h, 1                      ; 3 uses
  %i.j = sitofp i32 %i.i to float
  %i.k = fsub float %i.j, %i.a                    ; 9 uses
  %i.l = fsub float 1.000000e+00, %i.k            ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = icmp slt i32 %i.h, %i.n
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.p)
  %i.s = sub i32 %i.r, %i.n
  %i.t = select i1 %i.q, i32 0, i32 %i.s
  %i.u = icmp slt i32 %i.i, %i.n
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.p)
  %i.w = sub i32 %i.v, %i.n
  %i.x = select i1 %i.u, i32 0, i32 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !82 ; 4 uses
  %i.aa = fcmp ult float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit
  %i.ab = fptosi float %i.z to i32
  br label %_ZN9Imath_3_25floorIfEEiT_.exit48

bb.e:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit
  %i.ac = fneg float %i.z                         ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fcmp ogt float %i.ac, %i.ae
  %.neg.i46 = sext i1 %i.af to i32
  %.neg5.i47 = sub nsw i32 %.neg.i46, %i.ad
  br label %_ZN9Imath_3_25floorIfEEiT_.exit48

_ZN9Imath_3_25floorIfEEiT_.exit48:                ; preds = %bb.d, %bb.e
  %i.ag = phi i32 [ %i.ab, %bb.d ], [ %.neg5.i47, %bb.e ] ; 3 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fsub float %i.ai, %i.z                  ; 5 uses
  %i.ak = fsub float 1.000000e+00, %i.aj          ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ap = icmp slt i32 %i.ag, %i.am
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ao)
  %i.ar = sub i32 %i.aq, %i.am
  %i.as = select i1 %i.ap, i32 0, i32 %i.ar
  %i.at = icmp slt i32 %i.ah, %i.am
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ao)
  %i.av = sub i32 %i.au, %i.am
  %i.aw = select i1 %i.at, i32 0, i32 %i.av
  %i.ax = sext i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !15 ; 2 uses
  %i.bc = mul nsw i64 %i.bb, %i.ax
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = sext i32 %i.t to i64                    ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 2, !tbaa !26 ; 4 uses
  %.sroa.470.0.extract.shift = lshr i64 %i.bg, 16
  %.sroa.571.0.extract.shift = lshr i64 %i.bg, 32
  %.sroa.672.0.extract.shift = lshr i64 %i.bg, 48
  %i.bh = sext i32 %i.x to i64                    ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 2, !tbaa !26 ; 4 uses
  %.sroa.466.0.extract.shift = lshr i64 %i.bj, 16
  %.sroa.567.0.extract.shift = lshr i64 %i.bj, 32
  %.sroa.668.0.extract.shift = lshr i64 %i.bj, 48
  %i.bk = sext i32 %i.aw to i64
  %i.bl = mul nsw i64 %i.bb, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.be
  %i.bo = load i64, ptr %i.bn, align 2, !tbaa !26 ; 4 uses
  %.sroa.462.0.extract.shift = lshr i64 %i.bo, 16
  %.sroa.563.0.extract.shift = lshr i64 %i.bo, 32
  %.sroa.664.0.extract.shift = lshr i64 %i.bo, 48
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bh
  %i.bq = load i64, ptr %i.bp, align 2, !tbaa !26 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.bq, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.bq, 32
  %.sroa.6.0.extract.shift = lshr i64 %i.bq, 48
  %i.br = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !39 ; 16 uses
  %i.bs = and i64 %i.bg, 65535
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !40
  %i.bv = and i64 %i.bj, 65535
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !40
  %i.by = fmul float %i.l, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.k, float %i.by)
  %i.ca = and i64 %i.bo, 65535
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !40
  %i.cd = and i64 %i.bq, 65535
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !40
  %i.cg = fmul float %i.l, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.k, float %i.cg)
  %i.ci = fmul float %i.ak, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aj, float %i.ci) ; 2 uses
  %i.ck = bitcast float %i.cj to i32
  %i.cl = tail call float @llvm.fabs.f32(float %i.cj)
  %i.cm = bitcast float %i.cl to i32              ; 10 uses
  %i.cn = lshr i32 %i.ck, 16                      ; 3 uses
  %i.co = trunc nuw i32 %i.cn to i16
  %i.cp = and i16 %i.co, -32768                   ; 3 uses
  %i.cq = icmp samesign ugt i32 %i.cm, 947912703
  br i1 %i.cq, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit48
  %i.cr = icmp samesign ugt i32 %i.cm, 2139095039
  br i1 %i.cr, label %bb.g, label %bb.i, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.cs = or disjoint i16 %i.cp, 31744            ; 2 uses
  %i.ct = icmp eq i32 %i.cm, 2139095040
  br i1 %i.ct, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = lshr i32 %i.cm, 13
  %i.cv = and i32 %i.cu, 1023                     ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i16
  %i.cy = trunc nuw nsw i32 %i.cv to i16
  %i.cz = or i16 %i.cy, %i.cx
  %i.da = or disjoint i16 %i.cz, %i.cs
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.i:                                             ; preds = %bb.f
  %i.db = icmp samesign ugt i32 %i.cm, 1199566847
  br i1 %i.db, label %bb.j, label %bb.k, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.dc = or disjoint i16 %i.cp, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.k:                                             ; preds = %bb.i
  %i.dd = add nuw nsw i32 %i.cm, 134221823
  %i.de = lshr i32 %i.cm, 13
  %i.df = and i32 %i.de, 1
  %i.dg = add nuw nsw i32 %i.dd, %i.df
  %i.dh = lshr i32 %i.dg, 13
  %i.di = and i32 %i.cn, 32768
  %i.dj = or i32 %i.dh, %i.di
  %i.dk = trunc i32 %i.dj to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.l:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit48
  %i.dl = icmp samesign ult i32 %i.cm, 855638017
  br i1 %i.dl, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = lshr i32 %i.cm, 23                      ; 2 uses
  %i.dn = sub nuw nsw i32 126, %i.dm
  %i.do = and i32 %i.cm, 8388607
  %i.dp = or disjoint i32 %i.do, 8388608          ; 2 uses
  %i.dq = add nsw i32 %i.dm, -94
  %i.dr = shl i32 %i.dp, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dn                   ; 2 uses
  %i.dt = and i32 %i.cn, 32768
  %i.du = or i32 %i.ds, %i.dt
  %i.dv = trunc nuw i32 %i.du to i16              ; 2 uses
  %i.dw = icmp ugt i32 %i.dr, -2147483648
  br i1 %i.dw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp ne i32 %i.dr, -2147483648
  %i.dy = and i32 %i.ds, 1
  %.not.i.i.i = icmp eq i32 %i.dy, 0
  %or.cond.i.i.i = select i1 %i.dx, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.o

end_hunk_0
begin_hunk_1_@_ZNK11EnvmapImage6sampleERKN9Imath_3_24Vec2IfEE:bb.a

bb.ac:                                            ; preds = %bb.z
  %i.hr = icmp samesign ugt i32 %i.hc, 1199566847
  br i1 %i.hr, label %bb.ad, label %bb.ae, !prof !36

bb.ad:                                            ; preds = %bb.ac
  %i.hs = or disjoint i16 %i.hf, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit56

bb.ae:                                            ; preds = %bb.ac
  %i.ht = add nuw nsw i32 %i.hc, 134221823
  %i.hu = lshr i32 %i.hc, 13
  %i.hv = and i32 %i.hu, 1
  %i.hw = add nuw nsw i32 %i.ht, %i.hv
  %i.hx = lshr i32 %i.hw, 13
  %i.hy = and i32 %i.hd, 32768
  %i.hz = or i32 %i.hx, %i.hy
  %i.ia = trunc i32 %i.hz to i16
  br label %_ZN9Imath_3_24halfaSEf.exit56

bb.af:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit52
  %i.ib = icmp samesign ult i32 %i.hc, 855638017
  br i1 %i.ib, label %_ZN9Imath_3_24halfaSEf.exit56, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = lshr i32 %i.hc, 23                      ; 2 uses
  %i.id = sub nuw nsw i32 126, %i.ic
  %i.ie = and i32 %i.hc, 8388607
  %i.if = or disjoint i32 %i.ie, 8388608          ; 2 uses
  %i.ig = add nsw i32 %i.ic, -94
  %i.ih = shl i32 %i.if, %i.ig                    ; 2 uses
  %i.ii = lshr i32 %i.if, %i.id                   ; 2 uses
  %i.ij = and i32 %i.hd, 32768
  %i.ik = or i32 %i.ii, %i.ij
  %i.il = trunc nuw i32 %i.ik to i16              ; 2 uses
  %i.im = icmp ugt i32 %i.ih, -2147483648
  br i1 %i.im, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.in = icmp ne i32 %i.ih, -2147483648
  %i.io = and i32 %i.ii, 1
  %.not.i.i.i53 = icmp eq i32 %i.io, 0
  %or.cond.i.i.i54 = select i1 %i.in, i1 true, i1 %.not.i.i.i53
  br i1 %or.cond.i.i.i54, label %_ZN9Imath_3_24halfaSEf.exit56, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ip = add nuw i16 %i.il, 1
  br label %_ZN9Imath_3_24halfaSEf.exit56

_ZN9Imath_3_24halfaSEf.exit56:                    ; preds = %bb.aa, %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.ah, %bb.ai
  %.033.i.i.i55 = phi i16 [ %i.hf, %bb.af ], [ %i.hq, %bb.ab ], [ %i.hs, %bb.ad ], [ %i.ia, %bb.ae ], [ %i.hi, %bb.aa ], [ %i.ip, %bb.ai ], [ %i.il, %bb.ah ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.672.0.extract.shift
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !40
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.668.0.extract.shift
  %i.it = load float, ptr %i.is, align 4, !tbaa !40
  %i.iu = fmul float %i.l, %i.it
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.k, float %i.iu)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.664.0.extract.shift
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !40
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.6.0.extract.shift
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !40
  %i.ja = fmul float %i.l, %i.iz
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.k, float %i.ja)
  %i.jc = fmul float %i.ak, %i.jb
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.aj, float %i.jc) ; 2 uses
  %i.je = bitcast float %i.jd to i32
  %i.jf = tail call float @llvm.fabs.f32(float %i.jd)
  %i.jg = bitcast float %i.jf to i32              ; 10 uses
  %i.jh = lshr i32 %i.je, 16                      ; 3 uses
  %i.ji = trunc nuw i32 %i.jh to i16
  %i.jj = and i16 %i.ji, -32768                   ; 3 uses
  %i.jk = icmp samesign ugt i32 %i.jg, 947912703
  br i1 %i.jk, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit56
  %i.jl = icmp samesign ugt i32 %i.jg, 2139095039
  br i1 %i.jl, label %bb.ak, label %bb.am, !prof !36

bb.ak:                                            ; preds = %bb.aj
  %i.jm = or disjoint i16 %i.jj, 31744            ; 2 uses
  %i.jn = icmp eq i32 %i.jg, 2139095040
  br i1 %i.jn, label %_ZN9Imath_3_24halfaSEf.exit60, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jo = lshr i32 %i.jg, 13
  %i.jp = and i32 %i.jo, 1023                     ; 2 uses
  %i.jq = icmp eq i32 %i.jp, 0
  %i.jr = zext i1 %i.jq to i16
  %i.js = trunc nuw nsw i32 %i.jp to i16
  %i.jt = or i16 %i.js, %i.jr
  %i.ju = or disjoint i16 %i.jt, %i.jm
  br label %_ZN9Imath_3_24halfaSEf.exit60

bb.am:                                            ; preds = %bb.aj
  %i.jv = icmp samesign ugt i32 %i.jg, 1199566847
  br i1 %i.jv, label %bb.an, label %bb.ao, !prof !36

bb.an:                                            ; preds = %bb.am
  %i.jw = or disjoint i16 %i.jj, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit60

bb.ao:                                            ; preds = %bb.am
  %i.jx = add nuw nsw i32 %i.jg, 134221823
  %i.jy = lshr i32 %i.jg, 13
  %i.jz = and i32 %i.jy, 1
  %i.ka = add nuw nsw i32 %i.jx, %i.jz
  %i.kb = lshr i32 %i.ka, 13
  %i.kc = and i32 %i.jh, 32768
  %i.kd = or i32 %i.kb, %i.kc
  %i.ke = trunc i32 %i.kd to i16
  br label %_ZN9Imath_3_24halfaSEf.exit60

bb.ap:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit56
  %i.kf = icmp samesign ult i32 %i.jg, 855638017
  br i1 %i.kf, label %_ZN9Imath_3_24halfaSEf.exit60, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kg = lshr i32 %i.jg, 23                      ; 2 uses
  %i.kh = sub nuw nsw i32 126, %i.kg
  %i.ki = and i32 %i.jg, 8388607
  %i.kj = or disjoint i32 %i.ki, 8388608          ; 2 uses
  %i.kk = add nsw i32 %i.kg, -94
  %i.kl = shl i32 %i.kj, %i.kk                    ; 2 uses
  %i.km = lshr i32 %i.kj, %i.kh                   ; 2 uses
  %i.kn = and i32 %i.jh, 32768
  %i.ko = or i32 %i.km, %i.kn
  %i.kp = trunc nuw i32 %i.ko to i16              ; 2 uses
  %i.kq = icmp ugt i32 %i.kl, -2147483648
  br i1 %i.kq, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kr = icmp ne i32 %i.kl, -2147483648
  %i.ks = and i32 %i.km, 1
  %.not.i.i.i57 = icmp eq i32 %i.ks, 0
  %or.cond.i.i.i58 = select i1 %i.kr, i1 true, i1 %.not.i.i.i57
  br i1 %or.cond.i.i.i58, label %_ZN9Imath_3_24halfaSEf.exit60, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.kt = add nuw i16 %i.kp, 1
  br label %_ZN9Imath_3_24halfaSEf.exit60

_ZN9Imath_3_24halfaSEf.exit60:                    ; preds = %bb.ak, %bb.al, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.as
  %.033.i.i.i59 = phi i16 [ %i.jj, %bb.ap ], [ %i.ju, %bb.al ], [ %i.jw, %bb.an ], [ %i.ke, %bb.ao ], [ %i.jm, %bb.ak ], [ %i.kt, %bb.as ], [ %i.kp, %bb.ar ]
  %i.ku = insertelement <4 x i16> poison, i16 %.033.i.i.i, i64 0
  %i.kv = insertelement <4 x i16> %i.ku, i16 %.033.i.i.i51, i64 1
  %i.kw = insertelement <4 x i16> %i.kv, i16 %.033.i.i.i55, i64 2
  %i.kx = insertelement <4 x i16> %i.kw, i16 %.033.i.i.i59, i64 3
  %i.ky = bitcast <4 x i16> %i.kx to i64
  ret i64 %i.ky
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @_ZN7Imf_3_410LatLongMap13pixelPositionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS1_4Vec3IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #7

declare void @_ZN7Imf_3_47CubeMap20faceAndPixelPositionERKN9Imath_3_24Vec3IfEERKNS1_3BoxINS1_4Vec2IiEEEERNS_11CubeMapFaceERNS7_IfEE(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef align 4 dead_on_return) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !35   ; 3 uses
  %i.b = fcmp ult float %i.a, 0.000000e+00
  %i.c = fneg float %i.a
  %i.d = select i1 %i.b, float %i.c, float %i.a   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !37 ; 3 uses
  %i.g = fcmp ult <2 x float> %i.f, zeroinitializer
  %i.h = fneg <2 x float> %i.f
  %i.i = select <2 x i1> %i.g, <2 x float> %i.h, <2 x float> %i.f ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 0   ; 2 uses
  %i.k = fcmp olt float %i.d, %i.j
  %.0 = select i1 %i.k, float %i.j, float %i.d    ; 2 uses
  %i.l = extractelement <2 x float> %i.i, i64 1   ; 2 uses
  %i.m = fcmp olt float %.0, %i.l
  %.1 = select i1 %i.m, float %i.l, float %.0     ; 4 uses
  %i.n = fcmp oeq float %.1, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.o = fdiv float %i.d, %.1                     ; 2 uses
  %i.p = insertelement <2 x float> poison, float %.1, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x float> %i.i, %i.q              ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.r, %i.r
  %i.s = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.s)
  %i.u = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %i.w = tail call noundef float @sqrtf(float noundef %i.v) #17
  %i.x = fmul float %.1, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.023 = phi float [ %i.x, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.023
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN7Imf_3_44RgbaE", !11, i64 0}
!13 = !{!"_ZTSN7Imf_3_47Array2DINS_4RgbaEEE", !10, i64 0, !10, i64 8, !12, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !10, i64 8}
!16 = !{!13, !12, i64 16}
!17 = !{!"_ZTSN7Imf_3_46EnvmapE", !6, i64 0}
!18 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !7, i64 0, !7, i64 4}
!19 = !{!"_ZTSN9Imath_3_23BoxINS_4Vec2IiEEEE", !18, i64 0, !18, i64 8}
!20 = !{!"_ZTS11EnvmapImage", !17, i64 0, !19, i64 4, !13, i64 24}
!21 = !{!20, !7, i64 12}
!22 = !{!20, !7, i64 4}
!23 = !{!20, !7, i64 16}
!24 = !{!20, !7, i64 8}
!25 = !{!"short", !6, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!20, !17, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!18, !7, i64 0}
!32 = !{!18, !7, i64 4}
!33 = !{!"float", !6, i64 0}
!34 = !{!"_ZTSN9Imath_3_24Vec3IfEE", !33, i64 0, !33, i64 4, !33, i64 8}
!35 = !{!34, !33, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!33, !33, i64 0}
!38 = !{!"p1 _ZTS14imath_half_uif", !11, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!6, !6, i64 0}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = !{!19, !7, i64 4}
!45 = !{!19, !7, i64 0}
!46 = distinct !{!46, !28}
!47 = !{!10, !10, i64 0}
!48 = distinct !{!48, i1 true, !"_ZNK9Imath_3_24Vec3IfErmERKS1_"}
!49 = distinct !{!49, !48, !"_ZNK9Imath_3_24Vec3IfErmERKS1_: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv"}
!51 = distinct !{!51, !50, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZNK9Imath_3_24Vec3IfErmERKS1_"}
!53 = distinct !{!53, !52, !"_ZNK9Imath_3_24Vec3IfErmERKS1_: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv"}
!55 = distinct !{!55, !54, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZNK9Imath_3_24Vec3IfErmERKS1_"}
!57 = distinct !{!57, !56, !"_ZNK9Imath_3_24Vec3IfErmERKS1_: argument 0"}
!58 = distinct !{!58, i1 true, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv"}
!59 = distinct !{!59, !58, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv: argument 0"}
!60 = distinct !{!60, i1 true, !"_ZNK9Imath_3_24Vec3IfEplERKS1_"}
!61 = distinct !{!61, !60, !"_ZNK9Imath_3_24Vec3IfEplERKS1_: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZNK9Imath_3_24Vec3IfEplERKS1_"}
!63 = distinct !{!63, !62, !"_ZNK9Imath_3_24Vec3IfEplERKS1_: argument 0"}
!64 = distinct !{!64, !27}
!65 = distinct !{!65, !27}
!66 = !{!34, !33, i64 4}
!67 = !{!34, !33, i64 8}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = !{!49}
!70 = !{!51}
!71 = !{!53}
!72 = !{!55}
!73 = !{!57}
!74 = !{!59}
!75 = !{!61}
!76 = !{!63}
!77 = !{ptr @_ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE, ptr @_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE}
!78 = !{!"_ZTSN7Imf_3_411CubeMapFaceE", !6, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"_ZTSN9Imath_3_24Vec2IfEE", !33, i64 0, !33, i64 4}
!81 = !{!80, !33, i64 0}
!82 = !{!80, !33, i64 4}
end_hunk_1
