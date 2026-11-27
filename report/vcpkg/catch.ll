Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/catch?download=true
inline.NumInlined: 17856
inline.NumDeleted: 6010
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5Catch11filterTestsERKSt6vectorINS_8TestCaseESaIS1_EERKNS_8TestSpecERKNS_7IConfigE:bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !444
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !443
  %i.n = tail call noundef ptr @_ZSt14__relocate_a_1IPN5Catch8TestCaseES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(24) %0) #56 ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !444    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5Catch8TestCaseESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc15
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !447
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.s) #57
  br label %_ZNSt12_Vector_baseIN5Catch8TestCaseESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5Catch8TestCaseESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %.noexc15
  store ptr %i.k, ptr %0, align 8, !tbaa !444
  store ptr %i.k, ptr %i.j, align 8, !tbaa !443
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  store ptr %i.t, ptr %i.i, align 8, !tbaa !447
  %.pre = load ptr, ptr %1, align 8, !tbaa !435
  %.pre29 = load ptr, ptr %i.a, align 8, !tbaa !435
  br label %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5Catch8TestCaseESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %i.u = phi ptr [ %.pre29, %_ZNSt12_Vector_baseIN5Catch8TestCaseESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.v = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN5Catch8TestCaseESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %.not26 = icmp eq ptr %i.v, %i.u
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE7reserveEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit
  %.sroa.020.027 = phi ptr [ %i.v, %.lr.ph ], [ %i.az, %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !296
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !296
  %.not24 = icmp eq ptr %i.y, %i.z
  br i1 %.not24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 160
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !436
  %i.ac = and i32 %i.ab, 2
  %.not25 = icmp eq i32 %i.ac, 0
  br i1 %.not25, label %_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit.thread, label %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = invoke noundef zeroext i1 @_ZNK5Catch8TestSpec7matchesERKNS_12TestCaseInfoE(ptr noundef nonnull readonly align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.020.027)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.g
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %.noexc16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 160
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !436
  %i.ag = and i32 %i.af, 16
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %3, align 8, !tbaa !120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1711

_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit: ; preds = %bb.i
  br i1 %i.ak, label %_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit.thread, label %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit

_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit.thread: ; preds = %bb.h, %_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit, %bb.f
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !443 ; 4 uses
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !447
  %.not.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit.thread
  invoke void @_ZN5Catch12TestCaseInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.al, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.020.027)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !223 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !384
  store <2 x ptr> %i.ar, ptr %i.an, align 8, !tbaa !384
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %_ZN5Catch8TestCaseC2ERKS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc18
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load i32, ptr %i.as, align 4, !tbaa !133
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !133
  br label %_ZN5Catch8TestCaseC2ERKS0_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5Catch8TestCaseC2ERKS0_.exit.i

_ZN5Catch8TestCaseC2ERKS0_.exit.i:                ; preds = %bb.m, %bb.l, %.noexc18
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !443
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  store ptr %i.ay, ptr %i.x, align 8, !tbaa !443
  br label %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit.thread
  invoke void @_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.al, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.020.027)
          to label %_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.j, %bb.i, %bb.g, %bb.b, %_ZNSt12_Vector_baseIN5Catch8TestCaseESaIS1_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN5Catch8TestCaseESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #56
  resume { ptr, i32 } %lpad.loopexit.split-lp37

