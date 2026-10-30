Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FunctionInvocationUnary?download=true
inline.NumInlined: 119
inline.NumDeleted: 55
begin_hunk_0_@_ZN23FunctionInvocationUnaryC2ERKS_:bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33
  store i32 %i.c, ptr %i.a, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !34
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35   ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #12
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !36

.noexc6.i:                                        ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #12
          to label %.noexc5 unwind label %bb.g

.noexc5:                                          ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #10
          to label %.noexc6 unwind label %bb.g    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.n, ptr %i.d, align 8, !tbaa !18
  store i64 %i.i, ptr %i.f, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc6, %bb.a
  %i.o = phi ptr [ %i.n, %.noexc6 ], [ %i.f, %bb.a ] ; 3 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !19
  store i8 %i.p, ptr %i.o, align 1, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.i, ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !19
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN18FunctionInvocationD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #9
  resume { ptr, i32 } %i.s
}

declare void @_ZN18FunctionInvocationC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN23FunctionInvocationUnaryD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV23FunctionInvocationUnary, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !19
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN18FunctionInvocationD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN23FunctionInvocationUnaryD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV23FunctionInvocationUnary, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN23FunctionInvocationUnaryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !19
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #11, !inline_history !44
  br label %_ZN23FunctionInvocationUnaryD2Ev.exit

_ZN23FunctionInvocationUnaryD2Ev.exit:            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN18FunctionInvocationD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(96) %0) #9, !inline_history !44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK23FunctionInvocationUnary5cloneEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #10 ; 3 uses
  invoke void @_ZN23FunctionInvocationUnaryC2ERKS_(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #11
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(136) ptr @_ZNK23FunctionInvocationUnary8get_typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 3, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(136) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 2)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK23FunctionInvocationUnary10compatibleEPK8Variable(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK23FunctionInvocationUnary6equalsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i32 %i.c, 2
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i32 noundef 0)
  br i1 %i.k, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pr.pre6.pre = load i32, ptr %i.b, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.pr.pre6 = phi i32 [ %.pr.pre6.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = icmp eq i32 %1, 1
  %2 = icmp eq i32 %.pr.pre6, 2
  %brmerge.not = select i1 %i.l, i1 %2, i1 false
  br i1 %brmerge.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i32 noundef 0)
  br i1 %i.s, label %bb.h, label %thread-pre-split.a

thread-pre-split.a:                               ; preds = %bb.d
  %.pr = load i32, ptr %i.b, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %thread-pre-split.a
  %i.t = phi i32 [ %.pr.pre6, %bb.c ], [ %.pr, %thread-pre-split.a ]
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %i.y = sub nsw i32 0, %1
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i32 noundef %i.y)
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.b ], [ true, %bb.d ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK23FunctionInvocationUnary15safe_invocationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp ne i32 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK23FunctionInvocationUnary6OutputERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33
  switch i32 %i.c, label %bb.s [
    i32 1, label %bb.b
    i32 0, label %.sink.split.i31
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN9CGOptions21avoid_signed_overflowEv()
  br i1 %i.d, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %.not = icmp eq i32 %i.h, 4
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.i = load i32, ptr %i.b, align 8, !tbaa !33
  call void @_ZNK11SafeOpFlags9to_stringB5cxx11E9eUnaryOps(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(8) %i.f, i32 noundef %i.i)
  %i.j = invoke noundef i32 @_ZN11SafeOpFlags5to_idERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 @_ZN9CGOptions17safe_math_wrapperEi(i32 noundef %i.j)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %2, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.g
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.q = invoke noundef zeroext i1 @_ZN9CGOptions10math_notmpEv()
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br i1 %i.q, label %bb.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21 unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21: ; preds = %bb.i
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.n, %bb.m, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21, %bb.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  resume { ptr, i32 } %i.x

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.aj = invoke noundef zeroext i1 @_ZN9CGOptions17identify_wrappersEv()
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %bb.m
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.j)
          to label %bb.n unwind label %bb.j       ; 0 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %bb.l
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %bb.n, %bb.f
  %i.an = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %i.k, label %bb.s, label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.as = load i32, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.at = icmp ult i32 %i.as, 4
  br i1 %i.at, label %switch.lookup, label %_ZL22OutputStandardFuncName9eUnaryOpsRSo.exit

switch.lookup:                                    ; preds = %bb.o
  %i.au = zext nneg i32 %i.as to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK23FunctionInvocationUnary15indented_outputERSoi, i64 %i.au
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %switch.load, i64 noundef 1) ; 0 uses
  br label %_ZL22OutputStandardFuncName9eUnaryOpsRSo.exit

_ZL22OutputStandardFuncName9eUnaryOpsRSo.exit:    ; preds = %bb.o, %switch.lookup
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.s

bb.p:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bc = load i32, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 4
  br i1 %i.bd, label %switch.lookup37, label %_ZL22OutputStandardFuncName9eUnaryOpsRSo.exit30

switch.lookup37:                                  ; preds = %bb.p
  %i.be = zext nneg i32 %i.bc to i64
  %switch.gep38 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK23FunctionInvocationUnary15indented_outputERSoi, i64 %i.be
  %switch.load39 = load ptr, ptr %switch.gep38, align 8
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %switch.load39, i64 noundef 1) ; 0 uses
  br label %_ZL22OutputStandardFuncName9eUnaryOpsRSo.exit30

_ZL22OutputStandardFuncName9eUnaryOpsRSo.exit30:  ; preds = %bb.p, %switch.lookup37
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
end_hunk_0
