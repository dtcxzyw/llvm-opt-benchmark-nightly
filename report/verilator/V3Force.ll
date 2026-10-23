Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Force?download=true
inline.NumInlined: 4172
inline.NumDeleted: 1486
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_:bb.a
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !132
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !30
  %i.o = load i64, ptr %i.i, align 8, !tbaa !32
  store i64 %i.o, ptr %i.g, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !31
  store ptr %i.i, ptr %i.f, align 8, !tbaa !30
  store i64 0, ptr %i.q, align 8, !tbaa !31
  store i8 0, ptr %i.i, align 8, !tbaa !32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !132
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !30
  %i.k = load i64, ptr %i.e, align 8, !tbaa !32
  store i64 %i.k, ptr %i.c, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !31
  store ptr %i.e, ptr %i.b, align 8, !tbaa !30
  store i64 0, ptr %i.m, align 8, !tbaa !31
  store i8 0, ptr %i.e, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load i32, ptr %1, align 4, !tbaa !171
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.a)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !132, !alias.scope !453
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !31, !alias.scope !453
  store i8 0, ptr %i.c, align 8, !tbaa !32, !alias.scope !453
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !454, !noalias !453 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !453 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !455, !noalias !453 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !30, !alias.scope !453 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !32, !alias.scope !453
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !113
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !113
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !113
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ai) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3 align 2

declare void @_ZN7V3Error7vlAbortEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15VNUserInUseBase8clearcntEiRjRKb(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !171
  %i.b = load i8, ptr %2, align 1, !tbaa !172, !range !97, !noundef !98
  %6 = trunc nuw i8 %i.b to i1
  br i1 %6, label %bb.h, label %bb.b, !prof !145

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 16) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 47) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.f = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !113
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !181
  %i.l = and i32 %i.k, -75
  %i.m = or disjoint i32 %i.l, 2
  store i32 %i.m, ptr %i.j, align 8, !tbaa !182
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 192) ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %3, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.g, !inline_history !0 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !32
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.ae = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN7V3Error7vlAbortEv()
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.f:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.g
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.al, %bb.g ] ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.au = load i64, ptr %i.as, align 8, !tbaa !32
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  %i.aw = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !32
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.bb = load i32, ptr %1, align 4, !tbaa !171
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %1, align 4, !tbaa !171
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.i, label %bb.j, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 16) ; 0 uses
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 47) ; 0 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.bg = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !113
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !181
  %i.bm = and i32 %i.bl, -75
  %i.bn = or disjoint i32 %i.bm, 2
  store i32 %i.bn, ptr %i.bk, align 8, !tbaa !182
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 196) ; 3 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.10, i64 noundef 19) ; 0 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo), !inline_history !0 ; 0 uses
  call void @_ZN7V3Error7vlAbortEv()
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !171
  %i.b = load i8, ptr %2, align 1, !tbaa !172, !range !97, !noundef !98
  %6 = trunc nuw i8 %i.b to i1
  br i1 %6, label %bb.h, label %bb.b, !prof !145

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 16) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 47) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.f = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !113
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !181
  %i.l = and i32 %i.k, -75
  %i.m = or disjoint i32 %i.l, 2
  store i32 %i.m, ptr %i.j, align 8, !tbaa !182
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 187) ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %3, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.g, !inline_history !0 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !32
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.ae = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN7V3Error7vlAbortEv()
  %.pre = load i32, ptr %i.a, align 4, !tbaa !171
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.f:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.al, %bb.g ] ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.au = load i64, ptr %i.as, align 8, !tbaa !32
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  %i.aw = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !32
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bb = phi i32 [ %0, %bb.a ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  call void @_ZN15VNUserInUseBase8clearcntEiRjRKb(i32 noundef %i.bb, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i8 0, ptr %2, align 1, !tbaa !172
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL5debugv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %1 = alloca %"class.std::allocator", align 1    ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr @_ZZL5debugvE7s_level, align 4, !tbaa !171 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23._crit_edge, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !32
  %i.h = sext i8 %i.g to i32
  %i.i = call i32 @tolower(i32 noundef %i.h) #29
  %i.j = trunc i32 %i.i to i8
  store i8 %i.j, ptr %i.f, align 1, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = invoke noundef i32 @_ZNK9V3Options10debugLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef i32 @_ZNK9V3Options13debugSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN19ForceConvertVisitor5visitEP10AstRelease:bb.a
  store i64 0, ptr %i.kl, align 8
  %.not.i.i.i287 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i287, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, label %bb.ce

bb.ce:                                            ; preds = %.noexc289
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 72 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !153 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 72 ; 4 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !153
  %.not.i.i.i.i288 = icmp eq ptr %i.kp, %i.kn
  br i1 %.not.i.i.i.i288, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !153
  %i.kq = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  %i.kr = add i64 %i.kq, 1
  store i64 %i.kr, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  br label %bb.cg

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i: ; preds = %.noexc289
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.kk, ptr noundef null)
          to label %.noexc290 unwind label %bb.cn

.noexc290:                                        ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV6AstNot, i64 16), ptr %i.kk, align 8, !tbaa !113
  br label %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.kk, ptr noundef nonnull %i.ki)
          to label %.noexc291 unwind label %bb.cn