_ZNSt6vectorIN5Catch8TestCaseESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc16, %_ZN5Catch8TestCaseC2ERKS0_.exit.i, %bb.n, %bb.f, %_ZN5Catch9matchTestERKNS_8TestCaseERKNS_8TestSpecERKNS_7IConfigE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 184 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.u
  br i1 %.not, label %._crit_edge, label %bb.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Catch21getAllTestCasesSortedERKNS_7IConfigE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch9SingletonINS_12_GLOBAL__N_111RegistryHubENS_12IRegistryHubENS_19IMutableRegistryHubEE11getInternalEv() ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5Catch12TestCaseInfo8isHiddenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(164) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !436
  %i.c = and i32 %i.b, 2
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch5clara8TextFlowlsERSoRKNS1_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::clara::TextFlow::Column::iterator", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  store ptr %1, ptr %2, align 8, !tbaa !449, !alias.scope !1717
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.a, i8 0, i64 33, i1 false), !alias.scope !1717
  call void @_ZN5Catch5clara8TextFlow6Column8iterator10calcLengthEv(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !451, !alias.scope !1717
  %i.d = icmp eq i64 %i.c, 0
  %.pre = load i64, ptr %i.a, align 8             ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNK5Catch5clara8TextFlow6Column5beginEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %.pre, 1                         ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !452, !alias.scope !1717
  br label %_ZNK5Catch5clara8TextFlow6Column5beginEv.exit

_ZNK5Catch5clara8TextFlow6Column5beginEv.exit:    ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %.pre, %bb.a ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !225, !noalias !1718
  %i.i = load ptr, ptr %1, align 8, !tbaa !251, !noalias !1718
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !453
  %i.p = icmp ne i64 %i.o, 0
  %i.q = icmp ne i64 %i.f, %i.m
  %or.cond.not1516 = select i1 %i.p, i1 true, i1 %i.q
  %i.r = load ptr, ptr %2, align 8, !nonnull !160, !align !183
  %i.s = icmp ne ptr %i.r, %1
  %or.cond1317 = select i1 %or.cond.not1516, i1 true, i1 %i.s
  br i1 %or.cond1317, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel, label %._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel: ; preds = %_ZNK5Catch5clara8TextFlow6Column5beginEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @_ZNK5Catch5clara8TextFlow6Column8iteratordeB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(41) %2)
  %.pre21 = load i64, ptr %i.t, align 8, !tbaa !138
  %.pre20 = load ptr, ptr %3, align 8, !tbaa !137
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.pre20, i64 noundef %.pre21)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %i.w = load ptr, ptr %3, align 8, !tbaa !137    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.y = load i64, ptr %i.u, align 8, !tbaa !139
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.aa = call noundef nonnull align 8 dereferenceable(41) ptr @_ZN5Catch5clara8TextFlow6Column8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(41) %2) ; 0 uses
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !453
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = load i64, ptr %i.a, align 8
  %i.ae = icmp ne i64 %i.ad, %i.m
  %or.cond.not15.peel = select i1 %i.ac, i1 true, i1 %i.ae
  %i.af = load ptr, ptr %2, align 8, !nonnull !160, !align !183
  %i.ag = icmp ne ptr %i.af, %1
  %or.cond13.peel = select i1 %or.cond.not15.peel, i1 true, i1 %i.ag
  br i1 %or.cond13.peel, label %_ZNK5Catch5clara8TextFlow6Column8iteratorneERKS3_.exit.thread.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.peel, %_ZNK5Catch5clara8TextFlow6Column5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret ptr %0

