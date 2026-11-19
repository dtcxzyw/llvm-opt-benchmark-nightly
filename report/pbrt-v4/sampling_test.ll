Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN39LowDiscrepancy_SobolFirstDimension_Test8TestBodyEv:bb.a

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
  %indvars.iv296 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next297, %bb.d ] ; 6 uses
  %i.o = trunc nuw nsw i64 %indvars.iv296 to i32
  %i.p = shl nuw nsw i32 1, %i.o                  ; 3 uses
  %i.q = icmp eq i64 %indvars.iv296, 0
  %i.r = uitofp nneg i32 %i.p to float            ; 2 uses
  %i.s = shl nuw nsw i64 %indvars.iv296, 1
  %i.t = add nuw i64 %indvars.iv296, 4294967295
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  %i.v = getelementptr inbounds nuw [416 x i8], ptr @_ZN4pbrt16VdCSobolMatricesE, i64 %i.u ; 5 uses
  %i.w = getelementptr inbounds nuw [416 x i8], ptr @_ZN4pbrt19VdCSobolMatricesInvE, i64 %i.u
  %wide.trip.count294 = zext nneg i32 %i.p to i64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  br label %.preheader227

.preheader227:                                    ; preds = %bb.c, %bb.e
  %indvars.iv291 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next292, %bb.e ] ; 4 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv291 to i32 ; 3 uses
  %i.ac = uitofp nneg i32 %i.ab to float
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv.next292 to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  br label %.preheader

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, 8
  br i1 %exitcond299.not, label %bb.b, label %bb.c, !llvm.loop !135

.preheader:                                       ; preds = %.preheader227, %bb.f
  %indvars.iv287 = phi i64 [ 0, %.preheader227 ], [ %indvars.iv.next288, %bb.f ] ; 4 uses
  %i.af = trunc nuw nsw i64 %indvars.iv287 to i32 ; 3 uses
  %i.ag = uitofp nneg i32 %i.af to float
  %i.ah = shl nuw nsw i64 %indvars.iv287, %indvars.iv296
  %i.ai = or i64 %i.ah, %indvars.iv291            ; 2 uses
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 3 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv.next288 to i32
  %i.ak = uitofp nneg i32 %i.aj to float
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %bb.d, label %.preheader227, !llvm.loop !136

bb.f:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit178
  %exitcond290.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count294
  br i1 %exitcond290.not, label %bb.e, label %.preheader, !llvm.loop !137

bb.g:                                             ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit178
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit178 ] ; 15 uses
  %.036283 = phi i8 [ 0, %.preheader ], [ %.137, %_ZN7testing15AssertionResultD2Ev.exit178 ] ; 3 uses
  br i1 %i.q, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = shl nuw nsw i64 %indvars.iv, %i.s       ; 2 uses
  %.not34.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.q, %bb.j, %bb.l, %bb.n, %bb.p, %bb.h
  %.025.lcssa.i = phi i64 [ 0, %bb.h ], [ %.1.i, %bb.j ], [ %.1.i.1, %bb.l ], [ %.1.i.2, %bb.n ], [ %.1.i.3, %bb.p ], [ %i.ba, %bb.q ] ; 2 uses
  %.not3138.i = icmp eq i64 %.025.lcssa.i, %i.ai
  br i1 %.not3138.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i
  %i.am = xor i64 %.025.lcssa.i, %i.ai
  br label %bb.r