.noexc291:                                        ; preds = %bb.cg
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV6AstNot, i64 16), ptr %i.kk, align 8, !tbaa !113
  %i.ks = load ptr, ptr %i.km, align 8, !tbaa !153 ; 2 uses
  %i.kt = load ptr, ptr %i.ko, align 8, !tbaa !153
  %.not.i.i5.i = icmp eq ptr %i.kt, %i.ks
  br i1 %.not.i.i5.i, label %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit, label %bb.ch

bb.ch:                                            ; preds = %.noexc291
  store ptr %i.ks, ptr %i.ko, align 8, !tbaa !153
  %i.ku = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  %i.kv = add i64 %i.ku, 1
  store i64 %i.kv, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  br label %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit

_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit:       ; preds = %bb.ch, %.noexc291, %.noexc290
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.kj, i16 269, ptr noundef %i.do)
          to label %.noexc294 unwind label %bb.cm

.noexc294:                                        ; preds = %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.kj, align 8, !tbaa !113
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 152
  store i64 0, ptr %i.kw, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.kj, ptr noundef nonnull %i.jj)
          to label %.noexc295 unwind label %bb.cm

.noexc295:                                        ; preds = %.noexc294
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.kj, ptr noundef nonnull %i.kk)
          to label %.noexc296 unwind label %bb.cm

.noexc296:                                        ; preds = %.noexc295
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstAnd, i64 16), ptr %i.kj, align 8, !tbaa !113
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jj, i64 72
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !153 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kj, i64 72 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !153
  %.not.i.i.i293 = icmp eq ptr %i.la, %i.ky
  br i1 %.not.i.i.i293, label %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.ci

bb.ci:                                            ; preds = %.noexc296
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !153
  %i.lb = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  %i.lc = add i64 %i.lb, 1
  store i64 %i.lc, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  br label %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit

_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit:    ; preds = %bb.ci, %.noexc296
  %i.ld = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %bb.cj unwind label %bb.dv     ; 8 uses

bb.cj:                                            ; preds = %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ld, i16 466, ptr noundef %i.do)
          to label %.noexc298 unwind label %bb.cp

.noexc298:                                        ; preds = %bb.cj
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.ld, align 8, !tbaa !113
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ld, ptr noundef nonnull %i.kj)
          to label %.noexc299 unwind label %bb.cp

.noexc299:                                        ; preds = %.noexc298
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ld, ptr noundef nonnull %i.hq)
          to label %.noexc300 unwind label %bb.cp

.noexc300:                                        ; preds = %.noexc299
  %i.le = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !153 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 72 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !153
  %.not.i.i8.i.i = icmp eq ptr %i.lh, %i.lf
  br i1 %.not.i.i8.i.i, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split, label %bb.ck

bb.ck:                                            ; preds = %.noexc300
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !153
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split.sink.split

bb.cl:                                            ; preds = %bb.bu
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef 232) #25
  br label %.body233

bb.cm:                                            ; preds = %.noexc295, %.noexc294, %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit, %bb.cc
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %bb.cg, %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, %bb.cd
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef 160) #25
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn169 = phi { ptr, i32 } [ %i.lj, %bb.cm ], [ %i.lk, %bb.cn ]
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef 160) #25
  br label %.body233

bb.cp:                                            ; preds = %.noexc299, %.noexc298, %bb.cj
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef 152) #25
  br label %.body233

bb.cq:                                            ; preds = %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %.noexc276
  %i.lm = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %bb.cr unwind label %bb.dv     ; 8 uses

bb.cr:                                            ; preds = %bb.cq
  %i.ln = invoke noundef ptr @_ZN10ForceState13makeZeroConstEP7AstNodei(ptr noundef nonnull %1, i32 noundef 1)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.lm, i16 466, ptr noundef %i.do)
          to label %.noexc306 unwind label %bb.cu