_ZNK5Catch5clara8TextFlow6Column8iteratorneERKS3_.exit.thread.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @_ZNK5Catch5clara8TextFlow6Column8iteratordeB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.110, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNK5Catch5clara8TextFlow6Column8iteratorneERKS3_.exit.thread.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %3, align 8, !tbaa !137   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.u
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !139
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %lpad.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK5Catch5clara8TextFlow6Column8iteratorneERKS3_.exit.thread.peel.next
  %i.am = load ptr, ptr %3, align 8, !tbaa !137
  %i.an = load i64, ptr %i.t, align 8, !tbaa !138
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.am, i64 noundef %i.an)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = load ptr, ptr %3, align 8, !tbaa !137   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.u
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ar = load i64, ptr %i.u, align 8, !tbaa !139
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.at = call noundef nonnull align 8 dereferenceable(41) ptr @_ZN5Catch5clara8TextFlow6Column8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(41) %2) ; 0 uses
  %i.au = load i64, ptr %i.n, align 8, !tbaa !453
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = load i64, ptr %i.a, align 8
  %i.ax = icmp ne i64 %i.aw, %i.m
  %or.cond.not15 = select i1 %i.av, i1 true, i1 %i.ax
  %i.ay = load ptr, ptr %2, align 8, !nonnull !160, !align !183
  %i.az = icmp ne ptr %i.ay, %1
  %or.cond13 = select i1 %or.cond.not15, i1 true, i1 %i.az
  br i1 %or.cond13, label %_ZNK5Catch5clara8TextFlow6Column8iteratorneERKS3_.exit.thread.peel.next, label %._crit_edge, !llvm.loop !1716
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch5clara8TextFlow6ColumnC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 79, ptr %i.a, align 8, !tbaa !439
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !440
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %i.c, align 8, !tbaa !441
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.b

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #56
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5Catch12TestCaseInfo12tagsAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(164) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !138
  store i8 0, ptr %i.a, align 8, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !251  ; 3 uses
  %.not32 = icmp eq ptr %i.f, %i.e
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.012.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.012.lcssa)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01234 = phi i64 [ %i.m, %.lr.ph ], [ %i.j, %.lr.ph.preheader ]
  %.sroa.028.033 = phi ptr [ %i.n, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.028.033, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !138
  %i.m = add i64 %i.l, %.01234                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.028.033, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !194  ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !194  ; 2 uses
  %.not3135 = icmp eq ptr %i.o, %i.p
  br i1 %.not3135, label %._crit_edge39, label %.lr.ph38

._crit_edge39:                                    ; preds = %bb.g, %bb.b
  ret void

.lr.ph38:                                         ; preds = %bb.b, %bb.g
  %.sroa.024.036 = phi ptr [ %i.av, %bb.g ], [ %i.o, %bb.b ] ; 3 uses
  %i.q = load i64, ptr %i.b, align 8, !tbaa !138  ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph38
  %i.u = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph38
  %i.v = load i64, ptr %i.a, align 8, !tbaa !139
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !137
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.y = phi ptr [ %.pre.i, %.noexc ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store i8 91, ptr %i.z, align 1, !tbaa !139
  store i64 %i.r, ptr %i.b, align 8, !tbaa !138
  %i.aa = load ptr, ptr %0, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r
  store i8 0, ptr %i.ab, align 1, !tbaa !139
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.024.036, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !138 ; 2 uses
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !138
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.445) #58
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.d
  %i.ah = load ptr, ptr %.sroa.024.036, align 8, !tbaa !137
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ah, i64 noundef %i.ad)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN5Catch10Generators16GeneratorTrackerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5Catch10Generators16GeneratorTrackerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5Catch10Generators16GeneratorTrackerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch10Generators16GeneratorTrackerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !951  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !139
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #56
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch5clara6detail6Parser13writeToStreamERSo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %6 = alloca %"class.std::vector.529", align 8   ; 10 uses
  %7 = alloca %"class.Catch::clara::TextFlow::Columns", align 8 ; 10 uses
  %8 = alloca %"class.Catch::clara::TextFlow::Columns", align 8 ; 12 uses
  %9 = alloca %"class.Catch::clara::TextFlow::Column", align 8 ; 15 uses
  %10 = alloca %"class.Catch::clara::TextFlow::Spacer", align 8 ; 15 uses
  %11 = alloca %"class.Catch::clara::TextFlow::Column", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !949, !noalias !3053 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !140, !alias.scope !3053
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !138  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56, !noalias !3053
  store i64 %i.i, ptr %i.c, align 8, !tbaa !164, !noalias !3053
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !137, !alias.scope !3053
  %i.l = load i64, ptr %i.c, align 8, !tbaa !164, !noalias !3053
  store i64 %i.l, ptr %i.f, align 8, !tbaa !139, !alias.scope !3053
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !139
  store i8 %i.n, ptr %i.m, align 1, !tbaa !139
  br label %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit

_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.c, align 8, !tbaa !164, !noalias !3053 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !138, !alias.scope !3053
  %i.q = load ptr, ptr %3, align 8, !tbaa !137, !alias.scope !3053
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56, !noalias !3053
  %i.s = load i64, ptr %i.p, align 8, !tbaa !138  ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = load ptr, ptr %3, align 8, !tbaa !137    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit
  %i.w = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit
  %i.x = load i64, ptr %i.f, align 8, !tbaa !139
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br i1 %i.t, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.385, i64 noundef 7) ; 0 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.122, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !949, !noalias !3054 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !140, !alias.scope !3054
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !137 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !138 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56, !noalias !3054
  store i64 %i.af, ptr %i.b, align 8, !tbaa !164, !noalias !3054
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i48, label %._crit_edge.i.i.i47

