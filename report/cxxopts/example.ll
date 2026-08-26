Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cxxopts/original/example?download=true
inline.NumInlined: 9080
inline.NumDeleted: 3223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN7cxxopts6values14abstract_valueIiEC2ERKS2_:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !184, !noalias !1800
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.n, align 8, !tbaa !93, !noalias !1800
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !186, !noalias !1800
  store ptr %i.q, ptr %i.b, align 8, !tbaa !468
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68   ; 8 uses
  store ptr %i.n, ptr %i.r, align 8, !tbaa !68
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.t, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !184
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !1803
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !1803
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !187

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %bb.k
  %storemerge.in = phi ptr [ %i.aj, %bb.k ], [ %i.b, %bb.i ], [ %i.b, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %i.b, %bb.e ], [ %i.b, %bb.c ]
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !468
  store ptr %storemerge, ptr %i.c, align 8, !tbaa !381
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !1778, !range !208, !noundef !209
  store i8 %i.al, ptr %i.d, align 8, !tbaa !1778
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1779, !range !208, !noundef !209
  store i8 %i.an, ptr %i.e, align 1, !tbaa !1779
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit10 unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.ai, %bb.j ]
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.j
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.at = load i64, ptr %i.j, align 8, !tbaa !17
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.g
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.g, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  tail call void @_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #30
  tail call void @_ZN7cxxopts5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !184
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !307
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !307
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !186
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !187

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7cxxopts6values14integer_parserIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cxxopts::values::detail::SignedCheck", align 1 ; 3 uses
  %3 = alloca %"struct.cxxopts::values::parser_tool::IntegerDesc", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.cxxopts::values::parser_tool::IntegerDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp ne i64 %i.b, 0                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %.not7276 = icmp samesign eq i64 %i.h, 0
  br i1 %.not7276, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %.fr = freeze i64 %i.k
  %.not.not = icmp eq i64 %.fr, 0                 ; 2 uses
  %spec.select = select i1 %i.c, i32 -2147483648, i32 2147483647 ; 4 uses
  %i.l = select i1 %.not.not, i32 10, i32 16      ; 4 uses
  br i1 %.not.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.07178.us = phi i32 [ %i.t, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.063.077.us = phi ptr [ %i.u, %bb.d ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.m = load i8, ptr %.sroa.063.077.us, align 1, !tbaa !17
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.us = icmp ult i8 %i.n, 10
  br i1 %or.cond.us, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %4 = udiv i32 %spec.select, %i.l
  %i.p = icmp ugt i32 %.07178.us, %4
  br i1 %i.p, label %.split80.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = mul nuw i32 %.07178.us, %i.l             ; 2 uses
  %i.r = sub nuw i32 %spec.select, %i.o
  %i.s = icmp ugt i32 %i.q, %i.r
  br i1 %i.s, label %.split82.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add nuw i32 %i.q, %i.o                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.063.077.us, i64 1 ; 2 uses
  %.not72.us = icmp eq ptr %i.u, %i.i
  br i1 %.not72.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.o, %bb.d, %bb.a
  %.071.lcssa = phi i32 [ 0, %bb.a ], [ %i.t, %bb.d ], [ %i.aq, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN7cxxopts6values6detail11SignedCheckIiLb1EEclIjEEvbT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %i.c, i32 noundef %.071.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.p unwind label %bb.q

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.07178 = phi i32 [ %i.aq, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.063.077 = phi ptr [ %i.ar, %bb.o ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.v = load i8, ptr %.sroa.063.077, align 1, !tbaa !17 ; 4 uses
  %i.w = sext i8 %i.v to i32
  %i.x = add i8 %i.v, -48
  %or.cond = icmp ult i8 %i.x, 10
  br i1 %or.cond, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.y = add i8 %i.v, -97
  %i.z = icmp ult i8 %i.y, 6
  br i1 %i.z, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i8 %i.v, -65
  %i.ab = icmp ult i8 %i.aa, 6
  br i1 %i.ab, label %bb.j, label %.split.us

.split.us:                                        ; preds = %bb.f, %.lr.ph.split.us
  %i.ac = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN7cxxopts10exceptions23incorrect_argument_typeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.split.us
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN7cxxopts10exceptions23incorrect_argument_typeE, ptr nonnull @_ZN7cxxopts10exceptions9exceptionD2Ev) #29
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.split.us
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ac) #30
  br label %.body

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.f, %bb.e, %.lr.ph.split
  %.sink = phi i32 [ -48, %.lr.ph.split ], [ -87, %bb.e ], [ -55, %bb.f ]
  %i.af = add nsw i32 %.sink, %i.w                ; 2 uses
  %5 = udiv i32 %spec.select, %i.l
  %i.ag = icmp ugt i32 %.07178, %5
  br i1 %i.ag, label %.split80.us, label %bb.m

bb.k:                                             ; preds = %.invoke
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split80.us:                                      ; preds = %bb.j, %bb.b
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN7cxxopts10exceptions23incorrect_argument_typeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.invoke unwind label %bb.l

bb.l:                                             ; preds = %.split80.us
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.ak = mul nuw i32 %.07178, %i.l               ; 2 uses
  %i.al = sub nuw i32 %spec.select, %i.af
  %i.am = icmp ugt i32 %i.ak, %i.al
  br i1 %i.am, label %.split82.us, label %bb.o

.split82.us:                                      ; preds = %bb.m, %bb.c
  %i.an = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN7cxxopts10exceptions23incorrect_argument_typeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.invoke unwind label %bb.n

.invoke:                                          ; preds = %.split82.us, %.split80.us
  %i.ao = phi ptr [ %i.ai, %.split80.us ], [ %i.an, %.split82.us ]
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN7cxxopts10exceptions23incorrect_argument_typeE, ptr nonnull @_ZN7cxxopts10exceptions9exceptionD2Ev) #29
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %.split82.us
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.an) #30
  br label %.body

bb.o:                                             ; preds = %bb.m
  %i.aq = add nuw i32 %i.af, %i.ak                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.063.077, i64 1 ; 2 uses
  %.not72 = icmp eq ptr %i.ar, %i.i
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.as = sub i32 0, %.071.lcssa
  %storemerge = select i1 %i.c, i32 %i.as, i32 %.071.lcssa
  store i32 %storemerge, ptr %1, align 4, !tbaa !186
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.q:                                             ; preds = %._crit_edge
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ay) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.be = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN7cxxopts6values11parser_tool11IntegerDescD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #32
  br label %_ZN7cxxopts6values11parser_tool11IntegerDescD2Ev.exit

