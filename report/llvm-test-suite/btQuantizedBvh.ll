inline.NumInlined: 552
inline.NumDeleted: 106
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%struct.btQuantizedBvhNode = type { [3 x i16], [3 x i16], i32 }
%struct.btOptimizedBvhNode = type { %class.btVector3, %class.btVector3, i32, i32, i32, [5 x i32] }

$__clang_call_terminate = comdat any

$_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_ = comdat any

@_ZTV14btQuantizedBvh = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI14btQuantizedBvh, ptr @_ZN14btQuantizedBvhD2Ev, ptr @_ZN14btQuantizedBvhD0Ev, ptr @_ZN14btQuantizedBvh9serializeEPvjb] }, align 8
@maxIterations = dso_local local_unnamed_addr global i32 0, align 4
@_ZTI14btQuantizedBvh = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS14btQuantizedBvh }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS14btQuantizedBvh = dso_local constant [17 x i8] c"14btQuantizedBvh\00", align 1

@_ZN14btQuantizedBvhC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14btQuantizedBvhC2Ev
@_ZN14btQuantizedBvhD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14btQuantizedBvhD2Ev
@_ZN14btQuantizedBvhC1ERS_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN14btQuantizedBvhC2ERS_b

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN14btQuantizedBvhC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(244) initializes((0, 40), (56, 60), (64, 65), (76, 84), (88, 97), (108, 116), (120, 129), (140, 148), (152, 161), (172, 180), (184, 193), (200, 204), (212, 220), (224, 233), (240, 244)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV14btQuantizedBvh, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 275, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.o, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 1, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.s, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.u, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.x, align 4, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.z, align 8, !tbaa !39
  store <4 x float> <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float 0.000000e+00>, ptr %i.a, align 8, !tbaa !40
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !40
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN14btQuantizedBvh13buildInternalEv(ptr noundef nonnull align 8 dereferenceable(244) initializes((64, 65)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 3 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 3 uses
  %i.g = icmp sgt i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp slt i32 %i.i, %i.d
  br i1 %i.j, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 4
  %i.m = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.l, i32 noundef 16)
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre.i, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.q = icmp eq i32 %i.n, 1
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !42
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !42
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.e

_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !42
  br label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !44
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i = select i1 %.not.i5.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.ac, align 8, !tbaa !30
  store ptr %.0.i.i.i, ptr %i.aa, align 8, !tbaa !31
  store i32 %i.d, ptr %i.h, align 8, !tbaa !33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.ag = sext i32 %i.f to i64                    ; 4 uses
  %wide.trip.count.i = sext i32 %i.d to i64       ; 3 uses
  %i.ah = sub nsw i64 %wide.trip.count.i, %i.ag
  %xtraiter28 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
end_hunk_0
begin_hunk_1_@_ZN14btQuantizedBvh17calcSplittingAxisEii:bb.a
_ZNK14btQuantizedBvh10getAabbMinEi.exit.us:       ; preds = %.lr.ph, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %i.r, %.lr.ph ] ; 2 uses
  %.sroa.0113.0139.us = phi float [ %i.ar, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ 0.000000e+00, %.lr.ph ]
  %i.s = phi <2 x float> [ %i.as, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ zeroinitializer, %.lr.ph ]
  %i.t = getelementptr inbounds [16 x i8], ptr %i.i, i64 %indvars.iv174 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.v = load i16, ptr %i.u, align 2, !tbaa !50
  %i.w = uitofp i16 %i.v to float
  %i.x = fdiv float %i.w, %i.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = fadd float %i.x, %i.n
  %i.aa = load i16, ptr %i.t, align 2, !tbaa !50
  %i.ab = uitofp i16 %i.aa to float
  %i.ac = fdiv float %i.ab, %i.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ae = fadd float %i.ac, %i.n
  %i.af = fadd float %i.z, %i.ae
  %i.ag = fmul float %i.af, 5.000000e-01
  %i.ah = load <2 x i16>, ptr %i.y, align 2, !tbaa !50
  %i.ai = uitofp <2 x i16> %i.ah to <2 x float>
  %i.aj = fdiv <2 x float> %i.ai, %i.p
  %i.ak = fadd <2 x float> %i.aj, %i.q
  %i.al = load <2 x i16>, ptr %i.ad, align 2, !tbaa !50
  %i.am = uitofp <2 x i16> %i.al to <2 x float>
  %i.an = fdiv <2 x float> %i.am, %i.p
  %i.ao = fadd <2 x float> %i.an, %i.q
  %i.ap = fadd <2 x float> %i.ak, %i.ao
  %i.aq = fmul <2 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = fadd float %.sroa.0113.0139.us, %i.ag   ; 2 uses
  %i.as = fadd <2 x float> %i.s, %i.aq            ; 2 uses
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %.lr.ph152, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit:          ; preds = %.lr.ph, %_ZNK14btQuantizedBvh10getAabbMinEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ %i.r, %.lr.ph ] ; 2 uses
  %.sroa.0113.0139 = phi float [ %i.bc, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ 0.000000e+00, %.lr.ph ]
  %i.at = phi <2 x float> [ %i.bd, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ zeroinitializer, %.lr.ph ]
  %i.au = getelementptr inbounds [64 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.av, align 4 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !43
  %.sroa.0.0.copyload.i17 = load <2 x float>, ptr %i.au, align 4 ; 2 uses
  %.sroa.3.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.3.0.copyload.i19 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i18, align 4, !tbaa !43
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i17
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.3.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.az = shufflevector <2 x float> %.sroa.0.0.copyload.i17, <2 x float> %.sroa.3.0.copyload.i19, <2 x i32> <i32 1, i32 2>
  %i.ba = fadd <2 x float> %i.ay, %i.az
  %i.bb = fmul <2 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fadd float %.sroa.0113.0139, %i.ax      ; 2 uses
  %i.bd = fadd <2 x float> %i.at, %i.bb           ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count177
  br i1 %exitcond.not, label %.lr.ph152, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit

._crit_edge:                                      ; preds = %bb.a
  %i.be = sitofp i32 %i.a to float
  %i.bf = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.be, i64 0
  br label %._crit_edge153

.lr.ph152:                                        ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us
  %.sroa.0113.0.lcssa.ph = phi float [ %i.ar, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %i.bc, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ]
  %i.bg = phi <2 x float> [ %i.as, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %i.bd, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ]
  %i.bh = sitofp i32 %i.a to float                ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !25, !range !44, !noundef !48
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load float, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load float, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bv = fdiv nnan float 1.000000e+00, %i.bh
  %i.bw = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.bv, i64 1
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.by = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %.sroa.0113.0.lcssa.ph, i64 1
  %i.bz = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cb = fmul <4 x float> %i.bx, %i.ca           ; 2 uses
  %i.cc = load <4 x float>, ptr %i.br, align 4
  %i.cd = load <4 x float>, ptr %i.bu, align 4
  %i.ce = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count187 = sext i32 %2 to i64        ; 2 uses
  br i1 %i.bk, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us.preheader, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.preheader

_ZNK14btQuantizedBvh10getAabbMinEi.exit45.preheader: ; preds = %.lr.ph152
  %i.cf = insertelement <4 x float> poison, float %i.bh, i64 0
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45

_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us.preheader: ; preds = %.lr.ph152
  %i.cg = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.bq, i64 1
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ci = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.bt, i64 1
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ck = insertelement <4 x float> poison, float %i.bh, i64 0
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us:     ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us.preheader, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us ], [ %i.ce, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us.preheader ] ; 2 uses
  %.sroa.0103.0147.us = phi float [ %i.ds, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us ], [ 0.000000e+00, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us.preheader ]
  %i.cl = phi <2 x float> [ %i.dr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us ], [ zeroinitializer, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us.preheader ]
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %indvars.iv184 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 6
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !50
  %i.cp = uitofp i16 %i.co to float
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load i16, ptr %i.cm, align 2, !tbaa !50
  %i.cs = uitofp i16 %i.cr to float
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cu = load <2 x i16>, ptr %i.cq, align 2, !tbaa !50
  %i.cv = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.cp, i64 1
  %i.cw = shufflevector <2 x i16> %i.cu, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = uitofp <4 x i16> %i.cw to <4 x float>
  %i.cy = shufflevector <4 x float> %i.cv, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cz = fdiv <4 x float> %i.cy, %i.ch
  %i.da = fadd <4 x float> %i.cz, %i.cj
  %i.db = load <2 x i16>, ptr %i.ct, align 2, !tbaa !50
  %i.dc = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.cs, i64 1
  %i.dd = shufflevector <2 x i16> %i.db, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.de = uitofp <4 x i16> %i.dd to <4 x float>
  %i.df = shufflevector <4 x float> %i.dc, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dg = fdiv <4 x float> %i.df, %i.ch
  %i.dh = fadd <4 x float> %i.dg, %i.cj
  %i.di = fadd <4 x float> %i.da, %i.dh
  %i.dj = fmul <4 x float> %i.di, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.dk = fsub <4 x float> %i.dj, %i.cb           ; 2 uses
  %i.dl = insertelement <4 x float> %i.dk, float 1.000000e+00, i64 0
  %i.dm = fmul <4 x float> %i.dk, %i.dl
  %i.dn = insertelement <4 x float> %i.ck, float %.sroa.0103.0147.us, i64 1
  %i.do = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dq = fadd <4 x float> %i.dp, %i.dm           ; 3 uses
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ds = extractelement <4 x float> %i.dq, i64 1
  br i1 %exitcond188.not, label %._crit_edge153, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit45:        ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.preheader, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45 ], [ %i.ce, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.preheader ] ; 2 uses
  %.sroa.0103.0147 = phi float [ %i.ek, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45 ], [ 0.000000e+00, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.preheader ]
  %i.dt = phi <2 x float> [ %i.ej, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45 ], [ zeroinitializer, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.preheader ]
  %i.du = getelementptr inbounds [64 x i8], ptr %i.bm, i64 %indvars.iv179 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %.sroa.0.0.copyload.i26 = load <2 x float>, ptr %i.dv, align 4
  %.sroa.3.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %.sroa.3.0.copyload.i28 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i27, align 4, !tbaa !43
  %.sroa.0.0.copyload.i36 = load <2 x float>, ptr %i.du, align 4
  %.sroa.3.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.3.0.copyload.i38 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i37, align 4, !tbaa !43
  %i.dw = shufflevector <2 x float> %.sroa.0.0.copyload.i26, <2 x float> %.sroa.3.0.copyload.i28, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.dx = insertelement <4 x float> %i.dw, float 1.000000e+00, i64 0
  %i.dy = shufflevector <2 x float> %.sroa.0.0.copyload.i36, <2 x float> %.sroa.3.0.copyload.i38, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.dz = insertelement <4 x float> %i.dy, float -0.000000e+00, i64 0
  %i.ea = fadd <4 x float> %i.dx, %i.dz
  %i.eb = fmul <4 x float> %i.ea, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.ec = fsub <4 x float> %i.eb, %i.cb           ; 2 uses
  %i.ed = insertelement <4 x float> %i.ec, float 1.000000e+00, i64 0
  %i.ee = fmul <4 x float> %i.ec, %i.ed
  %i.ef = insertelement <4 x float> %i.cf, float %.sroa.0103.0147, i64 1
  %i.eg = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eh = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ei = fadd <4 x float> %i.eh, %i.ee           ; 3 uses
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count187
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ek = extractelement <4 x float> %i.ei, i64 1
  br i1 %exitcond183.not, label %._crit_edge153, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit45