.noexc.i.i48:                                     ; preds = %bb.d
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !137, !alias.scope !3054
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !164, !noalias !3054
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !139, !alias.scope !3054
  br label %._crit_edge.i.i.i47

._crit_edge.i.i.i47:                              ; preds = %.noexc.i.i48, %bb.d
  %i.aj = phi ptr [ %i.ah, %.noexc.i.i48 ], [ %i.ac, %bb.d ] ; 2 uses
  switch i64 %i.af, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit49
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i47
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !139
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !139
  br label %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit49

bb.f:                                             ; preds = %._crit_edge.i.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit49

_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit49: ; preds = %._crit_edge.i.i.i47, %bb.e, %bb.f
  %i.al = load i64, ptr %i.b, align 8, !tbaa !164, !noalias !3054 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !138, !alias.scope !3054
  %i.an = load ptr, ptr %4, align 8, !tbaa !137, !alias.scope !3054
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56, !noalias !3054
  %i.ap = load ptr, ptr %4, align 8, !tbaa !137
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !138
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ap, i64 noundef %i.aq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit49
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.109, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.at = load ptr, ptr %4, align 8, !tbaa !137   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ac
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.av = load i64, ptr %i.ac, align 8, !tbaa !139
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !692 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !692 ; 3 uses
  %.not175 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not175, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !236
  %i.bd = icmp eq i32 %.pre, 0
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.386, i64 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.132.peel = phi i8 [ 0, %bb.h ], [ 1, %bb.g ]  ; 2 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.387, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.bb, ptr %5, align 8, !tbaa !140, !alias.scope !3055
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !137, !noalias !3055 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !138, !noalias !3055 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56, !noalias !3055
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !164, !noalias !3055
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i.i57.peel, label %._crit_edge.i.i.i56.peel

.noexc.i.i57.peel:                                ; preds = %bb.i
  %i.bl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bl, ptr %5, align 8, !tbaa !137, !alias.scope !3055
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !164, !noalias !3055
  store i64 %i.bm, ptr %i.bb, align 8, !tbaa !139, !alias.scope !3055
  br label %._crit_edge.i.i.i56.peel

._crit_edge.i.i.i56.peel:                         ; preds = %.noexc.i.i57.peel, %bb.i
  %i.bn = phi ptr [ %i.bl, %.noexc.i.i57.peel ], [ %i.bb, %bb.i ] ; 2 uses
  switch i64 %i.bj, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit.peel
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i56.peel
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !139
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !139
  br label %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit.peel

bb.k:                                             ; preds = %._crit_edge.i.i.i56.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit.peel

_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit.peel: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i56.peel
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !164, !noalias !3055 ; 2 uses
  store i64 %i.bp, ptr %i.bc, align 8, !tbaa !138, !alias.scope !3055
  %i.bq = load ptr, ptr %5, align 8, !tbaa !137, !alias.scope !3055
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56, !noalias !3055
  %i.bs = load ptr, ptr %5, align 8, !tbaa !137
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !138
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bs, i64 noundef %i.bt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58.peel unwind label %.loopexit.split-lp194.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58.peel: ; preds = %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit.peel
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.227, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.peel unwind label %.loopexit.split-lp194.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58.peel
  %i.bw = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bb
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.peel
  %i.by = load i64, ptr %i.bb, align 8, !tbaa !139
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !120
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef i64 %i.cc(ptr noundef nonnull align 8 dereferenceable(96) %i.ay)
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.388, i64 noundef 5) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ay, i64 96 ; 2 uses
  %.not.peel = icmp eq ptr %i.cg, %i.ba
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %bb.t, %bb.m
  %.132.lcssa192 = phi i8 [ %.132.peel, %bb.m ], [ %.132, %bb.t ]
  %i.ch = trunc nuw i8 %.132.lcssa192 to i1
  br i1 %i.ch, label %._crit_edge.thread, label %bb.u

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNK5Catch5clara6detail7ExeName4nameB5cxx11Ev.exit49
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %4, align 8, !tbaa !137   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ac
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.n
  %i.cl = load i64, ptr %i.ac, align 8, !tbaa !139
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.au

