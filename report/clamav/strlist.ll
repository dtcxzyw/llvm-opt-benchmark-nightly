Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/strlist?download=true
inline.NumInlined: 36
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ErrorHandler = type <{ i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@ErrHandler = external global %class.ErrorHandler, align 4
@.str.1 = private unnamed_addr constant [44 x i32] [i32 77, i32 97, i32 120, i32 105, i32 109, i32 117, i32 109, i32 32, i32 97, i32 108, i32 108, i32 111, i32 119, i32 101, i32 100, i32 32, i32 97, i32 114, i32 114, i32 97, i32 121, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 40, i32 37, i32 117, i32 41, i32 32, i32 105, i32 115, i32 32, i32 101, i32 120, i32 99, i32 101, i32 101, i32 100, i32 101, i32 100, i32 0], align 4

@_ZN10StringListC1Ev = unnamed_addr alias void (ptr), ptr @_ZN10StringListC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN10StringListC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((0, 48), (176, 184)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN10StringList5ResetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) initializes((8, 24), (32, 48), (176, 184)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5ArrayIwE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #15
  store ptr null, ptr %0, align 8, !tbaa !15
  br label %_ZN5ArrayIwE5ResetEv.exit

_ZN5ArrayIwE5ResetEv.exit:                        ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.e, align 8, !tbaa !13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN10StringList6RewindEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((32, 40)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10StringList10AddStringAEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 3 uses
  %.not.i = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %.not.i)
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 32)
  %i.b = shl i64 %..i.i, 2
  %malloc.i = tail call ptr @malloc(i64 %i.b)     ; 5 uses
  %i.c = icmp eq ptr %malloc.i, null
  br i1 %i.c, label %bb.b, label %_ZN5ArrayIwEC2Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  unreachable

_ZN5ArrayIwEC2Em.exit:                            ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %1, ptr noundef nonnull %malloc.i, i64 noundef %i.a)
          to label %bb.c unwind label %_ZN5ArrayIwED2Ev.exit6 ; 0 uses

bb.c:                                             ; preds = %_ZN5ArrayIwEC2Em.exit
  invoke void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %malloc.i)
          to label %_ZN5ArrayIwED2Ev.exit unwind label %_ZN5ArrayIwED2Ev.exit6

_ZN5ArrayIwED2Ev.exit:                            ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %malloc.i) #15
  ret void

_ZN5ArrayIwED2Ev.exit6:                           ; preds = %bb.c, %_ZN5ArrayIwEC2Em.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %malloc.i) #15
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN10StringList9AddStringEPKw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.a, ptr @.str, ptr %1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = tail call i64 @wcslen(ptr noundef nonnull %spec.store.select) #16
  %i.e = add i64 %i.c, 1
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  store i64 %i.f, ptr %i.b, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._ZN5ArrayIwE3AddEm.exit_crit_edge

._ZN5ArrayIwE3AddEm.exit_crit_edge:               ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZN5ArrayIwE3AddEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %.not.i = icmp ne i64 %i.k, 0
  %i.l = icmp ugt i64 %i.f, %i.k
  %or.cond.i = and i1 %.not.i, %i.l
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.1, i64 noundef %i.k)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !19
  %.pre10.i = load i64, ptr %i.b, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ %.pre10.i, %bb.c ], [ %i.f, %bb.b ]
  %i.n = phi i64 [ %.pre.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = add i64 %i.n, 32
  %i.q = add i64 %i.p, %i.o
  %..i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.q) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !15
  %i.s = shl i64 %..i, 2
  %i.t = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.s) #17 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.t, ptr %0, align 8, !tbaa !15
  store i64 %..i, ptr %i.g, align 8, !tbaa !19
  br label %_ZN5ArrayIwE3AddEm.exit

