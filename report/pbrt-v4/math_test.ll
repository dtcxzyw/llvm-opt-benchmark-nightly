Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math_test?download=true
inline.NumInlined: 3804
inline.NumDeleted: 865
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN28Math_EvaluatePolynomial_Test8TestBodyEv:bb.a
  %i.bt = phi ptr [ %i.bs, %bb.ap ], [ @.str.324, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 167, ptr noundef %i.bt)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit31
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.bu = load ptr, ptr %8, align 8, !tbaa !29
  %.not.i.i.i32 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i32, label %_ZN7testing7MessageD2Ev.exit34, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.av

.noexc.i.i33:                                     ; preds = %bb.as
  br i1 %i.bv, label %bb.at, label %_ZN7testing7MessageD2Ev.exit34

bb.at:                                            ; preds = %.noexc.i.i33
  %i.bw = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN7testing7MessageD2Ev.exit34, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit34

bb.av:                                            ; preds = %bb.as
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #26
  unreachable

_ZN7testing7MessageD2Ev.exit34:                   ; preds = %bb.ar, %.noexc.i.i33, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bb

bb.aw:                                            ; preds = %bb.an
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit31
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.aq
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn13 = phi { ptr, i32 } [ %i.cf, %bb.ay ], [ %i.ce, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.az ], [ %i.cd, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bg

bb.bb:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit29, %_ZN7testing7MessageD2Ev.exit34
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !21
  %.not.i.i.i35 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i35, label %_ZN7testing15AssertionResultD2Ev.exit40, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ci = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i36 unwind label %bb.bf

.noexc.i.i36:                                     ; preds = %bb.bc
  br i1 %i.ci, label %bb.bd, label %_ZN7testing15AssertionResultD2Ev.exit40

bb.bd:                                            ; preds = %.noexc.i.i36
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !21 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN7testing15AssertionResultD2Ev.exit40, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !26 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i37: ; preds = %bb.be
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !32
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i38: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i37
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit40

bb.bf:                                            ; preds = %bb.bc
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit40:          ; preds = %bb.bb, %.noexc.i.i36, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.bg:                                            ; preds = %bb.ba, %bb.ah, %bb.o
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ba ], [ %.pn10.pn, %bb.ah ], [ %.pn.pn, %bb.o ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24Math_CompensatedSum_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.g = bitcast double %i.au to i64              ; 4 uses
  %i.h = fptrunc x86_fp80 %i.ar to double
  %i.i = bitcast double %i.h to i64
  %i.j = bitcast double %i.ax to i64
  %i.k = fpext float %i.az to double
  %i.l = bitcast double %i.k to i64
  %i.m = fpext float %i.bc to double
  %i.n = bitcast double %i.m to i64
  %i.o = sub nsw i64 %i.i, %i.g
  %i.p = tail call noundef i64 @llvm.abs.i64(i64 %i.o, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.q = sub nsw i64 %i.j, %i.g
  %i.r = tail call noundef i64 @llvm.abs.i64(i64 %i.q, i1 true)
  store i64 %i.r, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.s = sub nsw i64 %i.l, %i.g
  %i.t = tail call noundef i64 @llvm.abs.i64(i64 %i.s, i1 true)
  store i64 %i.t, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.u = sub nsw i64 %i.n, %i.g
  %i.v = tail call noundef i64 @llvm.abs.i64(i64 %i.u, i1 true)
  store i64 %i.v, ptr %i.c, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.w = mul nuw nsw i64 %i.p, 10000
  store i64 %i.w, ptr %i.d, align 8, !tbaa !35
  call void @_ZN7testing8internal11CmpHelperLTIllEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.x = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.r, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.c
  %.03080 = phi x86_fp80 [ 0.000000e+00, %bb.a ], [ %i.ar, %bb.c ]
  %.03179 = phi i32 [ 0, %bb.a ], [ %i.bd, %bb.c ]
  %.03278 = phi float [ 0.000000e+00, %bb.a ], [ %i.bc, %bb.c ]
  %.03377 = phi double [ 0.000000e+00, %bb.a ], [ %i.ax, %bb.c ]
  %.sroa.0.076 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.aa, %bb.c ] ; 4 uses
  %.sroa.067.075 = phi float [ 0.000000e+00, %bb.a ], [ %i.az, %bb.c ] ; 2 uses
  %.sroa.7.074 = phi float [ 0.000000e+00, %bb.a ], [ %i.bb, %bb.c ]
  %.sroa.771.073 = phi double [ 0.000000e+00, %bb.a ], [ %i.aw, %bb.c ]
  %.sroa.069.072 = phi double [ 0.000000e+00, %bb.a ], [ %i.au, %bb.c ] ; 2 uses
  %i.z = mul i64 %.sroa.0.076, 6364136223846793005
  %i.aa = add i64 %i.z, -2720673578348880933
  %i.ab = lshr i64 %.sroa.0.076, 45
  %i.ac = lshr i64 %.sroa.0.076, 27
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = lshr i64 %.sroa.0.076, 59
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = tail call noundef i32 @llvm.fshr.i32(i32 %i.ae, i32 %i.ae, i32 %i.ag)
  %i.ai = uitofp i32 %i.ah to float
  %i.aj = fmul nnan float %i.ai, f0x2F800000      ; 2 uses
  %i.ak = fcmp olt float %i.aj, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.ak, float %i.aj, float f0x3F7FFFFF ; 2 uses
  %i.al = fsub nnan float 1.000000e+00, %.sroa.speculated.i
  %i.am = fmul nnan float %i.al, 5.000000e+00
  %i.an = fmul nnan float %.sroa.speculated.i, 2.000000e+01
  %i.ao = fsub float %i.an, %i.am
  %i.ap = tail call noundef float @expf(float noundef %i.ao) #25 ; 4 uses
  %i.aq = fpext float %i.ap to x86_fp80
  %i.ar = fadd x86_fp80 %.03080, %i.aq            ; 2 uses
  %i.as = fpext float %i.ap to double             ; 2 uses
  %i.at = fsub double %i.as, %.sroa.771.073       ; 2 uses
  %i.au = fadd double %.sroa.069.072, %i.at       ; 3 uses
  %i.av = fsub double %i.au, %.sroa.069.072
  %i.aw = fsub double %i.av, %i.at
  %i.ax = fadd double %.03377, %i.as              ; 2 uses
  %i.ay = fsub float %i.ap, %.sroa.7.074          ; 2 uses
  %i.az = fadd float %.sroa.067.075, %i.ay        ; 3 uses
  %i.ba = fsub float %i.az, %.sroa.067.075
  %i.bb = fsub float %i.ba, %i.ay
  %i.bc = fadd float %.03278, %i.ap               ; 2 uses
  %i.bd = add nuw nsw i32 %.03179, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, 16777216
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !82

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.bh = phi ptr [ %i.bg, %bb.f ], [ @.str.324, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 202, ptr noundef %i.bh)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bi = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.bj, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.bk = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %.noexc.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %i.bs, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.br, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.bi

bb.r:                                             ; preds = %bb.b, %_ZN7testing7MessageD2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !21
  %.not.i.i.i43 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i43, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i44 unwind label %bb.v

.noexc.i.i44:                                     ; preds = %bb.s
  br i1 %i.bw, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %.noexc.i.i44
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !21 ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !26 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !32
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.r, %.noexc.i.i44, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !35
  %i.ch = mul nsw i64 %i.cg, 1000
  store i64 %i.ch, ptr %i.e, align 8, !tbaa !35
  call void @_ZN7testing8internal11CmpHelperLTIllEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.ci = load i8, ptr %4, align 8, !tbaa !18, !range !19, !noundef !20
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !21 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i45, label %_ZNK7testing15AssertionResult15failure_messageEv.exit46, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit46

_ZNK7testing15AssertionResult15failure_messageEv.exit46: ; preds = %bb.y, %bb.x
  %i.cn = phi ptr [ %i.cm, %bb.y ], [ @.str.324, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 205, ptr noundef %i.cn)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit46
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.co = load ptr, ptr %5, align 8, !tbaa !29
  %.not.i.i.i47 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
end_hunk_0
begin_hunk_1_@_ZN16Math_ErfInv_Test8TestBodyEv:bb.a
bb.ag:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit25
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit27

_ZNK7testing15AssertionResult15failure_messageEv.exit27: ; preds = %bb.ag, %_ZN7testing7MessagelsIfEERS0_RKT_.exit25
  %i.cm = phi ptr [ %i.cl, %bb.ag ], [ @.str.324, %_ZN7testing7MessagelsIfEERS0_RKT_.exit25 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 317, ptr noundef %i.cm)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit27
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cn = load ptr, ptr %5, align 8, !tbaa !29
  %.not.i.i.i28 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i28, label %_ZN7testing7MessageD2Ev.exit30, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.co = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i29 unwind label %bb.am

.noexc.i.i29:                                     ; preds = %bb.aj
  br i1 %i.co, label %bb.ak, label %_ZN7testing7MessageD2Ev.exit30

bb.ak:                                            ; preds = %.noexc.i.i29
  %i.cp = load ptr, ptr %5, align 8, !tbaa !29    ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN7testing7MessageD2Ev.exit30, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit30

bb.am:                                            ; preds = %bb.aj
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #26
  unreachable

_ZN7testing7MessageD2Ev.exit30:                   ; preds = %bb.ai, %.noexc.i.i29, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.au

bb.an:                                            ; preds = %bb.ae
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit24, %_ZN7testing7MessagelsIfEERS0_RKT_.exit23, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %bb.af
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit27
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ah
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.aq ], [ %i.cy, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ar ], [ %i.cx, %bb.ao ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.an
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.as ], [ %i.cw, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ba

bb.au:                                            ; preds = %bb.ad, %_ZN7testing7MessageD2Ev.exit30
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i31 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i31, label %_ZN7testing15AssertionResultD2Ev.exit36, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.db = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i32 unwind label %bb.ay

.noexc.i.i32:                                     ; preds = %bb.av
  br i1 %i.db, label %bb.aw, label %_ZN7testing15AssertionResultD2Ev.exit36

bb.aw:                                            ; preds = %.noexc.i.i32
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN7testing15AssertionResultD2Ev.exit36, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i33: ; preds = %bb.ax
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !32
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i34: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit36

bb.ay:                                            ; preds = %bb.av
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit36:          ; preds = %bb.au, %.noexc.i.i32, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.az

bb.az:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit36, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bb

bb.ba:                                            ; preds = %bb.at, %bb.x
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.x ], [ %.pn.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn17.pn.pn

bb.bb:                                            ; preds = %bb.az, %bb.c
  %.013.add = add nuw nsw i64 %.013.idx42, 4      ; 2 uses
  %.not = icmp eq i64 %.013.add, 24
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30Math_DifferenceOfProducts_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.d = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.e = lshr i64 %i.d, 27
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -9089707755183418291       ; 2 uses
  %i.h = lshr i64 %i.g, 33
  %i.i = xor i64 %i.h, %i.g
  %i.j = shl nuw nsw i64 %indvars.iv, 1
  %i.k = or disjoint i64 %i.j, 1                  ; 5 uses
  %i.l = add i64 %i.i, %i.k
  %i.m = mul i64 %i.l, 6364136223846793005
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = mul i64 %i.n, 6364136223846793005
  %i.p = add i64 %i.o, %i.k                       ; 2 uses
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.k                       ; 2 uses
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = add i64 %i.s, %i.k
  %i.u = insertelement <4 x i64> poison, i64 %i.t, i64 0
  %i.v = insertelement <4 x i64> %i.u, i64 %i.r, i64 1
  %i.w = insertelement <4 x i64> %i.v, i64 %i.p, i64 2
  %i.x = insertelement <4 x i64> %i.w, i64 %i.n, i64 3 ; 3 uses
  %i.y = lshr <4 x i64> %i.x, splat (i64 45)
  %i.z = lshr <4 x i64> %i.x, splat (i64 27)
  %i.aa = xor <4 x i64> %i.y, %i.z
  %i.ab = trunc <4 x i64> %i.aa to <4 x i32>      ; 2 uses
  %i.ac = lshr <4 x i64> %i.x, splat (i64 59)
  %i.ad = trunc nuw nsw <4 x i64> %i.ac to <4 x i32>
  %i.ae = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.ab, <4 x i32> %i.ab, <4 x i32> %i.ad)
  %i.af = uitofp <4 x i32> %i.ae to <4 x float>
  %i.ag = fmul nnan <4 x float> %i.af, splat (float f0x2F800000) ; 2 uses
  %i.ah = fcmp olt <4 x float> %i.ag, splat (float f0x3F7FFFFF)
  %i.ai = select <4 x i1> %i.ah, <4 x float> %i.ag, <4 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.aj = fsub nnan <4 x float> splat (float 1.000000e+00), %i.ai
  %i.ak = fmul nnan <4 x float> %i.aj, splat (float 8.000000e+00)
  %i.al = fmul nnan <4 x float> %i.ai, splat (float 8.000000e+00)
  %i.am = fsub <4 x float> %i.al, %i.ak
  %i.an = fpext <4 x float> %i.am to <4 x double> ; 4 uses
  %i.ao = extractelement <4 x double> %i.an, i64 3
  %i.ap = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ao) #25
  %i.aq = fptrunc double %i.ap to float           ; 2 uses
  %i.ar = extractelement <4 x double> %i.an, i64 2
  %i.as = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ar) #25
  %i.at = fptrunc double %i.as to float           ; 2 uses
  %i.au = extractelement <4 x double> %i.an, i64 1
  %i.av = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.au) #25
  %i.aw = fptrunc double %i.av to float           ; 3 uses
  %i.ax = extractelement <4 x double> %i.an, i64 0
  %i.ay = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ax) #25
  %i.az = fptrunc double %i.ay to float           ; 3 uses
  %i.ba = fmul float %i.aw, %i.az                 ; 2 uses
  %i.bb = fneg float %i.ba
  %i.bc = call noundef float @llvm.fma.f32(float %i.aq, float %i.at, float %i.bb)
  %i.bd = fneg float %i.aw
  %i.be = call noundef float @llvm.fma.f32(float %i.bd, float %i.az, float %i.ba)
  %i.bf = fadd float %i.bc, %i.be
  %i.bg = fpext float %i.aq to double
  %i.bh = fpext float %i.at to double
  %i.bi = fpext float %i.aw to double
  %i.bj = fneg double %i.bi
  %i.bk = fpext float %i.az to double
  %i.bl = fmul double %i.bj, %i.bk
  %i.bm = call noundef double @llvm.fma.f64(double %i.bg, double %i.bh, double %i.bl)
  %i.bn = fptrunc double %i.bm to float           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bo = fsub float %i.bf, %i.bn
  %i.bp = call noundef float @llvm.fabs.f32(float %i.bo)
  store float %i.bp, ptr %i.a, align 4, !tbaa !37
  %i.bq = call noundef float @llvm.fabs.f32(float %i.bn) ; 3 uses
  %or.cond.i = fcmp oeq float %i.bq, +inf
  br i1 %or.cond.i, label %_ZN4pbrt11NextFloatUpEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = fcmp oeq float %i.bn, 0.000000e+00
  %spec.store.select.i = select i1 %i.br, float 0.000000e+00, float %i.bq ; 2 uses
  %i.bs = bitcast float %spec.store.select.i to i32
  %i.bt = fcmp ult float %spec.store.select.i, 0.000000e+00
  %.0.v.i = select i1 %i.bt, i32 -1, i32 1
  %.0.i = add i32 %.0.v.i, %i.bs
  %i.bu = bitcast i32 %.0.i to float
  br label %_ZN4pbrt11NextFloatUpEf.exit

_ZN4pbrt11NextFloatUpEf.exit:                     ; preds = %bb.c, %bb.d
  %.010.i = phi float [ %i.bu, %bb.d ], [ +inf, %bb.c ]
  %i.bv = fsub float %.010.i, %i.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bw = fmul float %i.bv, 2.000000e+00
  store float %i.bw, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.169, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.bx = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.s, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt11NextFloatUpEf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
  %i.cb = phi ptr [ %i.ca, %bb.g ], [ @.str.324, %bb.f ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 340, ptr noundef %i.cb)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cc = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.m

.noexc.i.i:                                       ; preds = %bb.j
  br i1 %i.cd, label %bb.k, label %_ZN7testing7MessageD2Ev.exit

bb.k:                                             ; preds = %.noexc.i.i
  %i.ce = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN7testing7MessageD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %.noexc.i.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

bb.n:                                             ; preds = %bb.e
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.p ], [ %i.cm, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.cl, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %_ZN4pbrt11NextFloatUpEf.exit, %_ZN7testing7MessageD2Ev.exit
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !21
  %.not.i.i.i32 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.w

.noexc.i.i33:                                     ; preds = %bb.t
  br i1 %i.cp, label %bb.u, label %_ZN7testing15AssertionResultD2Ev.exit

bb.u:                                             ; preds = %.noexc.i.i33
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !21  ; 4 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !26 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !32
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.s, %.noexc.i.i33, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !95
}

end_hunk_1
begin_hunk_2_@_ZN7testing8internal11CmpHelperLTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15 unwind label %bb.t

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15: ; preds = %bb.j
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.n = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !32
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.s = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.z = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.z, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !21  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.an, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.al, %bb.s ] ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !32
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.aj, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23Math_SumOfProducts_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.d = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.e = lshr i64 %i.d, 27
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -9089707755183418291       ; 2 uses
  %i.h = lshr i64 %i.g, 33
  %i.i = xor i64 %i.h, %i.g
  %i.j = shl nuw nsw i64 %indvars.iv, 1
  %i.k = or disjoint i64 %i.j, 1                  ; 5 uses
  %i.l = add i64 %i.i, %i.k
  %i.m = mul i64 %i.l, 6364136223846793005
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = mul i64 %i.n, 6364136223846793005
  %i.p = add i64 %i.o, %i.k                       ; 2 uses
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.k                       ; 2 uses
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = add i64 %i.s, %i.k
  %i.u = insertelement <4 x i64> poison, i64 %i.t, i64 0
  %i.v = insertelement <4 x i64> %i.u, i64 %i.r, i64 1
  %i.w = insertelement <4 x i64> %i.v, i64 %i.p, i64 2
  %i.x = insertelement <4 x i64> %i.w, i64 %i.n, i64 3 ; 3 uses
  %i.y = lshr <4 x i64> %i.x, splat (i64 45)
  %i.z = lshr <4 x i64> %i.x, splat (i64 27)
  %i.aa = xor <4 x i64> %i.y, %i.z
  %i.ab = trunc <4 x i64> %i.aa to <4 x i32>      ; 2 uses
  %i.ac = lshr <4 x i64> %i.x, splat (i64 59)
  %i.ad = trunc nuw nsw <4 x i64> %i.ac to <4 x i32>
  %i.ae = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.ab, <4 x i32> %i.ab, <4 x i32> %i.ad)
  %i.af = uitofp <4 x i32> %i.ae to <4 x float>
  %i.ag = fmul nnan <4 x float> %i.af, splat (float f0x2F800000) ; 2 uses
  %i.ah = fcmp olt <4 x float> %i.ag, splat (float f0x3F7FFFFF)
  %i.ai = select <4 x i1> %i.ah, <4 x float> %i.ag, <4 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.aj = fsub nnan <4 x float> splat (float 1.000000e+00), %i.ai
  %i.ak = fmul nnan <4 x float> %i.aj, splat (float 8.000000e+00)
  %i.al = fmul nnan <4 x float> %i.ai, splat (float 8.000000e+00)
  %i.am = fsub <4 x float> %i.al, %i.ak
  %i.an = fpext <4 x float> %i.am to <4 x double> ; 4 uses
  %i.ao = extractelement <4 x double> %i.an, i64 3
  %i.ap = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ao) #25
  %i.aq = fptrunc double %i.ap to float           ; 2 uses
  %i.ar = extractelement <4 x double> %i.an, i64 2
  %i.as = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ar) #25
  %i.at = fptrunc double %i.as to float           ; 2 uses
  %i.au = extractelement <4 x double> %i.an, i64 1
  %i.av = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.au) #25
  %i.aw = fptrunc double %i.av to float           ; 3 uses
  %i.ax = extractelement <4 x double> %i.an, i64 0
  %i.ay = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ax) #25
  %i.az = fptrunc double %i.ay to float
  %i.ba = fneg float %i.az                        ; 3 uses
  %i.bb = fmul float %i.aw, %i.ba                 ; 2 uses
  %i.bc = call noundef float @llvm.fma.f32(float %i.aq, float %i.at, float %i.bb)
  %i.bd = fneg float %i.bb
  %i.be = call noundef float @llvm.fma.f32(float %i.aw, float %i.ba, float %i.bd)
  %i.bf = fadd float %i.bc, %i.be
  %i.bg = fpext float %i.aq to double
  %i.bh = fpext float %i.at to double
  %i.bi = fpext float %i.aw to double
  %i.bj = fpext float %i.ba to double
  %i.bk = fmul double %i.bi, %i.bj
  %i.bl = call noundef double @llvm.fma.f64(double %i.bg, double %i.bh, double %i.bk)
  %i.bm = fptrunc double %i.bl to float           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bn = fsub float %i.bf, %i.bm
  %i.bo = call noundef float @llvm.fabs.f32(float %i.bn)
  store float %i.bo, ptr %i.a, align 4, !tbaa !37
  %i.bp = call noundef float @llvm.fabs.f32(float %i.bm) ; 3 uses
  %or.cond.i = fcmp oeq float %i.bp, +inf
  br i1 %or.cond.i, label %_ZN4pbrt11NextFloatUpEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = fcmp oeq float %i.bm, 0.000000e+00
  %spec.store.select.i = select i1 %i.bq, float 0.000000e+00, float %i.bp ; 2 uses
  %i.br = bitcast float %spec.store.select.i to i32
  %i.bs = fcmp ult float %spec.store.select.i, 0.000000e+00
  %.0.v.i = select i1 %i.bs, i32 -1, i32 1
  %.0.i = add i32 %.0.v.i, %i.br
  %i.bt = bitcast i32 %.0.i to float
  br label %_ZN4pbrt11NextFloatUpEf.exit

_ZN4pbrt11NextFloatUpEf.exit:                     ; preds = %bb.c, %bb.d
  %.010.i = phi float [ %i.bt, %bb.d ], [ +inf, %bb.c ]
  %i.bu = fsub float %.010.i, %i.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bv = fmul float %i.bu, 2.000000e+00
  store float %i.bv, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.169, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.bw = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.s, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt11NextFloatUpEf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
  %i.ca = phi ptr [ %i.bz, %bb.g ], [ @.str.324, %bb.f ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 360, ptr noundef %i.ca)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cb = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.m

.noexc.i.i:                                       ; preds = %bb.j
  br i1 %i.cc, label %bb.k, label %_ZN7testing7MessageD2Ev.exit

bb.k:                                             ; preds = %.noexc.i.i
  %i.cd = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN7testing7MessageD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %.noexc.i.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

bb.n:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.cl, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.ck, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %_ZN4pbrt11NextFloatUpEf.exit, %_ZN7testing7MessageD2Ev.exit
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !21
  %.not.i.i.i32 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.w

.noexc.i.i33:                                     ; preds = %bb.t
  br i1 %i.co, label %bb.u, label %_ZN7testing15AssertionResultD2Ev.exit

bb.u:                                             ; preds = %.noexc.i.i33
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !21  ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !32
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.s, %.noexc.i.i33, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !96
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21FastExp_Accuracy_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 16 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.175, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.e = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.i, %bb.d ], [ @.str.324, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 366, ptr noundef %i.j)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.k = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.j

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.l, label %bb.h, label %_ZN7testing7MessageD2Ev.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !29     ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.f, %.noexc.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.p

bb.k:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.u, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.t, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.at

bb.p:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %.not.i.i.i17 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i17, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i18 unwind label %bb.t

.noexc.i.i18:                                     ; preds = %bb.q
  br i1 %i.y, label %bb.r, label %_ZN7testing15AssertionResultD2Ev.exit

bb.r:                                             ; preds = %.noexc.i.i18
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !21   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %.noexc.i.i18, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.v

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit32
  ret void

bb.v:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit32
  %.041 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit ], [ %i.eb, %_ZN7testing15AssertionResultD2Ev.exit32 ]
  %.sroa.0.040 = phi i64 [ 798698466223757939, %_ZN7testing15AssertionResultD2Ev.exit ], [ %i.ak, %_ZN7testing15AssertionResultD2Ev.exit32 ] ; 4 uses
  %i.aj = mul i64 %.sroa.0.040, 6364136223846793005
  %i.ak = add i64 %i.aj, 13005
  %i.al = lshr i64 %.sroa.0.040, 45
  %i.am = lshr i64 %.sroa.0.040, 27
  %i.an = xor i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = lshr i64 %.sroa.0.040, 59
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = call noundef i32 @llvm.fshr.i32(i32 %i.ao, i32 %i.ao, i32 %i.aq)
  %i.as = uitofp i32 %i.ar to float
  %i.at = fmul nnan float %i.as, f0x2F800000      ; 2 uses
  %i.au = fcmp olt float %i.at, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.au, float %i.at, float f0x3F7FFFFF ; 2 uses
  %i.av = fsub nnan float 1.000000e+00, %.sroa.speculated.i
  %i.aw = fmul nnan float %i.av, 2.000000e+01
  %i.ax = fmul nnan float %.sroa.speculated.i, 2.000000e+01
  %i.ay = fsub float %i.ax, %i.aw                 ; 3 uses
  %i.az = fmul float %i.ay, f0x3FB8AA3B           ; 2 uses
  %i.ba = call noundef float @llvm.floor.f32(float %i.az) ; 2 uses
  %i.bb = fsub float %i.az, %i.ba                 ; 3 uses
  %i.bc = fptosi float %i.ba to i32
  %i.bd = call noundef float @llvm.fma.f32(float %i.bb, float f0x3DA00AC9, float f0x3E679A0B)
  %i.be = call noundef float @llvm.fma.f32(float %i.bb, float %i.bd, float f0x3F321004)
  %i.bf = call noundef float @llvm.fma.f32(float %i.bb, float %i.be, float 1.000000e+00)
  %i.bg = bitcast float %i.bf to i32              ; 2 uses
  %i.bh = lshr i32 %i.bg, 23
  %i.bi = add i32 %i.bc, -127
  %i.bj = add i32 %i.bi, %i.bh                    ; 3 uses
  %i.bk = icmp slt i32 %i.bj, -126
  br i1 %i.bk, label %_ZN4pbrt7FastExpEf.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = icmp sgt i32 %i.bj, 127
  br i1 %i.bl, label %_ZN4pbrt7FastExpEf.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = and i32 %i.bg, -2139095041
  %i.bn = shl nsw i32 %i.bj, 23
  %i.bo = add nsw i32 %i.bn, 1065353216
  %i.bp = or i32 %i.bo, %i.bm
  %i.bq = bitcast i32 %i.bp to float
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.v, %bb.w, %bb.x
  %.0.i = phi float [ %i.bq, %bb.x ], [ 0.000000e+00, %bb.v ], [ +inf, %bb.w ] ; 2 uses
  %i.br = call noundef float @expf(float noundef %i.ay) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.bs = fsub float %.0.i, %i.br
  %i.bt = fdiv float %i.bs, %i.br
  %i.bu = call noundef float @llvm.fabs.f32(float %i.bt)
  store float %i.bu, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store float 3.000000e-04, ptr %i.d, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.176, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.bv = load i8, ptr %4, align 8, !tbaa !18, !range !19, !noundef !20
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %_ZN4pbrt7FastExpEf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.bx = load ptr, ptr %5, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.177, i64 noundef 3)
          to label %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit:        ; preds = %bb.z
  %i.ca = load ptr, ptr %5, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = fpext float %i.ay to double
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, double noundef %i.cc)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit
  %i.ce = load ptr, ptr %5, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.178, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.ch = load ptr, ptr %5, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = fpext float %.0.i to double
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, double noundef %i.cj)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit19 unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit19:         ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit
  %i.cl = load ptr, ptr %5, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.179, i64 noundef 13)
          to label %_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit19
  %i.co = load ptr, ptr %5, align 8, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = fpext float %i.br to double
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, double noundef %i.cq)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit20 unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit20:         ; preds = %_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit
  %i.cs = load ptr, ptr %5, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.180, i64 noundef 21)
          to label %_ZN7testing7MessagelsIA22_cEERS0_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIA22_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit20
  %i.cv = load ptr, ptr %5, align 8, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load float, ptr %i.c, align 4, !tbaa !37
  %i.cy = fpext float %i.cx to double
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, double noundef %i.cy)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit21 unwind label %bb.ai ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit21:         ; preds = %_ZN7testing7MessagelsIA22_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.da = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.da, null
  br i1 %.not.i.i22, label %_ZNK7testing15AssertionResult15failure_messageEv.exit23, label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit21
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit23

_ZNK7testing15AssertionResult15failure_messageEv.exit23: ; preds = %bb.aa, %_ZN7testing7MessagelsIfEERS0_RKT_.exit21
  %i.dc = phi ptr [ %i.db, %bb.aa ], [ @.str.324, %_ZN7testing7MessagelsIfEERS0_RKT_.exit21 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 376, ptr noundef %i.dc)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit23
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dd = load ptr, ptr %5, align 8, !tbaa !29
  %.not.i.i.i24 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i24, label %_ZN7testing7MessageD2Ev.exit26, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i25 unwind label %bb.ag

.noexc.i.i25:                                     ; preds = %bb.ad
  br i1 %i.de, label %bb.ae, label %_ZN7testing7MessageD2Ev.exit26

bb.ae:                                            ; preds = %.noexc.i.i25
  %i.df = load ptr, ptr %5, align 8, !tbaa !29    ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN7testing7MessageD2Ev.exit26, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit26

bb.ag:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #26
  unreachable

_ZN7testing7MessageD2Ev.exit26:                   ; preds = %bb.ac, %.noexc.i.i25, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ao

