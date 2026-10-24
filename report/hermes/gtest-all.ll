Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/gtest-all?download=true
inline.NumInlined: 6243
inline.NumDeleted: 1690
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7testing15AssertionResultlsIA9_cEERS0_RKT_:bb.a
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit4

_ZN7testing7MessageD2Ev.exit4:                    ; preds = %.body, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA15_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(15) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !59
  %i.f = call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %1) #55 ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(15) %1, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %.body

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !52     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret ptr %0

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.h, %bb.c ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !52     ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i3, label %_ZN7testing7MessageD2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %.body
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit4

_ZN7testing7MessageD2Ev.exit4:                    ; preds = %.body, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(7) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !59
  %i.f = call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %1) #55 ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(7) %1, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %.body

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !52     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret ptr %0

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.h, %bb.c ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !52     ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i3, label %_ZN7testing7MessageD2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %.body
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit4

_ZN7testing7MessageD2Ev.exit4:                    ; preds = %.body, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7FloatLEEPKcS1_ff(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal15FloatingPointLEIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal15FloatingPointLEIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !276
  store ptr %2, ptr %i.b, align 8, !tbaa !276
  %i.c = fcmp olt float %3, %4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !172, !alias.scope !582
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !173, !alias.scope !582
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %or.cond = fcmp uno float %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit: ; preds = %bb.c
  %14 = bitcast float %3 to i32                   ; 2 uses
  %15 = bitcast float %4 to i32                   ; 3 uses
  %16 = sub i32 0, %14
  %17 = tail call float @llvm.fabs.f32(float %3)
  %18 = fneg float %17
  %19 = bitcast float %18 to i32
  %.not3.i.i.i = icmp slt i32 %14, 0
  %.0.i.i.i = select i1 %.not3.i.i.i, i32 %16, i32 %19
  %.neg.i = sub nuw i32 -2147483648, %15
  %.not3.i9.i.i = icmp slt i32 %15, 0
  %.0.i10.i.neg4.i = select i1 %.not3.i9.i.i, i32 %15, i32 %.neg.i
  %20 = add i32 %.0.i.i.i, 4
  %21 = add i32 %20, %.0.i10.i.neg4.i
  %i.e = icmp ult i32 %21, 9
  br i1 %i.e, label %bb.d, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread

bb.d:                                             ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  store i8 1, ptr %0, align 8, !tbaa !172, !alias.scope !583
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !173, !alias.scope !583
  br label %bb.ar

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.c, %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8, ptr %i.l, align 8, !tbaa !217
  %i.m = fpext float %3 to double
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %i.m)
          to label %_ZNSolsEf.exit unwind label %bb.af ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.e unwind label %bb.ag

bb.e:                                             ; preds = %_ZNSolsEf.exit
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 8, ptr %i.t, align 8, !tbaa !217
  %i.u = fpext float %4 to double
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, double noundef %i.u)
          to label %bb.f unwind label %bb.ah      ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  store i8 0, ptr %11, align 8, !tbaa !172, !alias.scope !584
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !173, !alias.scope !584
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(12) @.str.70)
          to label %bb.g unwind label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.ai

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 1 dereferenceable(7) @.str.74)
          to label %bb.i unwind label %bb.ai

bb.i:                                             ; preds = %bb.h
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.j unwind label %bb.ai

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA3_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @.str.420)
          to label %bb.k unwind label %bb.ai

bb.k:                                             ; preds = %bb.j
  %i.ac = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA11_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 1 dereferenceable(11) @.str.44)
          to label %bb.l unwind label %bb.ai      ; 2 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #53
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull %9)
          to label %bb.m unwind label %bb.aj

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.m
  %i.ad = load ptr, ptr %8, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.af, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %7, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !59
  %i.ai = load ptr, ptr %12, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49
  %i.al = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %.body.i

