Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/file?download=true
inline.NumInlined: 2099
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4pbrt11ThreadLocalIP23libdeflate_decompressorE3GetEv:bb.a

declare i32 @libdeflate_gzip_decompress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA10_KcRA20_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(20) %5, ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !38, !alias.scope !134
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !134
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !134
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA10_KcJRA20_S2_S4_RmS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(20) %5, ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA10_KcRA20_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !22, !alias.scope !134 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !134
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA10_KcRA20_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !22
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcRA20_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcRA20_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !22    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !38, !alias.scope !137
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !137
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !137
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !22, !alias.scope !137 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !137
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !22
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA10_KcRA3_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(3) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !38, !alias.scope !140
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !140
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !140
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA10_KcJRA3_S2_S4_RiS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(3) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA10_KcRA3_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !22, !alias.scope !140 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !140
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA10_KcRA3_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !22
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcRA3_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcRA3_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !22    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noalias noundef ptr @_ZN4pbrt9FOpenReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call noalias ptr @fopen(ptr noundef %i.a, ptr noundef nonnull @.str.16)
  ret ptr %i.b
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noalias noundef ptr @_ZN4pbrt10FOpenWriteENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call noalias ptr @fopen(ptr noundef %i.a, ptr noundef nonnull @.str.17)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt13ReadFloatFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.12") align 8 captures(none) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !38
  %i.i = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.k, ptr %i.a, align 8, !tbaa !40
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !22
  %i.n = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.n, ptr %i.h, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !23
  store i8 %i.p, ptr %i.o, align 1, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !39
  %i.s = load ptr, ptr %4, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.u = load ptr, ptr %4, align 8, !tbaa !22
  %i.v = call noalias noundef ptr @fopen(ptr noundef %i.u, ptr noundef nonnull @.str.16) ; 4 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.h, align 8, !tbaa !23
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = icmp eq ptr %i.v, null
  br i1 %i.aa, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !38, !alias.scope !146
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !39, !alias.scope !146
  store i8 0, ptr %i.ab, align 8, !tbaa !23, !alias.scope !146
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !22, !alias.scope !146 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ab
  br i1 %i.af, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !23, !alias.scope !146
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %_ZNSt6vectorIfSaIfEED2Ev.exit52
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit52 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %3, align 8, !tbaa !22
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.ai)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.aj = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ab
  br i1 %i.ak, label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #28
  br label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit

bb.h:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.aq

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i32 1, ptr %i.d, align 4, !tbaa !42
  br label %.outer

.outer:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %bb.i
  %.sroa.14.0.ph = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ null, %bb.i ] ; 6 uses
  %.sroa.10.0.ph = phi ptr [ %.sroa.10.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ null, %bb.i ] ; 4 uses
  %.sroa.053.0.ph = phi ptr [ %.sroa.053.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ null, %bb.i ] ; 12 uses
  br label %.outer178