.peel.next:                                       ; preds = %bb.m, %bb.t
  %.031177 = phi i8 [ %.132, %bb.t ], [ %.132.peel, %bb.m ] ; 2 uses
  %.sroa.0156.0176 = phi ptr [ %i.dy, %bb.t ], [ %i.cg, %bb.m ] ; 6 uses
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.109, i64 noundef 1) ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0156.0176, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !236
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = trunc nuw i8 %.031177 to i1
  %or.cond = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.peel.next
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.386, i64 noundef 1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.peel.next
  %.132 = phi i8 [ 0, %bb.o ], [ %.031177, %.peel.next ] ; 2 uses
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.387, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0156.0176, i64 32
  store ptr %i.bb, ptr %5, align 8, !tbaa !140, !alias.scope !3056
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !137, !noalias !3056 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0156.0176, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !138, !noalias !3056 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56, !noalias !3056
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !164, !noalias !3056
  %i.cy = icmp ugt i64 %i.cx, 15
  br i1 %i.cy, label %.noexc.i.i57, label %._crit_edge.i.i.i56

.noexc.i.i57:                                     ; preds = %bb.p
  %i.cz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cz, ptr %5, align 8, !tbaa !137, !alias.scope !3056
  %i.da = load i64, ptr %i.a, align 8, !tbaa !164, !noalias !3056
  store i64 %i.da, ptr %i.bb, align 8, !tbaa !139, !alias.scope !3056
  br label %._crit_edge.i.i.i56

._crit_edge.i.i.i56:                              ; preds = %.noexc.i.i57, %bb.p
  %i.db = phi ptr [ %i.cz, %.noexc.i.i57 ], [ %i.bb, %bb.p ] ; 2 uses
  switch i64 %i.cx, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i56
  %i.dc = load i8, ptr %i.cv, align 1, !tbaa !139
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !139
  br label %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit

bb.r:                                             ; preds = %._crit_edge.i.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.cv, i64 %i.cx, i1 false)
  br label %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit

_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i56, %bb.q, %bb.r
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !164, !noalias !3056 ; 2 uses
  store i64 %i.dd, ptr %i.bc, align 8, !tbaa !138, !alias.scope !3056
  %i.de = load ptr, ptr %5, align 8, !tbaa !137, !alias.scope !3056
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56, !noalias !3056
  %i.dg = load ptr, ptr %5, align 8, !tbaa !137
  %i.dh = load i64, ptr %i.bc, align 8, !tbaa !138
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dg, i64 noundef %i.dh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58 unwind label %.loopexit.split-lp194.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58: ; preds = %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.227, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %.loopexit.split-lp194.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58
  %i.dk = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bb
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.dm = load i64, ptr %i.bb, align 8, !tbaa !139
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  %i.do = load ptr, ptr %.sroa.0156.0176, align 8, !tbaa !120
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call noundef i64 %i.dq(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0156.0176)
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.388, i64 noundef 5) ; 0 uses
  br label %bb.t

.loopexit.split-lp194.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58, %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit, %_ZNK5Catch5clara6detail13ParserRefImplINS1_3ArgEE4hintB5cxx11Ev.exit.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58.peel
  %lpad.loopexit.split-lp289 = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bb
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %.loopexit.split-lp194.loopexit.split-lp.loopexit.split-lp
  %i.dw = load i64, ptr %i.bb, align 8, !tbaa !139
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %.loopexit.split-lp194.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  br label %bb.au

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0156.0176, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.ba
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !3050

bb.u:                                             ; preds = %._crit_edge
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.389, i64 noundef 1) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.u, %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !691
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !691
  %i.ee = icmp eq ptr %i.eb, %i.ed
  br i1 %i.ee, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread
  %i.ef = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.390, i64 noundef 8) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.thread
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.391, i64 noundef 20) ; 0 uses
  %i.eh = load ptr, ptr %1, align 8, !tbaa !120
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %1, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 240
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !332 ; 6 uses
  %.not.i.i.i127 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i127, label %bb.x, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt16__throw_bad_castv() #58
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.w
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !337
  %.not.i1.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i1.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 67
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !139
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.em)
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !120
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
end_hunk_1
