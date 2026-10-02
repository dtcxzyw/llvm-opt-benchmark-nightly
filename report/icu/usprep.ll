Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/usprep?download=true
inline.NumInlined: 88
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UMutex" = type { [40 x i8], %"struct.std::atomic", ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%struct.UTrie = type { ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.UStringPrepKey = type { ptr, ptr }
%"class.icu_78::LocalMemory.3" = type { %"class.icu_78::LocalPointerBase.4" }
%"class.icu_78::LocalPointerBase.4" = type { ptr }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::FilteredNormalizer2" = type { %"class.icu_78::Normalizer2", ptr, ptr }
%"class.icu_78::Normalizer2" = type { %"class.icu_78::UObject" }
%"class.icu_78::Char16Ptr" = type { ptr }

$_ZN6icu_7811LocalMemoryIcE22allocateInsteadAndCopyEii = comdat any

$__clang_call_terminate = comdat any

@_ZL13PROFILE_NAMES = internal unnamed_addr constant [14 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.5, ptr @.str.8, ptr @.str.5, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 16
@_ZL11usprepMutex = internal global %"class.icu_78::UMutex" zeroinitializer, align 8
@.str = private unnamed_addr constant [112 x i8] c"usprep_swap(): data format %02x.%02x.%02x.%02x (format version %02x) is not recognized as StringPrep .spp data\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"usprep_swap(): too few bytes (%d after header) for StringPrep .spp data\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"usprep_swap(): too few bytes (%d after header) for all of StringPrep .spp data\0A\00", align 1
@_ZL21SHARED_DATA_HASHTABLE = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"spp\00", align 1
@_ZL19gSharedDataInitOnce = internal global { { i32 }, i32 } zeroinitializer, align 4
@_ZL11dataVersion = internal unnamed_addr global [4 x i8] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"rfc3491\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"rfc3530cs\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"rfc3530csci\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rfc3530mixp\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"rfc3722\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"rfc3920node\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"rfc3920res\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"rfc4011\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"rfc4013\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"rfc4505\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"rfc4518\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"rfc4518ci\00", align 1
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8
@_ZTVN6icu_7819FilteredNormalizer2E = external constant { [20 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define ptr @usprep_open_78(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.UTrie, align 8              ; 8 uses
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %4 = alloca %struct.UStringPrepKey, align 8     ; 7 uses
  %5 = alloca %"class.icu_78::LocalMemory.3", align 8 ; 9 uses
  %6 = alloca %"class.icu_78::LocalMemory.3", align 8 ; 9 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %_ZL17usprep_getProfilePKcS0_P10UErrorCode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !9
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZL17usprep_getProfilePKcS0_P10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load atomic i32, ptr @_ZL19gSharedDataInitOnce acquire, align 4
  %.not11.i.i.i = icmp eq i32 %i.e, 2
  br i1 %.not11.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL19gSharedDataInitOnce)
  %.not12.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not12.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @uhash_open_78(ptr noundef nonnull @_ZL9hashEntry8UElement, ptr noundef nonnull @_ZL14compareEntries8UElementS_, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.h = load i32, ptr %2, align 4, !tbaa !9
  %i.i = icmp slt i32 %i.h, 1
  %spec.store.select.i.i.i = select i1 %i.i, ptr %i.g, ptr null
  store ptr %spec.store.select.i.i.i, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8
  tail call void @ucln_common_registerCleanup_78(i32 noundef 1, ptr noundef nonnull @_ZL14usprep_cleanupv)
  %i.j = load i32, ptr %2, align 4, !tbaa !9
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gSharedDataInitOnce, i64 4), align 4, !tbaa !45
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL19gSharedDataInitOnce)
  br label %_ZL9initCacheP10UErrorCode.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19gSharedDataInitOnce, i64 4), align 4, !tbaa !45 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %_ZL9initCacheP10UErrorCode.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.k, ptr %2, align 4, !tbaa !9
  br label %_ZL17usprep_getProfilePKcS0_P10UErrorCode.exit

_ZL9initCacheP10UErrorCode.exit.i:                ; preds = %bb.f, %bb.e
  %.pr.i = load i32, ptr %2, align 4, !tbaa !9
  %i.m = icmp slt i32 %.pr.i, 1
  br i1 %i.m, label %bb.h, label %_ZL17usprep_getProfilePKcS0_P10UErrorCode.exit

bb.h:                                             ; preds = %_ZL9initCacheP10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %1, ptr %4, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.n, align 8, !tbaa !14
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZL11usprepMutex)
  %i.o = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %i.p = call ptr @uhash_get_78(ptr noundef %i.o, ptr noundef nonnull %4) ; 3 uses
  %.not48.i = icmp eq ptr %i.p, null
  br i1 %.not48.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !22
  call void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
  br label %_ZN6icu_7811LocalMemoryI18UStringPrepProfileED2Ev.exit83.i

