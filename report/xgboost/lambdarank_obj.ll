inline.NumInlined: 8766
inline.NumDeleted: 2252
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_:bb.a
bb.f:                                             ; preds = %_ZNSolsEm.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #38
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !22
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.36, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEm.exit
  %i.e = load i32, ptr %2, align 4, !tbaa !58
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.f)
          to label %_ZNSolsEj.exit unwind label %bb.f

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.22, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEj.exit
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #40
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !133, !alias.scope !204
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !110, !alias.scope !204
  store i8 0, ptr %i.j, align 8, !tbaa !111, !alias.scope !204
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !175, !noalias !204 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !204 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !176, !noalias !204 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !106, !alias.scope !204 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.j, align 8, !tbaa !111, !alias.scope !204
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #38
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.i, ptr %0, align 8, !tbaa !104
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !151
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !151
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !151
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !111
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #38
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !151
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.f:                                             ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #38
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %.body ], [ %i.aq, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree nounwind uwtable
define internal fastcc void @"_ZZN7xgboost3obj8cpu_impl7MAPStatEPKNS_7ContextENS_6linalg10TensorViewIKfLi1EEENS_6common4SpanIKmLm18446744073709551615EEESt10shared_ptrINS_3ltr8MAPCacheEEENK3$_0clImEEDaT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #23 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205, !nonnull !211, !align !212 ; 2 uses
  %i.b = add i64 %1, 1                            ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !215  ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58   ; 2 uses
  %i.i = icmp ult i64 %1, %i.c
  br i1 %i.i, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit23, label %bb.c, !prof !57

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit23: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1
  %i.k = load i32, ptr %i.j, align 4, !tbaa !58   ; 3 uses
  %i.l = sub i32 %i.h, %i.k                       ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !216, !nonnull !211, !align !212 ; 2 uses
  %i.o = zext i32 %i.k to i64                     ; 5 uses
  %i.p = zext i32 %i.l to i64                     ; 3 uses
  %i.q = add nuw nsw i64 %i.p, %i.o               ; 3 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !217
  %.not.i = icmp ugt i64 %i.q, %i.r
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit23
  tail call void @_ZSt9terminatev() #37
  unreachable

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit23
  %.in.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %.in.i, align 8, !tbaa !219 ; 2 uses
  %i.t = icmp ne ptr %i.s, null
  %i.u = icmp eq i32 %i.h, %i.k                   ; 3 uses
  %i.v = or i1 %i.u, %i.t
  br i1 %i.v, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit24, label %bb.f, !prof !57

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit24: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.o ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !220, !nonnull !211, !align !212 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !221
  %.not.i25 = icmp ugt i64 %i.q, %i.z
  br i1 %.not.i25, label %bb.g, label %bb.h, !prof !60

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit24
  tail call void @_ZSt9terminatev() #37
  unreachable

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit24
  %.in.i26 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %.in.i26, align 8, !tbaa !224 ; 2 uses
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = or i1 %i.u, %i.ab
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit30, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit30: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.o ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !225, !nonnull !211, !align !212 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !22, !noalias !226 ; 8 uses
  %i.ah = mul i64 %i.ag, %i.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !229, !noalias !226 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 0, i64 %i.ah       ; 3 uses
  %.not8.i.i = icmp ugt i64 %i.al, %i.aj
  br i1 %.not8.i.i, label %bb.j, label %bb.k, !prof !60

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit30
  tail call void @_ZSt9terminatev() #37, !noalias !226
  unreachable

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit30
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.am = load ptr, ptr %.in.i.i, align 8, !tbaa !230, !noalias !226 ; 2 uses
  %i.an = icmp ne ptr %i.am, null
  %i.ao = icmp eq i64 %i.aj, %i.al
  %i.ap = or i1 %i.ao, %i.an
  br i1 %i.ap, label %_ZNK7xgboost6linalg10TensorViewIKfLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit, label %bb.l, !prof !57

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #37, !noalias !226
  unreachable

_ZNK7xgboost6linalg10TensorViewIKfLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit: ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al ; 7 uses
  br i1 %i.u, label %bb.m, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit, !prof !60

bb.m:                                             ; preds = %_ZNK7xgboost6linalg10TensorViewIKfLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit: ; preds = %_ZNK7xgboost6linalg10TensorViewIKfLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.as = mul i64 %i.ar, %i.ag
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !231
  %i.av = fpext float %i.au to double             ; 6 uses
  store double %i.av, ptr %i.w, align 8, !tbaa !67
  %i.aw = icmp ugt i32 %i.l, 1                    ; 2 uses
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit
  %i.ax = add nsw i64 %i.p, -1                    ; 3 uses
  %xtraiter = and i64 %i.ax, 1
  %i.ay = icmp eq i32 %i.l, 2
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.epil.preheader, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader.new

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader.new: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader
  %unroll_iter = and i64 %i.ax, -2
  br label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.epil.preheader

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.epil.preheader: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31.loopexit.unr-lcssa, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader
  %.epil.init = phi double [ %i.av, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader ], [ %i.cb, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31.loopexit.unr-lcssa ]
  %.02174.epil.init = phi i64 [ 1, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader ], [ %i.cc, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.02174.epil.init
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !22
  %i.bb = mul i64 %i.ba, %i.ag
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !231
  %i.be = fpext float %i.bd to double
  %i.bf = fadd double %.epil.init, %i.be
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.02174.epil.init
  store double %i.bf, ptr %2, align 8, !tbaa !67
  br label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.epil.preheader, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31.loopexit.unr-lcssa, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !233, !nonnull !211, !align !212 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !217
  %.not.i32 = icmp ugt i64 %i.q, %i.bi
  br i1 %.not.i32, label %bb.n, label %bb.o, !prof !60

bb.n:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31
  tail call void @_ZSt9terminatev() #37
  unreachable

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31
  %.in.i33 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %.in.i33, align 8, !tbaa !219 ; 2 uses
  %.not73 = icmp eq ptr %i.bj, null
  br i1 %.not73, label %bb.p, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit38, !prof !60

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit38: ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.o ; 4 uses
  store double %i.av, ptr %i.bk, align 8, !tbaa !67
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader, label %._crit_edge

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit38
  %i.bl = add nsw i64 %i.p, -1                    ; 3 uses
  %xtraiter87 = and i64 %i.bl, 1
  %i.bm = icmp eq i32 %i.l, 2
  br i1 %i.bm, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.epil.preheader, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader.new

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader.new: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader
  %unroll_iter92 = and i64 %i.bl, -2
  br label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader.new
  %i.bn = phi double [ %i.av, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader.new ], [ %i.cb, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41 ]
  %.02174 = phi i64 [ 1, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader.new ], [ %i.cc, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41 ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41.preheader.new ], [ %niter.next.1, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41 ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.02174
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !22
  %i.bq = mul i64 %i.bp, %i.ag
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !231
  %i.bt = fpext float %i.bs to double
  %i.bu = fadd double %i.bn, %i.bt                ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.02174
  store double %i.bu, ptr %3, align 8, !tbaa !67
  %4 = add nuw nsw i64 %.02174, 1                 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %4
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !22
  %i.bx = mul i64 %i.bw, %i.ag
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !231
  %i.ca = fpext float %i.bz to double
  %i.cb = fadd double %i.bu, %i.ca                ; 3 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %4
  store double %i.cb, ptr %5, align 8, !tbaa !67
  %i.cc = add nuw nsw i64 %.02174, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit31.loopexit.unr-lcssa, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit41, !llvm.loop !234

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44
  %lcmp.mod90.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod90.not, label %._crit_edge, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.epil.preheader

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader
  %.epil.init89 = phi double [ %i.av, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader ], [ %i.dh, %._crit_edge.loopexit.unr-lcssa ]
  %.075.epil.init = phi i64 [ 1, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod91 = trunc i64 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.075.epil.init
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !22
  %i.cf = mul i64 %i.ce, %i.ag
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !231
  %i.ci = fpext float %i.ch to double
  %i.cj = add nuw nsw i64 %.075.epil.init, 1
  %i.ck = uitofp nneg i64 %i.cj to double
  %i.cl = fdiv double %i.ci, %i.ck
  %i.cm = fadd double %.epil.init89, %i.cl
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.075.epil.init
  store double %i.cm, ptr %6, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit38
  ret void

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader.new
  %i.cn = phi double [ %i.av, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader.new ], [ %i.dh, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44 ]
  %.075 = phi i64 [ 1, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader.new ], [ %i.de, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44 ] ; 4 uses
  %niter93 = phi i64 [ 0, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44.preheader.new ], [ %niter93.next.1, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44 ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.075
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !22
  %i.cq = mul i64 %i.cp, %i.ag
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !231
  %i.ct = fpext float %i.cs to double
  %i.cu = add nuw nsw i64 %.075, 1                ; 3 uses
  %i.cv = uitofp nneg i64 %i.cu to double
  %i.cw = fdiv double %i.ct, %i.cv
  %i.cx = fadd double %i.cn, %i.cw                ; 2 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.075
  store double %i.cx, ptr %7, align 8, !tbaa !67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cu
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !22
  %i.da = mul i64 %i.cz, %i.ag
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !231
  %i.dd = fpext float %i.dc to double
  %i.de = add nuw nsw i64 %.075, 2                ; 3 uses
  %i.df = uitofp nneg i64 %i.de to double
  %i.dg = fdiv double %i.dd, %i.df
  %i.dh = fadd double %i.cx, %i.dg                ; 3 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cu
  store double %i.dh, ptr %8, align 8, !tbaa !67
  %niter93.next.1 = add nuw i64 %niter93, 2       ; 2 uses
  %niter93.ncmp.1 = icmp eq i64 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit44, !llvm.loop !235
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !58
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.36, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !58
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.22, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #40
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !133, !alias.scope !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !110, !alias.scope !242
  store i8 0, ptr %i.i, align 8, !tbaa !111, !alias.scope !242
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !175, !noalias !242 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !242 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !176, !noalias !242 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !106, !alias.scope !242 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.i, align 8, !tbaa !111, !alias.scope !242
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #38
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  store ptr %i.h, ptr %0, align 8, !tbaa !104
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !151
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !151
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !151
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !106 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !111
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #38
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !151
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #38
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #24

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #13

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.77", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.80", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !110  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !110  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #11 ; 2 uses
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
end_hunk_0