bb.o:                                             ; preds = %.noexc
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %8, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(128) %i.an) #53, !inline_history !4
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.am, %bb.n ]
  %i.as = load ptr, ptr %8, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i3.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %bb.s

bb.s:                                             ; preds = %.body.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #53, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %bb.s, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br label %.body

bb.t:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  %i.aw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 1 dereferenceable(5) @.str.73)
          to label %bb.u unwind label %bb.ak      ; 2 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull %10)
          to label %bb.v unwind label %bb.al

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc24 unwind label %bb.am

.noexc24:                                         ; preds = %bb.v
  %i.ax = load ptr, ptr %6, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.az, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %5, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !59
  %i.bc = load ptr, ptr %13, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !49
  %i.bf = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %i.bc, i64 noundef %i.be)
          to label %bb.x unwind label %bb.w       ; 0 uses

bb.w:                                             ; preds = %.noexc24
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %.body.i19

bb.x:                                             ; preds = %.noexc24
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bh = load ptr, ptr %6, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #53, !inline_history !4
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN7testing8internal15FloatingPointLEIfEENS_15AssertionResultEPKcS4_T_S5_:bb.a
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !45 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !46
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #54
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cm, align 8, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ct) #53
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.cu, ptr %10, align 8, !tbaa !57
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 -24    ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %10, i64 %i.cx
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !57
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !275
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.da) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  store ptr %i.cg, ptr %9, align 8, !tbaa !57
  %i.db = load i64, ptr %i.ci, align 8
  %i.dc = getelementptr inbounds i8, ptr %9, i64 %i.db
  store ptr %i.ch, ptr %i.dc, align 8, !tbaa !57
  store ptr %i.cl, ptr %i.g, align 8, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dd, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !45 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i33: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !46
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #54
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit35

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit35: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i33
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dd, align 8, !tbaa !57
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dk) #53
  store ptr %i.cu, ptr %9, align 8, !tbaa !57
  %i.dl = load i64, ptr %i.cw, align 8
  %i.dm = getelementptr inbounds i8, ptr %9, i64 %i.dl
  store ptr %i.cv, ptr %i.dm, align 8, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.dn, align 8, !tbaa !275
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.do) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  br label %bb.ar

bb.af:                                            ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ag:                                            ; preds = %_ZNSolsEf.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ah:                                            ; preds = %bb.e
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ai:                                            ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %bb.l
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.ak:                                            ; preds = %bb.m, %bb.t
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.am:                                            ; preds = %bb.v, %bb.ac
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body25

