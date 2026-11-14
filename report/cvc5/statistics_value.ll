Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/statistics_value?download=true
inline.NumInlined: 263
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define hidden void @_ZN4cvc58internal18StatisticBaseValueD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internallsERSoRKNS0_18StatisticBaseValueE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::variant", align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::variant") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal6detail5printERSoRKSt7variantIJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS9_mSt4lessIS9_ESaISt4pairIKS9_mEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load i8, ptr %i.e, align 8, !tbaa !9
  switch i8 %i.f, label %bb.f [
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev.exit
    i8 0, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev.exit
    i8 1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev.exit
    i8 2, label %bb.c
    i8 3, label %bb.d
  ], !prof !29

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !30
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef %i.m)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #22
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev.exit: ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %0

bb.g:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.p
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !9
  switch i8 %i.b, label %bb.e [
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEE8_M_resetEv.exit
    i8 0, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEE8_M_resetEv.exit
    i8 1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEE8_M_resetEv.exit
    i8 2, label %bb.b
    i8 3, label %bb.c
  ], !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !30
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.i)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEE8_M_resetEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #22
  unreachable

bb.e:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEE8_M_resetEv.exit: ; preds = %bb.b, %bb.a, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK4cvc58internal21StatisticAverageValue9getViewerB5cxx11Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::variant") align 8 captures(none) initializes((0, 8), (48, 49)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = uitofp i64 %i.d to double
  %i.f = fdiv double %i.b, %i.e
  store double %i.f, ptr %0, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.g, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK4cvc58internal21StatisticAverageValue3getEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = uitofp i64 %i.d to double
  %i.f = fdiv double %i.b, %i.e
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal21StatisticAverageValue9isDefaultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal21StatisticAverageValue9printSafeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = uitofp i64 %i.e to double
  %i.g = fdiv double %i.c, %i.f
  store double %i.g, ptr %i.a, align 8, !tbaa !20
  call void @_ZN4cvc58internal10safe_printIdEEviRKT_(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare void @_ZN4cvc58internal10safe_printIdEEviRKT_(i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal19StatisticTimerValue9getViewerB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::variant") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !41, !range !42, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.h = add i64 %i.f, %i.b
  %i.i = sub i64 %i.h, %.sroa.0.0.copyload.i2.i.i
  br label %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit

_ZNK4cvc58internal19StatisticTimerValue3getEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.03.0.i = phi i64 [ %i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.j = sdiv i64 %.sroa.03.0.i, 1000000          ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.k = icmp ult i64 %i.j, 10
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit
  %4 = icmp ult i64 %i.j, 100
  br i1 %4, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %5

5:                                                ; preds = %.lr.ph.i.i
  %6 = icmp ult i64 %i.j, 1000
  br i1 %6, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %7

7:                                                ; preds = %5
  %8 = icmp ult i64 %i.j, 10000
  br i1 %8, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %9

9:                                                ; preds = %7
  %10 = icmp ult i64 %i.j, 100000
  br i1 %10, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %9
  %11 = icmp ult i64 %i.j, 1000000
  br i1 %11, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %12

12:                                               ; preds = %.lr.ph.i.i.1
  %13 = icmp ult i64 %i.j, 10000000
  br i1 %13, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %14

14:                                               ; preds = %12
  %15 = icmp ult i64 %i.j, 100000000
  br i1 %15, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %16

16:                                               ; preds = %14
  %17 = icmp ult i64 %i.j, 1000000000
  br i1 %17, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %16
  %18 = icmp ult i64 %i.j, 10000000000
  br i1 %18, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %19

19:                                               ; preds = %.lr.ph.i.i.2
  %20 = icmp ult i64 %i.j, 100000000000
  br i1 %20, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %21

21:                                               ; preds = %19
  %22 = icmp ult i64 %i.j, 1000000000000
  br i1 %22, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %21
  %i.l = icmp ult i64 %i.j, 10000000000000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.a
  %23 = icmp ult i64 %i.j, 100000000000000
  br i1 %23, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.j, 1000000000000000
  br i1 %i.m, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %24 = icmp ult i64 %i.j, 10000000000000000
  br i1 %24, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp ult i64 %i.j, 100000000000000000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %25 = icmp ult i64 %i.j, 1000000000000000000
  br i1 %25, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %26 = icmp ult i64 %i.j, -8446744073709551616
  %spec.select = select i1 %26, i64 19, i64 20
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %9, %16, %.lr.ph.i.i.a, %bb.f, %7, %14, %21, %bb.e, %5, %12, %19, %bb.d, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %bb.c, %bb.g, %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit
  %.022.i.i = phi i64 [ 17, %bb.f ], [ %spec.select, %bb.h ], [ 18, %bb.g ], [ 1, %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit ], [ 2, %.lr.ph.i.i ], [ 6, %.lr.ph.i.i.1 ], [ 10, %.lr.ph.i.i.2 ], [ 14, %bb.c ], [ 3, %5 ], [ 7, %12 ], [ 11, %19 ], [ 15, %bb.d ], [ 4, %7 ], [ 8, %14 ], [ 12, %21 ], [ 16, %bb.e ], [ 5, %9 ], [ 9, %16 ], [ 13, %.lr.ph.i.i.a ]
  %27 = and i64 %.022.i.i, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !44, !alias.scope !58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %27, i8 noundef signext 0)
  %i.p = load ptr, ptr %3, align 8, !tbaa !23, !alias.scope !58 ; 4 uses
  %i.q = icmp ugt i64 %i.j, 99
  br i1 %i.q, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24, !alias.scope !58
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.x, %.lr.ph.i4.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ah, %.lr.ph.i4.i ], [ %i.u, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.v = urem i64 %.020.i.i, 100
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !30, !noalias !58
  %i.ab = zext i32 %.01819.i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ab
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !30
  %i.ad = load i8, ptr %i.y, align 2, !tbaa !30, !noalias !58
  %i.ae = add i32 %.01819.i.i, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !30
  %i.ah = add i32 %.01819.i.i, -2
  %i.ai = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ai, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !55

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.j, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.x, %.lr.ph.i4.i ] ; 3 uses
  %i.aj = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ak = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !30, !noalias !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !30
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !30, !noalias !58
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.aq = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.ar, %bb.j ], [ %i.ap, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.p, align 1, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24, !noalias !59
  %i.au = and i64 %i.at, -2
  %i.av = icmp eq i64 %i.au, 4611686018427387902
  br i1 %i.av, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, i64 noundef 2)
          to label %.noexc2 unwind label %bb.n    ; 8 uses

