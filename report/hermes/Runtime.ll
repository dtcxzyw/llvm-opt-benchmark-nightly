begin_hunk_0
inline.NumInlined: 3789
inline.NumDeleted: 2145
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1

$_ZN6hermes2vm15IdentifierTable7reserveEj = comdat any

$_ZN6hermes2vm15StringPrimitive15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIDsEE = comdat any

$_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE = comdat any

$_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE = comdat any

$_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_ = comdat any

end_hunk_1
begin_hunk_2_@_ZN6hermes2vm7Runtime23allocateCharacterStringEDs:bb.a
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit5

bb.c:                                             ; preds = %bb.a
  %i.h = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i64 1) ; 2 uses
  %i.i = extractvalue { i32, i64 } %i.h, 0
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit5, !prof !44
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm7Runtime23allocateCharacterStringEDs:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) local_unnamed_addr #4 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 6 uses
  %5 = and i64 %2, 4294901760
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %6, label %8, !prof !58

6:                                                ; preds = %3
  %7 = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) #30
  br label %16

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.462") align 8 %4, ptr %1, i64 %2)
  %9 = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE15createLongLivedERNS0_7RuntimeEONSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #30
  %10 = load ptr, ptr %4, align 8, !tbaa !680     ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %8
  %13 = load i64, ptr %11, align 8, !tbaa !19
  %14 = shl i64 %13, 1
  %15 = add i64 %14, 2
  call void @_ZdlPvm(ptr noundef %10, i64 noundef %15) #31
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %8, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %16

16:                                               ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %6
  %.pn = phi { i32, i64 } [ %7, %6 ], [ %9, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit ]
  ret { i32, i64 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 281474976710655
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm7Runtime18getCharacterStringEDs:bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i64 1) ; 2 uses
  %i.h = extractvalue { i32, i64 } %i.g, 0
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !44
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm7Runtime18getCharacterStringEDs:bb.a
bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, %bb.b
  %.sroa.02.0 = phi ptr [ %i.f, %bb.b ], [ %i.k, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit ]
  ret ptr %.sroa.02.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) local_unnamed_addr #4 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 6 uses
  %5 = and i64 %2, 4294901760
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %6, label %8, !prof !58

6:                                                ; preds = %3
  %7 = tail call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) #30
  br label %16

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.462") align 8 %4, ptr %1, i64 %2)
  %9 = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #30
  %10 = load ptr, ptr %4, align 8, !tbaa !680     ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %8
  %13 = load i64, ptr %11, align 8, !tbaa !19
  %14 = shl i64 %13, 1
  %15 = add i64 %14, 2
  call void @_ZdlPvm(ptr noundef %10, i64 noundef %15) #31
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %8, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %16

16:                                               ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %6
  %.pn = phi { i32, i64 } [ %7, %6 ], [ %9, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit ]
  ret { i32, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIcEE
declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE15createLongLivedERNS0_7RuntimeEONSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.462") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
end_hunk_6
