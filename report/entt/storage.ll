Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/storage?download=true
inline.NumInlined: 52093
inline.NumDeleted: 9229
loop-unroll.NumCompletelyUnrolled: 226
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !121    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !122
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #30
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !118

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !122
  store i8 %i.t, ptr %i.s, align 1, !tbaa !122
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !122
  store i8 %i.x, ptr %i.w, align 1, !tbaa !122
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !122
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !122
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !122
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !121
  store i64 %.0, ptr %i.h, align 8, !tbaa !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_demangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal31CanonicalizeForStdLibVersioningENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !123  ; 13 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.a
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 7)
  %i.d = load ptr, ptr %1, align 8, !tbaa !121    ; 6 uses
  %bcmp = tail call i32 @bcmp(ptr %i.d, ptr nonnull @_ZZN7testing8internal31CanonicalizeForStdLibVersioningENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6prefix, i64 %spec.select.i.i)
  %.not.i = icmp ne i32 %bcmp, 0
  %i.e = icmp ult i64 %i.b, 8
  %or.cond33 = or i1 %i.e, %.not.i
  br i1 %or.cond33, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.f = add i64 %i.b, -7                         ; 2 uses
  %.not3339.i.i = icmp ult i64 %i.f, 2
  br i1 %.not3339.i.i, label %.lr.ph.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.i = ptrtoint ptr %i.g to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.c
  %.041.i.i = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.q, %bb.c ]
  %.02740.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.o, %bb.c ]
  %.reass.reass.i.reass.reass.i = add i64 %.041.i.i, -1
  %i.j = tail call ptr @memchr(ptr noundef nonnull %.02740.i.i, i32 noundef 58, i64 noundef %.reass.reass.i.reass.reass.i) #29 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.j, null
  br i1 %.not34.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.k = load i16, ptr %i.j, align 1
  %i.l = icmp ne i16 %i.k, 14906
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.i, %i.p                       ; 2 uses
  %.not33.i.i = icmp ult i64 %i.q, 2
  br i1 %.not33.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !1442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not = icmp eq i64 %i.t, -1
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.u = add i64 %i.t, -3                         ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 -1, label %.sink.split.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ]

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread27
  %i.v = add i64 %i.b, -3
  %spec.select.i.i8 = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %i.v) ; 4 uses
  %i.w = add nuw i64 %spec.select.i.i8, 3         ; 2 uses
  %2 = icmp ne i64 %i.b, %i.w
  %3 = icmp ne i64 %spec.select.i.i8, 0
  %or.cond.i.i = and i1 %3, %2
  br i1 %or.cond.i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.x = sub i64 %i.b, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select.i.i8 ; 2 uses
  switch i64 %i.x, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !122
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !122
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.z, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !123
  %i.ac = sub i64 %i.ab, %spec.select.i.i8
  %.pre = load ptr, ptr %1, align 8, !tbaa !121
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread27
  %i.ad = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread27 ]
  %.sink.i = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread27 ] ; 2 uses
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !123
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink.i
  store i8 0, ptr %i.ae, align 1, !tbaa !122
  %.pre53 = load i64, ptr %i.a, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c, %.sink.split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.af = phi i64 [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread27 ], [ %.pre53, %.sink.split.i ], [ %i.b, %bb.c ], [ %i.b, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %.not.i.i940.not = icmp eq i64 %i.af, 0
  br i1 %.not.i.i940.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %.ph = phi i64 [ %i.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ 8, %bb.b ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit
  %i.ag = phi i64 [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit ], [ %.ph, %.lr.ph.preheader ] ; 9 uses
  %.041 = phi i64 [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !121   ; 3 uses
  %i.ai = sub nuw i64 %i.ag, %.041                ; 2 uses
  %.not3339.i.i11 = icmp ult i64 %i.ai, 2
  br i1 %.not3339.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread, label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.041
  %i.al = ptrtoint ptr %i.aj to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17:   ; preds = %.lr.ph.i.i12, %bb.h
  %.041.i.i13 = phi i64 [ %i.ai, %.lr.ph.i.i12 ], [ %i.ax, %bb.h ]
  %.02740.i.i14 = phi ptr [ %i.ak, %.lr.ph.i.i12 ], [ %i.av, %bb.h ]
  %.reass.reass.i.reass.reass.i16 = add i64 %.041.i.i13, -1
  %i.am = tail call ptr @memchr(ptr noundef %.02740.i.i14, i32 noundef 44, i64 noundef %.reass.reass.i.reass.reass.i16) #29 ; 4 uses
  %.not34.i.i18 = icmp eq ptr %i.am, null
  br i1 %.not34.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i19

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i19: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = icmp ne i16 %i.an, 8236
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23, label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i19
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.ah to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread, label %bb.i

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i19
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.al, %i.aw                    ; 2 uses
  %.not33.i.i21 = icmp ult i64 %i.ax, 2
  br i1 %.not33.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17, !llvm.loop !1442

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23
  %i.ay = icmp ugt i64 %i.at, %i.ag
  br i1 %i.ay, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.213, i64 noundef %i.at, i64 noundef %i.ag) #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit: ; preds = %bb.i
  %i.az = sub nuw i64 %i.ag, %i.at
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 2)
  %i.ba = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.at, i64 noundef %spec.select.i.i.i, ptr noundef nonnull @_ZZN7testing8internal31CanonicalizeForStdLibVersioningENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11replace_str, i64 noundef 1) ; 0 uses
  %i.bb = add nuw i64 %i.at, 1                    ; 2 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !123 ; 3 uses
  %.not.i.i9 = icmp ult i64 %i.bb, %i.bc
  br i1 %.not.i.i9, label %.lr.ph, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread, !llvm.loop !1443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit, %.lr.ph, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17, %bb.h, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.bd = phi i64 [ 0, %bb.a ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %i.ag, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17 ], [ %i.ag, %bb.h ], [ %i.ag, %.lr.ph ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !117
  %i.bf = load ptr, ptr %1, align 8, !tbaa !121   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread
  %i.bi = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit23.thread
  store ptr %i.bf, ptr %0, align 8, !tbaa !121
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !122
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !122
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.bl, align 8, !tbaa !123
  store ptr %i.bg, ptr %1, align 8, !tbaa !121
  store i64 0, ptr %i.a, align 8, !tbaa !123
  store i8 0, ptr %i.bg, align 8, !tbaa !122
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI38Storage_UsesAllocatorConstruction_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI38Storage_UsesAllocatorConstruction_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV38Storage_UsesAllocatorConstruction_Test, i64 16), ptr %i.a, align 8, !tbaa !131
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4test23tracked_memory_resourceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4test23tracked_memory_resource11do_allocateEmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !320
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !320
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #29 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %1, i64 noundef %2), !inline_history !1444 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 %2) ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4test23tracked_memory_resource13do_deallocateEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !321
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !321
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #29 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
end_hunk_0