_ZN5ArrayIwE3AddEm.exit:                          ; preds = %._ZN5ArrayIwE3AddEm.exit_crit_edge, %bb.f
  %i.v = phi ptr [ %.pre, %._ZN5ArrayIwE3AddEm.exit_crit_edge ], [ %i.t, %bb.f ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.c
  %i.x = tail call ptr @wcscpy(ptr noundef nonnull %i.w, ptr noundef nonnull %spec.store.select) #15 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10StringList10GetStringAEPcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN5ArrayIwED2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i.i = tail call i64 @llvm.umax.i64(i64 %2, i64 32)
  %i.a = shl i64 %..i.i, 2
  %malloc.i = tail call ptr @malloc(i64 %i.a)     ; 5 uses
  %i.b = icmp eq ptr %malloc.i, null
  br i1 %i.b, label %_ZN5ArrayIwEC2Em.exit, label %_ZN5ArrayIwEC2Em.exit.thread28

_ZN5ArrayIwEC2Em.exit:                            ; preds = %bb.b
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %.not.i.i = icmp ult i64 %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %_ZN5ArrayIwED2Ev.exit8

_ZN5ArrayIwEC2Em.exit.thread28:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %.not.i.i29 = icmp ult i64 %i.h, %i.j
  br i1 %.not.i.i29, label %bb.c, label %_ZN10StringList9GetStringEPwm.exit.thread12

bb.c:                                             ; preds = %_ZN5ArrayIwEC2Em.exit.thread28, %_ZN5ArrayIwEC2Em.exit
  %i.k = phi i64 [ %i.h, %_ZN5ArrayIwEC2Em.exit.thread28 ], [ %i.d, %_ZN5ArrayIwEC2Em.exit ] ; 2 uses
  %i.l = phi ptr [ %i.g, %_ZN5ArrayIwEC2Em.exit.thread28 ], [ %i.c, %_ZN5ArrayIwEC2Em.exit ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k ; 2 uses
  %i.o = tail call i64 @wcslen(ptr noundef nonnull %i.n) #16
  %i.p = add nuw i64 %i.k, 1
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr %i.l, align 8, !tbaa !14
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %malloc.i, ptr noundef nonnull %i.n, i64 noundef %2)
          to label %bb.d unwind label %_ZN5ArrayIwED2Ev.exit

_ZN5ArrayIwED2Ev.exit:                            ; preds = %bb.c, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %malloc.i) #15
  resume { ptr, i32 } %i.r

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef nonnull %malloc.i, ptr noundef %1, i64 noundef %2)
          to label %_ZN10StringList9GetStringEPwm.exit.thread12 unwind label %_ZN5ArrayIwED2Ev.exit ; 0 uses

_ZN10StringList9GetStringEPwm.exit.thread12:      ; preds = %_ZN5ArrayIwEC2Em.exit.thread28, %bb.d
  %.not.i.i30 = phi i1 [ true, %bb.d ], [ false, %_ZN5ArrayIwEC2Em.exit.thread28 ]
  tail call void @free(ptr noundef nonnull %malloc.i) #15
  br label %_ZN5ArrayIwED2Ev.exit8

_ZN5ArrayIwED2Ev.exit8:                           ; preds = %bb.a, %_ZN5ArrayIwEC2Em.exit, %_ZN10StringList9GetStringEPwm.exit.thread12
  %.not.i.i20 = phi i1 [ false, %_ZN5ArrayIwEC2Em.exit ], [ %.not.i.i30, %_ZN10StringList9GetStringEPwm.exit.thread12 ], [ false, %bb.a ]
  ret i1 %.not.i.i20
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %.not.i = icmp ult i64 %i.b, %i.d               ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN10StringList9GetStringEPPw.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = tail call i64 @wcslen(ptr noundef nonnull %i.f) #16
  %i.h = add nuw i64 %i.b, 1
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr %i.a, align 8, !tbaa !14
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef %1, ptr noundef nonnull %i.f, i64 noundef %2)
  br label %_ZN10StringList9GetStringEPPw.exit

_ZN10StringList9GetStringEPPw.exit:               ; preds = %bb.a, %bb.b
  ret i1 %.not.i
}

declare noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN10StringList9GetStringEPPw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %.not = icmp ult i64 %i.b, %i.d                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.d, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = tail call i64 @wcslen(ptr noundef nonnull %i.f) #16
  %i.h = add nuw i64 %i.b, 1
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr %i.a, align 8, !tbaa !14
  %.not9 = icmp eq ptr %1, null
  br i1 %.not9, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ]
  store ptr %.sink, ptr %1, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  ret i1 %.not
}

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10StringList9GetStringEPwmi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = icmp ult i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %_ZN10StringList12SavePositionEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store i64 %i.e, ptr %i.g, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !13
  br label %_ZN10StringList12SavePositionEv.exit