._crit_edge153:                                   ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit45, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us, %._crit_edge
  %i.el = phi <4 x float> [ %i.bf, %._crit_edge ], [ %i.dq, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us ], [ %i.ei, %_ZNK14btQuantizedBvh10getAabbMinEi.exit45 ] ; 4 uses
  %i.em = extractelement <4 x float> %i.el, i64 0
  %i.en = fadd float %i.em, -1.000000e+00
  %i.eo = fdiv float 1.000000e+00, %i.en          ; 3 uses
  %i.ep = extractelement <4 x float> %i.el, i64 1
  %i.eq = fmul float %i.eo, %i.ep                 ; 2 uses
  %i.er = extractelement <4 x float> %i.el, i64 2
  %i.es = fmul float %i.eo, %i.er                 ; 2 uses
  %i.et = extractelement <4 x float> %i.el, i64 3
  %i.eu = fmul float %i.eo, %i.et
  %i.ev = fcmp olt float %i.eq, %i.es             ; 2 uses
  %..i = select i1 %i.ev, float %i.es, float %i.eq
  %.5.i = zext i1 %i.ev to i32
  %i.ew = fcmp olt float %..i, %i.eu
  %i.ex = select i1 %i.ew, i32 2, i32 %.5.i
  ret i32 %i.ex
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN14btQuantizedBvh25sortAndCalcSplittingIndexEiii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %4 = alloca %struct.btQuantizedBvhNode, align 4 ; 4 uses
  %5 = alloca %struct.btOptimizedBvhNode, align 4 ; 4 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = sub nsw i32 %2, %1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = icmp slt i32 %1, %2                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.d, align 4
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !25, !range !44, !noundef !48
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load float, ptr %i.m, align 8            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load <2 x float>, ptr %i.l, align 8      ; 2 uses
  %i.q = load <2 x float>, ptr %i.o, align 8      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load float, ptr %i.r, align 8            ; 2 uses
  %i.t = sext i32 %1 to i64                       ; 6 uses
  %wide.trip.count152 = sext i32 %2 to i64        ; 4 uses
  br i1 %i.g, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader

_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader: ; preds = %.lr.ph
  %i.u = sub nsw i64 %wide.trip.count152, %i.t
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol

_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol:     ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader
  %i.v = getelementptr inbounds [64 x i8], ptr %i.i, i64 %i.t ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.0.0.copyload.i.prol = load <2 x float>, ptr %i.w, align 4
  %.sroa.3.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.3.0.copyload.i.prol = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.prol, align 4, !tbaa !43
  %.sroa.0.0.copyload.i40.prol = load <2 x float>, ptr %i.v, align 4
  %.sroa.3.0..sroa_idx.i41.prol = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3.0.copyload.i42.prol = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i41.prol, align 4, !tbaa !43
  %i.x = extractelement <2 x float> %.sroa.3.0.copyload.i.prol, i64 0
  %i.y = extractelement <2 x float> %.sroa.3.0.copyload.i42.prol, i64 0
  %i.z = fadd float %i.x, %i.y
  %i.aa = fadd <2 x float> %.sroa.0.0.copyload.i.prol, %.sroa.0.0.copyload.i40.prol
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  %i.ac = fmul float %i.z, 5.000000e-01
  %i.ad = fadd <2 x float> %i.ab, zeroinitializer ; 2 uses
  %i.ae = fadd float %i.ac, 0.000000e+00          ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.t, 1
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit

_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit: ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader
  %.lcssa182.unr = phi <2 x float> [ poison, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.ad, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %.lcssa181.unr = phi float [ poison, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.ae, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %indvars.iv.unr = phi i64 [ %i.t, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %indvars.iv.next.prol, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %.0.95100121.unr = phi float [ 0.000000e+00, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.ae, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %.unr = phi <2 x float> [ zeroinitializer, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.preheader ], [ %i.ad, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol ]
  %i.af = add nsw i64 %wide.trip.count152, -1
  %i.ag = icmp eq i64 %i.af, %i.t
  br i1 %i.ag, label %._crit_edge, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit

_ZNK14btQuantizedBvh10getAabbMinEi.exit.us:       ; preds = %.lr.ph, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %i.t, %.lr.ph ] ; 2 uses
  %.0.95100121.us = phi float [ %i.bh, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ 0.000000e+00, %.lr.ph ]
  %i.ah = phi <2 x float> [ %i.bg, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ zeroinitializer, %.lr.ph ]
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.k, i64 %indvars.iv149 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !50
  %i.am = uitofp i16 %i.al to float
  %i.an = fdiv float %i.am, %i.n
  %i.ao = fadd float %i.an, %i.s
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !50
  %i.ar = uitofp i16 %i.aq to float
  %i.as = fdiv float %i.ar, %i.n
  %i.at = fadd float %i.as, %i.s
  %i.au = fadd float %i.ao, %i.at
  %i.av = load <2 x i16>, ptr %i.aj, align 2, !tbaa !50
  %i.aw = uitofp <2 x i16> %i.av to <2 x float>
  %i.ax = fdiv <2 x float> %i.aw, %i.p
  %i.ay = fadd <2 x float> %i.ax, %i.q
  %i.az = load <2 x i16>, ptr %i.ai, align 2, !tbaa !50
  %i.ba = uitofp <2 x i16> %i.az to <2 x float>
  %i.bb = fdiv <2 x float> %i.ba, %i.p
  %i.bc = fadd <2 x float> %i.bb, %i.q
  %i.bd = fadd <2 x float> %i.ay, %i.bc
  %i.be = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fmul float %i.au, 5.000000e-01
  %i.bg = fadd <2 x float> %i.ah, %i.be           ; 2 uses
  %i.bh = fadd float %.0.95100121.us, %i.bf       ; 2 uses
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %._crit_edge, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us

_ZNK14btQuantizedBvh10getAabbMinEi.exit:          ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ %indvars.iv.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ] ; 3 uses
  %.0.95100121 = phi float [ %i.cd, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ %.0.95100121.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ]
  %i.bi = phi <2 x float> [ %i.cc, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ], [ %.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ]
  %i.bj = getelementptr inbounds [64 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bk, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !43
  %.sroa.0.0.copyload.i40 = load <2 x float>, ptr %i.bj, align 4
  %.sroa.3.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.3.0.copyload.i42 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i41, align 4, !tbaa !43
  %i.bl = extractelement <2 x float> %.sroa.3.0.copyload.i, i64 0
  %i.bm = extractelement <2 x float> %.sroa.3.0.copyload.i42, i64 0
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i40
  %i.bp = fmul <2 x float> %i.bo, splat (float 5.000000e-01)
  %i.bq = fmul float %i.bn, 5.000000e-01
  %i.br = fadd <2 x float> %i.bi, %i.bp
  %i.bs = fadd float %.0.95100121, %i.bq
  %i.bt = getelementptr [64 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 64
  %i.bv = getelementptr i8, ptr %i.bt, i64 80
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.bv, align 4
  %.sroa.3.0..sroa_idx.i.1 = getelementptr i8, ptr %i.bt, i64 88
  %.sroa.3.0.copyload.i.1 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.1, align 4, !tbaa !43
  %.sroa.0.0.copyload.i40.1 = load <2 x float>, ptr %i.bu, align 4
  %.sroa.3.0..sroa_idx.i41.1 = getelementptr i8, ptr %i.bt, i64 72
  %.sroa.3.0.copyload.i42.1 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i41.1, align 4, !tbaa !43
  %i.bw = extractelement <2 x float> %.sroa.3.0.copyload.i.1, i64 0
  %i.bx = extractelement <2 x float> %.sroa.3.0.copyload.i42.1, i64 0
  %i.by = fadd float %i.bw, %i.bx
  %i.bz = fadd <2 x float> %.sroa.0.0.copyload.i.1, %.sroa.0.0.copyload.i40.1
  %i.ca = fmul <2 x float> %i.bz, splat (float 5.000000e-01)
  %i.cb = fmul float %i.by, 5.000000e-01
  %i.cc = fadd <2 x float> %i.br, %i.ca           ; 2 uses
  %i.cd = fadd float %i.bs, %i.cb                 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count152
  br i1 %exitcond.not.1, label %._crit_edge, label %_ZNK14btQuantizedBvh10getAabbMinEi.exit

._crit_edge:                                      ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us, %bb.a
  %.0.95100.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bh, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %.lcssa181.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ], [ %i.cd, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ]
  %i.ce = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bg, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.us ], [ %.lcssa182.unr, %_ZNK14btQuantizedBvh10getAabbMinEi.exit.prol.loopexit ], [ %i.cc, %_ZNK14btQuantizedBvh10getAabbMinEi.exit ]
  %i.cf = sitofp i32 %i.a to float
  %i.cg = fdiv float 1.000000e+00, %i.cf          ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.ci, %i.ce
  store <2 x float> %i.cj, ptr %6, align 8, !tbaa !40
  %i.ck = fmul float %i.cg, %.0.95100.lcssa
  store float %i.ck, ptr %i.b, align 8, !tbaa !40
  %i.cl = sext i32 %3 to i64                      ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !40
  br i1 %i.c, label %.lr.ph138, label %._crit_edge139

.lr.ph138:                                        ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cw = getelementptr inbounds [4 x i8], ptr %7, i64 %i.cl
  %i.cx = sext i32 %1 to i64
  %wide.trip.count157 = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph138, %bb.h
  %indvars.iv154 = phi i64 [ %i.cx, %.lr.ph138 ], [ %indvars.iv.next155, %bb.h ] ; 5 uses
  %.037135 = phi i32 [ %1, %.lr.ph138 ], [ %.138, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.cy = load i8, ptr %i.co, align 8, !tbaa !25, !range !44, !noundef !48
  %i.cz = trunc nuw i8 %i.cy to i1                ; 2 uses
  br i1 %i.cz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.db = getelementptr inbounds [16 x i8], ptr %i.da, i64 %indvars.iv154 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 6
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 10
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !50
  %i.df = uitofp i16 %i.de to float
  %i.dg = load float, ptr %i.cs, align 8, !tbaa !40 ; 2 uses
  %i.dh = fdiv float %i.df, %i.dg
  %i.di = load float, ptr %i.cu, align 8, !tbaa !40 ; 2 uses
  %i.dj = fadd float %i.dh, %i.di
  %.sroa.7.8.vec.insert16.i.i57 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dj, i64 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !50
  %i.dm = uitofp i16 %i.dl to float
  %i.dn = fdiv float %i.dm, %i.dg
  %i.do = load <2 x float>, ptr %i.cr, align 8, !tbaa !40 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.ct, align 8, !tbaa !40 ; 2 uses
  %i.dq = load <2 x i16>, ptr %i.dc, align 2, !tbaa !50
  %i.dr = uitofp <2 x i16> %i.dq to <2 x float>
  %i.ds = fdiv <2 x float> %i.dr, %i.do
  %i.dt = fadd <2 x float> %i.ds, %i.dp
  %i.du = load <2 x i16>, ptr %i.db, align 2, !tbaa !50
  %i.dv = uitofp <2 x i16> %i.du to <2 x float>
  %i.dw = fdiv <2 x float> %i.dv, %i.do
  %i.dx = fadd <2 x float> %i.dw, %i.dp
  %i.dy = fadd float %i.dn, %i.di
  %.sroa.7.8.vec.insert16.i.i67 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dy, i64 0
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit68

bb.d:                                             ; preds = %bb.b
  %i.dz = load ptr, ptr %i.cp, align 8, !tbaa !27
  %i.ea = getelementptr inbounds [64 x i8], ptr %i.dz, i64 %indvars.iv154 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.sroa.0.0.copyload.i49 = load <2 x float>, ptr %i.eb, align 4
  %.sroa.3.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %.sroa.3.0.copyload.i51 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i50, align 4, !tbaa !43
  %.sroa.0.0.copyload.i59 = load <2 x float>, ptr %i.ea, align 4
  %.sroa.3.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.3.0.copyload.i61 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i60, align 4, !tbaa !43
  br label %_ZNK14btQuantizedBvh10getAabbMinEi.exit68

_ZNK14btQuantizedBvh10getAabbMinEi.exit68:        ; preds = %bb.c, %bb.d
  %.sroa.7.8.vec.insert16.i.pn.i53115 = phi <2 x float> [ %.sroa.7.8.vec.insert16.i.i57, %bb.c ], [ %.sroa.3.0.copyload.i51, %bb.d ]
  %.sroa.0.4.vec.insert12.i.pn.i52113 = phi <2 x float> [ %i.dt, %bb.c ], [ %.sroa.0.0.copyload.i49, %bb.d ]
  %.sroa.0.4.vec.insert12.i.pn.i62 = phi <2 x float> [ %i.dx, %bb.c ], [ %.sroa.0.0.copyload.i59, %bb.d ]
  %.sroa.7.8.vec.insert16.i.pn.i63 = phi <2 x float> [ %.sroa.7.8.vec.insert16.i.i67, %bb.c ], [ %.sroa.3.0.copyload.i61, %bb.d ]
  %foldExtExtBinop177 = fadd <2 x float> %.sroa.7.8.vec.insert16.i.pn.i53115, %.sroa.7.8.vec.insert16.i.pn.i63
  %i.ec = extractelement <2 x float> %foldExtExtBinop177, i64 0
  %i.ed = fadd <2 x float> %.sroa.0.4.vec.insert12.i.pn.i52113, %.sroa.0.4.vec.insert12.i.pn.i62
  %i.ee = fmul <2 x float> %i.ed, splat (float 5.000000e-01)
  %i.ef = fmul float %i.ec, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i76 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ef, i64 0
  store <2 x float> %i.ee, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i76, ptr %i.cv, align 8
  %i.eg = load float, ptr %i.cw, align 4, !tbaa !40
  %i.eh = fcmp ogt float %i.eg, %i.cn
  br i1 %i.eh, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK14btQuantizedBvh10getAabbMinEi.exit68
  %i.ei = sext i32 %.037135 to i64                ; 4 uses
  br i1 %i.cz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ej = load ptr, ptr %i.cq, align 8, !tbaa !31 ; 2 uses
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %indvars.iv154 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.ek, i64 16, i1 false), !tbaa.struct !42
  %i.el = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ek, ptr noundef nonnull align 4 dereferenceable(16) %i.el, i64 16, i1 false), !tbaa.struct !42
  %i.em = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.en = getelementptr inbounds [16 x i8], ptr %i.em, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.en, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN14btQuantizedBvh13swapLeafNodesEii.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.eo = load ptr, ptr %i.cp, align 8, !tbaa !27 ; 2 uses
  %i.ep = getelementptr inbounds [64 x i8], ptr %i.eo, i64 %indvars.iv154 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.ep, i64 64, i1 false), !tbaa.struct !57
  %i.eq = getelementptr inbounds [64 x i8], ptr %i.eo, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ep, ptr noundef nonnull align 4 dereferenceable(64) %i.eq, i64 64, i1 false), !tbaa.struct !57
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !27
  %i.es = getelementptr inbounds [64 x i8], ptr %i.er, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.es, ptr noundef nonnull align 4 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN14btQuantizedBvh13swapLeafNodesEii.exit