bb.ah:                                            ; preds = %bb.y
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ai:                                            ; preds = %_ZN7testing7MessagelsIA22_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit20, %_ZN7testing7MessagelsIA14_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit19, %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit, %bb.z
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit23
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn12 = phi { ptr, i32 } [ %i.dp, %bb.ak ], [ %i.do, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %bb.al ], [ %i.dn, %bb.ai ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ah
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %bb.am ], [ %i.dm, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.at

bb.ao:                                            ; preds = %_ZN4pbrt7FastExpEf.exit, %_ZN7testing7MessageD2Ev.exit26
end_hunk_2
begin_hunk_3_@_ZN24FindInterval_Basics_Test8TestBodyEv:.lr.ph.i
  br i1 %i.hi, label %_ZN7testing7MessageD2Ev.exit140, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !31
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(128) %i.hh) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit140

bb.cz:                                            ; preds = %bb.cw
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #26
  unreachable

_ZN7testing7MessageD2Ev.exit140:                  ; preds = %bb.cv, %.noexc.i.i139, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.df

bb.da:                                            ; preds = %bb.cr
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit137
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cu
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #25
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn40 = phi { ptr, i32 } [ %i.hq, %bb.dc ], [ %i.hp, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.dd ], [ %i.ho, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #25
  br label %bb.dk

bb.df:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit135, %_ZN7testing7MessageD2Ev.exit140
  %i.hr = load ptr, ptr %i.cw, align 8, !tbaa !21
  %.not.i.i.i141 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i141, label %_ZN7testing15AssertionResultD2Ev.exit146, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hs = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i142 unwind label %bb.dj

.noexc.i.i142:                                    ; preds = %bb.dg
  br i1 %i.hs, label %bb.dh, label %_ZN7testing15AssertionResultD2Ev.exit146

bb.dh:                                            ; preds = %.noexc.i.i142
  %i.ht = load ptr, ptr %i.cw, align 8, !tbaa !21 ; 4 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %_ZN7testing15AssertionResultD2Ev.exit146, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !26 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143: ; preds = %bb.di
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !32
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i144: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit146

bb.dj:                                            ; preds = %bb.dg
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit146:         ; preds = %bb.df, %.noexc.i.i142, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %.pre = load i64, ptr %i.e, align 8, !tbaa !35
  %i.ic = add i64 %.pre, 1
  br label %bb.dl

bb.dk:                                            ; preds = %bb.de, %bb.cq
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.de ], [ %i.hb, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.dm

bb.dl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit123, %_ZN7testing15AssertionResultD2Ev.exit146
  %i.id = phi i64 [ 1, %_ZN7testing15AssertionResultD2Ev.exit123 ], [ %i.ic, %_ZN7testing15AssertionResultD2Ev.exit146 ] ; 3 uses
  store i64 %i.id, ptr %i.e, align 8, !tbaa !35
  %i.ie = icmp ult i64 %i.id, 9
  br i1 %i.ie, label %.lr.ph.i79, label %_ZNSt6vectorIfSaIfEED2Ev.exit, !llvm.loop !145

bb.dm:                                            ; preds = %bb.dk, %bb.cp, %bb.bs
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.dk ], [ %.pn36.pn.pn, %bb.cp ], [ %.pn32.pn.pn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit149

_ZNSt6vectorIfSaIfEED2Ev.exit149:                 ; preds = %bb.dm, %bb.at, %bb.y
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.dm ], [ %.pn28.pn.pn, %bb.at ], [ %.pn.pn.pn, %bb.y ]
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 40) #27
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22FloatInterval_Abs_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::RNG", align 8         ; 8 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit32
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit32
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit32 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.g = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -9089707755183418291       ; 2 uses
  %i.k = lshr i64 %i.j, 33
  %i.l = xor i64 %i.k, %i.j
  %i.m = shl nuw nsw i64 %indvars.iv, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 3 uses
  store i64 %i.n, ptr %i.d, align 8, !tbaa !53
  %i.o = add i64 %i.l, %i.n
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %1, align 8, !tbaa !54
  %i.r = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 6 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i64 [ %i.v, %bb.d ], [ %.promoted.i.i, %bb.c ] ; 4 uses
  %i.u = mul i64 %i.t, 6364136223846793005
  %i.v = add i64 %i.u, %i.s                       ; 5 uses
  %i.w = lshr i64 %i.t, 45
  %i.x = lshr i64 %i.t, 27
  %i.y = xor i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %bb.d
  %.sroa.033.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 6 uses
  %.sroa.033.4.vec.extract = extractelement <2 x float> %i.r, i64 1 ; 7 uses
  %i.aa = lshr i64 %i.t, 59
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = call noundef i32 @llvm.fshr.i32(i32 %i.z, i32 %i.z, i32 %i.ab)
  %i.ad = urem i32 %i.ac, 3
  switch i32 %i.ad, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.f:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.ae = mul i64 %i.v, 6364136223846793005
  %i.af = add i64 %i.ae, %i.s
  store i64 %i.af, ptr %1, align 8, !tbaa !54
  %i.ag = lshr i64 %i.v, 45
  %i.ah = lshr i64 %i.v, 27
  %i.ai = xor i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = lshr i64 %i.v, 59
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = call noundef i32 @llvm.fshr.i32(i32 %i.aj, i32 %i.aj, i32 %i.al)
  %i.an = uitofp i32 %i.am to float
  %i.ao = fmul nnan float %i.an, f0x2F800000      ; 2 uses
  %i.ap = fcmp olt float %i.ao, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.ap, float %i.ao, float f0x3F7FFFFF ; 2 uses
  %i.aq = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.ar = fmul float %.sroa.033.0.vec.extract, %i.aq
  %i.as = fmul float %.sroa.033.4.vec.extract, %.sroa.speculated.i.i
  %i.at = fadd float %i.as, %i.ar                 ; 2 uses
  %i.au = fcmp ogt float %i.at, %.sroa.033.4.vec.extract
  %spec.select.i = select i1 %i.au, float %.sroa.033.4.vec.extract, float %i.at ; 2 uses
  %i.av = fcmp olt float %spec.select.i, %.sroa.033.0.vec.extract
  %spec.select1.i = select i1 %i.av, float %.sroa.033.0.vec.extract, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  unreachable

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.e, %bb.f
  %.017.in.i = phi float [ %.sroa.033.0.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.f ], [ %.sroa.033.4.vec.extract, %bb.e ]
  %i.aw = fcmp ult float %.sroa.033.0.vec.extract, 0.000000e+00
  br i1 %i.aw, label %bb.g, label %_ZN4pbrt3AbsENS_8IntervalE.exit

bb.g:                                             ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.ax = fcmp ugt float %.sroa.033.4.vec.extract, 0.000000e+00
  br i1 %i.ax, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = fneg <2 x float> %i.r                   ; 2 uses
  %i.az = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = fcmp ogt <2 x float> %i.r, %i.az
  %i.bb = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = select <2 x i1> %i.ba, <2 x float> %i.bb, <2 x float> %i.bc
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit

bb.i:                                             ; preds = %bb.g
  %i.be = fneg float %.sroa.033.0.vec.extract     ; 2 uses
  %i.bf = fcmp ogt float %.sroa.033.4.vec.extract, %i.be
  %.sroa.speculated.i = select i1 %i.bf, float %.sroa.033.4.vec.extract, float %i.be ; 2 uses
  %i.bg = fcmp ogt float %.sroa.speculated.i, 0.000000e+00
  %.sroa.speculated.i2.i = select i1 %i.bg, float %.sroa.speculated.i, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i, i64 1
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit

_ZN4pbrt3AbsENS_8IntervalE.exit:                  ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit, %bb.h, %bb.i
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert18.i, %bb.i ], [ %i.bd, %bb.h ], [ %i.r, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bh = call float @llvm.fabs.f32(float %.017.in.i)
  %i.bi = fpext float %i.bh to double
  store double %i.bi, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.012.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.bj = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.x, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i19, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.bn = phi ptr [ %i.bm, %bb.l ], [ @.str.324, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 723, ptr noundef %i.bn)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bo = load ptr, ptr %3, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.r

.noexc.i.i:                                       ; preds = %bb.o
  br i1 %i.bp, label %bb.p, label %_ZN7testing7MessageD2Ev.exit

bb.p:                                             ; preds = %.noexc.i.i
  %i.bq = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN7testing7MessageD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %.noexc.i.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.x

bb.s:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.m
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.u ], [ %i.by, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.bx, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.av

bb.x:                                             ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i20 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i20, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i21 unwind label %bb.ab

.noexc.i.i21:                                     ; preds = %bb.y
  br i1 %i.cb, label %bb.z, label %_ZN7testing15AssertionResultD2Ev.exit

bb.z:                                             ; preds = %.noexc.i.i21
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !32
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ab:                                            ; preds = %bb.y
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.x, %.noexc.i.i21, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.012.0.i, i64 1
  store float %.sroa.0.4.vec.extract, ptr %i.c, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.252, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cl = load i8, ptr %5, align 8, !tbaa !18, !range !19, !noundef !20
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !21  ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i22, label %_ZNK7testing15AssertionResult15failure_messageEv.exit23, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit23

_ZNK7testing15AssertionResult15failure_messageEv.exit23: ; preds = %bb.ae, %bb.ad
  %i.cp = phi ptr [ %i.co, %bb.ae ], [ @.str.324, %bb.ad ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef %i.cp)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit23
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cq = load ptr, ptr %6, align 8, !tbaa !29
  %.not.i.i.i24 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i24, label %_ZN7testing7MessageD2Ev.exit26, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i25 unwind label %bb.ak

.noexc.i.i25:                                     ; preds = %bb.ah
  br i1 %i.cr, label %bb.ai, label %_ZN7testing7MessageD2Ev.exit26

bb.ai:                                            ; preds = %.noexc.i.i25
  %i.cs = load ptr, ptr %6, align 8, !tbaa !29    ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN7testing7MessageD2Ev.exit26, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit26

bb.ak:                                            ; preds = %bb.ah
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #26
  unreachable

_ZN7testing7MessageD2Ev.exit26:                   ; preds = %bb.ag, %.noexc.i.i25, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aq

bb.al:                                            ; preds = %bb.ac
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit23
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn13 = phi { ptr, i32 } [ %i.db, %bb.an ], [ %i.da, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.ao ], [ %i.cz, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.av

bb.aq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit26
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i27 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i27, label %_ZN7testing15AssertionResultD2Ev.exit32, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i28 unwind label %bb.au

.noexc.i.i28:                                     ; preds = %bb.ar
  br i1 %i.dd, label %bb.as, label %_ZN7testing15AssertionResultD2Ev.exit32

bb.as:                                            ; preds = %.noexc.i.i28
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_ZN7testing15AssertionResultD2Ev.exit32, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !26 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29: ; preds = %bb.at
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit32

bb.au:                                            ; preds = %bb.ar
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit32:          ; preds = %bb.aq, %.noexc.i.i28, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !146

bb.av:                                            ; preds = %bb.ap, %bb.w
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ap ], [ %.pn.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !54     ; 4 uses
  %i.b = mul i64 %i.a, 6364136223846793005
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 6 uses
  %i.e = add i64 %i.b, %i.d                       ; 4 uses
  %i.f = lshr i64 %i.a, 45
  %i.g = lshr i64 %i.a, 27
  %i.h = xor i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = lshr i64 %i.a, 59
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = tail call noundef i32 @llvm.fshr.i32(i32 %i.i, i32 %i.i, i32 %i.k)
  %i.m = uitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, f0x2F800000        ; 2 uses
  %i.o = fcmp olt float %i.n, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.o, float %i.n, float f0x3F7FFFFF ; 2 uses
  %i.p = fsub nnan float 1.000000e+00, %.sroa.speculated.i
  %i.q = fmul nnan float %i.p, 6.000000e+00
  %i.r = fmul nnan float %.sroa.speculated.i, 6.000000e+00
  %i.s = fsub float %i.r, %i.q
  %i.t = fpext float %i.s to double
  %i.u = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.t) #25
  %i.v = fptrunc double %i.u to float             ; 7 uses
  %i.w = mul i64 %i.e, 6364136223846793005
  %i.x = add i64 %i.w, %i.d                       ; 13 uses
  %i.y = lshr i64 %i.e, 45
  %i.z = lshr i64 %i.e, 27
  %i.aa = xor i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = lshr i64 %i.e, 59
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = tail call noundef i32 @llvm.fshr.i32(i32 %i.ab, i32 %i.ab, i32 %i.ad)
  %i.af = and i32 %i.ae, 3
  switch i32 %i.af, label %default.unreachable [
    i32 3, label %bb.d
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.ag = mul i64 %i.x, 6364136223846793005
  %i.ah = add i64 %i.ag, %i.d
  %i.ai = lshr i64 %i.x, 45
  %i.aj = lshr i64 %i.x, 27
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = lshr i64 %i.x, 59
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = tail call noundef i32 @llvm.fshr.i32(i32 %i.al, i32 %i.al, i32 %i.an)
  %i.ap = and i32 %i.ao, 1023
  %i.aq = bitcast float %i.v to i32
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = bitcast i32 %i.ar to float
  %i.at = fsub float %i.as, %i.v
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.av = mul i64 %i.x, 6364136223846793005
  %i.aw = add i64 %i.av, %i.d
  %i.ax = lshr i64 %i.x, 45
  %i.ay = lshr i64 %i.x, 27
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = lshr i64 %i.x, 59
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = tail call noundef i32 @llvm.fshr.i32(i32 %i.ba, i32 %i.ba, i32 %i.bc)
  %i.be = and i32 %i.bd, 1048575
  %i.bf = bitcast float %i.v to i32
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = bitcast i32 %i.bg to float
  %i.bi = fsub float %i.bh, %i.v
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.bk = mul i64 %i.x, 6364136223846793005
  %i.bl = add i64 %i.bk, %i.d
  %i.bm = lshr i64 %i.x, 45
  %i.bn = lshr i64 %i.x, 27
  %i.bo = xor i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %i.bq = lshr i64 %i.x, 59
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = tail call noundef i32 @llvm.fshr.i32(i32 %i.bp, i32 %i.bp, i32 %i.br)
  %i.bt = uitofp i32 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x2F800000      ; 2 uses
  %i.bv = fcmp olt float %i.bu, f0x3F7FFFFF
  %.sroa.speculated.i22 = select i1 %i.bv, float %i.bu, float f0x3F7FFFFF
  %i.bw = fmul nnan float %.sroa.speculated.i22, 4.000000e+00
  %i.bx = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.by = fmul float %i.bx, %i.bw
  br label %bb.e

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.bz = phi i64 [ %i.x, %bb.a ], [ %i.bl, %bb.d ], [ %i.ah, %bb.b ], [ %i.aw, %bb.c ] ; 4 uses
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.by, %bb.d ], [ %i.au, %bb.b ], [ %i.bj, %bb.c ] ; 3 uses
  %i.ca = mul i64 %i.bz, 6364136223846793005
  %i.cb = add i64 %i.ca, %i.d
  store i64 %i.cb, ptr %0, align 8, !tbaa !54
  %i.cc = lshr i64 %i.bz, 45
  %i.cd = lshr i64 %i.bz, 27
  %i.ce = xor i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32                  ; 2 uses
  %i.cg = lshr i64 %i.bz, 59
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = tail call noundef i32 @llvm.fshr.i32(i32 %i.cf, i32 %i.cf, i32 %i.ch)
  %i.cj = uitofp i32 %i.ci to float
  %i.ck = fmul nnan float %i.cj, f0x2F800000      ; 2 uses
  %i.cl = fcmp olt float %i.ck, f0x3F7FFFFF
  %.sroa.speculated.i23 = select i1 %i.cl, float %i.ck, float f0x3F7FFFFF
  %i.cm = fcmp olt float %.sroa.speculated.i23, 5.000000e-01
  %i.cn = fneg float %i.v
  %i.co = select i1 %i.cm, float %i.cn, float %i.v ; 3 uses
  %i.cp = fcmp oeq float %.0, 0.000000e+00
  br i1 %i.cp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cq = insertelement <2 x float> poison, float %i.co, i64 0
  %.sroa.0.0.vec.insert.i = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit

bb.g:                                             ; preds = %bb.e
  %i.cr = fsub float %i.co, %.0                   ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.cr, -inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = fcmp oeq float %i.cr, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.cs, float -0.000000e+00, float %i.cr ; 2 uses
  %i.ct = bitcast float %spec.store.select.i.i.i.i to i32
  %i.cu = fcmp ogt float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.cu, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.ct
  %i.cv = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i

_ZN4pbrt12SubRoundDownEff.exit.i:                 ; preds = %bb.h, %bb.g
  %.09.i.i.i.i = phi float [ %i.cv, %bb.h ], [ -inf, %bb.g ]
  %.sroa.0.0.vec.insert8.i = insertelement <2 x float> poison, float %.09.i.i.i.i, i64 0
  %i.cw = fadd float %.0, %i.co                   ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %i.cw, +inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i
  %i.cx = fcmp oeq float %i.cw, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.cx, float 0.000000e+00, float %i.cw ; 2 uses
  %i.cy = bitcast float %spec.store.select.i.i.i to i32
  %i.cz = fcmp ult float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.cz, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.cy
  %i.da = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i

_ZN4pbrt10AddRoundUpEff.exit.i:                   ; preds = %bb.i, %_ZN4pbrt12SubRoundDownEff.exit.i
  %.010.i.i.i = phi float [ %i.da, %bb.i ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i ]
  %.sroa.0.4.vec.insert10.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i, float %.010.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit

_ZN4pbrt8Interval17FromValueAndErrorEff.exit:     ; preds = %bb.f, %_ZN4pbrt10AddRoundUpEff.exit.i
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i, %bb.f ], [ %.sroa.0.4.vec.insert10.i, %_ZN4pbrt10AddRoundUpEff.exit.i ]
  ret <2 x float> %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperGEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !44
  store ptr %2, ptr %i.b, align 8, !tbaa !44
  %i.c = load double, ptr %3, align 8, !tbaa !39
  %i.d = load float, ptr %4, align 4, !tbaa !37
  %i.e = fpext float %i.d to double
  %i.f = fcmp ult double %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(12) @.str.335)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(7) @.str.344)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @.str.337)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.r

_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.h
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %6)
end_hunk_3
begin_hunk_4_@_ZN7testing8internal11CmpHelperLEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.aa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.aa, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !21  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.u
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.t
  %.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ao, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.am, %bb.s ] ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !32
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23FloatInterval_Sqrt_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::RNG", align 8         ; 8 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit37
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit37
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit37 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.g = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -9089707755183418291       ; 2 uses
  %i.k = lshr i64 %i.j, 33
  %i.l = xor i64 %i.k, %i.j
  %i.m = shl nuw nsw i64 %indvars.iv, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 3 uses
  store i64 %i.n, ptr %i.d, align 8, !tbaa !53
  %i.o = add i64 %i.l, %i.n
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %1, align 8, !tbaa !54
  %i.r = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 6 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i64 [ %i.v, %bb.d ], [ %.promoted.i.i, %bb.c ] ; 4 uses
  %i.u = mul i64 %i.t, 6364136223846793005
  %i.v = add i64 %i.u, %i.s                       ; 5 uses
  %i.w = lshr i64 %i.t, 45
  %i.x = lshr i64 %i.t, 27
  %i.y = xor i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %bb.d
  %.sroa.038.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 6 uses
  %.sroa.038.4.vec.extract = extractelement <2 x float> %i.r, i64 1 ; 7 uses
  %i.aa = lshr i64 %i.t, 59
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = call noundef i32 @llvm.fshr.i32(i32 %i.z, i32 %i.z, i32 %i.ab)
  %i.ad = urem i32 %i.ac, 3
  switch i32 %i.ad, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.f:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.ae = mul i64 %i.v, 6364136223846793005
  %i.af = add i64 %i.ae, %i.s
  store i64 %i.af, ptr %1, align 8, !tbaa !54
  %i.ag = lshr i64 %i.v, 45
  %i.ah = lshr i64 %i.v, 27
  %i.ai = xor i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = lshr i64 %i.v, 59
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = call noundef i32 @llvm.fshr.i32(i32 %i.aj, i32 %i.aj, i32 %i.al)
  %i.an = uitofp i32 %i.am to float
  %i.ao = fmul nnan float %i.an, f0x2F800000      ; 2 uses
  %i.ap = fcmp olt float %i.ao, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.ap, float %i.ao, float f0x3F7FFFFF ; 2 uses
  %i.aq = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.ar = fmul float %.sroa.038.0.vec.extract, %i.aq
  %i.as = fmul float %.sroa.038.4.vec.extract, %.sroa.speculated.i.i
  %i.at = fadd float %i.as, %i.ar                 ; 2 uses
  %i.au = fcmp ogt float %i.at, %.sroa.038.4.vec.extract
  %spec.select.i = select i1 %i.au, float %.sroa.038.4.vec.extract, float %i.at ; 2 uses
  %i.av = fcmp olt float %spec.select.i, %.sroa.038.0.vec.extract
  %spec.select1.i = select i1 %i.av, float %.sroa.038.0.vec.extract, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  unreachable

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.e, %bb.f
  %.017.in.i = phi float [ %.sroa.038.0.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.f ], [ %.sroa.038.4.vec.extract, %bb.e ]
  %i.aw = fcmp ult float %.sroa.038.0.vec.extract, 0.000000e+00
  br i1 %i.aw, label %bb.g, label %_ZN4pbrt3AbsENS_8IntervalE.exit

bb.g:                                             ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.ax = fcmp ugt float %.sroa.038.4.vec.extract, 0.000000e+00
  br i1 %i.ax, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = fneg <2 x float> %i.r                   ; 2 uses
  %i.az = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = fcmp ogt <2 x float> %i.r, %i.az
  %i.bb = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = select <2 x i1> %i.ba, <2 x float> %i.bb, <2 x float> %i.bc
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit

bb.i:                                             ; preds = %bb.g
  %i.be = fneg float %.sroa.038.0.vec.extract     ; 2 uses
  %i.bf = fcmp ogt float %.sroa.038.4.vec.extract, %i.be
  %.sroa.speculated.i = select i1 %i.bf, float %.sroa.038.4.vec.extract, float %i.be ; 2 uses
  %i.bg = fcmp ogt float %.sroa.speculated.i, 0.000000e+00
  %.sroa.speculated.i2.i = select i1 %i.bg, float %.sroa.speculated.i, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i, i64 1
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit

_ZN4pbrt3AbsENS_8IntervalE.exit:                  ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit, %bb.h, %bb.i
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert18.i, %bb.i ], [ %i.bd, %bb.h ], [ %i.r, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 2 uses
  %.sroa.0.0.vec.extract.i20 = extractelement <2 x float> %.sroa.012.0.i, i64 0
  %i.bh = call noundef float @sqrtf(float noundef %.sroa.0.0.vec.extract.i20) #25 ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %i.bh, -inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt13SqrtRoundDownEf.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit
  %i.bi = fcmp oeq float %i.bh, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.bi, float -0.000000e+00, float %i.bh ; 2 uses
  %i.bj = bitcast float %spec.store.select.i.i.i to i32
  %i.bk = fcmp ogt float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.bk, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.bj
  %i.bl = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt13SqrtRoundDownEf.exit.i

_ZN4pbrt13SqrtRoundDownEf.exit.i:                 ; preds = %bb.j, %_ZN4pbrt3AbsENS_8IntervalE.exit
  %.09.i.i.i = phi float [ %i.bl, %bb.j ], [ -inf, %_ZN4pbrt3AbsENS_8IntervalE.exit ] ; 2 uses
  %.sroa.0.4.vec.extract.i21 = extractelement <2 x float> %.sroa.012.0.i, i64 1
  %i.bm = call noundef float @sqrtf(float noundef %.sroa.0.4.vec.extract.i21) #25 ; 3 uses
  %or.cond.i.i1.i = fcmp oeq float %i.bm, +inf
  br i1 %or.cond.i.i1.i, label %_ZN4pbrt4SqrtENS_8IntervalE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt13SqrtRoundDownEf.exit.i
  %i.bn = fcmp oeq float %i.bm, 0.000000e+00
  %spec.store.select.i.i2.i = select i1 %i.bn, float 0.000000e+00, float %i.bm ; 2 uses
  %i.bo = bitcast float %spec.store.select.i.i2.i to i32
  %i.bp = fcmp ult float %spec.store.select.i.i2.i, 0.000000e+00
  %.0.v.i.i3.i = select i1 %i.bp, i32 -1, i32 1
  %.0.i.i4.i = add i32 %.0.v.i.i3.i, %i.bo
  %i.bq = bitcast i32 %.0.i.i4.i to float
  br label %_ZN4pbrt4SqrtENS_8IntervalE.exit

_ZN4pbrt4SqrtENS_8IntervalE.exit:                 ; preds = %_ZN4pbrt13SqrtRoundDownEf.exit.i, %bb.k
  %.010.i.i.i = phi float [ %i.bq, %bb.k ], [ +inf, %_ZN4pbrt13SqrtRoundDownEf.exit.i ] ; 4 uses
  %i.br = fcmp ogt float %.09.i.i.i, 0.000000e+00
  %.sroa.speculated.i.i22 = select i1 %i.br, float %.09.i.i.i, float 0.000000e+00 ; 4 uses
  %i.bs = fcmp olt float %.010.i.i.i, %.sroa.speculated.i.i22
  %.sroa.speculated5.i.i23 = select i1 %i.bs, float %.010.i.i.i, float %.sroa.speculated.i.i22
  %i.bt = fcmp olt float %.sroa.speculated.i.i22, %.010.i.i.i
  %.sroa.speculated.i5.i = select i1 %i.bt, float %.010.i.i.i, float %.sroa.speculated.i.i22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bu = call float @llvm.fabs.f32(float %.017.in.i)
  %i.bv = fpext float %i.bu to double
  %sqrt = call double @llvm.sqrt.f64(double %i.bv)
  store double %sqrt, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float %.sroa.speculated5.i.i23, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.bw = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %bb.l

bb.l:                                             ; preds = %_ZN4pbrt4SqrtENS_8IntervalE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.by, null
  br i1 %.not.i.i24, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %bb.m
  %i.ca = phi ptr [ %i.bz, %bb.n ], [ @.str.324, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef %i.ca)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cb = load ptr, ptr %3, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.t

.noexc.i.i:                                       ; preds = %bb.q
  br i1 %i.cc, label %bb.r, label %_ZN7testing7MessageD2Ev.exit

bb.r:                                             ; preds = %.noexc.i.i
  %i.cd = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN7testing7MessageD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %.noexc.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.z

bb.u:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.w ], [ %i.cl, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.ck, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ax

bb.z:                                             ; preds = %_ZN4pbrt4SqrtENS_8IntervalE.exit, %_ZN7testing7MessageD2Ev.exit
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i25 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i25, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i26 unwind label %bb.ad

.noexc.i.i26:                                     ; preds = %bb.aa
  br i1 %i.co, label %bb.ab, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ab:                                            ; preds = %.noexc.i.i26
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
end_hunk_4
begin_hunk_5_@_ZN23FloatInterval_Sqrt_Test8TestBodyEv:bb.a
          to label %.noexc.i.i30 unwind label %bb.am

.noexc.i.i30:                                     ; preds = %bb.aj
  br i1 %i.de, label %bb.ak, label %_ZN7testing7MessageD2Ev.exit31

bb.ak:                                            ; preds = %.noexc.i.i30
  %i.df = load ptr, ptr %6, align 8, !tbaa !29    ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN7testing7MessageD2Ev.exit31, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit31

bb.am:                                            ; preds = %bb.aj
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #26
  unreachable

_ZN7testing7MessageD2Ev.exit31:                   ; preds = %bb.ai, %.noexc.i.i30, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.as

bb.an:                                            ; preds = %bb.ae
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit28
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ah
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn14 = phi { ptr, i32 } [ %i.do, %bb.ap ], [ %i.dn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.aq ], [ %i.dm, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ax

bb.as:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit31
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i32 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit37, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.aw

.noexc.i.i33:                                     ; preds = %bb.at
  br i1 %i.dq, label %bb.au, label %_ZN7testing15AssertionResultD2Ev.exit37

bb.au:                                            ; preds = %.noexc.i.i33
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZN7testing15AssertionResultD2Ev.exit37, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !26 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34: ; preds = %bb.av
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !32
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit37

bb.aw:                                            ; preds = %bb.at
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit37:          ; preds = %bb.as, %.noexc.i.i33, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !147

bb.ax:                                            ; preds = %bb.ar, %bb.y
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ar ], [ %.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn14.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22FloatInterval_Add_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::RNG", align 8         ; 10 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit44
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit44
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit44 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.g = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -9089707755183418291       ; 2 uses
  %i.k = lshr i64 %i.j, 33
  %i.l = xor i64 %i.k, %i.j
  %i.m = shl nuw nsw i64 %indvars.iv, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 3 uses
  store i64 %i.n, ptr %i.d, align 8, !tbaa !53
  %i.o = add i64 %i.l, %i.n
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %1, align 8, !tbaa !54
  %i.r = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %i.s = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %i.w, %bb.d ], [ %.promoted.i.i, %bb.c ] ; 4 uses
  %i.v = mul i64 %i.u, 6364136223846793005
  %i.w = add i64 %i.v, %i.t                       ; 7 uses
  %i.x = lshr i64 %i.u, 45
  %i.y = lshr i64 %i.u, 27
  %i.z = xor i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %bb.d
  %.sroa.045.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 4 uses
  %.sroa.045.4.vec.extract = extractelement <2 x float> %i.r, i64 1 ; 5 uses
  %i.ab = lshr i64 %i.u, 59
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = call noundef i32 @llvm.fshr.i32(i32 %i.aa, i32 %i.aa, i32 %i.ac)
  %i.ae = urem i32 %i.ad, 3
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.f:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.af = mul i64 %i.w, 6364136223846793005
  %i.ag = add i64 %i.af, %i.t                     ; 2 uses
  store i64 %i.ag, ptr %1, align 8, !tbaa !54
  %i.ah = lshr i64 %i.w, 45
  %i.ai = lshr i64 %i.w, 27
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = lshr i64 %i.w, 59
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = call noundef i32 @llvm.fshr.i32(i32 %i.ak, i32 %i.ak, i32 %i.am)
  %i.ao = uitofp i32 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x2F800000      ; 2 uses
  %i.aq = fcmp olt float %i.ap, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.aq, float %i.ap, float f0x3F7FFFFF ; 2 uses
  %i.ar = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.as = fmul float %.sroa.045.0.vec.extract, %i.ar
  %i.at = fmul float %.sroa.045.4.vec.extract, %.sroa.speculated.i.i
  %i.au = fadd float %i.at, %i.as                 ; 2 uses
  %i.av = fcmp ogt float %i.au, %.sroa.045.4.vec.extract
  %spec.select.i = select i1 %i.av, float %.sroa.045.4.vec.extract, float %i.au ; 2 uses
  %i.aw = fcmp olt float %spec.select.i, %.sroa.045.0.vec.extract
  %spec.select1.i = select i1 %i.aw, float %.sroa.045.0.vec.extract, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  unreachable

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.e, %bb.f
  %.promoted.i.i20 = phi i64 [ %i.w, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %i.ag, %bb.f ], [ %i.w, %bb.e ]
  %.017.in.i = phi float [ %.sroa.045.0.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.f ], [ %.sroa.045.4.vec.extract, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.ax = phi i64 [ %i.az, %bb.g ], [ %.promoted.i.i20, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 4 uses
  %i.ay = mul i64 %i.ax, 6364136223846793005
  %i.az = add i64 %i.ay, %i.t                     ; 5 uses
  %i.ba = lshr i64 %i.ax, 45
  %i.bb = lshr i64 %i.ax, 27
  %i.bc = xor i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %.not.i.i21 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i21, label %bb.g, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22: ; preds = %bb.g
  %.sroa.8.8.vec.extract = extractelement <2 x float> %i.s, i64 0 ; 4 uses
  %.sroa.8.12.vec.extract = extractelement <2 x float> %i.s, i64 1 ; 5 uses
  %i.be = lshr i64 %i.ax, 59
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = call noundef i32 @llvm.fshr.i32(i32 %i.bd, i32 %i.bd, i32 %i.bf)
  %i.bh = urem i32 %i.bg, 3
  switch i32 %i.bh, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29

bb.i:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22
  %i.bi = mul i64 %i.az, 6364136223846793005
  %i.bj = add i64 %i.bi, %i.t
  store i64 %i.bj, ptr %1, align 8, !tbaa !54
  %i.bk = lshr i64 %i.az, 45
  %i.bl = lshr i64 %i.az, 27
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bo = lshr i64 %i.az, 59
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = call noundef i32 @llvm.fshr.i32(i32 %i.bn, i32 %i.bn, i32 %i.bp)
  %i.br = uitofp i32 %i.bq to float
  %i.bs = fmul nnan float %i.br, f0x2F800000      ; 2 uses
  %i.bt = fcmp olt float %i.bs, f0x3F7FFFFF
  %.sroa.speculated.i.i23 = select i1 %i.bt, float %i.bs, float f0x3F7FFFFF ; 2 uses
  %i.bu = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i23
  %i.bv = fmul float %.sroa.8.8.vec.extract, %i.bu
  %i.bw = fmul float %.sroa.8.12.vec.extract, %.sroa.speculated.i.i23
  %i.bx = fadd float %i.bw, %i.bv                 ; 2 uses
  %i.by = fcmp ogt float %i.bx, %.sroa.8.12.vec.extract
  %spec.select.i24 = select i1 %i.by, float %.sroa.8.12.vec.extract, float %i.bx ; 2 uses
  %i.bz = fcmp olt float %spec.select.i24, %.sroa.8.8.vec.extract
  %spec.select1.i25 = select i1 %i.bz, float %.sroa.8.8.vec.extract, float %spec.select.i24
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22, %bb.h, %bb.i
  %.017.in.i26 = phi float [ %.sroa.8.8.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22 ], [ %spec.select1.i25, %bb.i ], [ %.sroa.8.12.vec.extract, %bb.h ]
  %foldExtExtBinop = fadd <2 x float> %i.r, %i.s
  %i.ca = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %i.ca, -inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt12AddRoundDownEff.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
  %i.cb = fcmp oeq float %i.ca, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.cb, float -0.000000e+00, float %i.ca ; 2 uses
  %i.cc = bitcast float %spec.store.select.i.i.i to i32
  %i.cd = fcmp ogt float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.cd, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.cc
  %i.ce = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt12AddRoundDownEff.exit.i

_ZN4pbrt12AddRoundDownEff.exit.i:                 ; preds = %bb.j, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
  %.09.i.i.i = phi float [ %i.ce, %bb.j ], [ -inf, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29 ] ; 4 uses
  %i.cf = fadd float %.sroa.045.4.vec.extract, %.sroa.8.12.vec.extract ; 3 uses
  %or.cond.i.i1.i = fcmp oeq float %i.cf, +inf
  br i1 %or.cond.i.i1.i, label %_ZNK4pbrt8IntervalplES0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt12AddRoundDownEff.exit.i
  %i.cg = fcmp oeq float %i.cf, 0.000000e+00
  %spec.store.select.i.i2.i = select i1 %i.cg, float 0.000000e+00, float %i.cf ; 2 uses
  %i.ch = bitcast float %spec.store.select.i.i2.i to i32
  %i.ci = fcmp ult float %spec.store.select.i.i2.i, 0.000000e+00
  %.0.v.i.i3.i = select i1 %i.ci, i32 -1, i32 1
  %.0.i.i4.i = add i32 %.0.v.i.i3.i, %i.ch
  %i.cj = bitcast i32 %.0.i.i4.i to float
  br label %_ZNK4pbrt8IntervalplES0_.exit

_ZNK4pbrt8IntervalplES0_.exit:                    ; preds = %_ZN4pbrt12AddRoundDownEff.exit.i, %bb.k
  %.010.i.i.i = phi float [ %i.cj, %bb.k ], [ +inf, %_ZN4pbrt12AddRoundDownEff.exit.i ] ; 4 uses
  %i.ck = fcmp olt float %.010.i.i.i, %.09.i.i.i
  %.sroa.speculated5.i.i = select i1 %i.ck, float %.010.i.i.i, float %.09.i.i.i
  %i.cl = fcmp olt float %.09.i.i.i, %.010.i.i.i
  %.sroa.speculated.i.i30 = select i1 %i.cl, float %.010.i.i.i, float %.09.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cm = fadd float %.017.in.i, %.017.in.i26
  store float %i.cm, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float %.sroa.speculated5.i.i, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.cn = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.z, label %bb.l

bb.l:                                             ; preds = %_ZNK4pbrt8IntervalplES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i31, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %bb.m
  %i.cr = phi ptr [ %i.cq, %bb.n ], [ @.str.324, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 753, ptr noundef %i.cr)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cs = load ptr, ptr %3, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.t

.noexc.i.i:                                       ; preds = %bb.q
  br i1 %i.ct, label %bb.r, label %_ZN7testing7MessageD2Ev.exit

bb.r:                                             ; preds = %.noexc.i.i
  %i.cu = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN7testing7MessageD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %.noexc.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.z

bb.u:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.w ], [ %i.dc, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.db, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ax

bb.z:                                             ; preds = %_ZNK4pbrt8IntervalplES0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i32 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.ad

.noexc.i.i33:                                     ; preds = %bb.aa
  br i1 %i.df, label %bb.ab, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ab:                                            ; preds = %.noexc.i.i33
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !26 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !32
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.z, %.noexc.i.i33, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float %.sroa.speculated.i.i30, ptr %i.c, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.252, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.dp = load i8, ptr %5, align 8, !tbaa !18, !range !19, !noundef !20
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.as, label %bb.ae
end_hunk_5
begin_hunk_6_@_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.z = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.z, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !21  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.an, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.al, %bb.s ] ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !32
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.aj, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22FloatInterval_Sub_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::RNG", align 8         ; 10 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit44
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit44
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit44 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.g = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -9089707755183418291       ; 2 uses
  %i.k = lshr i64 %i.j, 33
  %i.l = xor i64 %i.k, %i.j
  %i.m = shl nuw nsw i64 %indvars.iv, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 3 uses
  store i64 %i.n, ptr %i.d, align 8, !tbaa !53
  %i.o = add i64 %i.l, %i.n
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %1, align 8, !tbaa !54
  %i.r = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.s = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %i.w, %bb.d ], [ %.promoted.i.i, %bb.c ] ; 4 uses
  %i.v = mul i64 %i.u, 6364136223846793005
  %i.w = add i64 %i.v, %i.t                       ; 7 uses
  %i.x = lshr i64 %i.u, 45
  %i.y = lshr i64 %i.u, 27
  %i.z = xor i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %bb.d
  %.sroa.045.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 5 uses
  %.sroa.045.4.vec.extract = extractelement <2 x float> %i.r, i64 1 ; 5 uses
  %i.ab = lshr i64 %i.u, 59
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = call noundef i32 @llvm.fshr.i32(i32 %i.aa, i32 %i.aa, i32 %i.ac)
  %i.ae = urem i32 %i.ad, 3
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.f:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.af = mul i64 %i.w, 6364136223846793005
  %i.ag = add i64 %i.af, %i.t                     ; 2 uses
  store i64 %i.ag, ptr %1, align 8, !tbaa !54
  %i.ah = lshr i64 %i.w, 45
  %i.ai = lshr i64 %i.w, 27
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = lshr i64 %i.w, 59
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = call noundef i32 @llvm.fshr.i32(i32 %i.ak, i32 %i.ak, i32 %i.am)
  %i.ao = uitofp i32 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x2F800000      ; 2 uses
  %i.aq = fcmp olt float %i.ap, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.aq, float %i.ap, float f0x3F7FFFFF ; 2 uses
  %i.ar = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.as = fmul float %.sroa.045.0.vec.extract, %i.ar
  %i.at = fmul float %.sroa.045.4.vec.extract, %.sroa.speculated.i.i
  %i.au = fadd float %i.at, %i.as                 ; 2 uses
  %i.av = fcmp ogt float %i.au, %.sroa.045.4.vec.extract
  %spec.select.i = select i1 %i.av, float %.sroa.045.4.vec.extract, float %i.au ; 2 uses
  %i.aw = fcmp olt float %spec.select.i, %.sroa.045.0.vec.extract
  %spec.select1.i = select i1 %i.aw, float %.sroa.045.0.vec.extract, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  unreachable

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.e, %bb.f
  %.promoted.i.i20 = phi i64 [ %i.w, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %i.ag, %bb.f ], [ %i.w, %bb.e ]
  %.017.in.i = phi float [ %.sroa.045.0.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.f ], [ %.sroa.045.4.vec.extract, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.ax = phi i64 [ %i.az, %bb.g ], [ %.promoted.i.i20, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 4 uses
  %i.ay = mul i64 %i.ax, 6364136223846793005
  %i.az = add i64 %i.ay, %i.t                     ; 5 uses
  %i.ba = lshr i64 %i.ax, 45
  %i.bb = lshr i64 %i.ax, 27
  %i.bc = xor i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %.not.i.i21 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i21, label %bb.g, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22: ; preds = %bb.g
  %.sroa.8.8.vec.extract = extractelement <2 x float> %i.s, i64 0 ; 5 uses
  %.sroa.8.12.vec.extract = extractelement <2 x float> %i.s, i64 1 ; 5 uses
  %i.be = lshr i64 %i.ax, 59
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = call noundef i32 @llvm.fshr.i32(i32 %i.bd, i32 %i.bd, i32 %i.bf)
  %i.bh = urem i32 %i.bg, 3
  switch i32 %i.bh, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29

bb.i:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22
  %i.bi = mul i64 %i.az, 6364136223846793005
  %i.bj = add i64 %i.bi, %i.t
  store i64 %i.bj, ptr %1, align 8, !tbaa !54
  %i.bk = lshr i64 %i.az, 45
  %i.bl = lshr i64 %i.az, 27
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bo = lshr i64 %i.az, 59
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = call noundef i32 @llvm.fshr.i32(i32 %i.bn, i32 %i.bn, i32 %i.bp)
  %i.br = uitofp i32 %i.bq to float
  %i.bs = fmul nnan float %i.br, f0x2F800000      ; 2 uses
  %i.bt = fcmp olt float %i.bs, f0x3F7FFFFF
  %.sroa.speculated.i.i23 = select i1 %i.bt, float %i.bs, float f0x3F7FFFFF ; 2 uses
  %i.bu = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i23
  %i.bv = fmul float %.sroa.8.8.vec.extract, %i.bu
  %i.bw = fmul float %.sroa.8.12.vec.extract, %.sroa.speculated.i.i23
  %i.bx = fadd float %i.bw, %i.bv                 ; 2 uses
  %i.by = fcmp ogt float %i.bx, %.sroa.8.12.vec.extract
  %spec.select.i24 = select i1 %i.by, float %.sroa.8.12.vec.extract, float %i.bx ; 2 uses
  %i.bz = fcmp olt float %spec.select.i24, %.sroa.8.8.vec.extract
  %spec.select1.i25 = select i1 %i.bz, float %.sroa.8.8.vec.extract, float %spec.select.i24
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22, %bb.h, %bb.i
  %.017.in.i26 = phi float [ %.sroa.8.8.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22 ], [ %spec.select1.i25, %bb.i ], [ %.sroa.8.12.vec.extract, %bb.h ]
  %i.ca = fsub float %.sroa.045.0.vec.extract, %.sroa.8.12.vec.extract ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.ca, -inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
  %i.cb = fcmp oeq float %i.ca, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.cb, float -0.000000e+00, float %i.ca ; 2 uses
  %i.cc = bitcast float %spec.store.select.i.i.i.i to i32
  %i.cd = fcmp ogt float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.cd, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.cc
  %i.ce = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i

_ZN4pbrt12SubRoundDownEff.exit.i:                 ; preds = %bb.j, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
  %.09.i.i.i.i = phi float [ %i.ce, %bb.j ], [ -inf, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29 ] ; 4 uses
  %i.cf = fsub float %.sroa.045.4.vec.extract, %.sroa.8.8.vec.extract ; 3 uses
  %or.cond.i.i.i1.i = fcmp oeq float %i.cf, +inf
  br i1 %or.cond.i.i.i1.i, label %_ZNK4pbrt8IntervalmiES0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i
  %i.cg = fcmp oeq float %i.cf, 0.000000e+00
  %spec.store.select.i.i.i2.i = select i1 %i.cg, float 0.000000e+00, float %i.cf ; 2 uses
  %i.ch = bitcast float %spec.store.select.i.i.i2.i to i32
  %i.ci = fcmp ult float %spec.store.select.i.i.i2.i, 0.000000e+00
  %.0.v.i.i.i3.i = select i1 %i.ci, i32 -1, i32 1
  %.0.i.i.i4.i = add i32 %.0.v.i.i.i3.i, %i.ch
  %i.cj = bitcast i32 %.0.i.i.i4.i to float
  br label %_ZNK4pbrt8IntervalmiES0_.exit

_ZNK4pbrt8IntervalmiES0_.exit:                    ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i, %bb.k
  %.010.i.i.i.i = phi float [ %i.cj, %bb.k ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i ] ; 4 uses
  %i.ck = fcmp olt float %.010.i.i.i.i, %.09.i.i.i.i
  %.sroa.speculated5.i.i = select i1 %i.ck, float %.010.i.i.i.i, float %.09.i.i.i.i
  %i.cl = fcmp olt float %.09.i.i.i.i, %.010.i.i.i.i
  %.sroa.speculated.i.i30 = select i1 %i.cl, float %.010.i.i.i.i, float %.09.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cm = fsub float %.017.in.i, %.017.in.i26
  store float %i.cm, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float %.sroa.speculated5.i.i, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.cn = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.z, label %bb.l

bb.l:                                             ; preds = %_ZNK4pbrt8IntervalmiES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i31, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %bb.m
  %i.cr = phi ptr [ %i.cq, %bb.n ], [ @.str.324, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 768, ptr noundef %i.cr)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cs = load ptr, ptr %3, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.t

.noexc.i.i:                                       ; preds = %bb.q
  br i1 %i.ct, label %bb.r, label %_ZN7testing7MessageD2Ev.exit

bb.r:                                             ; preds = %.noexc.i.i
  %i.cu = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN7testing7MessageD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %.noexc.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.z

bb.u:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.w ], [ %i.dc, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.db, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ax

bb.z:                                             ; preds = %_ZNK4pbrt8IntervalmiES0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i32 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.ad

.noexc.i.i33:                                     ; preds = %bb.aa
  br i1 %i.df, label %bb.ab, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ab:                                            ; preds = %.noexc.i.i33
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !26 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !32
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.z, %.noexc.i.i33, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float %.sroa.speculated.i.i30, ptr %i.c, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.252, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.dp = load i8, ptr %5, align 8, !tbaa !18, !range !19, !noundef !20
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.as, label %bb.ae

end_hunk_6
begin_hunk_7_@_ZN22FloatInterval_Sub_Test8TestBodyEv:bb.a

bb.ak:                                            ; preds = %.noexc.i.i37
  %i.dw = load ptr, ptr %6, align 8, !tbaa !29    ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN7testing7MessageD2Ev.exit38, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(128) %i.dw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit38

bb.am:                                            ; preds = %bb.aj
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #26
  unreachable

_ZN7testing7MessageD2Ev.exit38:                   ; preds = %bb.ai, %.noexc.i.i37, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.as

bb.an:                                            ; preds = %bb.ae
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit35
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ah
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn13 = phi { ptr, i32 } [ %i.ef, %bb.ap ], [ %i.ee, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.aq ], [ %i.ed, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ax

bb.as:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit38
  %i.eg = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i39 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i39, label %_ZN7testing15AssertionResultD2Ev.exit44, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i40 unwind label %bb.aw

.noexc.i.i40:                                     ; preds = %bb.at
  br i1 %i.eh, label %bb.au, label %_ZN7testing15AssertionResultD2Ev.exit44

bb.au:                                            ; preds = %.noexc.i.i40
  %i.ei = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN7testing15AssertionResultD2Ev.exit44, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !26 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41: ; preds = %bb.av
  %i.en = load i64, ptr %i.el, align 8, !tbaa !32
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i42: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit44

bb.aw:                                            ; preds = %bb.at
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit44:          ; preds = %bb.as, %.noexc.i.i40, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !149

bb.ax:                                            ; preds = %bb.ar, %bb.y
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ar ], [ %.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22FloatInterval_Mul_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::RNG", align 8         ; 10 uses
  %2 = alloca [2 x %"class.pbrt::Interval"], align 16 ; 6 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit43
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit43
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit43 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.h = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.i = lshr i64 %i.h, 27
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -9089707755183418291       ; 2 uses
  %i.l = lshr i64 %i.k, 33
  %i.m = xor i64 %i.l, %i.k
  %i.n = shl nuw nsw i64 %indvars.iv, 1
  %i.o = or disjoint i64 %i.n, 1                  ; 3 uses
  store i64 %i.o, ptr %i.d, align 8, !tbaa !53
  %i.p = add i64 %i.m, %i.o
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.o
  store i64 %i.r, ptr %1, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.s = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  store <2 x float> %i.s, ptr %2, align 16
  %i.t = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 4 uses
  store <2 x float> %i.t, ptr %i.e, align 8
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 4 uses
  %i.v = extractelement <2 x float> %i.s, i64 1   ; 4 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !54
  %i.x = extractelement <2 x float> %i.t, i64 0   ; 4 uses
  %i.y = extractelement <2 x float> %i.t, i64 1   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.z = phi i64 [ %i.ab, %bb.d ], [ %.promoted.i.i, %bb.c ] ; 4 uses
  %i.aa = mul i64 %i.z, 6364136223846793005
  %i.ab = add i64 %i.aa, %i.w                     ; 7 uses
  %i.ac = lshr i64 %i.z, 45
  %i.ad = lshr i64 %i.z, 27
  %i.ae = xor i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32                  ; 3 uses
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %bb.d
  %i.ag = lshr i64 %i.z, 59
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = call noundef i32 @llvm.fshr.i32(i32 %i.af, i32 %i.af, i32 %i.ah)
  %i.aj = urem i32 %i.ai, 3
  switch i32 %i.aj, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.f:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.ak = mul i64 %i.ab, 6364136223846793005
  %i.al = add i64 %i.ak, %i.w                     ; 2 uses
  store i64 %i.al, ptr %1, align 8, !tbaa !54
  %i.am = lshr i64 %i.ab, 45
  %i.an = lshr i64 %i.ab, 27
  %i.ao = xor i64 %i.am, %i.an
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = lshr i64 %i.ab, 59
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = call noundef i32 @llvm.fshr.i32(i32 %i.ap, i32 %i.ap, i32 %i.ar)
  %i.at = uitofp i32 %i.as to float
  %i.au = fmul nnan float %i.at, f0x2F800000      ; 2 uses
  %i.av = fcmp olt float %i.au, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.av, float %i.au, float f0x3F7FFFFF ; 2 uses
  %i.aw = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.ax = fmul float %i.u, %i.aw
  %i.ay = fmul float %i.v, %.sroa.speculated.i.i
  %i.az = fadd float %i.ay, %i.ax                 ; 2 uses
  %i.ba = fcmp ogt float %i.az, %i.v
  %spec.select.i = select i1 %i.ba, float %i.v, float %i.az ; 2 uses
  %i.bb = fcmp olt float %spec.select.i, %i.u
  %spec.select1.i = select i1 %i.bb, float %i.u, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  unreachable

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.e, %bb.f
  %.promoted.i.i20 = phi i64 [ %i.ab, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %i.al, %bb.f ], [ %i.ab, %bb.e ]
  %.017.in.i = phi float [ %i.u, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.f ], [ %i.v, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.bc = phi i64 [ %i.be, %bb.g ], [ %.promoted.i.i20, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 4 uses
  %i.bd = mul i64 %i.bc, 6364136223846793005
  %i.be = add i64 %i.bd, %i.w                     ; 5 uses
  %i.bf = lshr i64 %i.bc, 45
  %i.bg = lshr i64 %i.bc, 27
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %.not.i.i21 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i21, label %bb.g, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22: ; preds = %bb.g
  %i.bj = lshr i64 %i.bc, 59
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = call noundef i32 @llvm.fshr.i32(i32 %i.bi, i32 %i.bi, i32 %i.bk)
  %i.bm = urem i32 %i.bl, 3
  switch i32 %i.bm, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29

bb.i:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22
  %i.bn = mul i64 %i.be, 6364136223846793005
  %i.bo = add i64 %i.bn, %i.w
  store i64 %i.bo, ptr %1, align 8, !tbaa !54
  %i.bp = lshr i64 %i.be, 45
  %i.bq = lshr i64 %i.be, 27
  %i.br = xor i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = lshr i64 %i.be, 59
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = call noundef i32 @llvm.fshr.i32(i32 %i.bs, i32 %i.bs, i32 %i.bu)
  %i.bw = uitofp i32 %i.bv to float
  %i.bx = fmul nnan float %i.bw, f0x2F800000      ; 2 uses
  %i.by = fcmp olt float %i.bx, f0x3F7FFFFF
  %.sroa.speculated.i.i23 = select i1 %i.by, float %i.bx, float f0x3F7FFFFF ; 2 uses
  %i.bz = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i23
  %i.ca = fmul float %i.x, %i.bz
  %i.cb = fmul float %i.y, %.sroa.speculated.i.i23
  %i.cc = fadd float %i.cb, %i.ca                 ; 2 uses
  %i.cd = fcmp ogt float %i.cc, %i.y
  %spec.select.i24 = select i1 %i.cd, float %i.y, float %i.cc ; 2 uses
  %i.ce = fcmp olt float %spec.select.i24, %i.x
  %spec.select1.i25 = select i1 %i.ce, float %i.x, float %spec.select.i24
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22, %bb.h, %bb.i
  %.017.in.i26 = phi float [ %i.x, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22 ], [ %spec.select1.i25, %bb.i ], [ %i.y, %bb.h ]
  %i.cf = call <2 x float> @_ZNK4pbrt8IntervalmlES0_(ptr noundef nonnull align 4 dereferenceable(8) %2, <2 x float> %i.t) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cg = fmul float %.017.in.i, %.017.in.i26
  store float %i.cg, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.cf, i64 0
  store float %.sroa.0.0.vec.extract, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ch = load i8, ptr %3, align 8, !tbaa !18, !range !19, !noundef !20
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.x, label %bb.j

bb.j:                                             ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !21  ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i30, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.cl = phi ptr [ %i.ck, %bb.l ], [ @.str.324, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 783, ptr noundef %i.cl)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cm = load ptr, ptr %4, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.r

.noexc.i.i:                                       ; preds = %bb.o
  br i1 %i.cn, label %bb.p, label %_ZN7testing7MessageD2Ev.exit

bb.p:                                             ; preds = %.noexc.i.i
  %i.co = load ptr, ptr %4, align 8, !tbaa !29    ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN7testing7MessageD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !31
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %.noexc.i.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.x

bb.s:                                             ; preds = %bb.j
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.u ], [ %i.cw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.cv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.av

bb.x:                                             ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29, %_ZN7testing7MessageD2Ev.exit
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i31 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i31, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i32 unwind label %bb.ab

.noexc.i.i32:                                     ; preds = %bb.y
  br i1 %i.cz, label %bb.z, label %_ZN7testing15AssertionResultD2Ev.exit

bb.z:                                             ; preds = %.noexc.i.i32
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !26 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ab:                                            ; preds = %bb.y
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.x, %.noexc.i.i32, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.cf, i64 1
  store float %.sroa.0.4.vec.extract, ptr %i.c, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.252, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.dj = load i8, ptr %6, align 8, !tbaa !18, !range !19, !noundef !20
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !21  ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i33, label %_ZNK7testing15AssertionResult15failure_messageEv.exit34, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit34

_ZNK7testing15AssertionResult15failure_messageEv.exit34: ; preds = %bb.ae, %bb.ad
  %i.dn = phi ptr [ %i.dm, %bb.ae ], [ @.str.324, %bb.ad ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 784, ptr noundef %i.dn)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit34
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.do = load ptr, ptr %7, align 8, !tbaa !29
  %.not.i.i.i35 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i35, label %_ZN7testing7MessageD2Ev.exit37, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
end_hunk_7
begin_hunk_8_@_ZNK4pbrt8IntervalmlES0_:bb.a
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  %spec.store.select.i.i28 = select i1 %i.o, float -0.000000e+00, float %i.n ; 2 uses
  %i.p = bitcast float %spec.store.select.i.i28 to i32
  %i.q = fcmp ogt float %spec.store.select.i.i28, 0.000000e+00
  %.0.v.i.i29 = select i1 %i.q, i32 -1, i32 1
  %.0.i.i30 = add i32 %.0.v.i.i29, %i.p
  %i.r = bitcast i32 %.0.i.i30 to float
  br label %_ZN4pbrt12MulRoundDownEff.exit32

_ZN4pbrt12MulRoundDownEff.exit32:                 ; preds = %_ZN4pbrt12MulRoundDownEff.exit26, %bb.d
  %.09.i.i31 = phi float [ %i.r, %bb.d ], [ -inf, %_ZN4pbrt12MulRoundDownEff.exit26 ] ; 2 uses
  %i.s = fmul float %.sroa.08.4.vec.extract, %i.h ; 6 uses
  %or.cond.i.i33 = fcmp oeq float %i.s, -inf
  br i1 %or.cond.i.i33, label %_ZN4pbrt12MulRoundDownEff.exit38, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt12MulRoundDownEff.exit32
  %i.t = fcmp oeq float %i.s, 0.000000e+00
  %spec.store.select.i.i34 = select i1 %i.t, float -0.000000e+00, float %i.s ; 2 uses
  %i.u = bitcast float %spec.store.select.i.i34 to i32
  %i.v = fcmp ogt float %spec.store.select.i.i34, 0.000000e+00
  %.0.v.i.i35 = select i1 %i.v, i32 -1, i32 1
  %.0.i.i36 = add i32 %.0.v.i.i35, %i.u
  %i.w = bitcast i32 %.0.i.i36 to float
  br label %_ZN4pbrt12MulRoundDownEff.exit38

_ZN4pbrt12MulRoundDownEff.exit38:                 ; preds = %_ZN4pbrt12MulRoundDownEff.exit32, %bb.e
  %.09.i.i37 = phi float [ %i.w, %bb.e ], [ -inf, %_ZN4pbrt12MulRoundDownEff.exit32 ] ; 2 uses
  %or.cond.i.i39 = fcmp oeq float %i.b, +inf
  br i1 %or.cond.i.i39, label %_ZN4pbrt10MulRoundUpEff.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt12MulRoundDownEff.exit38
  %i.x = fcmp oeq float %i.b, 0.000000e+00
  %spec.store.select.i.i40 = select i1 %i.x, float 0.000000e+00, float %i.b ; 2 uses
  %i.y = bitcast float %spec.store.select.i.i40 to i32
  %i.z = fcmp ult float %spec.store.select.i.i40, 0.000000e+00
  %.0.v.i.i41 = select i1 %i.z, i32 -1, i32 1
  %.0.i.i42 = add i32 %.0.v.i.i41, %i.y
  %i.aa = bitcast i32 %.0.i.i42 to float
  br label %_ZN4pbrt10MulRoundUpEff.exit

_ZN4pbrt10MulRoundUpEff.exit:                     ; preds = %_ZN4pbrt12MulRoundDownEff.exit38, %bb.f
  %.010.i.i = phi float [ %i.aa, %bb.f ], [ +inf, %_ZN4pbrt12MulRoundDownEff.exit38 ] ; 2 uses
  %or.cond.i.i43 = fcmp oeq float %i.i, +inf
  br i1 %or.cond.i.i43, label %_ZN4pbrt10MulRoundUpEff.exit48, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt10MulRoundUpEff.exit
  %i.ab = fcmp oeq float %i.i, 0.000000e+00
  %spec.store.select.i.i44 = select i1 %i.ab, float 0.000000e+00, float %i.i ; 2 uses
  %i.ac = bitcast float %spec.store.select.i.i44 to i32
  %i.ad = fcmp ult float %spec.store.select.i.i44, 0.000000e+00
  %.0.v.i.i45 = select i1 %i.ad, i32 -1, i32 1
  %.0.i.i46 = add i32 %.0.v.i.i45, %i.ac
  %i.ae = bitcast i32 %.0.i.i46 to float
  br label %_ZN4pbrt10MulRoundUpEff.exit48

_ZN4pbrt10MulRoundUpEff.exit48:                   ; preds = %_ZN4pbrt10MulRoundUpEff.exit, %bb.g
  %.010.i.i47 = phi float [ %i.ae, %bb.g ], [ +inf, %_ZN4pbrt10MulRoundUpEff.exit ] ; 2 uses
  %or.cond.i.i49 = fcmp oeq float %i.n, +inf
  br i1 %or.cond.i.i49, label %_ZN4pbrt10MulRoundUpEff.exit54, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt10MulRoundUpEff.exit48
  %i.af = fcmp oeq float %i.n, 0.000000e+00
  %spec.store.select.i.i50 = select i1 %i.af, float 0.000000e+00, float %i.n ; 2 uses
  %i.ag = bitcast float %spec.store.select.i.i50 to i32
  %i.ah = fcmp ult float %spec.store.select.i.i50, 0.000000e+00
  %.0.v.i.i51 = select i1 %i.ah, i32 -1, i32 1
  %.0.i.i52 = add i32 %.0.v.i.i51, %i.ag
  %i.ai = bitcast i32 %.0.i.i52 to float
  br label %_ZN4pbrt10MulRoundUpEff.exit54

_ZN4pbrt10MulRoundUpEff.exit54:                   ; preds = %_ZN4pbrt10MulRoundUpEff.exit48, %bb.h
  %.010.i.i53 = phi float [ %i.ai, %bb.h ], [ +inf, %_ZN4pbrt10MulRoundUpEff.exit48 ] ; 2 uses
  %or.cond.i.i55 = fcmp oeq float %i.s, +inf
  br i1 %or.cond.i.i55, label %_ZN4pbrt10MulRoundUpEff.exit60, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt10MulRoundUpEff.exit54
  %i.aj = fcmp oeq float %i.s, 0.000000e+00
  %spec.store.select.i.i56 = select i1 %i.aj, float 0.000000e+00, float %i.s ; 2 uses
  %i.ak = bitcast float %spec.store.select.i.i56 to i32
  %i.al = fcmp ult float %spec.store.select.i.i56, 0.000000e+00
  %.0.v.i.i57 = select i1 %i.al, i32 -1, i32 1
  %.0.i.i58 = add i32 %.0.v.i.i57, %i.ak
  %i.am = bitcast i32 %.0.i.i58 to float
  br label %_ZN4pbrt10MulRoundUpEff.exit60

_ZN4pbrt10MulRoundUpEff.exit60:                   ; preds = %_ZN4pbrt10MulRoundUpEff.exit54, %bb.i
  %.010.i.i59 = phi float [ %i.am, %bb.i ], [ +inf, %_ZN4pbrt10MulRoundUpEff.exit54 ] ; 2 uses
  %i.an = fcmp olt float %.09.i.i25, %.09.i.i
  %i.ao = select i1 %i.an, float %.09.i.i25, float %.09.i.i ; 2 uses
  %i.ap = fcmp olt float %.09.i.i31, %i.ao
  %i.aq = select i1 %i.ap, float %.09.i.i31, float %i.ao ; 2 uses
  %i.ar = fcmp olt float %.09.i.i37, %i.aq
  %.sroa.speculated78 = select i1 %i.ar, float %.09.i.i37, float %i.aq ; 4 uses
  %i.as = fcmp olt float %.010.i.i, %.010.i.i47
  %i.at = select i1 %i.as, float %.010.i.i47, float %.010.i.i ; 2 uses
  %i.au = fcmp olt float %i.at, %.010.i.i53
  %i.av = select i1 %i.au, float %.010.i.i53, float %i.at ; 2 uses
  %i.aw = fcmp olt float %i.av, %.010.i.i59
  %.sroa.speculated = select i1 %i.aw, float %.010.i.i59, float %i.av ; 4 uses
  %i.ax = fcmp olt float %.sroa.speculated, %.sroa.speculated78
  %.sroa.speculated5.i = select i1 %i.ax, float %.sroa.speculated, float %.sroa.speculated78
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated5.i, i64 0
  %i.ay = fcmp olt float %.sroa.speculated78, %.sroa.speculated
  %.sroa.speculated.i = select i1 %i.ay, float %.sroa.speculated, float %.sroa.speculated78
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %.sroa.speculated.i, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22FloatInterval_Div_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::RNG", align 8         ; 10 uses
  %2 = alloca [2 x %"class.pbrt::Interval"], align 16 ; 6 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.aw
  ret void

bb.c:                                             ; preds = %bb.a, %bb.aw
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.aw ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.h = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.i = lshr i64 %i.h, 27
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -9089707755183418291       ; 2 uses
  %i.l = lshr i64 %i.k, 33
  %i.m = xor i64 %i.l, %i.k
  %i.n = shl nuw nsw i64 %indvars.iv, 1
  %i.o = or disjoint i64 %i.n, 1                  ; 3 uses
  store i64 %i.o, ptr %i.d, align 8, !tbaa !53
  %i.p = add i64 %i.m, %i.o
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.o
  store i64 %i.r, ptr %1, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.s = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  store <2 x float> %i.s, ptr %2, align 16
  %i.t = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 4 uses
  store <2 x float> %i.t, ptr %i.e, align 8
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 4 uses
  %i.v = extractelement <2 x float> %i.s, i64 1   ; 4 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !54
  %i.x = extractelement <2 x float> %i.t, i64 0   ; 5 uses
  %i.y = extractelement <2 x float> %i.t, i64 1   ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.z = phi i64 [ %i.ab, %bb.d ], [ %.promoted.i.i, %bb.c ] ; 4 uses
  %i.aa = mul i64 %i.z, 6364136223846793005
  %i.ab = add i64 %i.aa, %i.w                     ; 7 uses
  %i.ac = lshr i64 %i.z, 45
  %i.ad = lshr i64 %i.z, 27
  %i.ae = xor i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32                  ; 3 uses
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %bb.d
  %i.ag = lshr i64 %i.z, 59
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = call noundef i32 @llvm.fshr.i32(i32 %i.af, i32 %i.af, i32 %i.ah)
  %i.aj = urem i32 %i.ai, 3
  switch i32 %i.aj, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.f:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.ak = mul i64 %i.ab, 6364136223846793005
  %i.al = add i64 %i.ak, %i.w                     ; 2 uses
  store i64 %i.al, ptr %1, align 8, !tbaa !54
  %i.am = lshr i64 %i.ab, 45
  %i.an = lshr i64 %i.ab, 27
  %i.ao = xor i64 %i.am, %i.an
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = lshr i64 %i.ab, 59
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = call noundef i32 @llvm.fshr.i32(i32 %i.ap, i32 %i.ap, i32 %i.ar)
  %i.at = uitofp i32 %i.as to float
  %i.au = fmul nnan float %i.at, f0x2F800000      ; 2 uses
  %i.av = fcmp olt float %i.au, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.av, float %i.au, float f0x3F7FFFFF ; 2 uses
  %i.aw = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.ax = fmul float %i.u, %i.aw
  %i.ay = fmul float %i.v, %.sroa.speculated.i.i
  %i.az = fadd float %i.ay, %i.ax                 ; 2 uses
  %i.ba = fcmp ogt float %i.az, %i.v
  %spec.select.i = select i1 %i.ba, float %i.v, float %i.az ; 2 uses
  %i.bb = fcmp olt float %spec.select.i, %i.u
  %spec.select1.i = select i1 %i.bb, float %i.u, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  unreachable

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.e, %bb.f
  %.promoted.i.i20 = phi i64 [ %i.ab, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %i.al, %bb.f ], [ %i.ab, %bb.e ]
  %.017.in.i = phi float [ %i.u, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.f ], [ %i.v, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.bc = phi i64 [ %i.be, %bb.g ], [ %.promoted.i.i20, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 4 uses
  %i.bd = mul i64 %i.bc, 6364136223846793005
  %i.be = add i64 %i.bd, %i.w                     ; 5 uses
  %i.bf = lshr i64 %i.bc, 45
  %i.bg = lshr i64 %i.bc, 27
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %.not.i.i21 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i21, label %bb.g, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22: ; preds = %bb.g
  %i.bj = lshr i64 %i.bc, 59
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = call noundef i32 @llvm.fshr.i32(i32 %i.bi, i32 %i.bi, i32 %i.bk)
  %i.bm = urem i32 %i.bl, 3
  switch i32 %i.bm, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29

bb.i:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22
  %i.bn = mul i64 %i.be, 6364136223846793005
  %i.bo = add i64 %i.bn, %i.w
  store i64 %i.bo, ptr %1, align 8, !tbaa !54
  %i.bp = lshr i64 %i.be, 45
  %i.bq = lshr i64 %i.be, 27
  %i.br = xor i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = lshr i64 %i.be, 59
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = call noundef i32 @llvm.fshr.i32(i32 %i.bs, i32 %i.bs, i32 %i.bu)
  %i.bw = uitofp i32 %i.bv to float
  %i.bx = fmul nnan float %i.bw, f0x2F800000      ; 2 uses
  %i.by = fcmp olt float %i.bx, f0x3F7FFFFF
  %.sroa.speculated.i.i23 = select i1 %i.by, float %i.bx, float f0x3F7FFFFF ; 2 uses
  %i.bz = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i23
  %i.ca = fmul float %i.x, %i.bz
  %i.cb = fmul float %i.y, %.sroa.speculated.i.i23
  %i.cc = fadd float %i.cb, %i.ca                 ; 2 uses
  %i.cd = fcmp ogt float %i.cc, %i.y
  %spec.select.i24 = select i1 %i.cd, float %i.y, float %i.cc ; 2 uses
  %i.ce = fcmp olt float %spec.select.i24, %i.x
  %spec.select1.i25 = select i1 %i.ce, float %i.x, float %spec.select.i24
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22, %bb.h, %bb.i
  %.017.in.i26 = phi float [ %i.x, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i22 ], [ %spec.select1.i25, %bb.i ], [ %i.y, %bb.h ]
  %i.cf = fmul float %i.x, %i.y
  %i.cg = fcmp olt float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.aw, label %bb.j

bb.j:                                             ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit29
  %i.ch = call <2 x float> @_ZNK4pbrt8IntervaldvES0_(ptr noundef nonnull align 4 dereferenceable(8) %2, <2 x float> %i.t) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ci = fdiv float %.017.in.i, %.017.in.i26
  store float %i.ci, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.ch, i64 0
  store float %.sroa.0.0.vec.extract, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.cj = load i8, ptr %3, align 8, !tbaa !18, !range !19, !noundef !20
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !21  ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i30, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.m, %bb.l
  %i.cn = phi ptr [ %i.cm, %bb.m ], [ @.str.324, %bb.l ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 802, ptr noundef %i.cn)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.co = load ptr, ptr %4, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.s

.noexc.i.i:                                       ; preds = %bb.p
  br i1 %i.cp, label %bb.q, label %_ZN7testing7MessageD2Ev.exit

bb.q:                                             ; preds = %.noexc.i.i
  %i.cq = load ptr, ptr %4, align 8, !tbaa !29    ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN7testing7MessageD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.s:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.o, %.noexc.i.i, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.y

bb.t:                                             ; preds = %bb.k
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.n
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.v ], [ %i.cy, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.cx, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ax

bb.y:                                             ; preds = %bb.j, %_ZN7testing7MessageD2Ev.exit
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i31 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i31, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i32 unwind label %bb.ac

.noexc.i.i32:                                     ; preds = %bb.z
  br i1 %i.db, label %bb.aa, label %_ZN7testing15AssertionResultD2Ev.exit

bb.aa:                                            ; preds = %.noexc.i.i32
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !32
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.y, %.noexc.i.i32, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.ch, i64 1
  store float %.sroa.0.4.vec.extract, ptr %i.c, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.252, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.dl = load i8, ptr %6, align 8, !tbaa !18, !range !19, !noundef !20
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ar, label %bb.ad

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dn = load ptr, ptr %i.g, align 8, !tbaa !21  ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i33, label %_ZNK7testing15AssertionResult15failure_messageEv.exit34, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit34

_ZNK7testing15AssertionResult15failure_messageEv.exit34: ; preds = %bb.af, %bb.ae
  %i.dp = phi ptr [ %i.do, %bb.af ], [ @.str.324, %bb.ae ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 803, ptr noundef %i.dp)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit34
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.dq = load ptr, ptr %7, align 8, !tbaa !29
end_hunk_8
begin_hunk_9_@_ZNK4pbrt8IntervaldvES0_:bb.a
  %or.cond.i.i51 = fcmp oeq float %i.q, +inf
  br i1 %or.cond.i.i51, label %_ZN4pbrt10DivRoundUpEff.exit56, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt10DivRoundUpEff.exit50
  %i.ai = fcmp oeq float %i.q, 0.000000e+00
  %spec.store.select.i.i52 = select i1 %i.ai, float 0.000000e+00, float %i.q ; 2 uses
  %i.aj = bitcast float %spec.store.select.i.i52 to i32
  %i.ak = fcmp ult float %spec.store.select.i.i52, 0.000000e+00
  %.0.v.i.i53 = select i1 %i.ak, i32 -1, i32 1
  %.0.i.i54 = add i32 %.0.v.i.i53, %i.aj
  %i.al = bitcast i32 %.0.i.i54 to float
  br label %_ZN4pbrt10DivRoundUpEff.exit56

_ZN4pbrt10DivRoundUpEff.exit56:                   ; preds = %_ZN4pbrt10DivRoundUpEff.exit50, %bb.i
  %.010.i.i55 = phi float [ %i.al, %bb.i ], [ +inf, %_ZN4pbrt10DivRoundUpEff.exit50 ] ; 2 uses
  %or.cond.i.i57 = fcmp oeq float %i.v, +inf
  br i1 %or.cond.i.i57, label %_ZN4pbrt10DivRoundUpEff.exit62, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt10DivRoundUpEff.exit56
  %i.am = fcmp oeq float %i.v, 0.000000e+00
  %spec.store.select.i.i58 = select i1 %i.am, float 0.000000e+00, float %i.v ; 2 uses
  %i.an = bitcast float %spec.store.select.i.i58 to i32
  %i.ao = fcmp ult float %spec.store.select.i.i58, 0.000000e+00
  %.0.v.i.i59 = select i1 %i.ao, i32 -1, i32 1
  %.0.i.i60 = add i32 %.0.v.i.i59, %i.an
  %i.ap = bitcast i32 %.0.i.i60 to float
  br label %_ZN4pbrt10DivRoundUpEff.exit62

_ZN4pbrt10DivRoundUpEff.exit62:                   ; preds = %_ZN4pbrt10DivRoundUpEff.exit56, %bb.j
  %.010.i.i61 = phi float [ %i.ap, %bb.j ], [ +inf, %_ZN4pbrt10DivRoundUpEff.exit56 ] ; 2 uses
  %i.aq = fcmp olt float %.09.i.i27, %.09.i.i
  %i.ar = select i1 %i.aq, float %.09.i.i27, float %.09.i.i ; 2 uses
  %i.as = fcmp olt float %.09.i.i33, %i.ar
  %i.at = select i1 %i.as, float %.09.i.i33, float %i.ar ; 2 uses
  %i.au = fcmp olt float %.09.i.i39, %i.at
  %.sroa.speculated84 = select i1 %i.au, float %.09.i.i39, float %i.at ; 4 uses
  %i.av = fcmp olt float %.010.i.i, %.010.i.i49
  %i.aw = select i1 %i.av, float %.010.i.i49, float %.010.i.i ; 2 uses
  %i.ax = fcmp olt float %i.aw, %.010.i.i55
  %i.ay = select i1 %i.ax, float %.010.i.i55, float %i.aw ; 2 uses
  %i.az = fcmp olt float %i.ay, %.010.i.i61
  %.sroa.speculated = select i1 %i.az, float %.010.i.i61, float %i.ay ; 4 uses
  %i.ba = fcmp olt float %.sroa.speculated, %.sroa.speculated84
  %.sroa.speculated5.i = select i1 %i.ba, float %.sroa.speculated, float %.sroa.speculated84
  %.sroa.0.0.vec.insert70 = insertelement <2 x float> poison, float %.sroa.speculated5.i, i64 0
  %i.bb = fcmp olt float %.sroa.speculated84, %.sroa.speculated
  %.sroa.speculated.i = select i1 %i.bb, float %.sroa.speculated, float %.sroa.speculated84
  %.sroa.0.4.vec.insert72 = insertelement <2 x float> %.sroa.0.0.vec.insert70, float %.sroa.speculated.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN4pbrt10DivRoundUpEff.exit62
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert72, %_ZN4pbrt10DivRoundUpEff.exit62 ], [ <float -inf, float +inf>, %bb.a ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22FloatInterval_FMA_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.pbrt::RNG", align 8         ; 38 uses
  %8 = alloca %"class.pbrt::Interval", align 8    ; 13 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 9 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 9 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.pbrt::Interval", align 8   ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %17 = alloca %"class.testing::Message", align 8 ; 11 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  %20 = alloca %"class.testing::Message", align 8 ; 11 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !39
  call void @_ZN7testing8internal11CmpHelperGTIidEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.270, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  %i.ac = load i8, ptr %22, align 8, !tbaa !18, !range !19, !noundef !20
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.ew, label %bb.ei

bb.c:                                             ; preds = %bb.a, %bb.eh
  %i.ae = phi i32 [ 0, %bb.a ], [ %i.zf, %bb.eh ]
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.eh ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.af = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.ag = lshr i64 %i.af, 27
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, -9089707755183418291     ; 2 uses
  %i.aj = lshr i64 %i.ai, 33
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = shl nuw nsw i64 %indvars.iv, 1
  %i.am = or disjoint i64 %i.al, 1                ; 3 uses
  store i64 %i.am, ptr %i.j, align 8, !tbaa !53
  %i.an = add i64 %i.ak, %i.am
  %i.ao = mul i64 %i.an, 6364136223846793005
  %i.ap = add i64 %i.ao, %i.am
  store i64 %i.ap, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aq = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %7) ; 6 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.ar = fcmp ult float %.sroa.0.0.vec.extract.i, 0.000000e+00
  br i1 %i.ar, label %bb.d, label %_ZN4pbrt3AbsENS_8IntervalE.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.aq, i64 1 ; 3 uses
  %i.as = fcmp ugt float %.sroa.0.4.vec.extract.i, 0.000000e+00
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = fneg <2 x float> %i.aq                  ; 2 uses
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.av = fcmp ogt <2 x float> %i.aq, %i.au
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = select <2 x i1> %i.av, <2 x float> %i.aw, <2 x float> %i.ax
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit

bb.f:                                             ; preds = %bb.d
  %i.az = fneg float %.sroa.0.0.vec.extract.i     ; 2 uses
  %i.ba = fcmp ogt float %.sroa.0.4.vec.extract.i, %i.az
  %.sroa.speculated.i = select i1 %i.ba, float %.sroa.0.4.vec.extract.i, float %i.az ; 2 uses
  %i.bb = fcmp ogt float %.sroa.speculated.i, 0.000000e+00
  %.sroa.speculated.i2.i = select i1 %i.bb, float %.sroa.speculated.i, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i, i64 1
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit

_ZN4pbrt3AbsENS_8IntervalE.exit:                  ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert18.i, %bb.f ], [ %i.ay, %bb.e ], [ %i.aq, %bb.c ]
  store <2 x float> %.sroa.012.0.i, ptr %8, align 8
  %.pre = load i64, ptr %7, align 8, !tbaa !54
  %.pre293 = load i64, ptr %i.j, align 8, !tbaa !53 ; 18 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit, %_ZN7testing15AssertionResultD2Ev.exit223
  %i.bc = phi i32 [ %i.ae, %_ZN4pbrt3AbsENS_8IntervalE.exit ], [ %i.zc, %_ZN7testing15AssertionResultD2Ev.exit223 ] ; 2 uses
  %i.bd = phi i64 [ %.pre, %_ZN4pbrt3AbsENS_8IntervalE.exit ], [ %i.oi, %_ZN7testing15AssertionResultD2Ev.exit223 ] ; 3 uses
  %.038281 = phi i32 [ 0, %_ZN4pbrt3AbsENS_8IntervalE.exit ], [ %i.zd, %_ZN7testing15AssertionResultD2Ev.exit223 ]
  %i.be = load <2 x float>, ptr %8, align 8, !tbaa !37 ; 3 uses
  %i.bf = mul i64 %i.bd, 6364136223846793005
  %i.bg = add i64 %i.bf, %.pre293                 ; 2 uses
  %i.bh = mul i64 %i.bg, 6364136223846793005
  %i.bi = add i64 %i.bh, %.pre293                 ; 13 uses
  %i.bj = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %i.bk = insertelement <2 x i64> %i.bj, i64 %i.bg, i64 1 ; 3 uses
  %i.bl = lshr <2 x i64> %i.bk, splat (i64 45)
  %i.bm = lshr <2 x i64> %i.bk, splat (i64 27)
  %i.bn = xor <2 x i64> %i.bl, %i.bm
  %i.bo = trunc <2 x i64> %i.bn to <2 x i32>      ; 2 uses
  %i.bp = lshr <2 x i64> %i.bk, splat (i64 59)
  %i.bq = trunc nuw nsw <2 x i64> %i.bp to <2 x i32>
  %i.br = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bo, <2 x i32> %i.bo, <2 x i32> %i.bq) ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 0
  %i.bt = uitofp i32 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x2F800000      ; 2 uses
  %i.bv = fcmp olt float %i.bu, f0x3F7FFFFF
  %.sroa.speculated.i.i65 = select i1 %i.bv, float %i.bu, float f0x3F7FFFFF ; 2 uses
  %i.bw = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i65
  %i.bx = fmul nnan float %i.bw, 6.000000e+00
  %i.by = fmul nnan float %.sroa.speculated.i.i65, 6.000000e+00
  %i.bz = fsub float %i.by, %i.bx
  %i.ca = fpext float %i.bz to double
  %i.cb = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ca) #25
  %i.cc = fptrunc double %i.cb to float           ; 7 uses
  %i.cd = extractelement <2 x i32> %i.br, i64 1
  %i.ce = and i32 %i.cd, 3
  switch i32 %i.ce, label %.unreachabledefault [
    i32 3, label %bb.j
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 0, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.cf = mul i64 %i.bi, 6364136223846793005
  %i.cg = add i64 %i.cf, %.pre293
  %i.ch = lshr i64 %i.bi, 45
  %i.ci = lshr i64 %i.bi, 27
  %i.cj = xor i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = lshr i64 %i.bi, 59
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = call noundef i32 @llvm.fshr.i32(i32 %i.ck, i32 %i.ck, i32 %i.cm)
  %i.co = and i32 %i.cn, 1023
  %i.cp = bitcast float %i.cc to i32
  %i.cq = add i32 %i.co, %i.cp
  %i.cr = bitcast i32 %i.cq to float
  %i.cs = fsub float %i.cr, %i.cc
  %i.ct = call noundef float @llvm.fabs.f32(float %i.cs)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cu = mul i64 %i.bi, 6364136223846793005
  %i.cv = add i64 %i.cu, %.pre293
  %i.cw = lshr i64 %i.bi, 45
  %i.cx = lshr i64 %i.bi, 27
  %i.cy = xor i64 %i.cw, %i.cx
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = lshr i64 %i.bi, 59
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = call noundef i32 @llvm.fshr.i32(i32 %i.cz, i32 %i.cz, i32 %i.db)
  %i.dd = and i32 %i.dc, 1048575
  %i.de = bitcast float %i.cc to i32
  %i.df = add i32 %i.dd, %i.de
  %i.dg = bitcast i32 %i.df to float
  %i.dh = fsub float %i.dg, %i.cc
  %i.di = call noundef float @llvm.fabs.f32(float %i.dh)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.dj = mul i64 %i.bi, 6364136223846793005
  %i.dk = add i64 %i.dj, %.pre293
  %i.dl = lshr i64 %i.bi, 45
  %i.dm = lshr i64 %i.bi, 27
  %i.dn = xor i64 %i.dl, %i.dm
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = lshr i64 %i.bi, 59
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = call noundef i32 @llvm.fshr.i32(i32 %i.do, i32 %i.do, i32 %i.dq)
  %i.ds = uitofp i32 %i.dr to float
  %i.dt = fmul nnan float %i.ds, f0x2F800000      ; 2 uses
  %i.du = fcmp olt float %i.dt, f0x3F7FFFFF
  %.sroa.speculated.i22.i = select i1 %i.du, float %i.dt, float f0x3F7FFFFF
  %i.dv = fmul nnan float %.sroa.speculated.i22.i, 4.000000e+00
  %i.dw = call noundef float @llvm.fabs.f32(float %i.cc)
  %i.dx = fmul float %i.dw, %i.dv
  br label %bb.k

.unreachabledefault:                              ; preds = %bb.g
  unreachable

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i96, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %_ZL8getFloatRN4pbrt3RNGEff.exit
  unreachable

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.dy = phi i64 [ %i.bi, %bb.g ], [ %i.dk, %bb.j ], [ %i.cg, %bb.h ], [ %i.cv, %bb.i ] ; 4 uses
  %.0.i = phi float [ 0.000000e+00, %bb.g ], [ %i.dx, %bb.j ], [ %i.ct, %bb.h ], [ %i.di, %bb.i ] ; 3 uses
  %i.dz = mul i64 %i.dy, 6364136223846793005
  %i.ea = add i64 %i.dz, %.pre293                 ; 2 uses
  %i.eb = lshr i64 %i.dy, 45
  %i.ec = lshr i64 %i.dy, 27
  %i.ed = xor i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = lshr i64 %i.dy, 59
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = call noundef i32 @llvm.fshr.i32(i32 %i.ee, i32 %i.ee, i32 %i.eg)
  %i.ei = uitofp i32 %i.eh to float
  %i.ej = fmul nnan float %i.ei, f0x2F800000      ; 2 uses
  %i.ek = fcmp olt float %i.ej, f0x3F7FFFFF
  %.sroa.speculated.i23.i = select i1 %i.ek, float %i.ej, float f0x3F7FFFFF
  %i.el = fcmp olt float %.sroa.speculated.i23.i, 5.000000e-01
  %i.em = fneg float %i.cc
  %i.en = select i1 %i.el, float %i.em, float %i.cc ; 3 uses
  %i.eo = fcmp oeq float %.0.i, 0.000000e+00
  br i1 %i.eo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ep = insertelement <2 x float> poison, float %i.en, i64 0
  %.sroa.0.0.vec.insert.i.i = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZL8getFloatRN4pbrt3RNGEff.exit

bb.m:                                             ; preds = %bb.k
  %i.eq = fsub float %i.en, %.0.i                 ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.eq, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = fcmp oeq float %i.eq, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.er, float -0.000000e+00, float %i.eq ; 2 uses
  %i.es = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.et = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.et, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.es
  %i.eu = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.n, %bb.m
  %.09.i.i.i.i.i = phi float [ %i.eu, %bb.n ], [ -inf, %bb.m ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.ev = fadd float %.0.i, %i.en                 ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.ev, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.ew = fcmp oeq float %i.ev, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.ew, float 0.000000e+00, float %i.ev ; 2 uses
  %i.ex = bitcast float %spec.store.select.i.i.i.i to i32
  %i.ey = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.ey, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.ex
  %i.ez = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.o, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.ez, %bb.o ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZL8getFloatRN4pbrt3RNGEff.exit

_ZL8getFloatRN4pbrt3RNGEff.exit:                  ; preds = %bb.l, %_ZN4pbrt10AddRoundUpEff.exit.i.i
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i, %bb.l ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ] ; 3 uses
  %i.fa = mul i64 %i.ea, 6364136223846793005
  %i.fb = add i64 %i.fa, %.pre293                 ; 2 uses
  %i.fc = mul i64 %i.fb, 6364136223846793005
  %i.fd = add i64 %i.fc, %.pre293                 ; 13 uses
  %i.fe = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %i.ff = insertelement <2 x i64> %i.fe, i64 %i.fb, i64 1 ; 3 uses
  %i.fg = lshr <2 x i64> %i.ff, splat (i64 45)
  %i.fh = lshr <2 x i64> %i.ff, splat (i64 27)
  %i.fi = xor <2 x i64> %i.fg, %i.fh
  %i.fj = trunc <2 x i64> %i.fi to <2 x i32>      ; 2 uses
  %i.fk = lshr <2 x i64> %i.ff, splat (i64 59)
  %i.fl = trunc nuw nsw <2 x i64> %i.fk to <2 x i32>
  %i.fm = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fj, <2 x i32> %i.fj, <2 x i32> %i.fl) ; 2 uses
  %i.fn = extractelement <2 x i32> %i.fm, i64 0
  %i.fo = uitofp i32 %i.fn to float
  %i.fp = fmul nnan float %i.fo, f0x2F800000      ; 2 uses
  %i.fq = fcmp olt float %i.fp, f0x3F7FFFFF
  %.sroa.speculated.i.i66 = select i1 %i.fq, float %i.fp, float f0x3F7FFFFF ; 2 uses
  %i.fr = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i66
  %i.fs = fmul nnan float %i.fr, 6.000000e+00
  %i.ft = fmul nnan float %.sroa.speculated.i.i66, 6.000000e+00
  %i.fu = fsub float %i.ft, %i.fs
  %i.fv = fpext float %i.fu to double
  %i.fw = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fv) #25
  %i.fx = fptrunc double %i.fw to float           ; 7 uses
  %i.fy = extractelement <2 x i32> %i.fm, i64 1
  %i.fz = and i32 %i.fy, 3
  switch i32 %i.fz, label %default.unreachable [
    i32 3, label %bb.r
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 0, label %bb.s
  ]

bb.p:                                             ; preds = %_ZL8getFloatRN4pbrt3RNGEff.exit
  %i.ga = mul i64 %i.fd, 6364136223846793005
  %i.gb = add i64 %i.ga, %.pre293
  %i.gc = lshr i64 %i.fd, 45
  %i.gd = lshr i64 %i.fd, 27
  %i.ge = xor i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32                  ; 2 uses
  %i.gg = lshr i64 %i.fd, 59
  %i.gh = trunc nuw nsw i64 %i.gg to i32
  %i.gi = call noundef i32 @llvm.fshr.i32(i32 %i.gf, i32 %i.gf, i32 %i.gh)
  %i.gj = and i32 %i.gi, 1023
  %i.gk = bitcast float %i.fx to i32
  %i.gl = add i32 %i.gj, %i.gk
  %i.gm = bitcast i32 %i.gl to float
  %i.gn = fsub float %i.gm, %i.fx
  %i.go = call noundef float @llvm.fabs.f32(float %i.gn)
  br label %bb.s

bb.q:                                             ; preds = %_ZL8getFloatRN4pbrt3RNGEff.exit
  %i.gp = mul i64 %i.fd, 6364136223846793005
  %i.gq = add i64 %i.gp, %.pre293
  %i.gr = lshr i64 %i.fd, 45
  %i.gs = lshr i64 %i.fd, 27
  %i.gt = xor i64 %i.gr, %i.gs
  %i.gu = trunc i64 %i.gt to i32                  ; 2 uses
  %i.gv = lshr i64 %i.fd, 59
  %i.gw = trunc nuw nsw i64 %i.gv to i32
  %i.gx = call noundef i32 @llvm.fshr.i32(i32 %i.gu, i32 %i.gu, i32 %i.gw)
  %i.gy = and i32 %i.gx, 1048575
  %i.gz = bitcast float %i.fx to i32
  %i.ha = add i32 %i.gy, %i.gz
  %i.hb = bitcast i32 %i.ha to float
  %i.hc = fsub float %i.hb, %i.fx
  %i.hd = call noundef float @llvm.fabs.f32(float %i.hc)
  br label %bb.s

bb.r:                                             ; preds = %_ZL8getFloatRN4pbrt3RNGEff.exit
  %i.he = mul i64 %i.fd, 6364136223846793005
  %i.hf = add i64 %i.he, %.pre293
  %i.hg = lshr i64 %i.fd, 45
  %i.hh = lshr i64 %i.fd, 27
  %i.hi = xor i64 %i.hg, %i.hh
  %i.hj = trunc i64 %i.hi to i32                  ; 2 uses
  %i.hk = lshr i64 %i.fd, 59
  %i.hl = trunc nuw nsw i64 %i.hk to i32
  %i.hm = call noundef i32 @llvm.fshr.i32(i32 %i.hj, i32 %i.hj, i32 %i.hl)
  %i.hn = uitofp i32 %i.hm to float
  %i.ho = fmul nnan float %i.hn, f0x2F800000      ; 2 uses
  %i.hp = fcmp olt float %i.ho, f0x3F7FFFFF
  %.sroa.speculated.i22.i85 = select i1 %i.hp, float %i.ho, float f0x3F7FFFFF
  %i.hq = fmul nnan float %.sroa.speculated.i22.i85, 4.000000e+00
  %i.hr = call noundef float @llvm.fabs.f32(float %i.fx)
  %i.hs = fmul float %i.hq, %i.hr
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %_ZL8getFloatRN4pbrt3RNGEff.exit
  %i.ht = phi i64 [ %i.fd, %_ZL8getFloatRN4pbrt3RNGEff.exit ], [ %i.hf, %bb.r ], [ %i.gb, %bb.p ], [ %i.gq, %bb.q ] ; 4 uses
  %.0.i67 = phi float [ 0.000000e+00, %_ZL8getFloatRN4pbrt3RNGEff.exit ], [ %i.hs, %bb.r ], [ %i.go, %bb.p ], [ %i.hd, %bb.q ] ; 3 uses
  %i.hu = mul i64 %i.ht, 6364136223846793005
  %i.hv = add i64 %i.hu, %.pre293
  %i.hw = lshr i64 %i.ht, 45
  %i.hx = lshr i64 %i.ht, 27
  %i.hy = xor i64 %i.hw, %i.hx
  %i.hz = trunc i64 %i.hy to i32                  ; 2 uses
  %i.ia = lshr i64 %i.ht, 59
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = call noundef i32 @llvm.fshr.i32(i32 %i.hz, i32 %i.hz, i32 %i.ib)
  %i.id = uitofp i32 %i.ic to float
  %i.ie = fmul nnan float %i.id, f0x2F800000      ; 2 uses
  %i.if = fcmp olt float %i.ie, f0x3F7FFFFF
  %.sroa.speculated.i23.i68 = select i1 %i.if, float %i.ie, float f0x3F7FFFFF
  %i.ig = fcmp olt float %.sroa.speculated.i23.i68, 5.000000e-01
  %i.ih = fneg float %i.fx
  %i.ii = select i1 %i.ig, float %i.ih, float %i.fx ; 3 uses
  %i.ij = fcmp oeq float %.0.i67, 0.000000e+00
  br i1 %i.ij, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ik = insertelement <2 x float> poison, float %i.ii, i64 0
  %.sroa.0.0.vec.insert.i.i84 = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZL8getFloatRN4pbrt3RNGEff.exit87

bb.u:                                             ; preds = %bb.s
  %i.il = fsub float %i.ii, %.0.i67               ; 3 uses
  %or.cond.i.i.i.i.i69 = fcmp oeq float %i.il, -inf
  br i1 %or.cond.i.i.i.i.i69, label %_ZN4pbrt12SubRoundDownEff.exit.i.i73, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.im = fcmp oeq float %i.il, 0.000000e+00
  %spec.store.select.i.i.i.i.i70 = select i1 %i.im, float -0.000000e+00, float %i.il ; 2 uses
  %i.in = bitcast float %spec.store.select.i.i.i.i.i70 to i32
  %i.io = fcmp ogt float %spec.store.select.i.i.i.i.i70, 0.000000e+00
  %.0.v.i.i.i.i.i71 = select i1 %i.io, i32 -1, i32 1
  %.0.i.i.i.i.i72 = add i32 %.0.v.i.i.i.i.i71, %i.in
  %i.ip = bitcast i32 %.0.i.i.i.i.i72 to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i73

_ZN4pbrt12SubRoundDownEff.exit.i.i73:             ; preds = %bb.v, %bb.u
  %.09.i.i.i.i.i74 = phi float [ %i.ip, %bb.v ], [ -inf, %bb.u ]
  %.sroa.0.0.vec.insert8.i.i75 = insertelement <2 x float> poison, float %.09.i.i.i.i.i74, i64 0
  %i.iq = fadd float %.0.i67, %i.ii               ; 3 uses
  %or.cond.i.i.i.i76 = fcmp oeq float %i.iq, +inf
  br i1 %or.cond.i.i.i.i76, label %_ZN4pbrt10AddRoundUpEff.exit.i.i80, label %bb.w

bb.w:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i73
  %i.ir = fcmp oeq float %i.iq, 0.000000e+00
  %spec.store.select.i.i.i.i77 = select i1 %i.ir, float 0.000000e+00, float %i.iq ; 2 uses
  %i.is = bitcast float %spec.store.select.i.i.i.i77 to i32
  %i.it = fcmp ult float %spec.store.select.i.i.i.i77, 0.000000e+00
  %.0.v.i.i.i.i78 = select i1 %i.it, i32 -1, i32 1
  %.0.i.i.i.i79 = add i32 %.0.v.i.i.i.i78, %i.is
  %i.iu = bitcast i32 %.0.i.i.i.i79 to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i80

_ZN4pbrt10AddRoundUpEff.exit.i.i80:               ; preds = %bb.w, %_ZN4pbrt12SubRoundDownEff.exit.i.i73
  %.010.i.i.i.i81 = phi float [ %i.iu, %bb.w ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i73 ]
  %.sroa.0.4.vec.insert10.i.i82 = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i75, float %.010.i.i.i.i81, i64 1
  br label %_ZL8getFloatRN4pbrt3RNGEff.exit87

_ZL8getFloatRN4pbrt3RNGEff.exit87:                ; preds = %bb.t, %_ZN4pbrt10AddRoundUpEff.exit.i.i80
  %.sroa.0.0.i.i83 = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i84, %bb.t ], [ %.sroa.0.4.vec.insert10.i.i82, %_ZN4pbrt10AddRoundUpEff.exit.i.i80 ] ; 2 uses
  %.sroa.074.0.vec.extract.i = extractelement <2 x float> %i.be, i64 0 ; 9 uses
  %.sroa.061.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0 ; 9 uses
  %.sroa.0.0.vec.extract.i88 = extractelement <2 x float> %.sroa.0.0.i.i83, i64 0 ; 9 uses
  %i.iv = call noundef float @llvm.fma.f32(float %.sroa.074.0.vec.extract.i, float %.sroa.061.0.vec.extract.i, float %.sroa.0.0.vec.extract.i88) ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %i.iv, -inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt12FMARoundDownEfff.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZL8getFloatRN4pbrt3RNGEff.exit87
  %i.iw = fcmp oeq float %i.iv, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.iw, float -0.000000e+00, float %i.iv ; 2 uses
  %i.ix = bitcast float %spec.store.select.i.i.i to i32
  %i.iy = fcmp ogt float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.iy, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.ix
  %i.iz = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt12FMARoundDownEfff.exit.i

_ZN4pbrt12FMARoundDownEfff.exit.i:                ; preds = %bb.x, %_ZL8getFloatRN4pbrt3RNGEff.exit87
  %.09.i.i.i = phi float [ %i.iz, %bb.x ], [ -inf, %_ZL8getFloatRN4pbrt3RNGEff.exit87 ] ; 2 uses
  %.sroa.074.4.vec.extract.i = extractelement <2 x float> %i.be, i64 1 ; 10 uses
  %i.ja = call noundef float @llvm.fma.f32(float %.sroa.074.4.vec.extract.i, float %.sroa.061.0.vec.extract.i, float %.sroa.0.0.vec.extract.i88) ; 3 uses
  %or.cond.i.i4.i = fcmp oeq float %i.ja, -inf
  br i1 %or.cond.i.i4.i, label %_ZN4pbrt12FMARoundDownEfff.exit9.i, label %bb.y

bb.y:                                             ; preds = %_ZN4pbrt12FMARoundDownEfff.exit.i
  %i.jb = fcmp oeq float %i.ja, 0.000000e+00
  %spec.store.select.i.i5.i = select i1 %i.jb, float -0.000000e+00, float %i.ja ; 2 uses
  %i.jc = bitcast float %spec.store.select.i.i5.i to i32
  %i.jd = fcmp ogt float %spec.store.select.i.i5.i, 0.000000e+00
  %.0.v.i.i6.i = select i1 %i.jd, i32 -1, i32 1
  %.0.i.i7.i = add i32 %.0.v.i.i6.i, %i.jc
  %i.je = bitcast i32 %.0.i.i7.i to float
  br label %_ZN4pbrt12FMARoundDownEfff.exit9.i

_ZN4pbrt12FMARoundDownEfff.exit9.i:               ; preds = %bb.y, %_ZN4pbrt12FMARoundDownEfff.exit.i
  %.09.i.i8.i = phi float [ %i.je, %bb.y ], [ -inf, %_ZN4pbrt12FMARoundDownEfff.exit.i ] ; 2 uses
  %.sroa.061.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1 ; 10 uses
  %i.jf = call noundef float @llvm.fma.f32(float %.sroa.074.0.vec.extract.i, float %.sroa.061.4.vec.extract.i, float %.sroa.0.0.vec.extract.i88) ; 3 uses
  %or.cond.i.i10.i = fcmp oeq float %i.jf, -inf
  br i1 %or.cond.i.i10.i, label %_ZN4pbrt12FMARoundDownEfff.exit15.i, label %bb.z

bb.z:                                             ; preds = %_ZN4pbrt12FMARoundDownEfff.exit9.i
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  %spec.store.select.i.i11.i = select i1 %i.jg, float -0.000000e+00, float %i.jf ; 2 uses
  %i.jh = bitcast float %spec.store.select.i.i11.i to i32
  %i.ji = fcmp ogt float %spec.store.select.i.i11.i, 0.000000e+00
  %.0.v.i.i12.i = select i1 %i.ji, i32 -1, i32 1
  %.0.i.i13.i = add i32 %.0.v.i.i12.i, %i.jh
  %i.jj = bitcast i32 %.0.i.i13.i to float
  br label %_ZN4pbrt12FMARoundDownEfff.exit15.i

_ZN4pbrt12FMARoundDownEfff.exit15.i:              ; preds = %bb.z, %_ZN4pbrt12FMARoundDownEfff.exit9.i
  %.09.i.i14.i = phi float [ %i.jj, %bb.z ], [ -inf, %_ZN4pbrt12FMARoundDownEfff.exit9.i ] ; 2 uses
  %i.jk = call noundef float @llvm.fma.f32(float %.sroa.074.4.vec.extract.i, float %.sroa.061.4.vec.extract.i, float %.sroa.0.0.vec.extract.i88) ; 3 uses
  %or.cond.i.i16.i = fcmp oeq float %i.jk, -inf
  br i1 %or.cond.i.i16.i, label %_ZN4pbrt12FMARoundDownEfff.exit21.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN4pbrt12FMARoundDownEfff.exit15.i
  %i.jl = fcmp oeq float %i.jk, 0.000000e+00
  %spec.store.select.i.i17.i = select i1 %i.jl, float -0.000000e+00, float %i.jk ; 2 uses
  %i.jm = bitcast float %spec.store.select.i.i17.i to i32
  %i.jn = fcmp ogt float %spec.store.select.i.i17.i, 0.000000e+00
  %.0.v.i.i18.i = select i1 %i.jn, i32 -1, i32 1
  %.0.i.i19.i = add i32 %.0.v.i.i18.i, %i.jm
  %i.jo = bitcast i32 %.0.i.i19.i to float
  br label %_ZN4pbrt12FMARoundDownEfff.exit21.i

_ZN4pbrt12FMARoundDownEfff.exit21.i:              ; preds = %bb.aa, %_ZN4pbrt12FMARoundDownEfff.exit15.i
  %.09.i.i20.i = phi float [ %i.jo, %bb.aa ], [ -inf, %_ZN4pbrt12FMARoundDownEfff.exit15.i ] ; 2 uses
  %.sroa.0.4.vec.extract.i89 = extractelement <2 x float> %.sroa.0.0.i.i83, i64 1 ; 9 uses
  %i.jp = call noundef float @llvm.fma.f32(float %.sroa.074.0.vec.extract.i, float %.sroa.061.0.vec.extract.i, float %.sroa.0.4.vec.extract.i89) ; 3 uses
  %or.cond.i.i22.i = fcmp oeq float %i.jp, +inf
  br i1 %or.cond.i.i22.i, label %_ZN4pbrt10FMARoundUpEfff.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN4pbrt12FMARoundDownEfff.exit21.i
  %i.jq = fcmp oeq float %i.jp, 0.000000e+00
  %spec.store.select.i.i23.i = select i1 %i.jq, float 0.000000e+00, float %i.jp ; 2 uses
  %i.jr = bitcast float %spec.store.select.i.i23.i to i32
  %i.js = fcmp ult float %spec.store.select.i.i23.i, 0.000000e+00
  %.0.v.i.i24.i = select i1 %i.js, i32 -1, i32 1
  %.0.i.i25.i = add i32 %.0.v.i.i24.i, %i.jr
  %i.jt = bitcast i32 %.0.i.i25.i to float
  br label %_ZN4pbrt10FMARoundUpEfff.exit.i

_ZN4pbrt10FMARoundUpEfff.exit.i:                  ; preds = %bb.ab, %_ZN4pbrt12FMARoundDownEfff.exit21.i
  %.010.i.i.i = phi float [ %i.jt, %bb.ab ], [ +inf, %_ZN4pbrt12FMARoundDownEfff.exit21.i ] ; 2 uses
  %i.ju = call noundef float @llvm.fma.f32(float %.sroa.074.4.vec.extract.i, float %.sroa.061.0.vec.extract.i, float %.sroa.0.4.vec.extract.i89) ; 3 uses
  %or.cond.i.i26.i = fcmp oeq float %i.ju, +inf
  br i1 %or.cond.i.i26.i, label %_ZN4pbrt10FMARoundUpEfff.exit31.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pbrt10FMARoundUpEfff.exit.i
  %i.jv = fcmp oeq float %i.ju, 0.000000e+00
  %spec.store.select.i.i27.i = select i1 %i.jv, float 0.000000e+00, float %i.ju ; 2 uses
  %i.jw = bitcast float %spec.store.select.i.i27.i to i32
  %i.jx = fcmp ult float %spec.store.select.i.i27.i, 0.000000e+00
  %.0.v.i.i28.i = select i1 %i.jx, i32 -1, i32 1
  %.0.i.i29.i = add i32 %.0.v.i.i28.i, %i.jw
  %i.jy = bitcast i32 %.0.i.i29.i to float
  br label %_ZN4pbrt10FMARoundUpEfff.exit31.i

_ZN4pbrt10FMARoundUpEfff.exit31.i:                ; preds = %bb.ac, %_ZN4pbrt10FMARoundUpEfff.exit.i
  %.010.i.i30.i = phi float [ %i.jy, %bb.ac ], [ +inf, %_ZN4pbrt10FMARoundUpEfff.exit.i ] ; 2 uses
  %i.jz = call noundef float @llvm.fma.f32(float %.sroa.074.0.vec.extract.i, float %.sroa.061.4.vec.extract.i, float %.sroa.0.4.vec.extract.i89) ; 3 uses
  %or.cond.i.i32.i = fcmp oeq float %i.jz, +inf
  br i1 %or.cond.i.i32.i, label %_ZN4pbrt10FMARoundUpEfff.exit37.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4pbrt10FMARoundUpEfff.exit31.i
  %i.ka = fcmp oeq float %i.jz, 0.000000e+00
  %spec.store.select.i.i33.i = select i1 %i.ka, float 0.000000e+00, float %i.jz ; 2 uses
  %i.kb = bitcast float %spec.store.select.i.i33.i to i32
  %i.kc = fcmp ult float %spec.store.select.i.i33.i, 0.000000e+00
  %.0.v.i.i34.i = select i1 %i.kc, i32 -1, i32 1
  %.0.i.i35.i = add i32 %.0.v.i.i34.i, %i.kb
  %i.kd = bitcast i32 %.0.i.i35.i to float
  br label %_ZN4pbrt10FMARoundUpEfff.exit37.i

_ZN4pbrt10FMARoundUpEfff.exit37.i:                ; preds = %bb.ad, %_ZN4pbrt10FMARoundUpEfff.exit31.i
  %.010.i.i36.i = phi float [ %i.kd, %bb.ad ], [ +inf, %_ZN4pbrt10FMARoundUpEfff.exit31.i ] ; 2 uses
  %i.ke = call noundef float @llvm.fma.f32(float %.sroa.074.4.vec.extract.i, float %.sroa.061.4.vec.extract.i, float %.sroa.0.4.vec.extract.i89) ; 3 uses
  %or.cond.i.i38.i = fcmp oeq float %i.ke, +inf
  br i1 %or.cond.i.i38.i, label %_ZN4pbrt3FMAENS_8IntervalES0_S0_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4pbrt10FMARoundUpEfff.exit37.i
  %i.kf = fcmp oeq float %i.ke, 0.000000e+00
  %spec.store.select.i.i39.i = select i1 %i.kf, float 0.000000e+00, float %i.ke ; 2 uses
  %i.kg = bitcast float %spec.store.select.i.i39.i to i32
  %i.kh = fcmp ult float %spec.store.select.i.i39.i, 0.000000e+00
  %.0.v.i.i40.i = select i1 %i.kh, i32 -1, i32 1
  %.0.i.i41.i = add i32 %.0.v.i.i40.i, %i.kg
  %i.ki = bitcast i32 %.0.i.i41.i to float
  br label %_ZN4pbrt3FMAENS_8IntervalES0_S0_.exit

_ZN4pbrt3FMAENS_8IntervalES0_S0_.exit:            ; preds = %_ZN4pbrt10FMARoundUpEfff.exit37.i, %bb.ae
  %.010.i.i42.i = phi float [ %i.ki, %bb.ae ], [ +inf, %_ZN4pbrt10FMARoundUpEfff.exit37.i ] ; 2 uses
  %i.kj = fcmp olt float %.09.i.i8.i, %.09.i.i.i
  %i.kk = select i1 %i.kj, float %.09.i.i8.i, float %.09.i.i.i ; 2 uses
  %i.kl = fcmp olt float %.09.i.i14.i, %i.kk
  %i.km = select i1 %i.kl, float %.09.i.i14.i, float %i.kk ; 2 uses
  %i.kn = fcmp olt float %.09.i.i20.i, %i.km
  %.sroa.speculated100.i = select i1 %i.kn, float %.09.i.i20.i, float %i.km ; 4 uses
  %i.ko = fcmp olt float %.010.i.i.i, %.010.i.i30.i
  %i.kp = select i1 %i.ko, float %.010.i.i30.i, float %.010.i.i.i ; 2 uses
  %i.kq = fcmp olt float %i.kp, %.010.i.i36.i
  %i.kr = select i1 %i.kq, float %.010.i.i36.i, float %i.kp ; 2 uses
  %i.ks = fcmp olt float %i.kr, %.010.i.i42.i
  %.sroa.speculated.i90 = select i1 %i.ks, float %.010.i.i42.i, float %i.kr ; 4 uses
  %i.kt = fcmp olt float %.sroa.speculated.i90, %.sroa.speculated100.i
  %.sroa.speculated5.i.i91 = select i1 %i.kt, float %.sroa.speculated.i90, float %.sroa.speculated100.i ; 3 uses
  %.sroa.087.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.speculated5.i.i91, i64 0
  %i.ku = fcmp olt float %.sroa.speculated100.i, %.sroa.speculated.i90
  %.sroa.speculated.i.i92 = select i1 %i.ku, float %.sroa.speculated.i90, float %.sroa.speculated100.i ; 2 uses
  %.sroa.087.4.vec.insert.i = insertelement <2 x float> %.sroa.087.0.vec.insert.i, float %.sroa.speculated.i.i92, i64 1
  store <2 x float> %.sroa.087.4.vec.insert.i, ptr %8, align 8, !tbaa !37
  %i.kv = call float @llvm.fabs.f32(float %.sroa.speculated5.i.i91)
  %i.kw = fcmp oeq float %i.kv, +inf
  %i.kx = call float @llvm.fabs.f32(float %.sroa.speculated.i.i92)
  %i.ky = fcmp oeq float %i.kx, +inf
  %or.cond = select i1 %i.kw, i1 true, i1 %i.ky
  br i1 %or.cond, label %bb.eh, label %.preheader

.preheader:                                       ; preds = %_ZN4pbrt3FMAENS_8IntervalES0_S0_.exit, %.preheader
  %i.kz = phi i64 [ %i.lb, %.preheader ], [ %i.hv, %_ZN4pbrt3FMAENS_8IntervalES0_S0_.exit ] ; 4 uses
  %i.la = mul i64 %i.kz, 6364136223846793005
  %i.lb = add i64 %i.la, %.pre293                 ; 7 uses
  %i.lc = lshr i64 %i.kz, 45
  %i.ld = lshr i64 %i.kz, 27
  %i.le = xor i64 %i.lc, %i.ld
  %i.lf = trunc i64 %i.le to i32                  ; 3 uses
  %.not.i.i = icmp eq i32 %i.lf, 0
  br i1 %.not.i.i, label %.preheader, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %.preheader
  %i.lg = lshr i64 %i.kz, 59
  %i.lh = trunc nuw nsw i64 %i.lg to i32
  %i.li = call noundef i32 @llvm.fshr.i32(i32 %i.lf, i32 %i.lf, i32 %i.lh)
  %i.lj = urem i32 %i.li, 3
  switch i32 %i.lj, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.af
    i32 2, label %bb.ag
  ]

bb.af:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.ag:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.lk = mul i64 %i.lb, 6364136223846793005
  %i.ll = add i64 %i.lk, %.pre293
  %i.lm = lshr i64 %i.lb, 45
  %i.ln = lshr i64 %i.lb, 27
  %i.lo = xor i64 %i.lm, %i.ln
  %i.lp = trunc i64 %i.lo to i32                  ; 2 uses
  %i.lq = lshr i64 %i.lb, 59
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = call noundef i32 @llvm.fshr.i32(i32 %i.lp, i32 %i.lp, i32 %i.lr)
  %i.lt = uitofp i32 %i.ls to float
  %i.lu = fmul nnan float %i.lt, f0x2F800000      ; 2 uses
  %i.lv = fcmp olt float %i.lu, f0x3F7FFFFF
  %.sroa.speculated.i.i93 = select i1 %i.lv, float %i.lu, float f0x3F7FFFFF ; 2 uses
  %i.lw = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i93
  %i.lx = fmul float %.sroa.074.0.vec.extract.i, %i.lw
  %i.ly = fmul float %.sroa.074.4.vec.extract.i, %.sroa.speculated.i.i93
  %i.lz = fadd float %i.ly, %i.lx                 ; 2 uses
  %i.ma = fcmp ogt float %i.lz, %.sroa.074.4.vec.extract.i
  %spec.select.i = select i1 %i.ma, float %.sroa.074.4.vec.extract.i, float %i.lz ; 2 uses
  %i.mb = fcmp olt float %spec.select.i, %.sroa.074.0.vec.extract.i
  %spec.select1.i = select i1 %i.mb, float %.sroa.074.0.vec.extract.i, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.af, %bb.ag
  %.promoted.i.i94 = phi i64 [ %i.lb, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %i.ll, %bb.ag ], [ %i.lb, %bb.af ]
  %.017.in.i = phi float [ %.sroa.074.0.vec.extract.i, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.ag ], [ %.sroa.074.4.vec.extract.i, %bb.af ]
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.mc = phi i64 [ %i.me, %bb.ah ], [ %.promoted.i.i94, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 4 uses
  %i.md = mul i64 %i.mc, 6364136223846793005
  %i.me = add i64 %i.md, %.pre293                 ; 7 uses
  %i.mf = lshr i64 %i.mc, 45
  %i.mg = lshr i64 %i.mc, 27
  %i.mh = xor i64 %i.mf, %i.mg
  %i.mi = trunc i64 %i.mh to i32                  ; 3 uses
  %.not.i.i95 = icmp eq i32 %i.mi, 0
  br i1 %.not.i.i95, label %bb.ah, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i96

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i96: ; preds = %bb.ah
  %.017.i = fpext float %.017.in.i to double
  %i.mj = lshr i64 %i.mc, 59
  %i.mk = trunc nuw nsw i64 %i.mj to i32
  %i.ml = call noundef i32 @llvm.fshr.i32(i32 %i.mi, i32 %i.mi, i32 %i.mk)
  %i.mm = urem i32 %i.ml, 3
  switch i32 %i.mm, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit103
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i96
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit103

bb.aj:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i96
  %i.mn = mul i64 %i.me, 6364136223846793005
  %i.mo = add i64 %i.mn, %.pre293
  %i.mp = lshr i64 %i.me, 45
  %i.mq = lshr i64 %i.me, 27
  %i.mr = xor i64 %i.mp, %i.mq
  %i.ms = trunc i64 %i.mr to i32                  ; 2 uses
  %i.mt = lshr i64 %i.me, 59
  %i.mu = trunc nuw nsw i64 %i.mt to i32
  %i.mv = call noundef i32 @llvm.fshr.i32(i32 %i.ms, i32 %i.ms, i32 %i.mu)
  %i.mw = uitofp i32 %i.mv to float
  %i.mx = fmul nnan float %i.mw, f0x2F800000      ; 2 uses
  %i.my = fcmp olt float %i.mx, f0x3F7FFFFF
  %.sroa.speculated.i.i97 = select i1 %i.my, float %i.mx, float f0x3F7FFFFF ; 2 uses
  %i.mz = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i97
  %i.na = fmul float %.sroa.061.0.vec.extract.i, %i.mz
  %i.nb = fmul float %.sroa.061.4.vec.extract.i, %.sroa.speculated.i.i97
  %i.nc = fadd float %i.nb, %i.na                 ; 2 uses
  %i.nd = fcmp ogt float %i.nc, %.sroa.061.4.vec.extract.i
  %spec.select.i98 = select i1 %i.nd, float %.sroa.061.4.vec.extract.i, float %i.nc ; 2 uses
  %i.ne = fcmp olt float %spec.select.i98, %.sroa.061.0.vec.extract.i
  %spec.select1.i99 = select i1 %i.ne, float %.sroa.061.0.vec.extract.i, float %spec.select.i98
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit103

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit103: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i96, %bb.ai, %bb.aj
  %.promoted.i.i104 = phi i64 [ %i.me, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i96 ], [ %i.mo, %bb.aj ], [ %i.me, %bb.ai ]
  %.017.in.i100 = phi float [ %.sroa.061.0.vec.extract.i, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i96 ], [ %spec.select1.i99, %bb.aj ], [ %.sroa.061.4.vec.extract.i, %bb.ai ]
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit103
  %i.nf = phi i64 [ %i.nh, %bb.ak ], [ %.promoted.i.i104, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit103 ] ; 4 uses
  %i.ng = mul i64 %i.nf, 6364136223846793005
  %i.nh = add i64 %i.ng, %.pre293                 ; 7 uses
  %i.ni = lshr i64 %i.nf, 45
  %i.nj = lshr i64 %i.nf, 27
  %i.nk = xor i64 %i.ni, %i.nj
  %i.nl = trunc i64 %i.nk to i32                  ; 3 uses
  %.not.i.i105 = icmp eq i32 %i.nl, 0
  br i1 %.not.i.i105, label %bb.ak, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106: ; preds = %bb.ak
  %.017.i101 = fpext float %.017.in.i100 to double
  %i.nm = lshr i64 %i.nf, 59
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = call noundef i32 @llvm.fshr.i32(i32 %i.nl, i32 %i.nl, i32 %i.nn)
  %i.np = urem i32 %i.no, 3
  switch i32 %i.np, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113
    i32 1, label %bb.al
    i32 2, label %bb.am
  ]

bb.al:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113

bb.am:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106
  %i.nq = mul i64 %i.nh, 6364136223846793005
  %i.nr = add i64 %i.nq, %.pre293
  %i.ns = lshr i64 %i.nh, 45
  %i.nt = lshr i64 %i.nh, 27
  %i.nu = xor i64 %i.ns, %i.nt
  %i.nv = trunc i64 %i.nu to i32                  ; 2 uses
  %i.nw = lshr i64 %i.nh, 59
  %i.nx = trunc nuw nsw i64 %i.nw to i32
  %i.ny = call noundef i32 @llvm.fshr.i32(i32 %i.nv, i32 %i.nv, i32 %i.nx)
  %i.nz = uitofp i32 %i.ny to float
  %i.oa = fmul nnan float %i.nz, f0x2F800000      ; 2 uses
  %i.ob = fcmp olt float %i.oa, f0x3F7FFFFF
  %.sroa.speculated.i.i107 = select i1 %i.ob, float %i.oa, float f0x3F7FFFFF ; 2 uses
  %i.oc = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i107
  %i.od = fmul float %.sroa.0.0.vec.extract.i88, %i.oc
  %i.oe = fmul float %.sroa.0.4.vec.extract.i89, %.sroa.speculated.i.i107
  %i.of = fadd float %i.oe, %i.od                 ; 2 uses
  %i.og = fcmp ogt float %i.of, %.sroa.0.4.vec.extract.i89
  %spec.select.i108 = select i1 %i.og, float %.sroa.0.4.vec.extract.i89, float %i.of ; 2 uses
  %i.oh = fcmp olt float %spec.select.i108, %.sroa.0.0.vec.extract.i88
  %spec.select1.i109 = select i1 %i.oh, float %.sroa.0.0.vec.extract.i88, float %spec.select.i108
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106, %bb.al, %bb.am
  %i.oi = phi i64 [ %i.nh, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106 ], [ %i.nr, %bb.am ], [ %i.nh, %bb.al ] ; 32 uses
  %.017.in.i110 = phi float [ %.sroa.0.0.vec.extract.i88, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106 ], [ %spec.select1.i109, %bb.am ], [ %.sroa.0.4.vec.extract.i89, %bb.al ]
  %.017.i111 = fpext float %.017.in.i110 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.oj = call noundef double @llvm.fma.f64(double %.017.i, double %.017.i101, double %.017.i111)
  %i.ok = fptrunc double %i.oj to float
  store float %i.ok, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float %.sroa.speculated5.i.i91, ptr %i.c, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.265, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ol = load i8, ptr %9, align 8, !tbaa !18, !range !19, !noundef !20
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.bd, label %bb.an

bb.an:                                            ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ao unwind label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.on = load ptr, ptr %10, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK4pbrt8Interval8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.ao
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load ptr, ptr %6, align 8, !tbaa !26
  %i.oq = load i64, ptr %i.l, align 8, !tbaa !51
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr noundef %i.op, i64 noundef %i.oq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ap ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.os = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.m
  br i1 %i.ot, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.ou = load i64, ptr %i.m, align 8, !tbaa !32
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ap:                                            ; preds = %.noexc
  %i.ow = landingpad { ptr, i32 }
          cleanup
  store i64 %i.oi, ptr %7, align 8
  %i.ox = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.m
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ap
  %i.oz = load i64, ptr %i.m, align 8, !tbaa !32
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.pb = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i114, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.pd = phi ptr [ %i.pc, %bb.aq ], [ @.str.324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 828, ptr noundef %i.pd)
          to label %bb.ar unwind label %bb.az

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.pe = load ptr, ptr %10, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pf = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.aw

.noexc.i.i:                                       ; preds = %bb.at
  br i1 %i.pf, label %bb.au, label %_ZN7testing7MessageD2Ev.exit

bb.au:                                            ; preds = %.noexc.i.i
  %i.pg = load ptr, ptr %10, align 8, !tbaa !29   ; 3 uses
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %_ZN7testing7MessageD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pi = load ptr, ptr %i.pg, align 8, !tbaa !31
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(128) %i.pg) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.aw:                                            ; preds = %bb.at
  %i.pl = landingpad { ptr, i32 }
          catch ptr null
  store i64 %i.oi, ptr %7, align 8
  %i.pm = extractvalue { ptr, i32 } %i.pl, 0
  call void @__clang_call_terminate(ptr %i.pm) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.as, %.noexc.i.i, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bd