.noexc2:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ax, ptr %2, align 8, !tbaa !44, !alias.scope !59
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !23 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 7 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %.thread, label %bb.l

.thread:                                          ; preds = %.noexc2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !24 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !24, !alias.scope !59
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !23
  store i64 0, ptr %i.bf, align 8, !tbaa !24
  store i8 0, ptr %i.az, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !44
  br label %bb.m

bb.l:                                             ; preds = %.noexc2
  %i.bi = load i64, ptr %i.az, align 8, !tbaa !30
  store i64 %i.bi, ptr %i.ax, align 8, !tbaa !30, !alias.scope !59
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.bk, align 8, !tbaa !24, !alias.scope !59
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !23
  store i64 0, ptr %i.bj, align 8, !tbaa !24
  store i8 0, ptr %i.az, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !44
  %i.bm = icmp eq ptr %i.ay, %i.ax
  br i1 %i.bm, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bn = phi ptr [ %i.bh, %.thread ], [ %i.bl, %bb.l ]
  %i.bo = phi ptr [ %i.bg, %.thread ], [ %i.bk, %bb.l ]
  %i.bp = phi i64 [ %i.bc, %.thread ], [ %.pre.i, %bb.l ] ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  store ptr %i.ay, ptr %0, align 8, !tbaa !23
  %i.bs = load i64, ptr %i.ax, align 8, !tbaa !30
  store i64 %i.bs, ptr %i.bl, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = phi ptr [ %i.bo, %bb.m ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bu = phi i64 [ %i.bp, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !24
  store ptr %i.ax, ptr %2, align 8, !tbaa !23
  store i64 0, ptr %i.bt, align 8, !tbaa !24
  store i8 0, ptr %i.ax, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 2, ptr %i.bw, align 8, !tbaa !9
  %i.bx = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.o
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = load i64, ptr %i.o, align 8, !tbaa !30
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.o
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.n
  %i.ce = load i64, ptr %i.o, align 8, !tbaa !30
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.cb
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 -9223372036854, 9223372036855) i64 @_ZNK4cvc58internal19StatisticTimerValue3getEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !41, !range !42, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.h = add i64 %i.f, %i.b
  %i.i = sub i64 %i.h, %.sroa.0.0.copyload.i2.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.03.0 = phi i64 [ %i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.j = sdiv i64 %.sroa.03.0, 1000000
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal19StatisticTimerValue9isDefaultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %not. = xor i1 %i.c, true
  %i.g = select i1 %not., i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal19StatisticTimerValue9printSafeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !41, !range !42, !noundef !43
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.i = add i64 %i.g, %i.c
  %i.j = sub i64 %i.i, %.sroa.0.0.copyload.i2.i.i
  br label %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit

_ZNK4cvc58internal19StatisticTimerValue3getEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.03.0.i = phi i64 [ %i.j, %bb.b ], [ %i.c, %bb.a ]
  %i.k = sdiv i64 %.sroa.03.0.i, 1000000
  store i64 %i.k, ptr %i.a, align 8, !tbaa !18
  call void @_ZN4cvc58internal10safe_printImEEviRKT_(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !44
  store i16 29549, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %i.n, align 2, !tbaa !30
  invoke void @_ZN4cvc58internal10safe_printINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEviRKT_(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.l, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.d:                                             ; preds = %_ZNK4cvc58internal19StatisticTimerValue3getEv.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.l
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8, !tbaa !30
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.s
}

declare void @_ZN4cvc58internal10safe_printImEEviRKT_(i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN4cvc58internal10safe_printINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEviRKT_(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #8

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal21StatisticAverageValueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4cvc58internal18StatisticBaseValueD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(9) %0) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal19StatisticTimerValueD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !30
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS7_mSt4lessIS7_ESaISt4pairIKS7_mEEEEEE", !4, i64 0, !4, i64 48}
!9 = !{!8, !4, i64 48}
!10 = !{!"vtable pointer", !3, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSSt9exception"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSSt18bad_variant_access", !12, i64 0, !14, i64 8}
!16 = !{!15, !14, i64 8}
!17 = !{!"long", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"double", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !17, i64 8, !4, i64 16}
!23 = !{!22, !14, i64 0}
!24 = !{!22, !17, i64 8}
!25 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!26 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!27 = !{!"_ZTSSt18_Rb_tree_node_base", !25, i64 0, !26, i64 8, !26, i64 16, !26, i64 24}
!28 = !{!"_ZTSSt15_Rb_tree_header", !27, i64 0, !17, i64 32}
!29 = !{!"branch_weights", i32 2000, i32 5, i32 2000, i32 2000, i32 2000, i32 2000}
!30 = !{!4, !4, i64 0}
!31 = !{!28, !26, i64 8}
!32 = !{!"bool", !4, i64 0}
!33 = !{!"_ZTSN4cvc58internal18StatisticBaseValueE", !32, i64 8}
!34 = !{!"_ZTSN4cvc58internal21StatisticAverageValueE", !33, i64 0, !19, i64 16, !17, i64 24}
!35 = !{!34, !19, i64 16}
!36 = !{!34, !17, i64 24}
!37 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !17, i64 0}
!38 = !{!"_ZTSN4cvc58internal19StatisticTimerValue8durationE", !37, i64 0}
!39 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !37, i64 0}
!40 = !{!"_ZTSN4cvc58internal19StatisticTimerValueE", !33, i64 0, !38, i64 16, !39, i64 24, !32, i64 32}
!41 = !{!40, !32, i64 32}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!21, !14, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !50}
!47 = !{!28, !26, i64 16}
!48 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !22, i64 0, !17, i64 32}
!49 = !{!48, !17, i64 32}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIdLb1EEE", !19, i64 0}
!52 = !{!51, !19, i64 0}
!53 = distinct !{!53, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!54 = distinct !{!54, !53, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!55 = distinct !{!55, !45}
!56 = distinct !{!56, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!57 = distinct !{!57, !56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!58 = !{!54}
!59 = !{!57}
!60 = distinct !{!60, !45}
!61 = !{!27, !26, i64 24}
!62 = !{!27, !26, i64 16}
end_hunk_0