_ZN14btQuantizedBvh13swapLeafNodesEii.exit:       ; preds = %bb.f, %bb.g
  %i.et = add nsw i32 %.037135, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN14btQuantizedBvh13swapLeafNodesEii.exit, %_ZNK14btQuantizedBvh10getAabbMinEi.exit68
  %.138 = phi i32 [ %i.et, %_ZN14btQuantizedBvh13swapLeafNodesEii.exit ], [ %.037135, %_ZNK14btQuantizedBvh10getAabbMinEi.exit68 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge139, label %bb.b

._crit_edge139:                                   ; preds = %bb.h, %._crit_edge
  %.037.lcssa = phi i32 [ %1, %._crit_edge ], [ %.138, %bb.h ] ; 3 uses
  %i.eu = sdiv i32 %i.a, 3                        ; 2 uses
  %i.ev = add nsw i32 %i.eu, %1
  %.not = icmp sle i32 %.037.lcssa, %i.ev
  %i.ew = xor i32 %i.eu, -1
  %i.ex = add i32 %2, %i.ew
  %i.ey = icmp sge i32 %.037.lcssa, %i.ex
  %i.ez = or i1 %.not, %i.ey
  %i.fa = ashr i32 %i.a, 1
  %i.fb = add nsw i32 %i.fa, %1
  %.2 = select i1 %i.ez, i32 %i.fb, i32 %.037.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.2
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(244) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !44, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %2, align 4, !tbaa !40
  %i.f = load float, ptr %i.d, align 8, !tbaa !40 ; 2 uses
  %i.g = fsub float %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !40 ; 2 uses
  %i.l = fsub float %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 8, !tbaa !40 ; 2 uses
  %i.q = fsub float %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load float, ptr %i.r, align 8, !tbaa !40 ; 2 uses
  %i.t = fmul float %i.g, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = load float, ptr %i.u, align 4, !tbaa !40 ; 2 uses
  %i.w = fmul float %i.l, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load float, ptr %i.x, align 8, !tbaa !40 ; 2 uses
  %i.z = fmul float %i.q, %i.y
  %i.aa = fptoui float %i.t to i16
  %i.ab = and i16 %i.aa, -2                       ; 2 uses
  %i.ac = fptoui float %i.w to i16
  %i.ad = and i16 %i.ac, -2                       ; 2 uses
  %i.ae = fptoui float %i.z to i16
  %i.af = and i16 %i.ae, -2                       ; 2 uses
  %i.ag = load float, ptr %3, align 4, !tbaa !40
  %i.ah = fsub float %i.ag, %i.f
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !40
  %i.ak = fsub float %i.aj, %i.k
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !40
  %i.an = fsub float %i.am, %i.p
  %i.ao = fmul float %i.s, %i.ah
  %i.ap = fmul float %i.v, %i.ak
  %i.aq = fmul float %i.y, %i.an
  %i.ar = fadd float %i.ao, 1.000000e+00
  %i.as = fptoui float %i.ar to i16
  %i.at = or i16 %i.as, 1                         ; 2 uses
  %i.au = fadd float %i.ap, 1.000000e+00
  %i.av = fptoui float %i.au to i16
  %i.aw = or i16 %i.av, 1                         ; 2 uses
  %i.ax = fadd float %i.aq, 1.000000e+00
  %i.ay = fptoui float %i.ax to i16
  %i.az = or i16 %i.ay, 1                         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = sext i32 %1 to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bc ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6 ; 2 uses
  %i.bf = load i16, ptr %i.bd, align 2, !tbaa !50
  %i.bg = icmp ugt i16 %i.bf, %i.ab
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 %i.ab, ptr %i.bd, align 2, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bh = load i16, ptr %i.be, align 2, !tbaa !50
  %i.bi = icmp ult i16 %i.bh, %i.at
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 %i.at, ptr %i.be, align 2, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !50
  %i.bl = icmp ugt i16 %i.bk, %i.ad
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 %i.ad, ptr %i.bj, align 2, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !50
  %i.bo = icmp ult i16 %i.bn, %i.aw
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 %i.aw, ptr %i.bm, align 2, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !50
  %i.br = icmp ugt i16 %i.bq, %i.af
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 %i.af, ptr %i.bp, align 2, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 10 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !50
  %i.bu = icmp ult i16 %i.bt, %i.az
  br i1 %i.bu, label %bb.m, label %_ZN9btVector36setMaxERKS_.exit

bb.m:                                             ; preds = %bb.l
  store i16 %i.az, ptr %i.bs, align 2, !tbaa !50
  br label %_ZN9btVector36setMaxERKS_.exit

bb.n:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27
  %i.bx = sext i32 %1 to i64
  %i.by = getelementptr inbounds [64 x i8], ptr %i.bw, i64 %i.bx ; 9 uses
  %i.bz = load float, ptr %2, align 4, !tbaa !40  ; 2 uses
  %i.ca = load float, ptr %i.by, align 4, !tbaa !40
  %i.cb = fcmp olt float %i.bz, %i.ca
  br i1 %i.cb, label %bb.o, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.o:                                             ; preds = %bb.n
  store float %i.bz, ptr %i.by, align 4, !tbaa !40
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.o, %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !40 ; 2 uses
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !40
  %i.cg = fcmp olt float %i.ce, %i.cf
  br i1 %i.cg, label %bb.p, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.p:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.ce, ptr %i.cc, align 4, !tbaa !40
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.p, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !40 ; 2 uses
  %i.ck = load float, ptr %i.ch, align 4, !tbaa !40
  %i.cl = fcmp olt float %i.cj, %i.ck
  br i1 %i.cl, label %bb.q, label %_Z8btSetMinIfEvRT_RKS0_.exit6.i

bb.q:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  store float %i.cj, ptr %i.ch, align 4, !tbaa !40
  br label %_Z8btSetMinIfEvRT_RKS0_.exit6.i

_Z8btSetMinIfEvRT_RKS0_.exit6.i:                  ; preds = %bb.q, %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 12 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !40 ; 2 uses
  %i.cp = load float, ptr %i.cm, align 4, !tbaa !40
  %i.cq = fcmp olt float %i.co, %i.cp
  br i1 %i.cq, label %bb.r, label %_ZN9btVector36setMinERKS_.exit

bb.r:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i
  store float %i.co, ptr %i.cm, align 4, !tbaa !40
  br label %_ZN9btVector36setMinERKS_.exit

_ZN9btVector36setMinERKS_.exit:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i, %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !40
  %i.ct = load float, ptr %3, align 4, !tbaa !40  ; 2 uses
  %i.cu = fcmp olt float %i.cs, %i.ct
  br i1 %i.cu, label %bb.s, label %_Z8btSetMaxIfEvRT_RKS0_.exit.i

bb.s:                                             ; preds = %_ZN9btVector36setMinERKS_.exit
  store float %i.ct, ptr %i.cr, align 4, !tbaa !40
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit.i

_Z8btSetMaxIfEvRT_RKS0_.exit.i:                   ; preds = %bb.s, %_ZN9btVector36setMinERKS_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 20 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cx = load float, ptr %i.cv, align 4, !tbaa !40
  %i.cy = load float, ptr %i.cw, align 4, !tbaa !40 ; 2 uses
  %i.cz = fcmp olt float %i.cx, %i.cy
  br i1 %i.cz, label %bb.t, label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i

bb.t:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit.i
  store float %i.cy, ptr %i.cv, align 4, !tbaa !40
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i

_Z8btSetMaxIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.t, %_Z8btSetMaxIfEvRT_RKS0_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = load float, ptr %i.da, align 4, !tbaa !40
end_hunk_1
begin_hunk_2_@_ZN14btQuantizedBvh20updateSubtreeHeadersEii:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36 ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !range !44
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond.i.i = select i1 %.not.i5.i.i, i1 %i.as, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ap)
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.aq, align 8, !tbaa !35
  store ptr %.0.i.i.i, ptr %i.ao, align 8, !tbaa !36
  store i32 %i.w, ptr %i.s, align 8, !tbaa !38
  %.pre4.i = load i32, ptr %i.q, align 4, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i
  %i.at = phi i32 [ %.pre4.i, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i ], [ %i.r, %bb.c ], [ %i.r, %bb.b ]
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.q, align 4, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aw = sext i32 %i.r to i64
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ay = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %i.aw ; 8 uses
  %i.az = load i16, ptr %i.d, align 4, !tbaa !50
  store i16 %i.az, ptr %i.ay, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i16 %i.be, ptr %i.bf, align 4, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i16 %i.bk, ptr %i.bl, align 4, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %1, ptr %i.bp, align 4, !tbaa !52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 %spec.select, ptr %i.bq, align 4, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit, %bb.a
  %i.br = icmp samesign ult i32 %i.o, 129
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !37 ; 9 uses
  br i1 %i.br, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !38
  %i.bw = icmp eq i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.j, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit37

