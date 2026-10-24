Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/scan-test?download=true
inline.NumInlined: 4258
inline.NumDeleted: 1323
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN26scan_test_read_floats_Test8TestBodyEv:_ZN7testing15AssertionResultD2Ev.exit

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40: ; preds = %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #34, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit41

_ZN7testing7MessageD2Ev.exit41:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40, %bb.i, %bb.f
  %.pn16.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn16, %bb.i ], [ %.pn16, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.x

bb.j:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit38
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !128 ; 4 uses
  %.not.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i42, label %_ZN7testing15AssertionResultD2Ev.exit65, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43: ; preds = %bb.k
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !56
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit65

_ZN7testing15AssertionResultD2Ev.exit65:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !474
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !474
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !475, !noalias !474
  store i32 5, ptr %4, align 8, !tbaa !106, !alias.scope !475, !noalias !474
  store ptr %3, ptr %i.ag, align 8, !alias.scope !475, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !474
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.55, ptr %i.ah, align 8, !tbaa !72, !noalias !474
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.55, i64 4), ptr %i.ai, align 8, !tbaa !73, !noalias !474
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.aj, align 8, !tbaa !88, !noalias !474
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt3v126detail18string_scan_bufferE, i64 16), ptr %2, align 8, !tbaa !75, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34, !noalias !474
  store ptr @.str.19, ptr %1, align 8, !tbaa !65, !noalias !474
  %.sroa.2.0..sroa_idx.i.i.i.i.i47 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i47, align 8, !tbaa !91, !noalias !474
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.ak, align 8, !tbaa !79, !noalias !474
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.al, align 8, !tbaa !92, !noalias !474
  %.sroa.22.0..sroa_idx.i.i.i.i.i48 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i48, align 8, !tbaa !94, !noalias !474
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.am, align 8, !tbaa !100, !noalias !474
  call void @_ZN3fmt3v126detail19parse_format_stringIcRNS1_12scan_handlerEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.19, i64 2, ptr noundef nonnull align 8 dereferenceable(44) %1), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34, !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !474
  %i.an = load double, ptr %3, align 8, !tbaa !78, !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @_ZN7testing8internal24CmpHelperFloatingPointEQIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.55, double noundef %i.an, double noundef 3.140000e+00)
  %i.ao = load i8, ptr %12, align 8, !tbaa !127, !range !89, !noundef !90
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !128 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i66, label %_ZNK7testing15AssertionResult15failure_messageEv.exit67, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit67

_ZNK7testing15AssertionResult15failure_messageEv.exit67: ; preds = %bb.n, %bb.m
  %i.at = phi ptr [ %i.as, %bb.n ], [ @.str.91, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 66, ptr noundef %i.at)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit67
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.au = load ptr, ptr %13, align 8, !tbaa !130  ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.au, null
  br i1 %.not.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.p
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #34, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit70

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit67
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn23 = phi { ptr, i32 } [ %i.ba, %bb.s ], [ %i.az, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.bb = load ptr, ptr %13, align 8, !tbaa !130  ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i71, label %bb.w, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72: ; preds = %bb.t
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(128) %i.bb) #34, !inline_history !4
  br label %bb.w

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit65, %_ZN7testing7MessageD2Ev.exit70
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !128 ; 4 uses
  %.not.i.i74 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i74, label %_ZN7testing15AssertionResultD2Ev.exit78, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !87 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75: ; preds = %bb.v
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !56
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit78

_ZN7testing15AssertionResultD2Ev.exit78:          ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  ret void

bb.w:                                             ; preds = %bb.q, %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72
  %.pn23.pn = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %.pn23, %bb.t ], [ %.pn23, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN7testing7MessageD2Ev.exit41
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.w ], [ %.pn16.pn, %_ZN7testing7MessageD2Ev.exit41 ]
  resume { ptr, i32 } %.pn23.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !140
  %i.h = fpext float %3 to double
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.h)
          to label %_ZNSolsEf.exit unwind label %bb.g ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSolsEf.exit
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 8, ptr %i.o, align 8, !tbaa !140
  %i.p = fpext float %4 to double
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.p)
          to label %_ZNSolsEf.exit14 unwind label %bb.i ; 0 uses

