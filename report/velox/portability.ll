inline.NumInlined: 51
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

@_ZN5boost10filesystem12_GLOBAL__N_117posix_valid_charsE = internal constant [66 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 16
@_ZN5boost10filesystem12_GLOBAL__N_121windows_invalid_charsE = internal constant [39 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F<>:\22/\\|\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5boost10filesystem6nativeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %.not = icmp eq i8 %i.e, 32
  br i1 %.not, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %bb.b
  %i.f = tail call ptr @memchr(ptr noundef nonnull %i.d, i32 noundef 47, i64 noundef %i.b) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %1 = ptrtoint ptr %i.f to i64
  %2 = ptrtoint ptr %i.d to i64
  %3 = sub i64 %1, %2
  %i.g = icmp eq i64 %3, -1
  %4 = select i1 %.not.i, i1 true, i1 %i.g
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.b, %.lr.ph.i
  %.0710.i = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0710.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = sext i8 %i.f to i32
  %i.h = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN5boost10filesystem12_GLOBAL__N_117posix_valid_charsE, i32 noundef %i.g, i64 noundef 65) #5
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.i = add nuw i64 %.0710.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, !llvm.loop !15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.b
  %.0.i = phi i64 [ -1, %bb.b ], [ %.0710.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ]
  %i.j = icmp eq i64 %.0.i, -1
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm.exit, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm.exit ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %.not = icmp eq i8 %i.e, 32
  br i1 %.not, label %bb.f, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.b, %bb.c
  %.01117.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01117.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = sext i8 %i.g to i32
  %i.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN5boost10filesystem12_GLOBAL__N_121windows_invalid_charsE, i32 noundef %i.h, i64 noundef 39) #5
  %.not13.not.i = icmp eq ptr %i.i, null
  br i1 %.not13.not.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.j = add nuw i64 %.01117.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, !llvm.loop !17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.k = icmp eq i64 %.01117.i, -1
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread, label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  switch i8 %i.n, label %.fold.split [
    i8 32, label %bb.f
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread
  %i.o = icmp eq i64 %i.b, 1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str)
  br label %bb.f

.fold.split:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread, %.fold.split, %bb.d, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit, %bb.b, %bb.a
  %i.q = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.d ], [ %i.p, %bb.e ], [ true, %.fold.split ]
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost10filesystem13portable_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  switch i64 %i.b, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread_crit_edge [
    i64 0, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
  ]

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %lhsc = load i8, ptr %i.c, align 1              ; 2 uses
  %i.d = icmp eq i8 %lhsc, 46
  br i1 %i.d, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = icmp ne i16 %i.f, 11822
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread_crit_edge
  %.ph = phi ptr [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8 ], [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread_crit_edge ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !14
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.j = phi i8 [ %.pr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split ], [ %lhsc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.k = phi ptr [ %.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split ], [ %i.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %.not.i = icmp eq i8 %i.j, 32
  br i1 %.not.i, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread, %bb.b
  %.01117.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.01117.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = sext i8 %i.m to i32
  %i.o = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN5boost10filesystem12_GLOBAL__N_121windows_invalid_charsE, i32 noundef %i.n, i64 noundef 39) #5
  %.not13.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not13.not.i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.i

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.p = add nuw i64 %.01117.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.b
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.q = icmp eq i64 %.01117.i.i, -1
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  switch i8 %i.t, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12 [
    i8 32, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i8 46, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i
  %i.u = icmp eq i64 %i.b, 1
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  %i.v = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str)
  br i1 %i.v, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12_crit_edge, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12_crit_edge: ; preds = %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre19 = load i64, ptr %i.a, align 8, !tbaa !7
  br label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12

_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12: ; preds = %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i
  %i.w = phi i64 [ %.pre19, %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12_crit_edge ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i ] ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12
  %i.y = phi i64 [ %i.w, %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12 ], [ 1, %bb.c ]
  %i.z = load ptr, ptr %0, align 8                ; 2 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i9

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i9:    ; preds = %bb.d, %.lr.ph.i.i
  %.0710.i.i = phi i64 [ %i.ae, %bb.d ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0710.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = sext i8 %i.ab to i32
  %i.ad = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN5boost10filesystem12_GLOBAL__N_117posix_valid_charsE, i32 noundef %i.ac, i64 noundef 65) #5
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i9
  %i.ae = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i10 = icmp eq i64 %i.ae, %i.y
  br i1 %exitcond.not.i.i10, label %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread13, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i9, !llvm.loop !15

_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i9
  %i.af = icmp eq i64 %.0710.i.i, -1
  br i1 %i.af, label %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread13, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread13: ; preds = %bb.d, %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ah = add i8 %i.ag, -47
  %spec.select = icmp ult i8 %i.ah, -2
  br label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.a, %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread13, %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8, %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = phi i1 [ false, %bb.a ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %spec.select, %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread13 ], [ false, %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread12 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.i ]
  ret i1 %i.ai
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost10filesystem23portable_directory_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %lhsc = load i8, ptr %i.c, align 1
  %i.d = icmp eq i8 %lhsc, 46
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !13
  %i.f = load i16, ptr %i.e, align 1
  %i.g = icmp ne i16 %i.f, 11822
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
  %i.j = tail call noundef zeroext i1 @_ZN5boost10filesystem13portable_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.j, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7
  %i.k = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.m = tail call ptr @memchr(ptr noundef %i.l, i32 noundef 46, i64 noundef %i.k) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  %1 = ptrtoint ptr %i.m to i64
  %2 = ptrtoint ptr %i.l to i64
  %3 = sub i64 %1, %2
  %i.n = icmp eq i64 %3, -1
  %4 = select i1 %.not.i, i1 true, i1 %i.n
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.o = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7 ], [ %4, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ true, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost10filesystem18portable_file_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost10filesystem13portable_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.a, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7    ; 6 uses
  switch i64 %i.c, label %._ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i_crit_edge [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
    i64 0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ]

._ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i_crit_edge: ; preds = %bb.b
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %lhsc = load i8, ptr %i.d, align 1
  %i.e = icmp eq i8 %lhsc, 46
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8: ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %bcmp.i7 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str, i64 %i.c)
  %i.f = icmp eq i32 %bcmp.i7, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %._ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i_crit_edge
  %i.g = phi ptr [ %.pre20, %._ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i_crit_edge ], [ %i.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8 ] ; 3 uses
  %i.h = tail call ptr @memchr(ptr noundef %i.g, i32 noundef 46, i64 noundef %i.c) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  %or.cond = or i1 %.not.i, %i.l
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.m = add nuw i64 %i.k, 1                      ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.c
  br i1 %i.n, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit13.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i10:     ; preds = %bb.c
  %i.o = sub nuw i64 %i.c, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.q = tail call ptr @memchr(ptr noundef nonnull %i.p, i32 noundef 46, i64 noundef %i.o) #5 ; 2 uses
  %.not.i11 = icmp eq ptr %i.q, null
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.j
  %i.t = icmp eq i64 %i.s, -1
  %or.cond19 = or i1 %.not.i11, %i.t
  br i1 %or.cond19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit13.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit13.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i10, %bb.c
  %i.u = add i64 %i.k, 5
  %i.v = icmp ugt i64 %i.u, %i.c
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i10, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit13.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
  %i.w = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.a ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i10 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit13.thread ], [ true, %bb.b ]
  ret i1 %i.w
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !12, i64 8}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!8, !10, i64 0}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
end_hunk_0
