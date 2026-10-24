Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN35PiecewiseConstant1D_Continuous_Test8TestBodyEv:bb.a

_ZNK7testing15AssertionResult15failure_messageEv.exit221: ; preds = %bb.gv, %bb.gu
  %i.td = phi ptr [ %i.tc, %bb.gv ], [ @.str.360, %bb.gu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 235, ptr noundef %i.td)
          to label %bb.gw unwind label %bb.hd

bb.gw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.gx unwind label %bb.he

bb.gx:                                            ; preds = %bb.gw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  %i.te = load ptr, ptr %30, align 8, !tbaa !39
  %.not.i.i.i222 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.tf = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i223 unwind label %bb.hb

.noexc.i.i223:                                    ; preds = %bb.gy
  br i1 %i.tf, label %bb.gz, label %_ZN7testing7MessageD2Ev.exit224

bb.gz:                                            ; preds = %.noexc.i.i223
  %i.tg = load ptr, ptr %30, align 8, !tbaa !39   ; 3 uses
  %i.th = icmp eq ptr %i.tg, null
  br i1 %i.th, label %_ZN7testing7MessageD2Ev.exit224, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ti = load ptr, ptr %i.tg, align 8, !tbaa !41
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8
  call void %i.tk(ptr noundef nonnull align 8 dereferenceable(128) %i.tg) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit224

bb.hb:                                            ; preds = %bb.gy
  %i.tl = landingpad { ptr, i32 }
          catch ptr null
  %i.tm = extractvalue { ptr, i32 } %i.tl, 0
  call void @__clang_call_terminate(ptr %i.tm) #31
  unreachable

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %bb.gx, %.noexc.i.i223, %bb.gz, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %bb.hh