.body25:                                          ; preds = %_ZN7testing7MessageD2Ev.exit4.i22, %bb.am
  %eh.lpad-body26 = phi { ptr, i32 } [ %i.dw, %bb.am ], [ %eh.lpad-body.i20, %_ZN7testing7MessageD2Ev.exit4.i22 ] ; 2 uses
  %i.dx = load ptr, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.body25
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !46
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.body25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.al
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.al ], [ %eh.lpad-body26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %eh.lpad-body26, %.body25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #53
  br label %.body

.body:                                            ; preds = %bb.ak, %_ZN7testing7MessageD2Ev.exit4.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.du, %bb.ak ], [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit4.i ] ; 2 uses
  %i.ec = load ptr, ptr %12, align 8, !tbaa !45   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %.body
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !46
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.aj
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.aj ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #53
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.ai
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.ds, %bb.ai ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ah
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.an ], [ %i.dr, %bb.ah ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10) #53
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %i.dq, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ap ], [ %i.dp, %bb.af ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn

bb.ar:                                            ; preds = %bb.d, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit35, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8DoubleLEEPKcS1_dd(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal15FloatingPointLEIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal15FloatingPointLEIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !276
  store ptr %2, ptr %i.b, align 8, !tbaa !276
  %i.c = fcmp olt double %3, %4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !172, !alias.scope !591
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !173, !alias.scope !591
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %or.cond = fcmp uno double %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit: ; preds = %bb.c
  %14 = bitcast double %3 to i64                  ; 2 uses
  %15 = bitcast double %4 to i64                  ; 3 uses
  %16 = sub i64 0, %14
  %17 = tail call double @llvm.fabs.f64(double %3)
  %18 = fneg double %17
  %19 = bitcast double %18 to i64
  %.not3.i.i.i = icmp slt i64 %14, 0
  %.0.i.i.i = select i1 %.not3.i.i.i, i64 %16, i64 %19
  %.neg.i = sub nuw i64 -9223372036854775808, %15
  %.not3.i9.i.i = icmp slt i64 %15, 0
  %.0.i10.i.neg4.i = select i1 %.not3.i9.i.i, i64 %15, i64 %.neg.i
  %20 = add i64 %.0.i.i.i, 4
  %21 = add i64 %20, %.0.i10.i.neg4.i
  %i.e = icmp ult i64 %21, 9
  br i1 %i.e, label %bb.d, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread

bb.d:                                             ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  store i8 1, ptr %0, align 8, !tbaa !172, !alias.scope !592
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !173, !alias.scope !592
  br label %bb.ar

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.c, %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 17, ptr %i.l, align 8, !tbaa !217
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %3)
          to label %_ZNSolsEd.exit unwind label %bb.af ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.e unwind label %bb.ag

bb.e:                                             ; preds = %_ZNSolsEd.exit
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 17, ptr %i.s, align 8, !tbaa !217
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, double noundef %4)
          to label %bb.f unwind label %bb.ah      ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  store i8 0, ptr %11, align 8, !tbaa !172, !alias.scope !593
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !173, !alias.scope !593
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(12) @.str.70)
          to label %bb.g unwind label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.ai

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 1 dereferenceable(7) @.str.74)
          to label %bb.i unwind label %bb.ai

bb.i:                                             ; preds = %bb.h
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.j unwind label %bb.ai

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA3_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 1 dereferenceable(3) @.str.420)
          to label %bb.k unwind label %bb.ai

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA11_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 1 dereferenceable(11) @.str.44)
          to label %bb.l unwind label %bb.ai      ; 2 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #53
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull %9)
          to label %bb.m unwind label %bb.aj

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.m
  %i.ab = load ptr, ptr %8, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.ad, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %7, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !59
  %i.ag = load ptr, ptr %12, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !49
  %i.aj = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %.body.i

bb.o:                                             ; preds = %.noexc
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %8, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #53, !inline_history !4
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %i.ak, %bb.n ]
  %i.aq = load ptr, ptr %8, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i3.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %bb.s

bb.s:                                             ; preds = %.body.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #53, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %bb.s, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br label %.body

bb.t:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  %i.au = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(5) @.str.73)
          to label %bb.u unwind label %bb.ak      ; 2 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull %10)
          to label %bb.v unwind label %bb.al

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc24 unwind label %bb.am

.noexc24:                                         ; preds = %bb.v
  %i.av = load ptr, ptr %6, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.ax, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %5, align 8, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !59
  %i.ba = load ptr, ptr %13, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !49
  %i.bd = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %bb.x unwind label %bb.w       ; 0 uses

bb.w:                                             ; preds = %.noexc24
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %.body.i19

bb.x:                                             ; preds = %.noexc24
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bf = load ptr, ptr %6, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i23, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #53, !inline_history !4
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i19
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_gtest_all.cc:bb.a
  call void @_ZN7testing8internal18StringFromGTestEnvB5cxx11EPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZN7testing17FLAGS_gtest_colorB5cxx11E, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  %i.an = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing17FLAGS_gtest_colorB5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @_ZN7testing8internal18StringFromGTestEnvB5cxx11EPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZN7testing18FLAGS_gtest_filterB5cxx11E, ptr noundef nonnull @.str.9, ptr noundef nonnull @_ZN7testingL16kUniversalFilterE)
  %i.ao = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing18FLAGS_gtest_filterB5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @_ZN7testing8internal18StringFromGTestEnvB5cxx11EPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZN7testing18FLAGS_gtest_outputB5cxx11E, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  %i.ap = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing18FLAGS_gtest_outputB5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull @.str.14)
  %i.aq = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %i.ar = call noundef ptr @getenv(ptr noundef %i.aq) #53 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.tail.i.i15, label %sub_0.i.i13

