Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/asn1_test?download=true
inline.NumInlined: 10932
inline.NumDeleted: 1587
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN21ASN1Test_AdjTime_Test8TestBodyEv:bb.a

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i384: ; preds = %bb.ho
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !20
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(128) %i.tf) #22, !call_target !62, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit385

_ZN7testing7MessageD2Ev.exit385:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i384, %bb.ho, %bb.hl
  %.pn117.pn = phi { ptr, i32 } [ %i.tc, %bb.hl ], [ %.pn117, %bb.ho ], [ %.pn117, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i384 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  br label %bb.hr

bb.hp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit377, %_ZN7testing7MessageD2Ev.exit382
  %i.tj = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !63 ; 4 uses
  %.not.i.i386 = icmp eq ptr %i.tk, null
  br i1 %.not.i.i386, label %_ZN7testing15AssertionResultD2Ev.exit390, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !52 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 16 ; 2 uses
  %i.tn = icmp eq ptr %i.tl, %i.tm
  br i1 %i.tn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i387: ; preds = %bb.hq
  %i.to = load i64, ptr %i.tm, align 8, !tbaa !53
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.tp) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i388

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i388: ; preds = %bb.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i387
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit390

_ZN7testing15AssertionResultD2Ev.exit390:         ; preds = %bb.hp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.hr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit385, %_ZN7testing7MessageD2Ev.exit371, %_ZN7testing7MessageD2Ev.exit357, %_ZN7testing7MessageD2Ev.exit340, %_ZN7testing7MessageD2Ev.exit326, %_ZN7testing7MessageD2Ev.exit312, %_ZN7testing7MessageD2Ev.exit295, %_ZN7testing7MessageD2Ev.exit278, %_ZN7testing7MessageD2Ev.exit264, %_ZN7testing7MessageD2Ev.exit250, %_ZN7testing7MessageD2Ev.exit233, %_ZN7testing7MessageD2Ev.exit219, %_ZN7testing7MessageD2Ev.exit207, %_ZN7testing7MessageD2Ev.exit190, %_ZN7testing7MessageD2Ev.exit173, %_ZN7testing7MessageD2Ev.exit156, %_ZN7testing7MessageD2Ev.exit139, %_ZN7testing7MessageD2Ev.exit126
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %_ZN7testing7MessageD2Ev.exit385 ], [ %.pn114.pn, %_ZN7testing7MessageD2Ev.exit371 ], [ %.pn110.pn.pn, %_ZN7testing7MessageD2Ev.exit357 ], [ %.pn107.pn, %_ZN7testing7MessageD2Ev.exit340 ], [ %.pn104.pn, %_ZN7testing7MessageD2Ev.exit326 ], [ %.pn100.pn.pn, %_ZN7testing7MessageD2Ev.exit312 ], [ %.pn96.pn.pn, %_ZN7testing7MessageD2Ev.exit295 ], [ %.pn93.pn, %_ZN7testing7MessageD2Ev.exit278 ], [ %.pn90.pn, %_ZN7testing7MessageD2Ev.exit264 ], [ %.pn86.pn.pn, %_ZN7testing7MessageD2Ev.exit250 ], [ %.pn83.pn, %_ZN7testing7MessageD2Ev.exit233 ], [ %.pn80.pn, %_ZN7testing7MessageD2Ev.exit219 ], [ %.pn76.pn.pn, %_ZN7testing7MessageD2Ev.exit207 ], [ %.pn72.pn.pn, %_ZN7testing7MessageD2Ev.exit190 ], [ %.pn68.pn.pn, %_ZN7testing7MessageD2Ev.exit173 ], [ %.pn63.pn.pn, %_ZN7testing7MessageD2Ev.exit156 ], [ %.pn59.pn.pn, %_ZN7testing7MessageD2Ev.exit139 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn117.pn.pn
}

declare i32 @OPENSSL_posix_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @OPENSSL_gmtime_adj(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

declare i32 @OPENSSL_gmtime_diff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27ASN1Test_StringPrintEx_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %1 = alloca [51 x %struct.anon.64], align 16    ; 591 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %27 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %28 = alloca %struct.Bytes, align 8             ; 6 uses
  %29 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %30 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %31 = alloca %"class.std::unique_ptr.32", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.std::unique_ptr.65", align 8 ; 6 uses
  %47 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %48 = alloca %"class.testing::Message", align 8 ; 7 uses
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %52 = alloca %"class.testing::Message", align 8 ; 7 uses
  %53 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %54 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %55 = alloca %"class.testing::Message", align 8 ; 7 uses
  %56 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %60 = alloca %"class.testing::Message", align 8 ; 7 uses
  %61 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %62 = alloca [8 x %struct.anon.71], align 16    ; 92 uses
  %63 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %64 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %65 = alloca %struct.Bytes, align 8             ; 6 uses
  %66 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %67 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %68 = alloca %"class.std::unique_ptr.32", align 8 ; 6 uses
  %69 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %70 = alloca %"class.testing::Message", align 8 ; 7 uses
  %71 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %73 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %74 = alloca %"class.testing::Message", align 8 ; 7 uses
  %75 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.p = alloca i32, align 4                      ; 9 uses
  %77 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %78 = alloca %"class.testing::Message", align 8 ; 7 uses
  %79 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %80 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %81 = alloca %"class.testing::Message", align 8 ; 7 uses
  %82 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %83 = alloca %"class.std::unique_ptr.65", align 8 ; 5 uses
  %84 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %85 = alloca %"class.testing::Message", align 8 ; 7 uses
  %86 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %88 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %89 = alloca %"class.testing::Message", align 8 ; 7 uses
  %90 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i32 20, ptr %1, align 16, !tbaa !856
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.u, ptr noundef nonnull align 1 dereferenceable(5) @.str.307, i64 5, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 5, ptr %i.v, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.w, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !alias.scope !857
  %.sink3126.sroa.gep = getelementptr inbounds nuw i8, ptr %62, i64 72
  %.sink3126.sroa.gep3265 = getelementptr inbounds nuw i8, ptr %62, i64 120
  %.sink3126.sroa.gep3266 = getelementptr inbounds nuw i8, ptr %62, i64 216
  %.sink3126.sroa.gep3267 = getelementptr inbounds nuw i8, ptr %62, i64 312
  %.sink3126.sroa.gep3268 = getelementptr inbounds nuw i8, ptr %62, i64 264
  %.sink3126.sroa.gep3269 = getelementptr inbounds nuw i8, ptr %62, i64 168
  %.sink3126.sroa.gep3270 = getelementptr inbounds nuw i8, ptr %62, i64 360
  %i.x = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i895 unwind label %bb.bv ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i895: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  store ptr %i.x, ptr %i.t, align 8, !tbaa !73, !alias.scope !857
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !74, !alias.scope !857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.u, i64 5, i1 false), !tbaa !53, !noalias !857
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.y, ptr %i.aa, align 16, !tbaa !75, !alias.scope !857
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.ab, align 16, !tbaa !858
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !859
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.ae, ptr noundef nonnull align 1 dereferenceable(5) @.str.307, i64 5, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 5, ptr %i.af, align 8, !tbaa !89
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 69
  store i8 0, ptr %i.ag, align 1, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store i32 20, ptr %i.ah, align 16, !tbaa !856
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aj, ptr noundef nonnull align 1 dereferenceable(5) @.str.307, i64 5, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.ak, align 8, !tbaa !89
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.al, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !860
  %i.am = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i911 unwind label %bb.bw ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i911: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i895
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !73, !alias.scope !860
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !74, !alias.scope !860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.aj, i64 5, i1 false), !tbaa !53, !noalias !860
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.an, ptr %i.ap, align 16, !tbaa !75, !alias.scope !860
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 0, ptr %i.aq, align 16, !tbaa !858
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 7, ptr %i.ar, align 8, !tbaa !859
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  store ptr %i.at, ptr %i.as, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.at, ptr noundef nonnull align 1 dereferenceable(5) @.str.307, i64 5, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 5, ptr %i.au, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 149
  store i8 0, ptr %i.av, align 1, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store i32 20, ptr %i.aw, align 16, !tbaa !856
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) @.str.307, i64 5, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.az, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.ba, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false), !alias.scope !861
  %i.bb = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #26
          to label %._crit_edge.i.i917 unwind label %bb.bx ; 3 uses

._crit_edge.i.i917:                               ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i911
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !73, !alias.scope !861
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !74, !alias.scope !861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(5) %i.ay, i64 5, i1 false), !tbaa !53, !noalias !861
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.bc, ptr %i.be, align 16, !tbaa !75, !alias.scope !861
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i32 0, ptr %i.bf, align 16, !tbaa !858
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 15, ptr %i.bg, align 8, !tbaa !859
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  store ptr %i.bi, ptr %i.bh, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.bi, ptr noundef nonnull align 1 dereferenceable(5) @.str.307, i64 5, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 5, ptr %i.bj, align 8, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 229
  store i8 0, ptr %i.bk, align 1, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 5 uses
  store i32 20, ptr %i.bl, align 16, !tbaa !856
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bn = invoke noalias noundef nonnull dereferenceable(11) ptr @_Znwm(i64 noundef 11) #26
          to label %bb.c unwind label %bb.a       ; 6 uses

bb.a:                                             ; preds = %._crit_edge.i.i917
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i4.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit1760, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1760

