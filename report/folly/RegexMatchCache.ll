Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_:bb.a

bb.m:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #41
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
  %i.au = load ptr, ptr %.sroa.0.3, align 8, !tbaa !797
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.3)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31 unwind label %bb.q, !inline_history !732 ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #41
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.234", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.221", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19850 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19673 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19673 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19672
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #39 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !19854 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !20563

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19673 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19672
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #39 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  store ptr %1, ptr %2, align 8, !tbaa !19763
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i16 97, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19673 ; 3 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #39
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !19672
  %bcmp.i = call i32 @bcmp(ptr %i.j, ptr nonnull %i.a, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 0, ptr %1, align 1, !tbaa !19682
  br label %bb.k

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store i16 65, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store i16 59, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8, !tbaa !19673 ; 14 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %.fr80 = freeze i64 %i.q                        ; 8 uses
  %i.r = trunc i64 %.fr80 to i32
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.r) ; 2 uses
  %or.cond74 = icmp slt i32 %invariant.smin, 0
  br i1 %or.cond74, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = load ptr, ptr %2, align 8, !tbaa !19672
  %i.t = load ptr, ptr %3, align 8, !tbaa !19672
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19682
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19682
  %i.y = icmp eq i8 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %.critedge.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %or.cond = icmp slt i32 %invariant.smin, %indvars
  br i1 %or.cond, label %.critedge, label %bb.d, !llvm.loop !20564

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.ab = load ptr, ptr %3, align 8, !tbaa !19672 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !19682
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge.split.loop.exit:                        ; preds = %bb.d
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.split.loop.exit
  %.0.lcssa = phi i32 [ %5, %.critedge.split.loop.exit ], [ %indvars, %bb.e ] ; 3 uses
  %i.ag = icmp eq i32 %.0.lcssa, 0
  br i1 %i.ag, label %.critedge.thread, label %.critedge.thread97

.critedge.thread97:                               ; preds = %.critedge
  %i.ah = add nsw i32 %.0.lcssa, -1               ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = load ptr, ptr %2, align 8, !tbaa !19672 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19682 ; 9 uses
  %.not31 = icmp eq i32 %i.ah, 0
  br i1 %.not31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.thread97
  %.not.i = icmp eq i64 %i.n, 0                   ; 2 uses
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader168, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.am = add i64 %i.n, -1                        ; 2 uses
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp eq i64 %i.an, 4294967295
  %i.ap = icmp ugt i64 %i.am, 4294967295
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.i.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.n, 8589934584               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi103 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %wide.load = load <4 x i8>, ptr %i.ar, align 1, !tbaa !19682
  %wide.load104 = load <4 x i8>, ptr %i.as, align 1, !tbaa !19682
  %i.at = icmp eq <4 x i8> %wide.load, %broadcast.splat
  %i.au = icmp eq <4 x i8> %wide.load104, %broadcast.splat
  %i.av = zext <4 x i1> %i.at to <4 x i32>
  %i.aw = zext <4 x i1> %i.au to <4 x i32>
  %i.ax = add <4 x i32> %vec.phi, %i.av           ; 2 uses
  %i.ay = add <4 x i32> %vec.phi103, %i.aw        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !20565

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %.lr.ph.i.preheader168

.lr.ph.i.preheader168:                            ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader168, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader168 ] ; 2 uses
  %.079.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader168 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19682
  %i.bd = icmp eq i8 %i.bc, %i.al
  %i.be = zext i1 %i.bd to i32
  %spec.select.i = add i32 %.079.i, %i.be         ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.bf = and i64 %indvars.iv.next.i, 4294967295
  %i.bg = icmp ugt i64 %i.n, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, !llvm.loop !20566

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.h
  %.07.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.ba, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.not.i32 = icmp eq i64 %.fr80, 0
  br i1 %.not.i32, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %i.bh = load ptr, ptr %3, align 8, !tbaa !19672 ; 2 uses
  %min.iters.check107 = icmp ult i64 %.fr80, 8
  br i1 %min.iters.check107, label %scalar.ph106.preheader, label %vector.scevcheck105

