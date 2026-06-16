inline.NumInlined: 9143
inline.NumDeleted: 3321
begin_hunk_0_@_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_:bb.a

bb.m:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #43
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
  %i.au = load ptr, ptr %.sroa.0.3, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.3)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31 unwind label %bb.q, !inline_history !20135 ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #43
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.240", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.227", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20044 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19738 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19738 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19733
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #41 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !20048 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !20318

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19738 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19733
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #41 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store ptr %1, ptr %2, align 8, !tbaa !19858
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i16 97, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19738 ; 3 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #41
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !19733
  %bcmp.i = call i32 @bcmp(ptr %i.j, ptr nonnull %i.a, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 0, ptr %1, align 1, !tbaa !19747
  br label %bb.k

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i16 65, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i16 59, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  invoke void @_ZNK5boost13re_detail_50031cpp_regex_traits_implementationIcE9transformB5cxx11EPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(437) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8, !tbaa !19738 ; 22 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %.fr77 = freeze i64 %i.q                        ; 12 uses
  %i.r = trunc i64 %.fr77 to i32
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.r) ; 2 uses
  %or.cond71 = icmp slt i32 %invariant.smin, 0
  br i1 %or.cond71, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = load ptr, ptr %2, align 8, !tbaa !19733
  %i.t = load ptr, ptr %3, align 8, !tbaa !19733
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19747
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19747
  %i.y = icmp eq i8 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %.critedge.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %or.cond = icmp slt i32 %invariant.smin, %indvars
  br i1 %or.cond, label %.critedge, label %bb.d, !llvm.loop !20319

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread65
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.ab = load ptr, ptr %3, align 8, !tbaa !19733 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !19747
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge.split.loop.exit:                        ; preds = %bb.d
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.split.loop.exit
  %.025.lcssa = phi i32 [ %5, %.critedge.split.loop.exit ], [ %indvars, %bb.e ] ; 3 uses
  %i.ag = icmp eq i32 %.025.lcssa, 0
  br i1 %i.ag, label %.critedge.thread, label %.critedge.thread94

.critedge.thread94:                               ; preds = %.critedge
  %i.ah = add nsw i32 %.025.lcssa, -1             ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = load ptr, ptr %2, align 8, !tbaa !19733 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19747 ; 13 uses
  %.not31 = icmp eq i32 %i.ah, 0
  br i1 %.not31, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.thread94
  %.not.i = icmp eq i64 %i.n, 0                   ; 2 uses
  br i1 %.not.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.am = add i64 %i.n, -1                        ; 2 uses
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp eq i64 %i.an, 4294967295
  %i.ap = icmp ugt i64 %i.am, 4294967295
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check100 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check100, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 8589934560               ; 5 uses
  %i.ar = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi101.a = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi102 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi103 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %wide.load = load <8 x i8>, ptr %i.as, align 1, !tbaa !19747
  %wide.load104.a = load <8 x i8>, ptr %i.at, align 1, !tbaa !19747
  %wide.load105 = load <8 x i8>, ptr %i.au, align 1, !tbaa !19747
  %wide.load106 = load <8 x i8>, ptr %i.av, align 1, !tbaa !19747
  %i.aw = icmp eq <8 x i8> %wide.load, %broadcast.splat
  %i.ax = icmp eq <8 x i8> %wide.load104.a, %broadcast.splat
  %i.ay = icmp eq <8 x i8> %wide.load105, %broadcast.splat
  %i.az = icmp eq <8 x i8> %wide.load106, %broadcast.splat
  %i.ba = zext <8 x i1> %i.aw to <8 x i32>
  %i.bb = zext <8 x i1> %i.ax to <8 x i32>
  %i.bc = zext <8 x i1> %i.ay to <8 x i32>
  %i.bd = zext <8 x i1> %i.az to <8 x i32>
  %i.be = add <8 x i32> %vec.phi, %i.ba           ; 2 uses
  %i.bf = add <8 x i32> %vec.phi101.a, %i.bb      ; 2 uses
  %i.bg = add <8 x i32> %vec.phi102, %i.bc        ; 2 uses
  %i.bh = add <8 x i32> %vec.phi103, %i.bd        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !20320

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.bf, %i.be
  %bin.rdx107 = add <8 x i32> %i.bg, %bin.rdx
  %bin.rdx108 = add <8 x i32> %i.bh, %bin.rdx107
  %i.bj = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx108) ; 3 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20323

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.n, 8589934588            ; 4 uses
  %i.bk = trunc i64 %n.vec110 to i32
  %i.bl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert111 = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat112 = shufflevector <4 x i8> %broadcast.splatinsert111, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi114 = phi <4 x i32> [ %i.bl, %vec.epilog.ph ], [ %i.bp, %vec.epilog.vector.body ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index113
  %wide.load115 = load <4 x i8>, ptr %i.bm, align 1, !tbaa !19747
  %i.bn = icmp eq <4 x i8> %wide.load115, %broadcast.splat112
  %i.bo = zext <4 x i1> %i.bn to <4 x i32>
  %i.bp = add <4 x i32> %vec.phi114, %i.bo        ; 2 uses
  %index.next116 = add nuw i64 %index113, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next116, %n.vec110
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20324

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.br = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bp) ; 2 uses
  %cmp.n117 = icmp eq i64 %i.n, %n.vec110
  br i1 %cmp.n117, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph275 = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec110, %vec.epilog.middle.block ]
  %.010.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.079.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bs = phi i64 [ %i.by, %.lr.ph.i ], [ %.ph275, %.lr.ph.i.preheader ]
  %.010.i = phi i32 [ %i.bx, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader ]
  %.079.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !19747
  %i.bv = icmp eq i8 %i.bu, %i.al
  %i.bw = zext i1 %i.bv to i32
  %spec.select.i = add i32 %.079.i, %i.bw         ; 2 uses
  %i.bx = add i32 %.010.i, 1                      ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = icmp ugt i64 %i.n, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit, !llvm.loop !20325

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.07.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.br, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.not.i32 = icmp eq i64 %.fr77, 0
  br i1 %.not.i32, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38, label %iter.check148