bb.ax:                                            ; preds = %bb.an
  %i.pn = landingpad { ptr, i32 }
          cleanup
  store i64 %i.oi, ptr %7, align 8
  br label %bb.bc

bb.ay:                                            ; preds = %bb.ao
  %i.po = landingpad { ptr, i32 }
          cleanup
  store i64 %i.oi, ptr %7, align 8
  br label %.body

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.pp = landingpad { ptr, i32 }
          cleanup
  store i64 %i.oi, ptr %7, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ar
  %i.pq = landingpad { ptr, i32 }
          cleanup
  store i64 %i.oi, ptr %7, align 8
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn41 = phi { ptr, i32 } [ %i.pq, %bb.ba ], [ %i.pp, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

.body:                                            ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.bb
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %bb.bb ], [ %i.po, %bb.ay ], [ %i.ow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  br label %bb.bc

bb.bc:                                            ; preds = %.body, %bb.ax
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %.body ], [ %i.pn, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.eg

bb.bd:                                            ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113, %_ZN7testing7MessageD2Ev.exit
  %i.pr = load ptr, ptr %i.n, align 8, !tbaa !21
  %.not.i.i.i115 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i115, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ps = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i116 unwind label %bb.bh

.noexc.i.i116:                                    ; preds = %bb.be
  br i1 %i.ps, label %bb.bf, label %_ZN7testing15AssertionResultD2Ev.exit

bb.bf:                                            ; preds = %.noexc.i.i116
  %i.pt = load ptr, ptr %i.n, align 8, !tbaa !21  ; 4 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pv = load ptr, ptr %i.pt, align 8, !tbaa !26 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bg
  %i.py = load i64, ptr %i.pw, align 8, !tbaa !32
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.pz) #27
end_hunk_9
begin_hunk_10_@_ZN39FloatInterval_DifferenceOfProducts_Test8TestBodyEv:bb.a
  %i.ak = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.al = select <2 x i1> %i.ai, <2 x float> %i.aj, <2 x float> %i.ak
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit46