.noexc306:                                        ; preds = %bb.cs
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.lm, align 8, !tbaa !113
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.lm, ptr noundef %i.ln)
          to label %.noexc307 unwind label %bb.cu

.noexc307:                                        ; preds = %.noexc306
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.lm, ptr noundef nonnull %i.hq)
          to label %.noexc308 unwind label %bb.cu

.noexc308:                                        ; preds = %.noexc307
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !153 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 72 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !153
  %.not.i.i8.i.i302 = icmp eq ptr %i.lr, %i.lp
  br i1 %.not.i.i8.i.i302, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split, label %bb.ct

bb.ct:                                            ; preds = %.noexc308
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !153
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split.sink.split

bb.cu:                                            ; preds = %.noexc307, %.noexc306, %bb.cs, %bb.cr
  %i.ls = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef 152) #25
  br label %.body233

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split.sink.split: ; preds = %bb.ct, %bb.ck
  %.sink.ph = phi ptr [ %i.ld, %bb.ck ], [ %i.lm, %bb.ct ]
  %i.lt = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  %i.lu = add i64 %i.lt, 1
  store i64 %i.lu, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split: ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split.sink.split, %.noexc308, %.noexc300
  %.sink = phi ptr [ %i.ld, %.noexc300 ], [ %i.lm, %.noexc308 ], [ %.sink.ph, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split.sink.split ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %.sink, align 8, !tbaa !113
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit: ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split, %bb.bq, %bb.bc, %_ZN11AstNodeExpr8makeStmtEv.exit
  %.2 = phi ptr [ null, %bb.bc ], [ null, %_ZN11AstNodeExpr8makeStmtEv.exit ], [ %i.jf, %bb.bq ], [ %.sink, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit.sink.split ] ; 3 uses
  br i1 %.not.i, label %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313.thread, label %bb.cv

bb.cv:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %.sroa.0.0.copyload.i.i.i311 = load i16, ptr %i.lv, align 8, !tbaa !134
  %i.lw = icmp eq i16 %.sroa.0.0.copyload.i.i.i311, 246
  br i1 %i.lw, label %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313, label %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313.thread

_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313: ; preds = %bb.cv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !127
  br label %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313.thread

_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313.thread: ; preds = %bb.cv, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313
  %i.lz = phi i1 [ true, %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313 ], [ false, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit ], [ false, %bb.cv ] ; 3 uses
  %i.ma = phi ptr [ %i.ly, %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313 ], [ null, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit ], [ %i.bn, %bb.cv ] ; 3 uses
  %.not178 = icmp eq ptr %.2, null
  br i1 %.not178, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313.thread
  invoke void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.2, ptr noundef nonnull %i.he)
          to label %bb.cx unwind label %bb.dv