iter.check148:                                    ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit
  %i.ca = load ptr, ptr %3, align 8, !tbaa !19733 ; 3 uses
  %min.iters.check122.a = icmp ult i64 %.fr77, 4
  br i1 %min.iters.check122.a, label %vec.epilog.scalar.ph149.preheader, label %vector.scevcheck121

vector.scevcheck121:                              ; preds = %iter.check148
  %i.cb = add i64 %.fr77, -1                      ; 2 uses
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp eq i64 %i.cc, 4294967295
  %i.ce = icmp ugt i64 %i.cb, 4294967295
  %i.cf = or i1 %i.cd, %i.ce
  br i1 %i.cf, label %vec.epilog.scalar.ph149.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %vector.scevcheck121
  %min.iters.check124 = icmp ult i64 %.fr77, 32
  br i1 %min.iters.check124, label %vec.epilog.ph152, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.mod.vf126 = and i64 %.fr77, 28
  %n.vec127 = and i64 %.fr77, 8589934560          ; 5 uses
  %i.cg = trunc i64 %n.vec127 to i32
  %broadcast.splatinsert128 = insertelement <8 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat129 = shufflevector <8 x i8> %broadcast.splatinsert128, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph125
  %index131 = phi i64 [ 0, %vector.ph125 ], [ %index.next140, %vector.body130 ] ; 2 uses
  %vec.phi132.a = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.ct, %vector.body130 ]
  %vec.phi133.a = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cu, %vector.body130 ]
  %vec.phi134 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cv, %vector.body130 ]
  %vec.phi135 = phi <8 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.cw, %vector.body130 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 %index131 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %wide.load136.a = load <8 x i8>, ptr %i.ch, align 1, !tbaa !19747
  %wide.load137.a = load <8 x i8>, ptr %i.ci, align 1, !tbaa !19747
  %wide.load138 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !19747
  %wide.load139 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !19747
  %i.cl = icmp eq <8 x i8> %wide.load136.a, %broadcast.splat129
  %i.cm = icmp eq <8 x i8> %wide.load137.a, %broadcast.splat129
  %i.cn = icmp eq <8 x i8> %wide.load138, %broadcast.splat129
  %i.co = icmp eq <8 x i8> %wide.load139, %broadcast.splat129
  %i.cp = zext <8 x i1> %i.cl to <8 x i32>
  %i.cq = zext <8 x i1> %i.cm to <8 x i32>
  %i.cr = zext <8 x i1> %i.cn to <8 x i32>
  %i.cs = zext <8 x i1> %i.co to <8 x i32>
  %i.ct = add <8 x i32> %vec.phi132.a, %i.cp      ; 2 uses
  %i.cu = add <8 x i32> %vec.phi133.a, %i.cq      ; 2 uses
  %i.cv = add <8 x i32> %vec.phi134, %i.cr        ; 2 uses
  %i.cw = add <8 x i32> %vec.phi135, %i.cs        ; 2 uses
  %index.next140 = add nuw i64 %index131, 32      ; 2 uses
  %i.cx = icmp eq i64 %index.next140, %n.vec127
  br i1 %i.cx, label %middle.block141, label %vector.body130, !llvm.loop !20326

