Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_based_table_builder?download=true
inline.NumInlined: 4620
inline.NumDeleted: 2194
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef ptr @_ZN7rocksdb18BytewiseComparatorEv() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7rocksdb30UserDefinedIndexBuilderWrapperE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !640  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb23UserDefinedIndexBuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb23UserDefinedIndexBuilderEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #34, !inline_history !30
  br label %_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb23UserDefinedIndexBuilderEEclEPS1_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !400  ; 3 uses
  %.not.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12IndexBuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12IndexBuilderEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #34, !inline_history !22
  br label %_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb12IndexBuilderEEclEPS1_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !56
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7rocksdb30UserDefinedIndexBuilderWrapperE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #37, !inline_history !1264
  br label %_ZN7rocksdb6StatusD2Ev.exit.i

_ZN7rocksdb6StatusD2Ev.exit.i:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !640  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN7rocksdb23UserDefinedIndexBuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb23UserDefinedIndexBuilderEEclEPS1_.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #34, !inline_history !1262
  br label %_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb23UserDefinedIndexBuilderEEclEPS1_.exit.i.i, %_ZN7rocksdb6StatusD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !400  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN7rocksdb12IndexBuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb12IndexBuilderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #34, !inline_history !1263
  br label %_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb12IndexBuilderEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN7rocksdb23UserDefinedIndexBuilderESt14default_deleteIS1_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN7rocksdb30UserDefinedIndexBuilderWrapperD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !56
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #37, !inline_history !1264
  br label %_ZN7rocksdb30UserDefinedIndexBuilderWrapperD2Ev.exit

_ZN7rocksdb30UserDefinedIndexBuilderWrapperD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb12IndexBuilderESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZN7rocksdb30UserDefinedIndexBuilderWrapper13AddIndexEntryERKNS_5SliceEPS2_RKNS_11BlockHandleEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.rocksdb::UserDefinedIndexBuilder::BlockHandle", align 16 ; 4 uses
  %7 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 8 uses
  %8 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 8 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %11 = alloca %"struct.rocksdb::UserDefinedIndexBuilder::IndexEntryContext", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.a = load <2 x i64>, ptr %3, align 8, !tbaa !396
  store <2 x i64> %i.a, ptr %6, align 16, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store ptr @.str, ptr %7, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 72057594037927935, ptr %i.c, align 8, !tbaa !660
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr @.str, ptr %8, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 72057594037927935, ptr %i.f, align 8, !tbaa !660
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !661
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !432
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %.thread29

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %7, i1 noundef zeroext false)
  %i.k = load <4 x i8>, ptr %9, align 8, !tbaa !56
  store <4 x i8> %i.k, ptr %i.h, align 8, !tbaa !56
  store <4 x i8> zeroinitializer, ptr %9, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !441, !range !417, !noundef !408
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.m, ptr %i.n, align 4, !tbaa !433
  store i8 0, ptr %i.l, align 4, !tbaa !433
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.p, ptr %i.q, align 1, !tbaa !434
  store i8 0, ptr %i.o, align 1, !tbaa !434
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !419
  store ptr null, ptr %i.r, align 8, !tbaa !419
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !419  ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !419
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.u) #37
  %.pr = load ptr, ptr %i.r, align 8, !tbaa !419  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #37
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %.pre = load i8, ptr %i.h, align 8, !tbaa !432  ; 2 uses
  %i.v = icmp eq i8 %.pre, 0
  %i.w = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %8, i1 noundef zeroext false)
  %i.x = load <4 x i8>, ptr %10, align 8, !tbaa !56
  store <4 x i8> %i.x, ptr %i.h, align 8, !tbaa !56
  store <4 x i8> zeroinitializer, ptr %10, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !441, !range !417, !noundef !408
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.z, ptr %i.aa, align 4, !tbaa !433
  store i8 0, ptr %i.y, align 4, !tbaa !433
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !434
  store i8 0, ptr %i.ab, align 1, !tbaa !434
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !419
  store ptr null, ptr %i.ae, align 8, !tbaa !419
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !419 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !419
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i15, label %_ZN7rocksdb6StatusD2Ev.exit20, label %_ZN7rocksdb6StatusaSEOS0_.exit17

_ZN7rocksdb6StatusaSEOS0_.exit17:                 ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #37
  %.pr22 = load ptr, ptr %i.ae, align 8, !tbaa !419 ; 2 uses
  %.not.i.i18 = icmp eq ptr %.pr22, null
  br i1 %.not.i.i18, label %_ZN7rocksdb6StatusD2Ev.exit20, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i19

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i19: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit17
  call void @_ZdaPv(ptr noundef nonnull %.pr22) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit20

