Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_string_main?download=true
inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZNK6duckdb12_GLOBAL__N_129ArrayLengthBinaryFunctionData4CopyEv:bb.a
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28, !inline_history !452
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK6duckdb12_GLOBAL__N_129ArrayLengthBinaryFunctionData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !443  ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !446  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !443
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !446  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.b, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.not.i.i.i.i.i, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.e, ptr %i.k, i64 %i.h)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.a, %bb.b, %bb.c
  %i.p = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !443
  %i.c = load ptr, ptr %1, align 8, !tbaa !446    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !445
  %i.i = load ptr, ptr %0, align 8, !tbaa !446    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, !prof !83

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !308

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !69
  store i64 %i.r, ptr %i.o, align 8, !tbaa !69
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #32
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !446
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !445
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !443  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !308

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !69
  store i64 %i.z, ptr %i.i, align 8, !tbaa !69
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !308

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !446
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !443 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !446
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !443
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !69
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !69
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !308

bb.r:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !69
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !69
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !446
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !443
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN6duckdb10StringType12GetCollationB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(88), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.4 = alloca %union.anon, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !666  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !663
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.e = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !29
  store i64 0, ptr %i.l, align 8, !tbaa !15
  store i8 0, ptr %i.f, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !11
  %i.n = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !7
  store i64 %i.o, ptr %.sroa.4, align 8, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !29
  store i64 0, ptr %i.p, align 8, !tbaa !15
  store i8 0, ptr %i.f, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.b, align 8, !tbaa !29
  %.sroa.4.0..sroa.4.16. = load i64, ptr %.sroa.4, align 8, !tbaa !7
  store i64 %.sroa.4.0..sroa.4.16., ptr %i.q, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.r = phi i64 [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !666
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.u, ptr %i.a, align 8, !tbaa !666
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !665 ; 5 uses
  %i.v = ptrtoint ptr %i.b to i64
  %i.w = ptrtoint ptr %.val.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775776
  br i1 %i.y, label %bb.d, label %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
  unreachable

_ZNKSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.z = ashr exact i64 %i.x, 5                   ; 3 uses
  %i.aa = icmp eq ptr %i.b, %.val.i               ; 2 uses
  %.sroa.speculated.i.i = select i1 %i.aa, i64 1, i64 %i.z
  %i.ab = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.z
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 288230376151711743)
  %i.ae = select i1 %i.ac, i64 288230376151711743, i64 %i.ad ; 3 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_M_allocateEm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.af = shl nuw nsw i64 %i.ae, 5
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.e, %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.ah = phi ptr [ %i.ag, %bb.e ], [ null, %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.x ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !11
  %i.aj = load ptr, ptr %1, align 8, !tbaa !29    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_M_allocateEm.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !15 ; 3 uses
  %4 = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %4)
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ao, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ak, ptr %1, align 8, !tbaa !29
  store i64 0, ptr %i.am, align 8, !tbaa !15
  store i8 0, ptr %i.ak, align 8, !tbaa !7
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %6, ptr %3, align 8, !tbaa !11
  br label %10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_M_allocateEm.exit.i
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !7  ; 2 uses
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !7
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15 ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !29
  store i64 0, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  store i8 0, ptr %i.ak, align 8, !tbaa !7
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %8, ptr %3, align 8, !tbaa !11
  %9 = icmp eq ptr %i.aj, %i.ai
  br i1 %9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.pre4 = add nuw nsw i64 %.pre.i, 1
  br label %10

10:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i
  %.pre-phi = phi i64 [ %.pre4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i ]
  %11 = phi ptr [ %8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge ], [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i ]
  %12 = phi ptr [ %7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge ], [ %5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i ]
  %13 = phi i64 [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i ] ; 2 uses
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %.pre-phi, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.aj, ptr %3, align 8, !tbaa !29
  store i64 %i.ap, ptr %8, align 8, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %10
  %.sink = phi ptr [ %12, %10 ], [ %7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aq = phi i64 [ %13, %10 ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aq, ptr %15, align 8, !tbaa !15
  store i64 0, ptr %.sink, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.aa, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZSt19__relocate_object_aIN6duckdb12_GLOBAL__N_111LikeSegmentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN6duckdb12_GLOBAL__N_111LikeSegmentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.ah, %bb.f ] ; 5 uses
  %.092.i.i.i.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aIN6duckdb12_GLOBAL__N_111LikeSegmentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %.val.i, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  call void @llvm.experimental.noalias.scope.decl(metadata !2373)
  %i.ar = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.03.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !2370, !noalias !2373
  %i.as = load ptr, ptr %.092.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !2373, !noalias !2370 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15, !alias.scope !2373, !noalias !2370 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !2375
  br label %_ZSt19__relocate_object_aIN6duckdb12_GLOBAL__N_111LikeSegmentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.as, ptr %.03.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !2370, !noalias !2373
  %i.az = load i64, ptr %i.at, align 8, !tbaa !7, !alias.scope !2373, !noalias !2370
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !7, !alias.scope !2370, !noalias !2373
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !15, !alias.scope !2373, !noalias !2370
  br label %_ZSt19__relocate_object_aIN6duckdb12_GLOBAL__N_111LikeSegmentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb12_GLOBAL__N_111LikeSegmentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.ba = phi i64 [ %i.aw, %bb.g ], [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !15, !alias.scope !2370, !noalias !2373
  store ptr %i.at, ptr %.092.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !2373, !noalias !2370
  store i64 0, ptr %i.bb, align 8, !tbaa !15, !alias.scope !2373, !noalias !2370
  store i8 0, ptr %i.at, align 8, !tbaa !7, !alias.scope !2373, !noalias !2370
  %i.bd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2376

_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41.i: ; preds = %_ZSt19__relocate_object_aIN6duckdb12_GLOBAL__N_111LikeSegmentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.be, %_ZSt19__relocate_object_aIN6duckdb12_GLOBAL__N_111LikeSegmentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i42.i = icmp eq ptr %.val.i, null
  br i1 %.not.i42.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41.i
  call void @_ZdlPv(ptr noundef nonnull %.val.i) #32
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41.i, %bb.h
  store ptr %i.ah, ptr %0, align 8, !tbaa !665
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !666
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ae
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !663
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !665    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !666  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #32
  br label %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !674

_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !665
  br label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.val) #32
  br label %_ZNSt12_Vector_baseIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_111LikeMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(66) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_111LikeMatcherE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !665  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !666  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #32
  br label %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !674

_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.a, align 8, !tbaa !665
  br label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.val.i) #32
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.j) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_111LikeMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(66) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_111LikeMatcherE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !665  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !666  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #32, !inline_history !2377
  br label %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !674

_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb12_GLOBAL__N_111LikeSegmentEEvPT_.exit.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !665
  br label %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.val.i.i) #32, !inline_history !2377
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb12_GLOBAL__N_111LikeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6duckdb12_GLOBAL__N_111LikeMatcherD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef %i.j) #32, !inline_history !2377
  br label %_ZN6duckdb12_GLOBAL__N_111LikeMatcherD2Ev.exit

_ZN6duckdb12_GLOBAL__N_111LikeMatcherD2Ev.exit:   ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_111LikeSegmentESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(66) %0) #28, !inline_history !2377
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK6duckdb12_GLOBAL__N_111LikeMatcher4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.9") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 65
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.g, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.h = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29, !noalias !2378, !inline_history !2381 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !11, !noalias !2378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !2378
  store i64 %.val1, ptr %i.b, align 8, !tbaa !69, !noalias !2378
  %i.j = icmp ugt i64 %.val1, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i unwind label %bb.n, !noalias !2378, !inline_history !2381 ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.k, ptr %2, align 8, !tbaa !29, !noalias !2378
  %i.l = load i64, ptr %i.b, align 8, !tbaa !69, !noalias !2378
  store i64 %i.l, ptr %i.i, align 8, !tbaa !7, !noalias !2378
  br label %._crit_edge.i.i.i

end_hunk_0