middle.block141:                                  ; preds = %vector.body130
  %bin.rdx142.a = add <8 x i32> %i.cu, %i.ct
  %bin.rdx143 = add <8 x i32> %i.cv, %bin.rdx142.a
  %bin.rdx144 = add <8 x i32> %i.cw, %bin.rdx143
  %i.cy = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx144) ; 3 uses
  %cmp.n145 = icmp eq i64 %.fr77, %n.vec127
  br i1 %cmp.n145, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38, label %vec.epilog.iter.check150

vec.epilog.iter.check150:                         ; preds = %middle.block141
  %min.epilog.iters.check151 = icmp eq i64 %n.mod.vf126, 0
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph149.preheader, label %vec.epilog.ph152, !prof !20323

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check150
  %vec.epilog.resume.val146 = phi i64 [ %n.vec127, %vec.epilog.iter.check150 ], [ 0, %vector.main.loop.iter.check123 ]
  %bc.merge.rdx147 = phi i32 [ %i.cy, %vec.epilog.iter.check150 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec154 = and i64 %.fr77, 8589934588          ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_50016find_sort_syntaxINS0_31cpp_regex_traits_implementationIcEEcEEjPKT_PT0_:bb.a
  %i.eh = zext <8 x i1> %i.ed to <8 x i32>
  %i.ei = add <8 x i32> %vec.phi178.a, %i.ee      ; 2 uses
  %i.ej = add <8 x i32> %vec.phi179.a, %i.ef      ; 2 uses
  %i.ek = add <8 x i32> %vec.phi180, %i.eg        ; 2 uses
  %i.el = add <8 x i32> %vec.phi181, %i.eh        ; 2 uses
  %index.next186 = add nuw i64 %index177, 32      ; 2 uses
  %i.em = icmp eq i64 %index.next186, %n.vec173
  br i1 %i.em, label %middle.block187, label %vector.body176, !llvm.loop !20329

middle.block187:                                  ; preds = %vector.body176
  %bin.rdx188.a = add <8 x i32> %i.ej, %i.ei
  %bin.rdx189 = add <8 x i32> %i.ek, %bin.rdx188.a
  %bin.rdx190 = add <8 x i32> %i.el, %bin.rdx189
  %i.en = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx190) ; 3 uses
  %cmp.n191 = icmp eq i64 %i.n, %n.vec173
  br i1 %cmp.n191, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block187
  %min.epilog.iters.check197 = icmp eq i64 %n.mod.vf172, 0
  br i1 %min.epilog.iters.check197, label %.lr.ph.i40.preheader, label %vec.epilog.ph198, !prof !20323

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check196
  %vec.epilog.resume.val192 = phi i64 [ %n.vec173, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check169 ]
  %bc.merge.rdx193 = phi i32 [ %i.en, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec200 = and i64 %i.n, 8589934588            ; 4 uses
  %i.eo = trunc i64 %n.vec200 to i32
  %i.ep = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx193, i64 0
  %broadcast.splatinsert201 = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat202 = shufflevector <4 x i8> %broadcast.splatinsert201, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body203

vec.epilog.vector.body203:                        ; preds = %vec.epilog.vector.body203, %vec.epilog.ph198
  %index204 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph198 ], [ %index.next207, %vec.epilog.vector.body203 ] ; 2 uses
  %vec.phi205 = phi <4 x i32> [ %i.ep, %vec.epilog.ph198 ], [ %i.et, %vec.epilog.vector.body203 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index204
  %wide.load206 = load <4 x i8>, ptr %i.eq, align 1, !tbaa !19747
  %i.er = icmp eq <4 x i8> %wide.load206, %broadcast.splat202
  %i.es = zext <4 x i1> %i.er to <4 x i32>
  %i.et = add <4 x i32> %vec.phi205, %i.es        ; 2 uses
  %index.next207 = add nuw i64 %index204, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next207, %n.vec200
  br i1 %i.eu, label %vec.epilog.middle.block208, label %vec.epilog.vector.body203, !llvm.loop !20330

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body203
  %i.ev = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.et) ; 2 uses
  %cmp.n209 = icmp eq i64 %i.n, %n.vec200
  br i1 %cmp.n209, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45, label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %vector.scevcheck167, %iter.check194, %vec.epilog.iter.check196, %vec.epilog.middle.block208
  %.ph263 = phi i64 [ 0, %iter.check194 ], [ 0, %vector.scevcheck167 ], [ %n.vec173, %vec.epilog.iter.check196 ], [ %n.vec200, %vec.epilog.middle.block208 ]
  %.010.i41.ph = phi i32 [ 0, %iter.check194 ], [ 0, %vector.scevcheck167 ], [ %i.dv, %vec.epilog.iter.check196 ], [ %i.eo, %vec.epilog.middle.block208 ]
  %.079.i42.ph = phi i32 [ 0, %iter.check194 ], [ 0, %vector.scevcheck167 ], [ %i.en, %vec.epilog.iter.check196 ], [ %i.ev, %vec.epilog.middle.block208 ]
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader, %.lr.ph.i40
  %i.ew = phi i64 [ %i.fc, %.lr.ph.i40 ], [ %.ph263, %.lr.ph.i40.preheader ]
  %.010.i41 = phi i32 [ %i.fb, %.lr.ph.i40 ], [ %.010.i41.ph, %.lr.ph.i40.preheader ]
  %.079.i42 = phi i32 [ %spec.select.i43, %.lr.ph.i40 ], [ %.079.i42.ph, %.lr.ph.i40.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !19747
  %i.ez = icmp eq i8 %i.ey, %i.al
  %i.fa = zext i1 %i.ez to i32
  %spec.select.i43 = add i32 %.079.i42, %i.fa     ; 2 uses
  %i.fb = add i32 %.010.i41, 1                    ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp samesign ugt i64 %i.n, %i.fc
  br i1 %i.fd, label %.lr.ph.i40, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45, !llvm.loop !20331

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45: ; preds = %.lr.ph.i40, %middle.block187, %vec.epilog.middle.block208, %bb.i
  %.07.lcssa.i44 = phi i32 [ 0, %bb.i ], [ %i.ev, %vec.epilog.middle.block208 ], [ %i.en, %middle.block187 ], [ %spec.select.i43, %.lr.ph.i40 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !19738 ; 10 uses
  %.not.i46 = icmp eq i64 %i.ff, 0
  br i1 %.not.i46, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, label %iter.check240

iter.check240:                                    ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45
  %i.fg = load ptr, ptr %4, align 8, !tbaa !19733 ; 3 uses
  %min.iters.check214.a = icmp ult i64 %i.ff, 4
  br i1 %min.iters.check214.a, label %vec.epilog.scalar.ph241.preheader, label %vector.scevcheck213

vector.scevcheck213:                              ; preds = %iter.check240
  %i.fh = add i64 %i.ff, -1                       ; 2 uses
  %i.fi = and i64 %i.fh, 4294967295
  %i.fj = icmp eq i64 %i.fi, 4294967295
  %i.fk = icmp ugt i64 %i.fh, 4294967295
  %i.fl = or i1 %i.fj, %i.fk
  br i1 %i.fl, label %vec.epilog.scalar.ph241.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %vector.scevcheck213
  %min.iters.check216 = icmp ult i64 %i.ff, 32
  br i1 %min.iters.check216, label %vec.epilog.ph244, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %n.mod.vf218 = and i64 %i.ff, 28
  %n.vec219 = and i64 %i.ff, 8589934560           ; 5 uses
  %i.fm = trunc i64 %n.vec219 to i32
  %broadcast.splatinsert220 = insertelement <8 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat221 = shufflevector <8 x i8> %broadcast.splatinsert220, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph217
  %index223 = phi i64 [ 0, %vector.ph217 ], [ %index.next232, %vector.body222 ] ; 2 uses
  %vec.phi224.a = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.fz, %vector.body222 ]
  %vec.phi225.a = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.ga, %vector.body222 ]
  %vec.phi226 = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.gb, %vector.body222 ]
  %vec.phi227 = phi <8 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.gc, %vector.body222 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index223 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %wide.load228.a = load <8 x i8>, ptr %i.fn, align 1, !tbaa !19747
  %wide.load229.a = load <8 x i8>, ptr %i.fo, align 1, !tbaa !19747
  %wide.load230 = load <8 x i8>, ptr %i.fp, align 1, !tbaa !19747
  %wide.load231 = load <8 x i8>, ptr %i.fq, align 1, !tbaa !19747
  %i.fr = icmp eq <8 x i8> %wide.load228.a, %broadcast.splat221
  %i.fs = icmp eq <8 x i8> %wide.load229.a, %broadcast.splat221
  %i.ft = icmp eq <8 x i8> %wide.load230, %broadcast.splat221
  %i.fu = icmp eq <8 x i8> %wide.load231, %broadcast.splat221
  %i.fv = zext <8 x i1> %i.fr to <8 x i32>
  %i.fw = zext <8 x i1> %i.fs to <8 x i32>
  %i.fx = zext <8 x i1> %i.ft to <8 x i32>
  %i.fy = zext <8 x i1> %i.fu to <8 x i32>
  %i.fz = add <8 x i32> %vec.phi224.a, %i.fv      ; 2 uses
  %i.ga = add <8 x i32> %vec.phi225.a, %i.fw      ; 2 uses
  %i.gb = add <8 x i32> %vec.phi226, %i.fx        ; 2 uses
  %i.gc = add <8 x i32> %vec.phi227, %i.fy        ; 2 uses
  %index.next232 = add nuw i64 %index223, 32      ; 2 uses
  %i.gd = icmp eq i64 %index.next232, %n.vec219
  br i1 %i.gd, label %middle.block233, label %vector.body222, !llvm.loop !20332