bb.c:                                             ; preds = %._crit_edge.i.i917
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 11 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !74
  store <8 x i8> <i8 0, i8 10, i8 -128, i8 -1, i8 44, i8 43, i8 34, i8 92>, ptr %i.bn, align 1
  %.sroa.122358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 60, ptr %.sroa.122358.0..sroa_idx, align 1
  %.sroa.132359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  store i8 62, ptr %.sroa.132359.0..sroa_idx, align 1
  %.sroa.142360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  store i8 59, ptr %.sroa.142360.0..sroa_idx, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.bv, ptr %i.bx, align 16, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i32 0, ptr %i.by, align 16, !tbaa !858
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 0, ptr %i.bz, align 8, !tbaa !859
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ca, ptr %5, align 8, !tbaa !88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 1, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1754.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !89, !noalias !862
  %i.ce = add i64 %i.cd, -4611686018427387894
  %i.cf = icmp ult i64 %i.ce, 10
  br i1 %i.cf, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.635) #25
          to label %.noexc922 unwind label %.body926.thread

.noexc922:                                        ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.308, i64 noundef 10)
          to label %.noexc923 unwind label %.body926.thread ; 6 uses

.noexc923:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  store ptr %i.ch, ptr %i.cb, align 16, !tbaa !88, !alias.scope !862
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !52 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc923
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !89 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc923
  store ptr %i.ci, ptr %i.cb, align 16, !tbaa !52, !alias.scope !862
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !53
  store i64 %i.cp, ptr %i.ch, align 16, !tbaa !53, !alias.scope !862
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.cq = phi i64 [ %i.cm, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !89, !alias.scope !862
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !52
  store i64 0, ptr %i.cr, align 8, !tbaa !89
  store i8 0, ptr %i.cj, align 8, !tbaa !53
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  store i32 20, ptr %i.ct, align 16, !tbaa !856
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  %i.cv = invoke noalias noundef nonnull dereferenceable(11) ptr @_Znwm(i64 noundef 11) #26
          to label %bb.i unwind label %bb.g       ; 6 uses

bb.g:                                             ; preds = %bb.f
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i924 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i4.i924, label %.body926, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !74
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #23
  br label %.body926

bb.i:                                             ; preds = %bb.f
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 11 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !74
  store <8 x i8> <i8 0, i8 10, i8 -128, i8 -1, i8 44, i8 43, i8 34, i8 92>, ptr %i.cv, align 1
  %.sroa.122345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 60, ptr %.sroa.122345.0..sroa_idx, align 1
  %.sroa.132346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 9
  store i8 62, ptr %.sroa.132346.0..sroa_idx, align 1
  %.sroa.142347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  store i8 59, ptr %.sroa.142347.0..sroa_idx, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.dd, ptr %i.df, align 16, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i32 0, ptr %i.dg, align 16, !tbaa !858
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 1, ptr %i.dh, align 8, !tbaa !859
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.di, ptr %6, align 8, !tbaa !88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 1, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit930 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1748.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit930: ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !89, !noalias !863
  %i.dm = add i64 %i.dl, -4611686018427387887
  %i.dn = icmp ult i64 %i.dm, 17
  br i1 %i.dn, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i931

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit930
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.635) #25
          to label %.noexc935 unwind label %.body940.thread

.noexc935:                                        ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i931: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit930
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.309, i64 noundef 17)
          to label %.noexc936 unwind label %.body940.thread ; 6 uses

.noexc936:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i931
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  store ptr %i.dp, ptr %i.dj, align 16, !tbaa !88, !alias.scope !863
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !52 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 5 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i932

bb.k:                                             ; preds = %.noexc936
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !89 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.dw, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i932: ; preds = %.noexc936
  store ptr %i.dq, ptr %i.dj, align 16, !tbaa !52, !alias.scope !863
end_hunk_0
begin_hunk_1_@_ZN27ASN1Test_StringPrintEx_Test8TestBodyEv:_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  store i8 0, ptr %i.fv, align 8, !tbaa !53
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 5 uses
  store i32 20, ptr %i.gf, align 16, !tbaa !856
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  %i.gh = invoke noalias noundef nonnull dereferenceable(11) ptr @_Znwm(i64 noundef 11) #26
          to label %.noexc.i967 unwind label %bb.u ; 6 uses

bb.u:                                             ; preds = %bb.t
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i961 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i4.i961, label %.body963, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !74
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #23
  br label %.body963

.noexc.i967:                                      ; preds = %bb.t
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !73
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 11 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !74
  store <8 x i8> <i8 0, i8 10, i8 -128, i8 -1, i8 44, i8 43, i8 34, i8 92>, ptr %i.gh, align 1
  %.sroa.122306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i8 60, ptr %.sroa.122306.0..sroa_idx, align 1
  %.sroa.132307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 9
  store i8 62, ptr %.sroa.132307.0..sroa_idx, align 1
  %.sroa.142308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 10
  store i8 59, ptr %.sroa.142308.0..sroa_idx, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr %i.gp, ptr %i.gr, align 16, !tbaa !75
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i32 0, ptr %i.gs, align 16, !tbaa !858
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i64 7, ptr %i.gt, align 8, !tbaa !859
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  store ptr %i.gv, ptr %i.gu, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i64 26, ptr %i.h, align 8, !tbaa !90
  %i.gw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc968 unwind label %bb.dc ; 2 uses

.noexc968:                                        ; preds = %.noexc.i967
  store ptr %i.gw, ptr %i.gu, align 16, !tbaa !52
  %i.gx = load i64, ptr %i.h, align 8, !tbaa !90  ; 3 uses
  store i64 %i.gx, ptr %i.gv, align 16, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.gw, ptr noundef nonnull align 1 dereferenceable(26) @.str.312, i64 26, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 616
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !89
  %i.gz = load ptr, ptr %i.gu, align 16, !tbaa !52
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  store i8 0, ptr %i.ha, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 5 uses
  store i32 20, ptr %i.hb, align 16, !tbaa !856
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i8 0, i64 24, i1 false)
  %i.hd = invoke noalias noundef nonnull dereferenceable(11) ptr @_Znwm(i64 noundef 11) #26
          to label %.noexc.i976 unwind label %bb.w ; 6 uses

bb.w:                                             ; preds = %.noexc968
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i970 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i4.i970, label %.body963, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !74
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #23
  br label %.body963

.noexc.i976:                                      ; preds = %.noexc968
  store ptr %i.hd, ptr %i.hc, align 8, !tbaa !73
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 11 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !74
  store <8 x i8> <i8 0, i8 10, i8 -128, i8 -1, i8 44, i8 43, i8 34, i8 92>, ptr %i.hd, align 1
  %.sroa.122293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i8 60, ptr %.sroa.122293.0..sroa_idx, align 1
  %.sroa.132294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 9
  store i8 62, ptr %.sroa.132294.0..sroa_idx, align 1
  %.sroa.142295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 10
  store i8 59, ptr %.sroa.142295.0..sroa_idx, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 656
  store ptr %i.hl, ptr %i.hn, align 16, !tbaa !75
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 672
  store i32 0, ptr %i.ho, align 16, !tbaa !858
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 680
  store i64 15, ptr %i.hp, align 8, !tbaa !859
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  store ptr %i.hr, ptr %i.hq, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i64 23, ptr %i.g, align 8, !tbaa !90
  %i.hs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc977 unwind label %bb.da ; 2 uses

.noexc977:                                        ; preds = %.noexc.i976
  store ptr %i.hs, ptr %i.hq, align 16, !tbaa !52
  %i.ht = load i64, ptr %i.g, align 8, !tbaa !90  ; 3 uses
  store i64 %i.ht, ptr %i.hr, align 16, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.hs, ptr noundef nonnull align 1 dereferenceable(23) @.str.313, i64 23, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !89
  %i.hv = load ptr, ptr %i.hq, align 16, !tbaa !52
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ht
  store i8 0, ptr %i.hw, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 5 uses
  store i32 20, ptr %i.hx, align 16, !tbaa !856
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i8 0, i64 24, i1 false)
  %i.hz = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #26
          to label %.noexc.i985 unwind label %bb.y ; 5 uses

bb.y:                                             ; preds = %.noexc977
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i979 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i4.i979, label %.body963, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !74
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ib to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.ig) #23
  br label %.body963