sub_0.i.i13:                                      ; preds = %__cxx_global_var_init.3.exit
  %i.at = load i8, ptr %i.ar, align 1
  %.not.i.i14 = icmp eq i8 %i.at, 48
  br i1 %.not.i.i14, label %sub_1.i.i18, label %.tail.i.i15

sub_1.i.i18:                                      ; preds = %sub_0.i.i13
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp ne i8 %i.av, 0
  %i.ax = zext i1 %i.aw to i8
  br label %.tail.i.i15

.tail.i.i15:                                      ; preds = %sub_1.i.i18, %sub_0.i.i13, %__cxx_global_var_init.3.exit
  %i.ay = phi i8 [ 1, %__cxx_global_var_init.3.exit ], [ 1, %sub_0.i.i13 ], [ %i.ax, %sub_1.i.i18 ]
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.aq, %i.az
  br i1 %i.ba, label %__cxx_global_var_init.13.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16: ; preds = %.tail.i.i15
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !46
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.bc) #54
  br label %__cxx_global_var_init.13.exit

__cxx_global_var_init.13.exit:                    ; preds = %.tail.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  store i8 %i.ay, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !95
  %i.bd = call noundef i32 @_ZN7testing8internal17Int32FromGTestEnvEPKci(ptr noundef nonnull @.str.16, i32 noundef 0)
  store i32 %i.bd, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !39
  %i.be = call noundef i32 @_ZN7testing8internal17Int32FromGTestEnvEPKci(ptr noundef nonnull @.str.18, i32 noundef 1)
  store i32 %i.be, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull @.str.20)
  %i.bf = load ptr, ptr %2, align 8, !tbaa !45    ; 3 uses
  %i.bg = call noundef ptr @getenv(ptr noundef %i.bf) #53 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.tail.i.i21, label %sub_0.i.i19

sub_0.i.i19:                                      ; preds = %__cxx_global_var_init.13.exit
  %i.bi = load i8, ptr %i.bg, align 1
  %.not.i.i20 = icmp eq i8 %i.bi, 48
  br i1 %.not.i.i20, label %sub_1.i.i24, label %.tail.i.i21

sub_1.i.i24:                                      ; preds = %sub_0.i.i19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp ne i8 %i.bk, 0
  %i.bm = zext i1 %i.bl to i8
  br label %.tail.i.i21

.tail.i.i21:                                      ; preds = %sub_1.i.i24, %sub_0.i.i19, %__cxx_global_var_init.13.exit
  %i.bn = phi i8 [ 0, %__cxx_global_var_init.13.exit ], [ 1, %sub_0.i.i19 ], [ %i.bm, %sub_1.i.i24 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bf, %i.bo
  br i1 %i.bp, label %__cxx_global_var_init.19.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %.tail.i.i21
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !46
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.br) #54
  br label %__cxx_global_var_init.19.exit

__cxx_global_var_init.19.exit:                    ; preds = %.tail.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  store i8 %i.bn, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !95
  %i.bs = call noundef i32 @_ZN7testing8internal17Int32FromGTestEnvEPKci(ptr noundef nonnull @.str.22, i32 noundef 100)
  store i32 %i.bs, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !39
  call void @_ZN7testing8internal18StringFromGTestEnvB5cxx11EPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.12)
  %i.bt = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull @.str.26)
  %i.bu = load ptr, ptr %1, align 8, !tbaa !45    ; 3 uses
  %i.bv = call noundef ptr @getenv(ptr noundef %i.bu) #53 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.tail.i.i27, label %sub_0.i.i25

