Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/qopen?download=true
inline.NumInlined: 27
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ErrorHandler = type <{ i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>
%class.RawRead = type { %class.Array, ptr, i64, i64, ptr }
%class.Array = type { ptr, i64, i64, i64 }

$_ZN9CryptDataD2Ev = comdat any

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [3 x i32] [i32 81, i32 79, i32 0], align 4
@ErrHandler = external global %class.ErrorHandler, align 4
@.str.1 = private unnamed_addr constant [44 x i32] [i32 77, i32 97, i32 120, i32 105, i32 109, i32 117, i32 109, i32 32, i32 97, i32 108, i32 108, i32 111, i32 119, i32 101, i32 100, i32 32, i32 97, i32 114, i32 114, i32 97, i32 121, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 40, i32 37, i32 117, i32 41, i32 32, i32 105, i32 115, i32 32, i32 101, i32 120, i32 99, i32 101, i32 101, i32 100, i32 101, i32 100, i32 0], align 4

@_ZN9QuickOpenC1Ev = unnamed_addr alias void (ptr), ptr @_ZN9QuickOpenC2Ev
@_ZN9QuickOpenD1Ev = unnamed_addr alias void (ptr), ptr @_ZN9QuickOpenD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN9QuickOpenC2Ev(ptr noundef nonnull align 8 dereferenceable(2673) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZN9CryptDataC1Ev(ptr noundef nonnull align 8 dereferenceable(2516) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(65536) ptr @_Znam(i64 noundef 65536) #16
          to label %bb.b unwind label %_ZN5ArrayIhED2Ev.exit.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i8 0, ptr %i.h, align 8, !tbaa !23
  ret void

_ZN5ArrayIhED2Ev.exit.a:                          ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %i.a) #17
  resume { ptr, i32 } %i.i
}

declare void @_ZN9CryptDataC1Ev(ptr noundef nonnull align 8 dereferenceable(2516)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN9QuickOpen4InitEP7Archiveb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2673) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %.not = icmp eq ptr %1, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.c, null
  %or.cond = select i1 %.not, i1 true, i1 %.not7.i
  br i1 %or.cond, label %_ZN9QuickOpen5CloseEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.08.i = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.08.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = load ptr, ptr %.08.i, align 8, !tbaa !26 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef nonnull %.08.i) #18
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN9QuickOpen5CloseEv.exit, label %.lr.ph.i, !llvm.loop !27

_ZN9QuickOpen5CloseEv.exit:                       ; preds = %bb.c, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN9QuickOpen5CloseEv.exit
  %i.l = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znam(i64 noundef 65536) #16
  store ptr %i.l, ptr %i.i, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN9QuickOpen5CloseEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i8 0, ptr %i.n, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.b, i64 noundef 32)
          to label %.noexc1.i unwind label %bb.b

.noexc1.i:                                        ; preds = %.noexc.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.c, i64 noundef 4)
          to label %.noexc2.i unwind label %bb.b

.noexc2.i:                                        ; preds = %.noexc1.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 868
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.d, i64 noundef 32)
          to label %.noexc3.i unwind label %bb.b

.noexc3.i:                                        ; preds = %.noexc2.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 900
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.e, i64 noundef 32)
          to label %_ZN9CryptData13KDF5CacheItemD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc3.i.3, %.noexc2.i.3, %.noexc1.i.3, %.noexc.i.3, %_ZN9CryptData13KDF5CacheItemD2Ev.exit.2, %.noexc3.i.2, %.noexc2.i.2, %.noexc1.i.2, %.noexc.i.2, %_ZN9CryptData13KDF5CacheItemD2Ev.exit.1, %.noexc3.i.1, %.noexc2.i.1, %.noexc1.i.1, %.noexc.i.1, %_ZN9CryptData13KDF5CacheItemD2Ev.exit, %.noexc3.i, %.noexc2.i, %.noexc1.i, %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #19
  unreachable

_ZN9CryptData13KDF5CacheItemD2Ev.exit:            ; preds = %.noexc3.i
  tail call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(148) %.ptr1) #17
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.h, i64 noundef 16)
          to label %.noexc.i.1 unwind label %bb.b

.noexc.i.1:                                       ; preds = %_ZN9CryptData13KDF5CacheItemD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.i, i64 noundef 32)
          to label %.noexc1.i.1 unwind label %bb.b

.noexc1.i.1:                                      ; preds = %.noexc.i.1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.j, i64 noundef 4)
          to label %.noexc2.i.1 unwind label %bb.b

.noexc2.i.1:                                      ; preds = %.noexc1.i.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 716
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.k, i64 noundef 32)
          to label %.noexc3.i.1 unwind label %bb.b

