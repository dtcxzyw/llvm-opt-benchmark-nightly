Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image_test?download=true
inline.NumInlined: 4995
inline.NumDeleted: 987
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 97
begin_hunk_0_@_ZN7testing8internal11CmpHelperLEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.s = load ptr, ptr %6, align 8, !tbaa !35     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.z = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.z, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !48  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
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
  %i.ao = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.an, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.al, %bb.s ] ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !32
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #26
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
define dso_local void @_ZN17Image_Wrap2D_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i:
  %1 = alloca %"class.pstd::vector.4", align 8    ; 9 uses
  %2 = alloca %"class.pbrt::Image", align 8       ; 27 uses
  %3 = alloca %"class.pstd::vector.4", align 8    ; 8 uses
  %4 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca float, align 4                    ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca float, align 4                    ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 8 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca float, align 4                    ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca float, align 4                    ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 8 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca double, align 8                   ; 5 uses
  %i.r = alloca float, align 4                    ; 5 uses
  %30 = alloca %"class.testing::Message", align 8 ; 8 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.s = alloca double, align 8                   ; 5 uses
  %i.t = alloca float, align 4                    ; 5 uses
  %33 = alloca %"class.testing::Message", align 8 ; 8 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca float, align 4                    ; 5 uses
  %36 = alloca %"class.testing::Message", align 8 ; 8 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.w = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64
  store i64 %i.x, ptr %1, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 36, i64 noundef 4), !inline_history !12 ; 14 uses
  %38 = ptrtoaddr ptr %i.ae to i64
  store i64 9, ptr %i.z, align 8, !tbaa !67
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ae, ptr noundef nonnull align 4 dereferenceable(36) @constinit, i64 36, i1 false)
  store i64 9, ptr %i.aa, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.af = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %3, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef 36, i64 noundef 4)
          to label %.noexc unwind label %bb.f, !inline_history !7 ; 24 uses

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %39 = ptrtoaddr ptr %i.an to i64                ; 2 uses
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !64 ; 11 uses
  %.pre.i.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 14 uses
  %.not13.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.pre.i.pre.i400 = ptrtoaddr ptr %.pre.i.pre.i to i64
  %min.iters.check = icmp ult i64 %.pre.i, 4
  %i.ao = sub i64 %.pre.i.pre.i400, %39
  %diff.check = icmp ugt i64 %i.ao, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i96.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check401 = icmp ult i64 %.pre.i, 32
  br i1 %min.iters.check401, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %.pre.i, 28
  %n.vec = and i64 %.pre.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %wide.load = load <8 x float>, ptr %i.ar, align 4, !tbaa !77
  %wide.load402 = load <8 x float>, ptr %i.as, align 4, !tbaa !77
  %wide.load403 = load <8 x float>, ptr %i.at, align 4, !tbaa !77
  %wide.load404 = load <8 x float>, ptr %i.au, align 4, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store <8 x float> %wide.load, ptr %i.aq, align 4, !tbaa !77
  store <8 x float> %wide.load402, ptr %i.av, align 4, !tbaa !77
  store <8 x float> %wide.load403, ptr %i.aw, align 4, !tbaa !77
  store <8 x float> %wide.load404, ptr %i.ax, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !486

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i96.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec405 = and i64 %.pre.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index406 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next408, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index406
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index406
  %wide.load407 = load <4 x float>, ptr %i.ba, align 4, !tbaa !77
  store <4 x float> %wide.load407, ptr %i.az, align 4, !tbaa !77
  %index.next408 = add nuw i64 %index406, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next408, %n.vec405
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !487

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n409 = icmp eq i64 %.pre.i, %n.vec405
  br i1 %cmp.n409, label %._crit_edge.thread.i.i, label %.lr.ph.i.i96.preheader

.lr.ph.i.i96.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec405, %vec.epilog.middle.block ] ; 4 uses
  %i.bc = sub i64 %.pre.i, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.bc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i96.prol.loopexit, label %.lr.ph.i.i96.prol