bb.i:                                             ; preds = %bb.g
  %i.am = fneg float %.sroa.0.0.vec.extract.i36   ; 2 uses
  %i.an = fcmp ogt float %.sroa.0.4.vec.extract.i38, %i.am
  %.sroa.speculated.i43 = select i1 %i.an, float %.sroa.0.4.vec.extract.i38, float %i.am ; 2 uses
  %i.ao = fcmp ogt float %.sroa.speculated.i43, 0.000000e+00
  %.sroa.speculated.i2.i44 = select i1 %i.ao, float %.sroa.speculated.i43, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i45 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i44, i64 1
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit46

_ZN4pbrt3AbsENS_8IntervalE.exit46:                ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit, %bb.h, %bb.i
  %.sroa.012.0.i37 = phi <2 x float> [ %.sroa.012.4.vec.insert18.i45, %bb.i ], [ %i.al, %bb.h ], [ %i.ad, %_ZN4pbrt3AbsENS_8IntervalE.exit ] ; 2 uses
  %i.ap = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 6 uses
  %.sroa.0.0.vec.extract.i47 = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.aq = fcmp ult float %.sroa.0.0.vec.extract.i47, 0.000000e+00
  br i1 %i.aq, label %bb.j, label %_ZN4pbrt3AbsENS_8IntervalE.exit57

