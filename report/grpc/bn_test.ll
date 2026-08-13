inline.NumInlined: 8860
inline.NumDeleted: 853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_121BNTest_RandRange_Test8TestBodyEv:bb.a

bb.cr:                                            ; preds = %.thread260, %bb.cq
  invoke void @BN_free(ptr noundef nonnull %i.d)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #22
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i195 = icmp eq ptr %i.c, null
  br i1 %.not.i195, label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit196, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit.thread, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit
  invoke void @BN_free(ptr noundef nonnull %i.c)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit196 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #22
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit196: ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.cv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit189, %bb.by
  %.pn76.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit189 ], [ %.pn67.pn.pn.pn.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.ap, %_ZN7testing7MessageD2Ev.exit122, %_ZN7testing7MessageD2Ev.exit100
  %.pn76.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn, %bb.cv ], [ %.pn57.pn.pn.pn, %bb.ap ], [ %.pn53.pn.pn, %_ZN7testing7MessageD2Ev.exit122 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit100 ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.c
  %.pn76.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn, %bb.cw ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn76.pn.pn.pn.pn.pn.pn
}

declare i32 @BN_rand_range_ex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_116BNTest_ASN1_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_116BNTest_ASN1_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_116BNTest_ASN1_TestE, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_116BNTest_ASN1_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_16BNTestE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_16BNTestD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @BN_CTX_free(ptr noundef nonnull %i.b)
          to label %_ZN12_GLOBAL__N_16BNTestD2Ev.exit unwind label %bb.c, !inline_history !19

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22, !inline_history !19
  unreachable

_ZN12_GLOBAL__N_16BNTestD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %0) #21, !inline_history !19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_116BNTest_ASN1_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 12 uses
  %2 = alloca %"class.std::unique_ptr.87", align 8 ; 8 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::unique_ptr.87", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %struct.cbs_st, align 8            ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.bssl::internal::StackAllocated", align 8 ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::unique_ptr.116", align 8 ; 5 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %38 = alloca %struct.Bytes, align 8             ; 6 uses
  %39 = alloca %struct.Bytes, align 8             ; 6 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %43 = alloca %struct.Bytes, align 8             ; 5 uses
  %44 = alloca %"class.std::unique_ptr.87", align 8 ; 6 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %struct.cbs_st, align 8            ; 6 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %51 = alloca %"class.testing::Message", align 8 ; 8 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::unique_ptr.87", align 8 ; 5 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.bssl::internal::StackAllocated", align 8 ; 8 uses
  %60 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %61 = alloca %"class.testing::Message", align 8 ; 7 uses
  %62 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %65 = alloca %"class.testing::Message", align 8 ; 8 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit407
  %.0.add = add nuw nsw i64 %.0.idx663, 24        ; 2 uses
  %.not = icmp eq i64 %.0.add, 168
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  br label %bb.fa

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0.idx663 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.b ] ; 2 uses
  %.0.ptr664 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_110kASN1TestsE, i64 %.0.idx663 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.aa = load ptr, ptr %.0.ptr664, align 8, !tbaa !381 ; 2 uses
  call void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2, i32 noundef 1423, ptr noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !383
  store ptr null, ptr %i.b, align 8, !tbaa !73, !noalias !383
  %i.ab = invoke i32 @BN_asc2bn(ptr noundef nonnull %i.b, ptr noundef %i.aa)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = load ptr, ptr %i.b, align 8, !noalias !383 ; 6 uses
  %storemerge.i = select i1 %.not.i, ptr null, ptr %i.ac ; 2 uses
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !73, !alias.scope !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ad = icmp ne ptr %storemerge.i, null         ; 2 uses
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %3, align 8, !tbaa !20
  store ptr null, ptr %i.g, align 8, !tbaa !30
  br i1 %i.ad, label %bb.q, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.529, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %6, align 8, !tbaa !31
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1425, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  %i.ah = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !36
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.am = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(128) %i.am) #21, !call_target !39, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !49  ; 4 uses
  %.not.i.i240 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i240, label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit410, label %bb.k

bb.k:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.au = load i64, ptr %i.as, align 8, !tbaa !36
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #23
  br label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit410

bb.l:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit246

bb.m:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

bb.n:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.ay, %bb.n ] ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.p
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !36
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %.pn, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bf = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  %.not.i.i244 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i244, label %_ZN7testing7MessageD2Ev.exit246, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #21, !call_target !39, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit246

_ZN7testing7MessageD2Ev.exit246:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.es

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bj = invoke ptr @BN_new()
          to label %bb.r unwind label %bb.s       ; 6 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.bj, ptr %7, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bk = icmp ne ptr %i.bj, null                 ; 2 uses
  %i.bl = zext i1 %i.bk to i8
  store i8 %i.bl, ptr %8, align 8, !tbaa !20
  store ptr null, ptr %i.h, align 8, !tbaa !30
  br i1 %i.bk, label %bb.ae, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.545, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bn = load ptr, ptr %11, align 8, !tbaa !31
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1429, ptr noundef %i.bn)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  %i.bo = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

end_hunk_0
