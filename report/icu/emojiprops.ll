Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/emojiprops?download=true
inline.NumInlined: 38
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UCharsTrie" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.icu_78::ConstChar16Ptr" = type { ptr }
%"class.icu_78::UCharsTrie::Iterator" = type { ptr, ptr, ptr, i32, i32, i8, %"class.icu_78::UnicodeString", i32, i32, ptr }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }

$__clang_call_terminate = comdat any

@_ZN6icu_7812_GLOBAL__N_19singletonE = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"icu\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"uemoji\00", align 1
@_ZZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UPropertyE8bitFlags = internal unnamed_addr constant [15 x i8] c"\00\01\02\03\04\FF\FF\05\06\FF\FF\FF\FF\FF\06", align 1
@_ZN6icu_7812_GLOBAL__N_113emojiInitOnceE = internal global { { i32 }, i32 } zeroinitializer, align 4

@_ZN6icu_7810EmojiPropsD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7810EmojiPropsD2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7810EmojiPropsD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  invoke void @udata_close_78(ptr noundef %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  invoke void @ucptrie_close_78(ptr noundef %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #9
  unreachable
}

declare void @udata_close_78(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

declare void @ucptrie_close_78(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7810EmojiProps12getSingletonER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !15
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_113emojiInitOnceE acquire, align 4
  %.not11.i = icmp eq i32 %i.c, 2
  br i1 %.not11.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_113emojiInitOnceE)
  %.not12.i = icmp eq i8 %i.d, 0
  br i1 %.not12.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_113initSingletonER10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  invoke void @_ZN6icu_7810EmojiProps4loadER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr @_ZN6icu_7812_GLOBAL__N_19singletonE, align 8, !tbaa !17
  store i32 7, ptr %0, align 4, !tbaa !15
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.g) #10
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.f
  store ptr %i.g, ptr @_ZN6icu_7812_GLOBAL__N_19singletonE, align 8, !tbaa !17
  %i.j = load i32, ptr %0, align 4, !tbaa !15
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN6icu_7810EmojiPropsD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #10
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.g) #10
  store ptr null, ptr @_ZN6icu_7812_GLOBAL__N_19singletonE, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  tail call void @ucln_common_registerCleanup_78(i32 noundef 20, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_118emojiprops_cleanupEv)
  %.pre = load i32, ptr %0, align 4, !tbaa !15
  br label %_ZN6icu_7812_GLOBAL__N_113initSingletonER10UErrorCode.exit