.lr.ph.i.i96.prol:                                ; preds = %.lr.ph.i.i96.preheader, %.lr.ph.i.i96.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i96.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i96.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i96.prol ], [ 0, %.lr.ph.i.i96.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.i.prol
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.i.i.prol
  %i.bf = load float, ptr %i.be, align 4, !tbaa !77
  store float %i.bf, ptr %i.bd, align 4, !tbaa !77
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i96.prol.loopexit, label %.lr.ph.i.i96.prol, !llvm.loop !488

.lr.ph.i.i96.prol.loopexit:                       ; preds = %.lr.ph.i.i96.prol, %.lr.ph.i.i96.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i96.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i96.prol ]
  %i.bg = sub i64 %indvars.iv.i.i.ph, %.pre.i
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %._crit_edge.thread.i.i, label %.lr.ph.i.i96

._crit_edge.i.i:                                  ; preds = %.noexc
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.pre.i, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i96.prol.loopexit, %.lr.ph.i.i96, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.bi = load i64, ptr %i.ai, align 8, !tbaa !67
  %i.bj = shl i64 %i.bi, 2
  %i.bk = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull %.pre.i.pre.i, i64 noundef %i.bj, i64 noundef 4)
          to label %.lr.ph.i unwind label %bb.f, !inline_history !7

.lr.ph.i.i96:                                     ; preds = %.lr.ph.i.i96.prol.loopexit, %.lr.ph.i.i96
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i96 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i96.prol.loopexit ] ; 10 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.i.i
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !77
  store float %i.bq, ptr %i.bo, align 4, !tbaa !77
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !77
  store float %i.bt, ptr %i.br, align 4, !tbaa !77
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.1
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !77
  store float %i.bw, ptr %i.bu, align 4, !tbaa !77
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.2
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.2
  %i.bz = load float, ptr %i.by, align 4, !tbaa !77
  store float %i.bz, ptr %i.bx, align 4, !tbaa !77
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.3
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.3
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !77
  store float %i.cc, ptr %i.ca, align 4, !tbaa !77
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !77
  store float %i.cf, ptr %i.cd, align 4, !tbaa !77
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.5
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.5
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !77
  store float %i.ci, ptr %i.cg, align 4, !tbaa !77
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.6
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %indvars.iv.next.i.i.6
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !77
  store float %i.cl, ptr %i.cj, align 4, !tbaa !77
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %.pre.i
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i96, !llvm.loop !489

.lr.ph.i:                                         ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  store i64 9, ptr %i.ai, align 8, !tbaa !67
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !66
  %40 = sub i64 %38, %39
  %diff.check413 = icmp ugt i64 %40, -32
  br i1 %diff.check413, label %.lr.ph.i.a, label %vector.body415

vector.body415:                                   ; preds = %.lr.ph.i
  %unmaskedload = load <8 x float>, ptr %i.ae, align 4, !tbaa !77
  store <8 x float> %unmaskedload, ptr %i.an, align 4, !tbaa !77
  %41 = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %42 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %wide.masked.load.1 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %42, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !77
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %wide.masked.load.1, ptr align 4 %41, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>), !tbaa !77
  br label %._crit_edge.i.i98