bb.j:                                             ; preds = %bb.i
  %.not.i.i22 = icmp eq i32 %i.bt, 0
  %i.bx = shl nsw i32 %i.bt, 1
  %i.by = select i1 %.not.i.i22, i32 1, i32 %i.bx ; 4 uses
  %i.bz = icmp slt i32 %i.bt, %i.by
  br i1 %i.bz, label %bb.k, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit37

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i23 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i23, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = sext i32 %i.by to i64
  %i.cb = shl nsw i64 %i.ca, 5
  %i.cc = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cb, i32 noundef 16)
  %.pre.i24 = load i32, ptr %i.bs, align 4, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25: ; preds = %bb.l, %bb.k
  %i.cd = phi i32 [ %.pre.i24, %bb.l ], [ %i.bt, %bb.k ] ; 4 uses
  %.0.i.i.i26 = phi ptr [ %i.cc, %bb.l ], [ null, %bb.k ] ; 4 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i32, label %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27

.lr.ph.i.i.i32:                                   ; preds = %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %wide.trip.count.i.i.i33 = zext nneg i32 %i.cd to i64 ; 2 uses
  %xtraiter49 = and i64 %wide.trip.count.i.i.i33, 1
  %i.cg = icmp eq i32 %i.cd, 1
  br i1 %i.cg, label %.epil.preheader48, label %.lr.ph.i.i.i32.new

