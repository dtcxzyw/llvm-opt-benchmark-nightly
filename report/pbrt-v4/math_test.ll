Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math_test?download=true
inline.NumInlined: 3804
inline.NumDeleted: 865
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN25Math_NewtonBisection_Test8TestBodyEv:bb.a
  %i.gh = fcmp olt float %i.gg, f0x358637BD
  %or.cond56.i92 = or i1 %i.gh, %i.gf
  br i1 %or.cond56.i92, label %"_ZN4pbrt15NewtonBisectionIZN25Math_NewtonBisection_Test8TestBodyEvE3$_4EEfffT_ff.exit", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gi = fpext float %i.fx to double
  %i.gj = fmul double %i.gi, 1.000000e-01
  %i.gk = fpext float %i.fy to double
  %i.gl = fmul double %i.gj, %i.gk
  %i.gm = fdiv double %i.gl, %i.gb
  %i.gn = fptrunc double %i.gm to float
  %i.go = fdiv float %i.gc, %i.gn
  %i.gp = fsub float %.1.i89, %i.go
  br label %bb.cf, !llvm.loop !73

"_ZN4pbrt15NewtonBisectionIZN25Math_NewtonBisection_Test8TestBodyEvE3$_4EEfffT_ff.exit": ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.gq = call noundef float @sinf(float noundef %.1.i89) #25 ; 2 uses
  %i.gr = fmul float %i.gq, %i.gq
  %i.gs = fpext float %i.gr to double
  %i.gt = call noundef double @pow(double noundef %i.gs, double noundef 5.000000e-02) #25
  %i.gu = fadd double %i.gt, -3.000000e-01
  %i.gv = call float @llvm.fabs.f32(float %.1.i89)
  %i.gw = fcmp oeq float %i.gv, +inf
  br i1 %i.gw, label %cdce.call, label %cdce.end, !prof !74

cdce.call:                                        ; preds = %"_ZN4pbrt15NewtonBisectionIZN25Math_NewtonBisection_Test8TestBodyEvE3$_4EEfffT_ff.exit"
  %i.gx = call noundef float @cosf(float noundef %.1.i89) #25 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %"_ZN4pbrt15NewtonBisectionIZN25Math_NewtonBisection_Test8TestBodyEvE3$_4EEfffT_ff.exit", %cdce.call
  %i.gy = call noundef float @sinf(float noundef %.1.i89) #25 ; 2 uses
  %i.gz = fmul float %i.gy, %i.gy
  %i.ha = fpext float %i.gz to double
  %i.hb = call noundef double @pow(double noundef %i.ha, double noundef f0x3FEE666666666666) #25 ; 0 uses
  %i.hc = fptrunc double %i.gu to float
  %i.hd = call noundef float @llvm.fabs.f32(float %i.hc)
  store float %i.hd, ptr %i.e, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store double 1.000000e-02, ptr %i.f, align 8, !tbaa !39
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.he = load i8, ptr %13, align 8, !tbaa !18, !range !19, !noundef !20
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.cv, label %bb.ch

bb.ch:                                            ; preds = %cdce.end
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ci unwind label %bb.cq

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !21 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i93, label %_ZNK7testing15AssertionResult15failure_messageEv.exit94, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit94

_ZNK7testing15AssertionResult15failure_messageEv.exit94: ; preds = %bb.cj, %bb.ci
  %i.hj = phi ptr [ %i.hi, %bb.cj ], [ @.str.324, %bb.ci ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 159, ptr noundef %i.hj)
          to label %bb.ck unwind label %bb.cr

bb.ck:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit94
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.cl unwind label %bb.cs

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.hk = load ptr, ptr %14, align 8, !tbaa !29
  %.not.i.i.i95 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i95, label %_ZN7testing7MessageD2Ev.exit97, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hl = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i96 unwind label %bb.cp

.noexc.i.i96:                                     ; preds = %bb.cm
  br i1 %i.hl, label %bb.cn, label %_ZN7testing7MessageD2Ev.exit97

bb.cn:                                            ; preds = %.noexc.i.i96
  %i.hm = load ptr, ptr %14, align 8, !tbaa !29   ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZN7testing7MessageD2Ev.exit97, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !31
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(128) %i.hm) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit97

bb.cp:                                            ; preds = %bb.cm
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #26
  unreachable