_ZNSolsEf.exit14:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSolsEf.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %8, align 8, !tbaa !87     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !56
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.w = load ptr, ptr %7, align 8, !tbaa !87     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !56
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !75
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24    ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %6, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !75
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !87 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !56
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #34
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !75
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24    ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %6, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !142
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  store ptr %i.ab, ptr %5, align 8, !tbaa !75
  %i.aw = load i64, ptr %i.ad, align 8
  %i.ax = getelementptr inbounds i8, ptr %5, i64 %i.aw
  store ptr %i.ac, ptr %i.ax, align 8, !tbaa !75
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !56
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ay, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #34
  store ptr %i.ap, ptr %5, align 8, !tbaa !75
  %i.bg = load i64, ptr %i.ar, align 8
  %i.bh = getelementptr inbounds i8, ptr %5, i64 %i.bg
  store ptr %i.aq, ptr %i.bh, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !142
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bj) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
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
  %i.bq = load ptr, ptr %8, align 8, !tbaa !87    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !56
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bp, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.bv = load ptr, ptr %7, align 8, !tbaa !87    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !56
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.bm, %bb.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.m ], [ %i.bl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.n ], [ %i.bk, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.p:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal24CmpHelperFloatingPointEQIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %or.cond = fcmp uno double %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit: ; preds = %bb.a
  %9 = insertelement <2 x double> poison, double %4, i64 0
  %10 = insertelement <2 x double> %9, double %3, i64 1 ; 2 uses
  %11 = bitcast <2 x double> %10 to <2 x i64>     ; 2 uses
  %12 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %10)
  %13 = sub <2 x i64> zeroinitializer, %11
  %14 = fneg <2 x double> %12
  %15 = bitcast <2 x double> %14 to <2 x i64>
  %16 = icmp slt <2 x i64> %11, zeroinitializer
  %17 = select <2 x i1> %16, <2 x i64> %13, <2 x i64> %15 ; 2 uses
  %18 = extractelement <2 x i64> %17, i64 0       ; 3 uses
  %19 = extractelement <2 x i64> %17, i64 1       ; 3 uses
  %.not.i.i = icmp ult i64 %19, %18
  %20 = sub nuw i64 %19, %18
  %21 = sub nuw i64 %18, %19
  %22 = select i1 %.not.i.i, i64 %21, i64 %20
  %i.a = icmp ult i64 %22, 5
  br i1 %i.a, label %bb.b, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread

bb.b:                                             ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.p

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 17, ptr %i.g, align 8, !tbaa !140
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %3)
          to label %_ZNSolsEd.exit unwind label %bb.g ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSolsEd.exit
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 17, ptr %i.n, align 8, !tbaa !140
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %4)
          to label %_ZNSolsEd.exit14 unwind label %bb.i ; 0 uses

_ZNSolsEd.exit14:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSolsEd.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %8, align 8, !tbaa !87     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !56
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.u = load ptr, ptr %7, align 8, !tbaa !87     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !56
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.z, ptr %6, align 8, !tbaa !75
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 -24     ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %6, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !75
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !56
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #34
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !75
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 -24    ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %6, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !142
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.at) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  store ptr %i.z, ptr %5, align 8, !tbaa !75
  %i.au = load i64, ptr %i.ab, align 8
  %i.av = getelementptr inbounds i8, ptr %5, i64 %i.au
  store ptr %i.aa, ptr %i.av, align 8, !tbaa !75
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !56
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #34
  store ptr %i.an, ptr %5, align 8, !tbaa !75
  %i.be = load i64, ptr %i.ap, align 8
  %i.bf = getelementptr inbounds i8, ptr %5, i64 %i.be
  store ptr %i.ao, ptr %i.bf, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !142
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bh) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.p

bb.g:                                             ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSolsEd.exit14
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.k:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.l:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %8, align 8, !tbaa !87    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !56
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bn, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.bt = load ptr, ptr %7, align 8, !tbaa !87    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !56
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #35
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_scan_test.cc:bb.a
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.aag, ptr %i.aah, align 8, !tbaa !86
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aag
  store i8 0, ptr %i.aai, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.aaj, ptr %0, align 8, !tbaa !131
  %i.aak = load ptr, ptr %1, align 8, !tbaa !87   ; 2 uses
  %i.aal = load i64, ptr %i.aah, align 8, !tbaa !86 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.aal, ptr %i.a, align 8, !tbaa !91
  %i.aam = icmp ugt i64 %i.aal, 15
  br i1 %i.aam, label %.noexc.i.i.i231, label %._crit_edge.i.i.i.i218