.lr.ph.i.a:                                       ; preds = %.lr.ph.i
  %i.cm = load float, ptr %i.ae, align 4, !tbaa !77
  store float %i.cm, ptr %i.an, align 4, !tbaa !77
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !77
  store float %i.cp, ptr %i.cn, align 4, !tbaa !77
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !77
  store float %i.cs, ptr %i.cq, align 4, !tbaa !77
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !77
  store float %i.cv, ptr %i.ct, align 4, !tbaa !77
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !77
  store float %i.cy, ptr %i.cw, align 4, !tbaa !77
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.da = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.db = load float, ptr %i.da, align 4, !tbaa !77
  store float %i.db, ptr %i.cz, align 4, !tbaa !77
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.de = load float, ptr %i.dd, align 4, !tbaa !77
  store float %i.de, ptr %i.dc, align 4, !tbaa !77
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !77
  store float %i.dh, ptr %i.df, align 4, !tbaa !77
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !77
  store float %i.dk, ptr %i.di, align 4, !tbaa !77
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %vector.body415, %.lr.ph.i.a
  store i64 9, ptr %i.aj, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %43, ptr %4, align 8, !tbaa !31
  store i8 89, ptr %43, align 8, !tbaa !32
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %44, align 8, !tbaa !34
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %45, align 1, !tbaa !32
  invoke void @_ZN4pbrt5ImageC1EN4pstd6vectorIfNS1_3pmr21polymorphic_allocatorIfEEEENS_6Point2IiEENS1_4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, i64 12884901891, ptr nonnull %4, i64 1)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i98
  %i.dl = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !32
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  store i64 0, ptr %i.aj, align 8, !tbaa !64
  %i.dq = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dr = load i64, ptr %i.ai, align 8, !tbaa !67
  %i.ds = shl i64 %i.dr, 2
  %i.dt = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !53
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull %i.dq, i64 noundef %i.ds, i64 noundef 4)
          to label %bb.d unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dz = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %2, i64 -4294967295, i32 noundef 0, i64 4294967297)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store float %i.dz, ptr %i.b, align 4, !tbaa !77
  invoke void @_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.206, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIifEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %bb.h

_ZN7testing8internal8EqHelperILb0EE7CompareIifEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ea = load i8, ptr %5, align 8, !tbaa !45, !range !46, !noundef !47
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.w, label %bb.i

bb.f:                                             ; preds = %._crit_edge.thread.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.g:                                             ; preds = %._crit_edge.i.i98
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.g
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  br label %bb.jb

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ad

bb.i:                                             ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIifEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !48 ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.el, null
  br i1 %.not.i.i104, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !35
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.en = phi ptr [ %i.em, %bb.k ], [ @.str.253, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 688, ptr noundef %i.en)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.eo = load ptr, ptr %6, align 8, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ep = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.q

.noexc.i.i:                                       ; preds = %bb.n
  br i1 %i.ep, label %bb.o, label %_ZN7testing7MessageD2Ev.exit

bb.o:                                             ; preds = %.noexc.i.i
  %i.eq = load ptr, ptr %6, align 8, !tbaa !51    ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %_ZN7testing7MessageD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !53
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #27
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.m, %.noexc.i.i, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.r:                                             ; preds = %bb.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn50 = phi { ptr, i32 } [ %i.ez, %bb.t ], [ %i.ey, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.u ], [ %i.ex, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.ad

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIifEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !48
  %.not.i.i.i105 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i105, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i106 unwind label %bb.aa

.noexc.i.i106:                                    ; preds = %bb.x
  br i1 %i.fc, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %.noexc.i.i106
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !48 ; 4 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !35 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !32
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 32) #26
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #27
  unreachable

bb.ab:                                            ; preds = %bb.w, %.noexc.i.i106, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.fm = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %2, i64 -4294967295, i32 noundef 0, i64 4294967296)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store float %i.fm, ptr %i.d, align 4, !tbaa !77
  invoke void @_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.207, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIifEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit109 unwind label %bb.ae

_ZN7testing8internal8EqHelperILb0EE7CompareIifEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit109: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.fn = load i8, ptr %8, align 8, !tbaa !45, !range !46, !noundef !47
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.at, label %bb.af