.noexc3.i.1:                                      ; preds = %.noexc2.i.1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 748
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.l, i64 noundef 32)
          to label %_ZN9CryptData13KDF5CacheItemD2Ev.exit.1 unwind label %bb.b

_ZN9CryptData13KDF5CacheItemD2Ev.exit.1:          ; preds = %.noexc3.i.1
  tail call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(148) %.ptr1.1) #17
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.m, i64 noundef 16)
          to label %.noexc.i.2 unwind label %bb.b

.noexc.i.2:                                       ; preds = %_ZN9CryptData13KDF5CacheItemD2Ev.exit.1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.n, i64 noundef 32)
          to label %.noexc1.i.2 unwind label %bb.b

.noexc1.i.2:                                      ; preds = %.noexc.i.2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.o, i64 noundef 4)
          to label %.noexc2.i.2 unwind label %bb.b

.noexc2.i.2:                                      ; preds = %.noexc1.i.2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 564
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.p, i64 noundef 32)
          to label %.noexc3.i.2 unwind label %bb.b

.noexc3.i.2:                                      ; preds = %.noexc2.i.2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 596
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.q, i64 noundef 32)
          to label %_ZN9CryptData13KDF5CacheItemD2Ev.exit.2 unwind label %bb.b

_ZN9CryptData13KDF5CacheItemD2Ev.exit.2:          ; preds = %.noexc3.i.2
  tail call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(148) %.ptr1.2) #17
  %.ptr1.3 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.r, i64 noundef 16)
          to label %.noexc.i.3 unwind label %bb.b

.noexc.i.3:                                       ; preds = %_ZN9CryptData13KDF5CacheItemD2Ev.exit.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.s, i64 noundef 32)
          to label %.noexc1.i.3 unwind label %bb.b

.noexc1.i.3:                                      ; preds = %.noexc.i.3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 408
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.t, i64 noundef 4)
          to label %.noexc2.i.3 unwind label %bb.b

.noexc2.i.3:                                      ; preds = %.noexc1.i.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 412
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.u, i64 noundef 32)
          to label %.noexc3.i.3 unwind label %bb.b

.noexc3.i.3:                                      ; preds = %.noexc2.i.3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 444
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.v, i64 noundef 32)
          to label %_ZN9CryptData13KDF5CacheItemD2Ev.exit.3 unwind label %bb.b

_ZN9CryptData13KDF5CacheItemD2Ev.exit.3:          ; preds = %.noexc3.i.3
  tail call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(148) %.ptr1.3) #17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.x, i64 noundef 8)
          to label %.noexc.i3 unwind label %bb.c

.noexc.i3:                                        ; preds = %_ZN9CryptData13KDF5CacheItemD2Ev.exit.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.y, i64 noundef 16)
          to label %.noexc1.i4 unwind label %bb.c

.noexc1.i4:                                       ; preds = %.noexc.i3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.z, i64 noundef 16)
          to label %.noexc2.i5 unwind label %bb.c

.noexc2.i5:                                       ; preds = %.noexc1.i4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %_ZN9CryptData13KDF3CacheItemD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc2.i5.3, %.noexc1.i4.3, %.noexc.i3.3, %_ZN9CryptData13KDF3CacheItemD2Ev.exit.2, %.noexc2.i5.2, %.noexc1.i4.2, %.noexc.i3.2, %_ZN9CryptData13KDF3CacheItemD2Ev.exit.1, %.noexc2.i5.1, %.noexc1.i4.1, %.noexc.i3.1, %_ZN9CryptData13KDF3CacheItemD2Ev.exit, %.noexc2.i5, %.noexc1.i4, %.noexc.i3, %_ZN9CryptData13KDF5CacheItemD2Ev.exit.3
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #19
  unreachable

_ZN9CryptData13KDF3CacheItemD2Ev.exit:            ; preds = %.noexc2.i5
  tail call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(73) %i.w) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.ae, i64 noundef 8)
          to label %.noexc.i3.1 unwind label %bb.c

.noexc.i3.1:                                      ; preds = %_ZN9CryptData13KDF3CacheItemD2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.af, i64 noundef 16)
          to label %.noexc1.i4.1 unwind label %bb.c

.noexc1.i4.1:                                     ; preds = %.noexc.i3.1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.ag, i64 noundef 16)
          to label %.noexc2.i5.1 unwind label %bb.c

.noexc2.i5.1:                                     ; preds = %.noexc1.i4.1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.ah, i64 noundef 1)
          to label %_ZN9CryptData13KDF3CacheItemD2Ev.exit.1 unwind label %bb.c

_ZN9CryptData13KDF3CacheItemD2Ev.exit.1:          ; preds = %.noexc2.i5.1
  tail call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(73) %i.ad) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.aj, i64 noundef 8)
          to label %.noexc.i3.2 unwind label %bb.c