_ZN7testing7MessageD2Ev.exit97:                   ; preds = %bb.cl, %.noexc.i.i96, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.cv

bb.cq:                                            ; preds = %bb.ch
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit94
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.ck
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #25
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn28 = phi { ptr, i32 } [ %i.hv, %bb.cs ], [ %i.hu, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.ct ], [ %i.ht, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.da

bb.cv:                                            ; preds = %cdce.end, %_ZN7testing7MessageD2Ev.exit97
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !21
  %.not.i.i.i98 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i98, label %_ZN7testing15AssertionResultD2Ev.exit103, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hy = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i99 unwind label %bb.cz

.noexc.i.i99:                                     ; preds = %bb.cw
  br i1 %i.hy, label %bb.cx, label %_ZN7testing15AssertionResultD2Ev.exit103

bb.cx:                                            ; preds = %.noexc.i.i99
  %i.hz = load ptr, ptr %i.hw, align 8, !tbaa !21 ; 4 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %_ZN7testing15AssertionResultD2Ev.exit103, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !26 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %bb.cy
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !32
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i101: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit103

bb.cz:                                            ; preds = %bb.cw
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit103:         ; preds = %bb.cv, %.noexc.i.i99, %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  ret void

bb.da:                                            ; preds = %bb.be, %bb.cu, %bb.bz, %bb.aj, %bb.o
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %.pn19.pn, %bb.aj ], [ %.pn22.pn, %bb.be ], [ %.pn28.pn, %bb.cu ], [ %.pn25.pn, %bb.bz ]
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %or.cond = fcmp uno float %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit: ; preds = %bb.a
  %9 = insertelement <2 x float> poison, float %4, i64 0
  %10 = insertelement <2 x float> %9, float %3, i64 1 ; 2 uses
  %11 = bitcast <2 x float> %10 to <2 x i32>      ; 2 uses
  %12 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %10)
  %13 = sub <2 x i32> zeroinitializer, %11
  %14 = fneg <2 x float> %12
  %15 = bitcast <2 x float> %14 to <2 x i32>
  %16 = icmp slt <2 x i32> %11, zeroinitializer
  %17 = select <2 x i1> %16, <2 x i32> %13, <2 x i32> %15 ; 2 uses
  %18 = extractelement <2 x i32> %17, i64 0       ; 3 uses
  %19 = extractelement <2 x i32> %17, i64 1       ; 3 uses
  %.not.i.i = icmp ult i32 %19, %18
  %20 = sub nuw i32 %19, %18
  %21 = sub nuw i32 %18, %19
  %22 = select i1 %.not.i.i, i32 %21, i32 %20
  %i.a = icmp ult i32 %22, 5
  br i1 %i.a, label %bb.b, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread

bb.b:                                             ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.p

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !81
  %i.h = fpext float %3 to double
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.h)
          to label %_ZNSolsEf.exit unwind label %bb.g ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSolsEf.exit
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 8, ptr %i.o, align 8, !tbaa !81
  %i.p = fpext float %4 to double
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.p)
          to label %_ZNSolsEf.exit14 unwind label %bb.i ; 0 uses

_ZNSolsEf.exit14:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSolsEf.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %8, align 8, !tbaa !26     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !32
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.w = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !32
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !31
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24    ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %6, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !31
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #25
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !31
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24    ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %6, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store ptr %i.ab, ptr %5, align 8, !tbaa !31
  %i.aw = load i64, ptr %i.ad, align 8
  %i.ax = getelementptr inbounds i8, ptr %5, i64 %i.aw
  store ptr %i.ac, ptr %i.ax, align 8, !tbaa !31
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !32
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ay, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #25
  store ptr %i.ap, ptr %5, align 8, !tbaa !31
  %i.bg = load i64, ptr %i.ar, align 8
  %i.bh = getelementptr inbounds i8, ptr %5, i64 %i.bg
  store ptr %i.aq, ptr %i.bh, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.p

