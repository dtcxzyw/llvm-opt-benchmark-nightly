Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN39LowDiscrepancy_SobolFirstDimension_Test8TestBodyEv:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.1.i = phi i32 [ %i.i, %bb.d ], [ %.0914.i, %.lr.ph.i ] ; 2 uses
  %i.j = lshr i64 %.01013.i, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !5

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit: ; preds = %bb.c, %._crit_edge.loopexit.i
  %.09.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.e, %._crit_edge.loopexit.i ] ; 2 uses
  %i.k = fcmp ogt float %.09.lcssa.i, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.k, float f0x3F7FFFFF, float %.09.lcssa.i
  store float %.sroa.speculated.i, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = call noundef i32 @llvm.bitreverse.i32(i32 %i.l)
  %i.n = uitofp i32 %i.m to float
  %i.o = fmul nnan float %i.n, f0x2F800000
  store float %i.o, ptr %i.b, align 4, !tbaa !22
  call void @_ZN7testing8internal11CmpHelperEQIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = load i8, ptr %1, align 8, !tbaa !28, !range !29, !noundef !30
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.t, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.h, %bb.g
  %i.t = phi ptr [ %i.s, %bb.h ], [ @.str.360, %bb.g ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 151, ptr noundef %i.t)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.u = load ptr, ptr %2, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.n

.noexc.i.i:                                       ; preds = %bb.k
  br i1 %i.v, label %bb.l, label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %.noexc.i.i
  %i.w = load ptr, ptr %2, align 8, !tbaa !39     ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN7testing7MessageD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.j, %.noexc.i.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.ae, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.ad, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn

bb.t:                                             ; preds = %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !31
  %.not.i.i.i10 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i10, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i11 unwind label %bb.x

.noexc.i.i11:                                     ; preds = %bb.u
  br i1 %i.ah, label %bb.v, label %_ZN7testing15AssertionResultD2Ev.exit

bb.v:                                             ; preds = %.noexc.i.i11
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !31  ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.an = load i64, ptr %i.al, align 8, !tbaa !42
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.x:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.t, %.noexc.i.i11, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !134
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26Sobol_IntervalToIndex_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %7 = alloca %"class.testing::Message", align 8  ; 21 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 15 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv298 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next299, %bb.d ] ; 7 uses
  %i.o = trunc nuw nsw i64 %indvars.iv298 to i32
  %i.p = shl nuw nsw i32 1, %i.o                  ; 3 uses
  %i.q = icmp eq i64 %indvars.iv298, 0
  %i.r = uitofp nneg i32 %i.p to float            ; 2 uses
  %i.s = shl nuw nsw i64 %indvars.iv298, 1
  %14 = getelementptr [416 x i8], ptr @_ZN4pbrt16VdCSobolMatricesE, i64 %indvars.iv298 ; 5 uses
  %15 = getelementptr i8, ptr %14, i64 -416
  %i.t = getelementptr [416 x i8], ptr @_ZN4pbrt19VdCSobolMatricesInvE, i64 %indvars.iv298
  %16 = getelementptr i8, ptr %i.t, i64 -416
  %wide.trip.count296 = zext nneg i32 %i.p to i64 ; 2 uses
  %i.u = getelementptr i8, ptr %14, i64 -408
  %i.v = getelementptr i8, ptr %14, i64 -400
  %i.w = getelementptr i8, ptr %14, i64 -392
  %i.x = getelementptr i8, ptr %14, i64 -384
  br label %.preheader227

.preheader227:                                    ; preds = %bb.c, %bb.e
  %indvars.iv293 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next294, %bb.e ] ; 4 uses
  %i.y = trunc nuw nsw i64 %indvars.iv293 to i32  ; 3 uses
  %i.z = uitofp nneg i32 %i.y to float
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 3 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.next294 to i32
  %i.ab = uitofp nneg i32 %i.aa to float
  br label %.preheader

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next299, 8
  br i1 %exitcond301.not, label %bb.b, label %bb.c, !llvm.loop !135