.noexc.i3.2:                                      ; preds = %_ZN9CryptData13KDF3CacheItemD2Ev.exit.1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.ak, i64 noundef 16)
          to label %.noexc1.i4.2 unwind label %bb.c

.noexc1.i4.2:                                     ; preds = %.noexc.i3.2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.al, i64 noundef 16)
          to label %.noexc2.i5.2 unwind label %bb.c

.noexc2.i5.2:                                     ; preds = %.noexc1.i4.2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZN9CryptData13KDF3CacheItemD2Ev.exit.2 unwind label %bb.c

_ZN9CryptData13KDF3CacheItemD2Ev.exit.2:          ; preds = %.noexc2.i5.2
  tail call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(73) %i.ai) #17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.an, i64 noundef 8)
          to label %.noexc.i3.3 unwind label %bb.c

.noexc.i3.3:                                      ; preds = %_ZN9CryptData13KDF3CacheItemD2Ev.exit.2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.ao, i64 noundef 16)
          to label %.noexc1.i4.3 unwind label %bb.c

.noexc1.i4.3:                                     ; preds = %.noexc.i3.3
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.ap, i64 noundef 16)
          to label %.noexc2.i5.3 unwind label %bb.c

.noexc2.i5.3:                                     ; preds = %.noexc1.i4.3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_Z9cleandataPvm(ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZN9CryptData13KDF3CacheItemD2Ev.exit.3 unwind label %bb.c

_ZN9CryptData13KDF3CacheItemD2Ev.exit.3:          ; preds = %.noexc2.i5.3
  tail call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(73) %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9QuickOpenD2Ev(ptr noundef nonnull align 8 dead_on_return(2673) dereferenceable(2673) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not7.i = icmp eq ptr %i.b, null
  br i1 %.not7.i, label %_ZN9QuickOpen5CloseEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.08.i = phi ptr [ %i.d, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.08.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = load ptr, ptr %.08.i, align 8, !tbaa !26 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef nonnull %.08.i) #18
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9QuickOpen5CloseEv.exit, label %.lr.ph.i, !llvm.loop !27

_ZN9QuickOpen5CloseEv.exit:                       ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9QuickOpen5CloseEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN9QuickOpen5CloseEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %.not.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i1, label %_ZN5ArrayIhED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.k) #17
  br label %_ZN5ArrayIhED2Ev.exit

_ZN5ArrayIhED2Ev.exit:                            ; preds = %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %i.l) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9QuickOpen5CloseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2673) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.08 = phi ptr [ %i.d, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.08, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = load ptr, ptr %.08, align 8, !tbaa !26   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %.08) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define void @_ZN9QuickOpen4LoadEm(ptr noundef nonnull align 8 dereferenceable(2673) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(57108) %i.d) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2664
  store i64 %i.h, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2672
  store i8 0, ptr %i.j, align 8, !tbaa !36
  %i.k = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(57108) %i.k, i64 noundef %1, i32 noundef 0)
  %i.o = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 13768
  store i8 1, ptr %i.p, align 8, !tbaa !37
  %i.q = tail call noundef i64 @_ZN7Archive10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(57108) %i.o)
  %i.r = load ptr, ptr %0, align 8, !tbaa !8      ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 13768
  store i8 0, ptr %i.s, align 8, !tbaa !37
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 11076
  %i.v = load i32, ptr %i.u, align 4, !tbaa !76
  %.not = icmp eq i32 %i.v, 3
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 31264
  %i.x = tail call i32 @wcscmp(ptr noundef nonnull %i.w, ptr noundef nonnull @.str) #20
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 48824
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !78
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(57108) %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !79
  %i.ah = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 39520
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !81
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(57108) %i.ah, i64 noundef %i.h, i32 noundef 0)
  store i8 1, ptr %i.a, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(57108) %i.r, i64 noundef %i.h, i32 noundef 0)
  br label %bb.k

bb.f:                                             ; preds = %.thread, %bb.a
  %i.ar = load ptr, ptr %0, align 8, !tbaa !8     ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 39579
  %i.at = load i8, ptr %i.as, align 1, !tbaa !82, !range !31, !noundef !32
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 11056
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !83 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 100872
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !84, !range !31, !noundef !32
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.thread9, label %bb.h

.thread9:                                         ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 100848
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 39585
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 39601
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 39660
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 39627
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 39618
  %i.bi = tail call noundef zeroext i1 @_ZN9CryptData12SetCryptKeysEb12CRYPT_METHODP11SecPasswordPKhS4_jPhS5_(ptr noundef nonnull align 8 dereferenceable(2516) %i.bb, i1 noundef zeroext false, i32 noundef 5, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, i32 noundef %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.a, align 8, !tbaa !23
  br label %bb.k

bb.i:                                             ; preds = %.thread9, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %_ZN5ArrayIhE5ResetEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.bl) #17
  store ptr null, ptr %i.bk, align 8, !tbaa !30
  br label %_ZN5ArrayIhE5ResetEv.exit

