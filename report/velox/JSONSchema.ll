Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JSONSchema?download=true
inline.NumInlined: 10040
inline.NumDeleted: 4349
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_:bb.a
bb.l:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23
  %i.ak = load ptr, ptr %.sroa.0.2, align 8, !tbaa !421
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27 unwind label %bb.n, !inline_history !11031

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27: ; preds = %bb.l
  %i.an = load ptr, ptr %.sroa.0.2, align 8, !tbaa !421
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29 unwind label %bb.m, !inline_history !363 ; 0 uses

bb.m:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #47
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29: ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.n ], [ %.sroa.0.1, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 ] ; 3 uses
  %.pn17 = phi { ptr, i32 } [ %i.at, %bb.n ], [ %.pn, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 ]
  %.not.i.i30 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i30, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %.sroa.0.3, align 8, !tbaa !421
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.3)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31 unwind label %bb.q, !inline_history !363 ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #47
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.574", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.201", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9224 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !441  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !441  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !447
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !9228 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !11037

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !441  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !447
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %1, ptr %2, align 8, !tbaa !9087
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost13re_detail_50016find_sort_syntaxINS0_31cpp_regex_traits_implementationIcEEcEEjPKT_PT0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca [2 x i8], align 2                 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 97, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !441  ; 3 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !447
  %bcmp.i = call i32 @bcmp(ptr %i.j, ptr nonnull %i.a, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 0, ptr %1, align 1, !tbaa !413
  br label %bb.k

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i16 65, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i16 59, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8, !tbaa !441  ; 18 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %.fr80 = freeze i64 %i.q                        ; 12 uses
  %i.r = trunc i64 %.fr80 to i32
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.r) ; 2 uses
  %or.cond74 = icmp slt i32 %invariant.smin, 0
  br i1 %or.cond74, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = load ptr, ptr %2, align 8, !tbaa !447
  %i.t = load ptr, ptr %3, align 8, !tbaa !447
  %i.u = add nuw i32 %invariant.smin, 1           ; 2 uses
  %wide.trip.count = zext i32 %i.u to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !413
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !413
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread97, label %bb.d, !llvm.loop !11038

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ac = load ptr, ptr %3, align 8, !tbaa !447   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !413
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge:                                        ; preds = %bb.d
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = icmp eq i64 %indvars.iv, 0
  br i1 %i.ai, label %.critedge.thread, label %.critedge.thread97

