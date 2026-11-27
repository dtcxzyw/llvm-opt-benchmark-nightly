Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/media_test?download=true
inline.NumInlined: 424
inline.NumDeleted: 204
begin_hunk_0_@_ZN35HenyeyGreenstein_SamplingMatch_Test8TestBodyEv:bb.a
  %.pn39 = phi { ptr, i32 } [ %i.ey, %bb.aq ], [ %i.ex, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.ar ], [ %i.ew, %bb.ao ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.an
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.as ], [ %i.ev, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #20
  br label %.loopexit.split-lp99

bb.au:                                            ; preds = %bb.ad, %_ZN7testing7MessageD2Ev.exit75
  %i.ez = load ptr, ptr %i.f, align 8, !tbaa !27
  %.not.i.i.i76 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i76, label %_ZN7testing15AssertionResultD2Ev.exit81, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i77 unwind label %bb.ay

.noexc.i.i77:                                     ; preds = %bb.av
  br i1 %i.fa, label %bb.aw, label %_ZN7testing15AssertionResultD2Ev.exit81

bb.aw:                                            ; preds = %.noexc.i.i77
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !27  ; 4 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZN7testing15AssertionResultD2Ev.exit81, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !19 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i78: ; preds = %bb.ax
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !20
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i79: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i78
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit81

bb.ay:                                            ; preds = %bb.av
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #22
  unreachable

_ZN7testing15AssertionResultD2Ev.exit81:          ; preds = %bb.au, %.noexc.i.i77, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.fk = add nuw nsw i32 %.0121, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fk, 100
  br i1 %exitcond.not, label %bb.c, label %_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit54, !llvm.loop !49

.loopexit.split-lp99:                             ; preds = %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.at
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.at ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp99, %.body
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn, %.loopexit.split-lp99 ], [ %.pn35.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.b, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.c) #20, !inline_history !58
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !20
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #21
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #22
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  ret void
}

declare void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8, ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN48HenyeyGreenstein_SamplingOrientationForward_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store i32 %i.ab, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = mul nuw nsw i32 %.118, 10
  store i32 %i.d, ptr %i.c, align 4, !tbaa !33
  call void @_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.e = load i8, ptr %1, align 8, !tbaa !24, !range !25, !noundef !26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.r, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.c
  %.01763 = phi i32 [ 0, %bb.a ], [ %.118, %bb.c ]
  %.sroa.046.060 = phi i64 [ 429496729600, %bb.a ], [ %.sroa.046.0.insert.ext, %bb.c ]
  %.sroa.850.061 = phi i64 [ 6364136223846793006, %bb.a ], [ %i.k, %bb.c ] ; 2 uses
  %i.g = phi i32 [ 0, %bb.a ], [ %i.ab, %bb.c ]
  %i.h = mul i64 %.sroa.850.061, 6364136223846793005
  %i.i = add i64 %i.h, 1                          ; 2 uses
  %i.j = mul i64 %i.i, 6364136223846793005
  %i.k = add i64 %i.j, 1
  %i.l = insertelement <2 x i64> poison, i64 %.sroa.850.061, i64 0
  %i.m = insertelement <2 x i64> %i.l, i64 %i.i, i64 1 ; 3 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 45)
  %i.o = lshr <2 x i64> %i.m, splat (i64 27)
  %i.p = xor <2 x i64> %i.n, %i.o
  %i.q = trunc <2 x i64> %i.p to <2 x i32>        ; 2 uses
  %i.r = lshr <2 x i64> %i.m, splat (i64 59)
  %i.s = trunc nuw nsw <2 x i64> %i.r to <2 x i32>
  %i.t = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.q, <2 x i32> %i.q, <2 x i32> %i.s)
  %i.u = uitofp <2 x i32> %i.t to <2 x float>
  %i.v = fmul nnan <2 x float> %i.u, splat (float f0x2F800000) ; 2 uses
  %i.w = fcmp olt <2 x float> %i.v, splat (float f0x3F7FFFFF)
  %i.x = select <2 x i1> %i.w, <2 x float> %i.v, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !61
  %i.y = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> <float -1.000000e+00, float 0.000000e+00>, float 0.000000e+00, float noundef f0x3F733333, <2 x float> %i.x, ptr noundef nonnull %i.a), !noalias !61
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !61
  %.sroa.4.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.z = fcmp ogt float %.sroa.4.4.vec.extract, 0.000000e+00 ; 2 uses
  %i.aa = zext i1 %i.z to i32
  %i.ab = add nuw nsw i32 %i.g, %i.aa             ; 2 uses
  %not. = xor i1 %i.z, true
  %i.ac = zext i1 %not. to i32
  %.118 = add nuw nsw i32 %.01763, %i.ac          ; 2 uses
  %4 = add nuw nsw i64 %.sroa.046.060, 1
  %.sroa.046.0.insert.ext = and i64 %4, 4294967295 ; 2 uses
  %.not = icmp eq i64 %.sroa.046.0.insert.ext, 100
  br i1 %.not, label %bb.b, label %bb.c

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.f ], [ @.str.30, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 46, ptr noundef %i.ag)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ah = load ptr, ptr %2, align 8, !tbaa !30
  %.not.i.i.i34 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i35 unwind label %bb.l