_ZN6icu_7812_GLOBAL__N_113initSingletonER10UErrorCode.exit: ; preds = %bb.d, %bb.k
  %i.l = phi i32 [ %i.e, %bb.d ], [ %.pre, %bb.k ]
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_113emojiInitOnceE, i64 4), align 4, !tbaa !38
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_113emojiInitOnceE)
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_113emojiInitOnceE, i64 4), align 4, !tbaa !38 ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.m, ptr %0, align 4, !tbaa !15
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %_ZN6icu_7812_GLOBAL__N_113initSingletonER10UErrorCode.exit, %bb.l, %bb.m
  %i.o = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_19singletonE, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit
  %.0 = phi ptr [ %i.o, %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7810EmojiProps12isAcceptableEPvPKcS3_PK9UDataInfo(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #5 align 2 {
bb.a:
  %i.a = load i16, ptr %3, align 2, !tbaa !40
  %i.b = icmp ugt i16 %i.a, 19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load <2 x i8>, ptr %i.c, align 2
  %i.f = load <2 x i8>, ptr %i.d, align 2
  %i.g = shufflevector <2 x i8> %i.e, <2 x i8> %i.f, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i8> %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.i = load i8, ptr %i.h, align 2
  %i.j = icmp eq i8 %i.i, 111
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 106
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = load i8, ptr %i.n, align 2
  %i.p = icmp eq i8 %i.o, 1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.q = icmp eq i32 %.fr.scalar, 1833238528
  %op.rdx = select i1 %i.q, i1 %i.b, i1 false
  %4 = select i1 %op.rdx, i1 %i.j, i1 false
  %op.rdx2 = select i1 %4, i1 %i.m, i1 false
  %op.rdx3 = select i1 %op.rdx2, i1 %i.p, i1 false
  %i.r = zext i1 %op.rdx3 to i8
  ret i8 %i.r
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810EmojiProps4loadER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call ptr @udata_openChoice_78(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN6icu_7810EmojiProps12isAcceptableEPvPKcS3_PK9UDataInfo, ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !12
  %i.b = load i32, ptr %1, align 4, !tbaa !15
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @udata_getMemory_78(ptr noundef %i.a) ; 15 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41   ; 3 uses
  %i.f = icmp slt i32 %i.e, 40
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 3, ptr %1, align 4, !tbaa !15
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = sub nsw i32 %i.h, %i.e
  %i.l = tail call ptr @ucptrie_openFromBinary_78(i32 noundef 0, i32 noundef 2, ptr noundef nonnull %i.j, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull %1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !13
  %i.n = load i32, ptr %1, align 4, !tbaa !15
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !41   ; 3 uses
  %i.t = icmp sgt i32 %i.s, %i.q
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 %i.u
  %i.w = select i1 %i.t, ptr %i.v, ptr null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !41   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, %i.s
  %i.ab = sext i32 %i.s to i64
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 %i.ab
  %i.ad = select i1 %i.aa, ptr %i.ac, ptr null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, %i.z
  %i.ai = sext i32 %i.z to i64
  %i.aj = getelementptr inbounds i8, ptr %i.d, i64 %i.ai
  %i.ak = select i1 %i.ah, ptr %i.aj, ptr null
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.an = sext i32 %i.ag to i64
  %i.ao = getelementptr inbounds i8, ptr %i.d, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load <2 x i32>, ptr %i.am, align 4, !tbaa !41 ; 2 uses
  %i.at = extractelement <2 x i32> %i.as, i64 0   ; 2 uses
  %i.au = icmp sgt i32 %i.at, %i.ag
  %i.av = select i1 %i.au, ptr %i.ao, ptr null
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !20
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds i8, ptr %i.d, i64 %i.aw
  %i.ay = load <2 x i32>, ptr %i.aq, align 4, !tbaa !41
  %i.az = load i32, ptr %i.aq, align 4, !tbaa !41
  %i.ba = icmp sgt <2 x i32> %i.ay, %i.as
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %i.d, i64 %i.bb
  %i.bd = insertelement <2 x ptr> poison, ptr %i.ax, i64 0
  %i.be = insertelement <2 x ptr> %i.bd, ptr %i.bc, i64 1
  %i.bf = select <2 x i1> %i.ba, <2 x ptr> %i.be, <2 x ptr> splat (ptr null)
  store <2 x ptr> %i.bf, ptr %i.ar, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.c, %bb.d, %bb.a
  ret void
}

declare ptr @udata_openChoice_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare ptr @udata_getMemory_78(ptr noundef) local_unnamed_addr #1

declare ptr @ucptrie_openFromBinary_78(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7810EmojiProps17addPropertyStartsEPK9USetAdderR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = call i32 @ucptrie_getRange_78(ptr noundef %i.c, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i32 [ %i.d, %.lr.ph ], [ %i.l, %bb.b ]
  %.06 = phi i32 [ 0, %.lr.ph ], [ %i.j, %bb.b ]
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.i = load ptr, ptr %1, align 8, !tbaa !23
  call void %i.h(ptr noundef %i.i, i32 noundef %.06)
  %i.j = add nuw nsw i32 %i.g, 1                  ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.l = call i32 @ucptrie_getRange_78(ptr noundef %i.k, i32 noundef %i.j, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i32 @ucptrie_getRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7810EmojiProps17hasBinaryPropertyEi9UProperty(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %i.b = call noundef ptr @_ZN6icu_7810EmojiProps12getSingletonER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !15
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = add i32 %1, -72
  %or.cond.i = icmp ult i32 %i.e, -15
  %or.cond = or i1 %or.cond.i, %i.d
  br i1 %or.cond, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UProperty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr i8, ptr @_ZZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UPropertyE8bitFlags, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -57
  %i.i = load i8, ptr %i.h, align 1, !tbaa !25    ; 2 uses
  %i.j = icmp slt i8 %i.i, 0
  br i1 %i.j, label %_ZNK6icu_7810EmojiProps21hasBinaryPropertyImplEi9UProperty.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = icmp ult i32 %0, 65536
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.q = lshr i32 %0, 6
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29
  %i.u = zext i16 %i.t to i32
  %i.v = and i32 %0, 63
  %i.w = add nuw nsw i32 %i.v, %i.u
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.x = icmp ult i32 %0, 1114112
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30
  %.not.i = icmp slt i32 %0, %i.z
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31
  %i.ac = add nsw i32 %i.ab, -2
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ad = call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.l, i32 noundef %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 20
end_hunk_0