.critedge.thread97:                               ; preds = %bb.e, %.critedge
  %.0.lcssa99 = phi i32 [ %i.ah, %.critedge ], [ %i.u, %bb.e ] ; 2 uses
  %i.aj = add nsw i32 %.0.lcssa99, -1             ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = load ptr, ptr %2, align 8, !tbaa !447   ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !tbaa !413 ; 13 uses
  %.not31 = icmp eq i32 %i.aj, 0
  br i1 %.not31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.thread97
  %.not.i = icmp eq i64 %i.n, 0                   ; 2 uses
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ao = add i64 %i.n, -1                        ; 2 uses
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp eq i64 %i.ap, 4294967295
  %i.ar = icmp ugt i64 %i.ao, 4294967295
  %i.as = or i1 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check103 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 8589934560               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi104 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi105 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi106 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %index ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %wide.load = load <8 x i8>, ptr %i.au, align 1, !tbaa !413
  %wide.load107 = load <8 x i8>, ptr %i.av, align 1, !tbaa !413
  %wide.load108 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !413
  %wide.load109 = load <8 x i8>, ptr %i.ax, align 1, !tbaa !413
  %i.ay = icmp eq <8 x i8> %wide.load, %broadcast.splat
  %i.az = icmp eq <8 x i8> %wide.load107, %broadcast.splat
  %i.ba = icmp eq <8 x i8> %wide.load108, %broadcast.splat
  %i.bb = icmp eq <8 x i8> %wide.load109, %broadcast.splat
  %i.bc = zext <8 x i1> %i.ay to <8 x i32>
  %i.bd = zext <8 x i1> %i.az to <8 x i32>
  %i.be = zext <8 x i1> %i.ba to <8 x i32>
  %i.bf = zext <8 x i1> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %vec.phi, %i.bc           ; 2 uses
  %i.bh = add <8 x i32> %vec.phi104, %i.bd        ; 2 uses
  %i.bi = add <8 x i32> %vec.phi105, %i.be        ; 2 uses
  %i.bj = add <8 x i32> %vec.phi106, %i.bf        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !11039

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.bh, %i.bg
  %bin.rdx110 = add <8 x i32> %i.bi, %bin.rdx
  %bin.rdx111 = add <8 x i32> %i.bj, %bin.rdx110
  %i.bl = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx111) ; 3 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !11051

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bl, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec112 = and i64 %i.n, 8589934588            ; 3 uses
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert113 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat114 = shufflevector <4 x i8> %broadcast.splatinsert113, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi116 = phi <4 x i32> [ %i.bm, %vec.epilog.ph ], [ %i.bq, %vec.epilog.vector.body ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 %index115
  %wide.load117 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !413
  %i.bo = icmp eq <4 x i8> %wide.load117, %broadcast.splat114
  %i.bp = zext <4 x i1> %i.bo to <4 x i32>
  %i.bq = add <4 x i32> %vec.phi116, %i.bp        ; 2 uses
  %index.next118 = add nuw i64 %index115, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next118, %n.vec112
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11040

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bq) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.n, %n.vec112
  br i1 %cmp.n119, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec112, %vec.epilog.middle.block ]
  %.079.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.079.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !413
  %i.bv = icmp eq i8 %i.bu, %i.an
  %i.bw = zext i1 %i.bv to i32
  %spec.select.i = add i32 %.079.i, %i.bw         ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.bx = and i64 %indvars.iv.next.i, 4294967295
  %i.by = icmp ugt i64 %i.n, %i.bx
  br i1 %i.by, label %.lr.ph.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, !llvm.loop !11041

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.07.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.bs, %vec.epilog.middle.block ], [ %i.bl, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.not.i32 = icmp eq i64 %.fr80, 0
  br i1 %.not.i32, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, label %iter.check147

iter.check147:                                    ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %i.bz = load ptr, ptr %3, align 8, !tbaa !447   ; 3 uses
  %min.iters.check122 = icmp ult i64 %.fr80, 4
  br i1 %min.iters.check122, label %vec.epilog.scalar.ph148.preheader, label %vector.scevcheck121

vector.scevcheck121:                              ; preds = %iter.check147
  %i.ca = add i64 %.fr80, -1                      ; 2 uses
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = icmp eq i64 %i.cb, 4294967295
  %i.cd = icmp ugt i64 %i.ca, 4294967295
  %i.ce = or i1 %i.cc, %i.cd
  br i1 %i.ce, label %vec.epilog.scalar.ph148.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %vector.scevcheck121
  %min.iters.check124 = icmp ult i64 %.fr80, 32
  br i1 %min.iters.check124, label %vec.epilog.ph151, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %i.cf = and i64 %.fr80, 28
  %n.vec126 = and i64 %.fr80, 8589934560          ; 4 uses
  %broadcast.splatinsert127 = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat128 = shufflevector <8 x i8> %broadcast.splatinsert127, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph125
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next139, %vector.body129 ] ; 2 uses
  %vec.phi131 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cs, %vector.body129 ]
  %vec.phi132 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.ct, %vector.body129 ]
  %vec.phi133 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cu, %vector.body129 ]
  %vec.phi134 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cv, %vector.body129 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %wide.load135 = load <8 x i8>, ptr %i.cg, align 1, !tbaa !413
  %wide.load136 = load <8 x i8>, ptr %i.ch, align 1, !tbaa !413
  %wide.load137 = load <8 x i8>, ptr %i.ci, align 1, !tbaa !413
  %wide.load138 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !413
  %i.ck = icmp eq <8 x i8> %wide.load135, %broadcast.splat128
  %i.cl = icmp eq <8 x i8> %wide.load136, %broadcast.splat128
  %i.cm = icmp eq <8 x i8> %wide.load137, %broadcast.splat128
  %i.cn = icmp eq <8 x i8> %wide.load138, %broadcast.splat128
  %i.co = zext <8 x i1> %i.ck to <8 x i32>
  %i.cp = zext <8 x i1> %i.cl to <8 x i32>
  %i.cq = zext <8 x i1> %i.cm to <8 x i32>
  %i.cr = zext <8 x i1> %i.cn to <8 x i32>
  %i.cs = add <8 x i32> %vec.phi131, %i.co        ; 2 uses
  %i.ct = add <8 x i32> %vec.phi132, %i.cp        ; 2 uses
  %i.cu = add <8 x i32> %vec.phi133, %i.cq        ; 2 uses
  %i.cv = add <8 x i32> %vec.phi134, %i.cr        ; 2 uses
  %index.next139 = add nuw i64 %index130, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next139, %n.vec126
  br i1 %i.cw, label %middle.block140, label %vector.body129, !llvm.loop !11042