middle.block233:                                  ; preds = %vector.body222
  %bin.rdx234.a = add <8 x i32> %i.ga, %i.fz
  %bin.rdx235 = add <8 x i32> %i.gb, %bin.rdx234.a
  %bin.rdx236 = add <8 x i32> %i.gc, %bin.rdx235
  %i.ge = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx236) ; 3 uses
  %cmp.n237 = icmp eq i64 %i.ff, %n.vec219
  br i1 %cmp.n237, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, label %vec.epilog.iter.check242

vec.epilog.iter.check242:                         ; preds = %middle.block233
  %min.epilog.iters.check243 = icmp eq i64 %n.mod.vf218, 0
  br i1 %min.epilog.iters.check243, label %vec.epilog.scalar.ph241.preheader, label %vec.epilog.ph244, !prof !20323

vec.epilog.ph244:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check242
  %vec.epilog.resume.val238 = phi i64 [ %n.vec219, %vec.epilog.iter.check242 ], [ 0, %vector.main.loop.iter.check215 ]
  %bc.merge.rdx239 = phi i32 [ %i.ge, %vec.epilog.iter.check242 ], [ 0, %vector.main.loop.iter.check215 ]
  %n.vec246 = and i64 %i.ff, 8589934588           ; 4 uses
  %i.gf = trunc i64 %n.vec246 to i32
  %i.gg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx239, i64 0
  %broadcast.splatinsert247 = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat248 = shufflevector <4 x i8> %broadcast.splatinsert247, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body249