.lr.ph.i:                                         ; preds = %bb.h
  %i.an = and i64 %indvars.iv, 1
  %.not33.i = icmp eq i64 %i.an, 0
  br i1 %.not33.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = load i64, ptr %i.v, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.1.i = phi i64 [ %i.ao, %bb.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.not.i = icmp eq i64 %indvars.iv, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.j
  %i.ap = and i64 %indvars.iv, 2
  %.not33.i.1 = icmp eq i64 %i.ap, 0
  br i1 %.not33.i.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !61
  %i.ar = xor i64 %i.aq, %.1.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.1
  %.1.i.1 = phi i64 [ %i.ar, %bb.k ], [ %.1.i, %.lr.ph.i.1 ] ; 3 uses
  %.not.i.1 = icmp samesign ult i64 %indvars.iv, 4
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.l
  %i.as = and i64 %indvars.iv, 4
  %.not33.i.2 = icmp eq i64 %i.as, 0
  br i1 %.not33.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.2
  %i.at = load i64, ptr %i.y, align 8, !tbaa !61
  %i.au = xor i64 %i.at, %.1.i.1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.2
  %.1.i.2 = phi i64 [ %i.au, %bb.m ], [ %.1.i.1, %.lr.ph.i.2 ] ; 3 uses
  %.not.i.2 = icmp samesign ult i64 %indvars.iv, 8
  br i1 %.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %i.av = and i64 %indvars.iv, 8
  %.not33.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not33.i.3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.aw = load i64, ptr %i.z, align 8, !tbaa !61
  %i.ax = xor i64 %i.aw, %.1.i.2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.3
  %.1.i.3 = phi i64 [ %i.ax, %bb.o ], [ %.1.i.2, %.lr.ph.i.3 ] ; 2 uses
  %.not.i.3 = icmp samesign ult i64 %indvars.iv, 16
  %i.ay = and i64 %indvars.iv, 16
  %.not33.i.4 = icmp eq i64 %i.ay, 0
  %or.cond = or i1 %.not.i.3, %.not33.i.4
  br i1 %or.cond, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = load i64, ptr %i.aa, align 8, !tbaa !61
  %i.ba = xor i64 %i.az, %.1.i.3
  br label %._crit_edge.i

bb.r:                                             ; preds = %bb.t, %.lr.ph43.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next47.i, %bb.t ] ; 2 uses
  %.02340.i = phi i64 [ %i.am, %.lr.ph43.i ], [ %i.bf, %bb.t ] ; 2 uses
  %.02639.i = phi i64 [ %i.al, %.lr.ph43.i ], [ %.127.i, %bb.t ] ; 2 uses
  %i.bb = and i64 %.02340.i, 1
  %.not32.i = icmp eq i64 %i.bb, 0
  br i1 %.not32.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv46.i
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !61
  %i.be = xor i64 %i.bd, %.02639.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.127.i = phi i64 [ %i.be, %bb.s ], [ %.02639.i, %bb.r ] ; 2 uses
  %i.bf = lshr i64 %.02340.i, 1                   ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %.not31.i = icmp eq i64 %i.bf, 0
  br i1 %.not31.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.r, !llvm.loop !6

_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit: ; preds = %bb.t, %bb.g, %._crit_edge.i
  %.029.i = phi i64 [ %indvars.iv, %bb.g ], [ %i.al, %._crit_edge.i ], [ %.127.i, %bb.t ] ; 4 uses
  %.not12.i = icmp eq i64 %.029.i, 0
  br i1 %.not12.i, label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %bb.v
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i55, %bb.v ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.0914.i = phi i32 [ %.1.i54, %bb.v ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.01013.i = phi i64 [ %i.bk, %bb.v ], [ %.029.i, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %i.bg = and i64 %.01013.i, 1
  %.not11.i = icmp eq i64 %i.bg, 0
  br i1 %.not11.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i52
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i53
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20
  %i.bj = xor i32 %i.bi, %.0914.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i52
  %.1.i54 = phi i32 [ %i.bj, %bb.u ], [ %.0914.i, %.lr.ph.i52 ] ; 2 uses
  %i.bk = ashr i64 %.01013.i, 1                   ; 2 uses
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i53, 1
  %.not.i56 = icmp eq i64 %i.bk, 0
  br i1 %.not.i56, label %.lr.ph.i60, label %.lr.ph.i52, !llvm.loop !5

._crit_edge.loopexit.i68:                         ; preds = %bb.x
  %i.bl = uitofp i32 %.1.i54 to float
  %i.bm = fmul nnan float %i.bl, f0x2F800000      ; 2 uses
  %i.bn = fcmp ogt float %i.bm, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.bn, float f0x3F7FFFFF, float %i.bm
  %i.bo = uitofp i32 %.1.i65 to float
  %i.bp = fmul nnan float %i.bo, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72

.lr.ph.i60:                                       ; preds = %bb.v, %bb.x
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i66, %bb.x ], [ 52, %bb.v ] ; 2 uses
  %.0914.i62 = phi i32 [ %.1.i65, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.01013.i63 = phi i64 [ %i.bu, %bb.x ], [ %.029.i, %bb.v ] ; 2 uses
  %i.bq = and i64 %.01013.i63, 1
  %.not11.i64 = icmp eq i64 %i.bq, 0
  br i1 %.not11.i64, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i60
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i61
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !20
  %i.bt = xor i32 %i.bs, %.0914.i62
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i60
  %.1.i65 = phi i32 [ %i.bt, %bb.w ], [ %.0914.i62, %.lr.ph.i60 ] ; 2 uses
  %i.bu = ashr i64 %.01013.i63, 1                 ; 2 uses
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i61, 1
  %.not.i67 = icmp eq i64 %i.bu, 0
  br i1 %.not.i67, label %._crit_edge.loopexit.i68, label %.lr.ph.i60, !llvm.loop !5

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72: ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %._crit_edge.loopexit.i68
  %.sroa.speculated.i220 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %.sroa.speculated.i, %._crit_edge.loopexit.i68 ] ; 2 uses
  %.09.lcssa.i70 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %i.bp, %._crit_edge.loopexit.i68 ] ; 2 uses
  %i.bv = fcmp ogt float %.09.lcssa.i70, f0x3F7FFFFF
  %.sroa.speculated.i71 = select i1 %i.bv, float f0x3F7FFFFF, float %.09.lcssa.i70 ; 2 uses
  %i.bw = fmul float %.sroa.speculated.i220, %i.r ; 5 uses
  %i.bx = fmul nnan float %.sroa.speculated.i71, %i.r ; 5 uses
  %i.by = fcmp oeq float %i.bw, %i.ag
  %i.bz = fcmp oeq float %i.bx, %i.ac
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.y, label %bb.be