middle.block140:                                  ; preds = %vector.body129
  %bin.rdx141 = add <8 x i32> %i.ct, %i.cs
  %bin.rdx142 = add <8 x i32> %i.cu, %bin.rdx141
  %bin.rdx143 = add <8 x i32> %i.cv, %bin.rdx142
  %i.cx = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx143) ; 3 uses
  %cmp.n144 = icmp eq i64 %.fr80, %n.vec126
  br i1 %cmp.n144, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, label %vec.epilog.iter.check149

vec.epilog.iter.check149:                         ; preds = %middle.block140
  %min.epilog.iters.check150 = icmp eq i64 %i.cf, 0
  br i1 %min.epilog.iters.check150, label %vec.epilog.scalar.ph148.preheader, label %vec.epilog.ph151, !prof !11051

vec.epilog.ph151:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check149
  %vec.epilog.resume.val145 = phi i64 [ %n.vec126, %vec.epilog.iter.check149 ], [ 0, %vector.main.loop.iter.check123 ]
  %bc.merge.rdx146 = phi i32 [ %i.cx, %vec.epilog.iter.check149 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec152 = and i64 %.fr80, 8589934588          ; 3 uses
  %i.cy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx146, i64 0
  %broadcast.splatinsert153 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat154 = shufflevector <4 x i8> %broadcast.splatinsert153, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body155

vec.epilog.vector.body155:                        ; preds = %vec.epilog.vector.body155, %vec.epilog.ph151
  %index156 = phi i64 [ %vec.epilog.resume.val145, %vec.epilog.ph151 ], [ %index.next159, %vec.epilog.vector.body155 ] ; 2 uses
  %vec.phi157 = phi <4 x i32> [ %i.cy, %vec.epilog.ph151 ], [ %i.dc, %vec.epilog.vector.body155 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index156
  %wide.load158 = load <4 x i8>, ptr %i.cz, align 1, !tbaa !413
  %i.da = icmp eq <4 x i8> %wide.load158, %broadcast.splat154
  %i.db = zext <4 x i1> %i.da to <4 x i32>
  %i.dc = add <4 x i32> %vec.phi157, %i.db        ; 2 uses
  %index.next159 = add nuw i64 %index156, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.dd, label %vec.epilog.middle.block160, label %vec.epilog.vector.body155, !llvm.loop !11043

vec.epilog.middle.block160:                       ; preds = %vec.epilog.vector.body155
  %i.de = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dc) ; 2 uses
  %cmp.n161 = icmp eq i64 %.fr80, %n.vec152
  br i1 %cmp.n161, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, label %vec.epilog.scalar.ph148.preheader

vec.epilog.scalar.ph148.preheader:                ; preds = %vector.scevcheck121, %iter.check147, %vec.epilog.iter.check149, %vec.epilog.middle.block160
  %indvars.iv.i34.ph = phi i64 [ 0, %iter.check147 ], [ 0, %vector.scevcheck121 ], [ %n.vec126, %vec.epilog.iter.check149 ], [ %n.vec152, %vec.epilog.middle.block160 ]
  %.079.i35.ph = phi i32 [ 0, %iter.check147 ], [ 0, %vector.scevcheck121 ], [ %i.cx, %vec.epilog.iter.check149 ], [ %i.de, %vec.epilog.middle.block160 ]
  br label %vec.epilog.scalar.ph148

vec.epilog.scalar.ph148:                          ; preds = %vec.epilog.scalar.ph148.preheader, %vec.epilog.scalar.ph148
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i37, %vec.epilog.scalar.ph148 ], [ %indvars.iv.i34.ph, %vec.epilog.scalar.ph148.preheader ] ; 2 uses
  %.079.i35 = phi i32 [ %spec.select.i36, %vec.epilog.scalar.ph148 ], [ %.079.i35.ph, %vec.epilog.scalar.ph148.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv.i34
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !413
  %i.dh = icmp eq i8 %i.dg, %i.an
  %i.di = zext i1 %i.dh to i32
  %spec.select.i36 = add i32 %.079.i35, %i.di     ; 2 uses
  %indvars.iv.next.i37 = add i64 %indvars.iv.i34, 1 ; 2 uses
  %i.dj = and i64 %indvars.iv.next.i37, 4294967295
  %i.dk = icmp ugt i64 %.fr80, %i.dj
  br i1 %i.dk, label %vec.epilog.scalar.ph148, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, !llvm.loop !11044

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39: ; preds = %vec.epilog.scalar.ph148, %middle.block140, %vec.epilog.middle.block160, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %.07.lcssa.i38 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit ], [ %i.de, %vec.epilog.middle.block160 ], [ %i.cx, %middle.block140 ], [ %spec.select.i36, %vec.epilog.scalar.ph148 ]
  %i.dl = icmp eq i32 %.07.lcssa.i, %.07.lcssa.i38
  br i1 %i.dl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, label %iter.check190