.preheader:                                       ; preds = %.preheader227, %bb.f
  %indvars.iv289 = phi i64 [ 0, %.preheader227 ], [ %indvars.iv.next290, %bb.f ] ; 4 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv289 to i32 ; 3 uses
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = shl nuw nsw i64 %indvars.iv289, %indvars.iv298
  %i.af = or i64 %i.ae, %indvars.iv293            ; 2 uses
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next290 to i32
  %i.ah = uitofp nneg i32 %i.ag to float
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not, label %bb.d, label %.preheader227, !llvm.loop !136

bb.f:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit178
  %exitcond292.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count296
  br i1 %exitcond292.not, label %bb.e, label %.preheader, !llvm.loop !137

bb.g:                                             ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit178
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit178 ] ; 15 uses
  %.036285 = phi i8 [ 0, %.preheader ], [ %.137, %_ZN7testing15AssertionResultD2Ev.exit178 ] ; 3 uses
  br i1 %i.q, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = shl nuw nsw i64 %indvars.iv, %i.s       ; 2 uses
  %.not34.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.q, %bb.j, %bb.l, %bb.n, %bb.p, %bb.h
  %.025.lcssa.i = phi i64 [ 0, %bb.h ], [ %.1.i, %bb.j ], [ %.1.i.1, %bb.l ], [ %.1.i.2, %bb.n ], [ %.1.i.3, %bb.p ], [ %i.ax, %bb.q ] ; 2 uses
  %.not3138.i = icmp eq i64 %.025.lcssa.i, %i.af
  br i1 %.not3138.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i
  %i.aj = xor i64 %.025.lcssa.i, %i.af
  br label %bb.r

