Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/portability?download=true
inline.NumInlined: 51
inline.NumDeleted: 15
begin_hunk_0_@_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  switch i64 %i.b, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread_crit_edge [
    i64 0, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
  ]

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %lhsc = load i8, ptr %i.c, align 1              ; 2 uses
  %i.d = icmp eq i8 %lhsc, 46
  br i1 %i.d, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = icmp ne i16 %i.f, 11822
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread_crit_edge
  %.ph = phi ptr [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8 ], [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread_crit_edge ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !17
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.j = phi i8 [ %.pr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split ], [ %lhsc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.k = phi ptr [ %.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.threadthread-pre-split ], [ %i.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %.not.i = icmp eq i8 %i.j, 32
  br i1 %.not.i, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread, %bb.b
  %.01117.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.01117.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = sext i8 %i.m to i32
  %i.o = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN5boost10filesystem12_GLOBAL__N_121windows_invalid_charsE, i32 noundef %i.n, i64 noundef 39) #5
  %.not13.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not13.not.i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.i

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.p = add nuw i64 %.01117.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.b
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.q = icmp eq i64 %.01117.i.i, -1
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.thread.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17
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
  %.pre19 = load i64, ptr %i.a, align 8, !tbaa !15
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
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = sext i8 %i.ab to i32
  %i.ad = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN5boost10filesystem12_GLOBAL__N_117posix_valid_charsE, i32 noundef %i.ac, i64 noundef 65) #5
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i9
  %i.ae = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i10 = icmp eq i64 %i.ae, %i.y
  br i1 %exitcond.not.i.i10, label %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread13, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i9, !llvm.loop !0

_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i9
  %i.af = icmp eq i64 %.0710.i.i, -1
  br i1 %i.af, label %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread13, label %_ZN5boost10filesystem12windows_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread13: ; preds = %bb.d, %_ZN5boost10filesystem19portable_posix_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !17
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  %lhsc = load i8, ptr %i.c, align 1
  %i.d = icmp eq i8 %lhsc, 46
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = load i16, ptr %i.e, align 1
  %i.g = icmp ne i16 %i.f, 11822
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
  %i.j = tail call noundef zeroext i1 @_ZN5boost10filesystem13portable_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.j, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.m = tail call ptr @memchr(ptr noundef %i.l, i32 noundef 46, i64 noundef %i.k) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp eq i64 %i.p, -1
  %i.r = select i1 %.not.i, i1 true, i1 %i.q
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.s = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7 ], [ %i.r, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ true, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost10filesystem18portable_file_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost10filesystem13portable_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.a, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 6 uses
  switch i64 %i.c, label %._ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i_crit_edge [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
    i64 0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ]

._ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i_crit_edge: ; preds = %bb.b
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %lhsc = load i8, ptr %i.d, align 1
  %i.e = icmp eq i8 %lhsc, 46
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8: ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
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

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !6, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!14, !11, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_0
