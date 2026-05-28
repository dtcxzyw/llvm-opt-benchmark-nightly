inline.NumInlined: 3508
inline.NumDeleted: 1107
begin_hunk_0_@_ZN4LIEF2PE9SignatureaSEOS1_:bb.a
  %.not.i.i.i.i.i13 = icmp eq ptr %i.bc, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEaSEOS4_.exit
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = ptrtoint ptr %i.bc to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bn) #26
  br label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit

_ZNSt6vectorIhSaIhEEaSEOS1_.exit:                 ; preds = %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEaSEOS4_.exit, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE9Signature14flag_to_stringB5cxx11ENS1_18VERIFICATION_FLAGSE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i32 %1, 64
  br i1 %.not.i.i.i.i.i.i, label %_ZN6frozen4bits10LowerBoundIN4LIEF2PE9Signature18VERIFICATION_FLAGSENS_4impl10CompareKeyISt4lessIS5_EEEE9doitfirstIPKSt4pairIS5_PKcELm5EEET_SJ_St17integral_constantImXT0_EESK_IbLb0EE.exit.i.i.i.i.i.i, label %bb.b

_ZN6frozen4bits10LowerBoundIN4LIEF2PE9Signature18VERIFICATION_FLAGSENS_4impl10CompareKeyISt4lessIS5_EEEE9doitfirstIPKSt4pairIS5_PKcELm5EEET_SJ_St17integral_constantImXT0_EESK_IbLb0EE.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %1, 1024
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %1, 256
  %i.b = select i1 %.not.i.i.i.i.i.i.i.i, i64 168, i64 136
  %.add.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 200, i64 %i.b
  br label %_ZNK6frozen3mapIN4LIEF2PE9Signature18VERIFICATION_FLAGSEPKcLm13ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i6.i.i.i.i.i.i = icmp samesign ugt i32 %1, 4 ; 2 uses
  %i.c = select i1 %.not.i6.i.i.i.i.i.i, i64 72, i64 8
  %.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i, i64 88, i64 24
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF2PE9Signature14flag_to_stringB5cxx11ENS1_18VERIFICATION_FLAGSE.enumStrings, i64 %.sroa.sel.sroa.sel.v
  %i.d = load i32, ptr %.sroa.sel.sroa.sel, align 8
  %.not.i.i7.i.i.i.i.i.i = icmp ult i32 %i.d, %1
  %.idx.i.i8.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i, i64 32, i64 0
  %.add12.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i, %i.c
  br label %_ZNK6frozen3mapIN4LIEF2PE9Signature18VERIFICATION_FLAGSEPKcLm13ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i

_ZNK6frozen3mapIN4LIEF2PE9Signature18VERIFICATION_FLAGSEPKcLm13ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i: ; preds = %bb.b, %_ZN6frozen4bits10LowerBoundIN4LIEF2PE9Signature18VERIFICATION_FLAGSENS_4impl10CompareKeyISt4lessIS5_EEEE9doitfirstIPKSt4pairIS5_PKcELm5EEET_SJ_St17integral_constantImXT0_EESK_IbLb0EE.exit.i.i.i.i.i.i
  %.sink.i.i.i.i.idx.i.i = phi i64 [ %.add12.i.i, %bb.b ], [ %.add.i.i, %_ZN6frozen4bits10LowerBoundIN4LIEF2PE9Signature18VERIFICATION_FLAGSENS_4impl10CompareKeyISt4lessIS5_EEEE9doitfirstIPKSt4pairIS5_PKcELm5EEET_SJ_St17integral_constantImXT0_EESK_IbLb0EE.exit.i.i.i.i.i.i ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF2PE9Signature14flag_to_stringB5cxx11ENS1_18VERIFICATION_FLAGSE.enumStrings, i64 %.sink.i.i.i.i.idx.i.i
  %.sink10.i.i.i.i.i.i = load i32, ptr %.sink.i.i.i.i.ptr.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %.sink10.i.i.i.i.i.i, %1
  %.idx.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.sink.i.i.i.i.add.i.i = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %.sink.i.i.i.i.add.i.i, 216
  br i1 %.not.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK6frozen3mapIN4LIEF2PE9Signature18VERIFICATION_FLAGSEPKcLm13ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF2PE9Signature14flag_to_stringB5cxx11ENS1_18VERIFICATION_FLAGSE.enumStrings, i64 %.sink.i.i.i.i.add.i.i ; 2 uses
  %i.e = load i32, ptr %.ptr.i.i, align 4
  %.not17.i.i = icmp ult i32 %1, %i.e
  br i1 %.not17.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZNK6frozen3mapIN4LIEF2PE9Signature18VERIFICATION_FLAGSEPKcLm13ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.102) #24
  unreachable