.lr.ph.i:                                         ; preds = %bb.h
  %i.ak = and i64 %indvars.iv, 1
  %.not33.i = icmp eq i64 %i.ak, 0
  br i1 %.not33.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.al = load i64, ptr %15, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.1.i = phi i64 [ %i.al, %bb.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.not.i = icmp eq i64 %indvars.iv, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.j
  %i.am = and i64 %indvars.iv, 2
  %.not33.i.1 = icmp eq i64 %i.am, 0
  br i1 %.not33.i.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.an = load i64, ptr %i.u, align 8, !tbaa !61
  %i.ao = xor i64 %i.an, %.1.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.1
  %.1.i.1 = phi i64 [ %i.ao, %bb.k ], [ %.1.i, %.lr.ph.i.1 ] ; 3 uses
  %.not.i.1 = icmp samesign ult i64 %indvars.iv, 4
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.l
  %i.ap = and i64 %indvars.iv, 4
  %.not33.i.2 = icmp eq i64 %i.ap, 0
  br i1 %.not33.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.2
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !61
  %i.ar = xor i64 %i.aq, %.1.i.1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.2
  %.1.i.2 = phi i64 [ %i.ar, %bb.m ], [ %.1.i.1, %.lr.ph.i.2 ] ; 3 uses
  %.not.i.2 = icmp samesign ult i64 %indvars.iv, 8
  br i1 %.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %i.as = and i64 %indvars.iv, 8
  %.not33.i.3 = icmp eq i64 %i.as, 0
  br i1 %.not33.i.3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.at = load i64, ptr %i.w, align 8, !tbaa !61
  %i.au = xor i64 %i.at, %.1.i.2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.3
  %.1.i.3 = phi i64 [ %i.au, %bb.o ], [ %.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.not.i.3 = icmp samesign ult i64 %indvars.iv, 16
  %i.av = and i64 %indvars.iv, 16
  %.not33.i.4 = icmp eq i64 %i.av, 0
  %or.cond = or i1 %.not.i.3, %.not33.i.4
  br i1 %or.cond, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load i64, ptr %i.x, align 8, !tbaa !61
  %i.ax = xor i64 %i.aw, %.1.i.3
  br label %._crit_edge.i

bb.r:                                             ; preds = %bb.t, %.lr.ph43.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next47.i, %bb.t ] ; 2 uses
  %.02340.i = phi i64 [ %i.aj, %.lr.ph43.i ], [ %i.bc, %bb.t ] ; 2 uses
  %.02639.i = phi i64 [ %i.ai, %.lr.ph43.i ], [ %.127.i, %bb.t ] ; 2 uses
  %i.ay = and i64 %.02340.i, 1
  %.not32.i = icmp eq i64 %i.ay, 0
  br i1 %.not32.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv46.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !61
  %i.bb = xor i64 %i.ba, %.02639.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.127.i = phi i64 [ %i.bb, %bb.s ], [ %.02639.i, %bb.r ] ; 2 uses
  %i.bc = lshr i64 %.02340.i, 1                   ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %.not31.i = icmp eq i64 %i.bc, 0
  br i1 %.not31.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.r, !llvm.loop !6

_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit: ; preds = %bb.t, %bb.g, %._crit_edge.i
  %.029.i = phi i64 [ %indvars.iv, %bb.g ], [ %i.ai, %._crit_edge.i ], [ %.127.i, %bb.t ] ; 4 uses
  %.not12.i = icmp eq i64 %.029.i, 0
  br i1 %.not12.i, label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %bb.v
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i55, %bb.v ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.0914.i = phi i32 [ %.1.i54, %bb.v ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.01013.i = phi i64 [ %i.bh, %bb.v ], [ %.029.i, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %i.bd = and i64 %.01013.i, 1
  %.not11.i = icmp eq i64 %i.bd, 0
  br i1 %.not11.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i52
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i53
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !20
  %i.bg = xor i32 %i.bf, %.0914.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i52
  %.1.i54 = phi i32 [ %i.bg, %bb.u ], [ %.0914.i, %.lr.ph.i52 ] ; 2 uses
  %i.bh = ashr i64 %.01013.i, 1                   ; 2 uses
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i53, 1
  %.not.i56 = icmp eq i64 %i.bh, 0
  br i1 %.not.i56, label %.lr.ph.i60, label %.lr.ph.i52, !llvm.loop !5

._crit_edge.loopexit.i68:                         ; preds = %bb.x
  %i.bi = uitofp i32 %.1.i54 to float
  %i.bj = fmul nnan float %i.bi, f0x2F800000      ; 2 uses
  %i.bk = fcmp ogt float %i.bj, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.bk, float f0x3F7FFFFF, float %i.bj
  %i.bl = uitofp i32 %.1.i65 to float
  %i.bm = fmul nnan float %i.bl, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72

.lr.ph.i60:                                       ; preds = %bb.v, %bb.x
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i66, %bb.x ], [ 52, %bb.v ] ; 2 uses
  %.0914.i62 = phi i32 [ %.1.i65, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.01013.i63 = phi i64 [ %i.br, %bb.x ], [ %.029.i, %bb.v ] ; 2 uses
  %i.bn = and i64 %.01013.i63, 1
  %.not11.i64 = icmp eq i64 %i.bn, 0
  br i1 %.not11.i64, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i60
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i61
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !20
  %i.bq = xor i32 %i.bp, %.0914.i62
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i60
  %.1.i65 = phi i32 [ %i.bq, %bb.w ], [ %.0914.i62, %.lr.ph.i60 ] ; 2 uses
  %i.br = ashr i64 %.01013.i63, 1                 ; 2 uses
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i61, 1
  %.not.i67 = icmp eq i64 %i.br, 0
  br i1 %.not.i67, label %._crit_edge.loopexit.i68, label %.lr.ph.i60, !llvm.loop !5

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72: ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %._crit_edge.loopexit.i68
  %.sroa.speculated.i220 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %.sroa.speculated.i, %._crit_edge.loopexit.i68 ] ; 2 uses
  %.09.lcssa.i70 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %i.bm, %._crit_edge.loopexit.i68 ] ; 2 uses
  %i.bs = fcmp ogt float %.09.lcssa.i70, f0x3F7FFFFF
  %.sroa.speculated.i71 = select i1 %i.bs, float f0x3F7FFFFF, float %.09.lcssa.i70 ; 2 uses
  %i.bt = fmul float %.sroa.speculated.i220, %i.r ; 5 uses
  %i.bu = fmul nnan float %.sroa.speculated.i71, %i.r ; 5 uses
  %i.bv = fcmp oeq float %i.bt, %i.ad
  %i.bw = fcmp oeq float %i.bu, %i.z
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %bb.y, label %bb.bf

bb.y:                                             ; preds = %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.by = trunc nuw i8 %.036285 to i1
  %i.bz = xor i8 %.036285, 1
  store i8 %i.bz, ptr %6, align 8, !tbaa !28
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br i1 %i.by, label %bb.z, label %_ZN7testing15AssertionResultD2Ev.exit120

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.aa unwind label %bb.al

bb.aa:                                            ; preds = %bb.z
  %i.ca = load ptr, ptr %7, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.52, i64 noundef 13)
          to label %_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit:       ; preds = %bb.aa
  %i.cd = load ptr, ptr %7, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN4pbrt8internal9ToString2IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.ac, i32 noundef %i.y)
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %5, align 8, !tbaa !36
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !60
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.cf, i64 noundef %i.cg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ab ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.ci = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.c
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !42
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ab:                                            ; preds = %.noexc
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ab
end_hunk_0
begin_hunk_1_@_ZN26Sobol_IntervalToIndex_Test8TestBodyEv:bb.a
  %i.ju = load ptr, ptr %11, align 8, !tbaa !39   ; 3 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %_ZN7testing7MessageD2Ev.exit166, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jw = load ptr, ptr %i.ju, align 8, !tbaa !41
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(128) %i.ju) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit166