_ZN7cxxopts6values11parser_tool11IntegerDescD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.body:                                            ; preds = %bb.h, %bb.i, %bb.k, %bb.n, %bb.l, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.q ], [ %i.ad, %bb.h ], [ %i.ae, %bb.i ], [ %i.aj, %bb.l ], [ %i.ah, %bb.k ], [ %i.ap, %bb.n ]
  call void @_ZN7cxxopts6values11parser_tool11IntegerDescD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.cxxopts::values::parser_tool::IntegerDesc") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::match_results", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %i.e = load atomic i8, ptr @_ZGVZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15integer_matcherB5cxx11 acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e, !prof !363

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15integer_matcherB5cxx11) #30
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15integer_matcherB5cxx11, ptr noundef nonnull @.str.284, i32 noundef 16)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev, ptr nonnull @_ZZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15integer_matcherB5cxx11, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15integer_matcherB5cxx11) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %i.i, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15integer_matcherB5cxx11, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZSt11regex_matchISt11char_traitsIcESaIcESaINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS3_12basic_stringIcS1_S2_EEEEEEEcNS3_12regex_traitsIcEEEbRKNS9_IT2_T_T0_EERNS3_13match_resultsINSJ_14const_iteratorET1_EERKNS3_11basic_regexISG_T3_EENSt15regex_constants15match_flag_typeE.exit unwind label %bb.j ; 0 uses

_ZSt11regex_matchISt11char_traitsIcESaIcESaINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS3_12basic_stringIcS1_S2_EEEEEEEcNS3_12regex_traitsIcEEEbRKNS9_IT2_T_T0_EERNS3_13match_resultsINSJ_14const_iteratorET1_EERKNS3_11basic_regexISG_T3_EENSt15regex_constants15match_flag_typeE.exit: ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8, !tbaa !466    ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !466  ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p                   ; 2 uses
  %.pre.i.i = ptrtoint ptr %i.p to i64
  %.pre2.i.i = ptrtoint ptr %i.n to i64
  %.pre4.i.i = sub i64 %.pre.i.i, %.pre2.i.i      ; 3 uses
  %.not104 = icmp eq i64 %.pre4.i.i, 72
  %or.cond = or i1 %i.q, %.not104
  %i.r = getelementptr i8, ptr %i.n, i64 %.pre4.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -72      ; 3 uses
  %i.t = select i1 %or.cond, ptr %i.s, ptr %i.n   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1188, !range !208, !noundef !209
  %i.w = trunc nuw i8 %i.v to i1
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.x, align 8
  %i.y = icmp ne ptr %.sroa.0.0.copyload.i.i, %.sroa.01.0.copyload.i.i
  %.not106 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %.not106, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZSt11regex_matchISt11char_traitsIcESaIcESaINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS3_12basic_stringIcS1_S2_EEEEEEEcNS3_12regex_traitsIcEEEbRKNS9_IT2_T_T0_EERNS3_13match_resultsINSJ_14const_iteratorET1_EERKNS3_11basic_regexISG_T3_EENSt15regex_constants15match_flag_typeE.exit
  %i.z = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN7cxxopts10exceptions23incorrect_argument_typeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN7cxxopts10exceptions23incorrect_argument_typeE, ptr nonnull @_ZN7cxxopts10exceptions9exceptionD2Ev) #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.z) #30
  br label %.body

bb.i:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7cxxopts6values11parser_tool12SplitIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15integer_matcherB5cxx11) #30
  br label %bb.bm

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZSt11regex_matchISt11char_traitsIcESaIcESaINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS3_12basic_stringIcS1_S2_EEEEEEEcNS3_12regex_traitsIcEEEbRKNS9_IT2_T_T0_EERNS3_13match_resultsINSJ_14const_iteratorET1_EERKNS3_11basic_regexISG_T3_EENSt15regex_constants15match_flag_typeE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
end_hunk_0