bb.j:                                             ; preds = %bb.h
  call void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
  %i.t = invoke noalias dereferenceable_or_null(128) ptr @uprv_malloc_78(i64 noundef 128) #16
          to label %.noexc.i unwind label %bb.m   ; 36 uses

.noexc.i:                                         ; preds = %bb.j
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.t, i8 0, i64 128, i1 false)
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7811LocalMemoryI18UStringPrepProfileE23allocateInsteadAndResetEi.exit.i unwind label %bb.m

bb.l:                                             ; preds = %.noexc.i
  store i32 7, ptr %2, align 4, !tbaa !9
  br label %.critedge.i

bb.m:                                             ; preds = %bb.w, %.invoke.i, %.noexc66.i, %.noexc65.i, %bb.r, %bb.p, %.noexc61.i, %bb.o, %bb.n, %bb.k, %bb.j
  %.sroa.091.0.i = phi ptr [ %i.t, %bb.w ], [ %i.t, %.invoke.i ], [ null, %bb.j ], [ %i.t, %.noexc66.i ], [ %i.t, %.noexc65.i ], [ %i.t, %bb.r ], [ %i.t, %bb.p ], [ null, %bb.k ], [ %i.t, %.noexc61.i ], [ %i.t, %bb.o ], [ %i.t, %bb.n ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyED2Ev.exit81.i

_ZN6icu_7811LocalMemoryI18UStringPrepProfileE23allocateInsteadAndResetEi.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.v = load i32, ptr %2, align 4, !tbaa !9
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.n, label %.thread107.i

bb.n:                                             ; preds = %_ZN6icu_7811LocalMemoryI18UStringPrepProfileE23allocateInsteadAndResetEi.exit.i
  %i.x = invoke ptr @udata_openChoice_78(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @_ZL17isSPrepAcceptablePvPKcS1_PK9UDataInfo, ptr noundef null, ptr noundef nonnull %2)
          to label %.noexc60.i unwind label %bb.m ; 4 uses

.noexc60.i:                                       ; preds = %bb.n
  %i.y = load i32, ptr %2, align 4, !tbaa !9
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.o, label %.thread107.i

bb.o:                                             ; preds = %.noexc60.i
  %i.aa = invoke ptr @udata_getMemory_78(ptr noundef %i.x)
          to label %.noexc61.i unwind label %bb.m ; 4 uses

.noexc61.i:                                       ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.ad = invoke i32 @utrie_unserialize_78(ptr noundef nonnull %3, ptr noundef nonnull %i.ab, i32 noundef %i.ac, ptr noundef nonnull %2)
          to label %.noexc62.i unwind label %bb.m ; 0 uses

.noexc62.i:                                       ; preds = %.noexc61.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @_ZL21getSPrepFoldingOffsetj, ptr %i.ae, align 8, !tbaa !46
  %i.af = load i32, ptr %2, align 4, !tbaa !9
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.p, label %.invoke.i

bb.p:                                             ; preds = %.noexc62.i
  invoke void @umtx_lock_78(ptr noundef nonnull @_ZL11usprepMutex)
          to label %.noexc64.i unwind label %bb.m

.noexc64.i:                                       ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.t, i64 112     ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc64.i
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 4 dereferenceable(64) %i.aa, i64 64, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  br label %.noexc65.i

bb.r:                                             ; preds = %.noexc64.i
  %i.al = invoke ptr @udata_getMemory_78(ptr noundef nonnull %i.ai)
          to label %.noexc65.i unwind label %bb.m

.noexc65.i:                                       ; preds = %bb.r, %bb.q
  %.038.i.i = phi ptr [ null, %bb.q ], [ %i.x, %bb.r ] ; 4 uses
  %.0.i59.i = phi ptr [ %i.aa, %bb.q ], [ %i.al, %bb.r ]
  invoke void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
          to label %.noexc66.i unwind label %bb.m

.noexc66.i:                                       ; preds = %.noexc65.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i59.i, i64 64
  %i.an = load i32, ptr %i.t, align 8, !tbaa !23
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !25
  invoke void @u_getUnicodeVersion_78(ptr noundef nonnull %i.a)
          to label %.noexc67.i unwind label %bb.m

.noexc67.i:                                       ; preds = %.noexc66.i
  %i.ar = load i32, ptr %2, align 4, !tbaa !9
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.s, label %.invoke.i

bb.s:                                             ; preds = %.noexc67.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !23
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = call i32 @llvm.bswap.i32(i32 %i.av)     ; 2 uses
  %i.ax = load i32, ptr @_ZL11dataVersion, align 4
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = icmp slt i32 %i.aw, %i.ay
  %i.ba = icmp slt i32 %i.aw, %i.au
  %or.cond.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = and i32 %i.bc, 1
  %.not46.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not46.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 3, ptr %2, align 4, !tbaa !9
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.u, %.noexc67.i, %.noexc62.i
  %i.be = phi ptr [ %.038.i.i, %bb.u ], [ %i.x, %.noexc62.i ], [ %.038.i.i, %.noexc67.i ]
  invoke void @udata_close_78(ptr noundef %i.be)
          to label %.thread107.i unwind label %bb.m

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 124 ; 2 uses
  store i8 1, ptr %i.bf, align 4, !tbaa !47
  %.not47.i.i = icmp eq ptr %.038.i.i, null
  br i1 %.not47.i.i, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke void @udata_close_78(ptr noundef nonnull %.038.i.i)
          to label %bb.x unwind label %bb.m

.thread107.i:                                     ; preds = %.invoke.i, %.noexc60.i, %_ZN6icu_7811LocalMemoryI18UStringPrepProfileE23allocateInsteadAndResetEi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %.pre.i.i = load i8, ptr %i.bf, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.not49.i = icmp eq i8 %.pre.i.i, 0
  br i1 %.not49.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.pre.i = load i32, ptr %2, align 4, !tbaa !9
  %i.bg = icmp slt i32 %.pre.i, 1
  br i1 %i.bg, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y, %.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !23
  %i.bj = trunc i32 %i.bi to i8                   ; 2 uses
  %i.bk = and i8 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 125
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !26
  %i.bm = lshr i8 %i.bj, 1
  %i.bn = and i8 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 126
  store i8 %i.bn, ptr %i.bo, align 2, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !29
  %i.bp = invoke noalias dereferenceable_or_null(16) ptr @uprv_malloc_78(i64 noundef 16) #16
          to label %.noexc73.i unwind label %bb.af ; 13 uses

.noexc73.i:                                       ; preds = %bb.z
  %.not.i71.i = icmp eq ptr %i.bp, null
  br i1 %.not.i71.i, label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc73.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i unwind label %bb.af

_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i: ; preds = %bb.aa
  %i.bq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.br = trunc i64 %i.bq to i32
  %i.bs = add i32 %i.br, 1
  %i.bt = invoke noundef ptr @_ZN6icu_7811LocalMemoryIcE22allocateInsteadAndCopyEii(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.bs, i32 noundef 0)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not51.i = icmp eq ptr %0, null                ; 2 uses
  br i1 %.not51.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add i32 %i.bw, 1
  %i.by = invoke noundef ptr @_ZN6icu_7811LocalMemoryIcE22allocateInsteadAndCopyEii(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.bx, i32 noundef 0)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i, label %bb.ah

_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i: ; preds = %bb.ae, %bb.ab, %.noexc73.i
  store i32 7, ptr %2, align 4, !tbaa !9
  %.val57.i = load ptr, ptr %i.ah, align 8, !tbaa !24
  invoke void @udata_close_78(ptr noundef %.val57.i)
          to label %_ZL13usprep_unloadP18UStringPrepProfile.exit.i unwind label %bb.af

bb.af:                                            ; preds = %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i, %bb.an, %bb.ak, %bb.ai, %bb.ah, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i, %bb.ad, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i, %bb.aa, %bb.z
  %.sroa.091.1.i = phi ptr [ %i.t, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ], [ %.sroa.091.2.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ null, %bb.an ], [ %i.t, %bb.ak ], [ %i.t, %bb.ai ], [ %i.t, %bb.ah ], [ %i.t, %bb.ad ], [ %i.t, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i ], [ %i.t, %bb.aa ], [ %i.t, %bb.z ]
  %.sroa.0.0.i = phi ptr [ %i.bp, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ], [ %.sroa.0.1.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ null, %bb.an ], [ %i.bp, %bb.ak ], [ %i.bp, %bb.ai ], [ %i.bp, %bb.ah ], [ %i.bp, %bb.ad ], [ %i.bp, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.i ], [ null, %bb.aa ], [ null, %bb.z ]
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %6, align 8, !tbaa !29
  invoke void @uprv_free_78(ptr noundef %i.cb)
          to label %_ZN6icu_7811LocalMemoryIcED2Ev.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #18
  unreachable

bb.ah:                                            ; preds = %bb.ae, %bb.ac
  invoke void @umtx_lock_78(ptr noundef nonnull @_ZL11usprepMutex)
          to label %bb.ai unwind label %bb.af

bb.ai:                                            ; preds = %bb.ah
  %i.ce = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %i.cf = invoke ptr @uhash_get_78(ptr noundef %i.ce, ptr noundef nonnull %4)
          to label %bb.aj unwind label %bb.af     ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %.not52.i = icmp eq ptr %i.cf, null
  br i1 %.not52.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !22
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !22
  %.val.i = load ptr, ptr %i.ah, align 8, !tbaa !24
  invoke void @udata_close_78(ptr noundef %.val.i)
          to label %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i unwind label %bb.af

bb.al:                                            ; preds = %bb.aj
  %i.cj = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !29
  store ptr %i.cj, ptr %i.bp, align 8, !tbaa !13
  %i.ck = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cj, ptr noundef nonnull dereferenceable(1) %1) #15 ; 0 uses
  br i1 %.not51.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !14
  %i.cn = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cl, ptr noundef nonnull dereferenceable(1) %0) #15 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store i32 1, ptr %i.co, align 8, !tbaa !22
  %i.cp = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %i.cq = invoke ptr @uhash_put_78(ptr noundef %i.cp, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.t, ptr noundef nonnull %2)
          to label %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i unwind label %bb.af ; 0 uses