.noexc.i985:                                      ; preds = %.noexc977
  store ptr %i.hz, ptr %i.hy, align 8, !tbaa !73
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 6 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !74
  store <4 x i8> <i8 0, i8 10, i8 -128, i8 -1>, ptr %i.hz, align 1
  %.sroa.82281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i8 34, ptr %.sroa.82281.0..sroa_idx, align 1
  %.sroa.92282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 5
  store i8 92, ptr %.sroa.92282.0..sroa_idx, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 736
  store ptr %i.ih, ptr %i.ij, align 16, !tbaa !75
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 752
  store i32 0, ptr %i.ik, align 16, !tbaa !858
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 760
  store i64 15, ptr %i.il, align 8, !tbaa !859
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  store ptr %i.in, ptr %i.im, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 16, ptr %i.f, align 8, !tbaa !90
  %i.io = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.im, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i994 unwind label %bb.cy ; 2 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i994: ; preds = %.noexc.i985
  store ptr %i.io, ptr %i.im, align 16, !tbaa !52
  %i.ip = load i64, ptr %i.f, align 8, !tbaa !90  ; 3 uses
  store i64 %i.ip, ptr %i.in, align 16, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.io, ptr noundef nonnull align 1 dereferenceable(16) @.str.314, i64 16, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !89
  %i.ir = load ptr, ptr %i.im, align 16, !tbaa !52
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ip
  store i8 0, ptr %i.is, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  store i32 20, ptr %i.it, align 16, !tbaa !856
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.iv, ptr %8, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.iv, ptr noundef nonnull align 1 dereferenceable(3) @.str.315, i64 3, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %i.iw, align 8, !tbaa !89
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.ix, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i8 0, i64 24, i1 false), !alias.scope !865
  %i.iy = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1010 unwind label %bb.by ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1010: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i994
  store ptr %i.iy, ptr %i.iu, align 8, !tbaa !73, !alias.scope !865
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 3 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 824
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !74, !alias.scope !865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.iy, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.iv, i64 3, i1 false), !tbaa !53, !noalias !865
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 816
  store ptr %i.iz, ptr %i.jb, align 16, !tbaa !75, !alias.scope !865
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i32 0, ptr %i.jc, align 16, !tbaa !858
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 840
  store i64 1, ptr %i.jd, align 8, !tbaa !859
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  store ptr %i.jf, ptr %i.je, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.jf, ptr noundef nonnull align 1 dereferenceable(5) @.str.316, i64 5, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 856
  store i64 5, ptr %i.jg, align 8, !tbaa !89
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 869
  store i8 0, ptr %i.jh, align 1, !tbaa !53
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  store i32 20, ptr %i.ji, align 16, !tbaa !856
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.jk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.jk, ptr %9, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.jk, ptr noundef nonnull align 1 dereferenceable(3) @.str.315, i64 3, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 3, ptr %i.jl, align 8, !tbaa !89
  %i.jm = getelementptr inbounds nuw i8, ptr %9, i64 19
  store i8 0, ptr %i.jm, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i8 0, i64 24, i1 false), !alias.scope !866
  %i.jn = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1026 unwind label %bb.bz ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1026: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1010
  store ptr %i.jn, ptr %i.jj, align 8, !tbaa !73, !alias.scope !866
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 3 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 904
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !74, !alias.scope !866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jn, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.jk, i64 3, i1 false), !tbaa !53, !noalias !866
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 896
  store ptr %i.jo, ptr %i.jq, align 16, !tbaa !75, !alias.scope !866
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 912
  store i32 0, ptr %i.jr, align 16, !tbaa !858
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 920
  store i64 17, ptr %i.js, align 8, !tbaa !859
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 944 ; 2 uses
  store ptr %i.ju, ptr %i.jt, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.ju, ptr noundef nonnull align 1 dereferenceable(5) @.str.316, i64 5, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 936
  store i64 5, ptr %i.jv, align 8, !tbaa !89
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 949
  store i8 0, ptr %i.jw, align 1, !tbaa !53
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  store i32 20, ptr %i.jx, align 16, !tbaa !856
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.jz, ptr %10, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.jz, ptr noundef nonnull align 1 dereferenceable(3) @.str.315, i64 3, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3, ptr %i.ka, align 8, !tbaa !89
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 19
  store i8 0, ptr %i.kb, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, i8 0, i64 24, i1 false), !alias.scope !867
  %i.kc = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1042 unwind label %bb.ca ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1042: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1026
  store ptr %i.kc, ptr %i.jy, align 8, !tbaa !73, !alias.scope !867
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 3 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 984
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !74, !alias.scope !867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kc, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.jz, i64 3, i1 false), !tbaa !53, !noalias !867
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 976
  store ptr %i.kd, ptr %i.kf, align 16, !tbaa !75, !alias.scope !867
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 992
  store i32 0, ptr %i.kg, align 16, !tbaa !858
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 1000
  store i64 9, ptr %i.kh, align 8, !tbaa !859
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  store ptr %i.kj, ptr %i.ki, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.kj, ptr noundef nonnull align 1 dereferenceable(5) @.str.317, i64 5, i1 false)
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 1016
  store i64 5, ptr %i.kk, align 8, !tbaa !89
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 1029
  store i8 0, ptr %i.kl, align 1, !tbaa !53
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 2 uses
  store i32 20, ptr %i.km, align 16, !tbaa !856
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ko, ptr %11, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ko, ptr noundef nonnull align 1 dereferenceable(3) @.str.318, i64 3, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.kp, align 8, !tbaa !89
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.kq, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, i8 0, i64 24, i1 false), !alias.scope !868
  %i.kr = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1058 unwind label %bb.cb ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1058: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1042
  store ptr %i.kr, ptr %i.kn, align 8, !tbaa !73, !alias.scope !868
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 3 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !74, !alias.scope !868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kr, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.ko, i64 3, i1 false), !tbaa !53, !noalias !868
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store ptr %i.ks, ptr %i.ku, align 16, !tbaa !75, !alias.scope !868
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 1072
  store i32 0, ptr %i.kv, align 16, !tbaa !858
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1080
  store i64 1, ptr %i.kw, align 8, !tbaa !859
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  store ptr %i.ky, ptr %i.kx, align 16, !tbaa !88
  store i32 589505372, ptr %i.ky, align 16
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 1096
  store i64 4, ptr %i.kz, align 8, !tbaa !89
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 1108
  store i8 0, ptr %i.la, align 4, !tbaa !53
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  store i32 20, ptr %i.lb, align 16, !tbaa !856
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ld, ptr %12, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ld, ptr noundef nonnull align 1 dereferenceable(3) @.str.318, i64 3, i1 false)
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 3, ptr %i.le, align 8, !tbaa !89
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 19
  store i8 0, ptr %i.lf, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, i8 0, i64 24, i1 false), !alias.scope !869
  %i.lg = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1074 unwind label %bb.cc ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1074: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1058
  store ptr %i.lg, ptr %i.lc, align 8, !tbaa !73, !alias.scope !869
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 3 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 1144
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !74, !alias.scope !869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lg, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.ld, i64 3, i1 false), !tbaa !53, !noalias !869
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 1136
  store ptr %i.lh, ptr %i.lj, align 16, !tbaa !75, !alias.scope !869
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1152
  store i32 0, ptr %i.lk, align 16, !tbaa !858
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 1160
  store i64 9, ptr %i.ll, align 8, !tbaa !859
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  store ptr %i.ln, ptr %i.lm, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.ln, ptr noundef nonnull align 1 dereferenceable(5) @.str.320, i64 5, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i64 5, ptr %i.lo, align 8, !tbaa !89
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 1189
  store i8 0, ptr %i.lp, align 1, !tbaa !53
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 4 uses
  store i32 12, ptr %i.lq, align 16, !tbaa !856
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 1208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.ls = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ls, ptr %13, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ls, ptr noundef nonnull align 1 dereferenceable(9) @.str.321, i64 9, i1 false)
  %i.lt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 9, ptr %i.lt, align 8, !tbaa !89
  %i.lu = getelementptr inbounds nuw i8, ptr %13, i64 25
  store i8 0, ptr %i.lu, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lr, i8 0, i64 24, i1 false), !alias.scope !870
  %i.lv = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #26
          to label %.noexc.i1081 unwind label %bb.cd ; 3 uses

.noexc.i1081:                                     ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1074
  store ptr %i.lv, ptr %i.lr, align 8, !tbaa !73, !alias.scope !870
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 9 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !74, !alias.scope !870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.lv, ptr noundef nonnull readonly align 8 dereferenceable(9) %i.ls, i64 9, i1 false), !tbaa !53, !noalias !870
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store ptr %i.lw, ptr %i.ly, align 16, !tbaa !75, !alias.scope !870
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store i32 0, ptr %i.lz, align 16, !tbaa !858
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store i64 4, ptr %i.ma, align 8, !tbaa !859
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 2 uses
  store ptr %i.mc, ptr %i.mb, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 20, ptr %i.e, align 8, !tbaa !90
  %i.md = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mb, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc1082 unwind label %bb.cw ; 2 uses

.noexc1082:                                       ; preds = %.noexc.i1081
  store ptr %i.md, ptr %i.mb, align 16, !tbaa !52
  %i.me = load i64, ptr %i.e, align 8, !tbaa !90  ; 3 uses
  store i64 %i.me, ptr %i.mc, align 16, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.md, ptr noundef nonnull align 1 dereferenceable(20) @.str.322, i64 20, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 1256
  store i64 %i.me, ptr %i.mf, align 8, !tbaa !89
  %i.mg = load ptr, ptr %i.mb, align 16, !tbaa !52
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.me
  store i8 0, ptr %i.mh, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 3 uses
  store i32 30, ptr %i.mi, align 16, !tbaa !856
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 1288 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mj, i8 0, i64 24, i1 false)
  %i.mk = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #26
          to label %._crit_edge.i.i1089 unwind label %bb.aa ; 5 uses

bb.aa:                                            ; preds = %.noexc1082
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mm = load ptr, ptr %i.mj, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1084 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i4.i1084, label %_ZNSt6vectorIhSaIhEED2Ev.exit1694, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !74
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mm to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mr) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1694

._crit_edge.i.i1089:                              ; preds = %.noexc1082
  store ptr %i.mk, ptr %i.mj, align 8, !tbaa !73
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 6 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 1304
  store ptr %i.ms, ptr %i.mt, align 8, !tbaa !74
  store <4 x i8> <i8 0, i8 97, i8 0, i8 -128>, ptr %i.mk, align 1
  %.sroa.82261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i8 1, ptr %.sroa.82261.0..sroa_idx, align 1
  %.sroa.92262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 5
  store i8 0, ptr %.sroa.92262.0..sroa_idx, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store ptr %i.ms, ptr %i.mu, align 16, !tbaa !75
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 1312
  store i32 0, ptr %i.mv, align 16, !tbaa !858
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 1320
  store i64 4, ptr %i.mw, align 8, !tbaa !859
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 1344 ; 2 uses
  store ptr %i.my, ptr %i.mx, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.my, ptr noundef nonnull align 1 dereferenceable(10) @.str.323, i64 10, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 1336
  store i64 10, ptr %i.mz, align 8, !tbaa !89
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 1354
  store i8 0, ptr %i.na, align 2, !tbaa !53
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 1360 ; 5 uses
  store i32 28, ptr %i.nb, align 16, !tbaa !856
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nc, i8 0, i64 24, i1 false)
  %i.nd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %.noexc.i1099 unwind label %bb.ac ; 3 uses