.lr.ph.i.i.i32.new:                               ; preds = %.lr.ph.i.i.i32
  %unroll_iter52 = and i64 %wide.trip.count.i.i.i33, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i32.new
  %indvars.iv.i.i.i34 = phi i64 [ 0, %.lr.ph.i.i.i32.new ], [ %indvars.iv.next.i.i.i35.1, %bb.m ] ; 4 uses
  %niter53 = phi i64 [ 0, %.lr.ph.i.i.i32.new ], [ %niter53.next.1, %bb.m ]
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i26, i64 %indvars.iv.i.i.i34
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ch, ptr noundef nonnull align 4 dereferenceable(32) %i.cj, i64 32, i1 false), !tbaa.struct !49
  %indvars.iv.next.i.i.i35 = or disjoint i64 %indvars.iv.i.i.i34, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i26, i64 %indvars.iv.next.i.i.i35
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %indvars.iv.next.i.i.i35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ck, ptr noundef nonnull align 4 dereferenceable(32) %i.cm, i64 32, i1 false), !tbaa.struct !49
  %indvars.iv.next.i.i.i35.1 = add nuw nsw i64 %indvars.iv.i.i.i34, 2 ; 2 uses
  %niter53.next.1 = add i64 %niter53, 2           ; 2 uses
  %niter53.ncmp.1 = icmp eq i64 %niter53.next.1, %unroll_iter52
  br i1 %niter53.ncmp.1, label %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa, label %bb.m

_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27, label %.epil.preheader48

.epil.preheader48:                                ; preds = %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa, %.lr.ph.i.i.i32
  %indvars.iv.i.i.i34.epil.init = phi i64 [ 0, %.lr.ph.i.i.i32 ], [ %indvars.iv.next.i.i.i35.1, %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i32 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i26, i64 %indvars.iv.i.i.i34.epil.init
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %indvars.iv.i.i.i34.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cn, ptr noundef nonnull align 4 dereferenceable(32) %i.cp, i64 32, i1 false), !tbaa.struct !49
  br label %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27