_ZL13usprep_unloadP18UStringPrepProfile.exit77.i: ; preds = %bb.an, %bb.ak
  %.sroa.091.2.i = phi ptr [ null, %bb.an ], [ %i.t, %bb.ak ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ null, %bb.an ], [ %i.bp, %bb.ak ] ; 2 uses
  %.034.i = phi ptr [ %i.t, %bb.an ], [ %i.cf, %bb.ak ]
  invoke void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
          to label %_ZL13usprep_unloadP18UStringPrepProfile.exit.i unwind label %bb.af

_ZL13usprep_unloadP18UStringPrepProfile.exit.i:   ; preds = %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i
  %.sroa.091.3.i = phi ptr [ %.sroa.091.2.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ %i.t, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ %i.bp, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ]
  %spec.select.i = phi ptr [ %.034.i, %_ZL13usprep_unloadP18UStringPrepProfile.exit77.i ], [ null, %_ZN6icu_7811LocalMemoryI14UStringPrepKeyE23allocateInsteadAndResetEi.exit.thread.i ]
  %i.cr = load ptr, ptr %6, align 8, !tbaa !29
  invoke void @uprv_free_78(ptr noundef %i.cr)
          to label %_ZN6icu_7811LocalMemoryIcED2Ev.exit78.i unwind label %bb.ao