sub_0.i.i25:                                      ; preds = %__cxx_global_var_init.19.exit
  %i.bx = load i8, ptr %i.bv, align 1
  %.not.i.i26 = icmp eq i8 %i.bx, 48
  br i1 %.not.i.i26, label %sub_1.i.i30, label %.tail.i.i27

sub_1.i.i30:                                      ; preds = %sub_0.i.i25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = icmp ne i8 %i.bz, 0
  %i.cb = zext i1 %i.ca to i8
  br label %.tail.i.i27

.tail.i.i27:                                      ; preds = %sub_1.i.i30, %sub_0.i.i25, %__cxx_global_var_init.19.exit
  %i.cc = phi i8 [ 0, %__cxx_global_var_init.19.exit ], [ 1, %sub_0.i.i25 ], [ %i.cb, %sub_1.i.i30 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.bu, %i.cd
  br i1 %i.ce, label %__cxx_global_var_init.25.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28: ; preds = %.tail.i.i27
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !46
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.cg) #54
  br label %__cxx_global_var_init.25.exit

__cxx_global_var_init.25.exit:                    ; preds = %.tail.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  store i8 %i.cc, ptr @_ZN7testing28FLAGS_gtest_throw_on_failureE, align 1, !tbaa !95
  call void @_ZN7testing8internal18StringFromGTestEnvB5cxx11EPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.12)
  %i.ch = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internal7g_argvsB5cxx11E, i8 0, i64 24, i1 false)
  %i.ci = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN7testing8internal7g_argvsB5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  store ptr @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E, ptr @_ZN7testing8internal23kTestTypeIdInGoogleTestE, align 8, !tbaa !431
  %i.cj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN7testing8internal23kTestTypeIdInGoogleTestE) ; 0 uses
  call void @_ZN7testing8internal18StringFromGTestEnvB5cxx11EPKcS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, ptr noundef nonnull @.str.254, ptr noundef nonnull @_ZN7testingL22kDefaultDeathTestStyleE)
  %i.ck = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #53
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.256)
  %i.cl = load ptr, ptr %0, align 8, !tbaa !45    ; 3 uses
  %i.cm = call noundef ptr @getenv(ptr noundef %i.cl) #53 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.tail.i.i33, label %sub_0.i.i31

sub_0.i.i31:                                      ; preds = %__cxx_global_var_init.25.exit
  %i.co = load i8, ptr %i.cm, align 1
  %.not.i.i32 = icmp eq i8 %i.co, 48
  br i1 %.not.i.i32, label %sub_1.i.i36, label %.tail.i.i33

sub_1.i.i36:                                      ; preds = %sub_0.i.i31
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = icmp ne i8 %i.cq, 0
  %i.cs = zext i1 %i.cr to i8
  br label %.tail.i.i33

.tail.i.i33:                                      ; preds = %sub_1.i.i36, %sub_0.i.i31, %__cxx_global_var_init.25.exit
  %i.ct = phi i8 [ 0, %__cxx_global_var_init.25.exit ], [ 1, %sub_0.i.i31 ], [ %i.cs, %sub_1.i.i36 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.cl, %i.cu
  br i1 %i.cv, label %__cxx_global_var_init.255.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34: ; preds = %.tail.i.i33
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !46
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cx) #54
  br label %__cxx_global_var_init.255.exit

__cxx_global_var_init.255.exit:                   ; preds = %.tail.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #53
  store i8 %i.ct, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !95
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 16), ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, align 8, !tbaa !47
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !49
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 16), align 8, !tbaa !46
  %i.cy = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, i64 16), ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, align 8, !tbaa !47
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, i64 8), align 8, !tbaa !49
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, i64 16), align 8, !tbaa !46
  %i.cz = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr nonnull @__dso_handle) #53 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #50

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { cold noreturn }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nounwind memory(none) }
attributes #49 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #53 = { nounwind }
attributes #54 = { builtin nounwind }
attributes #55 = { nounwind willreturn memory(read) }
attributes #56 = { noreturn }
attributes #57 = { builtin allocsize(0) }
attributes #58 = { nounwind willreturn memory(none) }
attributes #59 = { noreturn nounwind }
attributes #60 = { cold nounwind }
attributes #61 = { cold noreturn nounwind }
attributes #62 = { cold }

