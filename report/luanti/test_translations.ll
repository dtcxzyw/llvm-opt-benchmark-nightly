Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_translations?download=true
inline.NumInlined: 1040
inline.NumDeleted: 308
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev:bb.a

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !299
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !300
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !299    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !300
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERA4_KwE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !302, !nonnull !36, !align !38
  call void @_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvE7convertERKS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !39
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !303, !nonnull !36, !align !74 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_ZN5Catch6Detail13rangeToStringIPKwS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull %i.f)
          to label %_ZN5Catch6Detail9stringifyIA4_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

_ZN5Catch6Detail9stringifyIA4_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN5Catch6Detail9stringifyIA4_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !57     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.l = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !41
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIA4_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !57     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !41
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.x = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !41
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn
}

declare void @_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvE7convertERKS6_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch6Detail13rangeToStringIPKwS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Catch::ReusableStringStream", align 8 ; 8 uses
  %4 = alloca %"class.Catch::ReusableStringStream", align 8 ; 8 uses
  %5 = alloca %"class.Catch::ReusableStringStream", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN5Catch20ReusableStringStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.78, i64 noundef 2)
          to label %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.a ; 0 uses

_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit: ; preds = %bb.a
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !313
  invoke void @_ZN5Catch20ReusableStringStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72, !noalias !313
  %i.f = load i32, ptr %1, align 4, !tbaa !64, !noalias !313
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZN5Catch20ReusableStringStreamlsIwEERS0_RKT_.exit.i.i unwind label %bb.c, !noalias !313 ; 0 uses

_ZN5Catch20ReusableStringStreamlsIwEERS0_RKT_.exit.i.i: ; preds = %.noexc
  invoke void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIwEERS0_RKT_.exit.i.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !313
  br label %.body

bb.d:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIwEERS0_RKT_.exit.i.i
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !313
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.j = load ptr, ptr %6, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.i ; 0 uses

_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.d
  %i.n = load ptr, ptr %6, align 8, !tbaa !57     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !41
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.01243 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.not1644 = icmp eq ptr %.01243, %2
  br i1 %.not1644, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.01245 = phi ptr [ %.01243, %.lr.ph ], [ %.012, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ] ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.79, i64 noundef 2)
          to label %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit23 unwind label %.loopexit42 ; 0 uses

_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit23: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !314
  invoke void @_ZN5Catch20ReusableStringStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc25 unwind label %bb.j

.noexc25:                                         ; preds = %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit23
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !72, !noalias !314
  %i.y = load i32, ptr %.01245, align 4, !tbaa !64, !noalias !314
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %i.y)
          to label %_ZN5Catch20ReusableStringStreamlsIwEERS0_RKT_.exit.i.i24 unwind label %bb.f, !noalias !314 ; 0 uses

_ZN5Catch20ReusableStringStreamlsIwEERS0_RKT_.exit.i.i24: ; preds = %.noexc25
  invoke void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIwEERS0_RKT_.exit.i.i24, %.noexc25
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !314
  br label %.body26

bb.g:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIwEERS0_RKT_.exit.i.i24
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !314
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.ac = load ptr, ptr %7, align 8, !tbaa !57
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !58
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ac, i64 noundef %i.ad)
          to label %_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit30 unwind label %bb.k ; 0 uses

_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit30: ; preds = %bb.g
  %i.af = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.u
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit30
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !41
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZN5Catch20ReusableStringStreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.012 = getelementptr inbounds nuw i8, ptr %.01245, i64 4 ; 2 uses
  %.not16 = icmp eq ptr %.012, %2
  br i1 %.not16, label %.loopexit, label %bb.e, !llvm.loop !312

.loopexit42:                                      ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.a:                             ; preds = %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit41, %bb.a, %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !41
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #18
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.aj, %bb.h ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.ak, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.m

bb.j:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit23
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body26

bb.k:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.u
  br i1 %i.at, label %.body26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.k
  %i.au = load i64, ptr %i.u, align 8, !tbaa !41
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #18
  br label %.body26

.body26:                                          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.j, %bb.f
  %.pn17 = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.aq, %bb.j ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.m

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.80, i64 noundef 2)
          to label %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit41 unwind label %.loopexit.split-lp.a ; 0 uses

_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit41: ; preds = %.loopexit
  invoke void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.l unwind label %.loopexit.split-lp.a

bb.l:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIA3_cEERS0_RKT_.exit41
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.m:                                             ; preds = %.loopexit42, %.loopexit.split-lp.a, %.body26, %.body
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %.body26 ], [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit42 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.a ]
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn17.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERA13_KwE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316, !nonnull !36, !align !38
  call void @_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvE7convertERKS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !39
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317, !nonnull !36, !align !74 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  invoke void @_ZN5Catch6Detail13rangeToStringIPKwS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(52) %i.e, ptr noundef nonnull %i.f)
          to label %_ZN5Catch6Detail9stringifyIA13_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

_ZN5Catch6Detail9stringifyIA13_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN5Catch6Detail9stringifyIA13_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !57     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.l = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !41
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIA13_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !57     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !41
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.x = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !41
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERA6_KwE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319, !nonnull !36, !align !38
  call void @_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvE7convertERKS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !39
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !320, !nonnull !36, !align !74 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke void @_ZN5Catch6Detail13rangeToStringIPKwS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(24) %i.e, ptr noundef nonnull %i.f)
          to label %_ZN5Catch6Detail9stringifyIA6_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

_ZN5Catch6Detail9stringifyIA6_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN5Catch6Detail9stringifyIA6_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !57     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !41
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.l = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !41
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIA6_wEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !57     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !41
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.x = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !41
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERA20_KwE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
end_hunk_0