bb.j:                                             ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit46
  %.sroa.0.4.vec.extract.i49 = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  %i.ar = fcmp ugt float %.sroa.0.4.vec.extract.i49, 0.000000e+00
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = fneg <2 x float> %i.ap                  ; 2 uses
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fcmp ogt <2 x float> %i.ap, %i.at
  %i.av = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = select <2 x i1> %i.au, <2 x float> %i.av, <2 x float> %i.aw
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit57

bb.l:                                             ; preds = %bb.j
  %i.ay = fneg float %.sroa.0.0.vec.extract.i47   ; 2 uses
  %i.az = fcmp ogt float %.sroa.0.4.vec.extract.i49, %i.ay
  %.sroa.speculated.i54 = select i1 %i.az, float %.sroa.0.4.vec.extract.i49, float %i.ay ; 2 uses
  %i.ba = fcmp ogt float %.sroa.speculated.i54, 0.000000e+00
  %.sroa.speculated.i2.i55 = select i1 %i.ba, float %.sroa.speculated.i54, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i56 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i55, i64 1
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit57

_ZN4pbrt3AbsENS_8IntervalE.exit57:                ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit46, %bb.k, %bb.l
  %.sroa.012.0.i48 = phi <2 x float> [ %.sroa.012.4.vec.insert18.i56, %bb.l ], [ %i.ax, %bb.k ], [ %i.ap, %_ZN4pbrt3AbsENS_8IntervalE.exit46 ] ; 2 uses
  %i.bb = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 6 uses
  %.sroa.0.0.vec.extract.i58 = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bc = fcmp ult float %.sroa.0.0.vec.extract.i58, 0.000000e+00
  br i1 %i.bc, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit57
  %.sroa.0.4.vec.extract.i60 = extractelement <2 x float> %i.bb, i64 1 ; 3 uses
  %i.bd = fcmp ugt float %.sroa.0.4.vec.extract.i60, 0.000000e+00
  br i1 %i.bd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = fneg <2 x float> %i.bb                  ; 2 uses
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = fcmp ogt <2 x float> %i.bb, %i.bf
  %i.bh = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = select <2 x i1> %i.bg, <2 x float> %i.bh, <2 x float> %i.bi
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bk = fneg float %.sroa.0.0.vec.extract.i58   ; 2 uses
  %i.bl = fcmp ogt float %.sroa.0.4.vec.extract.i60, %i.bk
  %.sroa.speculated.i65 = select i1 %i.bl, float %.sroa.0.4.vec.extract.i60, float %i.bk ; 2 uses
  %i.bm = fcmp ogt float %.sroa.speculated.i65, 0.000000e+00
  %.sroa.speculated.i2.i66 = select i1 %i.bm, float %.sroa.speculated.i65, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i67 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i66, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZN4pbrt3AbsENS_8IntervalE.exit57
  %.sroa.012.0.i59 = phi <2 x float> [ %.sroa.012.4.vec.insert18.i67, %bb.o ], [ %i.bj, %bb.n ], [ %i.bb, %_ZN4pbrt3AbsENS_8IntervalE.exit57 ] ; 3 uses
  %i.bn = load i64, ptr %1, align 8, !tbaa !54
  %i.bo = mul i64 %i.bn, 6364136223846793005
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !53  ; 9 uses
  %i.bq = add i64 %i.bo, %i.bp                    ; 2 uses
  store i64 %i.bq, ptr %1, align 8, !tbaa !54
  %.sroa.0165.0.vec.extract171 = extractelement <2 x float> %.sroa.012.0.i37, i64 0 ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %.sroa.0165.0.vec.extract171, -inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt12MulRoundDownEff.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = fcmp oeq float %.sroa.0165.0.vec.extract171, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.br, float -0.000000e+00, float %.sroa.0165.0.vec.extract171 ; 2 uses
  %i.bs = bitcast float %spec.store.select.i.i.i to i32
  %i.bt = fcmp ogt float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.bt, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.bs
  %i.bu = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt12MulRoundDownEff.exit.i

_ZN4pbrt12MulRoundDownEff.exit.i:                 ; preds = %bb.q, %bb.p
  %.09.i.i.i = phi float [ %i.bu, %bb.q ], [ -inf, %bb.p ] ; 4 uses
  %.sroa.0165.4.vec.extract178 = extractelement <2 x float> %.sroa.012.0.i37, i64 1 ; 3 uses
  %or.cond.i.i6.i = fcmp oeq float %.sroa.0165.4.vec.extract178, +inf
  br i1 %or.cond.i.i6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt12MulRoundDownEff.exit.i
  %i.bv = fcmp oeq float %.sroa.0165.4.vec.extract178, 0.000000e+00
  %spec.store.select.i.i7.i = select i1 %i.bv, float 0.000000e+00, float %.sroa.0165.4.vec.extract178 ; 2 uses
  %i.bw = bitcast float %spec.store.select.i.i7.i to i32
  %i.bx = fcmp ult float %spec.store.select.i.i7.i, 0.000000e+00
  %.0.v.i.i8.i = select i1 %i.bx, i32 -1, i32 1
  %.0.i.i9.i = add i32 %.0.v.i.i8.i, %i.bw
  %i.by = bitcast i32 %.0.i.i9.i to float
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN4pbrt12MulRoundDownEff.exit.i
  %.010.i.i.i = phi float [ %i.by, %bb.r ], [ +inf, %_ZN4pbrt12MulRoundDownEff.exit.i ] ; 4 uses
  %i.bz = fcmp olt float %.010.i.i.i, %.09.i.i.i
  %.sroa.speculated5.i.i70 = select i1 %i.bz, float %.010.i.i.i, float %.09.i.i.i ; 5 uses
  %i.ca = fcmp olt float %.09.i.i.i, %.010.i.i.i
  %.sroa.speculated.i.i71 = select i1 %i.ca, float %.010.i.i.i, float %.09.i.i.i ; 5 uses
  %.sroa.0165.0.vec.insert173 = insertelement <2 x float> poison, float %.sroa.speculated5.i.i70, i64 0
  %.sroa.0165.4.vec.insert180 = insertelement <2 x float> %.sroa.0165.0.vec.insert173, float %.sroa.speculated.i.i71, i64 1
  %.sroa.0149.0.vec.extract155 = extractelement <2 x float> %.sroa.012.0.i48, i64 0 ; 3 uses
  %or.cond.i.i.i86 = fcmp oeq float %.sroa.0149.0.vec.extract155, -inf
  br i1 %or.cond.i.i.i86, label %_ZN4pbrt12MulRoundDownEff.exit.i90, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = fcmp oeq float %.sroa.0149.0.vec.extract155, 0.000000e+00
  %spec.store.select.i.i.i87 = select i1 %i.cb, float -0.000000e+00, float %.sroa.0149.0.vec.extract155 ; 2 uses
  %i.cc = bitcast float %spec.store.select.i.i.i87 to i32
  %i.cd = fcmp ogt float %spec.store.select.i.i.i87, 0.000000e+00
  %.0.v.i.i.i88 = select i1 %i.cd, i32 -1, i32 1
  %.0.i.i.i89 = add i32 %.0.v.i.i.i88, %i.cc
  %i.ce = bitcast i32 %.0.i.i.i89 to float
  br label %_ZN4pbrt12MulRoundDownEff.exit.i90

_ZN4pbrt12MulRoundDownEff.exit.i90:               ; preds = %bb.t, %bb.s
  %.09.i.i.i91 = phi float [ %i.ce, %bb.t ], [ -inf, %bb.s ] ; 4 uses
  %.sroa.0149.4.vec.extract162 = extractelement <2 x float> %.sroa.012.0.i48, i64 1 ; 3 uses
  %or.cond.i.i6.i92 = fcmp oeq float %.sroa.0149.4.vec.extract162, +inf
  br i1 %or.cond.i.i6.i92, label %_ZN4pbrt8IntervalmLEf.exit100, label %bb.u

bb.u:                                             ; preds = %_ZN4pbrt12MulRoundDownEff.exit.i90
  %i.cf = fcmp oeq float %.sroa.0149.4.vec.extract162, 0.000000e+00
  %spec.store.select.i.i7.i93 = select i1 %i.cf, float 0.000000e+00, float %.sroa.0149.4.vec.extract162 ; 2 uses
  %i.cg = bitcast float %spec.store.select.i.i7.i93 to i32
  %i.ch = fcmp ult float %spec.store.select.i.i7.i93, 0.000000e+00
  %.0.v.i.i8.i94 = select i1 %i.ch, i32 -1, i32 1
  %.0.i.i9.i95 = add i32 %.0.v.i.i8.i94, %i.cg
  %i.ci = bitcast i32 %.0.i.i9.i95 to float
  br label %_ZN4pbrt8IntervalmLEf.exit100

_ZN4pbrt8IntervalmLEf.exit100:                    ; preds = %_ZN4pbrt12MulRoundDownEff.exit.i90, %bb.u
  %.010.i.i.i97 = phi float [ %i.ci, %bb.u ], [ +inf, %_ZN4pbrt12MulRoundDownEff.exit.i90 ] ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZN4pbrt8IntervalmLEf.exit100
  %i.cj = phi i64 [ %i.cl, %bb.v ], [ %i.bq, %_ZN4pbrt8IntervalmLEf.exit100 ] ; 4 uses
  %i.ck = mul i64 %i.cj, 6364136223846793005
  %i.cl = add i64 %i.ck, %i.bp                    ; 7 uses
  %i.cm = lshr i64 %i.cj, 45
  %i.cn = lshr i64 %i.cj, 27
  %i.co = xor i64 %i.cm, %i.cn
  %i.cp = trunc i64 %i.co to i32                  ; 3 uses
  %.not.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i, label %bb.v, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %bb.v
  %i.cq = fcmp olt float %.010.i.i.i97, %.09.i.i.i91
  %.sroa.speculated5.i.i98 = select i1 %i.cq, float %.010.i.i.i97, float %.09.i.i.i91 ; 5 uses
  %i.cr = fcmp olt float %.09.i.i.i91, %.010.i.i.i97
  %.sroa.speculated.i.i99 = select i1 %i.cr, float %.010.i.i.i97, float %.09.i.i.i91 ; 5 uses
  %.sroa.0149.0.vec.insert157 = insertelement <2 x float> poison, float %.sroa.speculated5.i.i98, i64 0
  %.sroa.0149.4.vec.insert164 = insertelement <2 x float> %.sroa.0149.0.vec.insert157, float %.sroa.speculated.i.i99, i64 1
  %.sroa.0181.0.vec.extract = extractelement <2 x float> %.sroa.012.0.i, i64 0 ; 4 uses
  %.sroa.0181.4.vec.extract = extractelement <2 x float> %.sroa.012.0.i, i64 1 ; 4 uses
  %i.cs = lshr i64 %i.cj, 59
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = call noundef i32 @llvm.fshr.i32(i32 %i.cp, i32 %i.cp, i32 %i.ct)
  %i.cv = urem i32 %i.cu, 3
  switch i32 %i.cv, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.w:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.x:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.cw = mul i64 %i.cl, 6364136223846793005
  %i.cx = add i64 %i.cw, %i.bp                    ; 2 uses
  store i64 %i.cx, ptr %1, align 8, !tbaa !54
  %i.cy = lshr i64 %i.cl, 45
  %i.cz = lshr i64 %i.cl, 27
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = lshr i64 %i.cl, 59
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = call noundef i32 @llvm.fshr.i32(i32 %i.db, i32 %i.db, i32 %i.dd)
  %i.df = uitofp i32 %i.de to float
  %i.dg = fmul nnan float %i.df, f0x2F800000      ; 2 uses
  %i.dh = fcmp olt float %i.dg, f0x3F7FFFFF
  %.sroa.speculated.i.i101 = select i1 %i.dh, float %i.dg, float f0x3F7FFFFF ; 2 uses
  %i.di = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i101
  %i.dj = fmul float %.sroa.0181.0.vec.extract, %i.di
  %i.dk = fmul float %.sroa.0181.4.vec.extract, %.sroa.speculated.i.i101
  %i.dl = fadd float %i.dk, %i.dj                 ; 2 uses
  %i.dm = fcmp ogt float %i.dl, %.sroa.0181.4.vec.extract
  %spec.select.i = select i1 %i.dm, float %.sroa.0181.4.vec.extract, float %i.dl ; 2 uses
  %i.dn = fcmp olt float %spec.select.i, %.sroa.0181.0.vec.extract
  %spec.select1.i = select i1 %i.dn, float %.sroa.0181.0.vec.extract, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i124, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i114, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i104, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  unreachable

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.w, %bb.x
  %.promoted.i.i102 = phi i64 [ %i.cl, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %i.cx, %bb.x ], [ %i.cl, %bb.w ]
  %.017.in.i = phi float [ %.sroa.0181.0.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.x ], [ %.sroa.0181.4.vec.extract, %bb.w ]
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.do = phi i64 [ %i.dq, %bb.y ], [ %.promoted.i.i102, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 4 uses
  %i.dp = mul i64 %i.do, 6364136223846793005
  %i.dq = add i64 %i.dp, %i.bp                    ; 7 uses
  %i.dr = lshr i64 %i.do, 45
  %i.ds = lshr i64 %i.do, 27
  %i.dt = xor i64 %i.dr, %i.ds
  %i.du = trunc i64 %i.dt to i32                  ; 3 uses
  %.not.i.i103 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i103, label %bb.y, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i104

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i104: ; preds = %bb.y
  %.017.i = fpext float %.017.in.i to double
  %i.dv = lshr i64 %i.do, 59
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = call noundef i32 @llvm.fshr.i32(i32 %i.du, i32 %i.du, i32 %i.dw)
  %i.dy = urem i32 %i.dx, 3
  switch i32 %i.dy, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit111
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i104
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit111

bb.aa:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i104
  %i.dz = mul i64 %i.dq, 6364136223846793005
  %i.ea = add i64 %i.dz, %i.bp                    ; 2 uses
  store i64 %i.ea, ptr %1, align 8, !tbaa !54
  %i.eb = lshr i64 %i.dq, 45
  %i.ec = lshr i64 %i.dq, 27
  %i.ed = xor i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = lshr i64 %i.dq, 59
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = call noundef i32 @llvm.fshr.i32(i32 %i.ee, i32 %i.ee, i32 %i.eg)
  %i.ei = uitofp i32 %i.eh to float
  %i.ej = fmul nnan float %i.ei, f0x2F800000      ; 2 uses
  %i.ek = fcmp olt float %i.ej, f0x3F7FFFFF
  %.sroa.speculated.i.i105 = select i1 %i.ek, float %i.ej, float f0x3F7FFFFF ; 2 uses
  %i.el = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i105
  %i.em = fmul float %.sroa.speculated5.i.i70, %i.el
  %i.en = fmul float %.sroa.speculated.i.i71, %.sroa.speculated.i.i105
  %i.eo = fadd float %i.en, %i.em                 ; 2 uses
  %i.ep = fcmp ogt float %i.eo, %.sroa.speculated.i.i71
  %spec.select.i106 = select i1 %i.ep, float %.sroa.speculated.i.i71, float %i.eo ; 2 uses
  %i.eq = fcmp olt float %spec.select.i106, %.sroa.speculated5.i.i70
  %spec.select1.i107 = select i1 %i.eq, float %.sroa.speculated5.i.i70, float %spec.select.i106
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit111

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit111: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i104, %bb.z, %bb.aa
  %.promoted.i.i112 = phi i64 [ %i.dq, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i104 ], [ %i.ea, %bb.aa ], [ %i.dq, %bb.z ]
  %.017.in.i108 = phi float [ %.sroa.speculated5.i.i70, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i104 ], [ %spec.select1.i107, %bb.aa ], [ %.sroa.speculated.i.i71, %bb.z ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit111
  %i.er = phi i64 [ %i.et, %bb.ab ], [ %.promoted.i.i112, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit111 ] ; 4 uses
  %i.es = mul i64 %i.er, 6364136223846793005
  %i.et = add i64 %i.es, %i.bp                    ; 7 uses
  %i.eu = lshr i64 %i.er, 45
  %i.ev = lshr i64 %i.er, 27
  %i.ew = xor i64 %i.eu, %i.ev
  %i.ex = trunc i64 %i.ew to i32                  ; 3 uses
  %.not.i.i113 = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i113, label %bb.ab, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i114

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i114: ; preds = %bb.ab
  %.017.i109 = fpext float %.017.in.i108 to double
  %i.ey = lshr i64 %i.er, 59
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = call noundef i32 @llvm.fshr.i32(i32 %i.ex, i32 %i.ex, i32 %i.ez)
  %i.fb = urem i32 %i.fa, 3
  switch i32 %i.fb, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit121
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i114
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit121

bb.ad:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i114
  %i.fc = mul i64 %i.et, 6364136223846793005
  %i.fd = add i64 %i.fc, %i.bp                    ; 2 uses
  store i64 %i.fd, ptr %1, align 8, !tbaa !54
  %i.fe = lshr i64 %i.et, 45
  %i.ff = lshr i64 %i.et, 27
  %i.fg = xor i64 %i.fe, %i.ff
  %i.fh = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fi = lshr i64 %i.et, 59
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = call noundef i32 @llvm.fshr.i32(i32 %i.fh, i32 %i.fh, i32 %i.fj)
  %i.fl = uitofp i32 %i.fk to float
  %i.fm = fmul nnan float %i.fl, f0x2F800000      ; 2 uses
  %i.fn = fcmp olt float %i.fm, f0x3F7FFFFF
  %.sroa.speculated.i.i115 = select i1 %i.fn, float %i.fm, float f0x3F7FFFFF ; 2 uses
  %i.fo = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i115
  %i.fp = fmul float %.sroa.speculated5.i.i98, %i.fo
  %i.fq = fmul float %.sroa.speculated.i.i99, %.sroa.speculated.i.i115
  %i.fr = fadd float %i.fq, %i.fp                 ; 2 uses
  %i.fs = fcmp ogt float %i.fr, %.sroa.speculated.i.i99
  %spec.select.i116 = select i1 %i.fs, float %.sroa.speculated.i.i99, float %i.fr ; 2 uses
  %i.ft = fcmp olt float %spec.select.i116, %.sroa.speculated5.i.i98
  %spec.select1.i117 = select i1 %i.ft, float %.sroa.speculated5.i.i98, float %spec.select.i116
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit121

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit121: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i114, %bb.ac, %bb.ad
  %.promoted.i.i122 = phi i64 [ %i.et, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i114 ], [ %i.fd, %bb.ad ], [ %i.et, %bb.ac ]
  %.017.in.i118 = phi float [ %.sroa.speculated5.i.i98, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i114 ], [ %spec.select1.i117, %bb.ad ], [ %.sroa.speculated.i.i99, %bb.ac ]
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit121
  %i.fu = phi i64 [ %i.fw, %bb.ae ], [ %.promoted.i.i122, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit121 ] ; 4 uses
  %i.fv = mul i64 %i.fu, 6364136223846793005
  %i.fw = add i64 %i.fv, %i.bp                    ; 5 uses
  %i.fx = lshr i64 %i.fu, 45
  %i.fy = lshr i64 %i.fu, 27
  %i.fz = xor i64 %i.fx, %i.fy
  %i.ga = trunc i64 %i.fz to i32                  ; 3 uses
  %.not.i.i123 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i123, label %bb.ae, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i124

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i124: ; preds = %bb.ae
  %.017.i119 = fpext float %.017.in.i118 to double ; 2 uses
  %.sroa.0147.0.vec.extract = extractelement <2 x float> %.sroa.012.0.i59, i64 0 ; 4 uses
  %.sroa.0147.4.vec.extract = extractelement <2 x float> %.sroa.012.0.i59, i64 1 ; 4 uses
  %i.gb = lshr i64 %i.fu, 59
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %i.gd = call noundef i32 @llvm.fshr.i32(i32 %i.ga, i32 %i.ga, i32 %i.gc)
  %i.ge = urem i32 %i.gd, 3
  switch i32 %i.ge, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit131
    i32 1, label %bb.af
    i32 2, label %bb.ag
  ]

bb.af:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i124
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit131

bb.ag:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i124
  %i.gf = mul i64 %i.fw, 6364136223846793005
  %i.gg = add i64 %i.gf, %i.bp
  store i64 %i.gg, ptr %1, align 8, !tbaa !54
  %i.gh = lshr i64 %i.fw, 45
  %i.gi = lshr i64 %i.fw, 27
  %i.gj = xor i64 %i.gh, %i.gi
  %i.gk = trunc i64 %i.gj to i32                  ; 2 uses
  %i.gl = lshr i64 %i.fw, 59
  %i.gm = trunc nuw nsw i64 %i.gl to i32
  %i.gn = call noundef i32 @llvm.fshr.i32(i32 %i.gk, i32 %i.gk, i32 %i.gm)
  %i.go = uitofp i32 %i.gn to float
  %i.gp = fmul nnan float %i.go, f0x2F800000      ; 2 uses
  %i.gq = fcmp olt float %i.gp, f0x3F7FFFFF
  %.sroa.speculated.i.i125 = select i1 %i.gq, float %i.gp, float f0x3F7FFFFF ; 2 uses
  %i.gr = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i125
  %i.gs = fmul float %.sroa.0147.0.vec.extract, %i.gr
  %i.gt = fmul float %.sroa.0147.4.vec.extract, %.sroa.speculated.i.i125
  %i.gu = fadd float %i.gt, %i.gs                 ; 2 uses
  %i.gv = fcmp ogt float %i.gu, %.sroa.0147.4.vec.extract
  %spec.select.i126 = select i1 %i.gv, float %.sroa.0147.4.vec.extract, float %i.gu ; 2 uses
  %i.gw = fcmp olt float %spec.select.i126, %.sroa.0147.0.vec.extract
  %spec.select1.i127 = select i1 %i.gw, float %.sroa.0147.0.vec.extract, float %spec.select.i126
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit131

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit131: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i124, %bb.af, %bb.ag
  %.017.in.i128 = phi float [ %.sroa.0147.0.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i124 ], [ %spec.select1.i127, %bb.ag ], [ %.sroa.0147.4.vec.extract, %bb.af ]
  %.017.i129 = fpext float %.017.in.i128 to double ; 2 uses
  %i.gx = call <2 x float> @_ZN4pbrt20DifferenceOfProductsENS_8IntervalES0_S0_S0_(<2 x float> %.sroa.012.0.i, <2 x float> %.sroa.0165.4.vec.insert180, <2 x float> %.sroa.0149.4.vec.insert164, <2 x float> %.sroa.012.0.i59) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.gy = fmul double %.017.i119, %.017.i129      ; 2 uses
  %i.gz = fneg double %i.gy
  %i.ha = call noundef double @llvm.fma.f64(double %.017.i, double %.017.i109, double %i.gz)
  %i.hb = fneg double %.017.i119
  %i.hc = call noundef double @llvm.fma.f64(double %i.hb, double %.017.i129, double %i.gy)
  %i.hd = fadd double %i.ha, %i.hc
  store double %i.hd, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.gx, i64 0
  store float %.sroa.0.0.vec.extract, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.291, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.he = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.ax, label %bb.ah

bb.ah:                                            ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load ptr, ptr %3, align 8, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = trunc nuw nsw i64 %indvars.iv to i32
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i32 noundef %i.hi)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.ar ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.hk = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i132 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i132, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aj, %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.hm = phi ptr [ %i.hl, %bb.aj ], [ @.str.324, %_ZN7testing7MessagelsIiEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 888, ptr noundef %i.hm)
          to label %bb.ak unwind label %bb.as

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.hn = load ptr, ptr %3, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ho = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.ap