!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!35}
!llvm.errno.tbaa = !{!39}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !92}
!2 = distinct !{!2, !92}
!3 = distinct !{null, ptr @_ZN7testing8UnitTest11GetInstanceEv}
!4 = distinct !{ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_, null, null, null}
!5 = distinct !{!5, !92}
!6 = distinct !{!6, !92}
!7 = distinct !{!7, !92}
!8 = distinct !{!8, !92}
!9 = distinct !{!9, !92}
!10 = distinct !{!10, !92}
!11 = distinct !{!11, !92}
!12 = distinct !{!12, !92}
!13 = distinct !{null}
!14 = distinct !{!14, !92}
!15 = distinct !{!15, !92}
!16 = distinct !{ptr @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_, null, null, null}
!17 = distinct !{!17, !92}
!18 = distinct !{!18, !92}
!19 = distinct !{null, null, null, null}
!20 = distinct !{!20, !92}
!21 = distinct !{!21, !92}
!22 = distinct !{!22, !92}
!23 = distinct !{!23, !92}
!24 = distinct !{!24, !92}
!25 = distinct !{null, null}
!26 = distinct !{!26, !92}
!27 = distinct !{!27, !92}
!28 = distinct !{null, null}
!29 = distinct !{null, null, null, null}
!30 = distinct !{!30, !92}
!31 = distinct !{null, null, null, null}
!32 = distinct !{!32, !92}
!33 = !{i32 8, !"PIC Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!"omnipotent char", !36, i64 0}
!38 = !{!"int", !37, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"p1 omnipotent char", !40, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!43 = !{!"long", !37, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0, !43, i64 8, !37, i64 16}
!45 = !{!44, !41, i64 0}
!46 = !{!37, !37, i64 0}
!47 = !{!42, !41, i64 0}
!48 = !{!43, !43, i64 0}
!49 = !{!44, !43, i64 8}
!50 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !40, i64 0}
!51 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !37, i64 0}
!54 = !{!"_ZTSN4llvh11raw_ostreamE", !41, i64 8, !41, i64 16, !41, i64 24, !53, i64 32}
!55 = !{!54, !53, i64 32}
!56 = !{!"vtable pointer", !36, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 _ZTSSo", !40, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"p1 _ZTS8_IO_FILE", !40, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"_ZTSN7testing8internal6RandomE", !38, i64 0}
!63 = !{!62, !38, i64 0}
!64 = !{!"_ZTSN7testing14TestPartResult4TypeE", !37, i64 0}
!65 = !{!"_ZTSN7testing8internal12AssertHelper16AssertHelperDataE", !64, i64 0, !41, i64 8, !38, i64 16, !44, i64 24}
!66 = !{!65, !64, i64 0}
!67 = !{!65, !41, i64 8}
!68 = !{!65, !38, i64 16}
!69 = !{!"p1 _ZTSN7testing8internal12AssertHelper16AssertHelperDataE", !40, i64 0}
!70 = !{!"_ZTSN7testing8internal12AssertHelperE", !69, i64 0}
!71 = !{!70, !69, i64 0}
!72 = !{!"branch_weights", i32 1, i32 1048575}
!73 = !{ptr @_ZN7testing8UnitTest11GetInstanceEv}
!74 = !{!"bool", !37, i64 0}
!75 = !{!"_ZTSN7testing8internal9MutexBaseE", !37, i64 0, !74, i64 40, !43, i64 48}
!76 = !{!"_ZTSN7testing8internal5MutexE", !75, i64 0}
!77 = !{!"p1 _ZTSN7testing8internal12UnitTestImplE", !40, i64 0}
!78 = !{!"_ZTSN7testing8UnitTestE", !76, i64 8, !77, i64 64}
!79 = !{!78, !77, i64 64}
!80 = !{!"p1 _ZTSN7testing8internal9MutexBaseE", !40, i64 0}
!81 = !{!"_ZTSN7testing8internal14GTestMutexLockE", !80, i64 0}
!82 = !{!81, !80, i64 0}
!83 = !{!75, !43, i64 48}
!84 = !{!75, !74, i64 40}
!85 = !{!"p1 _ZTSN7testing8internal9TraceInfoE", !40, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 8}
!88 = !{!86, !85, i64 0}
!89 = !{!"_ZTSN7testing8internal9TraceInfoE", !41, i64 0, !38, i64 8, !44, i64 16}
!90 = !{!89, !41, i64 0}
!91 = !{!89, !38, i64 8}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"p1 _ZTSN7testing31TestPartResultReporterInterfaceE", !40, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!74, !74, i64 0}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = !{!"p1 _ZTSN7testing8UnitTestE", !40, i64 0}
!99 = !{!"_ZTSN7testing8internal8FilePathE", !44, i64 0}
!100 = !{!"_ZTSN7testing31TestPartResultReporterInterfaceE"}
!101 = !{!"_ZTSN7testing8internal35DefaultGlobalTestPartResultReporterE", !100, i64 0, !77, i64 8}
!102 = !{!"_ZTSN7testing8internal38DefaultPerThreadTestPartResultReporterE", !100, i64 0, !77, i64 8}
!103 = !{!"p1 _ZTSN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE18ValueHolderFactoryE", !40, i64 0}
!104 = !{!"_ZTSN7testing8internal10scoped_ptrINS0_11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE18ValueHolderFactoryEEE", !103, i64 0}
!105 = !{!"_ZTSN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEEE", !38, i64 0, !104, i64 8}
!106 = !{!"any p2 pointer", !40, i64 0}
!107 = !{!"p2 _ZTSN7testing11EnvironmentE", !106, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIPN7testing11EnvironmentESaIS2_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!"_ZTSNSt12_Vector_baseIPN7testing11EnvironmentESaIS2_EE12_Vector_implE", !108, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIPN7testing11EnvironmentESaIS2_EE", !109, i64 0}
!111 = !{!"_ZTSSt6vectorIPN7testing11EnvironmentESaIS2_EE", !110, i64 0}
!112 = !{!"p2 _ZTSN7testing8TestCaseE", !106, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIPN7testing8TestCaseESaIS2_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!114 = !{!"_ZTSNSt12_Vector_baseIPN7testing8TestCaseESaIS2_EE12_Vector_implE", !113, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseIPN7testing8TestCaseESaIS2_EE", !114, i64 0}
!116 = !{!"_ZTSSt6vectorIPN7testing8TestCaseESaIS2_EE", !115, i64 0}
!117 = !{!"p1 int", !40, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!119 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !118, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !119, i64 0}
!121 = !{!"_ZTSSt6vectorIiSaIiEE", !120, i64 0}
!122 = !{!"p2 _ZTSN7testing8internal29ParameterizedTestCaseInfoBaseE", !106, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE17_Vector_impl_dataE", !122, i64 0, !122, i64 8, !122, i64 16}
!124 = !{!"_ZTSNSt12_Vector_baseIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE12_Vector_implE", !123, i64 0}
!125 = !{!"_ZTSSt12_Vector_baseIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE", !124, i64 0}
!126 = !{!"_ZTSSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE", !125, i64 0}
!127 = !{!"_ZTSN7testing8internal29ParameterizedTestCaseRegistryE", !126, i64 0}
end_hunk_2
