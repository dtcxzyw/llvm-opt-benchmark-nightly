inline.NumInlined: 932
inline.NumDeleted: 386
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_:bb.a

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.a, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 2 uses
  %cond.i.i = icmp eq i64 %i.a, 1
  br i1 %cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %2, align 1, !tbaa !23
  store i8 %i.n, ptr %i.m, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %2, i64 %i.a, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull %2, i64 noundef %i.a)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.f, ptr %i.b, align 8, !tbaa !22
  %i.o = load ptr, ptr %1, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.p, align 1, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !21
  %i.r = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.t = load i64, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.r, ptr %0, align 8, !tbaa !51
  %i.w = load i64, ptr %i.h, align 8, !tbaa !23
  store i64 %i.w, ptr %i.q, align 8, !tbaa !23
  %.pre = load i64, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = phi i64 [ %i.t, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !22
  store ptr %i.h, ptr %1, align 8, !tbaa !51
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.h, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !51     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.j, align 8
  %i.n = select i1 %i.k, i64 15, i64 %i.m
  %.not.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.a, align 1, !tbaa !23
  store i8 %i.p, ptr %i.o, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.e, i64 noundef 0, ptr noundef %i.a, i64 noundef %i.c)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.h, ptr %i.d, align 8, !tbaa !22
  %i.q = load ptr, ptr %1, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !21
  %i.t = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.t, ptr %0, align 8, !tbaa !51
  %i.y = load i64, ptr %i.j, align 8, !tbaa !23
  store i64 %i.y, ptr %i.s, align 8, !tbaa !23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !22
  store ptr %i.j, ptr %1, align 8, !tbaa !51
  store i64 0, ptr %i.d, align 8, !tbaa !22
  store i8 0, ptr %i.j, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !51
  %i.k = load i64, ptr %i.e, align 8, !tbaa !23
  store i64 %i.k, ptr %i.c, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !22
  store ptr %i.e, ptr %i.b, align 8, !tbaa !51
  store i64 0, ptr %i.m, align 8, !tbaa !22
  store i8 0, ptr %i.e, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5boost15program_options6detail27common_config_file_iterator3getEv(ptr noundef nonnull align 8 dereferenceable(241) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.boost::program_options::unknown_option", align 8 ; 5 uses
  %11 = alloca %"class.boost::program_options::invalid_config_file_syntax", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %.not21.i = icmp eq ptr %4, %i.i
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.d, label %.critedge39

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !22   ; 5 uses
  %.not188 = icmp eq i64 %i.p, 0
  %.val43.pre210 = load ptr, ptr %1, align 8      ; 12 uses
  br i1 %.not188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.d
  %i.q = call ptr @memchr(ptr noundef %.val43.pre210, i32 noundef 35, i64 noundef %i.p) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.val43.pre210 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not = icmp eq i64 %i.t, -1
  %or.cond187 = or i1 %.not.i, %.not
  br i1 %or.cond187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.c, ptr %2, align 8, !tbaa !21, !alias.scope !59
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.p) ; 8 uses
  %i.u = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.u, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.v, label %.noexc10.i.i, label %bb.g

.noexc10.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc10.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw i64 %spec.select.i.i.i, 1        ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !53

.noexc11.i.i:                                     ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29
          to label %.noexc46 unwind label %.loopexit ; 2 uses