bb.ac:                                            ; preds = %._crit_edge.i.i1089
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = load ptr, ptr %i.nc, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1093 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i4.i1093, label %_ZNSt6vectorIhSaIhEED2Ev.exit1694, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 1384
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !74
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %i.nf to i64
  %i.nk = sub i64 %i.ni, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nk) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1694

.noexc.i1099:                                     ; preds = %._crit_edge.i.i1089
  store ptr %i.nd, ptr %i.nc, align 8, !tbaa !73
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 2 uses
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !74
  store <16 x i8> <i8 0, i8 0, i8 0, i8 97, i8 0, i8 0, i8 0, i8 -128, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0>, ptr %i.nd, align 1
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 1376
  store ptr %i.nl, ptr %i.nn, align 16, !tbaa !75
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 1392
  store i32 0, ptr %i.no, align 16, !tbaa !858
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 1400
  store i64 4, ptr %i.np, align 8, !tbaa !859
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 1408 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 1424 ; 2 uses
  store ptr %i.nr, ptr %i.nq, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 20, ptr %i.d, align 8, !tbaa !90
  %i.ns = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.nq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1108 unwind label %bb.cu ; 2 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1108: ; preds = %.noexc.i1099
  store ptr %i.ns, ptr %i.nq, align 16, !tbaa !52
  %i.nt = load i64, ptr %i.d, align 8, !tbaa !90  ; 3 uses
  store i64 %i.nt, ptr %i.nr, align 16, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ns, ptr noundef nonnull align 1 dereferenceable(20) @.str.322, i64 20, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 1416
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !89
  %i.nv = load ptr, ptr %i.nq, align 16, !tbaa !52
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nt
  store i8 0, ptr %i.nw, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 2 uses
  store i32 22, ptr %i.nx, align 16, !tbaa !856
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 1448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.nz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.nz, ptr %14, align 8, !tbaa !88
  store i16 -32671, ptr %i.nz, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %i.oa, align 8, !tbaa !89
  %i.ob = getelementptr inbounds nuw i8, ptr %14, i64 18
  store i8 0, ptr %i.ob, align 2, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ny, i8 0, i64 24, i1 false), !alias.scope !871
  %i.oc = invoke noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1124 unwind label %bb.ce ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1124: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1108
  store ptr %i.oc, ptr %i.ny, align 8, !tbaa !73, !alias.scope !871
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 2 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store ptr %i.od, ptr %i.oe, align 8, !tbaa !74, !alias.scope !871
  %i.of = load i16, ptr %i.nz, align 8, !tbaa !53, !noalias !871
  store i16 %i.of, ptr %i.oc, align 1, !tbaa !53, !noalias !871
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 1456
  store ptr %i.od, ptr %i.og, align 16, !tbaa !75, !alias.scope !871
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store i32 0, ptr %i.oh, align 16, !tbaa !858
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 1480
  store i64 20, ptr %i.oi, align 8, !tbaa !859
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 1504 ; 2 uses
  store ptr %i.ok, ptr %i.oj, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.ok, ptr noundef nonnull align 1 dereferenceable(7) @.str.325, i64 7, i1 false)
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i64 7, ptr %i.ol, align 8, !tbaa !89
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 1511
  store i8 0, ptr %i.om, align 1, !tbaa !53
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 2 uses
  store i32 20, ptr %i.on, align 16, !tbaa !856
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 1528 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.op = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.op, ptr %15, align 8, !tbaa !88
  store i16 -32671, ptr %i.op, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.oq, align 8, !tbaa !89
  %i.or = getelementptr inbounds nuw i8, ptr %15, i64 18
  store i8 0, ptr %i.or, align 2, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oo, i8 0, i64 24, i1 false), !alias.scope !872
  %i.os = invoke noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1140 unwind label %bb.cf ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1140: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1124
  store ptr %i.os, ptr %i.oo, align 8, !tbaa !73, !alias.scope !872
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 2 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 1544
  store ptr %i.ot, ptr %i.ou, align 8, !tbaa !74, !alias.scope !872
  %i.ov = load i16, ptr %i.op, align 8, !tbaa !53, !noalias !872
  store i16 %i.ov, ptr %i.os, align 1, !tbaa !53, !noalias !872
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 1536
  store ptr %i.ot, ptr %i.ow, align 16, !tbaa !75, !alias.scope !872
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 1552
  store i32 0, ptr %i.ox, align 16, !tbaa !858
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 1560
  store i64 20, ptr %i.oy, align 8, !tbaa !859
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 2 uses
  store ptr %i.pa, ptr %i.oz, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.pa, ptr noundef nonnull align 1 dereferenceable(7) @.str.325, i64 7, i1 false)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 1576
  store i64 7, ptr %i.pb, align 8, !tbaa !89
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 1591
  store i8 0, ptr %i.pc, align 1, !tbaa !53
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 1600 ; 4 uses
  store i32 12, ptr %i.pd, align 16, !tbaa !856
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 1608 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.pf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.pf, ptr %16, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.pf, ptr noundef nonnull align 1 dereferenceable(9) @.str.321, i64 9, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 9, ptr %i.pg, align 8, !tbaa !89
  %i.ph = getelementptr inbounds nuw i8, ptr %16, i64 25
  store i8 0, ptr %i.ph, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pe, i8 0, i64 24, i1 false), !alias.scope !873
  %i.pi = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #26
          to label %.noexc.i1147 unwind label %bb.cg ; 3 uses

.noexc.i1147:                                     ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1140
  store ptr %i.pi, ptr %i.pe, align 8, !tbaa !73, !alias.scope !873
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 9 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 1624
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !74, !alias.scope !873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.pi, ptr noundef nonnull readonly align 8 dereferenceable(9) %i.pf, i64 9, i1 false), !tbaa !53, !noalias !873
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 1616
  store ptr %i.pj, ptr %i.pl, align 16, !tbaa !75, !alias.scope !873
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store i32 0, ptr %i.pm, align 16, !tbaa !858
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 1640
  store i64 20, ptr %i.pn, align 8, !tbaa !859
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 2 uses
  store ptr %i.pp, ptr %i.po, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 25, ptr %i.c, align 8, !tbaa !90
  %i.pq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.po, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc1148 unwind label %bb.cs ; 2 uses

.noexc1148:                                       ; preds = %.noexc.i1147
  store ptr %i.pq, ptr %i.po, align 16, !tbaa !52
  %i.pr = load i64, ptr %i.c, align 8, !tbaa !90  ; 3 uses
  store i64 %i.pr, ptr %i.pp, align 16, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.pq, ptr noundef nonnull align 1 dereferenceable(25) @.str.326, i64 25, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 1656
  store i64 %i.pr, ptr %i.ps, align 8, !tbaa !89
  %i.pt = load ptr, ptr %i.po, align 16, !tbaa !52
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pr
  store i8 0, ptr %i.pu, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 3 uses
  store i32 30, ptr %i.pv, align 16, !tbaa !856
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 1688 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pw, i8 0, i64 24, i1 false)
  %i.px = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #26
          to label %._crit_edge.i.i1155 unwind label %bb.ae ; 5 uses

bb.ae:                                            ; preds = %.noexc1148
  %i.py = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pz = load ptr, ptr %i.pw, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1150 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i4.i1150, label %_ZNSt6vectorIhSaIhEED2Ev.exit1670, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 1704
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !74
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = ptrtoint ptr %i.pz to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qe) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1670

._crit_edge.i.i1155:                              ; preds = %.noexc1148
  store ptr %i.px, ptr %i.pw, align 8, !tbaa !73
  %i.qf = getelementptr inbounds nuw i8, ptr %i.px, i64 6 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 1704
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !74
  store <4 x i8> <i8 0, i8 97, i8 0, i8 -128>, ptr %i.px, align 1
  %.sroa.82229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  store i8 1, ptr %.sroa.82229.0..sroa_idx, align 1
  %.sroa.92230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.px, i64 5
  store i8 0, ptr %.sroa.92230.0..sroa_idx, align 1
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 1696
  store ptr %i.qf, ptr %i.qh, align 16, !tbaa !75
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 1712
  store i32 0, ptr %i.qi, align 16, !tbaa !858
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store i64 20, ptr %i.qj, align 8, !tbaa !859
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 1744 ; 2 uses
  store ptr %i.ql, ptr %i.qk, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.ql, ptr noundef nonnull align 1 dereferenceable(13) @.str.327, i64 13, i1 false)
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 1736
  store i64 13, ptr %i.qm, align 8, !tbaa !89
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 1757
  store i8 0, ptr %i.qn, align 1, !tbaa !53
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 1760 ; 5 uses
  store i32 28, ptr %i.qo, align 16, !tbaa !856
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 1768 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qp, i8 0, i64 24, i1 false)
  %i.qq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %.noexc.i1165 unwind label %bb.ag ; 3 uses

bb.ag:                                            ; preds = %._crit_edge.i.i1155
  %i.qr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qs = load ptr, ptr %i.qp, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1159 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i4.i1159, label %_ZNSt6vectorIhSaIhEED2Ev.exit1670, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 1784
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !74
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = sub i64 %i.qv, %i.qw
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.qx) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1670