bb.cx:                                            ; preds = %bb.cw, %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313.thread
  %.0126 = phi ptr [ %i.he, %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit313.thread ], [ %.2, %bb.cw ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.by, i64 72 ; 3 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !153
  %i.md = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.mc, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %.noexc316 unwind label %bb.dv ; 2 uses

.noexc316:                                        ; preds = %bb.cx
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !113
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 352
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = invoke noundef ptr %i.mg(ptr noundef nonnull align 8 dereferenceable(162) %i.md)
          to label %.noexc317 unwind label %bb.dv, !inline_history !309 ; 2 uses

.noexc317:                                        ; preds = %.noexc316
  %.not.i314 = icmp eq ptr %i.mh, null
  br i1 %.not.i314, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318.thread, label %bb.cy

bb.cy:                                            ; preds = %.noexc317
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 164
  %.sroa.0.0.copyload.i.i.i315 = load i8, ptr %i.mi, align 4, !tbaa !308
  %switch.tableidx = add i8 %.sroa.0.0.copyload.i.i.i315, -5 ; 2 uses
  %i.mj = icmp ult i8 %switch.tableidx, 20
  br i1 %i.mj, label %switch.hole_check, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318

_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318: ; preds = %switch.hole_check, %bb.cy
  %i.mk = load i8, ptr %i.ey, align 8, !range !97
  %8 = trunc nuw i8 %i.mk to i1
  %or.cond13 = or i1 %i.lz, %8
  %i.ml = load i32, ptr %7, align 8
  %9 = icmp ne i32 %i.ml, 0
  %or.cond16.not = select i1 %or.cond13, i1 true, i1 %9
  br i1 %or.cond16.not, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318.thread, label %bb.cz

bb.cz:                                            ; preds = %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318
  %i.mm = load i32, ptr %i.gh, align 4, !tbaa !292
  %i.mn = load ptr, ptr %i.mb, align 8, !tbaa !153 ; 2 uses
  %.not.i319 = icmp eq ptr %i.mn, null
  br i1 %.not.i319, label %_ZNK7AstNode5widthEv.exit320, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 152
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !254
  %i.mq = add nsw i32 %i.mp, -1
  br label %_ZNK7AstNode5widthEv.exit320

_ZNK7AstNode5widthEv.exit320:                     ; preds = %bb.da, %bb.cz
  %i.mr = phi i32 [ %i.mq, %bb.da ], [ -1, %bb.cz ]
  %i.ms = icmp eq i32 %i.mm, %i.mr
  br label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318.thread

switch.hole_check:                                ; preds = %bb.cy
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1048353, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318.thread, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318

_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318.thread: ; preds = %switch.hole_check, %.noexc317, %_ZNK7AstNode5widthEv.exit320, %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318
  %10 = phi i1 [ %i.ms, %_ZNK7AstNode5widthEv.exit320 ], [ false, %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318 ], [ false, %.noexc317 ], [ false, %switch.hole_check ]
  %i.mt = load i64, ptr %i.hi, align 4
  %i.mu = and i64 %i.mt, 536870912
  %.not394 = icmp eq i64 %i.mu, 0
  br i1 %.not394, label %bb.db, label %bb.dx

bb.db:                                            ; preds = %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318.thread
  %i.mv = load ptr, ptr %i.bz, align 8, !tbaa !422, !nonnull !98, !align !274 ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 256
  %i.mx = load i8, ptr %i.mw, align 8, !tbaa !167, !range !97, !noundef !98
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.dc, label %.thread

bb.dc:                                            ; preds = %bb.db
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 112
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !313
  %.not.not.i.i.i.i = icmp eq i64 %i.na, 0
  br i1 %.not.not.i.i.i.i, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 104
  br label %bb.de

bb.de:                                            ; preds = %bb.df, %bb.dd
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.nb, %bb.dd ], [ %.sroa.06.0.i.i.i.i, %bb.df ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !283 ; 3 uses
  %.not.i.i.i.i323 = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i323, label %.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !195
  %i.ne = icmp eq ptr %i.by, %i.nd
  br i1 %i.ne, label %.loopexit, label %bb.de, !llvm.loop !704

bb.dg:                                            ; preds = %bb.dc
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 88
  %i.ng = ptrtoint ptr %i.by to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mv, i64 96
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !105 ; 2 uses
  %i.nj = urem i64 %i.ng, %i.ni                   ; 2 uses
  %i.nk = load ptr, ptr %i.nf, align 8, !tbaa !104
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i.i.i321 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i.i321, label %.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !283 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !195
  %i.nq = icmp eq ptr %i.by, %i.np
  br i1 %i.nq, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

bb.di:                                            ; preds = %bb.dj
  %i.nr = icmp eq ptr %i.by, %i.nu
  br i1 %i.nr, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !705

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.dh, %bb.di
  %.020.i.i.i.i.i.i = phi ptr [ %i.ns, %bb.di ], [ %i.nn, %bb.dh ]
  %i.ns = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !283 ; 3 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not18.i.i.i.i.i.i, label %.thread, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !195 ; 2 uses
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = urem i64 %i.nv, %i.ni
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.nw, %i.nj
  br i1 %.not19.i.i.i.i.i.i, label %bb.di, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !705

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.dj
  br label %.thread, !llvm.loop !705

.loopexit:                                        ; preds = %bb.di, %bb.df, %bb.dh
  br i1 %10, label %bb.dx, label %.thread

.thread:                                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.de, %bb.dg, %..loopexit_crit_edge21.i.i.i.i.i.i, %.loopexit, %bb.db
  %i.nx = load ptr, ptr %i.mb, align 8, !tbaa !153
  %i.ny = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.nx, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %.noexc326 unwind label %bb.dv ; 2 uses

.noexc326:                                        ; preds = %.thread
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !113
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 352
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = invoke noundef ptr %i.ob(ptr noundef nonnull align 8 dereferenceable(162) %i.ny)
          to label %.noexc327 unwind label %bb.dv, !inline_history !309 ; 2 uses

.noexc327:                                        ; preds = %.noexc326
  %.not.i324 = icmp eq ptr %i.oc, null
  br i1 %.not.i324, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328, label %bb.dk

bb.dk:                                            ; preds = %.noexc327
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 164
  %.sroa.0.0.copyload.i.i.i325 = load i8, ptr %i.od, align 4, !tbaa !308
  switch i8 %.sroa.0.0.copyload.i.i.i325, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328.thread [
    i8 10, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 13, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 5, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 14, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 15, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 16, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 17, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 18, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 19, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 20, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 21, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 22, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 23, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
    i8 24, label %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
  ]

_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328.thread: ; preds = %bb.dk
  %i.oe = load i8, ptr %i.ey, align 8, !range !97
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %.critedge, label %.critedge.thread

_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328: ; preds = %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %.noexc327
  %i.og = load i8, ptr %i.ey, align 8, !range !97
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %.critedge, label %bb.dl

bb.dl:                                            ; preds = %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328
  br i1 %.not.i, label %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread, label %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit

_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit: ; preds = %bb.dl
  %i.oi = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %.sroa.0.0.copyload.i.i.i330 = load i16, ptr %i.oi, align 8, !tbaa !134
  %.not395 = icmp eq i16 %.sroa.0.0.copyload.i.i.i330, 369
  br i1 %.not395, label %.critedge.thread, label %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread

_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread: ; preds = %bb.dl, %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit
  %i.oj = load ptr, ptr %i.bz, align 8, !tbaa !422, !nonnull !98, !align !274
  %i.ok = load i32, ptr %7, align 8, !tbaa !291
  %i.ol = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %.noexc335 unwind label %bb.dv ; 7 uses

.noexc335:                                        ; preds = %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.ol, i16 121, ptr noundef %i.do)
          to label %.noexc.i333 unwind label %bb.dn

