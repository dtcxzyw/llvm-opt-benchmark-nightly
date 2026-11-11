Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_123Table_MaxValidSize_Test8TestBodyEv:bb.a
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %6 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %20 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %29 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %i.h = alloca i64, align 8                      ; 8 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.i = alloca i64, align 8                      ; 9 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.a
  %i.p = load i8, ptr %3, align 8, !tbaa !179, !range !180, !noundef !181
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.l, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !182  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %i.u, %bb.e ], [ @.str.31, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 4437, ptr noundef %i.v)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.w = load ptr, ptr %4, align 8, !tbaa !170    ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.w, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !141
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit207

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #43
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn112 = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.ad = load ptr, ptr %4, align 8, !tbaa !170   ; 3 uses
  %.not.i.i205 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i205, label %_ZN7testing7MessageD2Ev.exit207, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206: ; preds = %bb.k
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit207

_ZN7testing7MessageD2Ev.exit207:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206, %bb.k, %bb.h
  %.pn112.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn112, %bb.k ], [ %.pn112, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #43
  br label %bb.n

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !182 ; 4 uses
  %.not.i.i208 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i208, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !160 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !161
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i64 0, ptr %i.a, align 8, !tbaa !166
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  br label %bb.o

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit207, %bb.b
  %.pn112.pn.pn = phi { ptr, i32 } [ %.pn112.pn, %_ZN7testing7MessageD2Ev.exit207 ], [ %i.r, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.hj

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull @.str.2, i32 noundef 4440, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = load i64, ptr %i.a, align 8, !tbaa !166 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.av = icmp ult i64 %i.au, 17
  %i.aw = lshr i64 4035225266123964416, %i.au
  %spec.select = select i1 %i.av, i64 140737488355327, i64 %i.aw
  %i.ax = icmp ult i64 %i.au, 3                   ; 2 uses
  %i.ay = shl nuw i64 8, %i.au
  %i.az = shl nuw nsw i64 1, %i.ay                ; 3 uses
  %i.ba = call i64 @llvm.umin.i64(i64 %i.az, i64 140737488355327)
  %.sroa.speculated.i = select i1 %i.ax, i64 %i.ba, i64 %spec.select
  store i64 %.sroa.speculated.i, ptr %i.b, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal11CmpHelperLTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.r

_ZN7testing8internal11CmpHelperLTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.p
  %i.bb = load i8, ptr %7, align 8, !tbaa !179, !range !180, !noundef !181
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.critedge, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.s:                                             ; preds = %_ZN7testing8internal11CmpHelperLTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  %i.bf = load ptr, ptr %i.ao, align 8, !tbaa !182 ; 2 uses
  %.not.i.i211 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i211, label %_ZNK7testing15AssertionResult15failure_messageEv.exit212, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit212

_ZNK7testing15AssertionResult15failure_messageEv.exit212: ; preds = %bb.u, %bb.t
  %i.bh = phi ptr [ %i.bg, %bb.u ], [ @.str.31, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 4444, ptr noundef %i.bh)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit212
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  %i.bi = load ptr, ptr %8, align 8, !tbaa !170   ; 3 uses
  %.not.i.i213 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i213, label %_ZN7testing7MessageD2Ev.exit215, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.w
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(128) %i.bi) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit215

_ZN7testing7MessageD2Ev.exit215:                  ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  %i.bm = load ptr, ptr %i.ao, align 8, !tbaa !182 ; 4 uses
  %.not.i.i216 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i216, label %_ZN7testing15AssertionResultD2Ev.exit220, label %bb.x

bb.x:                                             ; preds = %_ZN7testing7MessageD2Ev.exit215
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !160 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217: ; preds = %bb.x
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !161
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit220

_ZN7testing15AssertionResultD2Ev.exit220:         ; preds = %_ZN7testing7MessageD2Ev.exit215, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %.critedge184

bb.y:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit223

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit212
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #43
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn116 = phi { ptr, i32 } [ %i.bu, %bb.aa ], [ %i.bt, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  %i.bv = load ptr, ptr %8, align 8, !tbaa !170   ; 3 uses
  %.not.i.i221 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i221, label %_ZN7testing7MessageD2Ev.exit223, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222: ; preds = %bb.ab
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !141
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(128) %i.bv) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit223

_ZN7testing7MessageD2Ev.exit223:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222, %bb.ab, %bb.y
  %.pn116.pn = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %.pn116, %bb.ab ], [ %.pn116, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #43
  br label %bb.ah

.critedge:                                        ; preds = %_ZN7testing8internal11CmpHelperLTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !182 ; 4 uses
  %.not.i.i224 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i224, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !160 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225: ; preds = %bb.ac
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !161
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i225
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 32) #44
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br i1 %i.ax, label %bb.ae, label %bb.au

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  store i64 %i.az, ptr %i.c, align 8, !tbaa !166
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !166, !noalias !9801
  %i.cg = icmp eq i64 %i.cf, %i.az
  br i1 %i.cg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit231 unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.692, ptr noundef nonnull @.str.694, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit231 unwind label %bb.ai

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit231: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  %i.ch = load i8, ptr %10, align 8, !tbaa !179, !range !180, !noundef !181
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.critedge178, label %bb.aj

bb.ah:                                            ; preds = %_ZN7testing7MessageD2Ev.exit223, %bb.r
  %.pn116.pn.pn = phi { ptr, i32 } [ %.pn116.pn, %_ZN7testing7MessageD2Ev.exit223 ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.ct

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %bb.at

bb.aj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit231
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  %i.ck = load ptr, ptr %i.aq, align 8, !tbaa !182 ; 2 uses
  %.not.i.i232 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i232, label %_ZNK7testing15AssertionResult15failure_messageEv.exit233, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit233

_ZNK7testing15AssertionResult15failure_messageEv.exit233: ; preds = %bb.al, %bb.ak
  %i.cm = phi ptr [ %i.cl, %bb.al ], [ @.str.31, %bb.ak ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 4446, ptr noundef %i.cm)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit233
end_hunk_0