bb.f:                                             ; preds = %.thread, %bb.d
  %i.k = phi ptr [ %i.f, %.thread ], [ %i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ @.str.13, %.thread ], [ %i.h, %bb.d ] ; 3 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.o, ptr %0, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.k, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.k, %bb.f ] ; 2 uses
  switch i64 %i.m, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.l, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.s = load i64, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.102) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.exit: ; preds = %._crit_edge.i, %bb.e, %bb.f
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2049) i32 @_ZN4LIEF2PE27verify_ts_counter_signatureERKNS0_10SignerInfoERKNS0_21PKCS9CounterSignatureENS0_9Signature19VERIFICATION_CHECKSE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.std::vector.56", align 8    ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.56", align 8    ; 6 uses
  %7 = alloca %"struct.std::array", align 4       ; 8 uses
  %8 = alloca %"struct.std::array", align 4       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %11 = alloca %"struct.std::array", align 4      ; 4 uses
  %12 = alloca %"struct.std::array", align 4      ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %15 = alloca %"struct.std::array", align 4      ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.171) #24, !noalias !28
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp ne ptr %i.k, %i.i
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %16 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25, !noalias !28 ; 4 uses
  %.not.i = icmp eq i64 %i.n, 1
  br i1 %.not.i, label %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit, label %bb.e, !prof !31

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %i.i, i64 %i.n, i1 false), !noalias !28
  br label %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit

_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i, %bb.e
  store i8 49, ptr %16, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN4LIEF2PE9Signature4hashEPKhmNS0_10ALGORITHMSE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.56") align 8 %3, ptr noundef nonnull %16, i64 noundef %i.n, i32 noundef %i.q)
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.s, ptr %5, align 8
  store i8 58, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.u, align 1
  call void @_ZN4LIEF8hex_dumpERKSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  %i.v = load ptr, ptr %4, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = load ptr, ptr %5, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.s
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.s, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ae = call noundef zeroext i1 @_ZNK4LIEF2PE4x50915check_signatureERKSt6vectorIhSaIhEES6_NS0_10ALGORITHMSE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i32 noundef %i.q) #23
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.ag = call noundef ptr @_ZNK4LIEF2PE10SignerInfo18get_auth_attributeENS0_9Attribute4TYPEE(ptr noundef nonnull align 8 dereferenceable(184) %i.b, i32 noundef 1) #23 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit69

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ak, 20
  br i1 %i.al, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = load i128, ptr %i.an, align 1
  %i.ap = xor i128 %i.ao, 65372177682629931770666641137721290289
  %i.aq = getelementptr i8, ptr %i.an, i64 16
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = zext i32 %i.ar to i128
  %i.at = xor i128 %i.as, 825112366
  %i.au = or i128 %i.ap, %i.at
  %i.av = icmp ne i128 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not84 = icmp eq i32 %i.aw, 0
  br i1 %.not84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread79, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ax = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit69

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread79: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ay = call noundef ptr @_ZNK4LIEF2PE10SignerInfo18get_auth_attributeENS0_9Attribute4TYPEE(ptr noundef nonnull align 8 dereferenceable(184) %i.b, i32 noundef 12) #23 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread79
  %i.ba = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit69

bb.k:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread79
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i51

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.171) #24, !noalias !32
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i51: ; preds = %bb.k
  %.not.i.i.i.i52 = icmp eq ptr %i.be, %i.bc
  br i1 %.not.i.i.i.i52, label %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit55, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i53

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i53: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i51
  %i.bj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #25, !noalias !32 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh ; 2 uses
  %.not.i54 = icmp eq i64 %i.bh, 1
  br i1 %.not.i54, label %bb.n, label %bb.m, !prof !31

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.bc, i64 %i.bh, i1 false), !noalias !32
  br label %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit55

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i53
  %i.bl = load i8, ptr %i.bc, align 1, !noalias !32
  store i8 %i.bl, ptr %i.bj, align 1, !noalias !32
  br label %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit55