_ZN5ArrayIhE5ResetEv.exit:                        ; preds = %bb.i, %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2656
  store i64 0, ptr %i.bn, align 8, !tbaa !91
  %i.bo = tail call noundef i32 @_ZN9QuickOpen10ReadBufferEv(ptr noundef nonnull align 8 dereferenceable(2673) %0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.e, %_ZN5ArrayIhE5ResetEv.exit
  ret void
}

declare noundef i64 @_ZN7Archive10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(57108)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9CryptData12SetCryptKeysEb12CRYPT_METHODP11SecPasswordPKhS4_jPhS5_(ptr noundef nonnull align 8 dereferenceable(2516), i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, -2147483648) i32 @_ZN9QuickOpen10ReadBufferEv(ptr noundef nonnull align 8 dereferenceable(2673) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(57108) %i.a)
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92
  %i.k = add i64 %i.j, %i.h
  tail call void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256) %i.f, i64 noundef %i.k, i32 noundef 0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = load i64, ptr %i.i, align 8, !tbaa !92
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !93   ; 2 uses
  %i.r = sub i64 65536, %i.q
  %. = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.r) ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 39579
  %i.u = load i8, ptr %i.t, align 1, !tbaa !82, !range !31, !noundef !32
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = and i64 %., -16
  %.09 = select i1 %i.v, i64 %i.w, i64 %.         ; 2 uses
  %.not = icmp eq i64 %.09, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = tail call noundef i32 @_ZN4File4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(8256) %i.s, ptr noundef %i.z, i64 noundef %.09) ; 4 uses
  %i.ab = icmp slt i32 %i.aa, 1
  %.pre13 = load ptr, ptr %0, align 8, !tbaa !8   ; 3 uses
  br i1 %i.ab, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre13, i64 39579
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !82, !range !31, !noundef !32
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = and i32 %i.aa, 2147483632
  %i.ak = zext nneg i32 %i.aj to i64
  tail call void @_ZN9CryptData12DecryptBlockEPhm(ptr noundef nonnull align 8 dereferenceable(2516) %i.af, ptr noundef %i.ai, i64 noundef %i.ak)
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi ptr [ %.pre.pre, %bb.d ], [ %.pre13, %bb.c ]
  %i.al = zext nneg i32 %i.aa to i64
  %i.am = load <2 x i64>, ptr %i.i, align 8, !tbaa !94
  %i.an = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.ao = shufflevector <2 x i64> %i.an, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ap = add <2 x i64> %i.am, %i.ao
  store <2 x i64> %i.ap, ptr %i.i, align 8, !tbaa !94
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.a
  %i.aq = phi ptr [ %i.s, %bb.a ], [ %.pre, %bb.e ], [ %.pre13, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.e ], [ 0, %bb.b ]
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(57108) %i.aq, i64 noundef %i.e, i32 noundef 0)
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9QuickOpen4ReadEPvmRm(ptr noundef nonnull align 8 dereferenceable(2673) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %i.g = load i64, ptr %i.d, align 8, !tbaa !91
  %i.h = load i64, ptr %i.e, align 8, !tbaa !95
  %i.i = add i64 %i.h, %i.g
  %i.j = load i64, ptr %i.f, align 8, !tbaa !35
  %.not = icmp ugt i64 %i.i, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN9QuickOpen8ReadNextEv(ptr noundef nonnull align 8 dereferenceable(2673) %0)
  br i1 %i.k, label %bb.b, label %bb.d, !llvm.loop !96

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.m = load i8, ptr %i.a, align 8, !tbaa !23, !range !31, !noundef !32
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.p = load i8, ptr %i.o, align 8, !tbaa !36, !range !31, !noundef !32
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !8
  %i.s = load i64, ptr %i.f, align 8, !tbaa !35
  tail call void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256) %i.r, i64 noundef %i.s, i32 noundef 0)
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !91   ; 3 uses
  %.not18 = icmp ult i64 %i.t, %i.u
  br i1 %.not18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %i.t, %2
  %i.w = load i64, ptr %i.e, align 8, !tbaa !95
  %i.x = add i64 %i.w, %i.u
  %.not19 = icmp ugt i64 %i.v, %i.x
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = sub i64 %i.t, %i.u
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.aa, i64 %2, i1 false)
  store i64 %2, ptr %3, align 8, !tbaa !94
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !35
  %i.ac = add i64 %i.ab, %2
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2672
  store i8 1, ptr %i.ad, align 8, !tbaa !36
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !36, !range !31, !noundef !32
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256) %i.ah, i64 noundef %i.t, i32 noundef 0)
  store i8 0, ptr %i.ae, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !8
  %i.aj = tail call noundef i32 @_ZN4File4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(8256) %i.ai, ptr noundef %1, i64 noundef %2) ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  %i.al = zext nneg i32 %i.aj to i64              ; 2 uses
  store i64 %i.al, ptr %3, align 8, !tbaa !94
  %i.am = load i64, ptr %i.f, align 8, !tbaa !35
  %i.an = add i64 %i.am, %i.al
  store i64 %i.an, ptr %i.f, align 8, !tbaa !35
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.a, align 8, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %.thread, %bb.m, %bb.e, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.e ], [ false, %bb.m ], [ false, %bb.a ], [ false, %bb.f ], [ true, %.thread ], [ true, %bb.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9QuickOpen8ReadNextEv(ptr noundef nonnull align 8 dereferenceable(2673) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.RawRead, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN7RawReadC1EP4File(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef null)
  %i.a = invoke noundef zeroext i1 @_ZN9QuickOpen7ReadRawER7RawRead(ptr noundef nonnull align 8 dereferenceable(2673) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.c = invoke noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.d = invoke noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.g unwind label %bb.j       ; 6 uses

bb.g:                                             ; preds = %bb.f
  %i.f = icmp ult i64 %i.e, 2097153
  br i1 %i.f, label %bb.k, label %bb.q

bb.h:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.o, %.noexc, %bb.m, %_ZN5ArrayIhE5AllocEm.exit, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !97   ; 2 uses
  %i.m = icmp ugt i64 %i.e, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  store i64 %i.e, ptr %i.n, align 8, !tbaa !95
  br i1 %i.m, label %bb.l, label %._ZN5ArrayIhE5AllocEm.exit_crit_edge

._ZN5ArrayIhE5AllocEm.exit_crit_edge:             ; preds = %bb.k
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !30
  br label %_ZN5ArrayIhE5AllocEm.exit

bb.l:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.p = load i64, ptr %i.o, align 8, !tbaa !98   ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  %i.q = icmp ugt i64 %i.e, %i.p
  %or.cond.i.i = and i1 %.not.i.i, %i.q
  br i1 %or.cond.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.1, i64 noundef %i.p)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.m
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc16 unwind label %bb.j

.noexc16:                                         ; preds = %.noexc
  %.pre.i.i = load i64, ptr %i.k, align 8, !tbaa !97
  %.pre10.i.i = load i64, ptr %i.n, align 8, !tbaa !95
  br label %bb.n

bb.n:                                             ; preds = %.noexc16, %bb.l
  %i.r = phi i64 [ %.pre10.i.i, %.noexc16 ], [ %i.e, %bb.l ]
  %i.s = phi i64 [ %.pre.i.i, %.noexc16 ], [ %i.l, %bb.l ] ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add i64 %i.s, 32
  %i.v = add i64 %i.u, %i.t
  %..i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 %i.v) ; 2 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.x = call ptr @realloc(ptr noundef %i.w, i64 noundef %..i.i) #21 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.o, label %_ZN5ArrayIhE3AddEm.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIhE3AddEm.exit.i unwind label %bb.j

_ZN5ArrayIhE3AddEm.exit.i:                        ; preds = %bb.o, %bb.n
  store ptr %i.x, ptr %i.j, align 8, !tbaa !30
  store i64 %..i.i, ptr %i.k, align 8, !tbaa !97
  br label %_ZN5ArrayIhE5AllocEm.exit

_ZN5ArrayIhE5AllocEm.exit:                        ; preds = %._ZN5ArrayIhE5AllocEm.exit_crit_edge, %_ZN5ArrayIhE3AddEm.exit.i
  %i.z = phi ptr [ %.pre, %._ZN5ArrayIhE5AllocEm.exit_crit_edge ], [ %i.x, %_ZN5ArrayIhE3AddEm.exit.i ]
  %i.aa = invoke noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.z, i64 noundef %i.e)
          to label %bb.p unwind label %bb.j       ; 0 uses

