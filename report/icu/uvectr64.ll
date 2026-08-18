inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

@_ZZN6icu_789UVector6416getStaticClassIDEvE7classID = internal global i8 0, align 1
@_ZTVN6icu_789UVector64E = constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6icu_789UVector64E, ptr @_ZN6icu_789UVector64D1Ev, ptr @_ZN6icu_789UVector64D0Ev, ptr @_ZNK6icu_789UVector6417getDynamicClassIDEv] }, align 8
@_ZTIN6icu_789UVector64E = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_789UVector64E, ptr @_ZTIN6icu_787UObjectE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_789UVector64E = constant [20 x i8] c"N6icu_789UVector64E\00", align 1
@_ZTIN6icu_787UObjectE = external constant ptr

@_ZN6icu_789UVector64C1ER10UErrorCode = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_789UVector64C2ER10UErrorCode
@_ZN6icu_789UVector64C1EiR10UErrorCode = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN6icu_789UVector64C2EiR10UErrorCode
@_ZN6icu_789UVector64D1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_789UVector64D2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN6icu_789UVector6416getStaticClassIDEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_789UVector6416getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_789UVector6417getDynamicClassIDEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_789UVector6416getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector64C2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 20), (24, 32)) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_789UVector64E, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !17
  %i.e = invoke noalias dereferenceable_or_null(64) ptr @uprv_malloc_78(i64 noundef 64) #14
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  store i32 7, ptr %1, align 4, !tbaa !18
  br label %_ZN6icu_789UVector645_initEiR10UErrorCode.exit

bb.c:                                             ; preds = %.noexc
  store i32 8, ptr %i.b, align 4, !tbaa !15
  br label %_ZN6icu_789UVector645_initEiR10UErrorCode.exit

_ZN6icu_789UVector645_initEiR10UErrorCode.exit:   ; preds = %bb.c, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector645_initEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %spec.store.select = select i1 %i.a, i32 8, i32 %1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %spec.store.select)
  %.0 = select i1 %i.d, i32 %i.e, i32 %spec.store.select ; 2 uses
  %i.f = icmp sgt i32 %.0, 268435455
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @uprv_min_78(i32 noundef 8, i32 noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %i.g, %bb.b ], [ %.0, %bb.a ]   ; 2 uses
  %i.h = sext i32 %.1 to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !17
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %2, align 4, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.1, ptr %i.m, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector64C2EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 20), (24, 32)) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_789UVector64E, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !17
  %i.e = icmp slt i32 %1, 1
  %spec.store.select.i = select i1 %i.e, i32 8, i32 %1 ; 2 uses
  %i.f = icmp samesign ugt i32 %spec.store.select.i, 268435455
  br i1 %i.f, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.g = invoke i32 @uprv_min_78(i32 noundef 8, i32 noundef 0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b, %bb.a
  %.1.i = phi i32 [ %spec.store.select.i, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = sext i32 %.1.i to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.i) #14
          to label %.noexc4 unwind label %bb.e    ; 2 uses

.noexc4:                                          ; preds = %.noexc
  store ptr %i.j, ptr %i.d, align 8, !tbaa !17
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc4
  store i32 7, ptr %2, align 4, !tbaa !18
  br label %_ZN6icu_789UVector645_initEiR10UErrorCode.exit

bb.d:                                             ; preds = %.noexc4
  store i32 %.1.i, ptr %i.b, align 4, !tbaa !15
  br label %_ZN6icu_789UVector645_initEiR10UErrorCode.exit

_ZN6icu_789UVector645_initEiR10UErrorCode.exit:   ; preds = %bb.d, %bb.c
  ret void

bb.e:                                             ; preds = %.noexc, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  resume { ptr, i32 } %i.l
}

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_789UVector64D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_789UVector64E, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  invoke void @uprv_free_78(ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !17
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_789UVector64D0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6icu_789UVector64D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector646assignERKS0_R10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 5 uses
  %.not.i = icmp slt i32 %i.e, %i.b               ; 2 uses
  %or.cond.i = select i1 %i.c, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %bb.b, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread23

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !18
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %bb.e, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread23

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0                     ; 2 uses
  %i.k = icmp sgt i32 %i.b, %i.i
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp sgt i32 %i.e, 1073741823
  br i1 %i.l, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = shl nsw i32 %i.e, 1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.b) ; 2 uses
  %i.n = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.i)
  %.1.i.i = select i1 %i.j, i32 %i.n, i32 %spec.select.i.i ; 4 uses
  %i.o = icmp sgt i32 %.1.i.i, 268435455
  br i1 %i.o, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = zext nneg i32 %.1.i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call ptr @uprv_realloc_78(ptr noundef %i.q, i64 noundef %i.s) #17 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.sink.split, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.h
  store ptr %i.t, ptr %i.p, align 8, !tbaa !17
  store i32 %.1.i.i, ptr %i.d, align 4, !tbaa !15
  %.pre = load i32, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.v = icmp slt i32 %.pre, 0
  br i1 %i.v, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread23

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread23: ; preds = %bb.a, %bb.d, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %i.w = phi i32 [ %.pre, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit ], [ %i.b, %bb.d ], [ %i.b, %bb.a ] ; 7 uses
  %i.x = phi i32 [ %.1.i.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit ], [ %i.e, %bb.d ], [ %i.e, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !10   ; 2 uses
  %i.aa = icmp sgt i32 %i.w, %i.z
  br i1 %i.aa, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread23
  %.not.i.i = icmp slt i32 %i.x, %i.w
  br i1 %.not.i.i, label %bb.j, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0                   ; 2 uses
  %i.ae = icmp sgt i32 %i.w, %i.ac
  %or.cond.i.i.i = and i1 %i.ad, %i.ae
  %i.af = icmp sgt i32 %i.x, 1073741823
  %or.cond.i9 = or i1 %i.af, %or.cond.i.i.i
  br i1 %or.cond.i9, label %_ZN6icu_789UVector647setSizeEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = shl nsw i32 %i.x, 1
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.w) ; 2 uses
  %i.ah = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.ac)
  %.1.i.i.i = select i1 %i.ad, i32 %i.ah, i32 %spec.select.i.i.i ; 3 uses
  %i.ai = icmp sgt i32 %.1.i.i.i, 268435455
  br i1 %i.ai, label %_ZN6icu_789UVector647setSizeEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.al = zext nneg i32 %.1.i.i.i to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call ptr @uprv_realloc_78(ptr noundef %i.ak, i64 noundef %i.am) #17 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN6icu_789UVector647setSizeEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !17
  store i32 %.1.i.i.i, ptr %i.d, align 4, !tbaa !15
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !10
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i: ; preds = %bb.m, %bb.i
  %i.ap = phi i32 [ %.pre.i, %bb.m ], [ %i.z, %bb.i ] ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %i.w
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17
  %i.at = sext i32 %i.ap to i64
  %i.au = shl nsw i64 %i.at, 3
  %scevgep.i = getelementptr i8, ptr %i.as, i64 %i.au
  %i.av = xor i32 %i.ap, -1
  %i.aw = add i32 %i.w, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.az, i1 false), !tbaa !20
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread23
  store i32 %i.w, ptr %i.y, align 8, !tbaa !10
  br label %_ZN6icu_789UVector647setSizeEi.exit