_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit55: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i51, %bb.m, %bb.n
  %.sroa.0.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i51 ], [ %i.bj, %bb.n ], [ %i.bj, %bb.m ] ; 5 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i51 ], [ %i.bk, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !35 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !35
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZN4LIEF2PE9Signature4hashEPKhmNS0_10ALGORITHMSE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.56") align 8 %6, ptr noundef %i.bn, i64 noundef %i.bs, i32 noundef %i.q)
  %i.bt = ptrtoint ptr %.sroa.8.0 to i64
  %i.bu = ptrtoint ptr %.sroa.0.0 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load ptr, ptr %6, align 8               ; 4 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp eq i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.o, label %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread

bb.o:                                             ; preds = %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit55
  %.not.not.i.i.i.i.i.i = icmp eq ptr %.sroa.8.0, %.sroa.0.0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread80, label %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit

_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.o
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.0.0, ptr %i.by, i64 %i.bv)
  %.not9.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.not, label %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread80, label %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread

_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread: ; preds = %_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE.exit55, %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %bb.u

_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread80: ; preds = %bb.o, %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit
  %i.ce = call noundef ptr @_ZNK4LIEF2PE10SignerInfo18get_auth_attributeENS0_9Attribute4TYPEE(ptr noundef nonnull align 8 dereferenceable(184) %i.b, i32 noundef 13) #23 ; 2 uses
  %.not = icmp eq ptr %i.ce, null
  %i.cf = and i32 %2, 8
  %i.cg = icmp ne i32 %i.cf, 0
  %or.cond = or i1 %i.cg, %.not
  br i1 %or.cond, label %bb.u, label %bb.p