bb.p:                                             ; preds = %_ZN5ArrayIhE5AllocEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = sub i64 %i.ac, %i.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2656
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !91
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.b
  %.111 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ true, %bb.p ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.af, null
  br i1 %.not.i.i18, label %_ZN7RawReadD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.af) #17
  br label %_ZN7RawReadD2Ev.exit

_ZN7RawReadD2Ev.exit:                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i1 %.111

bb.s:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.g, %bb.h ], [ %i.i, %bb.j ], [ %i.h, %bb.i ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i19, label %_ZN7RawReadD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ag) #17
  br label %_ZN7RawReadD2Ev.exit20

_ZN7RawReadD2Ev.exit20:                           ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare noundef i32 @_ZN4File4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(8256), ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9QuickOpen4SeekEli(ptr noundef nonnull align 8 dereferenceable(2673) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 0                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %1, %i.f
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %1, %i.i
  %or.cond15 = select i1 %or.cond, i1 %i.j, i1 false
  br i1 %or.cond15, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.l = load i64, ptr %i.k, align 8, !tbaa !78
  tail call void @_ZN9QuickOpen4LoadEm(ptr noundef nonnull align 8 dereferenceable(2673) %0, i64 noundef %i.l)
  br label %.thread17

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.thread17, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %2, 1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %i.f, %1
  br label %.thread17

.thread17:                                        ; preds = %.thread, %bb.c, %bb.e
  %storemerge = phi i64 [ %i.n, %bb.e ], [ %1, %bb.c ], [ %1, %.thread ]
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2672
  store i8 1, ptr %i.o, align 8, !tbaa !36
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  store i8 1, ptr %i.p, align 8, !tbaa !36
  %i.q = icmp eq i32 %2, 2
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256) %i.r, i64 noundef %1, i32 noundef 2)
  %i.s = load ptr, ptr %0, align 8, !tbaa !8
  %i.t = tail call noundef i64 @_ZN4File4TellEv(ptr noundef nonnull align 8 dereferenceable(8256) %i.s)
  store i64 %i.t, ptr %i.e, align 8, !tbaa !35
  store i8 0, ptr %i.p, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %.thread17, %bb.f, %bb.g, %bb.a
  ret i1 %i.c
}