bb.g:                                             ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %_ZNSolsEf.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSolsEf.exit14
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.k:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.l:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !32
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bp, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bv = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_math_test.cpp:bb.a
  store ptr %i.aq, ptr @_ZN21NextPrime_Basics_Test10test_info_E, align 8, !tbaa !464
  %i.ar = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN21NextPrime_Basics_Test10test_info_E) ; 0 uses
  %i.as = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.at = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI16Math_ErfInv_TestEE, i64 16), ptr %i.at, align 8, !tbaa !31
  %i.au = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.161, ptr noundef null, ptr noundef null, ptr noundef %i.as, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.at)
  store ptr %i.au, ptr @_ZN16Math_ErfInv_Test10test_info_E, align 8, !tbaa !464
  %i.av = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16Math_ErfInv_Test10test_info_E) ; 0 uses
  %i.aw = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ax = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30Math_DifferenceOfProducts_TestEE, i64 16), ptr %i.ax, align 8, !tbaa !31
  %i.ay = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef null, ptr noundef %i.aw, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ax)
  store ptr %i.ay, ptr @_ZN30Math_DifferenceOfProducts_Test10test_info_E, align 8, !tbaa !464
  %i.az = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30Math_DifferenceOfProducts_Test10test_info_E) ; 0 uses
  %i.ba = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bb = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI23Math_SumOfProducts_TestEE, i64 16), ptr %i.bb, align 8, !tbaa !31
  %i.bc = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef null, ptr noundef %i.ba, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bb)
  store ptr %i.bc, ptr @_ZN23Math_SumOfProducts_Test10test_info_E, align 8, !tbaa !464
  %i.bd = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN23Math_SumOfProducts_Test10test_info_E) ; 0 uses
  %i.be = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bf = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI21FastExp_Accuracy_TestEE, i64 16), ptr %i.bf, align 8, !tbaa !31
  %i.bg = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef null, ptr noundef %i.be, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bf)
  store ptr %i.bg, ptr @_ZN21FastExp_Accuracy_Test10test_info_E, align 8, !tbaa !464
  %i.bh = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN21FastExp_Accuracy_Test10test_info_E) ; 0 uses
  %i.bi = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI26Math_GaussianIntegral_TestEE, i64 16), ptr %i.bj, align 8, !tbaa !31
  %i.bk = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.182, ptr noundef null, ptr noundef null, ptr noundef %i.bi, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bj)
  store ptr %i.bk, ptr @_ZN26Math_GaussianIntegral_Test10test_info_E, align 8, !tbaa !464
  %i.bl = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN26Math_GaussianIntegral_Test10test_info_E) ; 0 uses
  %i.bm = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bn = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25SquareMatrix_Basics2_TestEE, i64 16), ptr %i.bn, align 8, !tbaa !31
  %i.bo = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef null, ptr noundef %i.bm, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bn)
  store ptr %i.bo, ptr @_ZN25SquareMatrix_Basics2_Test10test_info_E, align 8, !tbaa !464
  %i.bp = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25SquareMatrix_Basics2_Test10test_info_E) ; 0 uses
  %i.bq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.br = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25SquareMatrix_Basics3_TestEE, i64 16), ptr %i.br, align 8, !tbaa !31
  %i.bs = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef null, ptr noundef %i.bq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.br)
  store ptr %i.bs, ptr @_ZN25SquareMatrix_Basics3_Test10test_info_E, align 8, !tbaa !464
  %i.bt = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25SquareMatrix_Basics3_Test10test_info_E) ; 0 uses
  %i.bu = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bv = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25SquareMatrix_Basics4_TestEE, i64 16), ptr %i.bv, align 8, !tbaa !31
  %i.bw = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.223, ptr noundef null, ptr noundef null, ptr noundef %i.bu, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bv)
  store ptr %i.bw, ptr @_ZN25SquareMatrix_Basics4_Test10test_info_E, align 8, !tbaa !464
  %i.bx = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25SquareMatrix_Basics4_Test10test_info_E) ; 0 uses
  %i.by = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bz = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25SquareMatrix_Inverse_TestEE, i64 16), ptr %i.bz, align 8, !tbaa !31
  %i.ca = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef null, ptr noundef %i.by, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bz)
  store ptr %i.ca, ptr @_ZN25SquareMatrix_Inverse_Test10test_info_E, align 8, !tbaa !464
  %i.cb = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25SquareMatrix_Inverse_Test10test_info_E) ; 0 uses
  %i.cc = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI24FindInterval_Basics_TestEE, i64 16), ptr %i.cd, align 8, !tbaa !31
  %i.ce = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef %i.cc, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cd)
  store ptr %i.ce, ptr @_ZN24FindInterval_Basics_Test10test_info_E, align 8, !tbaa !464
  %i.cf = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN24FindInterval_Basics_Test10test_info_E) ; 0 uses
  %i.cg = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ch = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Abs_TestEE, i64 16), ptr %i.ch, align 8, !tbaa !31
  %i.ci = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.249, ptr noundef null, ptr noundef null, ptr noundef %i.cg, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ch)
  store ptr %i.ci, ptr @_ZN22FloatInterval_Abs_Test10test_info_E, align 8, !tbaa !464
  %i.cj = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Abs_Test10test_info_E) ; 0 uses
  %i.ck = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cl = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI23FloatInterval_Sqrt_TestEE, i64 16), ptr %i.cl, align 8, !tbaa !31
  %i.cm = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.254, ptr noundef null, ptr noundef null, ptr noundef %i.ck, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cl)
  store ptr %i.cm, ptr @_ZN23FloatInterval_Sqrt_Test10test_info_E, align 8, !tbaa !464
  %i.cn = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN23FloatInterval_Sqrt_Test10test_info_E) ; 0 uses
  %i.co = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cp = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Add_TestEE, i64 16), ptr %i.cp, align 8, !tbaa !31
  %i.cq = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.256, ptr noundef null, ptr noundef null, ptr noundef %i.co, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cp)
  store ptr %i.cq, ptr @_ZN22FloatInterval_Add_Test10test_info_E, align 8, !tbaa !464
  %i.cr = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Add_Test10test_info_E) ; 0 uses
  %i.cs = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ct = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Sub_TestEE, i64 16), ptr %i.ct, align 8, !tbaa !31
  %i.cu = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.258, ptr noundef null, ptr noundef null, ptr noundef %i.cs, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ct)
  store ptr %i.cu, ptr @_ZN22FloatInterval_Sub_Test10test_info_E, align 8, !tbaa !464
  %i.cv = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Sub_Test10test_info_E) ; 0 uses
  %i.cw = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cx = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Mul_TestEE, i64 16), ptr %i.cx, align 8, !tbaa !31
  %i.cy = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.260, ptr noundef null, ptr noundef null, ptr noundef %i.cw, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cx)
  store ptr %i.cy, ptr @_ZN22FloatInterval_Mul_Test10test_info_E, align 8, !tbaa !464
  %i.cz = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Mul_Test10test_info_E) ; 0 uses
  %i.da = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.db = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Div_TestEE, i64 16), ptr %i.db, align 8, !tbaa !31
  %i.dc = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.262, ptr noundef null, ptr noundef null, ptr noundef %i.da, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.db)
  store ptr %i.dc, ptr @_ZN22FloatInterval_Div_Test10test_info_E, align 8, !tbaa !464
  %i.dd = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Div_Test10test_info_E) ; 0 uses
  %i.de = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.df = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_FMA_TestEE, i64 16), ptr %i.df, align 8, !tbaa !31
  %i.dg = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.264, ptr noundef null, ptr noundef null, ptr noundef %i.de, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.df)
  store ptr %i.dg, ptr @_ZN22FloatInterval_FMA_Test10test_info_E, align 8, !tbaa !464
  %i.dh = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_FMA_Test10test_info_E) ; 0 uses
  %i.di = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Sqr_TestEE, i64 16), ptr %i.dj, align 8, !tbaa !31
  %i.dk = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.272, ptr noundef null, ptr noundef null, ptr noundef %i.di, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dj)
  store ptr %i.dk, ptr @_ZN22FloatInterval_Sqr_Test10test_info_E, align 8, !tbaa !464
  %i.dl = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Sqr_Test10test_info_E) ; 0 uses
  %i.dm = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dn = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29FloatInterval_SumSquares_TestEE, i64 16), ptr %i.dn, align 8, !tbaa !31
  %i.do = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.282, ptr noundef null, ptr noundef null, ptr noundef %i.dm, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dn)
  store ptr %i.do, ptr @_ZN29FloatInterval_SumSquares_Test10test_info_E, align 8, !tbaa !464
  %i.dp = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29FloatInterval_SumSquares_Test10test_info_E) ; 0 uses
  %i.dq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dr = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI39FloatInterval_DifferenceOfProducts_TestEE, i64 16), ptr %i.dr, align 8, !tbaa !31
  %i.ds = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef null, ptr noundef %i.dq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dr)
  store ptr %i.ds, ptr @_ZN39FloatInterval_DifferenceOfProducts_Test10test_info_E, align 8, !tbaa !464
  %i.dt = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN39FloatInterval_DifferenceOfProducts_Test10test_info_E) ; 0 uses
  %i.du = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dv = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI32FloatInterval_SumOfProducts_TestEE, i64 16), ptr %i.dv, align 8, !tbaa !31
  %i.dw = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef null, ptr noundef %i.du, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dv)
  store ptr %i.dw, ptr @_ZN32FloatInterval_SumOfProducts_Test10test_info_E, align 8, !tbaa !464
  %i.dx = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN32FloatInterval_SumOfProducts_Test10test_info_E) ; 0 uses
  %i.dy = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dz = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI17Math_TwoProd_TestEE, i64 16), ptr %i.dz, align 8, !tbaa !31
  %i.ea = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.295, ptr noundef null, ptr noundef null, ptr noundef %i.dy, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dz)
  store ptr %i.ea, ptr @_ZN17Math_TwoProd_Test10test_info_E, align 8, !tbaa !464
  %i.eb = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN17Math_TwoProd_Test10test_info_E) ; 0 uses
  %i.ec = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ed = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI16Math_TwoSum_TestEE, i64 16), ptr %i.ed, align 8, !tbaa !31
  %i.ee = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.301, ptr noundef null, ptr noundef null, ptr noundef %i.ec, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ed)
  store ptr %i.ee, ptr @_ZN16Math_TwoSum_Test10test_info_E, align 8, !tbaa !464
  %i.ef = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16Math_TwoSum_Test10test_info_E) ; 0 uses
  %i.eg = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.eh = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22Math_InnerProduct_TestEE, i64 16), ptr %i.eh, align 8, !tbaa !31
  %i.ei = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.305, ptr noundef null, ptr noundef null, ptr noundef %i.eg, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.eh)
  store ptr %i.ei, ptr @_ZN22Math_InnerProduct_Test10test_info_E, align 8, !tbaa !464
  %i.ej = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22Math_InnerProduct_Test10test_info_E) ; 0 uses
  %i.ek = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.el = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29PermutationElement_Valid_TestEE, i64 16), ptr %i.el, align 8, !tbaa !31
  %i.em = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.310, ptr noundef null, ptr noundef null, ptr noundef %i.ek, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.el)
  store ptr %i.em, ptr @_ZN29PermutationElement_Valid_Test10test_info_E, align 8, !tbaa !464
  %i.en = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29PermutationElement_Valid_Test10test_info_E) ; 0 uses
  %i.eo = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ep = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31PermutationElement_Uniform_TestEE, i64 16), ptr %i.ep, align 8, !tbaa !31
  %i.eq = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.315, ptr noundef null, ptr noundef null, ptr noundef %i.eo, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ep)
  store ptr %i.eq, ptr @_ZN31PermutationElement_Uniform_Test10test_info_E, align 8, !tbaa !464
  %i.er = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31PermutationElement_Uniform_Test10test_info_E) ; 0 uses
  %i.es = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.et = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI36PermutationElement_UniformDelta_TestEE, i64 16), ptr %i.et, align 8, !tbaa !31
  %i.eu = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.320, ptr noundef null, ptr noundef null, ptr noundef %i.es, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.et)
  store ptr %i.eu, ptr @_ZN36PermutationElement_UniformDelta_Test10test_info_E, align 8, !tbaa !464
  %i.ev = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN36PermutationElement_UniformDelta_Test10test_info_E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #16

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshr.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshr.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!1 = distinct !{!1, !33}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"bool", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!16 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !15, i64 0}
!17 = !{!"_ZTSN7testing15AssertionResultE", !12, i64 0, !16, i64 8}
!18 = !{!17, !12, i64 0}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!16, !15, i64 0}
!22 = !{!"p1 omnipotent char", !14, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !8, i64 16}
!26 = !{!25, !22, i64 0}
!27 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!28 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"vtable pointer", !7, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!8, !8, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!9, !9, i64 0}
!35 = !{!24, !24, i64 0}
!36 = !{!"float", !8, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"double", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!41 = !{!"_ZTSSt6locale", !40, i64 0}
!42 = !{!"_ZTSSi", !24, i64 8}
!43 = !{!42, !24, i64 8}
!44 = !{!22, !22, i64 0}
!45 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEE", !8, i64 0, !12, i64 16}
!46 = !{!45, !12, i64 16}
!47 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi3EEEEE", !8, i64 0, !12, i64 36}
!48 = !{!47, !12, i64 36}
!49 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEE", !8, i64 0, !12, i64 64}
!50 = !{!49, !12, i64 64}
!51 = !{!25, !24, i64 8}
!52 = !{!"_ZTSN4pbrt3RNGE", !24, i64 0, !24, i64 8}
!53 = !{!52, !24, i64 8}
!54 = !{!52, !24, i64 0}
!55 = !{!"_ZTSN4pbrt8IntervalE", !36, i64 0, !36, i64 4}
!56 = !{!55, !36, i64 0}
!57 = !{!55, !36, i64 4}
!58 = !{!23, !22, i64 0}
!59 = !{!"llvm.loop.unswitch.partial.disable"}
!60 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !41, i64 56}
!61 = !{!60, !22, i64 40}
!62 = !{!60, !22, i64 32}
!63 = distinct !{!63, !33}
!64 = distinct !{null, null}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = !{!"branch_weights", i32 1, i32 1048575}
!75 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!76 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!77 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!78 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !24, i64 8}
!79 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!80 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !75, i64 24, !76, i64 28, !76, i64 32, !77, i64 40, !78, i64 48, !8, i64 64, !9, i64 192, !79, i64 200, !41, i64 208}
!81 = !{!80, !24, i64 8}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !33}
!101 = !{i64 0, i64 16, !32}
!102 = distinct !{!102, i1 true, !"_ZN4pbrt12SquareMatrixILi3EE4DiagIJiiEEES1_fDpT_"}
!103 = distinct !{!103, !102, !"_ZN4pbrt12SquareMatrixILi3EE4DiagIJiiEEES1_fDpT_: argument 0"}
!104 = distinct !{!104, i1 true, !"_ZN4pbrt9TransposeILi3EEENS_12SquareMatrixIXT_EEERKS2_"}
!105 = distinct !{!105, !104, !"_ZN4pbrt9TransposeILi3EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!106 = !{!103}
!107 = !{!105}
!108 = !{i64 0, i64 36, !32}
!109 = distinct !{!109, i1 true, !"_ZN4pbrt12SquareMatrixILi4EE4DiagIJiidEEES1_fDpT_"}
!110 = distinct !{!110, !109, !"_ZN4pbrt12SquareMatrixILi4EE4DiagIJiidEEES1_fDpT_: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZN4pbrt9TransposeILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!112 = distinct !{!112, !111, !"_ZN4pbrt9TransposeILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZN4pbrt12SquareMatrixILi4EE4DiagIJdiiEEES1_fDpT_"}
!114 = distinct !{!114, !113, !"_ZN4pbrt12SquareMatrixILi4EE4DiagIJdiiEEES1_fDpT_: argument 0"}
!115 = !{!110}
!116 = !{!112}
!117 = !{i64 0, i64 64, !32}
!118 = !{!114}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, i1 true, !"_ZL12randomMatrixILi3EEN4pbrt12SquareMatrixIXT_EEERNS0_3RNGE"}
!123 = distinct !{!123, !122, !"_ZL12randomMatrixILi3EEN4pbrt12SquareMatrixIXT_EEERNS0_3RNGE: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZN4pbrtmlILi3EEENS_12SquareMatrixIXT_EEERKS2_S4_"}
!125 = distinct !{!125, !124, !"_ZN4pbrtmlILi3EEENS_12SquareMatrixIXT_EEERKS2_S4_: argument 0"}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, i1 true, !"_ZL12randomMatrixILi4EEN4pbrt12SquareMatrixIXT_EEERNS0_3RNGE"}
!130 = distinct !{!130, !129, !"_ZL12randomMatrixILi4EEN4pbrt12SquareMatrixIXT_EEERNS0_3RNGE: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_"}
!132 = distinct !{!132, !131, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_: argument 0"}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = !{!123}
!137 = !{!125}
!138 = !{!130}
!139 = !{!132}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
end_hunk_1