.noexc.i.i35:                                     ; preds = %bb.i
  br i1 %i.ai, label %bb.j, label %_ZN7testing7MessageD2Ev.exit36

bb.j:                                             ; preds = %.noexc.i.i35
  %i.aj = load ptr, ptr %2, align 8, !tbaa !30    ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN7testing7MessageD2Ev.exit36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit36

bb.l:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #22
  unreachable

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %bb.h, %.noexc.i.i35, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.ar, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  resume { ptr, i32 } %.pn.pn

bb.r:                                             ; preds = %bb.b, %_ZN7testing7MessageD2Ev.exit36
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  %.not.i.i.i37 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit42, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i38 unwind label %bb.v

.noexc.i.i38:                                     ; preds = %bb.s
  br i1 %i.av, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit42

bb.t:                                             ; preds = %.noexc.i.i38
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !27 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN7testing15AssertionResultD2Ev.exit42, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39: ; preds = %bb.u
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !20
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit42

bb.v:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #22
  unreachable

_ZN7testing15AssertionResultD2Ev.exit42:          ; preds = %bb.r, %.noexc.i.i38, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !34
  store ptr %2, ptr %i.b, align 8, !tbaa !34
  %i.c = load i32, ptr %3, align 4, !tbaa !33
  %i.d = load i32, ptr %4, align 4, !tbaa !33
  %.not = icmp slt i32 %i.c, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(12) @.str.41)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.42)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(12) @.str.43)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.r

_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(5) @.str.44)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15 unwind label %bb.t

_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15: ; preds = %bb.j
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.m = load ptr, ptr %7, align 8, !tbaa !19     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.p = load i64, ptr %i.n, align 8, !tbaa !20
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.r = load ptr, ptr %6, align 8, !tbaa !19     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !20
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.y = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.y, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !27   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #22
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.al, %bb.t ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.am, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ak, %bb.s ] ; 2 uses
  %i.as = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.av = load i64, ptr %i.at, align 8, !tbaa !20
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ai, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN49HenyeyGreenstein_SamplingOrientationBackward_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store i32 %i.ab, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = mul nuw nsw i32 %.118, 10
  store i32 %i.d, ptr %i.c, align 4, !tbaa !33
  call void @_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.e = load i8, ptr %1, align 8, !tbaa !24, !range !25, !noundef !26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.r, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.c
  %.01763 = phi i32 [ 0, %bb.a ], [ %.118, %bb.c ]
  %.sroa.046.060 = phi i64 [ 429496729600, %bb.a ], [ %.sroa.046.0.insert.ext, %bb.c ]
  %.sroa.850.061 = phi i64 [ 6364136223846793006, %bb.a ], [ %i.k, %bb.c ] ; 2 uses
  %i.g = phi i32 [ 0, %bb.a ], [ %i.ab, %bb.c ]
  %i.h = mul i64 %.sroa.850.061, 6364136223846793005
  %i.i = add i64 %i.h, 1                          ; 2 uses
  %i.j = mul i64 %i.i, 6364136223846793005
  %i.k = add i64 %i.j, 1
  %i.l = insertelement <2 x i64> poison, i64 %.sroa.850.061, i64 0
  %i.m = insertelement <2 x i64> %i.l, i64 %i.i, i64 1 ; 3 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 45)
  %i.o = lshr <2 x i64> %i.m, splat (i64 27)
  %i.p = xor <2 x i64> %i.n, %i.o
  %i.q = trunc <2 x i64> %i.p to <2 x i32>        ; 2 uses
  %i.r = lshr <2 x i64> %i.m, splat (i64 59)
  %i.s = trunc nuw nsw <2 x i64> %i.r to <2 x i32>
  %i.t = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.q, <2 x i32> %i.q, <2 x i32> %i.s)
  %i.u = uitofp <2 x i32> %i.t to <2 x float>
  %i.v = fmul nnan <2 x float> %i.u, splat (float f0x2F800000) ; 2 uses
  %i.w = fcmp olt <2 x float> %i.v, splat (float f0x3F7FFFFF)
  %i.x = select <2 x i1> %i.w, <2 x float> %i.v, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !64
  %i.y = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> <float -1.000000e+00, float 0.000000e+00>, float 0.000000e+00, float noundef f0xBF733333, <2 x float> %i.x, ptr noundef nonnull %i.a), !noalias !64
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !64
  %.sroa.4.4.vec.extract = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.z = fcmp ule float %.sroa.4.4.vec.extract, 0.000000e+00 ; 2 uses
  %i.aa = zext i1 %i.z to i32
  %i.ab = add nuw nsw i32 %i.g, %i.aa             ; 2 uses
  %not. = xor i1 %i.z, true
  %i.ac = zext i1 %not. to i32
  %.118 = add nuw nsw i32 %.01763, %i.ac          ; 2 uses
  %4 = add nuw nsw i64 %.sroa.046.060, 1
  %.sroa.046.0.insert.ext = and i64 %4, 4294967295 ; 2 uses
  %.not = icmp eq i64 %.sroa.046.0.insert.ext, 100
  br i1 %.not, label %bb.b, label %bb.c

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.f ], [ @.str.30, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 62, ptr noundef %i.ag)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ah = load ptr, ptr %2, align 8, !tbaa !30
  %.not.i.i.i34 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i35 unwind label %bb.l