declare noundef i64 @_ZN4File4TellEv(ptr noundef nonnull align 8 dereferenceable(8256)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN9QuickOpen4TellEPl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2673) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  store i64 %i.e, ptr %1, align 8, !tbaa !94
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

declare void @_ZN9CryptData12DecryptBlockEPhm(ptr noundef nonnull align 8 dereferenceable(2516), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9QuickOpen7ReadRawER7RawRead(ptr noundef nonnull align 8 dereferenceable(2673) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2616 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 4 uses
  %i.c = add i64 %i.b, -65281
  %i.d = icmp ult i64 %i.c, 256
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93
  %i.g = sub i64 %i.f, %i.b                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.j, i64 %i.g, i1 false)
  store i64 0, ptr %i.a, align 8, !tbaa !99
  store i64 %i.g, ptr %i.e, align 8, !tbaa !93
  %i.k = tail call noundef i32 @_ZN9QuickOpen10ReadBufferEv(ptr noundef nonnull align 8 dereferenceable(2673) %0) ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.m = add i64 %i.l, 7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  tail call void @_ZN7RawRead4ReadEPhm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.s, i64 noundef 7)
  %i.t = load i64, ptr %i.a, align 8, !tbaa !99
  %i.u = add i64 %i.t, 7
  store i64 %i.u, ptr %i.a, align 8, !tbaa !99
  %i.v = tail call noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.w = tail call noundef i32 @_ZN7RawRead8GetVSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 4) ; 2 uses
  %i.x = tail call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.y = zext i32 %i.w to i64
  %.neg = add nuw nsw i64 %i.y, 4294967293
  %i.z = add i64 %.neg, %i.x
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = icmp eq i32 %i.w, 0
  %or.cond = or i1 %i.ac, %i.ab
  %i.ad = icmp eq i64 %i.x, 0
  %or.cond3 = or i1 %i.ad, %or.cond
  br i1 %or.cond3, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i8 0, ptr %i.ae, align 8, !tbaa !23
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.033 = phi i32 [ %i.ap, %bb.f ], [ %i.aa, %.preheader ] ; 2 uses
  %i.af = load i64, ptr %i.n, align 8, !tbaa !93
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = zext nneg i32 %.033 to i64
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ai) ; 3 uses
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ag
  tail call void @_ZN7RawRead4ReadEPhm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.al, i64 noundef %i.aj)
  %i.am = load i64, ptr %i.a, align 8, !tbaa !99
  %i.an = add i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.a, align 8, !tbaa !99
  %i.ao = trunc nuw nsw i64 %i.aj to i32
  %i.ap = sub nsw i32 %.033, %i.ao                ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.ar = tail call noundef i32 @_ZN9QuickOpen10ReadBufferEv(ptr noundef nonnull align 8 dereferenceable(2673) %0)
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.at = tail call noundef i32 @_ZN7RawRead8GetCRC50Ev(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.au = icmp eq i32 %i.v, %i.at
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.c
  %.3 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ %i.au, %._crit_edge ], [ false, %bb.f ]
  ret i1 %.3
}

