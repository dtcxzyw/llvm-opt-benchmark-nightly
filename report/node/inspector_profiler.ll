inline.NumInlined: 3536
inline.NumDeleted: 1374
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #30 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1
  store i8 %i.o, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8
  store i64 %.0, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

declare { ptr, i64 } @uv_buf_init(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN4node13WriteFileSyncEPKc8uv_buf_t(ptr noundef, ptr, i64) local_unnamed_addr #5

declare ptr @_ZNK4node14PrincipalRealm23source_map_cache_getterEv(ptr noundef nonnull align 8 dereferenceable(864)) unnamed_addr #5

declare void @_ZN2v88TryCatchC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4node8profiler14StartProfilersEPNS_11EnvironmentEEN3$_08__invokeEPv"(ptr noundef readonly captures(none) %0) #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.99, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2587
  %i.c = load i8, ptr %i.b, align 1, !range !26, !noundef !40
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i.i, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.e, i64 2, ptr nonnull @.str.100, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
  br label %_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i.i

_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i.i
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(136) %i.g) #28, !inline_history !298
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not12.i.i = icmp eq ptr %i.l, null
  br i1 %.not12.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(136) %i.l) #28, !inline_history !298
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not13.i.i = icmp eq ptr %i.q, null
  br i1 %.not13.i.i, label %"_ZZN4node8profiler14StartProfilersEPNS_11EnvironmentEENK3$_0clEPv.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(136) %i.q) #28, !inline_history !298
  br label %"_ZZN4node8profiler14StartProfilersEPNS_11EnvironmentEENK3$_0clEPv.exit"

"_ZZN4node8profiler14StartProfilersEPNS_11EnvironmentEENK3$_0clEPv.exit": ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