_ZN7rocksdb6StatusD2Ev.exit20:                    ; preds = %bb.d, %_ZN7rocksdb6StatusaSEOS0_.exit17, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %.pr24 = load i8, ptr %i.h, align 8, !tbaa !432
  br label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit20, %bb.c
  %12 = phi i1 [ true, %_ZN7rocksdb6StatusD2Ev.exit20 ], [ %i.w, %bb.c ] ; 2 uses
  %i.ai = phi i8 [ %.pr24, %_ZN7rocksdb6StatusD2Ev.exit20 ], [ %.pre, %bb.c ]
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %.thread29

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !660
  %i.al = load i8, ptr %i.d, align 8, !tbaa !661
  %i.am = shl i64 %i.ak, 8
  %i.an = zext i8 %i.al to i64
  %i.ao = or disjoint i64 %i.am, %i.an
  store i64 %i.ao, ptr %11, align 8, !tbaa !1266
  %i.ap = load i64, ptr %i.f, align 8
  %i.aq = load i8, ptr %i.g, align 8
  %i.ar = shl i64 %i.ap, 8
  %i.as = zext i8 %i.aq to i64
  %i.at = or disjoint i64 %i.ar, %i.as
  %i.au = select i1 %12, ptr %8, ptr null
  %i.av = select i1 %12, i64 %i.at, i64 0
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !1267
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !640 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call { ptr, i64 } %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %.thread29

.thread29:                                        ; preds = %bb.a, %bb.f, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !400 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call { ptr, i64 } %i.bh(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i1 noundef zeroext %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret { ptr, i64 } %i.bi
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapper24CreatePreparedIndexEntryEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.217") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1268
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapper17PrepareIndexEntryERKNS_5SliceEPS2_PNS_12IndexBuilder18PreparedIndexEntryE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapper16FinishIndexEntryERKNS_11BlockHandleEPNS_12IndexBuilder18PreparedIndexEntryEb(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapper10OnKeyAddedERKNS_5SliceERKSt8optionalIS1_E(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 8 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !400  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr @.str, ptr %3, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 72057594037927935, ptr %i.g, align 8, !tbaa !660
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !661
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !432
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !429, !range !417, !noundef !408
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr @.str.89, ptr %5, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 90, ptr %i.o, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store ptr @.str, ptr %6, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !45
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  %i.q = load <4 x i8>, ptr %4, align 8, !tbaa !56
  store <4 x i8> %i.q, ptr %i.i, align 8, !tbaa !56
  store <4 x i8> zeroinitializer, ptr %4, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !441, !range !417, !noundef !408
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.s, ptr %i.t, align 4, !tbaa !433
  store i8 0, ptr %i.r, align 4, !tbaa !433
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.v, ptr %i.w, align 1, !tbaa !434
  store i8 0, ptr %i.u, align 1, !tbaa !434
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !419
  store ptr null, ptr %i.x, align 8, !tbaa !419
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !419 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !419
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #37
  %.pr = load ptr, ptr %i.x, align 8, !tbaa !419  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.c, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i1 noundef zeroext false)
  %i.ab = load <4 x i8>, ptr %7, align 8, !tbaa !56
  store <4 x i8> %i.ab, ptr %i.i, align 8, !tbaa !56
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !441, !range !417, !noundef !408
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.ad, ptr %i.ae, align 4, !tbaa !433
  store i8 0, ptr %i.ac, align 4, !tbaa !433
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !434
  store i8 0, ptr %i.af, align 1, !tbaa !434
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !419
  store ptr null, ptr %i.ai, align 8, !tbaa !419
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !419 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !419
  %.not.i.i.i.i.i6 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i6, label %_ZN7rocksdb6StatusD2Ev.exit11, label %_ZN7rocksdb6StatusaSEOS0_.exit8

_ZN7rocksdb6StatusaSEOS0_.exit8:                  ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.al) #37
  %.pr13 = load ptr, ptr %i.ai, align 8, !tbaa !419 ; 2 uses
  %.not.i.i9 = icmp eq ptr %.pr13, null
  br i1 %.not.i.i9, label %_ZN7rocksdb6StatusD2Ev.exit11, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit8
  call void @_ZdaPv(ptr noundef nonnull %.pr13) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit11

_ZN7rocksdb6StatusD2Ev.exit11:                    ; preds = %bb.d, %_ZN7rocksdb6StatusaSEOS0_.exit8, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZN7rocksdb6StatusD2Ev.exit11
  %.pr15 = load i8, ptr %i.i, align 8, !tbaa !432
  %i.am = icmp eq i8 %.pr15, 0
  br i1 %i.am, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.an = load i8, ptr %i.l, align 8, !tbaa !429, !range !417, !noundef !408
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit:  ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !422
  %i.ap = load i8, ptr %i.h, align 8, !tbaa !661  ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 24
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit
  %i.ar = call { ptr, i64 } @_ZN7rocksdb24ParsePackedValueForValueERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = extractvalue { ptr, i64 } %i.ar, 1
  store ptr %i.as, ptr %8, align 8, !tbaa !419
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !396
  %.pr16 = load i8, ptr %i.h, align 8, !tbaa !661
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit
  %i.au = phi i8 [ %.pr16, %bb.h ], [ %i.ap, %_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !640 ; 2 uses
end_hunk_0