.noexc.i1165:                                     ; preds = %._crit_edge.i.i1155
  store ptr %i.qq, ptr %i.qp, align 8, !tbaa !73
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qq, i64 16 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 1784 ; 2 uses
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !74
  store <16 x i8> <i8 0, i8 0, i8 0, i8 97, i8 0, i8 0, i8 0, i8 -128, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0>, ptr %i.qq, align 1
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 1776
  store ptr %i.qy, ptr %i.ra, align 16, !tbaa !75
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 1792
  store i32 0, ptr %i.rb, align 16, !tbaa !858
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 1800
  store i64 20, ptr %i.rc, align 8, !tbaa !859
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 1808 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 1824 ; 2 uses
  store ptr %i.re, ptr %i.rd, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 25, ptr %i.b, align 8, !tbaa !90
  %i.rf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.rd, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1174 unwind label %bb.cq ; 2 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1174: ; preds = %.noexc.i1165
  store ptr %i.rf, ptr %i.rd, align 16, !tbaa !52
  %i.rg = load i64, ptr %i.b, align 8, !tbaa !90  ; 3 uses
  store i64 %i.rg, ptr %i.re, align 16, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.rf, ptr noundef nonnull align 1 dereferenceable(25) @.str.326, i64 25, i1 false)
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 1816
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !89
  %i.ri = load ptr, ptr %i.rd, align 16, !tbaa !52
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rg
  store i8 0, ptr %i.rj, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 1840 ; 2 uses
  store i32 22, ptr %i.rk, align 16, !tbaa !856
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 1848 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.rm = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.rm, ptr %17, align 8, !tbaa !88
  store i16 -32671, ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %i.rn, align 8, !tbaa !89
  %i.ro = getelementptr inbounds nuw i8, ptr %17, i64 18
  store i8 0, ptr %i.ro, align 2, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rl, i8 0, i64 24, i1 false), !alias.scope !874
  %i.rp = invoke noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1190 unwind label %bb.ch ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1190: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1174
  store ptr %i.rp, ptr %i.rl, align 8, !tbaa !73, !alias.scope !874
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 2 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 1864
  store ptr %i.rq, ptr %i.rr, align 8, !tbaa !74, !alias.scope !874
  %i.rs = load i16, ptr %i.rm, align 8, !tbaa !53, !noalias !874
  store i16 %i.rs, ptr %i.rp, align 1, !tbaa !53, !noalias !874
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 1856
  store ptr %i.rq, ptr %i.rt, align 16, !tbaa !75, !alias.scope !874
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 1872
  store i32 0, ptr %i.ru, align 16, !tbaa !858
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 1880
  store i64 16, ptr %i.rv, align 8, !tbaa !859
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 1888
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 1904 ; 2 uses
  store ptr %i.rx, ptr %i.rw, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.rx, ptr noundef nonnull align 1 dereferenceable(3) @.str.328, i64 3, i1 false)
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 1896
  store i64 3, ptr %i.ry, align 8, !tbaa !89
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 1907
  store i8 0, ptr %i.rz, align 1, !tbaa !53
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 1920 ; 2 uses
  store i32 20, ptr %i.sa, align 16, !tbaa !856
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 1928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.sc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.sc, ptr %18, align 8, !tbaa !88
  store i16 -32671, ptr %i.sc, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.sd, align 8, !tbaa !89
  %i.se = getelementptr inbounds nuw i8, ptr %18, i64 18
  store i8 0, ptr %i.se, align 2, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sb, i8 0, i64 24, i1 false), !alias.scope !875
  %i.sf = invoke noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1206 unwind label %bb.ci ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1206: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1190
  store ptr %i.sf, ptr %i.sb, align 8, !tbaa !73, !alias.scope !875
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 2 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 1944
  store ptr %i.sg, ptr %i.sh, align 8, !tbaa !74, !alias.scope !875
  %i.si = load i16, ptr %i.sc, align 8, !tbaa !53, !noalias !875
  store i16 %i.si, ptr %i.sf, align 1, !tbaa !53, !noalias !875
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 1936
  store ptr %i.sg, ptr %i.sj, align 16, !tbaa !75, !alias.scope !875
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 1952
  store i32 0, ptr %i.sk, align 16, !tbaa !858
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 1960
  store i64 16, ptr %i.sl, align 8, !tbaa !859
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 1968
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 1984 ; 2 uses
  store ptr %i.sn, ptr %i.sm, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.sn, ptr noundef nonnull align 1 dereferenceable(3) @.str.328, i64 3, i1 false)
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 1976
  store i64 3, ptr %i.so, align 8, !tbaa !89
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 1987
  store i8 0, ptr %i.sp, align 1, !tbaa !53
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 2000 ; 2 uses
  store i32 12, ptr %i.sq, align 16, !tbaa !856
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 2008 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ss = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.ss, ptr %19, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ss, ptr noundef nonnull align 1 dereferenceable(9) @.str.321, i64 9, i1 false)
  %i.st = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 9, ptr %i.st, align 8, !tbaa !89
  %i.su = getelementptr inbounds nuw i8, ptr %19, i64 25
  store i8 0, ptr %i.su, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sr, i8 0, i64 24, i1 false), !alias.scope !876
  %i.sv = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #26
          to label %._crit_edge.i.i1212 unwind label %bb.cj ; 3 uses

._crit_edge.i.i1212:                              ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1206
  store ptr %i.sv, ptr %i.sr, align 8, !tbaa !73, !alias.scope !876
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 9 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 2024
  store ptr %i.sw, ptr %i.sx, align 8, !tbaa !74, !alias.scope !876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.sv, ptr noundef nonnull readonly align 8 dereferenceable(9) %i.ss, i64 9, i1 false), !tbaa !53, !noalias !876
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 2016
  store ptr %i.sw, ptr %i.sy, align 16, !tbaa !75, !alias.scope !876
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 2032
  store i32 0, ptr %i.sz, align 16, !tbaa !858
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 2040
  store i64 16, ptr %i.ta, align 8, !tbaa !859
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 2064 ; 2 uses
  store ptr %i.tc, ptr %i.tb, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.tc, ptr noundef nonnull align 1 dereferenceable(9) @.str.321, i64 9, i1 false)
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 2056
  store i64 9, ptr %i.td, align 8, !tbaa !89
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 2073
  store i8 0, ptr %i.te, align 1, !tbaa !53
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 3 uses
  store i32 30, ptr %i.tf, align 16, !tbaa !856
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 2088 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tg, i8 0, i64 24, i1 false)
  %i.th = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #26
          to label %._crit_edge.i.i1221 unwind label %bb.ai ; 5 uses

bb.ai:                                            ; preds = %._crit_edge.i.i1212
  %i.ti = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tj = load ptr, ptr %i.tg, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1216 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i4.i1216, label %_ZNSt6vectorIhSaIhEED2Ev.exit1646, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 2104
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !74
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = ptrtoint ptr %i.tj to i64
  %i.to = sub i64 %i.tm, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.to) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1646

._crit_edge.i.i1221:                              ; preds = %._crit_edge.i.i1212
  store ptr %i.th, ptr %i.tg, align 8, !tbaa !73
  %i.tp = getelementptr inbounds nuw i8, ptr %i.th, i64 6 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 2104
  store ptr %i.tp, ptr %i.tq, align 8, !tbaa !74
  store <4 x i8> <i8 0, i8 97, i8 0, i8 -128>, ptr %i.th, align 1
  %.sroa.82197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  store i8 1, ptr %.sroa.82197.0..sroa_idx, align 1
  %.sroa.92198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.th, i64 5
  store i8 0, ptr %.sroa.92198.0..sroa_idx, align 1
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 2096
  store ptr %i.tp, ptr %i.tr, align 16, !tbaa !75
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store i32 0, ptr %i.ts, align 16, !tbaa !858
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 2120
  store i64 16, ptr %i.tt, align 8, !tbaa !859
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 2144 ; 2 uses
  store ptr %i.tv, ptr %i.tu, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.tv, ptr noundef nonnull align 1 dereferenceable(5) @.str.329, i64 5, i1 false)
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 2136
  store i64 5, ptr %i.tw, align 8, !tbaa !89
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 2149
  store i8 0, ptr %i.tx, align 1, !tbaa !53
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 3 uses
  store i32 28, ptr %i.ty, align 16, !tbaa !856
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tz, i8 0, i64 24, i1 false)
  %i.ua = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %._crit_edge.i.i1230 unwind label %bb.ak ; 3 uses

bb.ak:                                            ; preds = %._crit_edge.i.i1221
  %i.ub = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uc = load ptr, ptr %i.tz, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1225 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i4.i1225, label %_ZNSt6vectorIhSaIhEED2Ev.exit1646, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 2184
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !74
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = ptrtoint ptr %i.uc to i64
  %i.uh = sub i64 %i.uf, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.uh) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1646

._crit_edge.i.i1230:                              ; preds = %._crit_edge.i.i1221
  store ptr %i.ua, ptr %i.tz, align 8, !tbaa !73
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ua, i64 16 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 2184
  store ptr %i.ui, ptr %i.uj, align 8, !tbaa !74
  store <16 x i8> <i8 0, i8 0, i8 0, i8 97, i8 0, i8 0, i8 0, i8 -128, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0>, ptr %i.ua, align 1
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 2176
  store ptr %i.ui, ptr %i.uk, align 16, !tbaa !75
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 2192
  store i32 0, ptr %i.ul, align 16, !tbaa !858
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 2200
  store i64 16, ptr %i.um, align 8, !tbaa !859
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 2224 ; 2 uses
  store ptr %i.uo, ptr %i.un, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.uo, ptr noundef nonnull align 1 dereferenceable(9) @.str.321, i64 9, i1 false)
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 2216
  store i64 9, ptr %i.up, align 8, !tbaa !89
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 2233
  store i8 0, ptr %i.uq, align 1, !tbaa !53
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 2240 ; 3 uses
  store i32 4, ptr %i.ur, align 16, !tbaa !856
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 2248 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.us, i8 0, i64 24, i1 false)
  %i.ut = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1239 unwind label %bb.am ; 3 uses

bb.am:                                            ; preds = %._crit_edge.i.i1230
  %i.uu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uv = load ptr, ptr %i.us, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1234 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i4.i1234, label %_ZNSt6vectorIhSaIhEED2Ev.exit1646, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 2264
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !74
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = ptrtoint ptr %i.uv to i64
  %i.va = sub i64 %i.uy, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef %i.va) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1646

