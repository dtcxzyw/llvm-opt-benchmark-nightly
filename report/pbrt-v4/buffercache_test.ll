Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/buffercache_test?download=true
inline.NumInlined: 486
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN23BufferCache_Basics_Test8TestBodyEv:bb.a
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 19 uses
  %21 = alloca %"class.testing::Message", align 8 ; 26 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 22 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.j = load ptr, ptr @_ZN4pbrt14intBufferCacheE, align 8, !tbaa !61
  %i.k = icmp ne ptr %i.j, null                   ; 2 uses
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %1, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !13
  br i1 %i.k, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !18
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 15, ptr noundef %i.n)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  %i.o = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !19
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.t = load ptr, ptr %2, align 8, !tbaa !22
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.j

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.u, label %bb.h, label %bb.q

bb.h:                                             ; preds = %.noexc.i.i
  %i.v = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #18, !inline_history !0
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #20
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.m:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.o
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !19
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.hg

bb.q:                                             ; preds = %bb.i, %bb.h, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.pr = load ptr, ptr %i.m, align 8, !tbaa !13
  %.not.i.i.i89 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i89, label %_ZN7testing15AssertionResultD2Ev.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i90 unwind label %bb.u

.noexc.i.i90:                                     ; preds = %bb.r
  br i1 %i.al, label %bb.s, label %_ZN7testing15AssertionResultD2Ev.exit.thread

bb.s:                                             ; preds = %.noexc.i.i90
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !13  ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN7testing15AssertionResultD2Ev.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit.thread

bb.u:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit.thread:     ; preds = %bb.q, %.noexc.i.i90, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.he

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.av = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #21 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.av, ptr noundef nonnull align 4 dereferenceable(20) @constinit, i64 20, i1 false)
  %i.aw = load ptr, ptr @_ZN4pbrt14intBufferCacheE, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 7168
  %i.ay = load atomic i64, ptr %i.ax seq_cst, align 8 ; 3 uses
  %i.az = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ba = load ptr, ptr @_ZN4pbrt14intBufferCacheE, align 8, !tbaa !61
  %i.bb = invoke noundef ptr @_ZN4pbrt11BufferCacheIiE11LookupOrAddEN4pstd4spanIKiEENS2_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(7176) %i.ba, ptr nonnull %i.av, i64 5, ptr %i.az)
          to label %bb.w unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135

bb.w:                                             ; preds = %bb.v
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.y

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 20, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.bd = load ptr, ptr @_ZN4pbrt14intBufferCacheE, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 7168
  %i.bf = load atomic i64, ptr %i.be seq_cst, align 8
  %i.bg = sub i64 %i.bf, %i.ay
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !27
  invoke void @_ZN7testing8internal11CmpHelperEQImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %bb.au

bb.y:                                             ; preds = %bb.w, %_ZN7testing15AssertionResultD2Ev.exit99
  %.049215 = phi i64 [ 0, %bb.w ], [ %i.cn, %_ZN7testing15AssertionResultD2Ev.exit99 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.049215
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.049215
  invoke void @_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIiiEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal8EqHelperILb0EE7CompareIiiEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.y
  %i.bk = load i8, ptr %5, align 8, !tbaa !64, !range !65, !noundef !66
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.ao, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aa:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIiiEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ac, %bb.ab
  %i.bp = phi ptr [ %i.bo, %bb.ac ], [ @.str.20, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 24, ptr noundef %i.bp)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.bq = load ptr, ptr %6, align 8, !tbaa !22
  %.not.i.i.i91 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i91, label %_ZN7testing7MessageD2Ev.exit93, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i92 unwind label %bb.ai

.noexc.i.i92:                                     ; preds = %bb.af
  br i1 %i.br, label %bb.ag, label %_ZN7testing7MessageD2Ev.exit93

bb.ag:                                            ; preds = %.noexc.i.i92
  %i.bs = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN7testing7MessageD2Ev.exit93, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(128) %i.bs) #18, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit93

bb.ai:                                            ; preds = %bb.af
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #20
  unreachable

_ZN7testing7MessageD2Ev.exit93:                   ; preds = %bb.ae, %.noexc.i.i92, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ao