.noexc.i.i.i231:                                  ; preds = %__cxx_global_var_init.115.exit
  %i.aan = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5.i232 unwind label %bb.fn ; 2 uses

.noexc5.i232:                                     ; preds = %.noexc.i.i.i231
  store ptr %i.aan, ptr %0, align 8, !tbaa !87
  %i.aao = load i64, ptr %i.a, align 8, !tbaa !91
  store i64 %i.aao, ptr %i.aaj, align 8, !tbaa !56
  br label %._crit_edge.i.i.i.i218

._crit_edge.i.i.i.i218:                           ; preds = %.noexc5.i232, %__cxx_global_var_init.115.exit
  %i.aap = phi ptr [ %i.aan, %.noexc5.i232 ], [ %i.aaj, %__cxx_global_var_init.115.exit ] ; 2 uses
  switch i64 %i.aal, label %bb.fg [
    i64 1, label %bb.ff
    i64 0, label %bb.fh
  ]

bb.ff:                                            ; preds = %._crit_edge.i.i.i.i218
  %i.aaq = load i8, ptr %i.aak, align 1, !tbaa !56
  store i8 %i.aaq, ptr %i.aap, align 1, !tbaa !56
  br label %bb.fh

bb.fg:                                            ; preds = %._crit_edge.i.i.i.i218
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aap, ptr align 1 %i.aak, i64 %i.aal, i1 false)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %._crit_edge.i.i.i.i218
  %i.aar = load i64, ptr %i.a, align 8, !tbaa !91 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aar, ptr %i.aas, align 8, !tbaa !86
  %i.aat = load ptr, ptr %0, align 8, !tbaa !87
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aar
  store i8 0, ptr %i.aau, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 167, ptr %i.aav, align 8, !tbaa !1283
  %i.aaw = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.fi unwind label %bb.fo

bb.fi:                                            ; preds = %bb.fh
  %i.aax = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.4, i32 noundef 167)
          to label %bb.fj unwind label %bb.fo

bb.fj:                                            ; preds = %bb.fi
  %i.aay = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.4, i32 noundef 167)
          to label %bb.fk unwind label %bb.fo

bb.fk:                                            ; preds = %bb.fj
  %i.aaz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37
          to label %bb.fl unwind label %bb.fo     ; 2 uses

bb.fl:                                            ; preds = %bb.fk
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI19scan_test_lock_TestEE, i64 16), ptr %i.aaz, align 8, !tbaa !75
  %i.aba = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef null, ptr nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.aaw, ptr noundef %i.aax, ptr noundef %i.aay, ptr noundef nonnull %i.aaz)
          to label %bb.fm unwind label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.abb = load ptr, ptr %0, align 8, !tbaa !87   ; 2 uses
  %i.abc = icmp eq ptr %i.abb, %i.aaj
  br i1 %i.abc, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i226: ; preds = %bb.fm
  %i.abd = load i64, ptr %i.aaj, align 8, !tbaa !56
  %i.abe = add i64 %i.abd, 1
  call void @_ZdlPvm(ptr noundef %i.abb, i64 noundef %i.abe) #35
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i227

_ZN7testing8internal12CodeLocationD2Ev.exit.i227: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i226
  %i.abf = load ptr, ptr %1, align 8, !tbaa !87   ; 2 uses
  %i.abg = icmp eq ptr %i.abf, %i.aae
  br i1 %i.abg, label %__cxx_global_var_init.118.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i227
  %i.abh = load i64, ptr %i.aae, align 8, !tbaa !56
  %i.abi = add i64 %i.abh, 1
  call void @_ZdlPvm(ptr noundef %i.abf, i64 noundef %i.abi) #35
  br label %__cxx_global_var_init.118.exit

bb.fn:                                            ; preds = %.noexc.i.i.i231
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i220

bb.fo:                                            ; preds = %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh
  %i.abk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abl = load ptr, ptr %0, align 8, !tbaa !87   ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.aaj
  br i1 %i.abm, label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i219: ; preds = %bb.fo
  %i.abn = load i64, ptr %i.aaj, align 8, !tbaa !56
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abo) #35
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i220

