inline.NumInlined: 3566
inline.NumDeleted: 1489
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEERS4_DpOT_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !47
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  store <2 x i64> %i.r, ptr %i.q, align 8, !tbaa !47
  store ptr %i.g, ptr %1, align 8, !tbaa !45
  store i64 0, ptr %i.p, align 8, !tbaa !48
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !42
  %i.t = icmp eq ptr %i.f, %i.e
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.v = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.w = phi i64 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.f, ptr %i.b, align 8, !tbaa !45
  %i.z = load i64, ptr %i.e, align 8, !tbaa !47
  store i64 %i.z, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.c ]
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !48
  store ptr %i.e, ptr %3, align 8, !tbaa !45
  store i64 0, ptr %i.ab, align 8, !tbaa !48
  store i8 0, ptr %i.e, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2IRivEEOT_(ptr noundef nonnull align 8 dereferenceable(73) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.aa
  br i1 %i.ah, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %.body
  %i.am = load i64, ptr %i.e, align 8, !tbaa !47
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.af

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 0, ptr %i.ao, align 8, !tbaa !63
  %i.ap = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.e
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !47
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 184 ; 2 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !137
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !357
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.av = phi ptr [ %.pre9, %bb.e ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -184
  ret ptr %i.aw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2IRivEEOT_(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = load i32, ptr %1, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.d = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.b, ptr noundef nonnull %i.c)
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  store i64 %i.g, ptr %3, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.h, align 8, !tbaa !117
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !578
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !42, !noalias !578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !578
  store i64 %i.g, ptr %i.a, align 8, !tbaa !44, !noalias !578
  %i.j = icmp ugt i64 %i.g, 15
  br i1 %i.j, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !578 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !45, !noalias !578
  %i.l = load i64, ptr %i.a, align 8, !tbaa !44, !noalias !578
  store i64 %i.l, ptr %i.i, align 8, !tbaa !47, !noalias !578
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.c, align 8, !tbaa !47, !noalias !578
  store i8 %i.n, ptr %i.m, align 1, !tbaa !47, !noalias !578
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 8 %i.c, i64 %i.g, i1 false), !noalias !578
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !44, !noalias !578 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !48, !noalias !578
  %i.q = load ptr, ptr %2, align 8, !tbaa !45, !noalias !578
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !47, !noalias !578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !578
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !42, !alias.scope !578
  %i.t = load ptr, ptr %2, align 8, !tbaa !45, !noalias !578 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.p, align 8, !tbaa !48, !noalias !578 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.x, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.t, ptr %0, align 8, !tbaa !45, !alias.scope !578
  %i.y = load i64, ptr %i.i, align 8, !tbaa !47, !noalias !578
  store i64 %i.y, ptr %i.s, align 8, !tbaa !47, !alias.scope !578
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !48, !noalias !578
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.z = phi i64 [ %i.v, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !48, !alias.scope !578
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ab, align 8, !tbaa !53, !alias.scope !578
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !578
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ae, align 8, !tbaa !48
  store i8 0, ptr %i.ad, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.af, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !136    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #33
  unreachable

_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129)
  %i.l = select i1 %i.j, i64 50127021939428129, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 184
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !42
  %i.t = load ptr, ptr %2, align 8, !tbaa !45     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48   ; 4 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !48
  store ptr %i.u, ptr %2, align 8, !tbaa !45
  store i64 0, ptr %i.aa, align 8, !tbaa !48
  store i8 0, ptr %i.u, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !42
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.af = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !47
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !47
  store ptr %i.u, ptr %2, align 8, !tbaa !45
  store i64 0, ptr %i.ad, align 8, !tbaa !48
  store i8 0, ptr %i.u, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !42
  %i.ah = icmp eq ptr %i.t, %i.s
  br i1 %i.ah, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ai = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.aj = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.ak = phi i64 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !45
  %i.an = load i64, ptr %i.s, align 8, !tbaa !47
  store i64 %i.an, ptr %i.ag, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ao = phi ptr [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.ap = phi ptr [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %bb.d ]
  %i.aq = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.s, ptr %4, align 8, !tbaa !45
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  store i8 0, ptr %i.s, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  invoke void @_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2IRivEEOT_(ptr noundef nonnull align 8 dereferenceable(73) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !45  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ao
  br i1 %i.av, label %.body27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #31
  br label %.body27

.body27:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %.body27
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !47
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #31
  br label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  store i8 0, ptr %i.bc, align 8, !tbaa !63
  %i.bd = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.s
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !47
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ] ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i) #32
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i) #32
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !370

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ], [ %i.bi, %.lr.ph.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 184 ; 2 uses
  %.not10.i.i.i33 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i33, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39, label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i34
  %.012.i.i.i35 = phi ptr [ %i.bl, %.lr.ph.i.i.i34 ], [ %i.bj, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i36 = phi ptr [ %i.bk, %.lr.ph.i.i.i34 ], [ %1, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i35, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i36) #32
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i36) #32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 184 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i35, i64 184 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39, label %.lr.ph.i.i.i34, !llvm.loop !370

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39: ; preds = %.lr.ph.i.i.i34, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.bj, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bl, %.lr.ph.i.i.i34 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #31
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !136
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !137
  %i.bq = getelementptr inbounds nuw [184 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !139
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit: ; preds = %.body27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.bs = extractvalue { ptr, i32 } %i.at, 0
  %i.bt = call ptr @__cxa_begin_catch(ptr %i.bs) #32 ; 0 uses
  %i.bu = mul nuw nsw i64 %i.l, 184
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bu) #31
  invoke void @__cxa_rethrow() #33
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.br

bb.i:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #34
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer3SubC2IRA12_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !42
  %i.c = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !45
  %i.j = load i64, ptr %i.d, align 8, !tbaa !47
  store i64 %i.j, ptr %i.b, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEERS4_DpOT_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !47
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  store <2 x i64> %i.r, ptr %i.q, align 8, !tbaa !47
  store ptr %i.g, ptr %1, align 8, !tbaa !45
  store i64 0, ptr %i.p, align 8, !tbaa !48
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !42
  %i.t = icmp eq ptr %i.f, %i.e
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.v = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.w = phi i64 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.f, ptr %i.b, align 8, !tbaa !45
  %i.z = load i64, ptr %i.e, align 8, !tbaa !47
  store i64 %i.z, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.c ]
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !48
  store ptr %i.e, ptr %3, align 8, !tbaa !45
  store i64 0, ptr %i.ab, align 8, !tbaa !48
  store i8 0, ptr %i.e, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2IivEEOT_(ptr noundef nonnull align 8 dereferenceable(73) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.aa
  br i1 %i.ah, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %.body
  %i.am = load i64, ptr %i.e, align 8, !tbaa !47
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.af

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 0, ptr %i.ao, align 8, !tbaa !63
  %i.ap = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.e
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPT_DpOT0_.exit
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !47
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 184 ; 2 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !137
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !357
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.av = phi ptr [ %.pre9, %bb.e ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -184
  ret ptr %i.aw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2IivEEOT_(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = load i32, ptr %1, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.d = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.b, ptr noundef nonnull %i.c)
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  store i64 %i.g, ptr %3, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.h, align 8, !tbaa !117
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !584
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !42, !noalias !584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !584
  store i64 %i.g, ptr %i.a, align 8, !tbaa !44, !noalias !584
  %i.j = icmp ugt i64 %i.g, 15
  br i1 %i.j, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !584 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !45, !noalias !584
  %i.l = load i64, ptr %i.a, align 8, !tbaa !44, !noalias !584
  store i64 %i.l, ptr %i.i, align 8, !tbaa !47, !noalias !584
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.c, align 8, !tbaa !47, !noalias !584
  store i8 %i.n, ptr %i.m, align 1, !tbaa !47, !noalias !584
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 8 %i.c, i64 %i.g, i1 false), !noalias !584
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !44, !noalias !584 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !48, !noalias !584
  %i.q = load ptr, ptr %2, align 8, !tbaa !45, !noalias !584
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !47, !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !584
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !42, !alias.scope !584
  %i.t = load ptr, ptr %2, align 8, !tbaa !45, !noalias !584 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.p, align 8, !tbaa !48, !noalias !584 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.x, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.t, ptr %0, align 8, !tbaa !45, !alias.scope !584
  %i.y = load i64, ptr %i.i, align 8, !tbaa !47, !noalias !584
  store i64 %i.y, ptr %i.s, align 8, !tbaa !47, !alias.scope !584
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !48, !noalias !584
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.z = phi i64 [ %i.v, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !48, !alias.scope !584
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ab, align 8, !tbaa !53, !alias.scope !584
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ae, align 8, !tbaa !48
  store i8 0, ptr %i.ad, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.af, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !136    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #33
  unreachable

_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129)
  %i.l = select i1 %i.j, i64 50127021939428129, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 184
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !42
  %i.t = load ptr, ptr %2, align 8, !tbaa !45     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48   ; 4 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !48
  store ptr %i.u, ptr %2, align 8, !tbaa !45
  store i64 0, ptr %i.aa, align 8, !tbaa !48
  store i8 0, ptr %i.u, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !42
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.af = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !47
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !47
  store ptr %i.u, ptr %2, align 8, !tbaa !45
  store i64 0, ptr %i.ad, align 8, !tbaa !48
  store i8 0, ptr %i.u, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !42
  %i.ah = icmp eq ptr %i.t, %i.s
  br i1 %i.ah, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ai = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.aj = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.ak = phi i64 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !45
  %i.an = load i64, ptr %i.s, align 8, !tbaa !47
  store i64 %i.an, ptr %i.ag, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ao = phi ptr [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.ap = phi ptr [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %bb.d ]
  %i.aq = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.s, ptr %4, align 8, !tbaa !45
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  store i8 0, ptr %i.s, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  invoke void @_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2IivEEOT_(ptr noundef nonnull align 8 dereferenceable(73) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !45  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ao
  br i1 %i.av, label %.body27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #31
  br label %.body27

.body27:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %.body27
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !47
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #31
  br label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  store i8 0, ptr %i.bc, align 8, !tbaa !63
  %i.bd = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.s
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPT_DpOT0_.exit
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !47
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ] ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i) #32
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i) #32
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !370

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ], [ %i.bi, %.lr.ph.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 184 ; 2 uses
  %.not10.i.i.i33 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i33, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39, label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i34
  %.012.i.i.i35 = phi ptr [ %i.bl, %.lr.ph.i.i.i34 ], [ %i.bj, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i36 = phi ptr [ %i.bk, %.lr.ph.i.i.i34 ], [ %1, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i35, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i36) #32
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i36) #32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i36, i64 184 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i35, i64 184 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39, label %.lr.ph.i.i.i34, !llvm.loop !370

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39: ; preds = %.lr.ph.i.i.i34, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.bj, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bl, %.lr.ph.i.i.i34 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #31
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit39, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !136
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !137
  %i.bq = getelementptr inbounds nuw [184 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !139
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit: ; preds = %.body27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.bs = extractvalue { ptr, i32 } %i.at, 0
  %i.bt = call ptr @__cxa_begin_catch(ptr %i.bs) #32 ; 0 uses
  %i.bu = mul nuw nsw i64 %i.l, 184
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bu) #31
  invoke void @__cxa_rethrow() #33
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.br

bb.i:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #34
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler10objectivec20SingleFieldGenerator27GeneratePropertyDeclarationEPS4_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !369   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !587, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS1_8compiler10objectivec20SingleFieldGenerator27GeneratePropertyDeclarationEPS3_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOST_DpOSU_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !587
  %.val.i.i.i = load ptr, ptr %.val, align 8, !tbaa !591
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !592 ; 2 uses
  %.val.val.i.i.i = load ptr, ptr %.val.i.i.i, align 8, !tbaa !155
  %i.e = getelementptr i8, ptr %.val2.i.i.i, i64 8
  %.val2.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %.val2.i.i.i, i64 16
  %.val2.val3.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !593
  tail call void @_ZN6google8protobuf8compiler10objectivec18EmitCommentsStringINS0_15FieldDescriptorEEEvPNS0_2io7PrinterERKNS2_17GenerationOptionsEPKT_NS2_18CommentStringFlagsE(ptr noundef %.val.val.i.i.i, ptr noundef nonnull align 8 dereferenceable(172) %.val2.val3.i.i.i, ptr noundef %.val2.val.i.i.i, i32 noundef 0)
  store i8 0, ptr %i.a, align 8, !tbaa !587
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS1_8compiler10objectivec20SingleFieldGenerator27GeneratePropertyDeclarationEPS3_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOST_DpOSU_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS1_8compiler10objectivec20SingleFieldGenerator27GeneratePropertyDeclarationEPS3_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOST_DpOSU_.exit": ; preds = %bb.a, %bb.b
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

end_hunk_1