vector.scevcheck105:                              ; preds = %.lr.ph.i33
  %i.bi = add i64 %.fr80, -1                      ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = icmp eq i64 %i.bj, 4294967295
  %i.bl = icmp ugt i64 %i.bi, 4294967295
  %i.bm = or i1 %i.bk, %i.bl
  br i1 %i.bm, label %scalar.ph106.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %vector.scevcheck105
  %n.vec109 = and i64 %.fr80, 8589934584          ; 3 uses
  %broadcast.splatinsert110 = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat111 = shufflevector <4 x i8> %broadcast.splatinsert110, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next118, %vector.body112 ] ; 2 uses
  %vec.phi114 = phi <4 x i32> [ zeroinitializer, %vector.ph108 ], [ %i.bt, %vector.body112 ]
  %vec.phi115 = phi <4 x i32> [ zeroinitializer, %vector.ph108 ], [ %i.bu, %vector.body112 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index113 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %wide.load116 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !19682
  %wide.load117 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !19682
  %i.bp = icmp eq <4 x i8> %wide.load116, %broadcast.splat111
  %i.bq = icmp eq <4 x i8> %wide.load117, %broadcast.splat111
  %i.br = zext <4 x i1> %i.bp to <4 x i32>
  %i.bs = zext <4 x i1> %i.bq to <4 x i32>
  %i.bt = add <4 x i32> %vec.phi114, %i.br        ; 2 uses
  %i.bu = add <4 x i32> %vec.phi115, %i.bs        ; 2 uses
  %index.next118 = add nuw i64 %index113, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next118, %n.vec109
  br i1 %i.bv, label %middle.block119, label %vector.body112, !llvm.loop !20567

middle.block119:                                  ; preds = %vector.body112
  %bin.rdx120 = add <4 x i32> %i.bu, %i.bt
  %i.bw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx120) ; 2 uses
  %cmp.n121 = icmp eq i64 %.fr80, %n.vec109
  br i1 %cmp.n121, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %vector.scevcheck105, %.lr.ph.i33, %middle.block119
  %indvars.iv.i34.ph = phi i64 [ 0, %vector.scevcheck105 ], [ 0, %.lr.ph.i33 ], [ %n.vec109, %middle.block119 ]
  %.079.i35.ph = phi i32 [ 0, %vector.scevcheck105 ], [ 0, %.lr.ph.i33 ], [ %i.bw, %middle.block119 ]
  br label %scalar.ph106

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i37, %scalar.ph106 ], [ %indvars.iv.i34.ph, %scalar.ph106.preheader ] ; 2 uses
  %.079.i35 = phi i32 [ %spec.select.i36, %scalar.ph106 ], [ %.079.i35.ph, %scalar.ph106.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.i34
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !19682
  %i.bz = icmp eq i8 %i.by, %i.al
  %i.ca = zext i1 %i.bz to i32
  %spec.select.i36 = add i32 %.079.i35, %i.ca     ; 2 uses
  %indvars.iv.next.i37 = add i64 %indvars.iv.i34, 1 ; 2 uses
  %i.cb = and i64 %indvars.iv.next.i37, 4294967295
  %i.cc = icmp ugt i64 %.fr80, %i.cb
  br i1 %i.cc, label %scalar.ph106, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, !llvm.loop !20568

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39: ; preds = %scalar.ph106, %middle.block119, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %.07.lcssa.i38 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit ], [ %i.bw, %middle.block119 ], [ %spec.select.i36, %scalar.ph106 ]
  %i.cd = icmp eq i32 %.07.lcssa.i, %.07.lcssa.i38
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, label %.lr.ph.i41.preheader

.lr.ph.i41.preheader:                             ; preds = %bb.i
  %min.iters.check126 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check126, label %.lr.ph.i41.preheader163, label %vector.scevcheck124

vector.scevcheck124:                              ; preds = %.lr.ph.i41.preheader
  %i.ce = add i64 %i.n, -1                        ; 2 uses
  %i.cf = and i64 %i.ce, 4294967295
  %i.cg = icmp eq i64 %i.cf, 4294967295
  %i.ch = icmp ugt i64 %i.ce, 4294967295
  %i.ci = or i1 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph.i41.preheader163, label %vector.ph127