bb.y:                                             ; preds = %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.cb = trunc nuw i8 %.036283 to i1
  %i.cc = xor i8 %.036283, 1
  store i8 %i.cc, ptr %6, align 8, !tbaa !28
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br i1 %i.cb, label %bb.z, label %_ZN7testing15AssertionResultD2Ev.exit120

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.aa unwind label %bb.al

bb.aa:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %7, align 8, !tbaa !39
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.52, i64 noundef 13)
          to label %_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit:       ; preds = %bb.aa
  %i.cg = load ptr, ptr %7, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN4pbrt8internal9ToString2IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.af, i32 noundef %i.ab)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %5, align 8, !tbaa !36
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !60
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.ci, i64 noundef %i.cj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ab ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.cl = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.c
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !42
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ab:                                            ; preds = %.noexc
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.c
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ab
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !42
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cu = load ptr, ptr %7, align 8, !tbaa !39
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.53, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cx = load ptr, ptr %7, align 8, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i32 noundef %i.p)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.da = load ptr, ptr %7, align 8, !tbaa !39
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.54, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.dd = load ptr, ptr %7, align 8, !tbaa !39
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = trunc nuw nsw i64 %indvars.iv to i32
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i32 noundef %i.df)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit77 unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit77:         ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !39
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.55, i64 noundef 12)
          to label %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit77
  %i.dk = load ptr, ptr %7, align 8, !tbaa !39
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i64 noundef %.029.i)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit
  %i.dn = load ptr, ptr %7, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.56, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit81 unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit81:      ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.dq = load ptr, ptr %7, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, float noundef %i.bw, float noundef %i.bx)
          to label %.noexc90 unwind label %bb.am

.noexc90:                                         ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit81
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %4, align 8, !tbaa !36
  %i.dt = load i64, ptr %i.d, align 8, !tbaa !60
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.ds, i64 noundef %i.dt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i87 unwind label %bb.ac ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i87: ; preds = %.noexc90
  %i.dv = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.e
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i87
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !42
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i89

bb.ac:                                            ; preds = %.noexc90
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.e
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i84: ; preds = %bb.ac
  %i.ec = load i64, ptr %i.e, align 8, !tbaa !42
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i85: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i89: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ee = load ptr, ptr %7, align 8, !tbaa !39
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull @.str.57, i64 noundef 12)
          to label %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit94 unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit94:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i89
  %i.eh = load ptr, ptr %7, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, float noundef %.sroa.speculated.i220, float noundef %.sroa.speculated.i71)
          to label %.noexc103 unwind label %bb.am

.noexc103:                                        ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit94
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %3, align 8, !tbaa !36
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !60
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej, i64 noundef %i.ek)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i100 unwind label %bb.ad ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i100: ; preds = %.noexc103
  %i.em = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.g
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i100
  %i.eo = load i64, ptr %i.g, align 8, !tbaa !42
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102

bb.ad:                                            ; preds = %.noexc103
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.g
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i97: ; preds = %bb.ad
  %i.et = load i64, ptr %i.g, align 8, !tbaa !42
end_hunk_0
begin_hunk_1_@_ZN26Sobol_IntervalToIndex_Test8TestBodyEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175: ; preds = %bb.ci
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !42
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit178

bb.cj:                                            ; preds = %bb.cg
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit178:         ; preds = %bb.be, %bb.bf, %bb.cf, %.noexc.i.i174, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !138