iter.check190:                                    ; preds = %bb.i
  %smax165 = call i64 @llvm.smax.i64(i64 %i.n, i64 1) ; 5 uses
  %min.iters.check166 = icmp slt i64 %i.n, 4
  br i1 %min.iters.check166, label %.lr.ph.i41.preheader, label %vector.scevcheck164

vector.scevcheck164:                              ; preds = %iter.check190
  %i.dm = add nsw i64 %i.n, -1                    ; 2 uses
  %i.dn = and i64 %i.dm, 4294967295
  %i.do = icmp eq i64 %i.dn, 4294967295
  %i.dp = icmp ugt i64 %i.dm, 4294967295
  %i.dq = or i1 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph.i41.preheader, label %vector.main.loop.iter.check166

vector.main.loop.iter.check166:                   ; preds = %vector.scevcheck164
  %min.iters.check168 = icmp slt i64 %i.n, 32
  br i1 %min.iters.check168, label %vec.epilog.ph194, label %vector.ph168

vector.ph168:                                     ; preds = %vector.main.loop.iter.check166
  %i.dr = and i64 %smax165, 28
  %n.vec169 = and i64 %smax165, 8589934560        ; 4 uses
  %broadcast.splatinsert170 = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat171 = shufflevector <8 x i8> %broadcast.splatinsert170, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph168
  %index173 = phi i64 [ 0, %vector.ph168 ], [ %index.next182, %vector.body172 ] ; 2 uses
  %vec.phi174 = phi <8 x i32> [ zeroinitializer, %vector.ph168 ], [ %i.ee, %vector.body172 ]
  %vec.phi175 = phi <8 x i32> [ zeroinitializer, %vector.ph168 ], [ %i.ef, %vector.body172 ]
  %vec.phi176 = phi <8 x i32> [ zeroinitializer, %vector.ph168 ], [ %i.eg, %vector.body172 ]
  %vec.phi177 = phi <8 x i32> [ zeroinitializer, %vector.ph168 ], [ %i.eh, %vector.body172 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.al, i64 %index173 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %wide.load178 = load <8 x i8>, ptr %i.ds, align 1, !tbaa !413
  %wide.load179 = load <8 x i8>, ptr %i.dt, align 1, !tbaa !413
  %wide.load180 = load <8 x i8>, ptr %i.du, align 1, !tbaa !413
  %wide.load181 = load <8 x i8>, ptr %i.dv, align 1, !tbaa !413
  %i.dw = icmp eq <8 x i8> %wide.load178, %broadcast.splat171
  %i.dx = icmp eq <8 x i8> %wide.load179, %broadcast.splat171
  %i.dy = icmp eq <8 x i8> %wide.load180, %broadcast.splat171
  %i.dz = icmp eq <8 x i8> %wide.load181, %broadcast.splat171
  %i.ea = zext <8 x i1> %i.dw to <8 x i32>
  %i.eb = zext <8 x i1> %i.dx to <8 x i32>
  %i.ec = zext <8 x i1> %i.dy to <8 x i32>
  %i.ed = zext <8 x i1> %i.dz to <8 x i32>
  %i.ee = add <8 x i32> %vec.phi174, %i.ea        ; 2 uses
  %i.ef = add <8 x i32> %vec.phi175, %i.eb        ; 2 uses
  %i.eg = add <8 x i32> %vec.phi176, %i.ec        ; 2 uses
  %i.eh = add <8 x i32> %vec.phi177, %i.ed        ; 2 uses
  %index.next182 = add nuw i64 %index173, 32      ; 2 uses
  %i.ei = icmp eq i64 %index.next182, %n.vec169
  br i1 %i.ei, label %middle.block183, label %vector.body172, !llvm.loop !11045

middle.block183:                                  ; preds = %vector.body172
  %bin.rdx184 = add <8 x i32> %i.ef, %i.ee
  %bin.rdx185 = add <8 x i32> %i.eg, %bin.rdx184
  %bin.rdx186 = add <8 x i32> %i.eh, %bin.rdx185
  %i.ej = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx186) ; 3 uses
  %cmp.n187 = icmp eq i64 %smax165, %n.vec169
  br i1 %cmp.n187, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, label %vec.epilog.iter.check192