.noexc.i333:                                      ; preds = %.noexc335
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.ol, align 8, !tbaa !113
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.om, ptr noundef nonnull align 8 dereferenceable(208) %i.ol, i32 noundef 32, i32 noundef %i.ok, i1 noundef zeroext true)
          to label %.noexc3.i334 unwind label %bb.dn

.noexc3.i334:                                     ; preds = %.noexc.i333
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ol)
          to label %_ZN10ForceState11makeConst32EP8FileLinei.exit338 unwind label %bb.dm

bb.dm:                                            ; preds = %.noexc3.i334
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.om) #24
  br label %.body.i331

bb.dn:                                            ; preds = %.noexc.i333, %.noexc335
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i331

.body.i331:                                       ; preds = %bb.dn, %bb.dm
  %eh.lpad-body.i332 = phi { ptr, i32 } [ %i.oo, %bb.dn ], [ %i.on, %bb.dm ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef 208) #25
  br label %.body233

_ZN10ForceState11makeConst32EP8FileLinei.exit338: ; preds = %.noexc3.i334
  %i.op = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !152
  %i.or = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.bn, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %.noexc346.invoke unwind label %bb.dv

.critedge:                                        ; preds = %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328, %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328.thread
  %i.os = load ptr, ptr %i.bz, align 8, !tbaa !422, !nonnull !98, !align !274
  %i.ot = invoke noundef ptr @_ZN10ForceState21buildFlattenIndexExprEP8FileLineRKNS_12ArraySelInfoE(ptr noundef %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.ex)
          to label %bb.do unwind label %bb.dv

bb.do:                                            ; preds = %.critedge
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ma, i64 88
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !152
  %i.ow = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.ma, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %.noexc341 unwind label %bb.dv

.noexc341:                                        ; preds = %bb.do
  %i.ox = invoke noundef ptr @_ZNK10ForceState19createForceReadCallERKNS_12VarForceInfoEP8FileLine8VCMethodP11AstNodeExprP7AstNodeS7_(ptr noundef nonnull align 8 dereferenceable(264) %i.os, ptr noundef nonnull align 8 dereferenceable(176) %i.de, ptr noundef %i.ov, i8 71, ptr noundef %i.ow, ptr noundef nonnull %i.ma, ptr noundef %i.ot)
          to label %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit343 unwind label %bb.dv ; 2 uses

_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit343: ; preds = %.noexc341
  br i1 %i.lz, label %.invoke, label %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit

.invoke:                                          ; preds = %.noexc344, %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit343
  %i.oy = phi ptr [ %i.ox, %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit343 ], [ %i.pf, %.noexc344 ]
  %i.oz = invoke noundef ptr @_ZN10ForceState14rebuildSelPathEP11AstNodeExprS1_(ptr noundef %i.bn, ptr noundef %i.oy)
          to label %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit unwind label %bb.dv