bb.hc:                                            ; preds = %bb.gt
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.he:                                            ; preds = %bb.gw
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #30
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.pn76 = phi { ptr, i32 } [ %i.tp, %bb.he ], [ %i.to, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #30
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.hc
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.hf ], [ %i.tn, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #30
  br label %bb.hq

bb.hh:                                            ; preds = %bb.gq, %_ZN7testing7MessageD2Ev.exit224
  %i.tq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !31
  %.not.i.i.i225 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i225, label %_ZN7testing15AssertionResultD2Ev.exit230, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ts = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i226 unwind label %bb.hl

.noexc.i.i226:                                    ; preds = %bb.hi
  br i1 %i.ts, label %bb.hj, label %_ZN7testing15AssertionResultD2Ev.exit230

bb.hj:                                            ; preds = %.noexc.i.i226
  %i.tt = load ptr, ptr %i.tq, align 8, !tbaa !31 ; 4 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %_ZN7testing15AssertionResultD2Ev.exit230, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.tv = load ptr, ptr %i.tt, align 8, !tbaa !36 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 16 ; 2 uses
  %i.tx = icmp eq ptr %i.tv, %i.tw
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i227: ; preds = %bb.hk
  %i.ty = load i64, ptr %i.tw, align 8, !tbaa !42
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.tz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i228: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i227
  call void @_ZdlPvm(ptr noundef nonnull %i.tt, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit230

bb.hl:                                            ; preds = %bb.hi
  %i.ua = landingpad { ptr, i32 }
          catch ptr null
  %i.ub = extractvalue { ptr, i32 } %i.ua, 0
  call void @__clang_call_terminate(ptr %i.ub) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit230:         ; preds = %bb.hh, %.noexc.i.i226, %bb.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store i64 0, ptr %i.aq, align 8, !tbaa !48
  %i.uc = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, label %bb.hm

bb.hm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit230
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !50
  %i.ug = shl i64 %i.uf, 2
  %i.uh = load ptr, ptr %i.ud, align 8, !tbaa !51 ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !41
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8
  invoke void %i.uk(ptr noundef nonnull align 8 dereferenceable(8) %i.uh, ptr noundef nonnull %i.uc, i64 noundef %i.ug, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i unwind label %bb.hn, !inline_history !2

bb.hn:                                            ; preds = %bb.hm
  %i.ul = landingpad { ptr, i32 }
          catch ptr null
  %i.um = extractvalue { ptr, i32 } %i.ul, 0
  call void @__clang_call_terminate(ptr %i.um) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i: ; preds = %bb.hm, %_ZN7testing15AssertionResultD2Ev.exit230
  store i64 0, ptr %i.j, align 8, !tbaa !48
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit, label %bb.ho

bb.ho:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !50
  %i.ur = shl i64 %i.uq, 2
  %i.us = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !41
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  %i.uv = load ptr, ptr %i.uu, align 8
  invoke void %i.uv(ptr noundef nonnull align 8 dereferenceable(8) %i.us, ptr noundef nonnull %i.uo, i64 noundef %i.ur, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit unwind label %bb.hp, !inline_history !2

bb.hp:                                            ; preds = %bb.ho
  %i.uw = landingpad { ptr, i32 }
          catch ptr null
  %i.ux = extractvalue { ptr, i32 } %i.uw, 0
  call void @__clang_call_terminate(ptr %i.ux) #31
  unreachable

_ZN4pbrt19PiecewiseConstant1DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.hq:                                            ; preds = %bb.hg, %bb.gs
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.hg ], [ %i.sz, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.gr, %bb.fv, %bb.ez, %bb.ee, %bb.di, %bb.ck, %bb.bo, %bb.at
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn, %bb.hq ], [ %.pn72.pn.pn, %bb.gr ], [ %.pn68.pn.pn, %bb.fv ], [ %.pn64.pn.pn, %bb.ez ], [ %.pn60.pn.pn, %bb.ee ], [ %.pn56.pn.pn, %bb.di ], [ %.pn52.pn.pn, %bb.ck ], [ %.pn48.pn.pn, %bb.bo ], [ %.pn44.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.x
  %.pn76.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn, %bb.hr ], [ %.pn.pn.pn, %bb.x ]
  call void @_ZN4pbrt19PiecewiseConstant1DD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn76.pn.pn.pn.pn
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
  %9 = bitcast float %3 to i32                    ; 2 uses
  %10 = bitcast float %4 to i32                   ; 3 uses
  %11 = sub i32 0, %9
  %12 = tail call float @llvm.fabs.f32(float %3)
  %13 = fneg float %12
  %14 = bitcast float %13 to i32
  %.not3.i.i.i = icmp slt i32 %9, 0
  %.0.i.i.i = select i1 %.not3.i.i.i, i32 %11, i32 %14
  %.neg.i = sub nuw i32 -2147483648, %10
  %.not3.i9.i.i = icmp slt i32 %10, 0
  %.0.i10.i.neg4.i = select i1 %.not3.i9.i.i, i32 %10, i32 %.neg.i
  %15 = add i32 %.0.i.i.i, 4
  %16 = add i32 %15, %.0.i10.i.neg4.i
  %i.a = icmp ult i32 %16, 9
  br i1 %i.a, label %bb.b, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread

bb.b:                                             ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.p

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !148
  %i.h = fpext float %3 to double
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.h)
          to label %_ZNSolsEf.exit unwind label %bb.g ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSolsEf.exit
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 8, ptr %i.o, align 8, !tbaa !148
  %i.p = fpext float %4 to double
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.p)
          to label %_ZNSolsEf.exit14 unwind label %bb.i ; 0 uses

_ZNSolsEf.exit14:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSolsEf.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %8, align 8, !tbaa !36     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !42
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.w = load ptr, ptr %7, align 8, !tbaa !36     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !42
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !41
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24    ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %6, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !41
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !42
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #30
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !41
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24    ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %6, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  store ptr %i.ab, ptr %5, align 8, !tbaa !41
  %i.aw = load i64, ptr %i.ad, align 8
  %i.ax = getelementptr inbounds i8, ptr %5, i64 %i.aw
  store ptr %i.ac, ptr %i.ax, align 8, !tbaa !41
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !42
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ay, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #30
  store ptr %i.ap, ptr %5, align 8, !tbaa !41
  %i.bg = load i64, ptr %i.ar, align 8
  %i.bh = getelementptr inbounds i8, ptr %5, i64 %i.bg
  store ptr %i.aq, ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bj) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
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
  %i.bq = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !42
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bp, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bv = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !42
end_hunk_0
