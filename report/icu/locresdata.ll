Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/locresdata?download=true
inline.NumInlined: 40
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::internal::LocalOpenPointer" = type { %"class.icu_78::LocalPointerBase" }
%"class.icu_78::LocalPointerBase" = type { ptr }
%"class.icu_78::StackUResourceBundle" = type { %struct.UResourceBundle }
%struct.UResourceBundle = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i8, i8, i32, i32, i32, i32 }
%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>
%"class.icu_78::StringPiece" = type <{ ptr, i32, [4 x i8] }>

$_ZN6icu_7810CharStringD2Ev = comdat any

$_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev = comdat any

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [10 x i8] c"Countries\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Languages\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Fallback\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@switch.table._ZN12_GLOBAL__N_126_uloc_getOrientationHelperEPKcS1_R10UErrorCode = private unnamed_addr constant [19 x i8] [i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 2], align 4

; Function Attrs: mustprogress uwtable
define ptr @uloc_getTableStringWithFallback_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 21 uses
  %7 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 6 uses
  %8 = alloca %"class.icu_78::StackUResourceBundle", align 8 ; 12 uses
  %9 = alloca %"class.icu_78::StackUResourceBundle", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.c = load i32, ptr %6, align 4, !tbaa !9
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.e = call ptr @ures_open_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !13
  %i.f = load i32, ptr %i.a, align 4, !tbaa !9    ; 4 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %6, align 4, !tbaa !9
  br label %.loopexit.a

bb.d:                                             ; preds = %bb.b
  switch i32 %i.f, label %bb.g [
    i32 -127, label %bb.f
    i32 -128, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %6, align 4, !tbaa !9
  %.not56 = icmp eq i32 %i.h, -127
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i32 %i.f, ptr %6, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.not57 = icmp eq ptr %3, null
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.thread76.thread96, %bb.g
  %i.n = phi ptr [ %i.e, %bb.g ], [ %i.bj, %.thread76.thread96 ] ; 10 uses
  %.046 = phi ptr [ null, %bb.g ], [ %.450, %.thread76.thread96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  invoke void @_ZN6icu_7820StackUResourceBundleC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %8)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  invoke void @_ZN6icu_7820StackUResourceBundleC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %9)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.o = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.t       ; 0 uses

bb.k:                                             ; preds = %bb.j
  br i1 %.not57, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.t       ; 0 uses

bb.m:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.n:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.s = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.thread76.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = invoke ptr @ures_getStringByKeyWithFallback_78(ptr noundef nonnull %8, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.a)
          to label %bb.q unwind label %bb.t       ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.v = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.thread76.thread96, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.v, ptr %6, align 4, !tbaa !9
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.x = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(10) @.str) #10
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.z = invoke ptr @uloc_getCurrentCountryID_78(ptr noundef %4)
          to label %bb.w unwind label %bb.t

bb.t:                                             ; preds = %bb.j, %bb.l, %bb.p, %bb.x, %bb.v, %bb.s
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.u:                                             ; preds = %bb.r
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(10) @.str.1) #10
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.v, label %.thread76.thread96

bb.v:                                             ; preds = %bb.u
  %i.ad = invoke ptr @uloc_getCurrentLanguageID_78(ptr noundef %4)
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %bb.v, %bb.s
  %.0 = phi ptr [ %i.ad, %bb.v ], [ %i.z, %bb.s ] ; 3 uses
  %.not60 = icmp eq ptr %.0, null
  %.not61 = icmp eq ptr %4, %.0
  %or.cond = or i1 %.not60, %.not61
  br i1 %or.cond, label %.thread76, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ae = invoke ptr @ures_getStringByKeyWithFallback_78(ptr noundef nonnull %8, ptr noundef nonnull %.0, ptr noundef %5, ptr noundef nonnull %i.a)
          to label %bb.y unwind label %bb.t       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.af = load i32, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.thread76.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.af, ptr %6, align 4, !tbaa !9
  br label %.thread76.thread96

.thread76:                                        ; preds = %bb.w
  %.pre = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.ah = icmp slt i32 %.pre, 1
  br i1 %i.ah, label %.thread76.thread96, label %.thread76.thread