declare void @_ZN7RawRead4ReadEPhm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN7RawRead8GetVSizeEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN7RawRead8GetCRC50Ev(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN7RawReadC1EP4File(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #1

declare noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #10

declare void @_Z9cleandataPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(1) }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS9QuickOpen", !10, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !16, i64 48, !12, i64 2568, !15, i64 2576, !15, i64 2584, !15, i64 2592, !15, i64 2600, !15, i64 2608, !15, i64 2616, !19, i64 2624, !15, i64 2656, !15, i64 2664, !12, i64 2672}
!10 = !{!"p1 _ZTS7Archive", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"bool", !6, i64 0}
!13 = !{!"p1 _ZTS13QuickOpenItem", !11, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTS9CryptData", !6, i64 0, !5, i64 320, !6, i64 328, !5, i64 936, !17, i64 940, !18, i64 944, !6, i64 1208, !6, i64 2232, !6, i64 2488, !6, i64 2504, !6, i64 2508}
!17 = !{!"_ZTS12CRYPT_METHOD", !6, i64 0}
!18 = !{!"_ZTS8Rijndael", !12, i64 0, !5, i64 4, !6, i64 8, !6, i64 24}
!19 = !{!"_ZTS5ArrayIhE", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!20 = !{!9, !12, i64 8}
!21 = !{!9, !14, i64 32}
!22 = !{!9, !15, i64 40}
!23 = !{!9, !12, i64 2568}
!24 = !{!25, !13, i64 24}
!25 = !{!"_ZTS13QuickOpenItem", !14, i64 0, !15, i64 8, !15, i64 16, !13, i64 24}
!26 = !{!25, !14, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!9, !13, i64 16}
!30 = !{!19, !14, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !7, i64 0}
!35 = !{!9, !15, i64 2664}
!36 = !{!9, !12, i64 2672}
!37 = !{!38, !12, i64 13768}
!38 = !{!"_ZTS7Archive", !39, i64 0, !16, i64 8256, !43, i64 10776, !12, i64 11048, !53, i64 11056, !54, i64 11064, !5, i64 11072, !55, i64 11076, !12, i64 11080, !9, i64 11088, !12, i64 13768, !56, i64 13772, !57, i64 13792, !58, i64 13808, !63, i64 13920, !64, i64 13976, !69, i64 31160, !70, i64 31192, !64, i64 31224, !71, i64 48408, !72, i64 48436, !73, i64 48476, !74, i64 48516, !15, i64 48824, !15, i64 48832, !75, i64 48840, !12, i64 48844, !12, i64 48845, !12, i64 48846, !12, i64 48847, !12, i64 48848, !12, i64 48849, !12, i64 48850, !12, i64 48851, !12, i64 48852, !15, i64 48856, !12, i64 48864, !12, i64 48865, !6, i64 48866, !12, i64 48882, !5, i64 48884, !15, i64 48888, !15, i64 48896, !15, i64 48904, !12, i64 48912, !6, i64 48916}
!39 = !{!"_ZTS4File", !15, i64 8, !12, i64 16, !40, i64 20, !12, i64 24, !12, i64 25, !41, i64 28, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !15, i64 40, !12, i64 48, !6, i64 52, !42, i64 8244, !14, i64 8248}
!40 = !{!"_ZTS15FILE_HANDLETYPE", !6, i64 0}
!41 = !{!"_ZTS20FILE_READ_ERROR_MODE", !6, i64 0}
!42 = !{!"_ZTS14FILE_ERRORTYPE", !6, i64 0}
!43 = !{!"_ZTS11ComprDataIO", !12, i64 0, !15, i64 8, !14, i64 16, !12, i64 24, !15, i64 32, !14, i64 40, !15, i64 48, !14, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !12, i64 81, !12, i64 82, !12, i64 83, !44, i64 88, !44, i64 96, !45, i64 104, !46, i64 112, !47, i64 120, !48, i64 128, !48, i64 136, !5, i64 144, !49, i64 148, !12, i64 152, !12, i64 153, !12, i64 154, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !50, i64 216, !50, i64 232, !50, i64 248, !12, i64 264, !12, i64 265}
!44 = !{!"p1 _ZTS4File", !11, i64 0}
!45 = !{!"p1 _ZTS6CmdAdd", !11, i64 0}
!46 = !{!"p1 _ZTS10FileHeader", !11, i64 0}
!47 = !{!"p1 long", !11, i64 0}
!48 = !{!"p1 _ZTS9CryptData", !11, i64 0}
!49 = !{!"wchar_t", !6, i64 0}
!50 = !{!"_ZTS8DataHash", !51, i64 0, !5, i64 4, !52, i64 8}
!51 = !{!"_ZTS9HASH_TYPE", !6, i64 0}
!52 = !{!"p1 _ZTS14blake2sp_state", !11, i64 0}
!53 = !{!"p1 _ZTS11CommandData", !11, i64 0}
!54 = !{!"_ZTS7RarTime", !15, i64 0}
!55 = !{!"_ZTS11HEADER_TYPE", !6, i64 0}
!56 = !{!"_ZTS9BaseBlock", !5, i64 0, !55, i64 4, !5, i64 8, !5, i64 12, !12, i64 16}
!57 = !{!"_ZTS10MarkHeader", !6, i64 0, !5, i64 8}
!58 = !{!"_ZTS10MainHeader", !56, i64 0, !59, i64 20, !5, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !60, i64 72, !54, i64 104}
!59 = !{!"short", !6, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !61, i64 0, !15, i64 8, !6, i64 16}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !62, i64 0}
!62 = !{!"p1 wchar_t", !11, i64 0}
!63 = !{!"_ZTS11CryptHeader", !56, i64 0, !12, i64 20, !5, i64 24, !6, i64 28, !6, i64 44}
!64 = !{!"_ZTS10FileHeader", !65, i64 0, !6, i64 24, !5, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !19, i64 8232, !54, i64 8264, !54, i64 8272, !54, i64 8280, !15, i64 8288, !15, i64 8296, !15, i64 8304, !66, i64 8312, !5, i64 8348, !12, i64 8352, !12, i64 8353, !12, i64 8354, !12, i64 8355, !17, i64 8356, !12, i64 8360, !6, i64 8361, !6, i64 8377, !12, i64 8393, !6, i64 8394, !12, i64 8402, !6, i64 8403, !5, i64 8436, !12, i64 8440, !12, i64 8441, !12, i64 8442, !12, i64 8443, !15, i64 8448, !12, i64 8456, !12, i64 8457, !12, i64 8458, !67, i64 8460, !68, i64 8464, !6, i64 8468, !12, i64 16660, !12, i64 16661, !12, i64 16662, !12, i64 16663, !6, i64 16664, !6, i64 16920, !5, i64 17176, !5, i64 17180}
!65 = !{!"_ZTS11BlockHeader", !56, i64 0, !5, i64 20}
!66 = !{!"_ZTS9HashValue", !51, i64 0, !6, i64 4}
!67 = !{!"_ZTS16HOST_SYSTEM_TYPE", !6, i64 0}
!68 = !{!"_ZTS20FILE_SYSTEM_REDIRECT", !6, i64 0}
!69 = !{!"_ZTS12EndArcHeader", !56, i64 0, !5, i64 20, !5, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31}
!70 = !{!"_ZTS14SubBlockHeader", !65, i64 0, !59, i64 24, !6, i64 26}
!71 = !{!"_ZTS13CommentHeader", !56, i64 0, !59, i64 20, !6, i64 22, !6, i64 23, !59, i64 24}
!72 = !{!"_ZTS13ProtectHeader", !65, i64 0, !6, i64 24, !59, i64 26, !5, i64 28, !6, i64 32}
!73 = !{!"_ZTS8EAHeader", !70, i64 0, !5, i64 28, !6, i64 32, !6, i64 33, !5, i64 36}
!74 = !{!"_ZTS12StreamHeader", !70, i64 0, !5, i64 28, !6, i64 32, !6, i64 33, !5, i64 36, !59, i64 40, !6, i64 42}
!75 = !{!"_ZTS9RARFORMAT", !6, i64 0}
!76 = !{!38, !55, i64 11076}
!77 = !{!38, !15, i64 48824}
!78 = !{!9, !15, i64 2576}
!79 = !{!9, !15, i64 2584}
!80 = !{!38, !15, i64 39520}
!81 = !{!9, !15, i64 2592}
!82 = !{!38, !12, i64 39579}
!83 = !{!38, !53, i64 11056}
!84 = !{!85, !12, i64 24}
!85 = !{!"_ZTS11SecPassword", !86, i64 0, !12, i64 24}
!86 = !{!"_ZTSSt6vectorIwSaIwEE", !87, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseIwSaIwEE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIwSaIwEE12_Vector_implE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIwSaIwEE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!90 = !{!38, !5, i64 39660}
!91 = !{!9, !15, i64 2656}
!92 = !{!9, !15, i64 2600}
!93 = !{!9, !15, i64 2608}
!94 = !{!15, !15, i64 0}
!95 = !{!19, !15, i64 8}
!96 = distinct !{!96, !28}
!97 = !{!19, !15, i64 16}
!98 = !{!19, !15, i64 24}
!99 = !{!9, !15, i64 2616}
!100 = distinct !{!100, !28}
end_hunk_0