_ZN10StringList12SavePositionEv.exit:             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !14
  %i.l = icmp slt i32 %3, 0
  br i1 %i.l, label %_ZN10StringList9GetStringEPwm.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10StringList12SavePositionEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN10StringList9GetStringEPwm.exit
  %.045 = phi i32 [ %3, %.lr.ph ], [ %i.p, %_ZN10StringList9GetStringEPwm.exit ] ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !14   ; 3 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !17
  %.not.i.i = icmp ult i64 %i.n, %i.o             ; 2 uses
  br i1 %.not.i.i, label %_ZN10StringList9GetStringEPwm.exit, label %_ZN10StringList9GetStringEPwm.exit.thread.loopexit

_ZN10StringList9GetStringEPwm.exit:               ; preds = %bb.c
  %i.p = add nsw i32 %.045, -1
  %i.q = load ptr, ptr %0, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %i.s = tail call i64 @wcslen(ptr noundef nonnull %i.r) #16
  %i.t = add nuw i64 %i.n, 1
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %i.k, align 8, !tbaa !14
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef %1, ptr noundef nonnull %i.r, i64 noundef %2)
  %i.v = icmp slt i32 %.045, 1
  br i1 %i.v, label %_ZN10StringList9GetStringEPwm.exit.thread.loopexit, label %bb.c

_ZN10StringList9GetStringEPwm.exit.thread.loopexit: ; preds = %bb.c, %_ZN10StringList9GetStringEPwm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %_ZN10StringList9GetStringEPwm.exit.thread

_ZN10StringList9GetStringEPwm.exit.thread:        ; preds = %_ZN10StringList9GetStringEPwm.exit.thread.loopexit, %_ZN10StringList12SavePositionEv.exit
  %i.w = phi i64 [ %i.j, %_ZN10StringList12SavePositionEv.exit ], [ %.pre, %_ZN10StringList9GetStringEPwm.exit.thread.loopexit ] ; 2 uses
  %.lcssa = phi i1 [ true, %_ZN10StringList12SavePositionEv.exit ], [ %.not.i.i, %_ZN10StringList9GetStringEPwm.exit.thread.loopexit ]
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZN10StringList15RestorePositionEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN10StringList9GetStringEPwm.exit.thread
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.a, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !14
  br label %_ZN10StringList15RestorePositionEv.exit

_ZN10StringList15RestorePositionEv.exit:          ; preds = %_ZN10StringList9GetStringEPwm.exit.thread, %bb.d
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10StringList12SavePositionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = icmp ult i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store i64 %i.e, ptr %i.g, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10StringList15RestorePositionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %i.g, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN10StringList9GetStringEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %.not.i = icmp ult i64 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %_ZN10StringList9GetStringEPPw.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = tail call i64 @wcslen(ptr noundef nonnull %i.f) #16
  %i.h = add nuw i64 %i.b, 1
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr %i.a, align 8, !tbaa !14
  br label %_ZN10StringList9GetStringEPPw.exit

_ZN10StringList9GetStringEPPw.exit:               ; preds = %bb.a, %bb.b
  %.sink.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.sink.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10StringList6SearchEPKwb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = icmp ult i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %_ZN10StringList12SavePositionEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store i64 %i.e, ptr %i.g, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !13
  br label %_ZN10StringList12SavePositionEv.exit

_ZN10StringList12SavePositionEv.exit:             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store i64 0, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not11 = icmp eq ptr %1, null
  br i1 %.not11, label %_ZN10StringList12SavePositionEv.exit.split.us, label %_ZN10StringList12SavePositionEv.exit.split

_ZN10StringList12SavePositionEv.exit.split.us:    ; preds = %_ZN10StringList12SavePositionEv.exit
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  %.not.i.us.not = icmp eq i64 %i.m, 0
  br i1 %.not.i.us.not, label %_ZN10StringList9GetStringEPPw.exit, label %bb.c

bb.c:                                             ; preds = %_ZN10StringList12SavePositionEv.exit.split.us
  %i.n = load ptr, ptr %0, align 8, !tbaa !15
  %i.o = tail call i64 @wcslen(ptr noundef nonnull %i.n) #16
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.k, align 8, !tbaa !14
  br label %_ZN10StringList9GetStringEPPw.exit

_ZN10StringList12SavePositionEv.exit.split:       ; preds = %_ZN10StringList12SavePositionEv.exit
  br i1 %2, label %_ZN10StringList12SavePositionEv.exit.split.split.us, label %_ZN10StringList12SavePositionEv.exit.split.split

