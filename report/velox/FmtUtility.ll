inline.NumInlined: 213
inline.NumDeleted: 118
begin_hunk_0_@_ZNSt13runtime_errorC1EPKc

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
  %i.g = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !37

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !18
  store i8 %i.t, ptr %i.s, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !18
  store i8 %i.x, ptr %i.w, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !22
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
define void @_ZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.folly::fmt_vformat_mangle_format_string_fn::options", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i8 0, ptr %4, align 1, !tbaa !38
  call void @_ZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull align 1 poison, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 %2, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readnone align 1 captures(none) %1, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(1) %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %5 = alloca %"class.folly::Range.1", align 8    ; 5 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !38, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.e, align 8, !tbaa !15
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %.not44.i = icmp eq i64 %3, 0
  br i1 %.not44.i, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit", label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.lr.ph.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.lr.ph.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.lr.ph.i
  %.0 = phi ptr [ %4, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.lr.ph.i ], [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 9 uses
  %.sroa.11.046.i = phi ptr [ %4, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.lr.ph.i ], [ %.sroa.11.1.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 5 uses
  %.sroa.06.045.i = phi i64 [ %3, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.lr.ph.i ], [ %.sroa.06.1.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 9 uses
  %i.h = call ptr @memchr(ptr noundef %.sroa.11.046.i, i32 noundef 123, i64 noundef %.sroa.06.045.i) #17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.sroa.11.046.i to i64      ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  br i1 %.not.i.i, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.l = add nuw i64 %i.k, 1                      ; 5 uses
  %i.m = icmp eq i64 %i.l, %.sroa.06.045.i
  br i1 %i.m, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.11.046.i, i64 %i.l ; 4 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18    ; 3 uses
  %i.p = icmp eq i8 %i.o, 123
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %i.k, 2                          ; 3 uses
  %i.r = icmp ugt i64 %i.q, %.sroa.06.045.i
  br i1 %i.r, label %.invoke, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, !llvm.loop !43

.invoke:                                          ; preds = %.thread27.i, %bb.d
  %i.s = phi i64 [ %i.q, %bb.d ], [ %i.ad, %.thread27.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef %i.s, i64 noundef %.sroa.06.045.i) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %i.k, %.sroa.06.045.i
  br i1 %i.t, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit38.i, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit"

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit38.i: ; preds = %bb.e
  %i.u = sub nuw i64 %.sroa.06.045.i, %i.k        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.11.046.i, i64 %i.k ; 2 uses
  %i.w = call ptr @memchr(ptr noundef %i.v, i32 noundef 125, i64 noundef %i.u) #17 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.w, null
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  %.0.i32.i = select i1 %.not.i31.i, i64 -1, i64 %i.y ; 2 uses
  %i.z = call ptr @memchr(ptr noundef %i.v, i32 noundef 58, i64 noundef %i.u) #17 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.z, null
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.j
  %i.ac = call i64 @llvm.umin.i64(i64 %i.ab, i64 %.0.i32.i)
  %i.ad = select i1 %.not.i36.i, i64 %.0.i32.i, i64 %i.ac ; 6 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit38.i
  %i.af = sub i64 %i.ad, %i.l
  %i.ag = sub nuw i64 %.sroa.06.045.i, %i.l
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.af)
  %i.ah = icmp eq i64 %i.ad, %i.l
  %.not26.i = icmp eq i8 %i.o, 0
  %or.cond36.i = or i1 %.not26.i, %i.ah
  br i1 %or.cond36.i, label %.thread27.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i
  %i.ai = sext i8 %i.o to i32
  %i.aj = add nsw i32 %i.ai, -58
  %i.ak = icmp ult i32 %i.aj, -10
  %or.cond3.not.i = or i1 %i.ak, %i.c
  br i1 %or.cond3.not.i, label %bb.g, label %.thread27.i

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.e, align 8, !tbaa !15
  %i.am = ptrtoint ptr %i.n to i64
  %i.an = ptrtoint ptr %.0 to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.al, i64 noundef 0, ptr noundef %.0, i64 noundef %i.ao)
          to label %.noexc5 unwind label %.loopexit ; 0 uses

.noexc5:                                          ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %i.a, ptr %5, align 8, !tbaa !19
  store ptr %i.f, ptr %i.g, align 8, !tbaa !21
  %i.ar = invoke ptr @EVP_blake2s256()
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.noexc5
  invoke void @_ZN5folly3ssl11OpenSSLHash4hashENS_5RangeIPhEEPK9evp_md_stNS2_IPKhEE(ptr nonnull %i.a, ptr nonnull %i.f, ptr noundef %i.ar, ptr nonnull %i.n, ptr nonnull %i.aq)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.noexc6
  %i.as = load i64, ptr %i.e, align 8, !tbaa !15  ; 4 uses
  %i.at = add i64 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.d                 ; 2 uses
  br i1 %i.av, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.h:                                             ; preds = %.noexc7
  %i.aw = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.aw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.h, %.noexc7
  %i.ax = load i64, ptr %i.d, align 8
  %i.ay = select i1 %i.av, i64 15, i64 %i.ax
  %i.az = icmp ugt i64 %i.at, %i.ay
  br i1 %i.az, label %bb.i, label %"_ZZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clIS7_EEDaT_.exit.i"

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.as, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %bb.i
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !22
  br label %"_ZZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clIS7_EEDaT_.exit.i"

"_ZZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clIS7_EEDaT_.exit.i": ; preds = %.noexc8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ba = phi ptr [ %.pre.i.i.i.i, %.noexc8 ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  store i8 95, ptr %i.bb, align 1, !tbaa !18
  store i64 %i.at, ptr %i.e, align 8, !tbaa !15
  %i.bc = load ptr, ptr %0, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at
  store i8 0, ptr %i.bd, align 1, !tbaa !18
  %i.be = invoke noundef zeroext i1 @_ZN5folly7hexlifyINS_5RangeIPhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RT0_b(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true)
          to label %.noexc9 unwind label %.loopexit ; 0 uses

.noexc9:                                          ; preds = %"_ZZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clIS7_EEDaT_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread27.i

.thread27.i:                                      ; preds = %.noexc9, %bb.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i
  %.1 = phi ptr [ %.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i ], [ %i.aq, %.noexc9 ], [ %.0, %bb.f ]
  %i.bf = icmp ugt i64 %i.ad, %.sroa.06.045.i
  br i1 %i.bf, label %.invoke, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %.thread27.i, %bb.d
  %.2 = phi ptr [ %.0, %bb.d ], [ %.1, %.thread27.i ] ; 2 uses
  %.1.i34.pn.i = phi i64 [ %i.q, %bb.d ], [ %i.ad, %.thread27.i ] ; 2 uses
  %.sroa.11.1.i = getelementptr inbounds nuw i8, ptr %.sroa.11.046.i, i64 %.1.i34.pn.i
  %.sroa.06.1.i = sub nuw i64 %.sroa.06.045.i, %.1.i34.pn.i ; 2 uses
  %.not.i = icmp eq i64 %.sroa.06.1.i, 0
  br i1 %.not.i, label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit": ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.b, %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit38.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.3.ph = phi ptr [ %.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.0, %bb.b ], [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit38.i ], [ %.0, %bb.e ]
  %.pre = load i64, ptr %i.e, align 8, !tbaa !15
  br label %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit"

"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit": ; preds = %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit", %bb.a
  %i.bg = phi i64 [ 0, %bb.a ], [ %.pre, %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit" ]
  %.3 = phi ptr [ %4, %bb.a ], [ %.3.ph, %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit.loopexit" ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 %3
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %.3 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bg, i64 noundef 0, ptr noundef %.3, i64 noundef %i.bk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit: ; preds = %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit"
  ret void

.loopexit:                                        ; preds = %bb.g, %.noexc5, %.noexc6, %bb.i, %"_ZZNK5folly35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS0_7optionsESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clIS7_EEDaT_.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %.invoke, %"_ZNK5folly35format_string_for_each_named_arg_fnclIcSt11char_traitsIcEZNKS_35fmt_vformat_mangle_format_string_fnclB5cxx11ERKNS4_7optionsESt17basic_string_viewIcS3_EE3$_0EEvRKNS0_7optionsES8_IT_T0_ET1_.exit"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.d
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !18
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
end_hunk_0