bb.ad:                                            ; preds = %bb.v, %bb.h
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %bb.v ], [ %i.ej, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ja

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ba

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIifEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.ao

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !48 ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i110, label %_ZNK7testing15AssertionResult15failure_messageEv.exit111, label %bb.ah
end_hunk_0
begin_hunk_1_@_ZN7testing8internal11CmpHelperEQIA2_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_image_test.cpp() #21 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !77
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !77
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !77
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !77
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  %i.c = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI17Image_Basics_TestEE, i64 16), ptr %i.d, align 8, !tbaa !53
  %i.e = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, ptr noundef %i.c, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.d)
  store ptr %i.e, ptr @_ZN17Image_Basics_Test10test_info_E, align 8, !tbaa !1102
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN17Image_Basics_Test10test_info_E) ; 0 uses
  %i.g = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI18Image_GetSetY_TestEE, i64 16), ptr %i.h, align 8, !tbaa !53
  %i.i = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, ptr noundef %i.g, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.h)
  store ptr %i.i, ptr @_ZN18Image_GetSetY_Test10test_info_E, align 8, !tbaa !1102
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN18Image_GetSetY_Test10test_info_E) ; 0 uses
  %i.k = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.l = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI20Image_GetSetRGB_TestEE, i64 16), ptr %i.l, align 8, !tbaa !53
  %i.m = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.44, ptr noundef null, ptr noundef null, ptr noundef %i.k, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.l)
  store ptr %i.m, ptr @_ZN20Image_GetSetRGB_Test10test_info_E, align 8, !tbaa !1102
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN20Image_GetSetRGB_Test10test_info_E) ; 0 uses
  %i.o = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI20Image_GetSetBGR_TestEE, i64 16), ptr %i.p, align 8, !tbaa !53
  %i.q = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, ptr noundef %i.o, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.p)
  store ptr %i.q, ptr @_ZN20Image_GetSetBGR_Test10test_info_E, align 8, !tbaa !1102
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN20Image_GetSetBGR_Test10test_info_E) ; 0 uses
  %i.s = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22Image_CopyRectOut_TestEE, i64 16), ptr %i.t, align 8, !tbaa !53
  %i.u = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null, ptr noundef %i.s, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.t)
  store ptr %i.u, ptr @_ZN22Image_CopyRectOut_Test10test_info_E, align 8, !tbaa !1102
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22Image_CopyRectOut_Test10test_info_E) ; 0 uses
  %i.w = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.x = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI21Image_CopyRectIn_TestEE, i64 16), ptr %i.x, align 8, !tbaa !53
  %i.y = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, ptr noundef %i.w, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.x)
  store ptr %i.y, ptr @_ZN21Image_CopyRectIn_Test10test_info_E, align 8, !tbaa !1102
  %i.z = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN21Image_CopyRectIn_Test10test_info_E) ; 0 uses
  %i.aa = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI16Image_PfmIO_TestEE, i64 16), ptr %i.ab, align 8, !tbaa !53
  %i.ac = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, ptr noundef %i.aa, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ab)
  store ptr %i.ac, ptr @_ZN16Image_PfmIO_Test10test_info_E, align 8, !tbaa !1102
  %i.ad = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16Image_PfmIO_Test10test_info_E) ; 0 uses
  %i.ae = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.af = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI16Image_ExrIO_TestEE, i64 16), ptr %i.af, align 8, !tbaa !53
  %i.ag = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.88, ptr noundef null, ptr noundef null, ptr noundef %i.ae, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.af)
  store ptr %i.ag, ptr @_ZN16Image_ExrIO_Test10test_info_E, align 8, !tbaa !1102
  %i.ah = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16Image_ExrIO_Test10test_info_E) ; 0 uses
  %i.ai = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.aj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI24Image_ExrNoMetadata_TestEE, i64 16), ptr %i.aj, align 8, !tbaa !53
  %i.ak = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.103, ptr noundef null, ptr noundef null, ptr noundef %i.ai, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.aj)
  store ptr %i.ak, ptr @_ZN24Image_ExrNoMetadata_Test10test_info_E, align 8, !tbaa !1102
  %i.al = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN24Image_ExrNoMetadata_Test10test_info_E) ; 0 uses
  %i.am = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.an = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22Image_ExrMetadata_TestEE, i64 16), ptr %i.an, align 8, !tbaa !53
  %i.ao = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.121, ptr noundef null, ptr noundef null, ptr noundef %i.am, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.an)
  store ptr %i.ao, ptr @_ZN22Image_ExrMetadata_Test10test_info_E, align 8, !tbaa !1102
  %i.ap = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22Image_ExrMetadata_Test10test_info_E) ; 0 uses
  %i.aq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ar = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI17Image_PngYIO_TestEE, i64 16), ptr %i.ar, align 8, !tbaa !53
  %i.as = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.156, ptr noundef null, ptr noundef null, ptr noundef %i.aq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ar)
  store ptr %i.as, ptr @_ZN17Image_PngYIO_Test10test_info_E, align 8, !tbaa !1102
  %i.at = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN17Image_PngYIO_Test10test_info_E) ; 0 uses
  %i.au = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.av = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI19Image_PngRgbIO_TestEE, i64 16), ptr %i.av, align 8, !tbaa !53
  %i.aw = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef null, ptr noundef %i.au, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.av)
  store ptr %i.aw, ptr @_ZN19Image_PngRgbIO_Test10test_info_E, align 8, !tbaa !1102
  %i.ax = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN19Image_PngRgbIO_Test10test_info_E) ; 0 uses
  %i.ay = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.az = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI21Image_PngEmojiIO_TestEE, i64 16), ptr %i.az, align 8, !tbaa !53
  %i.ba = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef null, ptr noundef %i.ay, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.az)
  store ptr %i.ba, ptr @_ZN21Image_PngEmojiIO_Test10test_info_E, align 8, !tbaa !1102
  %i.bb = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN21Image_PngEmojiIO_Test10test_info_E) ; 0 uses
  %i.bc = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI19Image_QoiRgbIO_TestEE, i64 16), ptr %i.bd, align 8, !tbaa !53
  %i.be = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.177, ptr noundef null, ptr noundef null, ptr noundef %i.bc, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bd)
  store ptr %i.be, ptr @_ZN19Image_QoiRgbIO_Test10test_info_E, align 8, !tbaa !1102
  %i.bf = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN19Image_QoiRgbIO_Test10test_info_E) ; 0 uses
  %i.bg = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bh = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI20Image_QoiRgbaIO_TestEE, i64 16), ptr %i.bh, align 8, !tbaa !53
  %i.bi = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.182, ptr noundef null, ptr noundef null, ptr noundef %i.bg, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bh)
  store ptr %i.bi, ptr @_ZN20Image_QoiRgbaIO_Test10test_info_E, align 8, !tbaa !1102
  %i.bj = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN20Image_QoiRgbaIO_Test10test_info_E) ; 0 uses
  %i.bk = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bl = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI23Image_SampleSimple_TestEE, i64 16), ptr %i.bl, align 8, !tbaa !53
  %i.bm = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.189, ptr noundef null, ptr noundef null, ptr noundef %i.bk, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bl)
  store ptr %i.bm, ptr @_ZN23Image_SampleSimple_Test10test_info_E, align 8, !tbaa !1102
  %i.bn = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN23Image_SampleSimple_Test10test_info_E) ; 0 uses
  %i.bo = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bp = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI23Image_SampleLinear_TestEE, i64 16), ptr %i.bp, align 8, !tbaa !53
  %i.bq = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.194, ptr noundef null, ptr noundef null, ptr noundef %i.bo, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bp)
  store ptr %i.bq, ptr @_ZN23Image_SampleLinear_Test10test_info_E, align 8, !tbaa !1102
  %i.br = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN23Image_SampleLinear_Test10test_info_E) ; 0 uses
  %i.bs = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bt = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI23Image_SampleSinCos_TestEE, i64 16), ptr %i.bt, align 8, !tbaa !53
  %i.bu = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.200, ptr noundef null, ptr noundef null, ptr noundef %i.bs, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bt)
  store ptr %i.bu, ptr @_ZN23Image_SampleSinCos_Test10test_info_E, align 8, !tbaa !1102
  %i.bv = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN23Image_SampleSinCos_Test10test_info_E) ; 0 uses
  %i.bw = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bx = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI17Image_Wrap2D_TestEE, i64 16), ptr %i.bx, align 8, !tbaa !53
  %i.by = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.205, ptr noundef null, ptr noundef null, ptr noundef %i.bw, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bx)
  store ptr %i.by, ptr @_ZN17Image_Wrap2D_Test10test_info_E, align 8, !tbaa !1102
  %i.bz = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN17Image_Wrap2D_Test10test_info_E) ; 0 uses
  %i.ca = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cb = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI17Image_Select_TestEE, i64 16), ptr %i.cb, align 8, !tbaa !53
  %i.cc = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.218, ptr noundef null, ptr noundef null, ptr noundef %i.ca, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cb)
  store ptr %i.cc, ptr @_ZN17Image_Select_Test10test_info_E, align 8, !tbaa !1102
  %i.cd = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN17Image_Select_Test10test_info_E) ; 0 uses
  %i.ce = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cf = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25ImageIO_RoundTripEXR_TestEE, i64 16), ptr %i.cf, align 8, !tbaa !53
  %i.cg = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.242, ptr noundef null, ptr noundef null, ptr noundef %i.ce, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cf)
  store ptr %i.cg, ptr @_ZN25ImageIO_RoundTripEXR_Test10test_info_E, align 8, !tbaa !1102
  %i.ch = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25ImageIO_RoundTripEXR_Test10test_info_E) ; 0 uses
  %i.ci = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25ImageIO_RoundTripPFM_TestEE, i64 16), ptr %i.cj, align 8, !tbaa !53
  %i.ck = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.245, ptr noundef null, ptr noundef null, ptr noundef %i.ci, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cj)
  store ptr %i.ck, ptr @_ZN25ImageIO_RoundTripPFM_Test10test_info_E, align 8, !tbaa !1102
  %i.cl = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25ImageIO_RoundTripPFM_Test10test_info_E) ; 0 uses
  %i.cm = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cn = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25ImageIO_RoundTripPNG_TestEE, i64 16), ptr %i.cn, align 8, !tbaa !53
  %i.co = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.248, ptr noundef null, ptr noundef null, ptr noundef %i.cm, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cn)
  store ptr %i.co, ptr @_ZN25ImageIO_RoundTripPNG_Test10test_info_E, align 8, !tbaa !1102
  %i.cp = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25ImageIO_RoundTripPNG_Test10test_info_E) ; 0 uses
  %i.cq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cr = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25ImageIO_RoundTripQOI_TestEE, i64 16), ptr %i.cr, align 8, !tbaa !53
  %i.cs = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.251, ptr noundef null, ptr noundef null, ptr noundef %i.cq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cr)
  store ptr %i.cs, ptr @_ZN25ImageIO_RoundTripQOI_Test10test_info_E, align 8, !tbaa !1102
  %i.ct = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25ImageIO_RoundTripQOI_Test10test_info_E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !73}