._crit_edge.i.i1239:                              ; preds = %._crit_edge.i.i1230
  store ptr %i.ut, ptr %i.us, align 8, !tbaa !73
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 1 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 2264
  store ptr %i.vb, ptr %i.vc, align 8, !tbaa !74
  store i8 -1, ptr %i.ut, align 1, !tbaa !53
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 2256
  store ptr %i.vb, ptr %i.vd, align 16, !tbaa !75
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 2272
  store i32 0, ptr %i.ve, align 16, !tbaa !858
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 2280
  store i64 0, ptr %i.vf, align 8, !tbaa !859
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 2288
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 2304 ; 2 uses
  store ptr %i.vh, ptr %i.vg, align 16, !tbaa !88
  store i8 -1, ptr %i.vh, align 16, !tbaa !53
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 2296
  store i64 1, ptr %i.vi, align 8, !tbaa !89
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 2305
  store i8 0, ptr %i.vj, align 1, !tbaa !53
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 2320 ; 3 uses
  store i32 -1, ptr %i.vk, align 16, !tbaa !856
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 2328 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vl, i8 0, i64 24, i1 false)
  %i.vm = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1248 unwind label %bb.ao ; 3 uses

bb.ao:                                            ; preds = %._crit_edge.i.i1239
  %i.vn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vo = load ptr, ptr %i.vl, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1243 = icmp eq ptr %i.vo, null
  br i1 %.not.i.i4.i1243, label %_ZNSt6vectorIhSaIhEED2Ev.exit1646, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 2344
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !74
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = ptrtoint ptr %i.vo to i64
  %i.vt = sub i64 %i.vr, %i.vs
  call void @_ZdlPvm(ptr noundef nonnull %i.vo, i64 noundef %i.vt) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1646

._crit_edge.i.i1248:                              ; preds = %._crit_edge.i.i1239
  store ptr %i.vm, ptr %i.vl, align 8, !tbaa !73
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 1 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 2344
  store ptr %i.vu, ptr %i.vv, align 8, !tbaa !74
  store i8 -1, ptr %i.vm, align 1, !tbaa !53
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 2336
  store ptr %i.vu, ptr %i.vw, align 16, !tbaa !75
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 2352
  store i32 0, ptr %i.vx, align 16, !tbaa !858
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 2360
  store i64 0, ptr %i.vy, align 8, !tbaa !859
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 2368
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 2384 ; 2 uses
  store ptr %i.wa, ptr %i.vz, align 16, !tbaa !88
  store i8 -1, ptr %i.wa, align 16, !tbaa !53
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 2376
  store i64 1, ptr %i.wb, align 8, !tbaa !89
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 2385
  store i8 0, ptr %i.wc, align 1, !tbaa !53
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 2400 ; 3 uses
  store i32 100, ptr %i.wd, align 16, !tbaa !856
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 2408 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.we, i8 0, i64 24, i1 false)
  %i.wf = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1257 unwind label %bb.aq ; 3 uses

bb.aq:                                            ; preds = %._crit_edge.i.i1248
  %i.wg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN27ASN1Test_StringPrintEx_Test8TestBodyEv:_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 2864 ; 2 uses
  store ptr %i.aak, ptr %i.aaj, align 16, !tbaa !88
  store i8 -1, ptr %i.aak, align 16, !tbaa !53
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 2856
  store i64 1, ptr %i.aal, align 8, !tbaa !89
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 2865
  store i8 0, ptr %i.aam, align 1, !tbaa !53
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 2880 ; 3 uses
  store i32 28, ptr %i.aan, align 16, !tbaa !856
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 2888 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aao, i8 0, i64 24, i1 false)
  %i.aap = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1311 unwind label %bb.bc ; 3 uses

bb.bc:                                            ; preds = %._crit_edge.i.i1302
  %i.aaq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aar = load ptr, ptr %i.aao, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1306 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i4.i1306, label %_ZNSt6vectorIhSaIhEED2Ev.exit1646, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 2904
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !74
  %i.aau = ptrtoint ptr %i.aat to i64
  %i.aav = ptrtoint ptr %i.aar to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  call void @_ZdlPvm(ptr noundef nonnull %i.aar, i64 noundef %i.aaw) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1646

._crit_edge.i.i1311:                              ; preds = %._crit_edge.i.i1302
  store ptr %i.aap, ptr %i.aao, align 8, !tbaa !73
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aap, i64 1 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %1, i64 2904
  store ptr %i.aax, ptr %i.aay, align 8, !tbaa !74
  store i8 -1, ptr %i.aap, align 1, !tbaa !53
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 2896
  store ptr %i.aax, ptr %i.aaz, align 16, !tbaa !75
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 2912
  store i32 0, ptr %i.aba, align 16, !tbaa !858
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 2920
  store i64 32, ptr %i.abb, align 8, !tbaa !859
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 2928
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 2944 ; 2 uses
  store ptr %i.abd, ptr %i.abc, align 16, !tbaa !88
  store i8 -1, ptr %i.abd, align 16, !tbaa !53
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 2936
  store i64 1, ptr %i.abe, align 8, !tbaa !89
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 2945
  store i8 0, ptr %i.abf, align 1, !tbaa !53
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 2960 ; 3 uses
  store i32 12, ptr %i.abg, align 16, !tbaa !856
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 2968 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abh, i8 0, i64 24, i1 false)
  %i.abi = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1320 unwind label %bb.be ; 3 uses

bb.be:                                            ; preds = %._crit_edge.i.i1311
  %i.abj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abk = load ptr, ptr %i.abh, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1315 = icmp eq ptr %i.abk, null
  br i1 %.not.i.i4.i1315, label %_ZNSt6vectorIhSaIhEED2Ev.exit1646, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 2984
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !74
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = ptrtoint ptr %i.abk to i64
  %i.abp = sub i64 %i.abn, %i.abo
  call void @_ZdlPvm(ptr noundef nonnull %i.abk, i64 noundef %i.abp) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1646

._crit_edge.i.i1320:                              ; preds = %._crit_edge.i.i1311
  store ptr %i.abi, ptr %i.abh, align 8, !tbaa !73
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abi, i64 1 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 2984
  store ptr %i.abq, ptr %i.abr, align 8, !tbaa !74
  store i8 97, ptr %i.abi, align 1, !tbaa !53
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 2976
  store ptr %i.abq, ptr %i.abs, align 16, !tbaa !75
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 2992
  store i32 0, ptr %i.abt, align 16, !tbaa !858
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 3000
  store i64 64, ptr %i.abu, align 8, !tbaa !859
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 3008
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 3024 ; 2 uses
  store ptr %i.abw, ptr %i.abv, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.abw, ptr noundef nonnull align 1 dereferenceable(12) @.str.332, i64 12, i1 false)
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 3016
  store i64 12, ptr %i.abx, align 8, !tbaa !89
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 3036
  store i8 0, ptr %i.aby, align 4, !tbaa !53
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 3040 ; 3 uses
  store i32 -1, ptr %i.abz, align 16, !tbaa !856
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 3048 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aca, i8 0, i64 24, i1 false)
  %i.acb = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1329 unwind label %bb.bg ; 3 uses

bb.bg:                                            ; preds = %._crit_edge.i.i1320
  %i.acc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acd = load ptr, ptr %i.aca, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1324 = icmp eq ptr %i.acd, null
  br i1 %.not.i.i4.i1324, label %_ZNSt6vectorIhSaIhEED2Ev.exit1646, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 3064
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !74
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %i.acd to i64
  %i.aci = sub i64 %i.acg, %i.ach
  call void @_ZdlPvm(ptr noundef nonnull %i.acd, i64 noundef %i.aci) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1646

._crit_edge.i.i1329:                              ; preds = %._crit_edge.i.i1320
  store ptr %i.acb, ptr %i.aca, align 8, !tbaa !73
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acb, i64 1 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %1, i64 3064
  store ptr %i.acj, ptr %i.ack, align 8, !tbaa !74
  store i8 97, ptr %i.acb, align 1, !tbaa !53
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 3056
  store ptr %i.acj, ptr %i.acl, align 16, !tbaa !75
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 3072
  store i32 0, ptr %i.acm, align 16, !tbaa !858
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 3080
  store i64 64, ptr %i.acn, align 8, !tbaa !859
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 3104 ; 2 uses
  store ptr %i.acp, ptr %i.aco, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.acp, ptr noundef nonnull align 1 dereferenceable(11) @.str.333, i64 11, i1 false)
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 3096
  store i64 11, ptr %i.acq, align 8, !tbaa !89
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 3115
  store i8 0, ptr %i.acr, align 1, !tbaa !53
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 3120 ; 3 uses
  store i32 100, ptr %i.acs, align 16, !tbaa !856
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 3128 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.act, i8 0, i64 24, i1 false)
  %i.acu = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1348 unwind label %bb.bi ; 3 uses