.thread76.thread:                                 ; preds = %bb.y, %bb.o, %.thread76
  %.34995 = phi ptr [ %i.u, %.thread76 ], [ %i.ae, %bb.y ], [ %.046, %bb.o ]
  %i.ai = phi i32 [ %.pre, %.thread76 ], [ %i.af, %bb.y ], [ %i.s, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !14
  store i32 %i.ai, ptr %6, align 4, !tbaa !9
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.aj = invoke ptr @ures_getStringByKeyWithFallback_78(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %.thread76.thread
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ak, ptr %6, align 4, !tbaa !9
  br label %bb.ao

bb.ac:                                            ; preds = %.thread76.thread
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  store ptr %i.i, ptr %10, align 8, !tbaa !17
  store i32 40, ptr %i.j, align 8, !tbaa !19
  store i8 0, ptr %i.k, align 4, !tbaa !18
  store i32 0, ptr %i.l, align 8, !tbaa !21
  store i8 0, ptr %i.i, align 1, !tbaa !22
  %i.an = load i32, ptr %i.b, align 4, !tbaa !14
  %i.ao = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %10, ptr noundef %i.aj, i32 noundef %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ae unwind label %bb.ah     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef %1)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ap = load ptr, ptr %11, align 8
  %i.aq = load i32, ptr %i.m, align 8             ; 3 uses
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !21
  %i.as = icmp eq i32 %i.ar, %i.aq
  br i1 %i.as, label %bb.ag, label %._ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80_crit_edge

._ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80_crit_edge: ; preds = %bb.af
  %.pre81 = load ptr, ptr %10, align 8, !tbaa !17
  br label %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80

bb.ag:                                            ; preds = %bb.af
  %i.at = icmp eq i32 %i.aq, 0
  br i1 %i.at, label %.sink.split, label %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit

_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit: ; preds = %bb.ag
  %i.au = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.av = sext i32 %i.aq to i64
  %bcmp.i = call i32 @bcmp(ptr %i.au, ptr %i.ap, i64 %i.av)
  %i.aw = icmp eq i32 %bcmp.i, 0
  br i1 %i.aw, label %.sink.split, label %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80

bb.ah:                                            ; preds = %bb.aj, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80, %bb.ae, %bb.ad
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.ap

_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80: ; preds = %._ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80_crit_edge, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit
  %i.ay = phi ptr [ %.pre81, %._ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80_crit_edge ], [ %i.au, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit ]
  %i.az = invoke ptr @ures_open_78(ptr noundef %0, ptr noundef %i.ay, ptr noundef nonnull %i.a)
          to label %bb.ai unwind label %bb.ah     ; 3 uses

bb.ai:                                            ; preds = %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread80
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @ures_close_78(ptr noundef nonnull %i.n)
          to label %bb.ak unwind label %bb.ah

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  store ptr %i.az, ptr %7, align 8, !tbaa !13
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %bb.al, label %.sink.split

.sink.split:                                      ; preds = %bb.ak, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit, %bb.ag
  %.sink = phi i32 [ 5, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit ], [ 5, %bb.ag ], [ %i.ba, %bb.ak ]
  %.ph = phi ptr [ %i.n, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit ], [ %i.n, %bb.ag ], [ %i.az, %bb.ak ]
  store i32 %.sink, ptr %6, align 4, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %bb.ak
  %i.bc = phi ptr [ %i.az, %bb.ak ], [ %.ph, %.sink.split ]
  %i.bd = phi i1 [ true, %bb.ak ], [ false, %.sink.split ]
  %i.be = load i8, ptr %i.k, align 4, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bf = load ptr, ptr %10, align 8, !tbaa !17
  invoke void @uprv_free_78(ptr noundef %i.bf)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #11
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.ab
  %i.bi = phi ptr [ %i.n, %bb.ab ], [ %i.bc, %_ZN6icu_7810CharStringD2Ev.exit ]
  %.2 = phi i1 [ false, %bb.ab ], [ %i.bd, %_ZN6icu_7810CharStringD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.thread76.thread96

bb.ap:                                            ; preds = %bb.ah, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.ah ], [ %i.am, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.aq

.thread76.thread96:                               ; preds = %bb.u, %bb.z, %.thread76, %bb.q, %bb.ao
  %i.bj = phi ptr [ %i.bi, %bb.ao ], [ %i.n, %bb.q ], [ %i.n, %bb.z ], [ %i.n, %.thread76 ], [ %i.n, %bb.u ] ; 2 uses
  %.450 = phi ptr [ %.34995, %bb.ao ], [ %i.u, %bb.q ], [ %i.ae, %bb.z ], [ %i.u, %.thread76 ], [ %i.u, %bb.u ] ; 2 uses
  %.3 = phi i1 [ %.2, %bb.ao ], [ false, %bb.q ], [ false, %bb.z ], [ false, %.thread76 ], [ false, %bb.u ]
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br i1 %.3, label %bb.h, label %.loopexit.a

bb.aq:                                            ; preds = %bb.ap, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ap ], [ %i.aa, %bb.t ]
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aq ], [ %i.r, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ar ], [ %i.q, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

.loopexit.a:                                      ; preds = %.thread76.thread96, %bb.c
  %i.bk = phi ptr [ %i.e, %bb.c ], [ %i.bj, %.thread76.thread96 ] ; 2 uses
  %.051 = phi ptr [ null, %bb.c ], [ %.450, %.thread76.thread96 ]
  %.not.i71 = icmp eq ptr %i.bk, null
  br i1 %.not.i71, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %.loopexit.a
  invoke void @ures_close_78(ptr noundef nonnull %i.bk)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #11
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %.loopexit.a, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.av

bb.av:                                            ; preds = %bb.a, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %.152 = phi ptr [ %.051, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.152
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ures_open_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6icu_7820StackUResourceBundleC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #2

declare ptr @ures_getByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ures_getStringByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @uloc_getCurrentCountryID_78(ptr noundef) local_unnamed_addr #2

declare ptr @uloc_getCurrentLanguageID_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !18
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #11
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ures_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #11
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @uloc_getCharacterOrientation_78(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_126_uloc_getOrientationHelperEPKcS1_R10UErrorCode(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 5) i32 @_ZN12_GLOBAL__N_126_uloc_getOrientationHelperEPKcS1_R10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::CharString", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !9
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @uloc_getDefault_78()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.b ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.016) #9
  call void @_Z23ulocimp_canonicalize_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %3, i64 %i.f, ptr nonnull %.016, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.g = load i32, ptr %2, align 4, !tbaa !9
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %i.i = load ptr, ptr %3, align 8, !tbaa !17
  %i.j = invoke ptr @uloc_getTableStringWithFallback_78(ptr noundef null, ptr noundef %i.i, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %2, align 4, !tbaa !9
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load i32, ptr %i.a, align 4
  %.not21 = icmp eq i32 %i.m, 0
  %or.cond = select i1 %i.l, i1 true, i1 %.not21
  br i1 %or.cond, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %bb.f
  %i.o = load i16, ptr %i.j, align 2, !tbaa !24
  %switch.tableidx = add i16 %i.o, -98            ; 3 uses
  %i.p = icmp ult i16 %switch.tableidx, 19
  br i1 %i.p, label %switch.hole_check, label %bb.i

bb.i:                                             ; preds = %switch.hole_check, %bb.h
  store i32 5, ptr %2, align 4, !tbaa !9
  br label %bb.j

switch.hole_check:                                ; preds = %bb.h
  %switch.maskindex = zext nneg i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 328705, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.q = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_126_uloc_getOrientationHelperEPKcS1_R10UErrorCode, i64 %i.q
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.j

bb.j:                                             ; preds = %switch.lookup, %bb.i, %bb.f
  %.0 = phi i32 [ 4, %bb.f ], [ 4, %bb.i ], [ %switch.ext, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j
  %.1 = phi i32 [ %.0, %bb.j ], [ 4, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %3, align 8, !tbaa !17
  invoke void @uprv_free_78(ptr noundef %i.t)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
end_hunk_0