.critedge.thread:                                 ; preds = %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit, %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit328.thread
  %i.pa = load ptr, ptr %i.bz, align 8, !tbaa !422, !nonnull !98, !align !274 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !152 ; 2 uses
  br i1 %i.lz, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.critedge.thread
  %i.pd = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(232) %i.bo, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %.noexc344 unwind label %bb.dv

.noexc344:                                        ; preds = %bb.dp
  %i.pe = load ptr, ptr %i.bx, align 8, !tbaa !228
  %i.pf = invoke noundef ptr @_ZNK10ForceState19createForceReadCallERKNS_12VarForceInfoEP8FileLine8VCMethodP11AstNodeExprP7AstNodeS7_(ptr noundef nonnull align 8 dereferenceable(264) %i.pa, ptr noundef nonnull align 8 dereferenceable(176) %i.de, ptr noundef %i.pc, i8 70, ptr noundef %i.pd, ptr noundef %i.pe, ptr noundef null)
          to label %.invoke unwind label %bb.dv

bb.dq:                                            ; preds = %.critedge.thread
  %i.pg = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(232) %i.bo, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %.noexc346 unwind label %bb.dv

.noexc346:                                        ; preds = %bb.dq
  %i.ph = load ptr, ptr %i.bx, align 8, !tbaa !228
  br label %.noexc346.invoke

.noexc346.invoke:                                 ; preds = %_ZN10ForceState11makeConst32EP8FileLinei.exit338, %.noexc346
  %i.pi = phi ptr [ %i.pa, %.noexc346 ], [ %i.oj, %_ZN10ForceState11makeConst32EP8FileLinei.exit338 ]
  %i.pj = phi ptr [ %i.pc, %.noexc346 ], [ %i.oq, %_ZN10ForceState11makeConst32EP8FileLinei.exit338 ]
  %i.pk = phi i8 [ 70, %.noexc346 ], [ 71, %_ZN10ForceState11makeConst32EP8FileLinei.exit338 ]
  %i.pl = phi ptr [ %i.pg, %.noexc346 ], [ %i.or, %_ZN10ForceState11makeConst32EP8FileLinei.exit338 ]
  %i.pm = phi ptr [ %i.ph, %.noexc346 ], [ %i.bn, %_ZN10ForceState11makeConst32EP8FileLinei.exit338 ]
  %i.pn = phi ptr [ null, %.noexc346 ], [ %i.ol, %_ZN10ForceState11makeConst32EP8FileLinei.exit338 ]
  %i.po = invoke noundef ptr @_ZNK10ForceState19createForceReadCallERKNS_12VarForceInfoEP8FileLine8VCMethodP11AstNodeExprP7AstNodeS7_(ptr noundef nonnull align 8 dereferenceable(264) %i.pi, ptr noundef nonnull align 8 dereferenceable(176) %i.de, ptr noundef %i.pj, i8 %i.pk, ptr noundef %i.pl, ptr noundef %i.pm, ptr noundef %i.pn)
          to label %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit unwind label %bb.dv

_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit: ; preds = %.invoke, %.noexc346.invoke, %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit343
  %.0 = phi ptr [ %i.oz, %.invoke ], [ %i.po, %.noexc346.invoke ], [ %i.ox, %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit343 ]
  %i.pp = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %bb.dr unwind label %bb.dv     ; 11 uses

bb.dr:                                            ; preds = %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit
  %i.pq = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.bn, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZN11AstNodeExpr13cloneTreePureEb.exit unwind label %bb.dw ; 3 uses

_ZN11AstNodeExpr13cloneTreePureEb.exit:           ; preds = %bb.dr
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.pp, i16 466, ptr noundef %i.do)
          to label %.noexc355 unwind label %bb.dw

.noexc355:                                        ; preds = %_ZN11AstNodeExpr13cloneTreePureEb.exit
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.pp, align 8, !tbaa !113
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.pp, ptr noundef %.0)
          to label %.noexc356 unwind label %bb.dw

.noexc356:                                        ; preds = %.noexc355
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.pp, ptr noundef %i.pq)
          to label %.noexc357 unwind label %bb.dw

.noexc357:                                        ; preds = %.noexc356
  %.not.i.i.i350 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i350, label %_ZN13AstNodeAssignC2E6VNTypeP8FileLineP11AstNodeExprS4_P7AstNode.exit.i, label %bb.ds

bb.ds:                                            ; preds = %.noexc357
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 72 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !153 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 72 ; 3 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !153
  %.not.i.i8.i.i351 = icmp eq ptr %i.pu, %i.ps
  br i1 %.not.i.i8.i.i351, label %.thread.i354, label %bb.dt