.outer178:                                        ; preds = %.outer178.backedge, %.outer
  %.026.ph = phi i1 [ false, %.outer ], [ true, %.outer178.backedge ]
  %.0.ph = phi i32 [ 0, %.outer ], [ %.0.ph.be, %.outer178.backedge ] ; 7 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.outer178
  %.026 = phi i1 [ %.026.ph, %.outer178 ], [ false, %.backedge ]
  %i.as = call i32 @getc(ptr noundef nonnull %i.v) ; 9 uses
  store i32 %i.as, ptr %i.b, align 4, !tbaa !42
  switch i32 %i.as, label %bb.m [
    i32 -1, label %.thread
    i32 10, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.d, align 4, !tbaa !42
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.d, align 4, !tbaa !42
  br label %bb.m

bb.l:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.j, %bb.k
  br i1 %.026, label %bb.n, label %bb.ag

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp samesign ugt i32 %.0.ph, 31
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4pbrt8LogFatalIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvNS_8LogLevelEPKciSB_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 244, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #31
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %isdigittmp35 = add i32 %i.as, -48
  %isdigit36 = icmp ult i32 %isdigittmp35, 10
  br i1 %isdigit36, label %bb.r, label %switch.early.test

switch.early.test:                                ; preds = %bb.q
  switch i32 %i.as, label %bb.w [
    i32 101, label %bb.r
    i32 69, label %bb.r
    i32 46, label %bb.r
    i32 45, label %bb.r
    i32 43, label %bb.r
  ]

bb.r:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  store i32 %.0.ph, ptr %i.e, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 32, ptr %i.f, align 8, !tbaa !40
  %i.ax = icmp samesign ult i32 %.0.ph, 32
  br i1 %i.ax, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4pbrt8LogFatalIJRA13_KcRA18_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 249, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(13) @.str.20, ptr noundef nonnull align 1 dereferenceable(18) @.str.21, ptr noundef nonnull align 1 dereferenceable(13) @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(18) @.str.21, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #31
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %.body

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  %i.az = trunc nuw nsw i32 %i.as to i8
  %i.ba = zext nneg i32 %.0.ph to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !23
  br label %.outer178.backedge

.outer178.backedge:                               ; preds = %bb.v, %bb.ah
  %.0.ph.be = add nuw nsw i32 %.0.ph, 1
  br label %.outer178, !llvm.loop !143

bb.w:                                             ; preds = %switch.early.test
  %i.bc = zext nneg i32 %.0.ph to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #29
  %i.bf = invoke noundef zeroext i1 @_ZN4pbrt4AtofESt17basic_string_viewIcSt11char_traitsIcEEPf(i64 %i.be, ptr nonnull %i.c, ptr noundef nonnull %i.g)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  br i1 %i.bf, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_cEEEvPKcDpOT_(ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(32) %i.c) #31
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  unreachable

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %bb.w, %bb.ad, %bb.y
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  br label %.body

bb.aa:                                            ; preds = %bb.x
  %.not.i = icmp eq ptr %.sroa.10.0.ph, %.sroa.14.0.ph
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = load float, ptr %i.g, align 4, !tbaa !148
  store float %i.bg, ptr %.sroa.10.0.ph, align 4, !tbaa !148
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bh = ptrtoint ptr %.sroa.14.0.ph to i64
  %i.bi = ptrtoint ptr %.sroa.053.0.ph to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %bb.ad, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.bl = ashr exact i64 %i.bj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 2305843009213693951)
  %i.bp = select i1 %i.bn, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #32
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  %i.bt = load float, ptr %i.g, align 4, !tbaa !148
  store float %i.bt, ptr %i.bs, align 4, !tbaa !148
  %i.bu = icmp sgt i64 %i.bj, 0
  br i1 %i.bu, label %bb.ae, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.ae:                                            ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %.sroa.053.0.ph, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.ae, %.noexc43
  %.not.i17.i.i = icmp eq ptr %.sroa.053.0.ph, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.ph, i64 noundef %i.bj) #28
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.ab
  %.sroa.14.3 = phi ptr [ %i.bv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.14.0.ph, %bb.ab ]
  %.pn65 = phi ptr [ %i.bs, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.10.0.ph, %bb.ab ]
  %.sroa.053.3 = phi ptr [ %i.br, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.053.0.ph, %bb.ab ]
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn65, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  br label %.outer, !llvm.loop !143

bb.ag:                                            ; preds = %bb.m
  %isdigittmp = add i32 %i.as, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ah, label %switch.early.test39

switch.early.test39:                              ; preds = %bb.ag
  switch i32 %i.as, label %bb.aj [
    i32 46, label %bb.ah
    i32 45, label %bb.ah
    i32 43, label %bb.ah
    i32 35, label %.preheader
  ]

bb.ah:                                            ; preds = %switch.early.test39, %switch.early.test39, %switch.early.test39, %bb.ag
  %i.bw = trunc nuw nsw i32 %i.as to i8
  %i.bx = zext nneg i32 %.0.ph to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bx
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !23
  br label %.outer178.backedge