vec.epilog.vector.body249:                        ; preds = %vec.epilog.vector.body249, %vec.epilog.ph244
  %index250 = phi i64 [ %vec.epilog.resume.val238, %vec.epilog.ph244 ], [ %index.next253, %vec.epilog.vector.body249 ] ; 2 uses
  %vec.phi251 = phi <4 x i32> [ %i.gg, %vec.epilog.ph244 ], [ %i.gk, %vec.epilog.vector.body249 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index250
  %wide.load252 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !19747
  %i.gi = icmp eq <4 x i8> %wide.load252, %broadcast.splat248
  %i.gj = zext <4 x i1> %i.gi to <4 x i32>
  %i.gk = add <4 x i32> %vec.phi251, %i.gj        ; 2 uses
  %index.next253 = add nuw i64 %index250, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.gl, label %vec.epilog.middle.block254, label %vec.epilog.vector.body249, !llvm.loop !20333

vec.epilog.middle.block254:                       ; preds = %vec.epilog.vector.body249
  %i.gm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gk) ; 2 uses
  %cmp.n255 = icmp eq i64 %i.ff, %n.vec246
  br i1 %cmp.n255, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, label %vec.epilog.scalar.ph241.preheader

vec.epilog.scalar.ph241.preheader:                ; preds = %vector.scevcheck213, %iter.check240, %vec.epilog.iter.check242, %vec.epilog.middle.block254
  %.ph = phi i64 [ 0, %iter.check240 ], [ 0, %vector.scevcheck213 ], [ %n.vec219, %vec.epilog.iter.check242 ], [ %n.vec246, %vec.epilog.middle.block254 ]
  %.010.i48.ph = phi i32 [ 0, %iter.check240 ], [ 0, %vector.scevcheck213 ], [ %i.fm, %vec.epilog.iter.check242 ], [ %i.gf, %vec.epilog.middle.block254 ]
  %.079.i49.ph = phi i32 [ 0, %iter.check240 ], [ 0, %vector.scevcheck213 ], [ %i.ge, %vec.epilog.iter.check242 ], [ %i.gm, %vec.epilog.middle.block254 ]
  br label %vec.epilog.scalar.ph241