.thread.i354:                                     ; preds = %bb.ds
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.pp, align 8, !tbaa !113
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358

_ZN13AstNodeAssignC2E6VNTypeP8FileLineP11AstNodeExprS4_P7AstNode.exit.i: ; preds = %.noexc357
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.pp, align 8, !tbaa !113
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358

bb.dt:                                            ; preds = %bb.ds
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !153
  %i.pv = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154 ; 2 uses
  %i.pw = add i64 %i.pv, 1
  store i64 %i.pw, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  %.pre.i352 = load ptr, ptr %i.pr, align 8, !tbaa !153 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.pp, align 8, !tbaa !113
  %.not.i.i7.i353 = icmp eq ptr %i.ps, %.pre.i352
  br i1 %.not.i.i7.i353, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store ptr %.pre.i352, ptr %i.pt, align 8, !tbaa !153
  %i.px = add i64 %i.pv, 2
  store i64 %i.px, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !154
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358: ; preds = %bb.du, %bb.dt, %_ZN13AstNodeAssignC2E6VNTypeP8FileLineP11AstNodeExprS4_P7AstNode.exit.i, %.thread.i354
  invoke void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.pp, ptr noundef nonnull %.0126)
          to label %bb.dx unwind label %bb.dv

bb.dv:                                            ; preds = %.invoke, %.noexc346.invoke, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ed, %bb.dz, %bb.dq, %.noexc344, %bb.dp, %.noexc341, %bb.do, %_ZN10ForceState11makeConst32EP8FileLinei.exit338, %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread, %.noexc326, %.thread, %.noexc316, %bb.cx, %.noexc275, %bb.bk, %_ZN7AstNode12dtypeSetVoidEv.exit, %_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit259, %_ZN10ForceState11makeConst32EP8FileLinei.exit256, %_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit248, %_ZN10ForceState11makeConst32EP8FileLinei.exit245, %bb.at, %_ZN10ForceState11makeConst32EP8FileLinei.exit235, %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit, %.noexc, %bb.ae, %.critedge, %bb.cw, %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit.thread, %bb.cq, %bb.bd, %bb.bo, %bb.bt, %bb.ca, %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit, %bb.cb, %_ZN7AstNode7addNextEPS_.exit, %bb.dy, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358, %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit
  %i.py = phi ptr [ %i.ex, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ex, %bb.ed ], [ %i.ex, %bb.bt ], [ %i.ex, %bb.ca ], [ %i.ex, %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit ], [ %i.ex, %bb.cb ], [ %i.ex, %_ZN7AstNode7addNextEPS_.exit ], [ %i.ex, %bb.dy ], [ %i.ex, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358 ], [ %i.ex, %_ZNK10ForceState30createForceReadIndexExpressionERKNS_12VarForceInfoEP11AstNodeExprS4_.exit ], [ %i.ex, %bb.dz ], [ %i.ex, %.noexc346.invoke ], [ %i.ex, %bb.dq ], [ %i.ex, %.noexc344 ], [ %i.ex, %bb.dp ], [ %i.ex, %.noexc341 ], [ %i.ex, %bb.do ], [ %i.ex, %bb.bo ], [ %i.ex, %_ZN10ForceState11makeConst32EP8FileLinei.exit338 ], [ %i.ex, %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread ], [ %i.ex, %.noexc326 ], [ %i.ex, %.thread ], [ %i.ex, %.noexc316 ], [ %i.ex, %bb.cx ], [ %i.ex, %.noexc275 ], [ %i.ex, %bb.bk ], [ %i.ex, %_ZN7AstNode12dtypeSetVoidEv.exit ], [ %i.ex, %_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit259 ], [ %i.ex, %_ZN10ForceState11makeConst32EP8FileLinei.exit256 ], [ %i.ex, %_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit248 ], [ %i.ex, %_ZN10ForceState11makeConst32EP8FileLinei.exit245 ], [ %i.ex, %bb.at ], [ %i.ex, %_ZN10ForceState11makeConst32EP8FileLinei.exit235 ], [ %i.ex, %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit ], [ %i.dw, %.noexc ], [ %i.dw, %bb.ae ], [ %i.ex, %.critedge ], [ %i.ex, %.invoke ], [ %i.ex, %bb.bd ], [ %i.ex, %bb.cw ], [ %i.ex, %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit.thread ], [ %i.ex, %bb.cq ]
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %.body233

