inline.NumInlined: 212
inline.NumDeleted: 119
begin_hunk_0_@_ZN5folly6detail16throw_exception_ISt13runtime_errorJPKcEEEvDpT0_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt13runtime_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 2 uses
  tail call void @_ZNSt13runtime_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #5

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN5folly3ssl11OpenSSLHash20check_out_size_throwEmNS_5RangeIPhEE(i64 noundef, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
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
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !34

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !18
  store i8 %i.t, ptr %i.s, align 1, !tbaa !18
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
  %i.x = load i8, ptr %3, align 1, !tbaa !18
  store i8 %i.x, ptr %i.w, align 1, !tbaa !18
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
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !18
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
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !18
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !19
  store i64 %.0, ptr %i.h, align 8, !tbaa !18
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.folly::fmt_vformat_mangle_format_string_fn::options", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i8 0, ptr %4, align 1, !tbaa !35
  call void @_ZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull align 1 poison, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 %2, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !35, !range !38, !noundef !39
  %5 = trunc nuw i8 %i.a to i1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !15
  store i8 0, ptr %i.b, align 8, !tbaa !18
  %.not43.i = icmp eq i64 %3, 0
  br i1 %.not43.i, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit", label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.0 = phi ptr [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %4, %bb.a ] ; 10 uses
  %.sroa.11.045.i = phi ptr [ %.sroa.11.1.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %4, %bb.a ] ; 5 uses
  %.sroa.06.044.i = phi i64 [ %.sroa.06.1.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %3, %bb.a ] ; 9 uses
  %i.d = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.sroa.11.045.i, i32 noundef 123, i64 noundef %.sroa.06.044.i) #18 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %.sroa.11.045.i to i64      ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %bb.b

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i
  %i.i = add nuw i64 %i.g, 1                      ; 5 uses
  %i.j = icmp eq i64 %i.i, %.sroa.06.044.i
  br i1 %i.j, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.11.045.i, i64 %i.i ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18    ; 3 uses
  %i.m = icmp eq i8 %i.l, 123
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.g, 2                          ; 3 uses
  %i.o = icmp ugt i64 %i.n, %.sroa.06.044.i
  br i1 %i.o, label %.invoke, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, !llvm.loop !40

.invoke:                                          ; preds = %.thread27.i, %bb.d
  %i.p = phi i64 [ %i.n, %bb.d ], [ %.1.i33.i, %.thread27.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef %i.p, i64 noundef %.sroa.06.044.i) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.g, %.sroa.06.044.i
  br i1 %i.q, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30.i, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit"

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30.i:   ; preds = %bb.e
  %i.r = sub nuw i64 %.sroa.06.044.i, %i.g        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.11.045.i, i64 %i.g ; 2 uses
  %i.t = tail call ptr @memchr(ptr noundef nonnull %i.s, i32 noundef 125, i64 noundef %i.r) #18 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.t, null
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.f
  %.1.i29.ph.i = select i1 %.not.i31.i, i64 -1, i64 %i.v ; 2 uses
  %i.w = tail call ptr @memchr(ptr noundef nonnull %i.s, i32 noundef 58, i64 noundef %i.r) #18 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.w, null
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.f
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %.1.i29.ph.i)
  %.1.i33.i = select i1 %.not.i35.i, i64 %.1.i29.ph.i, i64 %i.z ; 6 uses
  %i.aa = icmp eq i64 %.1.i33.i, -1
  br i1 %i.aa, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30.i
  %i.ab = sub i64 %.1.i33.i, %i.i
  %i.ac = sub nuw i64 %.sroa.06.044.i, %i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %.1.i33.i, %i.i
  %.not26.i = icmp eq i8 %i.l, 0
  %or.cond.i = or i1 %.not26.i, %i.ad
  br i1 %or.cond.i, label %.thread27.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39.i
  %i.ae = sext i8 %i.l to i32
  %i.af = add nsw i32 %i.ae, -58
  %i.ag = icmp ult i32 %i.af, -10
  %or.cond3.not.i = or i1 %i.ag, %5
  br i1 %or.cond3.not.i, label %bb.g, label %.thread27.i

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !15
  %i.ai = ptrtoint ptr %i.k to i64
  %i.aj = ptrtoint ptr %.0 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ah, i64 noundef 0, ptr noundef %.0, i64 noundef %i.ak)
          to label %.noexc5 unwind label %.loopexit ; 0 uses

.noexc5:                                          ; preds = %bb.g
  invoke void @_ZNK5folly26fmt_vformat_mangle_name_fnclERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_E(ptr nonnull align 1 poison, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.speculated.i.i, ptr nonnull %i.k)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.noexc5
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.speculated.i.i
  br label %.thread27.i

.thread27.i:                                      ; preds = %.noexc6, %bb.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39.i
  %.1 = phi ptr [ %.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39.i ], [ %i.am, %.noexc6 ], [ %.0, %bb.f ]
  %i.an = icmp ugt i64 %.1.i33.i, %.sroa.06.044.i
  br i1 %i.an, label %.invoke, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %.thread27.i, %bb.d
  %.2 = phi ptr [ %.0, %bb.d ], [ %.1, %.thread27.i ] ; 2 uses
  %.1.i33.pn.i = phi i64 [ %i.n, %bb.d ], [ %.1.i33.i, %.thread27.i ] ; 2 uses
  %.sroa.11.1.i = getelementptr inbounds nuw i8, ptr %.sroa.11.045.i, i64 %.1.i33.pn.i
  %.sroa.06.1.i = sub nuw i64 %.sroa.06.044.i, %.1.i33.pn.i ; 2 uses
  %.not.i = icmp eq i64 %.sroa.06.1.i, 0
  br i1 %.not.i, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit": ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i, %bb.b, %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.3.ph = phi ptr [ %.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i ], [ %.0, %bb.b ], [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30.i ], [ %.0, %bb.e ]
  %.pre = load i64, ptr %i.c, align 8, !tbaa !15
  br label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit"

"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit": ; preds = %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", %bb.a
  %i.ao = phi i64 [ 0, %bb.a ], [ %.pre, %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit" ]
  %.3 = phi ptr [ %4, %bb.a ], [ %.3.ph, %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit" ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 %3
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.3 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ao, i64 noundef 0, ptr noundef %.3, i64 noundef %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit: ; preds = %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit"
  ret void

.loopexit:                                        ; preds = %bb.g, %.noexc5
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.invoke, %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.b
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !18
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !24

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  store i8 %i.v, ptr %i.t, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !18
  store i8 %i.w, ptr %i.m, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.x = load ptr, ptr %0, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !18
  ret ptr %0
}
end_hunk_0