vec.epilog.scalar.ph241:                          ; preds = %vec.epilog.scalar.ph241.preheader, %vec.epilog.scalar.ph241
  %i.gn = phi i64 [ %i.gt, %vec.epilog.scalar.ph241 ], [ %.ph, %vec.epilog.scalar.ph241.preheader ]
  %.010.i48 = phi i32 [ %i.gs, %vec.epilog.scalar.ph241 ], [ %.010.i48.ph, %vec.epilog.scalar.ph241.preheader ]
  %.079.i49 = phi i32 [ %spec.select.i50, %vec.epilog.scalar.ph241 ], [ %.079.i49.ph, %vec.epilog.scalar.ph241.preheader ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !19747
  %i.gq = icmp eq i8 %i.gp, %i.al
  %i.gr = zext i1 %i.gq to i32
  %spec.select.i50 = add i32 %.079.i49, %i.gr     ; 2 uses
  %i.gs = add i32 %.010.i48, 1                    ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = icmp ugt i64 %i.ff, %i.gt
  br i1 %i.gu, label %vec.epilog.scalar.ph241, label %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, !llvm.loop !20334

_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52: ; preds = %vec.epilog.scalar.ph241, %middle.block233, %vec.epilog.middle.block254, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45
  %.07.lcssa.i51 = phi i32 [ 0, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit45 ], [ %i.gm, %vec.epilog.middle.block254 ], [ %i.ge, %middle.block233 ], [ %spec.select.i50, %vec.epilog.scalar.ph241 ]
  %i.gv = icmp eq i32 %.07.lcssa.i44, %.07.lcssa.i51
  br i1 %i.gv, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit38, %.critedge.thread94
  %i.gw = icmp eq i64 %i.n, %.fr77
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = icmp eq i64 %i.n, %i.gy
  %or.cond70 = select i1 %i.gw, i1 %i.gz, i1 false ; 2 uses
  %i.ha = trunc i32 %.025.lcssa to i8
  %spec.select = select i1 %or.cond70, i8 %i.ha, i8 0
  %spec.select98 = select i1 %or.cond70, i32 1, i32 3
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52, %.critedge, %.preheader
  %.sink = phi i8 [ 0, %.critedge ], [ %spec.select, %bb.j ], [ %i.al, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52 ], [ 0, %.preheader ]
  %.1 = phi i32 [ 3, %.critedge ], [ %spec.select98, %bb.j ], [ 2, %_ZN5boost13re_detail_50011count_charsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEjRKT_T0_.exit52 ], [ 3, %.preheader ]
  store i8 %.sink, ptr %1, align 1, !tbaa !19747
  %i.hb = load ptr, ptr %4, align 8, !tbaa !19733 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %.critedge.thread
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !19747
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %.critedge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.hg = load ptr, ptr %3, align 8, !tbaa !19733 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !19747
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.hl = load ptr, ptr %2, align 8, !tbaa !19733 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !19747
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.2 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  %i.hq = load ptr, ptr %2, align 8, !tbaa !19733 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.k
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !19747
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const int, std::__cxx11::basic_string<char>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr %0, ptr %5, align 8, !tbaa !20335
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !20086
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  store i32 %i.f, ptr %i.c, align 8, !tbaa !20337
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !19863
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !19738
  store i8 0, ptr %i.h, align 8, !tbaa !19747
  store ptr %i.b, ptr %i.a, align 8, !tbaa !20339
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
  %i.p = load i32, ptr %i.c, align 8, !tbaa !7
  %i.q = load i32, ptr %i.o, align 4, !tbaa !7
  %i.r = icmp slt i32 %i.p, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = phi i1 [ %i.r, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #41
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20047
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !20047
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !19733 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.h, align 8, !tbaa !19747
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #42
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #42
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.k, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20047
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20048 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = load i32, ptr %2, align 4, !tbaa !7
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !20048 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !20048 ; 2 uses
end_hunk_1