vector.ph127:                                     ; preds = %vector.scevcheck124
  %n.vec128 = and i64 %i.n, 8589934584            ; 3 uses
  %broadcast.splatinsert129 = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat130 = shufflevector <4 x i8> %broadcast.splatinsert129, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next137, %vector.body131 ] ; 2 uses
  %vec.phi133 = phi <4 x i32> [ zeroinitializer, %vector.ph127 ], [ %i.cp, %vector.body131 ]
  %vec.phi134 = phi <4 x i32> [ zeroinitializer, %vector.ph127 ], [ %i.cq, %vector.body131 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index132 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %wide.load135 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !19682
  %wide.load136 = load <4 x i8>, ptr %i.ck, align 1, !tbaa !19682
  %i.cl = icmp eq <4 x i8> %wide.load135, %broadcast.splat130
  %i.cm = icmp eq <4 x i8> %wide.load136, %broadcast.splat130
  %i.cn = zext <4 x i1> %i.cl to <4 x i32>
  %i.co = zext <4 x i1> %i.cm to <4 x i32>
  %i.cp = add <4 x i32> %vec.phi133, %i.cn        ; 2 uses
  %i.cq = add <4 x i32> %vec.phi134, %i.co        ; 2 uses
  %index.next137 = add nuw i64 %index132, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next137, %n.vec128
  br i1 %i.cr, label %middle.block138, label %vector.body131, !llvm.loop !20569

middle.block138:                                  ; preds = %vector.body131
  %bin.rdx139 = add <4 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx139) ; 2 uses
  %cmp.n140 = icmp eq i64 %i.n, %n.vec128
  br i1 %cmp.n140, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, label %.lr.ph.i41.preheader163