.noexc.i.i35:                                     ; preds = %bb.i
  br i1 %i.ai, label %bb.j, label %_ZN7testing7MessageD2Ev.exit36

bb.j:                                             ; preds = %.noexc.i.i35
  %i.aj = load ptr, ptr %2, align 8, !tbaa !30    ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN7testing7MessageD2Ev.exit36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit36

bb.l:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #22
  unreachable

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %bb.h, %.noexc.i.i35, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.ar, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  resume { ptr, i32 } %.pn.pn

bb.r:                                             ; preds = %bb.b, %_ZN7testing7MessageD2Ev.exit36
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  %.not.i.i.i37 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit42, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i38 unwind label %bb.v

.noexc.i.i38:                                     ; preds = %bb.s
  br i1 %i.av, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit42

bb.t:                                             ; preds = %.noexc.i.i38
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !27 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN7testing15AssertionResultD2Ev.exit42, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39: ; preds = %bb.u
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !20
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit42

bb.v:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #22
  unreachable

_ZN7testing15AssertionResultD2Ev.exit42:          ; preds = %bb.r, %.noexc.i.i38, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN32HenyeyGreenstein_Normalized_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %.03172 = phi float [ -7.500000e-01, %bb.a ], [ %i.dr, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %.sroa.064.071 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.ao, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %i.b = mul i64 %.sroa.064.071, 6364136223846793005
  %i.c = add i64 %i.b, -2720673578348880933       ; 2 uses
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = insertelement <2 x i64> %i.d, i64 %.sroa.064.071, i64 1 ; 3 uses
  %i.f = lshr <2 x i64> %i.e, splat (i64 45)
  %i.g = lshr <2 x i64> %i.e, splat (i64 27)
  %i.h = xor <2 x i64> %i.f, %i.g
  %i.i = trunc <2 x i64> %i.h to <2 x i32>        ; 2 uses
  %i.j = lshr <2 x i64> %i.e, splat (i64 59)
  %i.k = trunc nuw nsw <2 x i64> %i.j to <2 x i32>
  %i.l = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.i, <2 x i32> %i.i, <2 x i32> %i.k)
  %i.m = uitofp <2 x i32> %i.l to <2 x float>
  %i.n = fmul nnan <2 x float> %i.m, splat (float f0x2F800000) ; 3 uses
  %i.o = fcmp olt <2 x float> %i.n, splat (float f0x3F7FFFFF) ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 1
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = extractelement <2 x i1> %i.o, i64 0
  %i.s = extractelement <2 x float> %i.n, i64 0
  %i.t = fmul nnan float %i.q, 2.000000e+00
  %i.u = fsub float 1.000000e+00, %i.t
  %i.v = select i1 %i.p, float %i.u, float f0xBF7FFFFE ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = fsub float 1.000000e+00, %i.w            ; 2 uses
  %i.y = fcmp ogt float %i.x, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.y, float %i.x, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.z = fmul nnan float %i.s, f0x40C90FDB
  %i.aa = select i1 %i.r, float %i.z, float f0x40C90FDA ; 2 uses
  %i.ab = call noundef float @cosf(float noundef %i.aa) #20
  %i.ac = fmul float %sqrt.i.i, %i.ab
  %i.ad = call noundef float @sinf(float noundef %i.aa) #20
  %i.ae = fmul float %sqrt.i.i, %i.ad
  %i.af = fpext float %.03172 to double           ; 2 uses
  %i.ag = fcmp olt double %i.af, f0xBFEFAE147AE147AE
  %i.ah = fcmp ogt double %i.af, f0x3FEFAE147AE147AE
  %spec.select.i.i.i = select i1 %i.ah, float 9.900000e-01, float %.03172
  %.0.i.i.i = select i1 %i.ag, float -9.900000e-01, float %spec.select.i.i.i ; 3 uses
  %i.ai = fmul float %.0.i.i.i, %.0.i.i.i         ; 2 uses
  %i.aj = fadd float %i.ai, 1.000000e+00
  %i.ak = fmul nnan float %.0.i.i.i, 2.000000e+00
  %i.al = fsub nnan float 1.000000e+00, %i.ai
  %i.am = fmul nnan float %i.al, f0x3DA2F983
  br label %bb.e

end_hunk_0