_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27: ; preds = %.epil.preheader48, %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !36 ; 2 uses
  %.not.i5.i.i28 = icmp ne ptr %i.cr, null
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8, !range !44
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond.i.i29 = select i1 %.not.i5.i.i28, i1 %i.cu, i1 false
  br i1 %or.cond.i.i29, label %bb.n, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i30

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cr)
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i30

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i30: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27
  store i8 1, ptr %i.cs, align 8, !tbaa !35
  store ptr %.0.i.i.i26, ptr %i.cq, align 8, !tbaa !36
  store i32 %i.by, ptr %i.bu, align 8, !tbaa !38
  %.pre4.i31 = load i32, ptr %i.bs, align 4, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit37

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit37: ; preds = %bb.i, %bb.j, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i30
  %i.cv = phi i32 [ %.pre4.i31, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i30 ], [ %i.bt, %bb.j ], [ %i.bt, %bb.i ]
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.cw, ptr %i.bs, align 4, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cy = sext i32 %i.bt to i64
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.da = getelementptr inbounds [32 x i8], ptr %i.cz, i64 %i.cy ; 8 uses
  %i.db = load i16, ptr %i.j, align 4, !tbaa !50
  store i16 %i.db, ptr %i.da, align 4, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !50
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i16 %i.dg, ptr %i.dh, align 4, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !50
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 6
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i16 %i.dm, ptr %i.dn, align 4, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 10
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !50
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 %2, ptr %i.dr, align 4, !tbaa !52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i32 %i.o, ptr %i.ds, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit37
  %i.dt = phi i32 [ %i.cw, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit37 ], [ %i.bt, %bb.h ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN14btQuantizedBvh13swapLeafNodesEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %3 = alloca %struct.btQuantizedBvhNode, align 4 ; 4 uses
  %4 = alloca %struct.btOptimizedBvhNode, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !44, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !42
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !42
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.k = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.n = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.n, i64 64, i1 false), !tbaa.struct !57
  %i.o = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.n, ptr noundef nonnull align 4 dereferenceable(64) %i.o, i64 64, i1 false), !tbaa.struct !57
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.q = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [3 x i16], align 4                ; 6 uses
  %i.b = alloca [3 x i16], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !25, !range !44, !noundef !48
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.0.copyload.i10 = load float, ptr %3, align 4
  %.sroa.8.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load <2 x float>, ptr %2, align 4
  %i.l = load <3 x float>, ptr %i.f, align 8, !tbaa !40 ; 3 uses
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 3 uses
  %i.n = load <3 x float>, ptr %i.g, align 8, !tbaa !40 ; 2 uses
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 2 uses
  %i.p = load <2 x float>, ptr %i.h, align 8, !tbaa !40
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.r = insertelement <4 x float> %i.q, float %.sroa.13.0.copyload.i, i64 1
  %i.s = insertelement <4 x float> %i.r, float %.sroa.0.0.copyload.i10, i64 3 ; 2 uses
  %i.t = fcmp olt <4 x float> %i.s, %i.m
  %i.u = select <4 x i1> %i.t, <4 x float> %i.m, <4 x float> %i.s ; 2 uses
  %i.v = fcmp olt <4 x float> %i.o, %i.u
  %i.w = select <4 x i1> %i.v, <4 x float> %i.o, <4 x float> %i.u
  %i.x = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.z = fsub <4 x float> %i.w, %i.y              ; 2 uses
  %i.aa = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ab = shufflevector <4 x float> %i.m, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.ac = fsub <4 x float> %i.z, %i.ab
  %i.ad = fmul <4 x float> %i.z, %i.ab
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.af = insertelement <4 x float> %i.aa, float 1.000000e+00, i64 3
  %i.ag = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i11, align 4 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.i, align 4, !tbaa !40 ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.af, <4 x float> %i.ai, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.ak = fmul <4 x float> %i.ae, %i.aj
  %i.al = fadd <4 x float> %i.ae, %i.aj
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.an = fptoui <4 x float> %i.am to <4 x i16>   ; 2 uses
  %i.ao = and <4 x i16> %i.an, <i16 -2, i16 -2, i16 -2, i16 poison> ; 3 uses
  %i.ap = or <4 x i16> %i.an, <i16 poison, i16 poison, i16 poison, i16 1>
  %i.aq = shufflevector <4 x i16> %i.ao, <4 x i16> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  %i.ar = shufflevector <4 x i16> %i.ao, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i16> %i.ar, ptr %i.a, align 4, !tbaa !50
  %i.as = extractelement <4 x i16> %i.ao, i64 1
  store i16 %i.as, ptr %i.j, align 4, !tbaa !50
  %i.at = shufflevector <3 x float> %i.l, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.au = fcmp olt <2 x float> %i.ag, %i.at
  %i.av = select <2 x i1> %i.au, <2 x float> %i.at, <2 x float> %i.ag ; 2 uses
  %i.aw = shufflevector <3 x float> %i.n, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ax = fcmp olt <2 x float> %i.aw, %i.av
  %i.ay = select <2 x i1> %i.ax, <2 x float> %i.aw, <2 x float> %i.av
  %i.az = fsub <2 x float> %i.ay, %i.at
  %i.ba = fmul <2 x float> %i.ah, %i.az
  %i.bb = fadd <2 x float> %i.ba, splat (float 1.000000e+00)
  %i.bc = fptoui <2 x float> %i.bb to <2 x i16>
  %i.bd = or <2 x i16> %i.bc, splat (i16 1)       ; 3 uses
  %i.be = shufflevector <2 x i16> %i.bd, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x i16> %i.aq, <4 x i16> %i.be, <2 x i32> <i32 3, i32 4>
  store <2 x i16> %i.bf, ptr %i.b, align 4, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bh = extractelement <2 x i16> %i.bd, i64 1
  store i16 %i.bh, ptr %i.bg, align 4, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !34
  switch i32 %i.bj, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit [
    i32 0, label %bb.c
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !47 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bp, %bb.h ]
  %.03235.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 7 uses
  %i.bp = add nuw nsw i32 %.03136.i, 1            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.03235.i, i64 6
  %i.br = load i16, ptr %.03235.i, align 2, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %.03235.i, i64 10
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !50
  %i.bu = load <2 x i16>, ptr %i.bq, align 2, !tbaa !50
  %i.bv = shufflevector <2 x i16> %i.bu, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bw = insertelement <4 x i16> %i.bv, i16 %i.bt, i64 1
  %i.bx = insertelement <4 x i16> %i.bw, i16 %i.br, i64 3 ; 2 uses
  %i.by = icmp ule <4 x i16> %i.aq, %i.bx
  %i.bz = icmp uge <4 x i16> %i.aq, %i.bx
  %i.ca = shufflevector <4 x i1> %i.by, <4 x i1> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cb = bitcast <4 x i1> %i.ca to i4
  %i.cc = icmp eq i4 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %.03235.i, i64 2
  %i.ce = load <2 x i16>, ptr %i.cd, align 2, !tbaa !50
  %i.cf = icmp uge <2 x i16> %i.bd, %i.ce         ; 2 uses
  %i.cg = extractelement <2 x i1> %i.cf, i64 1
  %op.rdx = and i1 %i.cc, %i.cg
  %i.ch = extractelement <2 x i1> %i.cf, i64 0
  %.not13.not.i.i = and i1 %op.rdx, %i.ch         ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.03235.i, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !54 ; 5 uses
  %i.ck = icmp sgt i32 %i.cj, -1                  ; 2 uses
  %or.cond.i = and i1 %i.ck, %.not13.not.i.i
  br i1 %or.cond.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.cl = lshr i32 %i.cj, 21
  %i.cm = and i32 %i.cj, 2097151
  %i.cn = load ptr, ptr %1, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cl, i32 noundef %i.cm), !inline_history !61
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond3.i = or i1 %.not13.not.i.i, %i.ck
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.03235.i, i64 16
  %i.cr = add nuw nsw i32 %.037.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cs = sub nsw i32 0, %i.cj
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.03235.i, i64 %i.ct
  %i.cv = sub nsw i32 %.037.i, %i.cj
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.133.i = phi ptr [ %i.cq, %bb.f ], [ %i.cu, %bb.g ]
  %.1.i = phi i32 [ %i.cr, %bb.f ], [ %i.cv, %bb.g ] ; 2 uses
  %i.cw = icmp slt i32 %.1.i, %i.bl
  br i1 %i.cw, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %.031.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.bp, %bb.h ] ; 2 uses
  %i.cx = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.cy = icmp slt i32 %i.cx, %.031.lcssa.i
  br i1 %i.cy, label %bb.i, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.i:                                             ; preds = %._crit_edge.i
  store i32 %.031.lcssa.i, ptr @maxIterations, align 4, !tbaa !4
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.j:                                             ; preds = %bb.b
  call void @_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.k:                                             ; preds = %bb.b
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31
  call void @_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull %i.da, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit: ; preds = %bb.i, %._crit_edge.i, %bb.b, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit

bb.l:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !47 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i22, label %._crit_edge.i21

.lr.ph.i22:                                       ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 4
end_hunk_2