declare void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not76 = icmp eq i64 %1, 0
  br i1 %.not76, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %19 = ptrtoint ptr %i.d to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.f = add nuw i64 %21, 1                       ; 3 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.h = phi i64 [ %i.k, %.critedge2 ], [ %i.f, %bb.b ] ; 4 uses
  %.077 = phi i64 [ %i.h, %.critedge2 ], [ %21, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !300

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.077, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.l = icmp eq i64 %.lcssa, %1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !301
  %i.o = load ptr, ptr %6, align 8, !noalias !301
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !301
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !301
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.r, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.v = load ptr, ptr %10, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.aa = load ptr, ptr %9, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa108 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !304
  %i.af = load ptr, ptr %6, align 8, !noalias !304
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !304
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ai = icmp ugt i64 %.lcssa108, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa108, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa108
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa108
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.al = load ptr, ptr %12, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.aq = load ptr, ptr %11, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.112, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #28
  store i64 %i.ax, ptr %13, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.112, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #28
  store i64 %i.bc, ptr %14, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i41, ptr @.str.112, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #28
  store i64 %i.bh, ptr %15, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i44, ptr @.str.112, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #28
  store i64 %i.bm, ptr %17, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bp = load ptr, ptr %16, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
end_hunk_0
begin_hunk_1_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
  %i.ar = load i64, ptr %i.g, align 8
  store i64 %i.ar, ptr %i.al, align 8
  %.pre15 = load i64, ptr %i.a, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8
  store ptr %i.g, ptr %1, align 8
  store i64 0, ptr %i.a, align 8
  store i8 0, ptr %i.g, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = sub i64 9223372036854775807, %i.b
  %i.d = icmp ult i64 %i.c, %.sroa.0.0.copyload.i
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.e = add i64 %i.b, %.sroa.0.0.copyload.i      ; 3 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %.not.i.i.i = icmp ugt i64 %i.e, %i.k
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %.sroa.4.0.copyload.i, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.sroa.4.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef %.sroa.4.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.e, ptr %i.a, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  store i8 0, ptr %i.o, align 1
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = icmp ugt i64 %i.c, 15
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.c, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread7.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.c, ptr %i.e, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 8
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f, %.thread7.i.i
  %i.k = phi ptr [ %i.j, %.thread7.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.c, i1 false)
  br label %.lr.ph.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.m, align 1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %.ph = phi ptr [ %i.k, %bb.h ], [ %i.e, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.c
  store i8 0, ptr %i.o, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4node7ToUpperEc.exit
  %.013 = phi i64 [ %i.ae, %_ZN4node7ToUpperEc.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01012 = phi ptr [ %i.ad, %_ZN4node7ToUpperEc.exit ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i8, ptr %.01012, align 1
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #28
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #28
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #28, !inline_history !310
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !311

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %5 = icmp eq i64 %i.e, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %5
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.j

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.63) #29
  unreachable

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.h = icmp ugt i64 %1, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %1, 1                        ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %._crit_edge.i.i.i.i.thread42, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

._crit_edge.i.i.i.i.thread42:                     ; preds = %bb.f
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 2 uses
  store ptr %i.l, ptr %0, align 8
  store i64 %1, ptr %i.f, align 8
  br label %bb.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %2, align 1
  store i8 %i.m, ptr %i.f, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.thread42, %._crit_edge.i.i.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i.i.i.thread42 ], [ %i.f, %._crit_edge.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %2, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i.thread, %bb.h, %bb.i
  %i.o = phi ptr [ %i.a, %._crit_edge.i.i.i.i.thread ], [ %i.n, %bb.i ], [ %i.f, %bb.h ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %1
  store i8 0, ptr %i.q, align 1
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.r = add nuw i64 %i.e, 1                      ; 7 uses
  %i.s = icmp ult i64 %i.r, %1
  br i1 %i.s, label %bb.l, label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 37
  br i1 %i.v, label %bb.n, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args_0) #28
  tail call void @abort() #29
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.w, ptr %3, align 8
  %i.x = icmp ugt i64 %i.e, 14
  br i1 %i.x, label %bb.o, label %._crit_edge.i.i.i.i10

bb.o:                                             ; preds = %bb.n
  %i.y = icmp slt i64 %i.r, 0
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.z = add nuw i64 %i.e, 2                      ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11: ; preds = %bb.q
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #30 ; 2 uses
  store ptr %i.ab, ptr %3, align 8
  store i64 %i.r, ptr %i.w, align 8
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11, %bb.n
  %i.ac = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11 ], [ %i.w, %bb.n ] ; 3 uses
  %cond31 = icmp eq ptr %i.b, %2
  br i1 %cond31, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i10
  %i.ad = load i8, ptr %2, align 1
  store i8 %i.ad, ptr %i.ac, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12

bb.t:                                             ; preds = %._crit_edge.i.i.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12: ; preds = %bb.s, %bb.t
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.r
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ag = add nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.ah = sub nuw i64 %1, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.ah, ptr nonnull %i.ai)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.aj = load ptr, ptr %4, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.w, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

end_hunk_1
begin_hunk_2_@_ZN4node11Environment22set_coverage_directoryEPKc:bb.a
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 2 uses
  store ptr %i.h, ptr %2, align 8
  store i64 %i.c, ptr %i.a, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %2, align 8                ; 6 uses
  %i.r = icmp eq ptr %i.q, %i.a                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  br i1 %i.r, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  br i1 %i.r, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = load i64, ptr %i.k, align 8              ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %.not21.i = icmp eq ptr %2, %i.m
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  switch i64 %i.s, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.u = load i8, ptr %i.q, align 1
  store i8 %i.u, ptr %i.n, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.v = load i64, ptr %i.k, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1760
  store i64 %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1760
  store ptr %i.q, ptr %i.m, align 8
  %i.aa = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.aa, ptr %i.z, align 8
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ab = load i64, ptr %i.o, align 8
  store ptr %i.q, ptr %i.m, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.ad = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.ad, ptr %i.ac, align 8
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %2, align 8
  store i64 %i.ab, ptr %i.a, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.a, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.ae = phi ptr [ %i.n, %bb.n ], [ %i.a, %bb.o ], [ %i.q, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.k, align 8
  store i8 0, ptr %i.ae, align 1
  %i.af = load ptr, ptr %2, align 8               ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.a, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN4node14PrincipalRealm27set_source_map_cache_getterEN2v85LocalINS1_8FunctionEEE(ptr noundef nonnull align 8 dereferenceable(864), ptr) unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRA3_KcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(3) %3) local_unnamed_addr #10 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJRA3_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(3) %3) #33
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRA3_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(3) %3) local_unnamed_addr #10 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRA3_KcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(3) %3) #33
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRA3_KcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(3) %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not72 = icmp eq i64 %1, 0
  br i1 %.not72, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRA3_KcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.073 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !337

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.073, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !338
  %i.n = load ptr, ptr %6, align 8, !noalias !338
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !338
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !338
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRA3_KcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 1 dereferenceable(3) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa104 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !341
  %i.ae = load ptr, ptr %6, align 8, !noalias !341
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !341
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa104, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa104, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa104
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa104
  call void @_ZN4node11SPrintFImplIRA3_KcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 1 dereferenceable(3) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.au = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %3) #28
  store i64 %i.au, ptr %13, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %3, ptr %i.av, align 8
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %3) #28
  store i64 %i.ax, ptr %14, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %3, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %3) #28
  store i64 %i.ba, ptr %15, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %3, ptr %i.bb, align 8
  %i.bc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.bd = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %3) #28
  store i64 %i.bd, ptr %17, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %3, ptr %i.be, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.bf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bg = load ptr, ptr %16, align 8              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.j
  %i.bj = load i64, ptr %i.bh, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.aq, align 8
  store ptr %i.ar, ptr %i.af, align 8
  %i.as = load ptr, ptr %i.ap, align 8
  store ptr %i.af, ptr %i.as, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  store ptr %i.au, ptr %i.af, align 8
  store ptr %i.af, ptr %i.at, align 8
  %.not11.i.i = icmp eq ptr %i.au, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.ad, align 8
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = urem i64 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ay
  store ptr %i.af, ptr %i.az, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = phi ptr [ %.pre, %bb.m ], [ %i.ao, %bb.l ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0.i17
  store ptr %i.at, ptr %i.bb, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %bb.k
  %i.bc = load i64, ptr %i.a, align 8
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.a, align 8
  br label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit

_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.af, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.0, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.031, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.031, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !352

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #31
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #10 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #33
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #10 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #33
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.081 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !353

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.081, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.n
    i8 120, label %bb.o
    i8 88, label %bb.p
    i8 112, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !354
  %i.n = load ptr, ptr %6, align 8, !noalias !354
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !354
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa122 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !357
  %i.ae = load ptr, ptr %6, align 8, !noalias !357
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !357
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !357
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa122, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa122, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa122
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa122
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.au, ptr %13, align 8, !alias.scope !366
  %i.av = load ptr, ptr %3, align 8, !noalias !366 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !366 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #30 ; 2 uses
  store ptr %i.bc, ptr %13, align 8, !alias.scope !366
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !366
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  switch i64 %i.ax, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %i.av, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !366
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_3
begin_hunk_4_@_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_:bb.a
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !383
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !383
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.b, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !383
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = icmp ugt i64 %i.c, 15
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.c, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread7.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.c, ptr %i.e, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 8
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f, %.thread7.i.i
  %i.k = phi ptr [ %i.j, %.thread7.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.c, i1 false)
  br label %.lr.ph.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.m, align 1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %.ph = phi ptr [ %i.k, %bb.h ], [ %i.e, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.c
  store i8 0, ptr %i.o, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4node7ToUpperEc.exit
  %.013 = phi i64 [ %i.ae, %_ZN4node7ToUpperEc.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.06.012 = phi ptr [ %i.ad, %_ZN4node7ToUpperEc.exit ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i8, ptr %.sroa.06.012, align 1
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #28
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #28
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #28, !inline_history !310
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %i.af = icmp eq ptr %i.ad, %i.d
  br i1 %i.af, label %._crit_edge, label %.lr.ph, !llvm.loop !384

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvP8_IO_FILES4_DpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #10 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS3_SaIcEEES4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #33
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS3_SaIcEEES4_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #10 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplISt17basic_string_viewIcSt11char_traitsIcEEJEEENSt7__cxx1112basic_stringIcS3_SaIcEEES4_OT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #33
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplISt17basic_string_viewIcSt11char_traitsIcEEJEEENSt7__cxx1112basic_stringIcS3_SaIcEEES4_OT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not78 = icmp eq i64 %1, 0
  br i1 %.not78, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplISt17basic_string_viewIcSt11char_traitsIcEEJEEENSt7__cxx1112basic_stringIcS3_SaIcEEES4_OT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.079 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !385

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.079, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !386
  %i.n = load ptr, ptr %6, align 8, !noalias !386
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !386
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !386
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplISt17basic_string_viewIcSt11char_traitsIcEEJEEENSt7__cxx1112basic_stringIcS3_SaIcEEES4_OT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(16) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa110 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !389
  %i.ae = load ptr, ptr %6, align 8, !noalias !389
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !389
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !389
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa110, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa110, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa110
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa110
  call void @_ZN4node11SPrintFImplISt17basic_string_viewIcSt11char_traitsIcEEJEEENSt7__cxx1112basic_stringIcS3_SaIcEEES4_OT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %13, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.au, align 8
  %i.av = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %14, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.aw, align 8
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %.sroa.0.0.copyload.i.i39 = load i64, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i41 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i40, align 8
  store i64 %.sroa.0.0.copyload.i.i39, ptr %15, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.2.0.copyload.i.i41, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %.sroa.0.0.copyload.i.i44 = load i64, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i46 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i45, align 8
  store i64 %.sroa.0.0.copyload.i.i44, ptr %17, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.2.0.copyload.i.i46, ptr %i.ba, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.bb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bc = load ptr, ptr %16, align 8              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.j
  %i.bf = load i64, ptr %i.bd, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplISt17basic_string_viewIcSt11char_traitsIcEEJEEENSt7__cxx1112basic_stringIcS3_SaIcEEES4_OT_DpOT0_E20error_and_abort_args_0) #28
  call void @abort() #29
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.bh = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bi = icmp ugt i64 %i.bh, %1
  br i1 %i.bi, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.bh, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55: ; preds = %bb.l
  %i.bj = sub nuw i64 %1, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.bj, ptr %i.bk)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !392
  %i.bn = load ptr, ptr %6, align 8, !noalias !392
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.bn, i64 noundef %i.bm), !noalias !392 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bp, ptr %0, align 8, !alias.scope !392
  %i.bq = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55
  store ptr %i.bq, ptr %0, align 8, !alias.scope !392
  %i.bx = load i64, ptr %i.br, align 8
  store i64 %i.bx, ptr %i.bp, align 8, !alias.scope !392
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.by = phi i64 [ %i.bu, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !alias.scope !392
  store ptr %i.br, ptr %i.bo, align 8
  store i64 0, ptr %i.bz, align 8
  store i8 0, ptr %i.br, align 8
  %i.cb = load ptr, ptr %18, align 8              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.ce = load i64, ptr %i.cc, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cg = load ptr, ptr %6, align 8               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.o
  %i.cj = load i64, ptr %i.ch, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.081 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !395

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.081, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !396
  %i.n = load ptr, ptr %6, align 8, !noalias !396
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !396
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !399
  %i.ae = load ptr, ptr %6, align 8, !noalias !399
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !399
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa120, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
end_hunk_4
begin_hunk_5_@_ZN4node12ToBaseStringILj4EmEEDaRKT0_:bb.a
bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #30 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !alias.scope !409
  store i64 %i.j, ptr %i.i, align 8, !alias.scope !409
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  switch i64 %i.j, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4EmvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.g, align 1, !noalias !409
  store i8 %i.q, ptr %i.p, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EmvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.g, i64 %i.j, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EmvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4EmvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.r, align 8, !alias.scope !409
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !409
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.b = icmp ult i64 %i.a, 10
  br i1 %i.b, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !413
  br label %bb.j

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.02229.i.i = phi i64 [ %i.j, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.k, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.d = icmp ult i64 %.02229.i.i, 100
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.j = udiv i64 %.02229.i.i, 10000
  %i.k = add i32 %.02328.i.i, 4                   ; 2 uses
  %i.l = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !102

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ %i.k, %bb.g ] ; 3 uses
  %i.m = zext i32 %.0.i.i to i64                  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !413
  %i.o = icmp ugt i32 %.0.i.i, 15
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.p = add nuw nsw i64 %i.m, 1
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !413
  store i64 %i.m, ptr %i.n, align 8, !alias.scope !413
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.0.i.i, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %.thread.i
  %i.r = phi ptr [ %i.c, %.thread.i ], [ %i.n, %bb.i ] ; 2 uses
  store i8 0, ptr %i.r, align 1, !alias.scope !413
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.n, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = phi i64 [ 0, %bb.i ], [ 1, %bb.j ], [ %i.m, %bb.k ] ; 2 uses
  %i.u = phi ptr [ %i.n, %bb.i ], [ %i.r, %bb.j ], [ %i.s, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.v, align 8, !alias.scope !413
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.w, align 1
  %i.x = load ptr, ptr %0, align 8, !alias.scope !413 ; 4 uses
  %i.y = icmp ugt i64 %i.a, 99
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.z = load i64, ptr %i.v, align 8, !alias.scope !413
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.aa, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ao, %.lr.ph.i2.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ac = urem i64 %.020.i.i, 100
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !413
  %i.ai = zext i32 %.01819.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.af, align 2, !noalias !413
  %i.al = add i32 %.01819.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1
  %i.ao = add i32 %.01819.i.i, -2
  %i.ap = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ap, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !103

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ae, %.lr.ph.i2.i ] ; 3 uses
  %i.aq = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ar = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !noalias !413
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = load i8, ptr %i.as, align 2, !noalias !413
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ax = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ay = or disjoint i8 %i.ax, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.l, %bb.m
  %storemerge.i.i = phi i8 [ %i.ay, %bb.m ], [ %i.aw, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.x, align 1
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIiJRmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not86 = icmp eq i64 %1, 0
  br i1 %.not86, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 5 uses
  %.not = icmp eq i64 %23, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIiJRmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.e = add nuw i64 %23, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.087 = phi i64 [ %i.g, %.critedge2 ], [ %23, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !416

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %23, %bb.b ], [ %.087, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !417
  %i.n = load ptr, ptr %8, align 8, !noalias !417
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !417
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !417
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIiJRmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa126 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !420
  %i.ae = load ptr, ptr %8, align 8, !noalias !420
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !420
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !420
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ah = icmp ugt i64 %.lcssa126, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa126, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa126
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa126
  call void @_ZN4node11SPrintFImplIiJRmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.av = load ptr, ptr %15, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bb = load ptr, ptr %16, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bh = load ptr, ptr %17, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
end_hunk_5
begin_hunk_6_@_ZN4node11SPrintFImplIiJRmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_:bb.a
bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cw = load ptr, ptr %8, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.b = load i32, ptr %1, align 4, !noalias !426
  %i.c = sext i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !426
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  store i8 0, ptr %i.d, align 1, !noalias !426
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = trunc i64 %.0.i to i8
  %i.f = and i8 %i.e, 7
  %i.g = or disjoint i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !noalias !426
  %i.i = lshr i64 %.0.i, 3                        ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !429

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !426
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #28, !noalias !426 ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !426
  store i64 %i.k, ptr %i.j, align 8, !alias.scope !426
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj3EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !noalias !426
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj3EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj3EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj3EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.s, align 8, !alias.scope !426
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !426
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.b = load i32, ptr %1, align 4, !noalias !430
  %i.c = sext i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !430
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  store i8 0, ptr %i.d, align 1, !noalias !430
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = and i64 %.0.i, 15
  %i.f = getelementptr inbounds nuw i8, ptr @.str.157, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !noalias !430
  %i.h = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !noalias !430
  %i.i = lshr i64 %.0.i, 4                        ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !433

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !430
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #28, !noalias !430 ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !430
  store i64 %i.k, ptr %i.j, align 8, !alias.scope !430
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !noalias !430
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.s, align 8, !alias.scope !430
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !430
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRmJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.e = add nuw i64 %22, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.084 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !434

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.084, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !435
  %i.n = load ptr, ptr %7, align 8, !noalias !435
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !435
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !435
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !438
  %i.ae = load ptr, ptr %7, align 8, !noalias !438
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !438
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !438
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa123, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRmJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
end_hunk_6
begin_hunk_7_@_ZN4node11SPrintFImplIRmJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !441
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %19, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 false) ; 5 uses
  %i.c = icmp ult i32 %i.b, 10
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.02230.i.i = phi i32 [ %i.j, %bb.g ], [ %i.b, %bb.a ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.k, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.d = icmp ult i32 %.02230.i.i, 100
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.j = udiv i32 %.02230.i.i, 10000
  %i.k = add i32 %.02329.i.i, 4                   ; 2 uses
  %i.l = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !329

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ 1, %bb.a ], [ %i.k, %bb.g ] ; 2 uses
  %.lobit.i = lshr i32 %i.a, 31                   ; 2 uses
  %i.m = add i32 %.0.i.i, %.lobit.i               ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.o, ptr %0, align 8, !alias.scope !444
  %i.p = icmp ugt i32 %i.m, 15
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.q = add nuw nsw i64 %i.n, 1
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !alias.scope !444
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !444
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.m, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.o, align 8, !alias.scope !444
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.r, %bb.h ], [ %i.o, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 45, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = phi ptr [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %i.s, %bb.k ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.u, align 8, !alias.scope !444
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 0, ptr %i.v, align 1
  %i.w = zext nneg i32 %.lobit.i to i64
  %i.x = load ptr, ptr %0, align 8, !alias.scope !444
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w ; 4 uses
  %i.z = icmp ugt i32 %i.b, 99
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.aa = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ad, %.lr.ph.i11.i ], [ %i.b, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ao, %.lr.ph.i11.i ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ab = urem i32 %.020.i.i, 100
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !444
  %i.ai = zext i32 %.01819.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.af, align 2, !noalias !444
  %i.al = add i32 %.01819.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1
  %i.ao = add i32 %.01819.i.i, -2
  %i.ap = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ap, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !331

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ad, %.lr.ph.i11.i ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ar = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !noalias !444
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = load i8, ptr %i.at, align 2, !noalias !444
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ay = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.l, %bb.m
  %storemerge.i.i = phi i8 [ %i.az, %bb.m ], [ %i.ax, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.y, align 1
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.081 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !447

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.081, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !448
  %i.n = load ptr, ptr %6, align 8, !noalias !448
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !448
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !451
  %i.ae = load ptr, ptr %6, align 8, !noalias !451
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !451
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !451
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa120, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bn = load ptr, ptr %16, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.bs = load ptr, ptr %17, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #28
  call void @abort() #29
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.bx, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.bz, ptr %i.ca)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !454
  %i.cd = load ptr, ptr %6, align 8, !noalias !454
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !454 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !454
  %i.cg = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57
  store ptr %i.cg, ptr %0, align 8, !alias.scope !454
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !454
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !454
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %18, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cw = load ptr, ptr %6, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void
}

declare ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2v812api_internal12ToLocalEmptyEv() local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRbEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #10 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJRbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #33
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #10 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRbJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #33
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRbJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !299
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !299

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRbJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.082 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !457

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.082, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !458
  %i.n = load ptr, ptr %6, align 8, !noalias !458
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !458
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRbJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 1 dereferenceable(1) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa122 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !461
  %i.ae = load ptr, ptr %6, align 8, !noalias !461
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !461
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !461
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa122, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %.lcssa122, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa122
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa122
  call void @_ZN4node11SPrintFImplIRbJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %3) #33
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.au = load i8, ptr %3, align 1, !range !26, !noalias !464, !noundef !40
  %i.av = trunc nuw i8 %i.au to i1                ; 3 uses
  %i.aw = select i1 %i.av, ptr @.str.71, ptr @.str.72
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.ax, ptr %13, align 8, !alias.scope !467
  %i.ay = select i1 %i.av, i64 4, i64 5           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.ax, ptr noundef nonnull align 1 dereferenceable(4) %i.aw, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !alias.scope !467
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.av, i64 20, i64 21
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %13, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !alias.scope !467
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.bb = load ptr, ptr %13, align 8              ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ax
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.bd = load i64, ptr %i.ax, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node12ToBaseStringILj3EbEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.bf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bg = load ptr, ptr %14, align 8              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.bj = load i64, ptr %i.bh, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj4EbEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.bl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bm = load ptr, ptr %15, align 8              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
end_hunk_7