bb.bi:                                            ; preds = %._crit_edge.i.i1329
  %i.acv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acw = load ptr, ptr %i.act, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1333 = icmp eq ptr %i.acw, null
  br i1 %.not.i.i4.i1333, label %_ZNSt6vectorIhSaIhEED2Ev.exit1646, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 3144
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !74
  %i.acz = ptrtoint ptr %i.acy to i64
  %i.ada = ptrtoint ptr %i.acw to i64
  %i.adb = sub i64 %i.acz, %i.ada
  call void @_ZdlPvm(ptr noundef nonnull %i.acw, i64 noundef %i.adb) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1646

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1348: ; preds = %._crit_edge.i.i1329
  store ptr %i.acu, ptr %i.act, align 8, !tbaa !73
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acu, i64 1 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 3144
  store ptr %i.adc, ptr %i.add, align 8, !tbaa !74
  store i8 97, ptr %i.acu, align 1, !tbaa !53
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 3136
  store ptr %i.adc, ptr %i.ade, align 16, !tbaa !75
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 3152
  store i32 0, ptr %i.adf, align 16, !tbaa !858
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 3160
  store i64 64, ptr %i.adg, align 8, !tbaa !859
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 3168
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 3184 ; 2 uses
  store ptr %i.adi, ptr %i.adh, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.adi, ptr noundef nonnull align 1 dereferenceable(11) @.str.333, i64 11, i1 false)
  %i.adj = getelementptr inbounds nuw i8, ptr %1, i64 3176
  store i64 11, ptr %i.adj, align 8, !tbaa !89
  %i.adk = getelementptr inbounds nuw i8, ptr %1, i64 3195
  store i8 0, ptr %i.adk, align 1, !tbaa !53
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 3200 ; 2 uses
  store i32 12, ptr %i.adl, align 16, !tbaa !856
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 3208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.adn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.adn, ptr %20, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.adn, ptr noundef nonnull align 1 dereferenceable(3) @.str.334, i64 3, i1 false)
  %i.ado = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 3, ptr %i.ado, align 8, !tbaa !89
  %i.adp = getelementptr inbounds nuw i8, ptr %20, i64 19
  store i8 0, ptr %i.adp, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adm, i8 0, i64 24, i1 false), !alias.scope !877
  %i.adq = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1364 unwind label %bb.ck ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1364: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1348
  store ptr %i.adq, ptr %i.adm, align 8, !tbaa !73, !alias.scope !877
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 3 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 3224
  store ptr %i.adr, ptr %i.ads, align 8, !tbaa !74, !alias.scope !877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.adq, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.adn, i64 3, i1 false), !tbaa !53, !noalias !877
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 3216
  store ptr %i.adr, ptr %i.adt, align 16, !tbaa !75, !alias.scope !877
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 3232
  store i32 0, ptr %i.adu, align 16, !tbaa !858
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 3240
  store i64 256, ptr %i.adv, align 8, !tbaa !859
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 3248
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 3264 ; 2 uses
  store ptr %i.adx, ptr %i.adw, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.adx, ptr noundef nonnull align 1 dereferenceable(6) @.str.335, i64 6, i1 false)
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 3256
  store i64 6, ptr %i.ady, align 8, !tbaa !89
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 3270
  store i8 0, ptr %i.adz, align 2, !tbaa !53
  %i.aea = getelementptr inbounds nuw i8, ptr %1, i64 3280 ; 2 uses
  store i32 12, ptr %i.aea, align 16, !tbaa !856
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 3288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.aec = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.aec, ptr %21, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aec, ptr noundef nonnull align 1 dereferenceable(3) @.str.334, i64 3, i1 false)
  %i.aed = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 3, ptr %i.aed, align 8, !tbaa !89
  %i.aee = getelementptr inbounds nuw i8, ptr %21, i64 19
  store i8 0, ptr %i.aee, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeb, i8 0, i64 24, i1 false), !alias.scope !878
  %i.aef = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1380 unwind label %bb.cl ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1380: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1364
  store ptr %i.aef, ptr %i.aeb, align 8, !tbaa !73, !alias.scope !878
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 3 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 3304
  store ptr %i.aeg, ptr %i.aeh, align 8, !tbaa !74, !alias.scope !878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aef, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.aec, i64 3, i1 false), !tbaa !53, !noalias !878
  %i.aei = getelementptr inbounds nuw i8, ptr %1, i64 3296
  store ptr %i.aeg, ptr %i.aei, align 16, !tbaa !75, !alias.scope !878
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 3312
  store i32 0, ptr %i.aej, align 16, !tbaa !858
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 3320
  store i64 128, ptr %i.aek, align 8, !tbaa !859
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 3344 ; 2 uses
  store ptr %i.aem, ptr %i.ael, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.aem, ptr noundef nonnull align 1 dereferenceable(7) @.str.336, i64 7, i1 false)
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 3336
  store i64 7, ptr %i.aen, align 8, !tbaa !89
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 3351
  store i8 0, ptr %i.aeo, align 1, !tbaa !53
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 3360 ; 2 uses
  store i32 4, ptr %i.aep, align 16, !tbaa !856
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 3368 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.aer = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.aer, ptr %22, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aer, ptr noundef nonnull align 1 dereferenceable(3) @.str.334, i64 3, i1 false)
  %i.aes = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 3, ptr %i.aes, align 8, !tbaa !89
  %i.aet = getelementptr inbounds nuw i8, ptr %22, i64 19
  store i8 0, ptr %i.aet, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeq, i8 0, i64 24, i1 false), !alias.scope !879
  %i.aeu = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1396 unwind label %bb.cm ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1396: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1380
  store ptr %i.aeu, ptr %i.aeq, align 8, !tbaa !73, !alias.scope !879
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 3 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %1, i64 3384
  store ptr %i.aev, ptr %i.aew, align 8, !tbaa !74, !alias.scope !879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aeu, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.aer, i64 3, i1 false), !tbaa !53, !noalias !879
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 3376
  store ptr %i.aev, ptr %i.aex, align 16, !tbaa !75, !alias.scope !879
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 3392
  store i32 0, ptr %i.aey, align 16, !tbaa !858
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 3400
  store i64 256, ptr %i.aez, align 8, !tbaa !859
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 3408
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 3424 ; 2 uses
  store ptr %i.afb, ptr %i.afa, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.afb, ptr noundef nonnull align 1 dereferenceable(7) @.str.336, i64 7, i1 false)
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 3416
  store i64 7, ptr %i.afc, align 8, !tbaa !89
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 3431
  store i8 0, ptr %i.afd, align 1, !tbaa !53
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 3440 ; 2 uses
  store i32 4, ptr %i.afe, align 16, !tbaa !856
  %i.aff = getelementptr inbounds nuw i8, ptr %1, i64 3448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.afg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.afg, ptr %23, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.afg, ptr noundef nonnull align 1 dereferenceable(3) @.str.334, i64 3, i1 false)
  %i.afh = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 3, ptr %i.afh, align 8, !tbaa !89
  %i.afi = getelementptr inbounds nuw i8, ptr %23, i64 19
  store i8 0, ptr %i.afi, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aff, i8 0, i64 24, i1 false), !alias.scope !880
  %i.afj = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1412 unwind label %bb.cn ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1412: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1396
  store ptr %i.afj, ptr %i.aff, align 8, !tbaa !73, !alias.scope !880
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 3 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 3464
  store ptr %i.afk, ptr %i.afl, align 8, !tbaa !74, !alias.scope !880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.afj, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.afg, i64 3, i1 false), !tbaa !53, !noalias !880
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 3456
  store ptr %i.afk, ptr %i.afm, align 16, !tbaa !75, !alias.scope !880
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 3472
  store i32 0, ptr %i.afn, align 16, !tbaa !858
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store i64 128, ptr %i.afo, align 8, !tbaa !859
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 3488
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 3504 ; 2 uses
  store ptr %i.afq, ptr %i.afp, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.afq, ptr noundef nonnull align 1 dereferenceable(7) @.str.336, i64 7, i1 false)
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 3496
  store i64 7, ptr %i.afr, align 8, !tbaa !89
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 3511
  store i8 0, ptr %i.afs, align 1, !tbaa !53
  %i.aft = getelementptr inbounds nuw i8, ptr %1, i64 3520 ; 2 uses
  store i32 12, ptr %i.aft, align 16, !tbaa !856
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 3528 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.afv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  store ptr %i.afv, ptr %24, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.afv, ptr noundef nonnull align 1 dereferenceable(3) @.str.334, i64 3, i1 false)
  %i.afw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 3, ptr %i.afw, align 8, !tbaa !89
  %i.afx = getelementptr inbounds nuw i8, ptr %24, i64 19
  store i8 0, ptr %i.afx, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afu, i8 0, i64 24, i1 false), !alias.scope !881
  %i.afy = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1428 unwind label %bb.co ; 3 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1428: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1412
  store ptr %i.afy, ptr %i.afu, align 8, !tbaa !73, !alias.scope !881
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 3 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 3544
  store ptr %i.afz, ptr %i.aga, align 8, !tbaa !74, !alias.scope !881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.afy, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.afv, i64 3, i1 false), !tbaa !53, !noalias !881
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 3536
  store ptr %i.afz, ptr %i.agb, align 16, !tbaa !75, !alias.scope !881
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 3552
  store i32 0, ptr %i.agc, align 16, !tbaa !858
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 3560
  store i64 640, ptr %i.agd, align 8, !tbaa !859
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 3568
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 3584 ; 2 uses
  store ptr %i.agf, ptr %i.age, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.agf, ptr noundef nonnull align 1 dereferenceable(11) @.str.337, i64 11, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %1, i64 3576
  store i64 11, ptr %i.agg, align 8, !tbaa !89
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 3595
  store i8 0, ptr %i.agh, align 1, !tbaa !53
  %i.agi = getelementptr inbounds nuw i8, ptr %1, i64 3600 ; 2 uses
  store i32 4, ptr %i.agi, align 16, !tbaa !856
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 3608 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.agk = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.agk, ptr %25, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.agk, ptr noundef nonnull align 1 dereferenceable(3) @.str.334, i64 3, i1 false)
  %i.agl = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 3, ptr %i.agl, align 8, !tbaa !89
  %i.agm = getelementptr inbounds nuw i8, ptr %25, i64 19
  store i8 0, ptr %i.agm, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agj, i8 0, i64 24, i1 false), !alias.scope !882
  %i.agn = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26
          to label %._crit_edge.i.i1434 unwind label %bb.cp ; 3 uses