.preheader:                                       ; preds = %switch.early.test39, %.preheader
  %i.bz = call i32 @getc(ptr noundef nonnull %i.v) ; 2 uses
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !42
  switch i32 %i.bz, label %.preheader [
    i32 -1, label %bb.ai
    i32 10, label %bb.ai
  ]

bb.ai:                                            ; preds = %.preheader, %.preheader
  %i.ca = load i32, ptr %i.d, align 4, !tbaa !42
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !42
  br label %.backedge

bb.aj:                                            ; preds = %switch.early.test39
  %i.cc = call i32 @isspace(i32 noundef %i.as) #30
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ak, label %.backedge

.backedge:                                        ; preds = %bb.aj, %bb.ai
  br label %bb.j, !llvm.loop !143

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ce, ptr %2, align 8, !tbaa !38, !alias.scope !149
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cf, align 8, !tbaa !39, !alias.scope !149
  store i8 0, ptr %i.ce, align 8, !tbaa !23, !alias.scope !149
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRiS9_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_EEES6_PKcDpOT_.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %2, align 8, !tbaa !22, !alias.scope !149 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ce
  br i1 %i.ci, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44: ; preds = %bb.al
  %i.cj = load i64, ptr %i.ce, align 8, !tbaa !23, !alias.scope !149
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #28
  br label %.body

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_EEES6_PKcDpOT_.exit.i: ; preds = %bb.ak
  %i.cl = load ptr, ptr %2, align 8, !tbaa !22
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.cl)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_EEES6_PKcDpOT_.exit.i
  %i.cm = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ce
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.am
  %i.co = load i64, ptr %i.ce, align 8, !tbaa !23
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49

bb.an:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_EEES6_PKcDpOT_.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ce
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.an
  %i.ct = load i64, ptr %i.ce, align 8, !tbaa !23
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body

.thread:                                          ; preds = %bb.j
  %i.cv = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  store ptr %.sroa.053.0.ph, ptr %0, align 8, !tbaa !152
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.ph, ptr %i.cw, align 8, !tbaa !153
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0.ph, ptr %i.cx, align 8, !tbaa !154
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.not.i.i.i50 = icmp eq ptr %.sroa.053.0.ph, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49
  %i.cy = ptrtoint ptr %.sroa.14.0.ph to i64
  %i.cz = ptrtoint ptr %.sroa.053.0.ph to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.ph, i64 noundef %i.da) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.aq

.body:                                            ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %bb.l, %.loopexit.split-lp.loopexit.split-lp, %bb.u
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp177, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ay, %bb.u ], [ %i.av, %bb.l ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44 ], [ %i.cg, %bb.al ]
  %.not.i.i.i51 = icmp eq ptr %.sroa.053.0.ph, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIfSaIfEED2Ev.exit52, label %bb.ap

bb.ap:                                            ; preds = %.body
  %i.db = ptrtoint ptr %.sroa.14.0.ph to i64
  %i.dc = ptrtoint ptr %.sroa.053.0.ph to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0.ph, i64 noundef %i.dd) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit52

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %.body, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %common.resume

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvNS_8LogLevelEPKciSB_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !38, !alias.scope !157
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !157
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !157
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRiEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEES6_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %6, align 8, !tbaa !22, !alias.scope !157 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !157
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEES6_PKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %6, align 8, !tbaa !22
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEES6_PKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEES6_PKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %6, align 8, !tbaa !22     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA13_KcRA18_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !38, !alias.scope !160
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !160
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !160
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA13_KcJRA18_S2_S4_RiS6_RmEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA13_KcRA18_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !22, !alias.scope !160 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !160
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA13_KcRA18_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !22
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA13_KcRA18_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA13_KcRA18_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !22    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume
}

declare noundef zeroext i1 @_ZN4pbrt4AtofESt17basic_string_viewIcSt11char_traitsIcEEPf(i64, ptr, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_cEEEvPKcDpOT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !38, !alias.scope !163
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !163
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !163
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA32_cEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(32) %2)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_cEEES6_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !22, !alias.scope !163 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !163
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_cEEES6_PKcDpOT_.exit: ; preds = %bb.a
end_hunk_0