vec.epilog.iter.check192:                         ; preds = %middle.block183
  %min.epilog.iters.check193 = icmp eq i64 %i.dr, 0
  br i1 %min.epilog.iters.check193, label %.lr.ph.i41.preheader, label %vec.epilog.ph194, !prof !11051

vec.epilog.ph194:                                 ; preds = %vector.main.loop.iter.check166, %vec.epilog.iter.check192
  %vec.epilog.resume.val188 = phi i64 [ %n.vec169, %vec.epilog.iter.check192 ], [ 0, %vector.main.loop.iter.check166 ]
  %bc.merge.rdx189 = phi i32 [ %i.ej, %vec.epilog.iter.check192 ], [ 0, %vector.main.loop.iter.check166 ]
  %n.vec195 = and i64 %smax165, 8589934588        ; 3 uses
  %i.ek = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx189, i64 0
  %broadcast.splatinsert196 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat197 = shufflevector <4 x i8> %broadcast.splatinsert196, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body198

vec.epilog.vector.body198:                        ; preds = %vec.epilog.vector.body198, %vec.epilog.ph194
  %index199 = phi i64 [ %vec.epilog.resume.val188, %vec.epilog.ph194 ], [ %index.next202, %vec.epilog.vector.body198 ] ; 2 uses
  %vec.phi200 = phi <4 x i32> [ %i.ek, %vec.epilog.ph194 ], [ %i.eo, %vec.epilog.vector.body198 ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.al, i64 %index199
  %wide.load201 = load <4 x i8>, ptr %i.el, align 1, !tbaa !413
  %i.em = icmp eq <4 x i8> %wide.load201, %broadcast.splat197
  %i.en = zext <4 x i1> %i.em to <4 x i32>
  %i.eo = add <4 x i32> %vec.phi200, %i.en        ; 2 uses
  %index.next202 = add nuw i64 %index199, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.ep, label %vec.epilog.middle.block203, label %vec.epilog.vector.body198, !llvm.loop !11046

vec.epilog.middle.block203:                       ; preds = %vec.epilog.vector.body198
  %i.eq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eo) ; 2 uses
  %cmp.n204 = icmp eq i64 %smax165, %n.vec195
  br i1 %cmp.n204, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, label %.lr.ph.i41.preheader

