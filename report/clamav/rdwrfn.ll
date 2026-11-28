Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rdwrfn?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ErrorHandler = type <{ i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>

$_ZN9CryptDataD2Ev = comdat any

$__clang_call_terminate = comdat any

@ErrHandler = external global %class.ErrorHandler, align 4

@_ZN11ComprDataIOC1Ev = unnamed_addr alias void (ptr), ptr @_ZN11ComprDataIOC2Ev
@_ZN11ComprDataIOD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11ComprDataIOD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN11ComprDataIOC2Ev(ptr noundef nonnull align 8 dereferenceable(266) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @_ZN8DataHashC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  invoke void @_ZN8DataHashC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %1

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  invoke void @_ZN8DataHashC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(2520) ptr @_Znwm(i64 noundef 2520) #15
          to label %bb.d unwind label %bb.i       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9CryptDataC1Ev(ptr noundef nonnull align 8 dereferenceable(2516) %i.d)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.d, ptr %i.e, align 8, !tbaa !22
  %i.f = invoke noalias noundef nonnull dereferenceable(2520) ptr @_Znwm(i64 noundef 2520) #15
          to label %bb.f unwind label %bb.i       ; 3 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9CryptDataC1Ev(ptr noundef nonnull align 8 dereferenceable(2516) %i.f)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.f, ptr %i.g, align 8, !tbaa !23
  store i8 0, ptr %0, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 0, ptr %i.l, align 1, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 0, ptr %i.m, align 2, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 0, ptr %i.q, align 1, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.u, align 4, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  ret void

1:                                                ; preds = %bb.a
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi ptr [ %i.f, %bb.k ], [ %i.d, %bb.j ]
  %.pn.ph = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.y, %bb.j ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.x, %bb.i ], [ %.pn.ph, %bb.l ]
  tail call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.w, %bb.h ]
  tail call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %1
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %2, %1 ]
  tail call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #17
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN8DataHashC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN9CryptDataC1Ev(ptr noundef nonnull align 8 dereferenceable(2516)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11ComprDataIO4InitEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(266) initializes((0, 1), (24, 25), (48, 84), (88, 128), (144, 155), (160, 216), (264, 266)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 0, ptr %i.e, align 1, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 0, ptr %i.f, align 2, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 0, ptr %i.j, align 1, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.n, align 4, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN11ComprDataIOD2Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %i.b) #17
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %i.e) #17
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.i) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @__clang_call_terminate(ptr %i.g) #18
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
end_hunk_0