bb.aj:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ad
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn79 = phi { ptr, i32 } [ %i.cb, %bb.al ], [ %i.ca, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %bb.am ], [ %i.bz, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  br label %bb.at

bb.ao:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIiiEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit93
  %i.cc = load ptr, ptr %i.bc, align 8, !tbaa !13
  %.not.i.i.i94 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i94, label %_ZN7testing15AssertionResultD2Ev.exit99, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i95 unwind label %bb.as

.noexc.i.i95:                                     ; preds = %bb.ap
  br i1 %i.cd, label %bb.aq, label %_ZN7testing15AssertionResultD2Ev.exit99

bb.aq:                                            ; preds = %.noexc.i.i95
  %i.ce = load ptr, ptr %i.bc, align 8, !tbaa !13 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN7testing15AssertionResultD2Ev.exit99, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !18 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.ar
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit99

bb.as:                                            ; preds = %bb.ap
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit99:          ; preds = %bb.ao, %.noexc.i.i95, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cn = add nuw nsw i64 %.049215, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, 5
  br i1 %exitcond.not, label %bb.x, label %bb.y, !llvm.loop !59

bb.at:                                            ; preds = %bb.an, %bb.z
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %bb.an ], [ %i.bm, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit184

_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.co = load i8, ptr %8, align 8, !tbaa !64, !range !65, !noundef !66
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.bj, label %bb.av

bb.au:                                            ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.bp

bb.av:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !13 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i100, label %_ZNK7testing15AssertionResult15failure_messageEv.exit101, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit101

_ZNK7testing15AssertionResult15failure_messageEv.exit101: ; preds = %bb.ax, %bb.aw
  %i.cu = phi ptr [ %i.ct, %bb.ax ], [ @.str.20, %bb.aw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 26, ptr noundef %i.cu)
          to label %bb.ay unwind label %bb.bf

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit101
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #18
end_hunk_0
begin_hunk_1_@_ZN23BufferCache_Basics_Test8TestBodyEv:bb.a
.noexc.i.i117:                                    ; preds = %bb.cg
  br i1 %i.eq, label %bb.ch, label %_ZN7testing15AssertionResultD2Ev.exit121

bb.ch:                                            ; preds = %.noexc.i.i117
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !13 ; 4 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN7testing15AssertionResultD2Ev.exit121, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !18 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118: ; preds = %bb.ci
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !19
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i119: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit121

bb.cj:                                            ; preds = %bb.cg
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit121:         ; preds = %bb.cf, %.noexc.i.i117, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 20, ptr %i.e, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.fa = load ptr, ptr @_ZN4pbrt14intBufferCacheE, align 8, !tbaa !61
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 7168
  %i.fc = load atomic i64, ptr %i.fb seq_cst, align 8
  %i.fd = sub i64 %i.fc, %i.ay
  store i64 %i.fd, ptr %i.f, align 8, !tbaa !27
  invoke void @_ZN7testing8internal11CmpHelperEQImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit122 unwind label %bb.cl

_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit122: ; preds = %_ZN7testing15AssertionResultD2Ev.exit121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.fe = load i8, ptr %14, align 8, !tbaa !64, !range !65, !noundef !66
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.da, label %bb.cm

bb.ck:                                            ; preds = %bb.ce, %bb.bq
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.ce ], [ %i.dx, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit184

bb.cl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit121
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.di

bb.cm:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.cn unwind label %bb.cv

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !13 ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i123, label %_ZNK7testing15AssertionResult15failure_messageEv.exit124, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit124

_ZNK7testing15AssertionResult15failure_messageEv.exit124: ; preds = %bb.co, %bb.cn
  %i.fk = phi ptr [ %i.fj, %bb.co ], [ @.str.20, %bb.cn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 30, ptr noundef %i.fk)
          to label %bb.cp unwind label %bb.cw

bb.cp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit124
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.cq unwind label %bb.cx

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.fl = load ptr, ptr %15, align 8, !tbaa !22
  %.not.i.i.i125 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i125, label %_ZN7testing7MessageD2Ev.exit127, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fm = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i126 unwind label %bb.cu

.noexc.i.i126:                                    ; preds = %bb.cr
  br i1 %i.fm, label %bb.cs, label %_ZN7testing7MessageD2Ev.exit127

bb.cs:                                            ; preds = %.noexc.i.i126
  %i.fn = load ptr, ptr %15, align 8, !tbaa !22   ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZN7testing7MessageD2Ev.exit127, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fn) #18, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit127

bb.cu:                                            ; preds = %bb.cr
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #20
  unreachable

_ZN7testing7MessageD2Ev.exit127:                  ; preds = %bb.cq, %.noexc.i.i126, %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.da