.noexc.i.i:                                       ; preds = %bb.am
  br i1 %i.ho, label %bb.an, label %_ZN7testing7MessageD2Ev.exit

bb.an:                                            ; preds = %.noexc.i.i
  %i.hp = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_ZN7testing7MessageD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !31
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(128) %i.hp) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.ap:                                            ; preds = %bb.am
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.al, %.noexc.i.i, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ah
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ai
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ak
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.hz, %bb.at ], [ %i.hy, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.au ], [ %i.hx, %bb.ar ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.aq
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.av ], [ %i.hw, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.bx

bb.ax:                                            ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit131, %_ZN7testing7MessageD2Ev.exit
  %i.ia = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i133 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i133, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ib = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i134 unwind label %bb.bb

.noexc.i.i134:                                    ; preds = %bb.ay
  br i1 %i.ib, label %bb.az, label %_ZN7testing15AssertionResultD2Ev.exit

bb.az:                                            ; preds = %.noexc.i.i134
  %i.ic = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !26 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ba
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.bb:                                            ; preds = %bb.ay
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ax, %.noexc.i.i134, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.gx, i64 1
  store float %.sroa.0.4.vec.extract, ptr %i.c, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.292, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.il = load i8, ptr %5, align 8, !tbaa !18, !range !19, !noundef !20
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.bs, label %bb.bc

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.in = load ptr, ptr %6, align 8, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = trunc nuw nsw i64 %indvars.iv to i32
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.io, i32 noundef %i.ip)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit135 unwind label %bb.bm ; 0 uses
end_hunk_10
begin_hunk_11_@_ZN32FloatInterval_SumOfProducts_Test8TestBodyEv:bb.a
bb.i:                                             ; preds = %bb.g
  %i.am = fneg float %.sroa.0.0.vec.extract.i36   ; 2 uses
  %i.an = fcmp ogt float %.sroa.0.4.vec.extract.i38, %i.am
  %.sroa.speculated.i43 = select i1 %i.an, float %.sroa.0.4.vec.extract.i38, float %i.am ; 2 uses
  %i.ao = fcmp ogt float %.sroa.speculated.i43, 0.000000e+00
  %.sroa.speculated.i2.i44 = select i1 %i.ao, float %.sroa.speculated.i43, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i45 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i44, i64 1
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit46

_ZN4pbrt3AbsENS_8IntervalE.exit46:                ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit, %bb.h, %bb.i
  %.sroa.012.0.i37 = phi <2 x float> [ %.sroa.012.4.vec.insert18.i45, %bb.i ], [ %i.al, %bb.h ], [ %i.ad, %_ZN4pbrt3AbsENS_8IntervalE.exit ] ; 2 uses
  %i.ap = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 6 uses
  %.sroa.0.0.vec.extract.i47 = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.aq = fcmp ult float %.sroa.0.0.vec.extract.i47, 0.000000e+00
  br i1 %i.aq, label %bb.j, label %_ZN4pbrt3AbsENS_8IntervalE.exit57

bb.j:                                             ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit46
  %.sroa.0.4.vec.extract.i49 = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  %i.ar = fcmp ugt float %.sroa.0.4.vec.extract.i49, 0.000000e+00
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = fneg <2 x float> %i.ap                  ; 2 uses
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fcmp ogt <2 x float> %i.ap, %i.at
  %i.av = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = select <2 x i1> %i.au, <2 x float> %i.av, <2 x float> %i.aw
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit57

bb.l:                                             ; preds = %bb.j
  %i.ay = fneg float %.sroa.0.0.vec.extract.i47   ; 2 uses
  %i.az = fcmp ogt float %.sroa.0.4.vec.extract.i49, %i.ay
  %.sroa.speculated.i54 = select i1 %i.az, float %.sroa.0.4.vec.extract.i49, float %i.ay ; 2 uses
  %i.ba = fcmp ogt float %.sroa.speculated.i54, 0.000000e+00
  %.sroa.speculated.i2.i55 = select i1 %i.ba, float %.sroa.speculated.i54, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i56 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i55, i64 1
  br label %_ZN4pbrt3AbsENS_8IntervalE.exit57

_ZN4pbrt3AbsENS_8IntervalE.exit57:                ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit46, %bb.k, %bb.l
  %.sroa.012.0.i48 = phi <2 x float> [ %.sroa.012.4.vec.insert18.i56, %bb.l ], [ %i.ax, %bb.k ], [ %i.ap, %_ZN4pbrt3AbsENS_8IntervalE.exit46 ] ; 2 uses
  %i.bb = call fastcc <2 x float> @_ZL8getFloatRN4pbrt3RNGEff(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 6 uses
  %.sroa.0.0.vec.extract.i58 = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bc = fcmp ult float %.sroa.0.0.vec.extract.i58, 0.000000e+00
  br i1 %i.bc, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN4pbrt3AbsENS_8IntervalE.exit57
  %.sroa.0.4.vec.extract.i60 = extractelement <2 x float> %i.bb, i64 1 ; 3 uses
  %i.bd = fcmp ugt float %.sroa.0.4.vec.extract.i60, 0.000000e+00
  br i1 %i.bd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = fneg <2 x float> %i.bb                  ; 2 uses
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = fcmp ogt <2 x float> %i.bb, %i.bf
  %i.bh = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = select <2 x i1> %i.bg, <2 x float> %i.bh, <2 x float> %i.bi
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bk = fneg float %.sroa.0.0.vec.extract.i58   ; 2 uses
  %i.bl = fcmp ogt float %.sroa.0.4.vec.extract.i60, %i.bk
  %.sroa.speculated.i65 = select i1 %i.bl, float %.sroa.0.4.vec.extract.i60, float %i.bk ; 2 uses
  %i.bm = fcmp ogt float %.sroa.speculated.i65, 0.000000e+00
  %.sroa.speculated.i2.i66 = select i1 %i.bm, float %.sroa.speculated.i65, float 0.000000e+00
  %.sroa.012.4.vec.insert18.i67 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated.i2.i66, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZN4pbrt3AbsENS_8IntervalE.exit57
  %.sroa.012.0.i59 = phi <2 x float> [ %.sroa.012.4.vec.insert18.i67, %bb.o ], [ %i.bj, %bb.n ], [ %i.bb, %_ZN4pbrt3AbsENS_8IntervalE.exit57 ] ; 3 uses
  %i.bn = fneg <2 x float> %.sroa.012.0.i59       ; 2 uses
  %i.bo = shufflevector <2 x float> %.sroa.012.0.i59, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = fcmp ogt <2 x float> %.sroa.012.0.i59, %i.bo
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = select <2 x i1> %i.bp, <2 x float> %i.bq, <2 x float> %i.br ; 4 uses
  %i.bt = load i64, ptr %1, align 8, !tbaa !54
  %i.bu = mul i64 %i.bt, 6364136223846793005
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !53  ; 9 uses
  %i.bw = add i64 %i.bu, %i.bv                    ; 2 uses
  store i64 %i.bw, ptr %1, align 8, !tbaa !54
  %.sroa.0170.0.vec.extract176 = extractelement <2 x float> %.sroa.012.0.i37, i64 0 ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %.sroa.0170.0.vec.extract176, -inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt12MulRoundDownEff.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = fcmp oeq float %.sroa.0170.0.vec.extract176, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.bx, float -0.000000e+00, float %.sroa.0170.0.vec.extract176 ; 2 uses
  %i.by = bitcast float %spec.store.select.i.i.i to i32
  %i.bz = fcmp ogt float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.bz, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.by
  %i.ca = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt12MulRoundDownEff.exit.i

_ZN4pbrt12MulRoundDownEff.exit.i:                 ; preds = %bb.q, %bb.p
  %.09.i.i.i = phi float [ %i.ca, %bb.q ], [ -inf, %bb.p ] ; 4 uses
  %.sroa.0170.4.vec.extract183 = extractelement <2 x float> %.sroa.012.0.i37, i64 1 ; 3 uses
  %or.cond.i.i6.i = fcmp oeq float %.sroa.0170.4.vec.extract183, +inf
  br i1 %or.cond.i.i6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt12MulRoundDownEff.exit.i
  %i.cb = fcmp oeq float %.sroa.0170.4.vec.extract183, 0.000000e+00
  %spec.store.select.i.i7.i = select i1 %i.cb, float 0.000000e+00, float %.sroa.0170.4.vec.extract183 ; 2 uses
  %i.cc = bitcast float %spec.store.select.i.i7.i to i32
  %i.cd = fcmp ult float %spec.store.select.i.i7.i, 0.000000e+00
  %.0.v.i.i8.i = select i1 %i.cd, i32 -1, i32 1
  %.0.i.i9.i = add i32 %.0.v.i.i8.i, %i.cc
  %i.ce = bitcast i32 %.0.i.i9.i to float
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN4pbrt12MulRoundDownEff.exit.i
  %.010.i.i.i = phi float [ %i.ce, %bb.r ], [ +inf, %_ZN4pbrt12MulRoundDownEff.exit.i ] ; 4 uses
  %i.cf = fcmp olt float %.010.i.i.i, %.09.i.i.i
  %.sroa.speculated5.i.i72 = select i1 %i.cf, float %.010.i.i.i, float %.09.i.i.i ; 5 uses
  %i.cg = fcmp olt float %.09.i.i.i, %.010.i.i.i
  %.sroa.speculated.i.i73 = select i1 %i.cg, float %.010.i.i.i, float %.09.i.i.i ; 5 uses
  %.sroa.0170.0.vec.insert178 = insertelement <2 x float> poison, float %.sroa.speculated5.i.i72, i64 0
  %.sroa.0170.4.vec.insert185 = insertelement <2 x float> %.sroa.0170.0.vec.insert178, float %.sroa.speculated.i.i73, i64 1
  %.sroa.0154.0.vec.extract160 = extractelement <2 x float> %.sroa.012.0.i48, i64 0 ; 3 uses
  %or.cond.i.i.i88 = fcmp oeq float %.sroa.0154.0.vec.extract160, -inf
  br i1 %or.cond.i.i.i88, label %_ZN4pbrt12MulRoundDownEff.exit.i92, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = fcmp oeq float %.sroa.0154.0.vec.extract160, 0.000000e+00
  %spec.store.select.i.i.i89 = select i1 %i.ch, float -0.000000e+00, float %.sroa.0154.0.vec.extract160 ; 2 uses
  %i.ci = bitcast float %spec.store.select.i.i.i89 to i32
  %i.cj = fcmp ogt float %spec.store.select.i.i.i89, 0.000000e+00
  %.0.v.i.i.i90 = select i1 %i.cj, i32 -1, i32 1
  %.0.i.i.i91 = add i32 %.0.v.i.i.i90, %i.ci
  %i.ck = bitcast i32 %.0.i.i.i91 to float
  br label %_ZN4pbrt12MulRoundDownEff.exit.i92

_ZN4pbrt12MulRoundDownEff.exit.i92:               ; preds = %bb.t, %bb.s
  %.09.i.i.i93 = phi float [ %i.ck, %bb.t ], [ -inf, %bb.s ] ; 4 uses
  %.sroa.0154.4.vec.extract167 = extractelement <2 x float> %.sroa.012.0.i48, i64 1 ; 3 uses
  %or.cond.i.i6.i94 = fcmp oeq float %.sroa.0154.4.vec.extract167, +inf
  br i1 %or.cond.i.i6.i94, label %_ZN4pbrt8IntervalmLEf.exit102, label %bb.u

bb.u:                                             ; preds = %_ZN4pbrt12MulRoundDownEff.exit.i92
  %i.cl = fcmp oeq float %.sroa.0154.4.vec.extract167, 0.000000e+00
  %spec.store.select.i.i7.i95 = select i1 %i.cl, float 0.000000e+00, float %.sroa.0154.4.vec.extract167 ; 2 uses
  %i.cm = bitcast float %spec.store.select.i.i7.i95 to i32
  %i.cn = fcmp ult float %spec.store.select.i.i7.i95, 0.000000e+00
  %.0.v.i.i8.i96 = select i1 %i.cn, i32 -1, i32 1
  %.0.i.i9.i97 = add i32 %.0.v.i.i8.i96, %i.cm
  %i.co = bitcast i32 %.0.i.i9.i97 to float
  br label %_ZN4pbrt8IntervalmLEf.exit102

_ZN4pbrt8IntervalmLEf.exit102:                    ; preds = %_ZN4pbrt12MulRoundDownEff.exit.i92, %bb.u
  %.010.i.i.i99 = phi float [ %i.co, %bb.u ], [ +inf, %_ZN4pbrt12MulRoundDownEff.exit.i92 ] ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZN4pbrt8IntervalmLEf.exit102
  %i.cp = phi i64 [ %i.cr, %bb.v ], [ %i.bw, %_ZN4pbrt8IntervalmLEf.exit102 ] ; 4 uses
  %i.cq = mul i64 %i.cp, 6364136223846793005
  %i.cr = add i64 %i.cq, %i.bv                    ; 7 uses
  %i.cs = lshr i64 %i.cp, 45
  %i.ct = lshr i64 %i.cp, 27
  %i.cu = xor i64 %i.cs, %i.ct
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %.not.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i, label %bb.v, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i: ; preds = %bb.v
  %i.cw = fcmp olt float %.010.i.i.i99, %.09.i.i.i93
  %.sroa.speculated5.i.i100 = select i1 %i.cw, float %.010.i.i.i99, float %.09.i.i.i93 ; 7 uses
  %i.cx = fcmp olt float %.09.i.i.i93, %.010.i.i.i99
  %.sroa.speculated.i.i101 = select i1 %i.cx, float %.010.i.i.i99, float %.09.i.i.i93 ; 7 uses
  %.sroa.0186.0.vec.extract = extractelement <2 x float> %.sroa.012.0.i, i64 0 ; 4 uses
  %.sroa.0186.4.vec.extract = extractelement <2 x float> %.sroa.012.0.i, i64 1 ; 4 uses
  %i.cy = lshr i64 %i.cp, 59
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = call noundef i32 @llvm.fshr.i32(i32 %i.cv, i32 %i.cv, i32 %i.cz)
  %i.db = urem i32 %i.da, 3
  switch i32 %i.db, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.w:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

bb.x:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  %i.dc = mul i64 %i.cr, 6364136223846793005
  %i.dd = add i64 %i.dc, %i.bv                    ; 2 uses
  store i64 %i.dd, ptr %1, align 8, !tbaa !54
  %i.de = lshr i64 %i.cr, 45
  %i.df = lshr i64 %i.cr, 27
  %i.dg = xor i64 %i.de, %i.df
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = lshr i64 %i.cr, 59
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = call noundef i32 @llvm.fshr.i32(i32 %i.dh, i32 %i.dh, i32 %i.dj)
  %i.dl = uitofp i32 %i.dk to float
  %i.dm = fmul nnan float %i.dl, f0x2F800000      ; 2 uses
  %i.dn = fcmp olt float %i.dm, f0x3F7FFFFF
  %.sroa.speculated.i.i103 = select i1 %i.dn, float %i.dm, float f0x3F7FFFFF ; 2 uses
  %i.do = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i103
  %i.dp = fmul float %.sroa.0186.0.vec.extract, %i.do
  %i.dq = fmul float %.sroa.0186.4.vec.extract, %.sroa.speculated.i.i103
  %i.dr = fadd float %i.dq, %i.dp                 ; 2 uses
  %i.ds = fcmp ogt float %i.dr, %.sroa.0186.4.vec.extract
  %spec.select.i = select i1 %i.ds, float %.sroa.0186.4.vec.extract, float %i.dr ; 2 uses
  %i.dt = fcmp olt float %spec.select.i, %.sroa.0186.0.vec.extract
  %spec.select1.i = select i1 %i.dt, float %.sroa.0186.0.vec.extract, float %spec.select.i
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit

default.unreachable:                              ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i126, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i116, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i
  unreachable

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit:  ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i, %bb.w, %bb.x
  %.promoted.i.i104 = phi i64 [ %i.cr, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %i.dd, %bb.x ], [ %i.cr, %bb.w ]
  %.017.in.i = phi float [ %.sroa.0186.0.vec.extract, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i ], [ %spec.select1.i, %bb.x ], [ %.sroa.0186.4.vec.extract, %bb.w ]
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit
  %i.du = phi i64 [ %i.dw, %bb.y ], [ %.promoted.i.i104, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit ] ; 4 uses
  %i.dv = mul i64 %i.du, 6364136223846793005
  %i.dw = add i64 %i.dv, %i.bv                    ; 7 uses
  %i.dx = lshr i64 %i.du, 45
  %i.dy = lshr i64 %i.du, 27
  %i.dz = xor i64 %i.dx, %i.dy
  %i.ea = trunc i64 %i.dz to i32                  ; 3 uses
  %.not.i.i105 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i105, label %bb.y, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106: ; preds = %bb.y
  %.017.i = fpext float %.017.in.i to double
  %i.eb = lshr i64 %i.du, 59
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = call noundef i32 @llvm.fshr.i32(i32 %i.ea, i32 %i.ea, i32 %i.ec)
  %i.ee = urem i32 %i.ed, 3
  switch i32 %i.ee, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113

bb.aa:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106
  %i.ef = mul i64 %i.dw, 6364136223846793005
  %i.eg = add i64 %i.ef, %i.bv                    ; 2 uses
  store i64 %i.eg, ptr %1, align 8, !tbaa !54
  %i.eh = lshr i64 %i.dw, 45
  %i.ei = lshr i64 %i.dw, 27
  %i.ej = xor i64 %i.eh, %i.ei
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %i.el = lshr i64 %i.dw, 59
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = call noundef i32 @llvm.fshr.i32(i32 %i.ek, i32 %i.ek, i32 %i.em)
  %i.eo = uitofp i32 %i.en to float
  %i.ep = fmul nnan float %i.eo, f0x2F800000      ; 2 uses
  %i.eq = fcmp olt float %i.ep, f0x3F7FFFFF
  %.sroa.speculated.i.i107 = select i1 %i.eq, float %i.ep, float f0x3F7FFFFF ; 2 uses
  %i.er = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i107
  %i.es = fmul float %.sroa.speculated5.i.i72, %i.er
  %i.et = fmul float %.sroa.speculated.i.i73, %.sroa.speculated.i.i107
  %i.eu = fadd float %i.et, %i.es                 ; 2 uses
  %i.ev = fcmp ogt float %i.eu, %.sroa.speculated.i.i73
  %spec.select.i108 = select i1 %i.ev, float %.sroa.speculated.i.i73, float %i.eu ; 2 uses
  %i.ew = fcmp olt float %spec.select.i108, %.sroa.speculated5.i.i72
  %spec.select1.i109 = select i1 %i.ew, float %.sroa.speculated5.i.i72, float %spec.select.i108
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106, %bb.z, %bb.aa
  %.promoted.i.i114 = phi i64 [ %i.dw, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106 ], [ %i.eg, %bb.aa ], [ %i.dw, %bb.z ]
  %.017.in.i110 = phi float [ %.sroa.speculated5.i.i72, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i106 ], [ %spec.select1.i109, %bb.aa ], [ %.sroa.speculated.i.i73, %bb.z ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113
  %i.ex = phi i64 [ %i.ez, %bb.ab ], [ %.promoted.i.i114, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit113 ] ; 4 uses
  %i.ey = mul i64 %i.ex, 6364136223846793005
  %i.ez = add i64 %i.ey, %i.bv                    ; 7 uses
  %i.fa = lshr i64 %i.ex, 45
  %i.fb = lshr i64 %i.ex, 27
  %i.fc = xor i64 %i.fa, %i.fb
  %i.fd = trunc i64 %i.fc to i32                  ; 3 uses
  %.not.i.i115 = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i115, label %bb.ab, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i116

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i116: ; preds = %bb.ab
  %.017.i111 = fpext float %.017.in.i110 to double
  %i.fe = lshr i64 %i.ex, 59
  %i.ff = trunc nuw nsw i64 %i.fe to i32
  %i.fg = call noundef i32 @llvm.fshr.i32(i32 %i.fd, i32 %i.fd, i32 %i.ff)
  %i.fh = urem i32 %i.fg, 3
  switch i32 %i.fh, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit123
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i116
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit123

bb.ad:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i116
  %i.fi = mul i64 %i.ez, 6364136223846793005
  %i.fj = add i64 %i.fi, %i.bv                    ; 2 uses
  store i64 %i.fj, ptr %1, align 8, !tbaa !54
  %i.fk = lshr i64 %i.ez, 45
  %i.fl = lshr i64 %i.ez, 27
  %i.fm = xor i64 %i.fk, %i.fl
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  %i.fo = lshr i64 %i.ez, 59
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = call noundef i32 @llvm.fshr.i32(i32 %i.fn, i32 %i.fn, i32 %i.fp)
  %i.fr = uitofp i32 %i.fq to float
  %i.fs = fmul nnan float %i.fr, f0x2F800000      ; 2 uses
  %i.ft = fcmp olt float %i.fs, f0x3F7FFFFF
  %.sroa.speculated.i.i117 = select i1 %i.ft, float %i.fs, float f0x3F7FFFFF ; 2 uses
  %i.fu = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i117
  %i.fv = fmul float %.sroa.speculated5.i.i100, %i.fu
  %i.fw = fmul float %.sroa.speculated.i.i101, %.sroa.speculated.i.i117
  %i.fx = fadd float %i.fw, %i.fv                 ; 2 uses
  %i.fy = fcmp ogt float %i.fx, %.sroa.speculated.i.i101
  %spec.select.i118 = select i1 %i.fy, float %.sroa.speculated.i.i101, float %i.fx ; 2 uses
  %i.fz = fcmp olt float %spec.select.i118, %.sroa.speculated5.i.i100
  %spec.select1.i119 = select i1 %i.fz, float %.sroa.speculated5.i.i100, float %spec.select.i118
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit123

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit123: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i116, %bb.ac, %bb.ad
  %.promoted.i.i124 = phi i64 [ %i.ez, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i116 ], [ %i.fj, %bb.ad ], [ %i.ez, %bb.ac ]
  %.017.in.i120 = phi float [ %.sroa.speculated5.i.i100, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i116 ], [ %spec.select1.i119, %bb.ad ], [ %.sroa.speculated.i.i101, %bb.ac ]
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit123
  %i.ga = phi i64 [ %i.gc, %bb.ae ], [ %.promoted.i.i124, %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit123 ] ; 4 uses
  %i.gb = mul i64 %i.ga, 6364136223846793005
  %i.gc = add i64 %i.gb, %i.bv                    ; 5 uses
  %i.gd = lshr i64 %i.ga, 45
  %i.ge = lshr i64 %i.ga, 27
  %i.gf = xor i64 %i.gd, %i.ge
  %i.gg = trunc i64 %i.gf to i32                  ; 3 uses
  %.not.i.i125 = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i125, label %bb.ae, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i126

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i126: ; preds = %bb.ae
  %.017.i121 = fpext float %.017.in.i120 to double ; 2 uses
  %i.gh = lshr i64 %i.ga, 59
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = call noundef i32 @llvm.fshr.i32(i32 %i.gg, i32 %i.gg, i32 %i.gi)
  %i.gk = urem i32 %i.gj, 3
  %i.gl = extractelement <2 x float> %i.bs, i64 0 ; 4 uses
  switch i32 %i.gk, label %default.unreachable [
    i32 0, label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit133
    i32 1, label %bb.af
    i32 2, label %bb.ag
  ]

bb.af:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i126
  %i.gm = extractelement <2 x float> %i.bs, i64 1
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit133

bb.ag:                                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i126
  %i.gn = mul i64 %i.gc, 6364136223846793005
  %i.go = add i64 %i.gn, %i.bv
  store i64 %i.go, ptr %1, align 8, !tbaa !54
  %i.gp = lshr i64 %i.gc, 45
  %i.gq = lshr i64 %i.gc, 27
  %i.gr = xor i64 %i.gp, %i.gq
  %i.gs = trunc i64 %i.gr to i32                  ; 2 uses
  %i.gt = lshr i64 %i.gc, 59
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = call noundef i32 @llvm.fshr.i32(i32 %i.gs, i32 %i.gs, i32 %i.gu)
  %i.gw = uitofp i32 %i.gv to float
  %i.gx = fmul nnan float %i.gw, f0x2F800000      ; 2 uses
  %i.gy = fcmp olt float %i.gx, f0x3F7FFFFF
  %.sroa.speculated.i.i127 = select i1 %i.gy, float %i.gx, float f0x3F7FFFFF ; 2 uses
  %i.gz = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i127
  %i.ha = fmul float %i.gl, %i.gz
  %i.hb = extractelement <2 x float> %i.bs, i64 1 ; 3 uses
  %i.hc = fmul float %i.hb, %.sroa.speculated.i.i127
  %i.hd = fadd float %i.hc, %i.ha                 ; 2 uses
  %i.he = fcmp ogt float %i.hd, %i.hb
  %spec.select.i128 = select i1 %i.he, float %i.hb, float %i.hd ; 2 uses
  %i.hf = fcmp olt float %spec.select.i128, %i.gl
  %spec.select1.i129 = select i1 %i.hf, float %i.gl, float %spec.select.i128
  br label %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit133

_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit133: ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i126, %bb.af, %bb.ag
  %.017.in.i130 = phi float [ %i.gl, %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit.i126 ], [ %spec.select1.i129, %bb.ag ], [ %i.gm, %bb.af ]
  %.017.i131 = fpext float %.017.in.i130 to double ; 2 uses
  %i.hg = fneg float %.sroa.speculated.i.i101     ; 2 uses
  %i.hh = fneg float %.sroa.speculated5.i.i100    ; 2 uses
  %i.hi = fcmp ogt float %.sroa.speculated5.i.i100, %.sroa.speculated.i.i101
  %.sroa.speculated5.i.i.i = select i1 %i.hi, float %i.hh, float %i.hg
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %.sroa.speculated5.i.i.i, i64 0
  %i.hj = fcmp ogt float %.sroa.speculated.i.i101, %.sroa.speculated5.i.i100
  %.sroa.speculated.i.i.i = select i1 %i.hj, float %i.hh, float %i.hg
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %.sroa.speculated.i.i.i, i64 1
  %i.hk = call <2 x float> @_ZN4pbrt20DifferenceOfProductsENS_8IntervalES0_S0_S0_(<2 x float> %.sroa.012.0.i, <2 x float> %.sroa.0170.4.vec.insert185, <2 x float> %.sroa.0.4.vec.insert.i.i, <2 x float> %i.bs) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.hl = fmul double %.017.i121, %.017.i131      ; 2 uses
  %i.hm = call noundef double @llvm.fma.f64(double %.017.i, double %.017.i111, double %i.hl)
  %i.hn = fneg double %i.hl
  %i.ho = call noundef double @llvm.fma.f64(double %.017.i121, double %.017.i131, double %i.hn)
  %i.hp = fadd double %i.hm, %i.ho
  store double %i.hp, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.hk, i64 0
  store float %.sroa.0.0.vec.extract, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperGEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.291, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.hq = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ax, label %bb.ah

bb.ah:                                            ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.hs = load ptr, ptr %3, align 8, !tbaa !29
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = trunc nuw nsw i64 %indvars.iv to i32
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, i32 noundef %i.hu)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.ar ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.hw = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i136 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i136, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aj, %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.hy = phi ptr [ %i.hx, %bb.aj ], [ @.str.324, %_ZN7testing7MessagelsIiEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 915, ptr noundef %i.hy)
          to label %bb.ak unwind label %bb.as

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.hz = load ptr, ptr %3, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ia = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.ap

.noexc.i.i:                                       ; preds = %bb.am
  br i1 %i.ia, label %bb.an, label %_ZN7testing7MessageD2Ev.exit

bb.an:                                            ; preds = %.noexc.i.i
  %i.ib = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %_ZN7testing7MessageD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !31
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(128) %i.ib) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.ap:                                            ; preds = %bb.am
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.al, %.noexc.i.i, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ah
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ai
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ak
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.il, %bb.at ], [ %i.ik, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.au ], [ %i.ij, %bb.ar ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.aq
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.av ], [ %i.ii, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.bx

bb.ax:                                            ; preds = %_ZL10getPreciseRKN4pbrt8IntervalERNS_3RNGE.exit133, %_ZN7testing7MessageD2Ev.exit
  %i.im = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i137 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i137, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.in = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i138 unwind label %bb.bb

.noexc.i.i138:                                    ; preds = %bb.ay
  br i1 %i.in, label %bb.az, label %_ZN7testing15AssertionResultD2Ev.exit

bb.az:                                            ; preds = %.noexc.i.i138
  %i.io = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !26 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ba
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !32
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.bb:                                            ; preds = %bb.ay
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ax, %.noexc.i.i138, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.hk, i64 1
  store float %.sroa.0.4.vec.extract, ptr %i.c, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperLEIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.292, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ix = load i8, ptr %5, align 8, !tbaa !18, !range !19, !noundef !20
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.bs, label %bb.bc

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
end_hunk_11
begin_hunk_12_@_ZN32FloatInterval_SumOfProducts_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.jd = load ptr, ptr %i.f, align 8, !tbaa !21  ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i140, label %_ZNK7testing15AssertionResult15failure_messageEv.exit141, label %bb.be

bb.be:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit139
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit141

_ZNK7testing15AssertionResult15failure_messageEv.exit141: ; preds = %bb.be, %_ZN7testing7MessagelsIiEERS0_RKT_.exit139
  %i.jf = phi ptr [ %i.je, %bb.be ], [ @.str.324, %_ZN7testing7MessagelsIiEERS0_RKT_.exit139 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 916, ptr noundef %i.jf)
          to label %bb.bf unwind label %bb.bn

bb.bf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.jg = load ptr, ptr %6, align 8, !tbaa !29
  %.not.i.i.i142 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i142, label %_ZN7testing7MessageD2Ev.exit144, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i143 unwind label %bb.bk

.noexc.i.i143:                                    ; preds = %bb.bh
  br i1 %i.jh, label %bb.bi, label %_ZN7testing7MessageD2Ev.exit144

bb.bi:                                            ; preds = %.noexc.i.i143
  %i.ji = load ptr, ptr %6, align 8, !tbaa !29    ; 3 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %_ZN7testing7MessageD2Ev.exit144, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !31
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(128) %i.ji) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit144