bb.dw:                                            ; preds = %.noexc356, %.noexc355, %_ZN11AstNodeExpr13cloneTreePureEb.exit, %bb.dr
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef 152) #25
  br label %.body233

bb.dx:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358, %.loopexit, %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318.thread
  %.1 = phi ptr [ %.0126, %_ZN10ForceState14isBitwiseDTypeEP7AstNode.exit318.thread ], [ %.0126, %.loopexit ], [ %i.pp, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit358 ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !201
  %.not184 = icmp eq ptr %i.qc, null
  br i1 %.not184, label %_ZN7AstNode7addNextEPS_.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qd = load ptr, ptr %i.bz, align 8, !tbaa !422, !nonnull !98, !align !274
  %i.qe = invoke noundef ptr @_ZNK10ForceState23createForceRdUpdateStmtERKNS_12VarForceInfoE(ptr noundef nonnull align 8 dereferenceable(264) %i.qd, ptr noundef nonnull align 8 dereferenceable(176) %i.de)
          to label %bb.dz unwind label %bb.dv

bb.dz:                                            ; preds = %bb.dy
  %i.qf = invoke noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef nonnull align 8 dereferenceable(152) %.1, ptr noundef %i.qe)
          to label %_ZN7AstNode7addNextEPS_.exit unwind label %bb.dv ; 0 uses

_ZN7AstNode7addNextEPS_.exit:                     ; preds = %bb.dz, %bb.dx
  invoke void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %.1)
          to label %bb.ea unwind label %bb.dv

bb.ea:                                            ; preds = %_ZN7AstNode7addNextEPS_.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !426 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !131
  %.not.i.i365 = icmp eq ptr %i.qi, %i.qk
  br i1 %.not.i.i365, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store ptr %1, ptr %i.qi, align 8, !tbaa !133
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store ptr %i.ql, ptr %i.qh, align 8, !tbaa !426
  br label %_ZN9VNVisitor11pushDeletepEP7AstNode.exit

bb.ec:                                            ; preds = %bb.ea
  %i.qm = load ptr, ptr %i.qg, align 8, !tbaa !130 ; 4 uses
  %i.qn = ptrtoint ptr %i.qi to i64
  %i.qo = ptrtoint ptr %i.qm to i64               ; 2 uses
  %i.qp = sub i64 %i.qn, %i.qo                    ; 5 uses
  %i.qq = icmp eq i64 %i.qp, 9223372036854775800
  br i1 %i.qq, label %bb.ed, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc375 unwind label %bb.dv

.noexc375:                                        ; preds = %bb.ed
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ec
  %i.qr = ashr exact i64 %i.qp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qr, i64 1)
  %i.qs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.qr ; 2 uses
  %i.qt = icmp ult i64 %i.qs, %i.qr
  %i.qu = call i64 @llvm.umin.i64(i64 %i.qs, i64 1152921504606846975)
  %i.qv = select i1 %i.qt, i64 1152921504606846975, i64 %i.qu ; 3 uses
  %.not.i.i.i.i366 = icmp ne i64 %i.qv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i366)
  %i.qw = shl nuw nsw i64 %i.qv, 3
  %i.qx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qw) #27
          to label %.noexc376 unwind label %bb.dv ; 4 uses

.noexc376:                                        ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.qy = getelementptr inbounds i8, ptr %i.qx, i64 %i.qp ; 2 uses
  store ptr %1, ptr %i.qy, align 8, !tbaa !133
  %i.qz = icmp sgt i64 %i.qp, 0
  br i1 %i.qz, label %bb.ee, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ee:                                            ; preds = %.noexc376
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qx, ptr align 8 %i.qm, i64 %i.qp, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ee, %.noexc376
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.rb = load ptr, ptr %i.qj, align 8, !tbaa !131
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = sub i64 %i.rc, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.rd) #25
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ef, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.qx, ptr %i.qg, align 8, !tbaa !130
  store ptr %i.ra, ptr %i.qh, align 8, !tbaa !426
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %i.qv
  store ptr %i.re, ptr %i.qj, align 8, !tbaa !131
  br label %_ZN9VNVisitor11pushDeletepEP7AstNode.exit

_ZN9VNVisitor11pushDeletepEP7AstNode.exit:        ; preds = %bb.eb, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.rf = load ptr, ptr %i.ex, align 8, !tbaa !303 ; 3 uses
  %.not.i.i.i.i.i361 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i.i.i361, label %_ZN10ForceState14ForceRangeInfoD2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %_ZN9VNVisitor11pushDeletepEP7AstNode.exit
end_hunk_1
