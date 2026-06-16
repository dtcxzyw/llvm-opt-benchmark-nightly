inline.NumInlined: 293
inline.NumDeleted: 129
begin_hunk_0_@_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi:bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1352 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq ptr %0, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, %i.y
  %i.ae = select i1 %i.z, i1 %i.aa, i1 %i.ad
  br label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit: ; preds = %bb.b, %bb.c, %_ZNK5boost6system10error_code5valueEv.exit.i, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.g, %bb.b ], [ %i.s, %_ZNK5boost6system10error_code5valueEv.exit.i ], [ false, %bb.c ], [ false, %bb.d ], [ %i.ae, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5boost6system14error_category6failedEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5boost6system6detail22generic_error_category4nameEv(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @.str.12
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !1364
  %i.b = call noundef ptr @strerror_r(i32 noundef %2, ptr noundef nonnull %i.a, i64 noundef 128) #18, !noalias !1364 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1367, !alias.scope !1364
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !1370

.noexc11.i.i:                                     ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !1371, !alias.scope !1364
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1360, !alias.scope !1364
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !1360
  store i8 %i.l, ptr %i.k, align 1, !tbaa !1360
  br label %_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei.exit

_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !1373, !alias.scope !1364
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !1360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !1364
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5boost6system6detail22generic_error_category7messageEiPcm(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @strerror_r(i32 noundef %1, ptr noundef %2, i64 noundef %3) #18
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly2fs11starts_withERKN5boost10filesystem4pathES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !1367
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !1373
  store i8 0, ptr %i.a, align 8, !tbaa !1360
  %i.c = invoke fastcc noundef zeroext i1 @_ZN5folly2fs12_GLOBAL__N_110skipPrefixERKN5boost10filesystem4pathES6_RNS3_11path_detail13path_iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1371   ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !1360
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %i.c

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !1371   ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !1360
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit5

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN5folly2fs12_GLOBAL__N_110skipPrefixERKN5boost10filesystem4pathES6_RNS3_11path_detail13path_iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::filesystem::path", align 8 ; 10 uses
  %4 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 15 uses
  %5 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 13 uses
  %6 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 10 uses
  %7 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 8 uses
  %8 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNK5boost10filesystem4path5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !1371   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %4, align 8, !tbaa !1371   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1373 ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  switch i64 %i.h, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.d, align 1, !tbaa !1360
  store i8 %i.j, ptr %i.a, align 1, !tbaa !1360
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.k = load i64, ptr %i.g, align 8, !tbaa !1373 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !1373
  %i.m = load ptr, ptr %2, align 8, !tbaa !1371
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !1360
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !1371
  br label %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %2, align 8, !tbaa !1371
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !1360
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !1360
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !1360
  store ptr %i.d, ptr %2, align 8, !tbaa !1371
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !1360
  store <2 x i64> %i.u, ptr %i.t, align 8, !tbaa !1360
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.a, ptr %4, align 8, !tbaa !1371
  store i64 %i.r, ptr %i.e, align 8, !tbaa !1360
  br label %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.e, ptr %4, align 8, !tbaa !1371
  br label %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit

_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.e, %bb.f
  %9 = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.a, %bb.e ], [ %i.e, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !1373
  store i8 0, ptr %9, align 1, !tbaa !1360
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = load ptr, ptr %4, align 8, !tbaa !1371   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !1360
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNK5boost10filesystem4path5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNK5boost10filesystem4path3endEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit.preheader unwind label %bb.g

_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit.preheader: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit

_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit: ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit.preheader, %bb.v
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !1374
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !1374
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = load i64, ptr %i.af, align 8
  %i.av = load i64, ptr %i.ag, align 8
  %i.aw = icmp eq i64 %i.au, %i.av
  %.not3.i.not = select i1 %i.at, i1 %i.aw, i1 false ; 2 uses
  br i1 %.not3.i.not, label %.thread, label %bb.i

bb.g:                                             ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit57

bb.h:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZNK5boost10filesystem4path3endEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !1374
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !1374
  %i.bb = icmp eq ptr %i.az, %i.ba
  %i.bc = load i64, ptr %i.ai, align 8
  %i.bd = load i64, ptr %i.aj, align 8
  %i.be = icmp eq i64 %i.bc, %i.bd
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1371  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ak
  br i1 %i.bh, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %bb.j
  %i.bi = load i64, ptr %i.ak, align 8, !tbaa !1360
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.bf, label %.thread, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

bb.l:                                             ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.al, ptr %3, align 8, !tbaa !1367
  store i64 0, ptr %i.am, align 8, !tbaa !1373
  store i8 0, ptr %i.al, align 8, !tbaa !1360
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit: ; preds = %bb.l
  %i.bm = invoke noundef i32 @_ZN5boost10filesystem6detail15path_algorithms10compare_v3ERKNS0_4pathES5_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK5boost10filesystem4path10compare_opclEPKcS4_PKSt7codecvtIwc11__mbstate_tE.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %3, align 8, !tbaa !1371  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.al
  br i1 %i.bp, label %_ZN5boost10filesystem4pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %bb.m
  %i.bq = load i64, ptr %i.al, align 8, !tbaa !1360
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #22
  br label %_ZN5boost10filesystem4pathD2Ev.exit

_ZN5boost10filesystem4pathD2Ev.exit:              ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

_ZNK5boost10filesystem4path10compare_opclEPKcS4_PKSt7codecvtIwc11__mbstate_tE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit
  %i.bs = load ptr, ptr %3, align 8, !tbaa !1371  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.al
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNK5boost10filesystem4path10compare_opclEPKcS4_PKSt7codecvtIwc11__mbstate_tE.exit
  %i.bu = load i64, ptr %i.al, align 8, !tbaa !1360
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36: ; preds = %_ZNK5boost10filesystem4path10compare_opclEPKcS4_PKSt7codecvtIwc11__mbstate_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.bw = icmp eq i32 %i.bm, 0
  br i1 %i.bw, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  store ptr %i.an, ptr %8, align 8, !tbaa !1367, !alias.scope !1378
  %i.bx = load ptr, ptr %2, align 8, !tbaa !1371, !noalias !1378 ; 2 uses
  %i.by = load i64, ptr %i.ao, align 8, !tbaa !1373, !noalias !1378 ; 8 uses
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %bb.o, label %._crit_edge.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ca = icmp slt i64 %i.by, 0
  br i1 %i.ca, label %.noexc.i.i.i.i, label %bb.p

.noexc.i.i.i.i:                                   ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cb = add nuw i64 %i.by, 1                    ; 2 uses
  %i.cc = icmp slt i64 %i.cb, 0
  br i1 %i.cc, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !1370

.noexc6.i.i.i.i:                                  ; preds = %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #19
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #20
          to label %.noexc39 unwind label %.loopexit ; 2 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.cd, ptr %8, align 8, !tbaa !1371, !alias.scope !1378
  store i64 %i.by, ptr %i.an, align 8, !tbaa !1360, !alias.scope !1378
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc39, %bb.n
  %i.ce = phi ptr [ %i.cd, %.noexc39 ], [ %i.an, %bb.n ] ; 3 uses
  switch i64 %i.by, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !1360
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !1360
  br label %_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.bx, i64 %i.by, i1 false)
  br label %_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i

_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i.i
  store i64 %i.by, ptr %i.ap, align 8, !tbaa !1373, !alias.scope !1378
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.by
  store i8 0, ptr %i.cg, align 1, !tbaa !1360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  invoke void @_ZN5boost10filesystem6detail15path_algorithms12increment_v3ERNS0_11path_detail13path_iteratorE(ptr noundef nonnull align 8 dereferenceable(48) %2)
end_hunk_0