bb.bk:                                            ; preds = %bb.bh
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #26
  unreachable

_ZN7testing7MessageD2Ev.exit144:                  ; preds = %bb.bg, %.noexc.i.i143, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bs

bb.bl:                                            ; preds = %bb.bc
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bm:                                            ; preds = %bb.bd
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bf
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn24 = phi { ptr, i32 } [ %i.js, %bb.bo ], [ %i.jr, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.bp ], [ %i.jq, %bb.bm ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.bq ], [ %i.jp, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.bx

bb.bs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit144
  %i.jt = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i145 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i145, label %_ZN7testing15AssertionResultD2Ev.exit150, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ju = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i146 unwind label %bb.bw

.noexc.i.i146:                                    ; preds = %bb.bt
  br i1 %i.ju, label %bb.bu, label %_ZN7testing15AssertionResultD2Ev.exit150

bb.bu:                                            ; preds = %.noexc.i.i146
  %i.jv = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZN7testing15AssertionResultD2Ev.exit150, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !26 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147: ; preds = %bb.bv
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !32
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i148: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit150

bb.bw:                                            ; preds = %bb.bt
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit150:         ; preds = %bb.bs, %.noexc.i.i146, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !155

bb.bx:                                            ; preds = %bb.br, %bb.aw
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.br ], [ %.pn.pn.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn24.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17Math_TwoProd_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit37
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit37
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit37 ] ; 3 uses
  %i.g = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -9089707755183418291       ; 2 uses
  %i.k = lshr i64 %i.j, 33
  %i.l = xor i64 %i.k, %i.j
  %i.m = shl nuw nsw i64 %indvars.iv, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 5 uses
  %i.o = add i64 %i.l, %i.n
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, %i.n                       ; 2 uses
  %i.r = mul i64 %i.q, 6364136223846793005
  %i.s = add i64 %i.r, %i.n                       ; 2 uses
  %i.t = mul i64 %i.s, 6364136223846793005
  %i.u = add i64 %i.t, %i.n                       ; 2 uses
  %i.v = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.w = insertelement <2 x i64> %i.v, i64 %i.q, i64 1 ; 3 uses
  %i.x = lshr <2 x i64> %i.w, splat (i64 45)
  %i.y = lshr <2 x i64> %i.w, splat (i64 27)
  %i.z = xor <2 x i64> %i.x, %i.y
  %i.aa = trunc <2 x i64> %i.z to <2 x i32>       ; 2 uses
  %i.ab = lshr <2 x i64> %i.w, splat (i64 59)
  %i.ac = trunc nuw nsw <2 x i64> %i.ab to <2 x i32>
  %i.ad = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.aa, <2 x i32> %i.aa, <2 x i32> %i.ac)
  %i.ae = uitofp <2 x i32> %i.ad to <2 x float>
  %i.af = fmul nnan <2 x float> %i.ae, splat (float f0x2F800000) ; 2 uses
  %i.ag = fcmp olt <2 x float> %i.af, splat (float f0x3F7FFFFF)
  %i.ah = mul i64 %i.u, 6364136223846793005
  %i.ai = add i64 %i.ah, %i.n
  %i.aj = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ak = fsub nnan <2 x float> splat (float 1.000000e+00), %i.aj
  %i.al = fmul nnan <2 x float> %i.ak, splat (float 1.000000e+01)
  %i.am = fmul nnan <2 x float> %i.aj, splat (float 1.000000e+01)
  %i.an = fsub <2 x float> %i.am, %i.al
  %i.ao = fpext <2 x float> %i.an to <2 x double> ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 1
  %i.aq = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ap) #25
  %i.ar = extractelement <2 x double> %i.ao, i64 0
  %i.as = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ar) #25
  %i.at = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = fptrunc <2 x double> %i.au to <2 x float> ; 2 uses
  %i.aw = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %i.ax = insertelement <2 x i64> %i.aw, i64 %i.ai, i64 1 ; 3 uses
  %i.ay = lshr <2 x i64> %i.ax, splat (i64 45)
  %i.az = lshr <2 x i64> %i.ax, splat (i64 27)
  %i.ba = xor <2 x i64> %i.ay, %i.az
  %i.bb = trunc <2 x i64> %i.ba to <2 x i32>      ; 2 uses
  %i.bc = lshr <2 x i64> %i.ax, splat (i64 59)
  %i.bd = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.be = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bb, <2 x i32> %i.bb, <2 x i32> %i.bd)
  %i.bf = uitofp <2 x i32> %i.be to <2 x float>
  %i.bg = fmul nnan <2 x float> %i.bf, splat (float f0x2F800000) ; 2 uses
  %i.bh = fcmp olt <2 x float> %i.bg, splat (float f0x3F7FFFFF)
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.bg, <2 x float> splat (float f0x3F7FFFFF)
  %i.bj = fcmp olt <2 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fneg <2 x float> %i.av
  %i.bl = select <2 x i1> %i.bj, <2 x float> %i.bk, <2 x float> %i.av ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.bn = extractelement <2 x float> %i.bl, i64 1 ; 2 uses
  %i.bo = fmul float %i.bm, %i.bn                 ; 4 uses
  %i.bp = fneg float %i.bo
  %i.bq = call noundef float @llvm.fma.f32(float %i.bm, float %i.bn, float %i.bp) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.br = fadd float %i.bo, %i.bq
  store float %i.br, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float %i.bo, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperEQIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.297, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bs = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.bw = phi ptr [ %i.bv, %bb.f ], [ @.str.324, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 932, ptr noundef %i.bw)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bx = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.by, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.bz = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(128) %i.bz) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %.noexc.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.o ], [ %i.ch, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.ap

bb.r:                                             ; preds = %bb.c, %_ZN7testing7MessageD2Ev.exit
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i25 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i25, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i26 unwind label %bb.v

.noexc.i.i26:                                     ; preds = %bb.s
  br i1 %i.ck, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %.noexc.i.i26
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !26 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !32
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.r, %.noexc.i.i26, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.cu = fpext float %i.bo to double
  %i.cv = fpext float %i.bq to double
  %i.cw = fadd double %i.cu, %i.cv
  store double %i.cw, ptr %i.c, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.cx = fpext <2 x float> %i.bl to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.cx
  %i.cy = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.cy, ptr %i.d, align 8, !tbaa !39
  call void @_ZN7testing8internal11CmpHelperEQIddEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.299, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cz = load i8, ptr %4, align 8, !tbaa !18, !range !19, !noundef !20
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !21  ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.db, null
  br i1 %.not.i.i27, label %_ZNK7testing15AssertionResult15failure_messageEv.exit28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit28

_ZNK7testing15AssertionResult15failure_messageEv.exit28: ; preds = %bb.y, %bb.x
  %i.dd = phi ptr [ %i.dc, %bb.y ], [ @.str.324, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 933, ptr noundef %i.dd)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit28
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.de = load ptr, ptr %5, align 8, !tbaa !29
  %.not.i.i.i29 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i29, label %_ZN7testing7MessageD2Ev.exit31, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i30 unwind label %bb.ae

.noexc.i.i30:                                     ; preds = %bb.ab
  br i1 %i.df, label %bb.ac, label %_ZN7testing7MessageD2Ev.exit31

bb.ac:                                            ; preds = %.noexc.i.i30
  %i.dg = load ptr, ptr %5, align 8, !tbaa !29    ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN7testing7MessageD2Ev.exit31, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit31

bb.ae:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #26
  unreachable

_ZN7testing7MessageD2Ev.exit31:                   ; preds = %bb.aa, %.noexc.i.i30, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.af:                                            ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit28
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn18 = phi { ptr, i32 } [ %i.dp, %bb.ah ], [ %i.do, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.ai ], [ %i.dn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit31
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i32 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit37, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dr = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.ao

.noexc.i.i33:                                     ; preds = %bb.al
  br i1 %i.dr, label %bb.am, label %_ZN7testing15AssertionResultD2Ev.exit37

bb.am:                                            ; preds = %.noexc.i.i33
  %i.ds = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZN7testing15AssertionResultD2Ev.exit37, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !26 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34: ; preds = %bb.an
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !32
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit37

bb.ao:                                            ; preds = %bb.al
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit37:          ; preds = %bb.ak, %.noexc.i.i33, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !156

bb.ap:                                            ; preds = %bb.aj, %bb.q
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.aj ], [ %.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn18.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16Math_TwoSum_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit37
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit37
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit37 ] ; 3 uses
  %i.g = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -9089707755183418291       ; 2 uses
  %i.k = lshr i64 %i.j, 33
  %i.l = xor i64 %i.k, %i.j
  %i.m = shl nuw nsw i64 %indvars.iv, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 5 uses
  %i.o = add i64 %i.l, %i.n
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, %i.n                       ; 2 uses
  %i.r = mul i64 %i.q, 6364136223846793005
  %i.s = add i64 %i.r, %i.n                       ; 2 uses
  %i.t = mul i64 %i.s, 6364136223846793005
  %i.u = add i64 %i.t, %i.n                       ; 2 uses
  %i.v = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.w = insertelement <2 x i64> %i.v, i64 %i.q, i64 1 ; 3 uses
  %i.x = lshr <2 x i64> %i.w, splat (i64 45)
  %i.y = lshr <2 x i64> %i.w, splat (i64 27)
  %i.z = xor <2 x i64> %i.x, %i.y
  %i.aa = trunc <2 x i64> %i.z to <2 x i32>       ; 2 uses
  %i.ab = lshr <2 x i64> %i.w, splat (i64 59)
  %i.ac = trunc nuw nsw <2 x i64> %i.ab to <2 x i32>
  %i.ad = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.aa, <2 x i32> %i.aa, <2 x i32> %i.ac)
  %i.ae = uitofp <2 x i32> %i.ad to <2 x float>
  %i.af = fmul nnan <2 x float> %i.ae, splat (float f0x2F800000) ; 2 uses
  %i.ag = fcmp olt <2 x float> %i.af, splat (float f0x3F7FFFFF)
  %i.ah = mul i64 %i.u, 6364136223846793005
  %i.ai = add i64 %i.ah, %i.n
  %i.aj = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ak = fsub nnan <2 x float> splat (float 1.000000e+00), %i.aj
  %i.al = fmul nnan <2 x float> %i.ak, splat (float 1.000000e+01)
  %i.am = fmul nnan <2 x float> %i.aj, splat (float 1.000000e+01)
  %i.an = fsub <2 x float> %i.am, %i.al
  %i.ao = fpext <2 x float> %i.an to <2 x double> ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 1
  %i.aq = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ap) #25
  %i.ar = extractelement <2 x double> %i.ao, i64 0
  %i.as = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ar) #25
  %i.at = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = fptrunc <2 x double> %i.au to <2 x float> ; 2 uses
  %i.aw = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %i.ax = insertelement <2 x i64> %i.aw, i64 %i.ai, i64 1 ; 3 uses
  %i.ay = lshr <2 x i64> %i.ax, splat (i64 45)
  %i.az = lshr <2 x i64> %i.ax, splat (i64 27)
  %i.ba = xor <2 x i64> %i.ay, %i.az
  %i.bb = trunc <2 x i64> %i.ba to <2 x i32>      ; 2 uses
  %i.bc = lshr <2 x i64> %i.ax, splat (i64 59)
  %i.bd = trunc nuw nsw <2 x i64> %i.bc to <2 x i32>
  %i.be = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bb, <2 x i32> %i.bb, <2 x i32> %i.bd)
  %i.bf = uitofp <2 x i32> %i.be to <2 x float>
  %i.bg = fmul nnan <2 x float> %i.bf, splat (float f0x2F800000) ; 2 uses
  %i.bh = fcmp olt <2 x float> %i.bg, splat (float f0x3F7FFFFF)
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.bg, <2 x float> splat (float f0x3F7FFFFF)
  %i.bj = fcmp olt <2 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fneg <2 x float> %i.av
  %i.bl = select <2 x i1> %i.bj, <2 x float> %i.bk, <2 x float> %i.av ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0 ; 3 uses
  %i.bn = extractelement <2 x float> %i.bl, i64 1 ; 2 uses
  %i.bo = fadd float %i.bm, %i.bn                 ; 5 uses
  %i.bp = fsub float %i.bo, %i.bm                 ; 2 uses
  %i.bq = fsub float %i.bo, %i.bp
  %i.br = fsub float %i.bm, %i.bq
  %i.bs = fsub float %i.bn, %i.bp
  %i.bt = fadd float %i.bs, %i.br                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bu = fadd float %i.bo, %i.bt
  store float %i.bu, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float %i.bo, ptr %i.b, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperEQIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.302, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bv = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.bz = phi ptr [ %i.by, %bb.f ], [ @.str.324, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 949, ptr noundef %i.bz)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ca = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.cb, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.cc = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %.noexc.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.o ], [ %i.ck, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.ap

bb.r:                                             ; preds = %bb.c, %_ZN7testing7MessageD2Ev.exit
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i.i.i25 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i25, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i26 unwind label %bb.v

.noexc.i.i26:                                     ; preds = %bb.s
  br i1 %i.cn, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %.noexc.i.i26
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !21  ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !32
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.r, %.noexc.i.i26, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.cx = fpext float %i.bo to double
  %i.cy = fpext float %i.bt to double
  %i.cz = fadd double %i.cx, %i.cy
  store double %i.cz, ptr %i.c, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.da = fpext <2 x float> %i.bl to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.da
  %i.db = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.db, ptr %i.d, align 8, !tbaa !39
  call void @_ZN7testing8internal11CmpHelperEQIddEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.303, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.dc = load i8, ptr %4, align 8, !tbaa !18, !range !19, !noundef !20
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
end_hunk_12
begin_hunk_13_@_ZN16Math_TwoSum_Test8TestBodyEv:bb.a
          to label %.noexc.i.i30 unwind label %bb.ae

.noexc.i.i30:                                     ; preds = %bb.ab
  br i1 %i.di, label %bb.ac, label %_ZN7testing7MessageD2Ev.exit31

bb.ac:                                            ; preds = %.noexc.i.i30
  %i.dj = load ptr, ptr %5, align 8, !tbaa !29    ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN7testing7MessageD2Ev.exit31, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !31
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit31

bb.ae:                                            ; preds = %bb.ab
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #26
  unreachable

_ZN7testing7MessageD2Ev.exit31:                   ; preds = %bb.aa, %.noexc.i.i30, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.af:                                            ; preds = %bb.w
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit28
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn18 = phi { ptr, i32 } [ %i.ds, %bb.ah ], [ %i.dr, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.ai ], [ %i.dq, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit31
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i32 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit37, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.ao

.noexc.i.i33:                                     ; preds = %bb.al
  br i1 %i.du, label %bb.am, label %_ZN7testing15AssertionResultD2Ev.exit37

bb.am:                                            ; preds = %.noexc.i.i33
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN7testing15AssertionResultD2Ev.exit37, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !26 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34: ; preds = %bb.an
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !32
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit37

bb.ao:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit37:          ; preds = %bb.ak, %.noexc.i.i33, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !157

bb.ap:                                            ; preds = %bb.aj, %bb.q
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.aj ], [ %.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn18.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22Math_InnerProduct_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.d = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.e = lshr i64 %i.d, 27
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -9089707755183418291       ; 2 uses
  %i.h = lshr i64 %i.g, 33
  %i.i = xor i64 %i.h, %i.g
  %i.j = shl nuw nsw i64 %indvars.iv, 1
  %i.k = or disjoint i64 %i.j, 1                  ; 17 uses
  %i.l = add i64 %i.i, %i.k
  %i.m = mul i64 %i.l, 6364136223846793005
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = mul i64 %i.n, 6364136223846793005
  %i.p = add i64 %i.o, %i.k                       ; 2 uses
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.k                       ; 2 uses
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = add i64 %i.s, %i.k                       ; 2 uses
  %i.u = mul i64 %i.t, 6364136223846793005
  %i.v = add i64 %i.u, %i.k                       ; 2 uses
  %i.w = mul i64 %i.v, 6364136223846793005
  %i.x = add i64 %i.w, %i.k                       ; 2 uses
  %i.y = mul i64 %i.x, 6364136223846793005
  %i.z = add i64 %i.y, %i.k                       ; 2 uses
  %i.aa = mul i64 %i.z, 6364136223846793005
  %i.ab = add i64 %i.aa, %i.k                     ; 2 uses
  %i.ac = mul i64 %i.ab, 6364136223846793005
  %i.ad = add i64 %i.ac, %i.k                     ; 2 uses
  %i.ae = mul i64 %i.ad, 6364136223846793005
  %i.af = add i64 %i.ae, %i.k                     ; 2 uses
  %i.ag = mul i64 %i.af, 6364136223846793005
  %i.ah = add i64 %i.ag, %i.k                     ; 2 uses
  %i.ai = mul i64 %i.ah, 6364136223846793005
  %i.aj = add i64 %i.ai, %i.k                     ; 2 uses
  %i.ak = mul i64 %i.aj, 6364136223846793005
  %i.al = add i64 %i.ak, %i.k                     ; 2 uses
  %i.am = mul i64 %i.al, 6364136223846793005
  %i.an = add i64 %i.am, %i.k                     ; 2 uses
  %i.ao = mul i64 %i.an, 6364136223846793005
  %i.ap = add i64 %i.ao, %i.k                     ; 2 uses
  %i.aq = insertelement <8 x i64> poison, i64 %i.ap, i64 0
  %i.ar = insertelement <8 x i64> %i.aq, i64 %i.al, i64 1
  %i.as = insertelement <8 x i64> %i.ar, i64 %i.ah, i64 2
  %i.at = insertelement <8 x i64> %i.as, i64 %i.ad, i64 3
  %i.au = insertelement <8 x i64> %i.at, i64 %i.z, i64 4
  %i.av = insertelement <8 x i64> %i.au, i64 %i.v, i64 5
  %i.aw = insertelement <8 x i64> %i.av, i64 %i.r, i64 6
  %i.ax = insertelement <8 x i64> %i.aw, i64 %i.n, i64 7 ; 3 uses
  %i.ay = lshr <8 x i64> %i.ax, splat (i64 45)
  %i.az = lshr <8 x i64> %i.ax, splat (i64 27)
  %i.ba = xor <8 x i64> %i.ay, %i.az
  %i.bb = trunc <8 x i64> %i.ba to <8 x i32>      ; 2 uses
  %i.bc = lshr <8 x i64> %i.ax, splat (i64 59)
  %i.bd = trunc nuw nsw <8 x i64> %i.bc to <8 x i32>
  %i.be = call <8 x i32> @llvm.fshr.v8i32(<8 x i32> %i.bb, <8 x i32> %i.bb, <8 x i32> %i.bd)
  %i.bf = uitofp <8 x i32> %i.be to <8 x float>
  %i.bg = fmul nnan <8 x float> %i.bf, splat (float f0x2F800000) ; 2 uses
  %i.bh = fcmp olt <8 x float> %i.bg, splat (float f0x3F7FFFFF)
  %i.bi = insertelement <4 x i64> poison, i64 %i.ab, i64 0
  %i.bj = insertelement <4 x i64> %i.bi, i64 %i.x, i64 1
  %i.bk = insertelement <4 x i64> %i.bj, i64 %i.t, i64 2
  %i.bl = insertelement <4 x i64> %i.bk, i64 %i.p, i64 3 ; 3 uses
  %i.bm = lshr <4 x i64> %i.bl, splat (i64 45)
  %i.bn = lshr <4 x i64> %i.bl, splat (i64 27)
  %i.bo = xor <4 x i64> %i.bm, %i.bn
  %i.bp = trunc <4 x i64> %i.bo to <4 x i32>      ; 2 uses
  %i.bq = lshr <4 x i64> %i.bl, splat (i64 59)
  %i.br = trunc nuw nsw <4 x i64> %i.bq to <4 x i32>
  %i.bs = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> %i.br)
  %i.bt = uitofp <4 x i32> %i.bs to <4 x float>
  %i.bu = fmul nnan <4 x float> %i.bt, splat (float f0x2F800000) ; 2 uses
  %i.bv = fcmp olt <4 x float> %i.bu, splat (float f0x3F7FFFFF)
  %i.bw = select <4 x i1> %i.bv, <4 x float> %i.bu, <4 x float> splat (float f0x3F7FFFFF)
  %i.bx = fcmp olt <4 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = mul i64 %i.ap, 6364136223846793005
  %i.bz = add i64 %i.by, %i.k
  %i.ca = select <8 x i1> %i.bh, <8 x float> %i.bg, <8 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.cb = fsub nnan <8 x float> splat (float 1.000000e+00), %i.ca
  %i.cc = fmul nnan <8 x float> %i.cb, splat (float 1.000000e+01)
  %i.cd = fmul nnan <8 x float> %i.ca, splat (float 1.000000e+01)
  %i.ce = fsub <8 x float> %i.cd, %i.cc
  %i.cf = fpext <8 x float> %i.ce to <8 x double> ; 8 uses
  %i.cg = extractelement <8 x double> %i.cf, i64 7
  %i.ch = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cg) #25
  %i.ci = extractelement <8 x double> %i.cf, i64 6
  %i.cj = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ci) #25
  %i.ck = extractelement <8 x double> %i.cf, i64 5
  %i.cl = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ck) #25
  %i.cm = extractelement <8 x double> %i.cf, i64 4
  %i.cn = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cm) #25
  %i.co = insertelement <4 x double> poison, double %i.cn, i64 0
  %i.cp = insertelement <4 x double> %i.co, double %i.cl, i64 1
  %i.cq = insertelement <4 x double> %i.cp, double %i.cj, i64 2
  %i.cr = insertelement <4 x double> %i.cq, double %i.ch, i64 3
  %i.cs = fptrunc <4 x double> %i.cr to <4 x float> ; 2 uses
  %i.ct = fneg <4 x float> %i.cs
  %i.cu = select <4 x i1> %i.bx, <4 x float> %i.ct, <4 x float> %i.cs ; 3 uses
  %i.cv = extractelement <8 x double> %i.cf, i64 3
  %i.cw = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cv) #25
  %i.cx = extractelement <8 x double> %i.cf, i64 2
  %i.cy = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cx) #25
  %i.cz = extractelement <8 x double> %i.cf, i64 1
  %i.da = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cz) #25
  %i.db = extractelement <8 x double> %i.cf, i64 0
  %i.dc = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.db) #25
  %i.dd = insertelement <4 x double> poison, double %i.dc, i64 0
  %i.de = insertelement <4 x double> %i.dd, double %i.da, i64 1
  %i.df = insertelement <4 x double> %i.de, double %i.cy, i64 2
  %i.dg = insertelement <4 x double> %i.df, double %i.cw, i64 3
  %i.dh = fptrunc <4 x double> %i.dg to <4 x float> ; 2 uses
  %i.di = insertelement <4 x i64> poison, i64 %i.bz, i64 0
  %i.dj = insertelement <4 x i64> %i.di, i64 %i.an, i64 1
  %i.dk = insertelement <4 x i64> %i.dj, i64 %i.aj, i64 2
  %i.dl = insertelement <4 x i64> %i.dk, i64 %i.af, i64 3 ; 3 uses
  %i.dm = lshr <4 x i64> %i.dl, splat (i64 45)
  %i.dn = lshr <4 x i64> %i.dl, splat (i64 27)
  %i.do = xor <4 x i64> %i.dm, %i.dn
  %i.dp = trunc <4 x i64> %i.do to <4 x i32>      ; 2 uses
  %i.dq = lshr <4 x i64> %i.dl, splat (i64 59)
  %i.dr = trunc nuw nsw <4 x i64> %i.dq to <4 x i32>
  %i.ds = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.dp, <4 x i32> %i.dp, <4 x i32> %i.dr)
  %i.dt = uitofp <4 x i32> %i.ds to <4 x float>
  %i.du = fmul nnan <4 x float> %i.dt, splat (float f0x2F800000) ; 2 uses
  %i.dv = fcmp olt <4 x float> %i.du, splat (float f0x3F7FFFFF)
  %i.dw = select <4 x i1> %i.dv, <4 x float> %i.du, <4 x float> splat (float f0x3F7FFFFF)
  %i.dx = fcmp olt <4 x float> %i.dw, splat (float 5.000000e-01)
  %i.dy = fneg <4 x float> %i.dh
  %i.dz = select <4 x i1> %i.dx, <4 x float> %i.dy, <4 x float> %i.dh ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ea = fmul <4 x float> %i.cu, %i.dz           ; 7 uses
  %i.eb = fneg <4 x float> %i.ea
  %i.ec = extractelement <4 x float> %i.ea, i64 0
  %i.ed = extractelement <4 x float> %i.ea, i64 1 ; 2 uses
  %i.ee = fadd float %i.ed, %i.ec                 ; 4 uses
  %i.ef = fsub float %i.ee, %i.ed                 ; 2 uses
  %i.eg = fsub float %i.ee, %i.ef
  %i.eh = extractelement <4 x float> %i.ea, i64 2 ; 2 uses
  %i.ei = fadd float %i.eh, %i.ee                 ; 4 uses
  %i.ej = fsub float %i.ei, %i.eh                 ; 2 uses
  %i.ek = fsub float %i.ei, %i.ej
  %i.el = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.em = insertelement <4 x float> %i.el, float %i.ee, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> %i.ea, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.eo = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.ep = insertelement <4 x float> %i.eo, float %i.ek, i64 1
  %i.eq = insertelement <4 x float> %i.ep, float %i.ef, i64 2
  %i.er = insertelement <4 x float> %i.eq, float %i.eg, i64 3
  %i.es = fsub <4 x float> %i.en, %i.er           ; 4 uses
  %shift = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.es, %shift
  %i.et = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.eu = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.cu, <4 x float> %i.dz, <4 x float> %i.eb) ; 4 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 0
  %i.ew = fadd float %i.ev, %i.et
  %i.ex = extractelement <4 x float> %i.eu, i64 1
  %i.ey = fadd float %i.ex, %i.ew
  %shift65 = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop66 = fadd <4 x float> %i.es, %shift65
  %i.ez = extractelement <4 x float> %foldExtExtBinop66, i64 0
  %i.fa = fadd float %i.ez, %i.ey
  %i.fb = extractelement <4 x float> %i.eu, i64 2
  %i.fc = fadd float %i.fb, %i.fa
  %i.fd = extractelement <4 x float> %i.ea, i64 3 ; 3 uses
  %i.fe = fadd float %i.fd, %i.ei                 ; 3 uses
  %i.ff = fsub float %i.fe, %i.fd                 ; 2 uses
  %i.fg = fsub float %i.fe, %i.ff
  %i.fh = fsub float %i.fd, %i.fg
  %i.fi = fsub float %i.ei, %i.ff
  %i.fj = fadd float %i.fi, %i.fh
  %i.fk = fadd float %i.fj, %i.fc
  %i.fl = extractelement <4 x float> %i.eu, i64 3
  %i.fm = fadd float %i.fl, %i.fk
  %i.fn = fadd float %i.fe, %i.fm
  store float %i.fn, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fo = fpext <4 x float> %i.cu to <4 x double>
  %i.fp = fpext <4 x float> %i.dz to <4 x double>
  %i.fq = fmul <4 x double> %i.fo, %i.fp          ; 4 uses
  %i.fr = shufflevector <4 x double> %i.fq, <4 x double> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.fs = shufflevector <4 x double> %i.fq, <4 x double> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %shift71 = fadd <4 x double> %i.fr, %i.fs
  %foldExtExtBinop72 = fadd <4 x double> %shift71, %i.fq
  %shift74 = shufflevector <4 x double> %foldExtExtBinop72, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop75 = fadd <4 x double> %shift74, %i.fq
  %i.ft = extractelement <4 x double> %foldExtExtBinop75, i64 0
  %i.fu = fptrunc double %i.ft to float
  store float %i.fu, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN7testing8internal11CmpHelperEQIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.307, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.fv = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.fz = phi ptr [ %i.fy, %bb.f ], [ @.str.324, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 971, ptr noundef %i.fz)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ga = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.gb, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.gc = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(128) %i.gc) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %.noexc.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.gl, %bb.o ], [ %i.gk, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.gj, %bb.m ]
end_hunk_13