.noexc46:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.y, ptr %2, align 8, !tbaa !51, !alias.scope !59
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !23, !alias.scope !59
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc46, %bb.e
  %i.z = phi ptr [ %i.y, %.noexc46 ], [ %i.c, %bb.e ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %.val43.pre210, align 1, !tbaa !23
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !23
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %.val43.pre210, i64 %spec.select.i.i.i, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !22, !alias.scope !59
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ab, align 1, !tbaa !23
  %i.ac = icmp eq ptr %.val43.pre210, %i.a
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  %i.ad = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !51    ; 3 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  %i.ag = load ptr, ptr %2, align 8, !tbaa !51    ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %i.c
  br i1 %i.ah, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ai = phi ptr [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !22  ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  switch i64 %i.aj, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !23
  store i8 %i.al, ptr %.val43.pre210, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val43.pre210, ptr align 1 %i.ai, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.am = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !22
  %i.an = load ptr, ptr %1, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ae, ptr %1, align 8, !tbaa !51
  %i.ap = load <2 x i64>, ptr %i.d, align 8, !tbaa !23
  store <2 x i64> %i.ap, ptr %i.b, align 8, !tbaa !23
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !23
  store ptr %i.ag, ptr %1, align 8, !tbaa !51
  %i.ar = load <2 x i64>, ptr %i.d, align 8, !tbaa !23
  store <2 x i64> %i.ar, ptr %i.b, align 8, !tbaa !23
  %.not.i47 = icmp eq ptr %.val43.pre210, null
  br i1 %.not.i47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %.val43.pre210, ptr %2, align 8, !tbaa !51
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.c, ptr %2, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.as = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %.val43.pre210, %bb.n ], [ %i.c, %bb.o ]
  store i64 0, ptr %i.d, align 8, !tbaa !22
  store i8 0, ptr %i.as, align 1, !tbaa !23
  %i.at = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.c
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.c, align 8, !tbaa !23
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.val43.pre = load ptr, ptr %1, align 8
  %.val44.pre = load i64, ptr %i.b, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread

bb.p:                                             ; preds = %bb.al, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %.noexc10.i.i, %.noexc11.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.cr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.val44 = phi i64 [ %i.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ 0, %bb.d ], [ %.val44.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.val43 = phi ptr [ %.val43.pre210, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %.val43.pre210, %bb.d ], [ %.val43.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke fastcc void @_ZN5boost15program_options6detail12_GLOBAL__N_17trim_wsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %3, ptr %.val43, i64 %.val44)
          to label %bb.r unwind label %bb.am

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread
  %i.ay = load ptr, ptr %1, align 8, !tbaa !51    ; 6 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  %i.ba = load ptr, ptr %3, align 8, !tbaa !51    ; 5 uses
  %i.bb = icmp eq ptr %i.ba, %i.e                 ; 2 uses
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i53: ; preds = %bb.r
  br i1 %i.bb, label %bb.s, label %.thread.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i48: ; preds = %bb.r
  br i1 %i.bb, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i49

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i53
  %i.bc = load i64, ptr %i.f, align 8, !tbaa !22  ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  switch i64 %i.bc, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i51
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !23
  store i8 %i.be, ptr %i.ay, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i51

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i51: ; preds = %bb.u, %bb.t, %bb.s
  %i.bf = load i64, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  store i64 %i.bf, ptr %i.b, align 8, !tbaa !22
  %i.bg = load ptr, ptr %1, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1, !tbaa !23
  %.pre.i52 = load ptr, ptr %3, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit55

.thread.i54:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i53
  store ptr %i.ba, ptr %1, align 8, !tbaa !51
  %i.bi = load <2 x i64>, ptr %i.f, align 8, !tbaa !23
  store <2 x i64> %i.bi, ptr %i.b, align 8, !tbaa !23
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i48
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !23
  store ptr %i.ba, ptr %1, align 8, !tbaa !51
  %i.bk = load <2 x i64>, ptr %i.f, align 8, !tbaa !23
  store <2 x i64> %i.bk, ptr %i.b, align 8, !tbaa !23
  %.not.i50 = icmp eq ptr %i.ay, null
  br i1 %.not.i50, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i49
  store ptr %i.ay, ptr %3, align 8, !tbaa !51
  store i64 %i.bj, ptr %i.e, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit55

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i49, %.thread.i54
  store ptr %i.e, ptr %3, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i51, %bb.v, %bb.w
  %i.bl = phi ptr [ %.pre.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i51 ], [ %i.ay, %bb.v ], [ %i.e, %bb.w ]
  store i64 0, ptr %i.f, align 8, !tbaa !22
  store i8 0, ptr %i.bl, align 1, !tbaa !23
  %i.bm = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.e
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit55
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !23
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !22  ; 6 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.backedge, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.bs = load ptr, ptr %1, align 8, !tbaa !51    ; 7 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !23
  %i.bu = icmp eq i8 %i.bt, 91
  br i1 %i.bu, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit85

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !23
  %i.by = icmp eq i8 %i.bx, 93
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bz = add i64 %i.bq, -2
  store ptr %i.g, ptr %4, align 8, !tbaa !21, !alias.scope !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.cb = add i64 %i.bq, -1
  %spec.select.i.i.i59 = call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.cb) ; 8 uses
  %i.cc = icmp ugt i64 %spec.select.i.i.i59, 15
  br i1 %i.cc, label %bb.z, label %._crit_edge.i.i.i60

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cd = icmp slt i64 %spec.select.i.i.i59, 0
  br i1 %i.cd, label %.noexc10.i.i63, label %bb.aa

.noexc10.i.i63:                                   ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #28
          to label %.noexc65 unwind label %.loopexit.split-lp192

.noexc65:                                         ; preds = %.noexc10.i.i63
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.ce = add nuw i64 %spec.select.i.i.i59, 1     ; 2 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %.noexc11.i.i62, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i61, !prof !53

.noexc11.i.i62:                                   ; preds = %bb.aa
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc66 unwind label %.loopexit.split-lp192

.noexc66:                                         ; preds = %.noexc11.i.i62
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i61: ; preds = %bb.aa
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #29
          to label %.noexc67 unwind label %.loopexit191 ; 2 uses

.noexc67:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i61
  store ptr %i.cg, ptr %4, align 8, !tbaa !51, !alias.scope !62
  store i64 %spec.select.i.i.i59, ptr %i.g, align 8, !tbaa !23, !alias.scope !62
  br label %._crit_edge.i.i.i60

._crit_edge.i.i.i60:                              ; preds = %.noexc67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ch = phi ptr [ %i.cg, %.noexc67 ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i59, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i60
  %i.ci = load i8, ptr %i.ca, align 1, !tbaa !23
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !23
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull align 1 %i.ca, i64 %spec.select.i.i.i59, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i60
  store i64 %spec.select.i.i.i59, ptr %i.h, align 8, !tbaa !22, !alias.scope !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %spec.select.i.i.i59
  store i8 0, ptr %i.cj, align 1, !tbaa !23
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !51  ; 6 uses
  %i.cl = icmp eq ptr %i.ck, %i.j
  %i.cm = load ptr, ptr %4, align 8, !tbaa !51    ; 6 uses
  %i.cn = icmp eq ptr %i.cm, %i.g                 ; 2 uses
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i74: ; preds = %bb.ad
  br i1 %i.cn, label %bb.ae, label %.thread.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i69: ; preds = %bb.ad
  br i1 %i.cn, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i70

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i74
  %i.co = load i64, ptr %i.h, align 8, !tbaa !22  ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit76, label %12, !prof !53

12:                                               ; preds = %bb.ae
  switch i64 %i.co, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i72
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %12
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !23
  store i8 %i.cq, ptr %i.ck, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i72

bb.ag:                                            ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cm, i64 %i.co, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i72: ; preds = %bb.ag, %bb.af, %12
  %i.cr = load i64, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  store i64 %i.cr, ptr %i.k, align 8, !tbaa !22
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 0, ptr %i.ct, align 1, !tbaa !23
  %.pre.i73 = load ptr, ptr %4, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit76

.thread.i75:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i74
  store ptr %i.cm, ptr %i.i, align 8, !tbaa !51
  %i.cu = load <2 x i64>, ptr %i.h, align 8, !tbaa !23
  store <2 x i64> %i.cu, ptr %i.k, align 8, !tbaa !23
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i69
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !23
  store ptr %i.cm, ptr %i.i, align 8, !tbaa !51
  %i.cw = load <2 x i64>, ptr %i.h, align 8, !tbaa !23
  store <2 x i64> %i.cw, ptr %i.k, align 8, !tbaa !23
  %.not.i71 = icmp eq ptr %i.ck, null
  br i1 %.not.i71, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i70
  store ptr %i.ck, ptr %4, align 8, !tbaa !51
  store i64 %i.cv, ptr %i.g, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit76

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i70, %.thread.i75
  store ptr %i.g, ptr %4, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit76: ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i72, %bb.ah, %bb.ai
  %13 = phi ptr [ %.pre.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i72 ], [ %i.ck, %bb.ah ], [ %i.g, %bb.ai ], [ %i.cm, %bb.ae ]
  store i64 0, ptr %i.h, align 8, !tbaa !22
  store i8 0, ptr %13, align 1, !tbaa !23
  %i.cx = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.g
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit76
  %i.cz = load i64, ptr %i.g, align 8, !tbaa !23
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.db = load ptr, ptr %i.i, align 8, !tbaa !51, !noalias !65 ; 3 uses
  %i.dc = load i64, ptr %i.k, align 8, !tbaa !22, !noalias !65 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !23
  %.not33 = icmp eq i8 %i.df, 46
  br i1 %.not33, label %.backedge, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.dg = add i64 %i.dc, 1                        ; 3 uses
  %i.dh = icmp eq ptr %i.db, %i.j                 ; 2 uses
  br i1 %i.dh, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.di = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.di)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.ak, %bb.aj
  %i.dj = load i64, ptr %i.j, align 8
  %i.dk = select i1 %i.dh, i64 15, i64 %i.dj
  %i.dl = icmp ugt i64 %i.dg, %i.dk
  br i1 %i.dl, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.dc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc80 unwind label %bb.p

.noexc80:                                         ; preds = %bb.al
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc80
  %i.dm = phi ptr [ %.pre.i.i, %.noexc80 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dc
  store i8 46, ptr %i.dn, align 1, !tbaa !23
  store i64 %i.dg, ptr %i.k, align 8, !tbaa !22
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  store i8 0, ptr %i.dp, align 1, !tbaa !23
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  br label %bb.b, !llvm.loop !68

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.cr

.loopexit191:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i61
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp192:                            ; preds = %.noexc10.i.i63, %.noexc11.i.i62
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp192, %.loopexit191
  %lpad.phi195 = phi { ptr, i32 } [ %lpad.loopexit193, %.loopexit191 ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.cr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit85: ; preds = %bb.x, %bb.y
  %i.dr = call ptr @memchr(ptr noundef nonnull %i.bs, i32 noundef 61, i64 noundef %i.bq) #25 ; 2 uses
  %.not.i83 = icmp eq ptr %i.dr, null
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.bs to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %.not20189 = icmp eq i64 %i.du, -1
  %.not20 = or i1 %.not.i83, %.not20189
  br i1 %.not20, label %bb.ck, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.dv, ptr %7, align 8, !tbaa !21, !alias.scope !69
  %spec.select.i.i.i87 = call noundef i64 @llvm.umin.i64(i64 %i.du, i64 %i.bq) ; 8 uses
  %i.dw = icmp ugt i64 %spec.select.i.i.i87, 15
  br i1 %i.dw, label %bb.ap, label %._crit_edge.i.i.i88

bb.ap:                                            ; preds = %bb.ao
  %i.dx = icmp slt i64 %spec.select.i.i.i87, 0
  br i1 %i.dx, label %.noexc10.i.i91, label %bb.aq

.noexc10.i.i91:                                   ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #28
          to label %.noexc92 unwind label %bb.bh

.noexc92:                                         ; preds = %.noexc10.i.i91
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.dy = add nuw i64 %spec.select.i.i.i87, 1     ; 2 uses
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %.noexc11.i.i90, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i89, !prof !53

.noexc11.i.i90:                                   ; preds = %bb.aq
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc93 unwind label %bb.bh

.noexc93:                                         ; preds = %.noexc11.i.i90
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i89: ; preds = %bb.aq
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #29
          to label %.noexc94 unwind label %bb.bh  ; 2 uses

.noexc94:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i89
  store ptr %i.ea, ptr %7, align 8, !tbaa !51, !alias.scope !69
  store i64 %spec.select.i.i.i87, ptr %i.dv, align 8, !tbaa !23, !alias.scope !69
  br label %._crit_edge.i.i.i88

._crit_edge.i.i.i88:                              ; preds = %.noexc94, %bb.ao
  %i.eb = phi ptr [ %i.ea, %.noexc94 ], [ %i.dv, %bb.ao ] ; 3 uses
  switch i64 %spec.select.i.i.i87, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i88
  %i.ec = load i8, ptr %i.bs, align 1, !tbaa !23
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !23
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i.i88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr nonnull align 1 %i.bs, i64 %spec.select.i.i.i87, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i88
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %spec.select.i.i.i87, ptr %i.ed, align 8, !tbaa !22, !alias.scope !69
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %spec.select.i.i.i87
  store i8 0, ptr %i.ee, align 1, !tbaa !23
  %.val41 = load ptr, ptr %7, align 8
  %.val42 = load i64, ptr %i.ed, align 8, !tbaa !22
  invoke fastcc void @_ZN5boost15program_options6detail12_GLOBAL__N_17trim_wsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val41, i64 %.val42)
          to label %bb.au unwind label %bb.bi

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ef = load i64, ptr %i.k, align 8, !tbaa !22, !noalias !72
  %i.eg = load ptr, ptr %i.i, align 8, !tbaa !51, !noalias !72
  %i.eh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.eg, i64 noundef %i.ef)
          to label %.noexc98 unwind label %bb.bj  ; 6 uses

.noexc98:                                         ; preds = %bb.au
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ei, ptr %5, align 8, !tbaa !21, !alias.scope !72
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !51 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 5 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

bb.av:                                            ; preds = %.noexc98
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !22 ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %i.en, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.ek, i64 %i.ep, i1 false)
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %.noexc98
  store ptr %i.ej, ptr %5, align 8, !tbaa !51, !alias.scope !72
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !23
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !23, !alias.scope !72
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.pre.i97 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.av
  %i.er = phi i64 [ %i.en, %bb.av ], [ %.pre.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.er, ptr %i.et, align 8, !tbaa !22, !alias.scope !72
  store ptr %i.ek, ptr %i.eh, align 8, !tbaa !51
  store i64 0, ptr %i.es, align 8, !tbaa !22
  store i8 0, ptr %i.ek, align 8, !tbaa !23
  %i.eu = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
end_hunk_0