!6 = distinct !{!6, !73}
!7 = distinct !{null}
!8 = distinct !{!8, !73}
!9 = distinct !{null}
!10 = distinct !{!10, !73}
!11 = distinct !{!11, !73}
!12 = distinct !{null, null, null, null, null, null}
!13 = distinct !{null}
!14 = distinct !{!14, i1 true, !"_ZNK4pbrt6Tuple2INS_6Point2EiE8ToStringB5cxx11Ev"}
!15 = distinct !{!15, !14, !"_ZNK4pbrt6Tuple2INS_6Point2EiE8ToStringB5cxx11Ev: argument 0"}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"long", !21, i64 0}
!26 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_19LinearColorEncodingENS_17sRGBColorEncodingENS_18GammaColorEncodingEEEE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"any pointer", !21, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!21, !21, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !25, i64 8, !21, i64 16}
!34 = !{!33, !25, i64 8}
!35 = !{!33, !29, i64 0}
!36 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !28, i64 0}
!37 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !36, i64 0}
!38 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0}
!39 = !{!"_ZTSN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEE", !37, i64 0, !38, i64 8, !25, i64 16, !25, i64 24}
!40 = !{!39, !25, i64 24}
!41 = !{!22, !22, i64 0}
!42 = !{!"bool", !21, i64 0}
!43 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !38, i64 0}
!44 = !{!"_ZTSN7testing15AssertionResultE", !42, i64 0, !43, i64 8}
!45 = !{!44, !42, i64 0}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!43, !38, i64 0}
!49 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !28, i64 0}
!50 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !49, i64 0}
!51 = !{!50, !49, i64 0}
!52 = !{!"vtable pointer", !20, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIhEE", !36, i64 0}
!55 = !{!"_ZTSN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEE", !54, i64 0, !29, i64 8, !25, i64 16, !25, i64 24}
!56 = !{!55, !25, i64 24}
!57 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEEE", !36, i64 0}
!58 = !{!"p1 _ZTSN4pbrt4HalfE", !28, i64 0}
!59 = !{!"_ZTSN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEE", !57, i64 0, !58, i64 8, !25, i64 16, !25, i64 24}
!60 = !{!59, !25, i64 24}
!61 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIfEE", !36, i64 0}
!62 = !{!"p1 float", !28, i64 0}
!63 = !{!"_ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE", !61, i64 0, !62, i64 8, !25, i64 16, !25, i64 24}
!64 = !{!63, !25, i64 24}
!65 = !{!25, !25, i64 0}
!66 = !{!63, !62, i64 8}
!67 = !{!63, !25, i64 16}
!68 = !{!61, !36, i64 0}
!69 = !{!59, !58, i64 8}
!70 = !{!55, !29, i64 8}
!71 = !{!55, !25, i64 16}
!72 = !{!54, !36, i64 0}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"_ZTSN4pbrt11PixelFormatE", !21, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"float", !21, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIiEE", !36, i64 0}
!79 = !{!"p1 int", !28, i64 0}
!80 = !{!"_ZTSN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEEE", !78, i64 0, !79, i64 8, !21, i64 16, !25, i64 32, !25, i64 40}
!81 = !{!80, !25, i64 40}
!82 = !{!80, !79, i64 8}
!83 = !{!80, !25, i64 32}
!84 = !{!78, !36, i64 0}
!85 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EiEE", !22, i64 0, !22, i64 4}
!86 = !{!"_ZTSN4pbrt6Point2IiEE", !85, i64 0}
!87 = !{!"_ZTSN4pbrt13ColorEncodingE", !26, i64 0}
!88 = !{!"_ZTSN4pbrt5ImageE", !74, i64 0, !86, i64 4, !39, i64 16, !87, i64 48, !55, i64 56, !59, i64 88, !63, i64 120}
!89 = !{!88, !74, i64 0}
!90 = !{!"short", !21, i64 0}
!91 = !{!"_ZTSN4pbrt4HalfE", !90, i64 0}
!92 = !{!91, !90, i64 0}
!93 = !{!"_ZTSN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEEE", !61, i64 0, !62, i64 8, !21, i64 16, !25, i64 32, !25, i64 40}
!94 = !{!93, !25, i64 40}
!95 = !{!93, !62, i64 8}
!96 = !{!62, !62, i64 0}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
!99 = !{!"branch_weights", i32 4, i32 28}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!93, !25, i64 32}
!102 = !{!36, !36, i64 0}
!103 = !{!85, !22, i64 0}
!104 = !{!29, !29, i64 0}
!105 = !{!85, !22, i64 4}
!106 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!107 = !{!106, !38, i64 0}
!108 = !{!106, !38, i64 8}
!109 = !{!106, !38, i64 16}
!110 = !{!"_ZTSSt14_Rb_tree_color", !21, i64 0}
!111 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !28, i64 0}
!112 = !{!"_ZTSSt18_Rb_tree_node_base", !110, i64 0, !111, i64 8, !111, i64 16, !111, i64 24}
!113 = !{!"_ZTSSt15_Rb_tree_header", !112, i64 0, !25, i64 32}
!114 = !{!113, !111, i64 16}
!115 = !{!113, !111, i64 24}
!116 = !{!113, !25, i64 32}
!117 = !{!113, !111, i64 8}
!118 = !{!"p1 _ZTSN4pbrt13RGBColorSpaceE", !28, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"_ZTSN4pstd8optionalIfEE", !21, i64 0, !42, i64 4}
!121 = !{!120, !42, i64 4}
!122 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEE", !21, i64 0, !42, i64 64}
!123 = !{!122, !42, i64 64}
!124 = !{!"_ZTSN4pstd8optionalIN4pbrt7Bounds2IiEEEE", !21, i64 0, !42, i64 16}
!125 = !{!124, !42, i64 16}
!126 = !{!"_ZTSN4pstd8optionalIN4pbrt6Point2IiEEEE", !21, i64 0, !42, i64 8}
!127 = !{!126, !42, i64 8}
!128 = !{!"_ZTSN4pstd8optionalIiEE", !21, i64 0, !42, i64 4}
!129 = !{!128, !42, i64 4}
!130 = !{!113, !110, i64 0}
!131 = !{!"_ZTSN4pstd8optionalIPKN4pbrt13RGBColorSpaceEEE", !21, i64 0, !42, i64 8}
!132 = !{!131, !42, i64 8}
!133 = !{!111, !111, i64 0}
!134 = !{!38, !38, i64 0}
!135 = !{!"_ZTSSt13_Ios_Fmtflags", !21, i64 0}
!136 = !{!"_ZTSSt12_Ios_Iostate", !21, i64 0}
!137 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !28, i64 0}
!138 = !{!"_ZTSNSt8ios_base6_WordsE", !28, i64 0, !25, i64 8}
!139 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !28, i64 0}
!140 = !{!"p1 _ZTSNSt6locale5_ImplE", !28, i64 0}
!141 = !{!"_ZTSSt6locale", !140, i64 0}
!142 = !{!"_ZTSSt8ios_base", !25, i64 8, !25, i64 16, !135, i64 24, !136, i64 28, !136, i64 32, !137, i64 40, !138, i64 48, !21, i64 64, !22, i64 192, !139, i64 200, !141, i64 208}
!143 = !{!142, !25, i64 16}
!144 = !{!"_ZTSN4pbrt7Bounds2IiEE", !86, i64 0, !86, i64 8}
!145 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorISt4byteEE", !36, i64 0}
!146 = !{!"_ZTSN4pbrt7Array2DIfEE", !144, i64 0, !145, i64 16, !62, i64 24}
!147 = !{!146, !62, i64 24}
!148 = !{!145, !36, i64 0}
!149 = !{!"double", !21, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!"_ZTSN4pbrt19PiecewiseConstant1DE", !63, i64 0, !63, i64 32, !76, i64 64, !76, i64 68, !76, i64 72}
!152 = !{!151, !76, i64 72}
!153 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEEE", !36, i64 0}
!154 = !{!"p1 _ZTSN4pbrt19PiecewiseConstant1DE", !28, i64 0}
!155 = !{!"_ZTSN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEEE", !153, i64 0, !154, i64 8, !25, i64 16, !25, i64 24}
!156 = !{!155, !154, i64 8}
!157 = !{!"llvm.loop.unswitch.partial.disable"}
!158 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !141, i64 56}
!159 = !{!158, !29, i64 40}
!160 = !{!158, !29, i64 32}
end_hunk_1