.lr.ph.i41.preheader163:                          ; preds = %vector.scevcheck124, %.lr.ph.i41.preheader, %middle.block138
  %indvars.iv.i42.ph = phi i64 [ 0, %vector.scevcheck124 ], [ 0, %.lr.ph.i41.preheader ], [ %n.vec128, %middle.block138 ]
  %.079.i43.ph = phi i32 [ 0, %vector.scevcheck124 ], [ 0, %.lr.ph.i41.preheader ], [ %i.cs, %middle.block138 ]
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader163, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i45, %.lr.ph.i41 ], [ %indvars.iv.i42.ph, %.lr.ph.i41.preheader163 ] ; 2 uses
  %.079.i43 = phi i32 [ %spec.select.i44, %.lr.ph.i41 ], [ %.079.i43.ph, %.lr.ph.i41.preheader163 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i42
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !19682
  %i.cv = icmp eq i8 %i.cu, %i.al
  %i.cw = zext i1 %i.cv to i32
  %spec.select.i44 = add i32 %.079.i43, %i.cw     ; 2 uses
  %indvars.iv.next.i45 = add i64 %indvars.iv.i42, 1 ; 2 uses
  %i.cx = and i64 %indvars.iv.next.i45, 4294967295
  %i.cy = icmp samesign ugt i64 %i.n, %i.cx
  br i1 %i.cy, label %.lr.ph.i41, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47, !llvm.loop !20570

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47: ; preds = %.lr.ph.i41, %middle.block138, %bb.i
  %.07.lcssa.i46 = phi i32 [ 0, %bb.i ], [ %i.cs, %middle.block138 ], [ %spec.select.i44, %.lr.ph.i41 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !19673 ; 6 uses
  %.not.i48 = icmp eq i64 %i.da, 0
  br i1 %.not.i48, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47
  %i.db = load ptr, ptr %4, align 8, !tbaa !19672 ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.da, 8
  br i1 %min.iters.check145, label %scalar.ph144.preheader, label %vector.scevcheck143

vector.scevcheck143:                              ; preds = %.lr.ph.i49
  %i.dc = add i64 %i.da, -1                       ; 2 uses
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = icmp eq i64 %i.dd, 4294967295
  %i.df = icmp ugt i64 %i.dc, 4294967295
  %i.dg = or i1 %i.de, %i.df
  br i1 %i.dg, label %scalar.ph144.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %vector.scevcheck143
  %n.vec147 = and i64 %i.da, 8589934584           ; 3 uses
  %broadcast.splatinsert148 = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat149 = shufflevector <4 x i8> %broadcast.splatinsert148, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph146
  %index151 = phi i64 [ 0, %vector.ph146 ], [ %index.next156, %vector.body150 ] ; 2 uses
  %vec.phi152 = phi <4 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.dn, %vector.body150 ]
  %vec.phi153 = phi <4 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.do, %vector.body150 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %index151 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %wide.load154 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !19682
  %wide.load155 = load <4 x i8>, ptr %i.di, align 1, !tbaa !19682
  %i.dj = icmp eq <4 x i8> %wide.load154, %broadcast.splat149
  %i.dk = icmp eq <4 x i8> %wide.load155, %broadcast.splat149
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = zext <4 x i1> %i.dk to <4 x i32>
  %i.dn = add <4 x i32> %vec.phi152, %i.dl        ; 2 uses
  %i.do = add <4 x i32> %vec.phi153, %i.dm        ; 2 uses
  %index.next156 = add nuw i64 %index151, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next156, %n.vec147
  br i1 %i.dp, label %middle.block157, label %vector.body150, !llvm.loop !20571

middle.block157:                                  ; preds = %vector.body150
  %bin.rdx158 = add <4 x i32> %i.do, %i.dn
  %i.dq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx158) ; 2 uses
  %cmp.n159 = icmp eq i64 %i.da, %n.vec147
  br i1 %cmp.n159, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %vector.scevcheck143, %.lr.ph.i49, %middle.block157
  %indvars.iv.i50.ph = phi i64 [ 0, %vector.scevcheck143 ], [ 0, %.lr.ph.i49 ], [ %n.vec147, %middle.block157 ]
  %.079.i51.ph = phi i32 [ 0, %vector.scevcheck143 ], [ 0, %.lr.ph.i49 ], [ %i.dq, %middle.block157 ]
  br label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144.preheader, %scalar.ph144
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i53, %scalar.ph144 ], [ %indvars.iv.i50.ph, %scalar.ph144.preheader ] ; 2 uses
  %.079.i51 = phi i32 [ %spec.select.i52, %scalar.ph144 ], [ %.079.i51.ph, %scalar.ph144.preheader ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv.i50
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !19682
  %i.dt = icmp eq i8 %i.ds, %i.al
  %i.du = zext i1 %i.dt to i32
  %spec.select.i52 = add i32 %.079.i51, %i.du     ; 2 uses
  %indvars.iv.next.i53 = add i64 %indvars.iv.i50, 1 ; 2 uses
  %i.dv = and i64 %indvars.iv.next.i53, 4294967295
  %i.dw = icmp ugt i64 %i.da, %i.dv
  br i1 %i.dw, label %scalar.ph144, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, !llvm.loop !20572

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55: ; preds = %scalar.ph144, %middle.block157, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47
  %.07.lcssa.i54 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit47 ], [ %i.dq, %middle.block157 ], [ %spec.select.i52, %scalar.ph144 ]
  %i.dx = icmp eq i32 %.07.lcssa.i46, %.07.lcssa.i54
  br i1 %i.dx, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit39, %.critedge.thread97
  %i.dy = icmp eq i64 %i.n, %.fr80
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = icmp eq i64 %i.n, %i.ea
  %or.cond73 = select i1 %i.dy, i1 %i.eb, i1 false ; 2 uses
  %i.ec = trunc i32 %.0.lcssa to i8
  %spec.select = select i1 %or.cond73, i8 %i.ec, i8 0
  %spec.select101 = select i1 %or.cond73, i32 1, i32 3
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55, %.critedge, %.preheader
  %.sink = phi i8 [ 0, %.critedge ], [ %spec.select, %bb.j ], [ %i.al, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55 ], [ 0, %.preheader ]
  %.1 = phi i32 [ 3, %.critedge ], [ %spec.select101, %bb.j ], [ 2, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit55 ], [ 3, %.preheader ]
  store i8 %.sink, ptr %1, align 1, !tbaa !19682
  %i.ed = load ptr, ptr %4, align 8, !tbaa !19672 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.critedge.thread
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !19682
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.critedge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.ei = load ptr, ptr %3, align 8, !tbaa !19672 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !19682
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  %i.en = load ptr, ptr %2, align 8, !tbaa !19672 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !19682
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.2 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  %i.es = load ptr, ptr %2, align 8, !tbaa !19672 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.k
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !19682
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const int, std::__cxx11::basic_string<char>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store ptr %0, ptr %5, align 8, !tbaa !20575
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #43 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !19861
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19786
  store i32 %i.f, ptr %i.c, align 8, !tbaa !20577
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !19764
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !19673
  store i8 0, ptr %i.h, align 8, !tbaa !19682
  store ptr %i.b, ptr %i.a, align 8, !tbaa !20016
  %i.j = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load i32, ptr %i.c, align 8, !tbaa !19786
  %i.q = load i32, ptr %i.o, align 4, !tbaa !19786
  %i.r = icmp slt i32 %i.p, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = phi i1 [ %i.r, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #39
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19853
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !19853
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !19672 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.h, align 8, !tbaa !19682
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #40
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #40
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.k, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19853
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19854 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19786
  %i.i = load i32, ptr %2, align 4, !tbaa !19786
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !19854 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !19786  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19786 ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !19854 ; 2 uses
end_hunk_0