_ZN6icu_789UVector647setSizeEi.exit:              ; preds = %bb.j, %bb.k, %bb.l, %.loopexit.i
  %.pr = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.ba = icmp sgt i32 %.pr, 0
  br i1 %i.ba, label %.lr.ph, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

.lr.ph:                                           ; preds = %_ZN6icu_789UVector647setSizeEi.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17 ; 7 uses
  %wide.trip.count = zext nneg i32 %.pr to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %.pr, 8
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = ptrtoaddr ptr %i.bc to i64
  %i.bh = sub i64 %i.bg, %i.bf
  %diff.check = icmp ugt i64 %i.bh, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <2 x i64>, ptr %i.bi, align 8, !tbaa !20
  %wide.load24 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x i64> %wide.load, ptr %i.bk, align 8, !tbaa !20
  store <2 x i64> %wide.load24, ptr %i.bl, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.prol
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.prol
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !20
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !26

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.1
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.1
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !20
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.2
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.2
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread, label %scalar.ph, !llvm.loop !28

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.sink.split: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.sink = phi i32 [ 1, %bb.g ], [ 1, %bb.f ], [ 15, %bb.e ], [ 1, %bb.c ], [ 7, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.sink.split, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit, %_ZN6icu_789UVector647setSizeEi.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector647setSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = icmp sgt i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %.not.i = icmp slt i32 %i.f, %1
  br i1 %.not.i, label %bb.d, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0                     ; 2 uses
  %i.j = icmp sgt i32 %1, %i.h
  %or.cond.i.i = and i1 %i.i, %i.j
  %i.k = icmp sgt i32 %i.f, 1073741823
  %or.cond = or i1 %i.k, %or.cond.i.i
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nsw i32 %i.f, 1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %1) ; 2 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.h)
  %.1.i.i = select i1 %i.i, i32 %i.m, i32 %spec.select.i.i ; 3 uses
  %i.n = icmp sgt i32 %.1.i.i, 268435455
  br i1 %i.n, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = zext nneg i32 %.1.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call ptr @uprv_realloc_78(ptr noundef %i.p, i64 noundef %i.r) #17 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.s, ptr %i.o, align 8, !tbaa !17
  store i32 %.1.i.i, ptr %i.e, align 4, !tbaa !15
  %.pre = load i32, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.g, %bb.c
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.c, %bb.c ] ; 3 uses
  %i.v = icmp slt i32 %i.u, %1
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.y = sext i32 %i.u to i64
  %i.z = shl nsw i64 %i.y, 3
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = xor i32 %i.u, -1
  %i.ab = add i32 %1, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ae, i1 false), !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit, %bb.b
  store i32 %1, ptr %i.b, align 8, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6icu_789UVector64eqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %.not8 = icmp eq i64 %i.k, %i.m                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not8, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.07 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not8, %bb.b ]
  ret i1 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6icu_789UVector6412setElementAtEli(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %2, %i.c
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = zext nneg i32 %2 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  store i64 %1, ptr %i.h, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector6415insertElementAtEliR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 5 uses
  %.not = icmp sgt i32 %2, %i.c
  br i1 %.not, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %.not.i.not = icmp sgt i32 %i.f, %i.c
  br i1 %.not.i.not, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %3, align 4, !tbaa !18
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.l = icmp sge i32 %i.c, %i.j
  %or.cond.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.m = icmp sgt i32 %i.f, 1073741823
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.n = shl nsw i32 %i.f, 1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.d) ; 2 uses
  %i.o = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.j)
  %.1.i.i = select i1 %i.k, i32 %i.o, i32 %spec.select.i.i ; 3 uses
  %i.p = icmp sgt i32 %.1.i.i, 268435455
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = zext nneg i32 %.1.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call ptr @uprv_realloc_78(ptr noundef %i.r, i64 noundef %i.t) #17 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.m:                                             ; preds = %bb.k
  store ptr %i.u, ptr %i.q, align 8, !tbaa !17
  store i32 %.1.i.i, ptr %i.e, align 4, !tbaa !15
  %.pre = load i32, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.m, %bb.c
  %i.w = phi i32 [ %.pre, %bb.m ], [ %i.c, %bb.c ] ; 3 uses
  %i.x = icmp sgt i32 %i.w, %2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 3 uses
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %4 = zext i32 %i.w to i64                       ; 5 uses
  %5 = zext nneg i32 %2 to i64                    ; 2 uses
  %6 = add nsw i64 %4, -1
  %7 = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %8 = sub nsw i64 %4, %7                         ; 3 uses
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %8, -4                         ; 3 uses
  %9 = sub nsw i64 %4, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %10 = sub i64 %4, %index
  %11 = getelementptr [8 x i8], ptr %i.z, i64 %10 ; 4 uses
  %12 = getelementptr i8, ptr %11, i64 -16
  %13 = getelementptr i8, ptr %11, i64 -32
  %wide.load = load <2 x i64>, ptr %12, align 8, !tbaa !20
  %wide.load22 = load <2 x i64>, ptr %13, align 8, !tbaa !20
  %i.aa = getelementptr i8, ptr %11, i64 -8
  %14 = getelementptr i8, ptr %11, i64 -24
  store <2 x i64> %wide.load, ptr %i.aa, align 8, !tbaa !20
  store <2 x i64> %wide.load22, ptr %14, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %4, %.lr.ph ], [ %9, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %i.ab = zext nneg i32 %2 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store i64 %1, ptr %i.ac, align 8, !tbaa !20
  %i.ad = add nsw i32 %i.w, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %16 = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %17 = getelementptr i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 8, !tbaa !20
  store i64 %18, ptr %16, align 8, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %19 = icmp samesign ugt i64 %indvars.iv.next, %5
  br i1 %19, label %scalar.ph, label %._crit_edge, !llvm.loop !31

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread: ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_789UVector6417removeAllElementsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((8, 12)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !18
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15   ; 3 uses
  %.not27 = icmp slt i32 %i.e, %1
  br i1 %.not27, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  %i.i = icmp sgt i32 %1, %i.g
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.j = icmp sgt i32 %i.e, 1073741823
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.k = shl nsw i32 %i.e, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %1) ; 2 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.g)
  %.1 = select i1 %i.h, i32 %i.l, i32 %spec.select ; 3 uses
  %i.m = icmp sgt i32 %.1, 268435455
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = zext nneg i32 %.1 to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call ptr @uprv_realloc_78(ptr noundef %i.o, i64 noundef %i.q) #17 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.r, ptr %i.n, align 8, !tbaa !17
  store i32 %.1, ptr %i.d, align 4, !tbaa !15
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.d, %bb.a, %bb.h, %bb.f, %bb.c
  %.2 = phi i8 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 1, %bb.m ]
  ret i8 %.2
}

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector6414setMaxCapacityEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 3 uses
  %i.a = icmp sgt i32 %1, 268435455
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %spec.store.select, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %.not = icmp sle i32 %i.d, %spec.store.select
  %i.e = icmp slt i32 %1, 1
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = zext nneg i32 %spec.store.select to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call ptr @uprv_realloc_78(ptr noundef %i.g, i64 noundef %i.i) #17 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.f, align 8, !tbaa !17
  %i.l = load i32, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !10
  %i.o = icmp sgt i32 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.l, ptr %i.m, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !5, i64 8}
!11 = !{!"_ZTSN6icu_789UVector64E", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24}
!12 = !{!"_ZTSN6icu_787UObjectE"}
!13 = !{!"p1 long", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!11, !5, i64 12}
!16 = !{!11, !5, i64 16}
!17 = !{!11, !13, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"_ZTS10UErrorCode", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = distinct !{!22, !23, !24, !25}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !23, !24}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23, !24, !25}
!31 = distinct !{!31, !23, !25, !24}
end_hunk_0