._crit_edge.i.i1434:                              ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i1428
  store ptr %i.agn, ptr %i.agj, align 8, !tbaa !73, !alias.scope !882
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 3 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 3624
  store ptr %i.ago, ptr %i.agp, align 8, !tbaa !74, !alias.scope !882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.agn, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.agk, i64 3, i1 false), !tbaa !53, !noalias !882
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 3616
  store ptr %i.ago, ptr %i.agq, align 16, !tbaa !75, !alias.scope !882
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 3632
  store i32 0, ptr %i.agr, align 16, !tbaa !858
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 3640
  store i64 640, ptr %i.ags, align 8, !tbaa !859
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 3648
  %i.agu = getelementptr inbounds nuw i8, ptr %1, i64 3664 ; 2 uses
  store ptr %i.agu, ptr %i.agt, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.agu, ptr noundef nonnull align 1 dereferenceable(11) @.str.338, i64 11, i1 false)
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 3656
  store i64 11, ptr %i.agv, align 8, !tbaa !89
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 3675
  store i8 0, ptr %i.agw, align 1, !tbaa !53
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 3680 ; 3 uses
  store i32 3, ptr %i.agx, align 16, !tbaa !856
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 3688 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agy, i8 0, i64 24, i1 false)
  %i.agz = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1443 unwind label %bb.bk ; 3 uses

bb.bk:                                            ; preds = %._crit_edge.i.i1434
  %i.aha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahb = load ptr, ptr %i.agy, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1438 = icmp eq ptr %i.ahb, null
  br i1 %.not.i.i4.i1438, label %_ZNSt6vectorIhSaIhEED2Ev.exit1568, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ahc = getelementptr inbounds nuw i8, ptr %1, i64 3704
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !74
  %i.ahe = ptrtoint ptr %i.ahd to i64
  %i.ahf = ptrtoint ptr %i.ahb to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf
  call void @_ZdlPvm(ptr noundef nonnull %i.ahb, i64 noundef %i.ahg) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1568

._crit_edge.i.i1443:                              ; preds = %._crit_edge.i.i1434
  store ptr %i.agz, ptr %i.agy, align 8, !tbaa !73
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agz, i64 1 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %1, i64 3704
  store ptr %i.ahh, ptr %i.ahi, align 8, !tbaa !74
  store i8 -128, ptr %i.agz, align 1, !tbaa !53
  %i.ahj = getelementptr inbounds nuw i8, ptr %1, i64 3696
  store ptr %i.ahh, ptr %i.ahj, align 16, !tbaa !75
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 3712
  store i32 12, ptr %i.ahk, align 16, !tbaa !858
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 3720
  store i64 640, ptr %i.ahl, align 8, !tbaa !859
  %i.ahm = getelementptr inbounds nuw i8, ptr %1, i64 3728
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 3744 ; 2 uses
  store ptr %i.ahn, ptr %i.ahm, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.ahn, ptr noundef nonnull align 1 dereferenceable(9) @.str.339, i64 9, i1 false)
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 3736
  store i64 9, ptr %i.aho, align 8, !tbaa !89
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 3753
  store i8 0, ptr %i.ahp, align 1, !tbaa !53
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 3760 ; 3 uses
  store i32 2, ptr %i.ahq, align 16, !tbaa !856
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 3768 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahr, i8 0, i64 24, i1 false)
  %i.ahs = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1452 unwind label %bb.bm ; 3 uses

bb.bm:                                            ; preds = %._crit_edge.i.i1443
  %i.aht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahu = load ptr, ptr %i.ahr, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1447 = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i4.i1447, label %_ZNSt6vectorIhSaIhEED2Ev.exit1568, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ahv = getelementptr inbounds nuw i8, ptr %1, i64 3784
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !74
  %i.ahx = ptrtoint ptr %i.ahw to i64
  %i.ahy = ptrtoint ptr %i.ahu to i64
  %i.ahz = sub i64 %i.ahx, %i.ahy
  call void @_ZdlPvm(ptr noundef nonnull %i.ahu, i64 noundef %i.ahz) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1568

._crit_edge.i.i1452:                              ; preds = %._crit_edge.i.i1443
  store ptr %i.ahs, ptr %i.ahr, align 8, !tbaa !73
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 3784
  store ptr %i.aia, ptr %i.aib, align 8, !tbaa !74
  store i8 1, ptr %i.ahs, align 1, !tbaa !53
  %i.aic = getelementptr inbounds nuw i8, ptr %1, i64 3776
  store ptr %i.aia, ptr %i.aic, align 16, !tbaa !75
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 3792
  store i32 0, ptr %i.aid, align 16, !tbaa !858
  %i.aie = getelementptr inbounds nuw i8, ptr %1, i64 3800
  store i64 640, ptr %i.aie, align 8, !tbaa !859
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 3808
  %i.aig = getelementptr inbounds nuw i8, ptr %1, i64 3824 ; 2 uses
  store ptr %i.aig, ptr %i.aif, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.aig, ptr noundef nonnull align 1 dereferenceable(7) @.str.340, i64 7, i1 false)
  %i.aih = getelementptr inbounds nuw i8, ptr %1, i64 3816
  store i64 7, ptr %i.aih, align 8, !tbaa !89
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 3831
  store i8 0, ptr %i.aii, align 1, !tbaa !53
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 3840 ; 3 uses
  store i32 258, ptr %i.aij, align 16, !tbaa !856
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 3848 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aik, i8 0, i64 24, i1 false)
  %i.ail = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1461 unwind label %bb.bo ; 3 uses

bb.bo:                                            ; preds = %._crit_edge.i.i1452
  %i.aim = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ain = load ptr, ptr %i.aik, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1456 = icmp eq ptr %i.ain, null
  br i1 %.not.i.i4.i1456, label %_ZNSt6vectorIhSaIhEED2Ev.exit1568, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aio = getelementptr inbounds nuw i8, ptr %1, i64 3864
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !74
  %i.aiq = ptrtoint ptr %i.aip to i64
  %i.air = ptrtoint ptr %i.ain to i64
  %i.ais = sub i64 %i.aiq, %i.air
  call void @_ZdlPvm(ptr noundef nonnull %i.ain, i64 noundef %i.ais) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1568

._crit_edge.i.i1461:                              ; preds = %._crit_edge.i.i1452
  store ptr %i.ail, ptr %i.aik, align 8, !tbaa !73
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ail, i64 1 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %1, i64 3864
  store ptr %i.ait, ptr %i.aiu, align 8, !tbaa !74
  store i8 1, ptr %i.ail, align 1, !tbaa !53
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 3856
  store ptr %i.ait, ptr %i.aiv, align 16, !tbaa !75
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 3872
  store i32 0, ptr %i.aiw, align 16, !tbaa !858
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 3880
  store i64 640, ptr %i.aix, align 8, !tbaa !859
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 3888
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 3904 ; 2 uses
  store ptr %i.aiz, ptr %i.aiy, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.aiz, ptr noundef nonnull align 1 dereferenceable(7) @.str.341, i64 7, i1 false)
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 3896
  store i64 7, ptr %i.aja, align 8, !tbaa !89
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 3911
  store i8 0, ptr %i.ajb, align 1, !tbaa !53
  %i.ajc = getelementptr inbounds nuw i8, ptr %1, i64 3920 ; 3 uses
  store i32 10, ptr %i.ajc, align 16, !tbaa !856
  %i.ajd = getelementptr inbounds nuw i8, ptr %1, i64 3928 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajd, i8 0, i64 24, i1 false)
  %i.aje = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1470 unwind label %bb.bq ; 3 uses

bb.bq:                                            ; preds = %._crit_edge.i.i1461
  %i.ajf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajg = load ptr, ptr %i.ajd, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1465 = icmp eq ptr %i.ajg, null
  br i1 %.not.i.i4.i1465, label %_ZNSt6vectorIhSaIhEED2Ev.exit1568, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 3944
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !74
  %i.ajj = ptrtoint ptr %i.aji to i64
  %i.ajk = ptrtoint ptr %i.ajg to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk
  call void @_ZdlPvm(ptr noundef nonnull %i.ajg, i64 noundef %i.ajl) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit1568

._crit_edge.i.i1470:                              ; preds = %._crit_edge.i.i1461
  store ptr %i.aje, ptr %i.ajd, align 8, !tbaa !73
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aje, i64 1 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 3944
  store ptr %i.ajm, ptr %i.ajn, align 8, !tbaa !74
  store i8 1, ptr %i.aje, align 1, !tbaa !53
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 3936
  store ptr %i.ajm, ptr %i.ajo, align 16, !tbaa !75
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 3952
  store i32 0, ptr %i.ajp, align 16, !tbaa !858
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 3960
  store i64 640, ptr %i.ajq, align 8, !tbaa !859
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 3968
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 3984 ; 2 uses
  store ptr %i.ajs, ptr %i.ajr, align 16, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.ajs, ptr noundef nonnull align 1 dereferenceable(7) @.str.342, i64 7, i1 false)
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 3976
  store i64 7, ptr %i.ajt, align 8, !tbaa !89
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 3991
  store i8 0, ptr %i.aju, align 1, !tbaa !53
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 4000 ; 3 uses
  store i32 266, ptr %i.ajv, align 16, !tbaa !856
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 4008 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajw, i8 0, i64 24, i1 false)
  %i.ajx = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %._crit_edge.i.i1479 unwind label %bb.bs ; 3 uses

bb.bs:                                            ; preds = %._crit_edge.i.i1470
  %i.ajy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajz = load ptr, ptr %i.ajw, align 8, !tbaa !73 ; 3 uses
  %.not.i.i4.i1474 = icmp eq ptr %i.ajz, null
  br i1 %.not.i.i4.i1474, label %_ZNSt6vectorIhSaIhEED2Ev.exit1568, label %bb.bt

end_hunk_2