_ZN7testing8internal12CodeLocationD2Ev.exit8.i220: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i219, %bb.fn
  %.pn.i221 = phi { ptr, i32 } [ %i.abj, %bb.fn ], [ %i.abk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i219 ], [ %i.abk, %bb.fo ]
  %i.abp = load ptr, ptr %1, align 8, !tbaa !87   ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.aae
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i222: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i220
  %i.abr = load i64, ptr %i.aae, align 8, !tbaa !56
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abp, i64 noundef %i.abs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i223: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %common.resume

__cxx_global_var_init.118.exit:                   ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  store ptr %i.aba, ptr @_ZN19scan_test_lock_Test10test_info_E, align 8, !tbaa !1285
  %i.abt = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN19scan_test_lock_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #27 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { noreturn }
attributes #34 = { nounwind }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!46, !47, !48, !49}
!llvm.ident = !{!50}
!llvm.errno.tbaa = !{!55}

!0 = distinct !{!0, !59}
!1 = distinct !{null, null}
!2 = distinct !{!2, !59}
!3 = distinct !{!3, !59}
!4 = distinct !{null, null, null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{!7, !59}
!8 = distinct !{null, null, null}
!9 = distinct !{!9, !59}
!10 = distinct !{null, null, null}
!11 = distinct !{!11, !59}
!12 = distinct !{null, null}
!13 = distinct !{!13, !59}
!14 = distinct !{!14, !59}
!15 = distinct !{!15, !59}
!16 = distinct !{null, null}
!17 = distinct !{null, null, null}
!18 = distinct !{null, null}
!19 = distinct !{!19, !59}
!20 = distinct !{!20, !59}
!21 = distinct !{!21, !59}
!22 = distinct !{!22, !59}
!23 = distinct !{null, null}
!24 = distinct !{null, null}
!25 = distinct !{!25, !59}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{!28, !59}
!29 = distinct !{!29, !59}
!30 = distinct !{!30, !59}
!31 = distinct !{null, null, null, null}
!32 = distinct !{!32, !59}
!33 = distinct !{null, null}
!34 = distinct !{null}
!35 = distinct !{null, null}
!36 = distinct !{!36, !59}
!37 = distinct !{!37, !59}
!38 = distinct !{!38, !59}
!39 = distinct !{null}
!40 = distinct !{null, null, null, null}
!41 = distinct !{null, null, null}
!42 = distinct !{null}
!43 = distinct !{!43, !59}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null, null, null, null, null}
!46 = !{i32 1, !"long-double-type", !"x86_fp80"}
!47 = !{i32 8, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 2}
!50 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!"omnipotent char", !51, i64 0}
!53 = !{!"int", !52, i64 0}
!54 = !{!"__libc_errno", !53, i64 0}
!55 = !{!54, !53, i64 0}
!56 = !{!52, !52, i64 0}
!57 = !{!"_ZTSN3fmt3v1211basic_specsE", !53, i64 0, !52, i64 4}
!58 = !{!57, !53, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"any pointer", !52, i64 0}
!61 = !{!"any p2 pointer", !60, i64 0}
!62 = !{!"p2 omnipotent char", !61, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"p1 omnipotent char", !60, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"p1 _ZTSN3fmt3v126detail11scan_bufferE", !60, i64 0}
!67 = !{!"_ZTSN3fmt3v126detail11scan_buffer8iteratorE", !62, i64 0, !66, i64 8, !52, i64 16}
!68 = !{!67, !52, i64 16}
!69 = !{!67, !66, i64 8}
!70 = !{!"bool", !52, i64 0}
!71 = !{!"_ZTSN3fmt3v126detail11scan_bufferE", !64, i64 8, !64, i64 16, !70, i64 24}
!72 = !{!71, !64, i64 8}
!73 = !{!71, !64, i64 16}
!74 = !{!"vtable pointer", !51, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!67, !62, i64 0}
!77 = !{!"double", !52, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!66, !66, i64 0}
!80 = !{i64 0, i64 8, !63, i64 8, i64 8, !79, i64 16, i64 1, !56}
!81 = !{!"float", !52, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!84 = !{!"long", !52, i64 0}
!85 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0, !84, i64 8, !52, i64 16}
!86 = !{!85, !84, i64 8}
!87 = !{!85, !64, i64 0}
!88 = !{!71, !70, i64 24}
!89 = !{i8 0, i8 2}
!90 = !{}
!91 = !{!84, !84, i64 0}
!92 = !{!53, !53, i64 0}
!93 = !{!"p1 _ZTSN3fmt3v1214basic_scan_argINS0_12scan_contextEEE", !60, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !64, i64 0, !84, i64 8}
!96 = !{!"_ZTSN3fmt3v1218scan_parse_contextE", !95, i64 0}
!97 = !{!"_ZTSN3fmt3v129scan_argsE", !53, i64 0, !93, i64 8}
!98 = !{!"_ZTSN3fmt3v1212scan_contextE", !66, i64 0, !97, i64 8}
!99 = !{!"_ZTSN3fmt3v126detail12scan_handlerE", !96, i64 0, !98, i64 16, !53, i64 40}
!100 = !{!99, !53, i64 40}
!101 = !{!98, !66, i64 0}
!102 = !{i64 8}
!103 = !{!98, !53, i64 8}
!104 = !{!98, !93, i64 16}
!105 = !{!"_ZTSN3fmt3v126detail9scan_typeE", !52, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"p1 _ZTSN3fmt3v126detail12scan_handlerE", !60, i64 0}
!108 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_12scan_handlerEEEPKT_S7_S7_OT0_E10id_adapter", !107, i64 0, !53, i64 8}
!109 = !{!108, !53, i64 8}
!110 = !{!"_ZTSSt13_Ios_Fmtflags", !52, i64 0}
!111 = !{!"_ZTSSt12_Ios_Iostate", !52, i64 0}
!112 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !60, i64 0}
!113 = !{!"_ZTSNSt8ios_base6_WordsE", !60, i64 0, !84, i64 8}
!114 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !60, i64 0}
!115 = !{!"p1 _ZTSNSt6locale5_ImplE", !60, i64 0}
!116 = !{!"_ZTSSt6locale", !115, i64 0}
!117 = !{!"_ZTSSt8ios_base", !84, i64 8, !84, i64 16, !110, i64 24, !111, i64 28, !111, i64 32, !112, i64 40, !113, i64 48, !52, i64 64, !53, i64 192, !114, i64 200, !116, i64 208}
!118 = !{!117, !111, i64 32}
!119 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !60, i64 0}
!120 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !119, i64 0}
!121 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !120, i64 0}
!122 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !122, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !123, i64 0}
!125 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !124, i64 0}
!126 = !{!"_ZTSN7testing15AssertionResultE", !70, i64 0, !125, i64 8}
!127 = !{!126, !70, i64 0}
!128 = !{!119, !119, i64 0}
!129 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !60, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!83, !64, i64 0}
!132 = !{!"long long", !52, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm0EjLb0EE", !53, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJjEE", !134, i64 0}
!136 = !{!"_ZTSSt5tupleIJjEE", !135, i64 0}
!137 = !{!"_ZTSN3fmt3v129scan_dataINS0_17basic_string_viewIcEEJjEEE", !136, i64 0, !95, i64 8}
!138 = !{!"_ZTSN3fmt3v128expectedINS0_9scan_dataINS0_17basic_string_viewIcEEJjEEENS0_10scan_errorEEE", !137, i64 0, !70, i64 24}
!139 = !{!138, !70, i64 24}
!140 = !{!117, !84, i64 8}
!141 = !{!"_ZTSSi", !84, i64 8}
!142 = !{!141, !84, i64 8}
!143 = !{i64 0, i64 8, !65, i64 8, i64 8, !91}
!144 = !{!"_ZTSSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !85, i64 0}
!145 = !{!"_ZTSN3fmt3v1214basic_scan_argINS0_12scan_contextEEE", !105, i64 0, !52, i64 8}
!146 = !{!145, !105, i64 0}
!147 = !{!"_ZTSSt10_Head_baseILm1EiLb0EE", !53, i64 0}
!148 = !{!"_ZTSSt11_Tuple_implILm1EJiEE", !147, i64 0}
!149 = !{!"_ZTSSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE", !148, i64 0, !144, i64 8}
!150 = !{!"_ZTSSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE", !149, i64 0}
!151 = !{!"_ZTSN3fmt3v129scan_dataINS0_17basic_string_viewIcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEE", !150, i64 0, !95, i64 40}
!152 = !{!"_ZTSN3fmt3v128expectedINS0_9scan_dataINS0_17basic_string_viewIcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEENS0_10scan_errorEEE", !151, i64 0, !70, i64 56}
!153 = !{!152, !70, i64 56}
!154 = !{!95, !64, i64 0}
end_hunk_1