bb.ck:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit172, %_ZN7testing15AssertionResultD2Ev.exit
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
  %.026136 = phi i32 [ 0, %bb.a ], [ %i.gb, %_ZN7testing15AssertionResultD2Ev.exit ]
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
  %i.au = and i32 %i.p, 15                        ; 5 uses
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
  %.pre = zext nneg i32 %i.au to i64              ; 2 uses
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
  %i.bk = zext nneg i32 %i.au to i64
  %i.bl = getelementptr [416 x i8], ptr @_ZN4pbrt19VdCSobolMatricesInvE, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -416
  br label %bb.h

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.02536.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.02835.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.br, %bb.g ] ; 2 uses
  %i.bn = and i64 %.02835.i, 1
  %.not33.i = icmp eq i64 %i.bn, 0
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !61
  %i.bq = xor i64 %i.bp, %.02536.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i64 [ %i.bq, %bb.f ], [ %.02536.i, %bb.e ] ; 2 uses
  %i.br = lshr i64 %.02835.i, 1                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i41 = icmp eq i64 %i.br, 0
  br i1 %.not.i41, label %._crit_edge.i, label %bb.e, !llvm.loop !139

bb.h:                                             ; preds = %bb.j, %.lr.ph43.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next47.i, %bb.j ] ; 2 uses
  %.02340.i = phi i64 [ %i.bj, %.lr.ph43.i ], [ %i.bw, %bb.j ] ; 2 uses
  %.02639.i = phi i64 [ %i.be, %.lr.ph43.i ], [ %.127.i, %bb.j ] ; 2 uses
  %i.bs = and i64 %.02340.i, 1
  %.not32.i = icmp eq i64 %i.bs, 0
  br i1 %.not32.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv46.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !61
  %i.bv = xor i64 %i.bu, %.02639.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.127.i = phi i64 [ %i.bv, %bb.i ], [ %.02639.i, %bb.h ] ; 2 uses
  %i.bw = lshr i64 %.02340.i, 1                   ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %.not31.i = icmp eq i64 %i.bw, 0
  br i1 %.not31.i, label %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, label %bb.h, !llvm.loop !6