.lr.ph.i41.preheader:                             ; preds = %vector.scevcheck164, %iter.check190, %vec.epilog.iter.check192, %vec.epilog.middle.block203
  %indvars.iv.i42.ph = phi i64 [ 0, %iter.check190 ], [ 0, %vector.scevcheck164 ], [ %n.vec169, %vec.epilog.iter.check192 ], [ %n.vec195, %vec.epilog.middle.block203 ]
  %.079.i43.ph = phi i32 [ 0, %iter.check190 ], [ 0, %vector.scevcheck164 ], [ %i.ej, %vec.epilog.iter.check192 ], [ %i.eq, %vec.epilog.middle.block203 ]
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i45, %.lr.ph.i41 ], [ %indvars.iv.i42.ph, %.lr.ph.i41.preheader ] ; 2 uses
  %.079.i43 = phi i32 [ %spec.select.i44, %.lr.ph.i41 ], [ %.079.i43.ph, %.lr.ph.i41.preheader ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i42
  %i.es = load i8, ptr %i.er, align 1, !tbaa !413
  %i.et = icmp eq i8 %i.es, %i.an
  %i.eu = zext i1 %i.et to i32
  %spec.select.i44 = add i32 %.079.i43, %i.eu     ; 2 uses
  %indvars.iv.next.i45 = add i64 %indvars.iv.i42, 1 ; 2 uses
  %i.ev = and i64 %indvars.iv.next.i45, 4294967295
  %i.ew = icmp samesign ugt i64 %i.n, %i.ev
  br i1 %i.ew, label %.lr.ph.i41, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, !llvm.loop !11047

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47: ; preds = %.lr.ph.i41, %middle.block183, %vec.epilog.middle.block203, %bb.i
  %.07.lcssa.i46 = phi i32 [ 0, %bb.i ], [ %i.eq, %vec.epilog.middle.block203 ], [ %i.ej, %middle.block183 ], [ %spec.select.i44, %.lr.ph.i41 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !441 ; 10 uses
  %.not.i48 = icmp eq i64 %i.ey, 0
  br i1 %.not.i48, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, label %iter.check233

iter.check233:                                    ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47
  %i.ez = load ptr, ptr %4, align 8, !tbaa !447   ; 3 uses
  %min.iters.check208 = icmp ult i64 %i.ey, 4
  br i1 %min.iters.check208, label %vec.epilog.scalar.ph234.preheader, label %vector.scevcheck207

vector.scevcheck207:                              ; preds = %iter.check233
  %i.fa = add i64 %i.ey, -1                       ; 2 uses
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = icmp eq i64 %i.fb, 4294967295
  %i.fd = icmp ugt i64 %i.fa, 4294967295
  %i.fe = or i1 %i.fc, %i.fd
  br i1 %i.fe, label %vec.epilog.scalar.ph234.preheader, label %vector.main.loop.iter.check209

vector.main.loop.iter.check209:                   ; preds = %vector.scevcheck207
  %min.iters.check210 = icmp ult i64 %i.ey, 32
  br i1 %min.iters.check210, label %vec.epilog.ph237, label %vector.ph211

vector.ph211:                                     ; preds = %vector.main.loop.iter.check209
  %i.ff = and i64 %i.ey, 28
  %n.vec212 = and i64 %i.ey, 8589934560           ; 4 uses
  %broadcast.splatinsert213 = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat214 = shufflevector <8 x i8> %broadcast.splatinsert213, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph211
  %index216 = phi i64 [ 0, %vector.ph211 ], [ %index.next225, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <8 x i32> [ zeroinitializer, %vector.ph211 ], [ %i.fs, %vector.body215 ]
  %vec.phi218 = phi <8 x i32> [ zeroinitializer, %vector.ph211 ], [ %i.ft, %vector.body215 ]
  %vec.phi219 = phi <8 x i32> [ zeroinitializer, %vector.ph211 ], [ %i.fu, %vector.body215 ]
  %vec.phi220 = phi <8 x i32> [ zeroinitializer, %vector.ph211 ], [ %i.fv, %vector.body215 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 %index216 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %wide.load221 = load <8 x i8>, ptr %i.fg, align 1, !tbaa !413
  %wide.load222 = load <8 x i8>, ptr %i.fh, align 1, !tbaa !413
  %wide.load223 = load <8 x i8>, ptr %i.fi, align 1, !tbaa !413
  %wide.load224 = load <8 x i8>, ptr %i.fj, align 1, !tbaa !413
  %i.fk = icmp eq <8 x i8> %wide.load221, %broadcast.splat214
  %i.fl = icmp eq <8 x i8> %wide.load222, %broadcast.splat214
  %i.fm = icmp eq <8 x i8> %wide.load223, %broadcast.splat214
  %i.fn = icmp eq <8 x i8> %wide.load224, %broadcast.splat214
  %i.fo = zext <8 x i1> %i.fk to <8 x i32>
  %i.fp = zext <8 x i1> %i.fl to <8 x i32>
  %i.fq = zext <8 x i1> %i.fm to <8 x i32>
  %i.fr = zext <8 x i1> %i.fn to <8 x i32>
  %i.fs = add <8 x i32> %vec.phi217, %i.fo        ; 2 uses
  %i.ft = add <8 x i32> %vec.phi218, %i.fp        ; 2 uses
  %i.fu = add <8 x i32> %vec.phi219, %i.fq        ; 2 uses
  %i.fv = add <8 x i32> %vec.phi220, %i.fr        ; 2 uses
  %index.next225 = add nuw i64 %index216, 32      ; 2 uses
  %i.fw = icmp eq i64 %index.next225, %n.vec212
  br i1 %i.fw, label %middle.block226, label %vector.body215, !llvm.loop !11048

middle.block226:                                  ; preds = %vector.body215
  %bin.rdx227 = add <8 x i32> %i.ft, %i.fs
  %bin.rdx228 = add <8 x i32> %i.fu, %bin.rdx227
  %bin.rdx229 = add <8 x i32> %i.fv, %bin.rdx228
  %i.fx = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx229) ; 3 uses
  %cmp.n230 = icmp eq i64 %i.ey, %n.vec212
  br i1 %cmp.n230, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, label %vec.epilog.iter.check235

vec.epilog.iter.check235:                         ; preds = %middle.block226
  %min.epilog.iters.check236 = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check236, label %vec.epilog.scalar.ph234.preheader, label %vec.epilog.ph237, !prof !11051

vec.epilog.ph237:                                 ; preds = %vector.main.loop.iter.check209, %vec.epilog.iter.check235
  %vec.epilog.resume.val231 = phi i64 [ %n.vec212, %vec.epilog.iter.check235 ], [ 0, %vector.main.loop.iter.check209 ]
  %bc.merge.rdx232 = phi i32 [ %i.fx, %vec.epilog.iter.check235 ], [ 0, %vector.main.loop.iter.check209 ]
  %n.vec238 = and i64 %i.ey, 8589934588           ; 3 uses
  %i.fy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx232, i64 0
  %broadcast.splatinsert239 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat240 = shufflevector <4 x i8> %broadcast.splatinsert239, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body241

vec.epilog.vector.body241:                        ; preds = %vec.epilog.vector.body241, %vec.epilog.ph237
  %index242 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph237 ], [ %index.next245, %vec.epilog.vector.body241 ] ; 2 uses
  %vec.phi243 = phi <4 x i32> [ %i.fy, %vec.epilog.ph237 ], [ %i.gc, %vec.epilog.vector.body241 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ez, i64 %index242
  %wide.load244 = load <4 x i8>, ptr %i.fz, align 1, !tbaa !413
  %i.ga = icmp eq <4 x i8> %wide.load244, %broadcast.splat240
  %i.gb = zext <4 x i1> %i.ga to <4 x i32>
  %i.gc = add <4 x i32> %vec.phi243, %i.gb        ; 2 uses
  %index.next245 = add nuw i64 %index242, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next245, %n.vec238
  br i1 %i.gd, label %vec.epilog.middle.block246, label %vec.epilog.vector.body241, !llvm.loop !11049

vec.epilog.middle.block246:                       ; preds = %vec.epilog.vector.body241
  %i.ge = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gc) ; 2 uses
  %cmp.n247 = icmp eq i64 %i.ey, %n.vec238
  br i1 %cmp.n247, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, label %vec.epilog.scalar.ph234.preheader

vec.epilog.scalar.ph234.preheader:                ; preds = %vector.scevcheck207, %iter.check233, %vec.epilog.iter.check235, %vec.epilog.middle.block246
  %indvars.iv.i50.ph = phi i64 [ 0, %iter.check233 ], [ 0, %vector.scevcheck207 ], [ %n.vec212, %vec.epilog.iter.check235 ], [ %n.vec238, %vec.epilog.middle.block246 ]
  %.079.i51.ph = phi i32 [ 0, %iter.check233 ], [ 0, %vector.scevcheck207 ], [ %i.fx, %vec.epilog.iter.check235 ], [ %i.ge, %vec.epilog.middle.block246 ]
  br label %vec.epilog.scalar.ph234

vec.epilog.scalar.ph234:                          ; preds = %vec.epilog.scalar.ph234.preheader, %vec.epilog.scalar.ph234
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i53, %vec.epilog.scalar.ph234 ], [ %indvars.iv.i50.ph, %vec.epilog.scalar.ph234.preheader ] ; 2 uses
  %.079.i51 = phi i32 [ %spec.select.i52, %vec.epilog.scalar.ph234 ], [ %.079.i51.ph, %vec.epilog.scalar.ph234.preheader ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.i50
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !413
  %i.gh = icmp eq i8 %i.gg, %i.an
  %i.gi = zext i1 %i.gh to i32
  %spec.select.i52 = add i32 %.079.i51, %i.gi     ; 2 uses
  %indvars.iv.next.i53 = add i64 %indvars.iv.i50, 1 ; 2 uses
  %i.gj = and i64 %indvars.iv.next.i53, 4294967295
  %i.gk = icmp ugt i64 %i.ey, %i.gj
  br i1 %i.gk, label %vec.epilog.scalar.ph234, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, !llvm.loop !11050

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55: ; preds = %vec.epilog.scalar.ph234, %middle.block226, %vec.epilog.middle.block246, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47
  %.07.lcssa.i54 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47 ], [ %i.ge, %vec.epilog.middle.block246 ], [ %i.fx, %middle.block226 ], [ %spec.select.i52, %vec.epilog.scalar.ph234 ]
  %i.gl = icmp eq i32 %.07.lcssa.i46, %.07.lcssa.i54
  br i1 %i.gl, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, %.critedge.thread97
  %i.gm = icmp eq i64 %i.n, %.fr80
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = icmp eq i64 %i.n, %i.go
  %or.cond73 = select i1 %i.gm, i1 %i.gp, i1 false ; 2 uses
  %i.gq = trunc i32 %.0.lcssa99 to i8
  %spec.select = select i1 %or.cond73, i8 %i.gq, i8 0
  %spec.select101 = select i1 %or.cond73, i32 1, i32 3
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, %.critedge, %.preheader
  %.sink = phi i8 [ 0, %.critedge ], [ %spec.select, %bb.j ], [ %i.an, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55 ], [ 0, %.preheader ]
  %.1 = phi i32 [ 3, %.critedge ], [ %spec.select101, %bb.j ], [ 2, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55 ], [ 3, %.preheader ]
  store i8 %.sink, ptr %1, align 1, !tbaa !413
  %i.gr = load ptr, ptr %4, align 8, !tbaa !447   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.critedge.thread
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !413
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.critedge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.gw = load ptr, ptr %3, align 8, !tbaa !447   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !413
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ab, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.hb = load ptr, ptr %2, align 8, !tbaa !447   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !413
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #49
end_hunk_0