bb.cv:                                            ; preds = %bb.cm
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit124
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cp
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pn61 = phi { ptr, i32 } [ %i.fw, %bb.cx ], [ %i.fv, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #18
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cv
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %bb.cy ], [ %i.fu, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #18
  br label %bb.di

bb.da:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit122, %_ZN7testing7MessageD2Ev.exit127
  %i.fx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !13
  %.not.i.i.i128 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i128, label %_ZN7testing15AssertionResultD2Ev.exit133, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.fz = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i129 unwind label %bb.de

.noexc.i.i129:                                    ; preds = %bb.db
  br i1 %i.fz, label %bb.dc, label %_ZN7testing15AssertionResultD2Ev.exit133

bb.dc:                                            ; preds = %.noexc.i.i129
  %i.ga = load ptr, ptr %i.fx, align 8, !tbaa !13 ; 4 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %_ZN7testing15AssertionResultD2Ev.exit133, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !18 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130: ; preds = %bb.dd
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !19
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i131: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i130
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit133

bb.de:                                            ; preds = %bb.db
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit133:         ; preds = %bb.da, %.noexc.i.i129, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.gj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %bb.df unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135 ; 8 uses

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135:        ; preds = %bb.v, %_ZN7testing15AssertionResultD2Ev.exit133
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit184

bb.df:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit133
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.gj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.gl = load ptr, ptr @_ZN4pbrt14intBufferCacheE, align 8, !tbaa !61
  %i.gm = invoke noundef ptr @_ZN4pbrt11BufferCacheIiE11LookupOrAddEN4pstd4spanIKiEENS2_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(7176) %i.gl, ptr nonnull %i.gj, i64 4, ptr %i.az)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %bb.df
  store ptr %i.gm, ptr %i.g, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZN7testing8internal11CmpHelperNEIPKiS3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.dh unwind label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.gn = load i8, ptr %17, align 8, !tbaa !64, !range !65, !noundef !66
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.dz, label %bb.dl

bb.di:                                            ; preds = %bb.cz, %bb.cl
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %bb.cz ], [ %i.fg, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit184

bb.dj:                                            ; preds = %bb.df
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit181

bb.dk:                                            ; preds = %bb.dg
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.dl:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.dm unwind label %bb.du

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.gr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !13 ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i139, label %_ZNK7testing15AssertionResult15failure_messageEv.exit140, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit140

_ZNK7testing15AssertionResult15failure_messageEv.exit140: ; preds = %bb.dn, %bb.dm
  %i.gu = phi ptr [ %i.gt, %bb.dn ], [ @.str.20, %bb.dm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 34, ptr noundef %i.gu)
          to label %bb.do unwind label %bb.dv

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit140
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.dp unwind label %bb.dw

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.gv = load ptr, ptr %18, align 8, !tbaa !22
  %.not.i.i.i141 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i141, label %_ZN7testing7MessageD2Ev.exit143, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.gw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i142 unwind label %bb.dt

.noexc.i.i142:                                    ; preds = %bb.dq
  br i1 %i.gw, label %bb.dr, label %_ZN7testing7MessageD2Ev.exit143

bb.dr:                                            ; preds = %.noexc.i.i142
  %i.gx = load ptr, ptr %18, align 8, !tbaa !22   ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN7testing7MessageD2Ev.exit143, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(128) %i.gx) #18, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit143

bb.dt:                                            ; preds = %bb.dq
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #20
  unreachable

_ZN7testing7MessageD2Ev.exit143:                  ; preds = %bb.dp, %.noexc.i.i142, %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.dz

bb.du:                                            ; preds = %bb.dl
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit140
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.do
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn65 = phi { ptr, i32 } [ %i.hg, %bb.dw ], [ %i.hf, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #18
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.du
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %bb.dx ], [ %i.he, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #18
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dh, %_ZN7testing7MessageD2Ev.exit143
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !13
  %.not.i.i.i144 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i144, label %_ZN7testing15AssertionResultD2Ev.exit149, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.hj = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i145 unwind label %bb.ed

.noexc.i.i145:                                    ; preds = %bb.ea
  br i1 %i.hj, label %bb.eb, label %_ZN7testing15AssertionResultD2Ev.exit149

bb.eb:                                            ; preds = %.noexc.i.i145
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !13 ; 4 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_ZN7testing15AssertionResultD2Ev.exit149, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !18 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146: ; preds = %bb.ec
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !19
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit149

bb.ed:                                            ; preds = %bb.ea
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit149:         ; preds = %bb.dz, %.noexc.i.i145, %bb.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.hu = load ptr, ptr %i.g, align 8, !tbaa !26
  invoke void @_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.hu, ptr noundef nonnull align 4 dereferenceable(4) %i.gj)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIiiEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit151 unwind label %bb.ef