_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit: ; preds = %bb.j, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40, %._crit_edge.i
  %.029.i = phi i64 [ %i.ba, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit40 ], [ %i.be, %._crit_edge.i ], [ %.127.i, %bb.j ] ; 3 uses
  %.not12.i = icmp eq i64 %.029.i, 0
  br i1 %.not12.i, label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %bb.l
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i45, %bb.l ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.0914.i = phi i32 [ %.1.i44, %bb.l ], [ 0, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %.01013.i = phi i64 [ %i.cb, %bb.l ], [ %.029.i, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ] ; 2 uses
  %i.bx = and i64 %.01013.i, 1
  %.not11.i = icmp eq i64 %i.bx, 0
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i42
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i43
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20
  %i.ca = xor i32 %i.bz, %.0914.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i42
  %.1.i44 = phi i32 [ %i.ca, %bb.k ], [ %.0914.i, %.lr.ph.i42 ] ; 2 uses
  %i.cb = ashr i64 %.01013.i, 1                   ; 2 uses
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i43, 1
  %.not.i46 = icmp eq i64 %i.cb, 0
  br i1 %.not.i46, label %.lr.ph.i50, label %.lr.ph.i42, !llvm.loop !5

._crit_edge.loopexit.i58:                         ; preds = %bb.n
  %i.cc = uitofp i32 %.1.i44 to float
  %i.cd = fmul nnan float %i.cc, f0x2F800000      ; 2 uses
  %i.ce = fcmp ogt float %i.cd, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.ce, float f0x3F7FFFFF, float %i.cd
  %i.cf = uitofp i32 %.1.i55 to float
  %i.cg = fmul nnan float %i.cf, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62

.lr.ph.i50:                                       ; preds = %bb.l, %bb.n
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i56, %bb.n ], [ 52, %bb.l ] ; 2 uses
  %.0914.i52 = phi i32 [ %.1.i55, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.01013.i53 = phi i64 [ %i.cl, %bb.n ], [ %.029.i, %bb.l ] ; 2 uses
  %i.ch = and i64 %.01013.i53, 1
  %.not11.i54 = icmp eq i64 %i.ch, 0
  br i1 %.not11.i54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i50
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i51
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = xor i32 %i.cj, %.0914.i52
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i50
  %.1.i55 = phi i32 [ %i.ck, %bb.m ], [ %.0914.i52, %.lr.ph.i50 ] ; 2 uses
  %i.cl = ashr i64 %.01013.i53, 1                 ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i51, 1
  %.not.i57 = icmp eq i64 %i.cl, 0
  br i1 %.not.i57, label %._crit_edge.loopexit.i58, label %.lr.ph.i50, !llvm.loop !5

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62: ; preds = %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit, %._crit_edge.loopexit.i58
  %.sroa.speculated.i111 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %.sroa.speculated.i, %._crit_edge.loopexit.i58 ]
  %.09.lcssa.i60 = phi float [ 0.000000e+00, %_ZN4pbrt20SobolIntervalToIndexEjmNS_6Point2IiEE.exit ], [ %i.cg, %._crit_edge.loopexit.i58 ] ; 2 uses
  %i.cm = fcmp ogt float %.09.lcssa.i60, f0x3F7FFFFF
  %.sroa.speculated.i61 = select i1 %i.cm, float f0x3F7FFFFF, float %.09.lcssa.i60
  %i.cn = uitofp nneg i32 %i.av to float          ; 2 uses
  %i.co = fmul nnan float %.sroa.speculated.i111, %i.cn
  %i.cp = fptosi float %i.co to i32               ; 2 uses
  %i.cq = sitofp i32 %i.cp to float               ; 2 uses
  %i.cr = fmul nnan float %.sroa.speculated.i61, %i.cn
  %i.cs = fptosi float %i.cr to i32
  %i.ct = uitofp nneg i32 %i.cs to float          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.cu = fptosi float %i.ct to i32
  %i.cv = icmp eq i32 %i.ax, %i.cp                ; 2 uses
  %i.cw = icmp eq i32 %i.ay, %i.cu                ; 2 uses
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %i.cx, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit62
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = add nuw nsw i32 %i.ay, 1
  %i.cz = uitofp nneg i32 %i.cy to float
  %i.da = fcmp oeq float %i.ct, %i.cz
  br i1 %i.da, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.db = add nuw nsw i32 %i.ax, 1
  %i.dc = uitofp nneg i32 %i.db to float
  %i.dd = fcmp oeq float %i.cq, %i.dc
  %i.de = select i1 %i.dd, i1 %i.cw, i1 false     ; 2 uses
  %i.df = zext i1 %i.de to i8
  store i8 %i.df, ptr %3, align 8, !tbaa !28
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br i1 %i.de, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %4, align 8, !tbaa !39
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.61, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.ad ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %bb.s
  %i.dj = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN4pbrt8internal9ToString2IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.ax, i32 noundef %i.ay)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %2, align 8, !tbaa !36
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !60
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.dl, i64 noundef %i.dm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.t ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.do = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.c
  br i1 %i.dp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !42
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.t:                                             ; preds = %.noexc
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.c
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.t
  %i.dv = load i64, ptr %i.c, align 8, !tbaa !42
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.dx = load ptr, ptr %4, align 8, !tbaa !39
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.62, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit unwind label %bb.ad ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ea = load ptr, ptr %4, align 8, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i32 noundef %i.az)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.ad ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit
  %i.ed = load ptr, ptr %4, align 8, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull @.str.56, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit67 unwind label %bb.ad ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit67:      ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.eg = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, float noundef %i.cq, float noundef %i.ct)
          to label %.noexc76 unwind label %bb.ad

.noexc76:                                         ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit67
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %1, align 8, !tbaa !36
  %i.ej = load i64, ptr %i.d, align 8, !tbaa !60
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef %i.ei, i64 noundef %i.ej)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i73 unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i73: ; preds = %.noexc76
  %i.el = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.e
  br i1 %i.em, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i73
  %i.en = load i64, ptr %i.e, align 8, !tbaa !42
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i75

bb.u:                                             ; preds = %.noexc76
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.e
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i70: ; preds = %bb.u
  %i.es = load i64, ptr %i.e, align 8, !tbaa !42
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i71: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i75: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i75
  %i.eu = load ptr, ptr %6, align 8, !tbaa !36
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 211, ptr noundef %i.eu)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.x unwind label %bb.ag

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #30
  %i.ev = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.f
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.ex = load i64, ptr %i.f, align 8, !tbaa !42
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ez = load ptr, ptr %4, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.ab

.noexc.i.i:                                       ; preds = %bb.y
  br i1 %i.fa, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %.noexc.i.i
  %i.fb = load ptr, ptr %4, align 8, !tbaa !39    ; 3 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.aj, label %bb.aa

end_hunk_1