bb.p:                                             ; preds = %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread80
  %i.ch = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(24) %i.ci, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNK4LIEF2PE4x5098valid_toEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 4 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  %i.cj = call noundef zeroext i1 @_ZN4LIEF2PE4x50910check_timeERKSt5arrayIiLm6EES5_(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN4LIEF2PE14time_to_stringB5cxx11ERKSt5arrayIiLm6EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZNK4LIEF2PE4x5098valid_toEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 4 %11, ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  call void @_ZN4LIEF2PE14time_to_stringB5cxx11ERKSt5arrayIiLm6EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(24) %11)
  %i.cl = load ptr, ptr %10, align 8              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.q
  %i.co = load i64, ptr %i.cm, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.cq = load ptr, ptr %9, align 8               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ct = load i64, ptr %i.cr, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.thread

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZNK4LIEF2PE4x50910valid_fromEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 4 %12, ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  %i.cv = call noundef zeroext i1 @_ZN4LIEF2PE4x50910check_timeERKSt5arrayIiLm6EES5_(ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(24) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.cv, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @_ZN4LIEF2PE14time_to_stringB5cxx11ERKSt5arrayIiLm6EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @_ZNK4LIEF2PE4x5098valid_toEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 4 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  call void @_ZN4LIEF2PE14time_to_stringB5cxx11ERKSt5arrayIiLm6EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(24) %15)
  %i.cx = load ptr, ptr %14, align 8              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.s
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.dc = load ptr, ptr %13, align 8              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.df = load i64, ptr %i.dd, align 8
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.0.ph = phi i32 [ 2048, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ 1024, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread80, %bb.t, %.thread, %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread
  %.2 = phi i32 [ 1, %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread ], [ %.0.ph, %.thread ], [ 0, %bb.t ], [ 0, %_ZStneIhSaIhEEbRKSt6vectorIT_T0_ES6_.exit.thread80 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.dk) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i.i68 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIhSaIhEED2Ev.exit69, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit69

_ZNSt6vectorIhSaIhEED2Ev.exit69:                  ; preds = %bb.w, %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.j, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.h
  %.4 = phi i32 [ 1, %bb.h ], [ 1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 1, %bb.j ], [ %.2, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %.2, %bb.w ]
  %i.dl = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIhSaIhEED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit69
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit73

_ZNSt6vectorIhSaIhEED2Ev.exit73:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit69, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZdlPvm(ptr noundef nonnull %16, i64 noundef %i.n) #26
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit73, %bb.b
  %.5 = phi i32 [ 8, %bb.b ], [ %.4, %_ZNSt6vectorIhSaIhEED2Ev.exit73 ]
  ret i32 %.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF9as_vectorIhEESt6vectorIT_SaIS2_EEN3tcb4spanIKS2_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.56") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #6 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.171) #24
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEEC2IPKhvEET_S5_RKS0_.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #25 ; 4 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.d, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2IPKhvEET_S5_RKS0_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.e = load i8, ptr %1, align 1
  store i8 %i.e, ptr %i.b, align 1
  br label %_ZNSt6vectorIhSaIhEEC2IPKhvEET_S5_RKS0_.exit

_ZNSt6vectorIhSaIhEEC2IPKhvEET_S5_RKS0_.exit:     ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.c, %bb.d
  %i.f = phi ptr [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  ret void
}

declare void @_ZN4LIEF8hex_dumpERKSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4LIEF2PE4x50915check_signatureERKSt6vectorIhSaIhEES6_NS0_10ALGORITHMSE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4LIEF2PE10SignerInfo18get_auth_attributeENS0_9Attribute4TYPEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4LIEF2PE4x50910check_timeERKSt5arrayIiLm6EES5_(ptr noundef nonnull align 4 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK4LIEF2PE4x5098valid_toEv(ptr dead_on_unwind writable sret(%"struct.std::array") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE14time_to_stringB5cxx11ERKSt5arrayIiLm6EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #6 comdat {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !38
  %i.g = load i32, ptr %1, align 4, !noalias !38
  store i32 %i.g, ptr %4, align 16, !noalias !38
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i32, ptr %i.b, align 4, !noalias !38
  store i32 %i.i, ptr %i.h, align 16, !noalias !38
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load i32, ptr %i.c, align 4, !noalias !38
  store i32 %i.k, ptr %i.j, align 16, !noalias !38
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.m = load i32, ptr %i.d, align 4, !noalias !38
  store i32 %i.m, ptr %i.l, align 16, !noalias !38
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = load i32, ptr %i.e, align 4, !noalias !38
  store i32 %i.o, ptr %i.n, align 16, !noalias !38
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load i32, ptr %i.f, align 4, !noalias !38
  store i32 %i.q, ptr %i.p, align 16, !noalias !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !41
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !41
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.s, align 8, !noalias !41
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.u, ptr %3, align 8, !noalias !41
  store i64 500, ptr %i.r, align 8, !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !41
  store ptr @.str.59, ptr %2, align 8, !noalias !41
  %.sroa.2.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 41, ptr %.sroa.2.0..sroa_idx.i14.i, align 8, !noalias !41
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.v, align 8, !noalias !41
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.w, align 8, !noalias !41
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 1118481, ptr %i.x, align 8, !noalias !41
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !noalias !41
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.y, align 8, !noalias !41
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.59, i64 41, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !41
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.z = load i64, ptr %i.t, align 8, !noalias !47 ; 6 uses
  %i.aa = icmp ult i64 %i.z, 4611686018427387903
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load ptr, ptr %3, align 8, !noalias !47 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !alias.scope !47
  %i.ad = icmp eq ptr %i.ab, null
  %i.ae = icmp ne i64 %i.z, 0
  %or.cond.i.i.i = and i1 %i.ae, %i.ad
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.102) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !47
  store i64 %i.z, ptr %i.a, align 8, !noalias !47
  %i.af = icmp samesign ugt i64 %i.z, 15
  br i1 %i.af, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !alias.scope !47
  %i.ah = load i64, ptr %i.a, align 8, !noalias !47
  store i64 %i.ah, ptr %i.ac, align 8, !alias.scope !47
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.ai = phi ptr [ %i.ag, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  switch i64 %i.z, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aj = load i8, ptr %i.ab, align 1
  store i8 %i.aj, ptr %i.ai, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ab, i64 %i.z, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.ak = load i64, ptr %i.a, align 8, !noalias !47 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !47
  %i.am = load ptr, ptr %0, align 8, !alias.scope !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !47
  %i.ao = load ptr, ptr %3, align 8, !noalias !41 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.u
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ao) #23
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !38
  ret void
}

declare void @_ZNK4LIEF2PE4x50910valid_fromEv(ptr dead_on_unwind writable sret(%"struct.std::array") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE9Signature4hashEPKhmNS0_10ALGORITHMSE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.56") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  switch i32 %3, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
    i32 4, label %bb.h
    i32 5, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = tail call i32 @mbedtls_sha512(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a, i32 noundef 0) #23
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %.thread, label %bb.c

end_hunk_0