bb.ao:                                            ; preds = %_ZL13usprep_unloadP18UStringPrepProfile.exit.i
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #18
  unreachable

_ZN6icu_7811LocalMemoryIcED2Ev.exit78.i:          ; preds = %_ZL13usprep_unloadP18UStringPrepProfile.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.cu = load ptr, ptr %5, align 8, !tbaa !29
  invoke void @uprv_free_78(ptr noundef %i.cu)
          to label %_ZN6icu_7811LocalMemoryIcED2Ev.exit79.i unwind label %bb.ap

bb.ap:                                            ; preds = %_ZN6icu_7811LocalMemoryIcED2Ev.exit78.i
  %i.cv = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZL14compareEntries8UElementS_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call signext i8 @uhash_compareChars_78(ptr %i.a, ptr %i.b)
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call signext i8 @uhash_compareChars_78(ptr %i.d, ptr %i.f)
  %i.i = icmp ne i8 %i.h, 0
  %i.j = zext i1 %i.i to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i8 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i8 %i.k
}

declare void @ucln_common_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL14usprep_cleanupv() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 -1, ptr %i.a, align 4, !tbaa !23
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZL11usprepMutex)
  %i.c = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = call ptr @uhash_nextElement_78(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) ; 2 uses
  %.not25.i = icmp eq ptr %i.e, null
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
  br label %_ZL26usprep_internal_flushCachea.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %i.f = phi ptr [ %i.r, %bb.g ], [ %i.e, %.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 4 uses
  %i.k = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %i.l = call ptr @uhash_removeElement_78(ptr noundef %i.k, ptr noundef nonnull %i.f) ; 0 uses
  %i.m = getelementptr i8, ptr %i.h, i64 112
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !24
  call void @udata_close_78(ptr noundef %.val.i)
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not23.i = icmp eq ptr %i.n, null
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @uprv_free_78(ptr noundef nonnull %i.n)
  store ptr null, ptr %i.j, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %.not24.i = icmp eq ptr %i.p, null
  br i1 %.not24.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @uprv_free_78(ptr noundef nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @uprv_free_78(ptr noundef nonnull %i.h)
  call void @uprv_free_78(ptr noundef nonnull %i.j)
  %i.q = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  %i.r = call ptr @uhash_nextElement_78(ptr noundef %i.q, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %bb.g, %.preheader.i
  call void @umtx_unlock_78(ptr noundef nonnull @_ZL11usprepMutex)
  br label %_ZL26usprep_internal_flushCachea.exit

_ZL26usprep_internal_flushCachea.exit:            ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.s = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16 ; 2 uses
  %.not1 = icmp eq ptr %i.s, null
  br i1 %.not1, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZL26usprep_internal_flushCachea.exit
  %i.t = call i32 @uhash_count_78(ptr noundef nonnull %i.s)
  %i.u = icmp eq i32 %i.t, 0
  %.pre = load ptr, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16 ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @uhash_close_78(ptr noundef %.pre)
  store ptr null, ptr @_ZL21SHARED_DATA_HASHTABLE, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %_ZL26usprep_internal_flushCachea.exit, %bb.h, %bb.i, %bb.a
  %i.v = phi ptr [ null, %_ZL26usprep_internal_flushCachea.exit ], [ %.pre, %bb.h ], [ null, %bb.i ], [ null, %bb.a ]
  store atomic i32 0, ptr @_ZL19gSharedDataInitOnce seq_cst, align 4
  %i.w = icmp eq ptr %i.v, null
  %i.x = zext i1 %i.w to i8
  ret i8 %i.x
}

declare i32 @uhash_hashChars_78(ptr) local_unnamed_addr #2

declare signext i8 @uhash_compareChars_78(ptr, ptr) local_unnamed_addr #2

declare i32 @uhash_count_78(ptr noundef) local_unnamed_addr #2

declare void @uhash_close_78(ptr noundef) local_unnamed_addr #2

declare ptr @uhash_nextElement_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uhash_removeElement_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare ptr @udata_openChoice_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL17isSPrepAcceptablePvPKcS1_PK9UDataInfo(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #11 {
bb.a:
  %i.a = load i16, ptr %3, align 2, !tbaa !67
  %i.b = icmp ugt i16 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i8, ptr %i.c, align 2, !tbaa !68
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !69
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i8, ptr %i.i, align 2, !tbaa !35
  %i.k = icmp eq i8 %i.j, 83
  br i1 %i.k, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = icmp eq i8 %i.m, 80
  br i1 %i.n, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !35
  %i.q = icmp eq i8 %i.p, 82
  br i1 %i.q, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  %i.t = icmp eq i8 %i.s, 80
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = load i8, ptr %i.u, align 2, !tbaa !35
  %i.w = icmp eq i8 %i.v, 3
  br i1 %i.w, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.y = load i8, ptr %i.x, align 2, !tbaa !35
  %i.z = icmp eq i8 %i.y, 5
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load i32, ptr %i.ad, align 2
  store i32 %i.ae, ptr @_ZL11dataVersion, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0 = phi i8 [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

declare ptr @udata_getMemory_78(ptr noundef) local_unnamed_addr #2

declare i32 @utrie_unserialize_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL21getSPrepFoldingOffsetj(i32 noundef returned %0) #12 {
bb.a:
  ret i32 %0
}

declare void @udata_close_78(ptr noundef) local_unnamed_addr #2

declare void @u_getUnicodeVersion_78(ptr noundef) local_unnamed_addr #2

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTS10UErrorCode", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTS14UStringPrepKey", !11, i64 0, !11, i64 8}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!"p1 _ZTS10UHashtable", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 int", !10, i64 0}
!19 = !{!"_ZTS5UTrie", !17, i64 0, !18, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !4, i64 36}
!20 = !{!"p1 _ZTS11UDataMemory", !10, i64 0}
!21 = !{!"_ZTS18UStringPrepProfile", !4, i64 0, !19, i64 64, !17, i64 104, !20, i64 112, !5, i64 120, !4, i64 124, !4, i64 125, !4, i64 126}
!22 = !{!21, !5, i64 120}
!23 = !{!5, !5, i64 0}
!24 = !{!21, !20, i64 112}
!25 = !{!21, !17, i64 104}
!26 = !{!21, !4, i64 125}
!27 = !{!21, !4, i64 126}
!28 = !{!"_ZTSN6icu_7816LocalPointerBaseIcEE", !11, i64 0}
!29 = !{!28, !11, i64 0}
!30 = !{!"_ZTS11UParseError", !5, i64 0, !5, i64 4, !4, i64 8, !4, i64 40}
!31 = !{!30, !5, i64 4}
!32 = !{!30, !5, i64 0}
!33 = !{!"char16_t", !4, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!4, !4, i64 0}
!36 = !{!21, !17, i64 64}
!37 = !{!"short", !4, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!21, !10, i64 80}
!40 = !{!21, !5, i64 96}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!43 = !{!"_ZTSSt6atomicIiE", !42, i64 0}
!44 = !{!"_ZTSN6icu_789UInitOnceE", !43, i64 0, !8, i64 4}
!45 = !{!44, !8, i64 4}
!46 = !{!19, !10, i64 16}
!47 = !{!21, !4, i64 124}
!48 = !{!11, !11, i64 0}
!49 = distinct !{!49, !41}
!50 = !{!"vtable pointer", !3, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 _ZTSN6icu_7811Normalizer2E", !10, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"p1 _ZTSN6icu_7810UnicodeSetE", !10, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 char16_t", !10, i64 0}
!57 = !{!"_ZTSN6icu_789Char16PtrE", !56, i64 0}
!58 = !{!57, !56, i64 0}
!59 = !{i64 2150412456}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
!62 = !{!"_ZTS12UDataSwapper", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!63 = !{!62, !10, i64 56}
!64 = !{!62, !10, i64 48}
!65 = distinct !{!65, !41}
!66 = !{!"_ZTS9UDataInfo", !37, i64 0, !37, i64 2, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7, !4, i64 8, !4, i64 12, !4, i64 16}
!67 = !{!66, !37, i64 0}
!68 = !{!66, !4, i64 4}
!69 = !{!66, !4, i64 5}
end_hunk_1
