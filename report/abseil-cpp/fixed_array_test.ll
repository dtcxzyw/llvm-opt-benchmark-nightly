Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/fixed_array_test?download=true
inline.NumInlined: 9190
inline.NumDeleted: 3189
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN7testing13PrintToStringIN4absl12lts_2026052610FixedArrayIiLm4ENS2_18container_internal17CountingAllocatorIiEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !100, !alias.scope !1980
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124, !noalias !1980 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1980 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052610FixedArrayIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE5PrintERKS8_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125, !noalias !1980 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !97, !alias.scope !1980 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !100, !alias.scope !1980
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #27
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052610FixedArrayIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE5PrintERKS8_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !56
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !56
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !100
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #25
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !56
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !128
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_TestE, i64 16), ptr %i.a, align 8, !tbaa !56
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.520", align 8   ; 9 uses
  %2 = alloca %"class.std::vector.514", align 8   ; 11 uses
  %3 = alloca %"class.absl::lts_20260526::FixedArray.118", align 8 ; 21 uses
  %i.a = ptrtoaddr ptr %3 to i64
  %4 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.g

bb.b:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !1988
  invoke void @_ZN4absl12lts_2026052613hash_internal17ContainerAsVectorISt6vectorINS0_10FixedArrayIiLm18446744073709551615ESaIiEEESaIS6_EEE2DoERKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.520") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_10FixedArrayIiLm18446744073709551615ESaIiEEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.f = load ptr, ptr %1, align 8, !tbaa !1989, !noalias !1988 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !375, !noalias !1988
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %bb.n

bb.e:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !1989, !noalias !1988 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorISt7variantIJPKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEEESaIS8_EED2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !375, !noalias !1988
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #27
  br label %_ZNSt6vectorISt7variantIJPKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEEESaIS8_EED2Ev.exit3.i

_ZNSt6vectorISt7variantIJPKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEEESaIS8_EED2Ev.exit3.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !1988
  br label %.body

bb.g:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit
  %i.s = phi i64 [ 0, %bb.a ], [ %indvars.iv.next47, %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i64 %i.s, ptr %i.b, align 8, !tbaa !69
  store ptr %3, ptr %i.c, align 8, !tbaa !167
  %.not44 = icmp eq i64 %i.s, 0
  br i1 %.not44, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %xtraiter = and i64 %i.s, 7                     ; 3 uses
  %i.t = icmp samesign ult i64 %i.s, 8
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, 9223372036854775800
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.v = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.v, ptr %i.u, align 4, !tbaa !76
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1983

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !378  ; 5 uses
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !379
  %.not.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i, label %bb.j, label %bb.h

._crit_edge.thread:                               ; preds = %bb.g
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !378  ; 6 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !379
  %.not.i71 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i71, label %bb.j, label %.thread73

.thread73:                                        ; preds = %._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !167
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i

bb.h:                                             ; preds = %._crit_edge
  %.idx4.i.i.i = shl nuw nsw i64 %i.s, 2          ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %.idx4.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  store i64 %i.s, ptr %i.ad, align 8, !tbaa !69
  %i.ae = icmp samesign ult i64 %i.s, 65
  br i1 %i.ae, label %.lr.ph.i.i.preheader.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp samesign ugt i64 %i.s, 2305843009213693951
  br i1 %i.af, label %.noexc.i.i.i.i.i, label %.thread.i.i.i, !prof !106

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

.thread.i.i.i:                                    ; preds = %bb.i
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx4.i.i.i) #28
          to label %.lr.ph.i.i.preheader.i.i.i unwind label %.loopexit

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.sink = phi ptr [ %i.ag, %.thread.i.i.i ], [ %i.w, %bb.h ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  store ptr %.sink, ptr %i.ah, align 8, !tbaa !167
  %i.ai = add nsw i64 %.idx4.i.i.i, -4            ; 2 uses
  %9 = lshr exact i64 %i.ai, 2
  %i.aj = add nuw nsw i64 %9, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 28
  %.sink75 = ptrtoaddr ptr %.sink to i64
  %i.ak = sub i64 %i.a, %.sink75
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader.i.i.i
  %n.vec = and i64 %i.aj, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %.sink, i64 %i.al
  %i.an = getelementptr i8, ptr %3, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sink, i64 %i.ao ; 2 uses
  %next.gep76 = getelementptr i8, ptr %3, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep76, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep76, align 8, !tbaa !76
  %wide.load77 = load <4 x i32>, ptr %i.ap, align 8, !tbaa !76
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !76
  store <4 x i32> %wide.load77, ptr %i.aq, align 4, !tbaa !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1984

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.preheader.i.i.i, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %.sink, %.lr.ph.i.i.preheader.i.i.i ], [ %i.am, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %3, %.lr.ph.i.i.preheader.i.i.i ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.as = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !76
  store i32 %i.as, ptr %.011.i.i.i.i.i, align 4, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1985

_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !378
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i

_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i: ; preds = %.thread73, %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.loopexit.i
  %i.av = phi ptr [ %.pre.i, %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.loopexit.i ], [ %i.y, %.thread73 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !378
  br label %_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ax = phi ptr [ %i.y, %._crit_edge.thread ], [ %i.w, %._crit_edge ]
  invoke void @_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ax, ptr noundef nonnull align 8 dereferenceable(272) %3)
          to label %_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.az = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ay, align 8, !tbaa !76
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.bb = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !76
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !76
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.bf = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !76
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.3
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.bh, ptr %i.bg, align 8, !tbaa !76
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.4
  %i.bj = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !76
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.5
  %i.bl = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.bl, ptr %i.bk, align 8, !tbaa !76
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.6
  %i.bn = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !76
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1986

_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i, %bb.j
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 65
  br i1 %i.bp, label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.br = shl i64 %i.bo, 2
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.br) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit

_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %indvars.iv.next47 = add nuw nsw i64 %i.s, 1    ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 10
  br i1 %exitcond49.not, label %bb.b, label %bb.g, !llvm.loop !1987

.loopexit:                                        ; preds = %.thread.i.i.i, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 65
  br i1 %i.bt, label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit30, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.bv = shl i64 %i.bs, 2
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bv) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit30

_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit30: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ad

bb.n:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !1988
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.bw, align 8, !tbaa !104
  %i.bx = load i8, ptr %4, align 8, !tbaa !90, !range !91, !noundef !92
  %.not = icmp eq i8 %i.bx, 0
  br i1 %.not, label %bb.p, label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %8, align 8, !tbaa !97
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !105
  store i64 %i.cb, ptr %7, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bz, ptr %i.cc, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 72, ptr nonnull @.str.2, i32 noundef 871, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  %i.cd = load ptr, ptr %8, align 8, !tbaa !97    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !100
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ci = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ci, null
end_hunk_0
