Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_arith_base?download=true
inline.NumInlined: 7666
inline.NumDeleted: 1626
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN3sls10arith_baseI13checked_int64ILb1EEE14update_checkedEjRKS2_:bb.a
; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(20) ptr @_ZNK3sls10arith_baseI13checked_int64ILb1EEE7get_addEj(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [184 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !150
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !217
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.i
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK3sls10arith_baseI13checked_int64ILb1EEE7get_mulEj(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [184 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !150
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden i64 @_ZN3sls10arith_baseI13checked_int64ILb1EEE8power_ofES2_j(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.checked_int64, align 8       ; 5 uses
  %4 = alloca %class.checked_int64, align 8       ; 5 uses
  %5 = alloca %class.checked_int64, align 8       ; 5 uses
  %6 = alloca %class.checked_int64, align 8       ; 4 uses
  %7 = alloca %class.checked_int64, align 8       ; 6 uses
  store i64 %1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 1, ptr %7, align 8, !tbaa !117
  %i.a = icmp ugt i32 %2, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = phi i64 [ %i.i, %bb.c ], [ %1, %bb.a ]   ; 2 uses
  %.06 = phi i32 [ %i.j, %bb.c ], [ %2, %bb.a ]   ; 3 uses
  %i.c = and i32 %.06, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.b, ptr %5, align 8, !tbaa !89
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  %i.e = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.e, ptr %7, align 8, !tbaa !89
  %i.f = add nsw i32 %.06, -1
  %.pre = load i64, ptr %6, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.g = phi i64 [ %.pre, %bb.b ], [ %i.b, %.lr.ph ]
  %.1 = phi i32 [ %i.f, %bb.b ], [ %.06, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %i.g, ptr %4, align 8, !tbaa !89
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  %i.i = load i64, ptr %4, align 8                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.i, ptr %6, align 8, !tbaa !89
  %i.j = lshr i32 %.1, 1
  %i.k = icmp ugt i32 %.1, 3
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.l = phi i64 [ %1, %bb.a ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.l, ptr %3, align 8, !tbaa !89
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  %i.n = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret i64 %i.n
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3sls10arith_baseI13checked_int64ILb1EEE7mul_defD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN6vectorISt4pairIjjELb0EjED2Ev.exit:            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(16) ptr @_ZNK3sls10arith_baseI13checked_int64ILb1EEE6get_opEj(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [184 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !150
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i
  ret ptr %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden i64 @_Z3modILb1EE13checked_int64IXT_EERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !117    ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN13checked_int64ILb1EErMERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.c, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EErMERKS0_.exit:            ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !89
  %i.e = srem i64 %i.d, %i.a                      ; 4 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN13checked_int64ILb1EErMERKS0_.exit
  %i.g = icmp sgt i64 %i.a, 0
  br i1 %i.g, label %_ZN13checked_int64ILb1EEpLERKS0_.exit, label %_ZN13checked_int64ILb1EEmIERKS0_.exit

_ZN13checked_int64ILb1EEpLERKS0_.exit:            ; preds = %bb.c
  %i.h = add nsw i64 %i.e, %i.a
  br label %bb.d

_ZN13checked_int64ILb1EEmIERKS0_.exit:            ; preds = %bb.c
  %i.i = sub nsw i64 %i.e, %i.a
  br label %bb.d

bb.d:                                             ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit, %_ZN13checked_int64ILb1EEmIERKS0_.exit, %_ZN13checked_int64ILb1EErMERKS0_.exit
  %.sroa.07.0 = phi i64 [ %i.h, %_ZN13checked_int64ILb1EEpLERKS0_.exit ], [ %i.i, %_ZN13checked_int64ILb1EEmIERKS0_.exit ], [ %i.e, %_ZN13checked_int64ILb1EErMERKS0_.exit ]
  ret i64 %.sroa.07.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZplB5cxx11PKcRK5mk_pp(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !87
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !484
  %i.g = or i32 %i.f, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1, i64 noundef %i.h)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !488, !noalias !489 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %i.n, align 8, !tbaa !490, !noalias !489 ; 2 uses
  %6 = icmp ugt ptr %i.m, %5
  %.08.i.i.i = select i1 %6, ptr %i.m, ptr %5
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !491, !noalias !489
  %i.q = ptrtoint ptr %.08.i.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.s, ptr %i.t, align 8, !tbaa !234, !noalias !489
  %i.u = load ptr, ptr %4, align 8, !tbaa !233, !noalias !489
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !235, !noalias !489
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !231, !alias.scope !489
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !233, !noalias !489 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 7 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !234, !noalias !489 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.y, ptr %0, align 8, !tbaa !233, !alias.scope !489
  %i.af = load i64, ptr %i.z, align 8, !tbaa !235, !noalias !489
  store i64 %i.af, ptr %i.x, align 8, !tbaa !235, !alias.scope !489
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !234, !noalias !489
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.ag = phi i64 [ %i.ac, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !234, !alias.scope !489
  store ptr %i.z, ptr %i.w, align 8, !tbaa !233, !noalias !489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, i8 0, i64 9, i1 false), !noalias !489
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !233, !alias.scope !489 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.x
  br i1 %i.al, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.x, align 8, !tbaa !235, !alias.scope !489
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #27
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !87
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !87
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.k, align 8, !tbaa !87
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !233 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.z
  br i1 %i.au, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = load i64, ptr %i.z, align 8, !tbaa !235
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.k, align 8, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ay) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.g ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aj, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !235
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden i64 @_Z3divILb1EE13checked_int64IXT_EERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !117    ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN13checked_int64ILb1EEdVERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.d, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit:            ; preds = %bb.a
  %i.e = sdiv i64 %i.a, %i.b                      ; 5 uses
  %i.f = srem i64 %i.a, %i.b
  %i.g = icmp sge i64 %i.a, 0
  %.not = icmp eq i64 %i.f, 0
  %or.cond19 = or i1 %i.g, %.not
  br i1 %or.cond19, label %_ZN13checked_int64ILb1EEpLERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw nsw i64 %i.e, 1
  %i.j = icmp eq i64 %i.e, 9223372036854775807
  br i1 %i.j, label %bb.e, label %_ZN13checked_int64ILb1EEpLERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.k, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = add nsw i64 %i.e, -1
  %or.cond = icmp eq i64 %i.e, -9223372036854775808
  br i1 %or.cond, label %bb.g, label %_ZN13checked_int64ILb1EEpLERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.m, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit:            ; preds = %bb.f, %bb.d, %_ZN13checked_int64ILb1EEdVERKS0_.exit
  %.sroa.013.1 = phi i64 [ %i.e, %_ZN13checked_int64ILb1EEdVERKS0_.exit ], [ %i.l, %bb.f ], [ %i.i, %bb.d ]
  ret i64 %.sroa.013.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden i64 @_ZdvILb1EE13checked_int64IXT_EERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN13checked_int64ILb1EEdVERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.c, align 8, !tbaa !87
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit:            ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !89
  %i.e = sdiv i64 %i.d, %i.a
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN3sls10arith_baseI13checked_int64ILb1EEE10repair_mulERKNS3_7mul_defE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.checked_int64, align 8       ; 5 uses
  %3 = alloca %class.checked_int64, align 8       ; 5 uses
  %4 = alloca %class.checked_int64, align 8       ; 9 uses
  %5 = alloca %class.checked_int64, align 8       ; 9 uses
  %6 = alloca %class.checked_int64, align 8       ; 4 uses
  %7 = alloca %class.checked_int64, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 1, ptr %4, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = load i32, ptr %1, align 8, !tbaa !226
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [184 x i8], ptr %i.c, i64 %i.d
end_hunk_0