bb.cc:                                            ; preds = %bb.bz
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #31
  unreachable

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %bb.cb, %bb.ca, %.noexc.i.i165, %.body135, %bb.bs
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ji, %bb.bs ], [ %.pn45.pn.pn.pn, %.body135 ], [ %.pn45.pn.pn.pn, %.noexc.i.i165 ], [ %.pn45.pn.pn.pn, %bb.ca ], [ %.pn45.pn.pn.pn, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.kb = load ptr, ptr %i.i, align 8, !tbaa !31
  %.not.i.i.i167 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i167, label %_ZN7testing15AssertionResultD2Ev.exit172, label %bb.cd

bb.cd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit166
  %i.kc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i168 unwind label %bb.cg

.noexc.i.i168:                                    ; preds = %bb.cd
  br i1 %i.kc, label %bb.ce, label %_ZN7testing15AssertionResultD2Ev.exit172

bb.ce:                                            ; preds = %.noexc.i.i168
  %i.kd = load ptr, ptr %i.i, align 8, !tbaa !31  ; 4 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %_ZN7testing15AssertionResultD2Ev.exit172, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kf = load ptr, ptr %i.kd, align 8, !tbaa !36 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169: ; preds = %bb.cf
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !42
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i170: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit172

bb.cg:                                            ; preds = %bb.cd
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  call void @__clang_call_terminate(ptr %i.kl) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit172:         ; preds = %_ZN7testing7MessageD2Ev.exit166, %.noexc.i.i168, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.cm

bb.ch:                                            ; preds = %bb.bq, %bb.bp, %.noexc.i.i159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %.pr223 = load ptr, ptr %i.i, align 8, !tbaa !31
  %.not.i.i.i173 = icmp eq ptr %.pr223, null
  br i1 %.not.i.i.i173, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.km = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i174 unwind label %bb.cl

.noexc.i.i174:                                    ; preds = %bb.ci
  br i1 %i.km, label %bb.cj, label %_ZN7testing15AssertionResultD2Ev.exit178

bb.cj:                                            ; preds = %.noexc.i.i174
  %i.kn = load ptr, ptr %i.i, align 8, !tbaa !31  ; 4 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !36 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175: ; preds = %bb.ck
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !42
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit178

bb.cl:                                            ; preds = %bb.ci
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit178:         ; preds = %bb.bf, %bb.bg, %bb.ch, %.noexc.i.i174, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !138

bb.cm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit172, %_ZN7testing15AssertionResultD2Ev.exit
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit172 ], [ %.pn.pn.pn.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit ]
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn
}

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN33Sobol_IntervalToIndexRandoms_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %4 = alloca %"class.testing::Message", align 8  ; 14 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %.026136 = phi i32 [ 0, %bb.a ], [ %i.ga, %_ZN7testing15AssertionResultD2Ev.exit ]
  %.sroa.0102.0135 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.am, %_ZN7testing15AssertionResultD2Ev.exit ]
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.c:                                             ; preds = %.preheader, %bb.c
  %i.g = phi i64 [ %i.i, %bb.c ], [ %.sroa.0102.0135, %.preheader ] ; 4 uses
  %i.h = mul i64 %i.g, 6364136223846793005
  %i.i = add i64 %i.h, -2720673578348880933       ; 2 uses
  %i.j = lshr i64 %i.g, 45
  %i.k = lshr i64 %i.g, 27
  %i.l = xor i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i64 %i.g, 59
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = call noundef i32 @llvm.fshr.i32(i32 %i.m, i32 %i.m, i32 %i.o) ; 2 uses
  %.not.i = icmp slt i32 %i.p, 0
  br i1 %.not.i, label %bb.c, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit: ; preds = %bb.c, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit
  %i.q = phi i64 [ %i.s, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit ], [ %i.i, %bb.c ] ; 4 uses
  %i.r = mul i64 %i.q, 6364136223846793005
  %i.s = add i64 %i.r, -2720673578348880933       ; 2 uses
  %i.t = lshr i64 %i.q, 45
  %i.u = lshr i64 %i.q, 27
  %i.v = xor i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = lshr i64 %i.q, 59
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = call noundef i32 @llvm.fshr.i32(i32 %i.w, i32 %i.w, i32 %i.y) ; 2 uses
  %.not.i33 = icmp slt i32 %i.z, 0
  br i1 %.not.i33, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34: ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34
  %i.aa = phi i64 [ %i.ac, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34 ], [ %i.s, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit ] ; 4 uses
  %i.ab = mul i64 %i.aa, 6364136223846793005
  %i.ac = add i64 %i.ab, -2720673578348880933     ; 2 uses
  %i.ad = lshr i64 %i.aa, 45
  %i.ae = lshr i64 %i.aa, 27
  %i.af = xor i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = lshr i64 %i.aa, 59
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = call noundef i32 @llvm.fshr.i32(i32 %i.ag, i32 %i.ag, i32 %i.ai) ; 2 uses
  %.not.i36 = icmp slt i32 %i.aj, 0
  br i1 %.not.i36, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37: ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37
  %i.ak = phi i64 [ %i.am, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37 ], [ %i.ac, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit34 ] ; 4 uses
  %i.al = mul i64 %i.ak, 6364136223846793005
  %i.am = add i64 %i.al, -2720673578348880933     ; 2 uses
  %i.an = lshr i64 %i.ak, 45
  %i.ao = lshr i64 %i.ak, 27
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = lshr i64 %i.ak, 59
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = call noundef i32 @llvm.fshr.i32(i32 %i.aq, i32 %i.aq, i32 %i.as) ; 2 uses
  %.not.i39 = icmp slt i32 %i.at, 0
  br i1 %.not.i39, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40: ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit37
  %i.au = and i32 %i.p, 15                        ; 4 uses
  %i.av = shl nuw nsw i32 1, %i.au                ; 2 uses
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  %i.ax = and i32 %i.z, %i.aw                     ; 4 uses
  %i.ay = and i32 %i.aj, %i.aw                    ; 4 uses
  %i.az = and i32 %i.at, 8191                     ; 3 uses
  %i.ba = zext nneg i32 %i.az to i64              ; 3 uses
  %.sroa.2101.0.insert.ext = zext nneg i32 %i.ay to i64
  %.sroa.0100.0.insert.ext = zext nneg i32 %i.ax to i64
  %i.bb = icmp eq i32 %i.au, 0
  br i1 %i.bb, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40
  %i.bc = shl nuw nsw i32 %i.au, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.ba, %i.bd            ; 2 uses
  %.not34.i = icmp eq i32 %i.az, 0
  %.pre = zext nneg i32 %i.au to i64              ; 3 uses
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.bf = getelementptr [416 x i8], ptr @_ZN4pbrt16VdCSobolMatricesE, i64 %.pre
  %i.bg = getelementptr i8, ptr %i.bf, i64 -416
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %.025.lcssa.i = phi i64 [ 0, %bb.d ], [ %.1.i, %bb.g ] ; 2 uses
  %i.bh = shl nuw nsw i64 %.sroa.0100.0.insert.ext, %.pre
  %i.bi = or i64 %i.bh, %.sroa.2101.0.insert.ext  ; 2 uses
  %.not3138.i = icmp eq i64 %.025.lcssa.i, %i.bi
  br i1 %.not3138.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i
  %i.bj = xor i64 %.025.lcssa.i, %i.bi
  %i.bk = getelementptr [416 x i8], ptr @_ZN4pbrt19VdCSobolMatricesInvE, i64 %.pre
  %i.bl = getelementptr i8, ptr %i.bk, i64 -416
  br label %bb.h

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.02536.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.02835.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.bq, %bb.g ] ; 2 uses
  %i.bm = and i64 %.02835.i, 1
  %.not33.i = icmp eq i64 %i.bm, 0
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !61
  %i.bp = xor i64 %i.bo, %.02536.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i64 [ %i.bp, %bb.f ], [ %.02536.i, %bb.e ] ; 2 uses
  %i.bq = lshr i64 %.02835.i, 1                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i41 = icmp eq i64 %i.bq, 0
  br i1 %.not.i41, label %._crit_edge.i, label %bb.e, !llvm.loop !139