_ZN10StringList12SavePositionEv.exit.split.split.us: ; preds = %_ZN10StringList12SavePositionEv.exit.split
  %i.q = load i64, ptr %i.l, align 8, !tbaa !17
  %i.r = load ptr, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN10StringList12SavePositionEv.exit.split.split.us
  %i.s = phi i64 [ %i.w, %bb.e ], [ 0, %_ZN10StringList12SavePositionEv.exit.split.split.us ] ; 3 uses
  %.not.i.us12 = icmp ult i64 %i.s, %i.q          ; 3 uses
  br i1 %.not.i.us12, label %bb.e, label %_ZN10StringList9GetStringEPPw.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = tail call i64 @wcslen(ptr noundef nonnull %i.t) #16
  %i.v = add nuw i64 %i.s, 1
  %i.w = add i64 %i.v, %i.u                       ; 2 uses
  store i64 %i.w, ptr %i.k, align 8, !tbaa !14
  %i.x = tail call i32 @wcscmp(ptr noundef nonnull %1, ptr noundef nonnull %i.t) #16
  %.not.us = icmp eq i32 %i.x, 0
  br i1 %.not.us, label %_ZN10StringList9GetStringEPPw.exit, label %bb.d, !llvm.loop !22

_ZN10StringList12SavePositionEv.exit.split.split: ; preds = %_ZN10StringList12SavePositionEv.exit.split, %bb.f
  %i.y = load i64, ptr %i.k, align 8, !tbaa !14   ; 3 uses
  %i.z = load i64, ptr %i.l, align 8, !tbaa !17
  %.not.i = icmp ult i64 %i.y, %i.z               ; 2 uses
  br i1 %.not.i, label %bb.f, label %_ZN10StringList9GetStringEPPw.exit.loopexit15

bb.f:                                             ; preds = %_ZN10StringList12SavePositionEv.exit.split.split
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  %i.ac = tail call i64 @wcslen(ptr noundef nonnull %i.ab) #16
  %i.ad = add nuw i64 %i.y, 1
  %i.ae = add i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.k, align 8, !tbaa !14
  %i.af = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %1, ptr noundef nonnull %i.ab)
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %_ZN10StringList9GetStringEPPw.exit.loopexit15, label %_ZN10StringList12SavePositionEv.exit.split.split, !llvm.loop !22

_ZN10StringList9GetStringEPPw.exit.loopexit15:    ; preds = %bb.f, %_ZN10StringList12SavePositionEv.exit.split.split
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %_ZN10StringList9GetStringEPPw.exit

_ZN10StringList9GetStringEPPw.exit:               ; preds = %bb.e, %bb.d, %_ZN10StringList9GetStringEPPw.exit.loopexit15, %_ZN10StringList12SavePositionEv.exit.split.us, %bb.c
  %i.ag = phi i64 [ %.pre, %_ZN10StringList9GetStringEPPw.exit.loopexit15 ], [ %i.j, %bb.c ], [ %i.j, %_ZN10StringList12SavePositionEv.exit.split.us ], [ %i.j, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %.us-phi = phi i1 [ %.not.i, %_ZN10StringList9GetStringEPPw.exit.loopexit15 ], [ true, %bb.c ], [ false, %_ZN10StringList12SavePositionEv.exit.split.us ], [ %.not.i.us12, %bb.d ], [ %.not.i.us12, %bb.e ]
  %.not.i8 = icmp eq i64 %i.ag, 0
  br i1 %.not.i8, label %_ZN10StringList15RestorePositionEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN10StringList9GetStringEPPw.exit
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !14
  br label %_ZN10StringList15RestorePositionEv.exit

_ZN10StringList15RestorePositionEv.exit:          ; preds = %_ZN10StringList9GetStringEPPw.exit, %bb.g
  ret i1 %.us-phi
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef i32 @_Z8wcsicompPKwS0_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(1) }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 wchar_t", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTS5ArrayIwE", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!12 = !{!"_ZTS10StringList", !11, i64 0, !10, i64 32, !10, i64 40, !4, i64 48, !10, i64 176}
!13 = !{!12, !10, i64 176}
!14 = !{!12, !10, i64 32}
!15 = !{!11, !9, i64 0}
!16 = !{!12, !10, i64 40}
!17 = !{!11, !10, i64 8}
!18 = !{!10, !10, i64 0}
!19 = !{!11, !10, i64 16}
!20 = !{!11, !10, i64 24}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