bb.ee:                                            ; preds = %bb.dy, %bb.dk
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %bb.dy ], [ %i.gq, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit181

_ZN7testing8internal8EqHelperILb0EE7CompareIiiEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit151: ; preds = %_ZN7testing15AssertionResultD2Ev.exit149
  %i.hv = load i8, ptr %20, align 8, !tbaa !64, !range !65, !noundef !66
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.eu, label %bb.eg

bb.ef:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162.2, %_ZN7testing15AssertionResultD2Ev.exit162.1, %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN7testing15AssertionResultD2Ev.exit149
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.eg:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIiiEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit151
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.eh unwind label %bb.ep

bb.eh:                                            ; preds = %bb.eg
end_hunk_1
begin_hunk_2_@_ZN23BufferCache_Basics_Test8TestBodyEv:bb.a
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i160.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159.3: ; preds = %bb.gi
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !19
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i160.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i160.3: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159.3
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit162.3

_ZN7testing15AssertionResultD2Ev.exit162.3:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i160.3, %bb.gh, %.noexc.i.i158.3, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i64 36, ptr %i.h, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.lp = load ptr, ptr @_ZN4pbrt14intBufferCacheE, align 8, !tbaa !61
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 7168
  %i.lr = load atomic i64, ptr %i.lq seq_cst, align 8
  %i.ls = sub i64 %i.lr, %i.ay
  store i64 %i.ls, ptr %i.i, align 8, !tbaa !27
  invoke void @_ZN7testing8internal11CmpHelperEQImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit150 unwind label %bb.gk

bb.gj:                                            ; preds = %bb.et, %bb.ef
  %.pn73.pn.pn = phi { ptr, i32 } [ %.pn73.pn, %bb.et ], [ %i.hx, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit181

_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit150: ; preds = %_ZN7testing15AssertionResultD2Ev.exit162.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %i.lt = load i8, ptr %23, align 8, !tbaa !64, !range !65, !noundef !66
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.gz, label %bb.gl

bb.gk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162.3
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.hf

bb.gl:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit150
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.gm unwind label %bb.gu

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  %i.lw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !13 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i163, label %_ZNK7testing15AssertionResult15failure_messageEv.exit164, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit164

_ZNK7testing15AssertionResult15failure_messageEv.exit164: ; preds = %bb.gn, %bb.gm
  %i.lz = phi ptr [ %i.ly, %bb.gn ], [ @.str.20, %bb.gm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 38, ptr noundef %i.lz)
          to label %bb.go unwind label %bb.gv

bb.go:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit164
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.gp unwind label %bb.gw

bb.gp:                                            ; preds = %bb.go
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %i.ma = load ptr, ptr %24, align 8, !tbaa !22
  %.not.i.i.i165 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i165, label %_ZN7testing7MessageD2Ev.exit167, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.mb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i166 unwind label %bb.gt

.noexc.i.i166:                                    ; preds = %bb.gq
  br i1 %i.mb, label %bb.gr, label %_ZN7testing7MessageD2Ev.exit167

bb.gr:                                            ; preds = %.noexc.i.i166
  %i.mc = load ptr, ptr %24, align 8, !tbaa !22   ; 3 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %_ZN7testing7MessageD2Ev.exit167, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !24
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(128) %i.mc) #18, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit167

bb.gt:                                            ; preds = %bb.gq
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #20
  unreachable

_ZN7testing7MessageD2Ev.exit167:                  ; preds = %bb.gp, %.noexc.i.i166, %bb.gr, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.gz

bb.gu:                                            ; preds = %bb.gl
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.gv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit164
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gw:                                            ; preds = %bb.go
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #18
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.pn69 = phi { ptr, i32 } [ %i.ml, %bb.gw ], [ %i.mk, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gu
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %bb.gx ], [ %i.mj, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #18
  br label %bb.hf

bb.gz:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareImmEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit150, %_ZN7testing7MessageD2Ev.exit167
  %i.mm = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !13
  %.not.i.i.i168 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIiSaIiEED2Ev.exit178, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.mo = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i169 unwind label %bb.hd

.noexc.i.i169:                                    ; preds = %bb.ha
  br i1 %i.mo, label %bb.hb, label %_ZNSt6vectorIiSaIiEED2Ev.exit178

bb.hb:                                            ; preds = %.noexc.i.i169
  %i.mp = load ptr, ptr %i.mm, align 8, !tbaa !13 ; 4 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %_ZNSt6vectorIiSaIiEED2Ev.exit178, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !18 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170: ; preds = %bb.hc
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !19
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i171: ; preds = %bb.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef 32) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit178

bb.hd:                                            ; preds = %bb.ha
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #20
  unreachable

_ZNSt6vectorIiSaIiEED2Ev.exit178:                 ; preds = %bb.gz, %.noexc.i.i169, %bb.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 20) #19
  br label %bb.he