bb.h:                                             ; preds = %bb.j, %.lr.ph43.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next47.i, %bb.j ] ; 2 uses
  %.02340.i = phi i64 [ %i.bj, %.lr.ph43.i ], [ %i.bv, %bb.j ] ; 2 uses
  %.02639.i = phi i64 [ %i.be, %.lr.ph43.i ], [ %.127.i, %bb.j ] ; 2 uses
  %i.br = and i64 %.02340.i, 1
  %.not32.i = icmp eq i64 %i.br, 0
  br i1 %.not32.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv46.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !61
  %i.bu = xor i64 %i.bt, %.02639.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.127.i = phi i64 [ %i.bu, %bb.i ], [ %.02639.i, %bb.h ] ; 2 uses
  %i.bv = lshr i64 %.02340.i, 1                   ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %.not31.i = icmp eq i64 %i.bv, 0
  br i1 %.not31.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.h, !llvm.loop !6

_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit: ; preds = %bb.j, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40, %._crit_edge.i
  %.029.i = phi i64 [ %i.ba, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40 ], [ %i.be, %._crit_edge.i ], [ %.127.i, %bb.j ] ; 3 uses
  %.not12.i = icmp eq i64 %.029.i, 0
  br i1 %.not12.i, label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %bb.l
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i45, %bb.l ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.0914.i = phi i32 [ %.1.i44, %bb.l ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.01013.i = phi i64 [ %i.ca, %bb.l ], [ %.029.i, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %i.bw = and i64 %.01013.i, 1
  %.not11.i = icmp eq i64 %i.bw, 0
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i42
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i43
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !20
  %i.bz = xor i32 %i.by, %.0914.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i42
  %.1.i44 = phi i32 [ %i.bz, %bb.k ], [ %.0914.i, %.lr.ph.i42 ] ; 2 uses
  %i.ca = ashr i64 %.01013.i, 1                   ; 2 uses
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i43, 1
  %.not.i46 = icmp eq i64 %i.ca, 0
  br i1 %.not.i46, label %.lr.ph.i50, label %.lr.ph.i42, !llvm.loop !5

._crit_edge.loopexit.i58:                         ; preds = %bb.n
  %i.cb = uitofp i32 %.1.i44 to float
  %i.cc = fmul nnan float %i.cb, f0x2F800000      ; 2 uses
  %i.cd = fcmp ogt float %i.cc, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.cd, float f0x3F7FFFFF, float %i.cc
  %i.ce = uitofp i32 %.1.i55 to float
  %i.cf = fmul nnan float %i.ce, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62

.lr.ph.i50:                                       ; preds = %bb.l, %bb.n
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i56, %bb.n ], [ 52, %bb.l ] ; 2 uses
  %.0914.i52 = phi i32 [ %.1.i55, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.01013.i53 = phi i64 [ %i.ck, %bb.n ], [ %.029.i, %bb.l ] ; 2 uses
  %i.cg = and i64 %.01013.i53, 1
  %.not11.i54 = icmp eq i64 %i.cg, 0
  br i1 %.not11.i54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i50
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i51
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !20
  %i.cj = xor i32 %i.ci, %.0914.i52
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i50
  %.1.i55 = phi i32 [ %i.cj, %bb.m ], [ %.0914.i52, %.lr.ph.i50 ] ; 2 uses
  %i.ck = ashr i64 %.01013.i53, 1                 ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i51, 1
  %.not.i57 = icmp eq i64 %i.ck, 0
  br i1 %.not.i57, label %._crit_edge.loopexit.i58, label %.lr.ph.i50, !llvm.loop !5

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62: ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %._crit_edge.loopexit.i58
  %.sroa.speculated.i111 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %.sroa.speculated.i, %._crit_edge.loopexit.i58 ]
  %.09.lcssa.i60 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %i.cf, %._crit_edge.loopexit.i58 ] ; 2 uses
  %i.cl = fcmp ogt float %.09.lcssa.i60, f0x3F7FFFFF
  %.sroa.speculated.i61 = select i1 %i.cl, float f0x3F7FFFFF, float %.09.lcssa.i60
  %i.cm = uitofp nneg i32 %i.av to float          ; 2 uses
  %i.cn = fmul nnan float %.sroa.speculated.i111, %i.cm
  %i.co = fptosi float %i.cn to i32               ; 2 uses
  %i.cp = sitofp i32 %i.co to float               ; 2 uses
  %i.cq = fmul nnan float %.sroa.speculated.i61, %i.cm
  %i.cr = fptosi float %i.cq to i32               ; 2 uses
  %i.cs = sitofp i32 %i.cr to float               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ct = icmp eq i32 %i.ax, %i.co                ; 2 uses
  %i.cu = icmp eq i32 %i.ay, %i.cr                ; 2 uses
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = add nuw nsw i32 %i.ay, 1
  %i.cx = uitofp nneg i32 %i.cw to float
  %i.cy = fcmp oeq float %i.cs, %i.cx
  br i1 %i.cy, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cz = add nuw nsw i32 %i.ax, 1
  %i.da = uitofp nneg i32 %i.cz to float
  %i.db = fcmp oeq float %i.cp, %i.da
  %i.dc = select i1 %i.db, i1 %i.cu, i1 false     ; 2 uses
  %i.dd = zext i1 %i.dc to i8
  store i8 %i.dd, ptr %3, align 8, !tbaa !28
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br i1 %i.dc, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr %4, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.61, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.ad ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %bb.s
  %i.dh = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN4pbrt8internal9ToString2IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.ax, i32 noundef %i.ay)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %2, align 8, !tbaa !36
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !60
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dj, i64 noundef %i.dk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.t ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.dm = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.c
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.do = load i64, ptr %i.c, align 8, !tbaa !42
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.t:                                             ; preds = %.noexc
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.c
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.t
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !42
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.dv = load ptr, ptr %4, align 8, !tbaa !39
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.62, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit unwind label %bb.ae ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dy = load ptr, ptr %4, align 8, !tbaa !39
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
end_hunk_1