bb.he:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit178
  ret void

bb.hf:                                            ; preds = %bb.gy, %bb.gk
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %bb.gy ], [ %i.lv, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit181

_ZNSt6vectorIiSaIiEED2Ev.exit181:                 ; preds = %bb.hf, %bb.gj, %bb.ee, %bb.dj
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn, %bb.gj ], [ %.pn69.pn.pn, %bb.hf ], [ %.pn65.pn.pn, %bb.ee ], [ %i.gp, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 16) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit184

_ZNSt6vectorIiSaIiEED2Ev.exit184:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit181, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135, %bb.di, %bb.ck, %bb.bp, %bb.at
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn, %bb.at ], [ %i.gk, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i135 ], [ %.pn61.pn.pn, %bb.di ], [ %.pn57.pn.pn, %bb.ck ], [ %.pn53.pn.pn, %bb.bp ], [ %.pn73.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 20) #19
  br label %bb.hg

bb.hg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit184, %bb.p
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %.pn79.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit184 ]
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn.pn
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.b, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.c) #18, !inline_history !67
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #19
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #20
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt11BufferCacheIiE11LookupOrAddEN4pstd4spanIKiEENS2_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(7176) %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::BufferCache<int>::Buffer", align 8 ; 7 uses
  %6 = alloca %"struct.pbrt::BufferCache<int>::Buffer", align 8 ; 7 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL19nBufferCacheLookupsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.d, align 8, !tbaa !31
  %i.e = shl i64 %2, 2                            ; 10 uses
  %i.f = mul i64 %2, 1914766847002519124          ; 6 uses
  %i.g = and i64 %i.e, -8                         ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 3 uses
  %.not37.i.i.i = icmp samesign eq i64 %i.g, 0    ; 2 uses
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.i = add i64 %i.e, -8                         ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.039.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.03638.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.f, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %.0.copyload.i.i.i.prol = load i64, ptr %.039.i.i.i.prol, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.039.i.i.i.prol, i64 8 ; 2 uses
  %i.m = mul i64 %.0.copyload.i.i.i.prol, -4132994306676758123 ; 2 uses
  %i.n = lshr i64 %i.m, 47
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -4132994306676758123
  %i.q = xor i64 %i.p, %.03638.i.i.i.prol
  %i.r = mul i64 %i.q, -4132994306676758123       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !68

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa65.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.039.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %.03638.i.i.i.unr = phi i64 [ %i.f, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.i, 24
  br i1 %i.s, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.039.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.039.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.03638.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.03638.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.0.copyload.i.i.i = load i64, ptr %.039.i.i.i, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 8
  %i.u = mul i64 %.0.copyload.i.i.i, -4132994306676758123 ; 2 uses
  %i.v = lshr i64 %i.u, 47
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, -4132994306676758123
  %i.y = xor i64 %i.x, %.03638.i.i.i
  %i.z = mul i64 %i.y, -4132994306676758123
  %.0.copyload.i.i.i.1 = load i64, ptr %i.t, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 16
  %i.ab = mul i64 %.0.copyload.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -4132994306676758123
  %i.af = xor i64 %i.ae, %i.z
  %i.ag = mul i64 %i.af, -4132994306676758123
  %.0.copyload.i.i.i.2 = load i64, ptr %i.aa, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 24
  %i.ai = mul i64 %.0.copyload.i.i.i.2, -4132994306676758123 ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, -4132994306676758123
  %i.am = xor i64 %i.al, %i.ag
  %i.an = mul i64 %i.am, -4132994306676758123
  %.0.copyload.i.i.i.3 = load i64, ptr %i.ah, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 32 ; 2 uses
  %i.ap = mul i64 %.0.copyload.i.i.i.3, -4132994306676758123 ; 2 uses
  %i.aq = lshr i64 %i.ap, 47
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, -4132994306676758123
  %i.at = xor i64 %i.as, %i.an
  %i.au = mul i64 %i.at, -4132994306676758123     ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !69

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.a
  %.036.lcssa.i.i.i = phi i64 [ %i.f, %bb.a ], [ %.lcssa65.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ %1, %bb.a ], [ %i.h, %.lr.ph.i.i.i ], [ %i.h, %.lr.ph.i.i.i.prol.loopexit ]
end_hunk_2
