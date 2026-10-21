Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Inline?download=true
inline.NumInlined: 2345
inline.NumDeleted: 840
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL14dumpGraphLevelv:bb.a
.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL14dumpGraphLevelvE7s_level, align 4, !tbaa !33
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

declare void @_ZNK7V3Graph19dumpDotFilePrefixedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !143
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.529) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.d, ptr %i.a, align 8, !tbaa !83
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !77
  %i.g = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.g, ptr %i.b, align 8, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !51
  store i8 %i.i, ptr %i.h, align 1, !tbaa !51
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !78
  %i.l = load ptr, ptr %0, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7V3Stats7addStatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdj(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %class.V3Statistic, align 8         ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !143
  store i8 42, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !51
  invoke void @_ZN11V3StatisticC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_djbb(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %1, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN7V3Stats7addStatERK11V3Statistic(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !51
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN11V3StatisticD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !51
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZN11V3StatisticD2Ev.exit

_ZN11V3StatisticD2Ev.exit:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.p = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11V3StatisticD2Ev.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !51
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11V3StatisticD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11V3StatisticD2Ev(ptr noundef nonnull align 8 dead_on_return(91) dereferenceable(96) %3) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.t, %bb.c ]
  %i.v = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !51
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12VNUser3InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser3InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser3InUse10s_userBusyE)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12VNUser1InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser1InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser1InUse10s_userBusyE)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3Inline9inlineAllEP10AstNetlist(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %class.InlineModGraphBuilder, align 8 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = tail call noundef i32 @_ZL5debugv()
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.q, !prof !74

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str, i32 noundef 889)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = load ptr, ptr %3, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !78
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @__FUNCTION__._ZN8V3Inline9inlineAllEP10AstNetlist, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.l = load ptr, ptr %3, align 8, !tbaa !77     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.o = load i64, ptr %i.m, align 8, !tbaa !51
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !78   ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !51
  %.not = icmp eq i8 %i.v, 10
  %i.w = load ptr, ptr %5, align 8, !tbaa !77     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102: ; preds = %bb.e
  %i.z = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.e
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !51
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.ab) #25
  %.pre = load ptr, ptr %4, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  %i.ac = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !51
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.l unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !51
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.ak, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.p

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.k:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.k
  %i.av = load i64, ptr %i.at, align 8, !tbaa !51
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.j
  %.pn66 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.p

bb.l:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %6, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !78
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ax, i64 noundef %i.az)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113 unwind label %bb.o ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113: ; preds = %bb.m
  %i.bb = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !51
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.o:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.o
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !51
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.n
  %.pn68 = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.bh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.g
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.ai, %bb.g ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bo

bb.q:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !374
  call void @_ZN21InlineModGraphBuilderC2EP10AstNetlist(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %0), !noalias !374
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !166, !noalias !374 ; 2 uses
  store i64 %i.bo, ptr %7, align 8, !tbaa !166, !alias.scope !374
  store ptr null, ptr %i.bn, align 8, !tbaa !166, !noalias !374
  call void @_ZN21InlineModGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #26, !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !374
  %i.bp = inttoptr i64 %i.bo to ptr               ; 7 uses
  %12 = invoke noundef i32 @_ZL14dumpGraphLevelv()
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bq = icmp sgt i32 %12, 5
  br i1 %i.bq, label %._crit_edge.i.i, label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.br, ptr %8, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.br, ptr noundef nonnull align 1 dereferenceable(15) @.str.20, i64 15, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 15, ptr %i.bs, align 8, !tbaa !78
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 31
  store i8 0, ptr %i.bt, align 1, !tbaa !51
  invoke void @_ZNK7V3Graph19dumpDotFilePrefixedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bu = load ptr, ptr %8, align 8, !tbaa !77    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.s
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !51
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %8, align 8, !tbaa !77    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.br
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.t
  %i.cb = load i64, ptr %i.br, align 8, !tbaa !51
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !219 ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, i64 noundef ptrtoint (ptr @_ZZN21InlineModModuleVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4

.noexc126:                                        ; preds = %bb.u
  br i1 %i.ch, label %_ZN13V3GraphVertex2asI21InlineModModuleVertexEEPT_v.exit, label %bb.v, !prof !58

bb.v:                                             ; preds = %.noexc126
  %i.ci = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.583, i32 noundef 249)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc127:                                        ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc128:                                        ; preds = %.noexc127
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.584, i64 noundef 37)
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc129:                                        ; preds = %.noexc128
  invoke void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, ptr noundef nonnull align 8 dereferenceable(112) %i.cj)
          to label %_ZN13V3GraphVertex2asI21InlineModModuleVertexEEPT_v.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13V3GraphVertex2asI21InlineModModuleVertexEEPT_v.exit: ; preds = %.noexc126, %.noexc129
  %i.cl = invoke noundef i64 @_ZNK21InlineModModuleVertex13flattenedSizeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ce)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %_ZN13V3GraphVertex2asI21InlineModModuleVertexEEPT_v.exit
  %.sroa.0202.0222 = load ptr, ptr %i.cd, align 8, !tbaa !190 ; 2 uses
  %.not208223 = icmp eq ptr %.sroa.0202.0222, null
  br i1 %.not208223, label %._crit_edge, label %.lr.ph225

._crit_edge:                                      ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, %bb.w
  %i.cm = invoke noundef i32 @_ZL14dumpGraphLevelv()
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph225:                                        ; preds = %bb.w, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %.sroa.0202.0224 = phi ptr [ %.sroa.0202.0, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ %.sroa.0202.0222, %bb.w ] ; 21 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !191 ; 2 uses
  %.not.i98 = icmp eq ptr %i.co, null
  %i.cp = select i1 %.not.i98, ptr %.sroa.0202.0224, ptr %i.co
  call void @llvm.prefetch.p0(ptr nonnull %i.cp, i32 1, i32 3, i32 1)
  %i.cq = load ptr, ptr %.sroa.0202.0224, align 8, !tbaa !35
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0202.0224, i64 noundef ptrtoint (ptr @_ZZN21InlineModModuleVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !372

bb.x:                                             ; preds = %.lr.ph225
  br i1 %i.cs, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.ct = invoke noundef i64 @_ZNK21InlineModModuleVertex13flattenedSizeEv(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0202.0224)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.cu = mul i64 %i.ct, 10
  %i.cv = icmp ult i64 %i.cu, %i.cl
  br i1 %i.cv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN21InlineModModuleVertex10setFlattenEv(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0202.0224)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 88
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !68
  %.not210 = icmp eq ptr %i.cx, null
  br i1 %.not210, label %bb.ac, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 96
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !220
  %.not211 = icmp eq ptr %i.cz, null
  br i1 %.not211, label %bb.ad, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.ad:                                            ; preds = %bb.ac
  %i.da = invoke noundef i64 @_ZNK21InlineModModuleVertex13flattenedSizeEv(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0202.0224)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.db = invoke noundef i64 @_ZNK21InlineModModuleVertex13instanceCountEv(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0202.0224)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dc = mul i64 %i.da, 5
  %i.dd = mul i64 %i.dc, %i.db
  %i.de = icmp ult i64 %i.dd, %i.cl
  br i1 %i.de, label %bb.ag, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.ag:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 40
  %.sroa.0196.0219 = load ptr, ptr %i.df, align 8, !tbaa !61 ; 2 uses
  %.not212220 = icmp eq ptr %.sroa.0196.0219, null
  br i1 %.not212220, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %.sroa.0196.0221 = phi ptr [ %.sroa.0196.0, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ %.sroa.0196.0219, %bb.ag ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0196.0221, i64 24 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !63 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, null
  %i.di = select i1 %.not.i, ptr %.sroa.0196.0221, ptr %i.dh
  call void @llvm.prefetch.p0(ptr nonnull %i.di, i32 1, i32 3, i32 1)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0196.0221, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !217 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !35
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef nonnull align 8 dereferenceable(80) %i.dk, i64 noundef ptrtoint (ptr @_ZZN19InlineModCellVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

.noexc132:                                        ; preds = %.lr.ph
  br i1 %i.dn, label %_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit, label %bb.ah, !prof !58

bb.ah:                                            ; preds = %.noexc132
  %i.do = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.583, i32 noundef 249)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc133:                                        ; preds = %bb.ah
  %i.dp = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc134:                                        ; preds = %.noexc133
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str.584, i64 noundef 37)
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc135:                                        ; preds = %.noexc134
  invoke void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.dk, ptr noundef nonnull align 8 dereferenceable(112) %i.dp)
          to label %_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit: ; preds = %.noexc132, %.noexc135
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 88 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !55
  %.not.i137 = icmp eq ptr %i.ds, null
  br i1 %.not.i137, label %bb.ai, label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.ai:                                            ; preds = %_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit
  store ptr @.str.21, ptr %i.dr, align 8, !tbaa !55
  br label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %bb.ai, %_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit
  %.sroa.0196.0 = load ptr, ptr %i.dg, align 8, !tbaa !61 ; 2 uses
  %.not212 = icmp eq ptr %.sroa.0196.0, null
  br i1 %.not212, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, label %.lr.ph

.critedge:                                        ; preds = %bb.x
  %i.dt = load ptr, ptr %.sroa.0202.0224, align 8, !tbaa !35
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0202.0224, i64 noundef ptrtoint (ptr @_ZZN19InlineModCellVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %.noexc138 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

.noexc138:                                        ; preds = %.critedge
  br i1 %i.dv, label %_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit143, label %bb.aj, !prof !58

bb.aj:                                            ; preds = %.noexc138
  %i.dw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.583, i32 noundef 249)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc139:                                        ; preds = %bb.aj
  %i.dx = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc140:                                        ; preds = %.noexc139
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.584, i64 noundef 37)
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc141:                                        ; preds = %.noexc140
  invoke void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0202.0224, ptr noundef nonnull align 8 dereferenceable(112) %i.dx)
          to label %_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit143: ; preds = %.noexc138, %.noexc141
  %i.dz = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNK19InlineModCellVertex10instanceOfEv(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0202.0224)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.ak:                                            ; preds = %_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit143
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !68
  %.not213 = icmp eq ptr %i.eb, null
  br i1 %.not213, label %bb.al, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.al:                                            ; preds = %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 104
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !221
  %.not214 = icmp eq ptr %i.ed, null
  br i1 %.not214, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit145, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 88 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !55
  %.not.i144 = icmp eq ptr %i.ef, null
  br i1 %.not.i144, label %bb.an, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit145

bb.an:                                            ; preds = %bb.am
  store ptr @.str.22, ptr %i.ee, align 8, !tbaa !55
  br label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit145

_ZN19InlineModCellVertex11setDoInlineEPKc.exit145: ; preds = %bb.an, %bb.am, %bb.al
  %i.eg = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 987), align 1, !tbaa !375, !range !66, !noundef !67
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ao, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit147

bb.ao:                                            ; preds = %_ZN19InlineModCellVertex11setDoInlineEPKc.exit145
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 88 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !55
  %.not.i146 = icmp eq ptr %i.ej, null
  br i1 %.not.i146, label %bb.ap, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit147

bb.ap:                                            ; preds = %bb.ao
  store ptr @.str.23, ptr %i.ei, align 8, !tbaa !55
  br label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit147

_ZN19InlineModCellVertex11setDoInlineEPKc.exit147: ; preds = %bb.ap, %bb.ao, %_ZN19InlineModCellVertex11setDoInlineEPKc.exit145
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !220
  %.not215 = icmp eq ptr %i.el, null
  br i1 %.not215, label %bb.aq, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.aq:                                            ; preds = %_ZN19InlineModCellVertex11setDoInlineEPKc.exit147
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !57 ; 3 uses
  %.not.i.i = icmp ne ptr %i.en, null             ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = icmp eq ptr %i.en, %i.ep
  %i.er = select i1 %.not.i.i, i1 %i.eq, i1 false
  br i1 %i.er, label %bb.ar, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit149

bb.ar:                                            ; preds = %bb.aq
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 88 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !55
  %.not.i148 = icmp eq ptr %i.et, null
  br i1 %.not.i148, label %bb.as, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit149

bb.as:                                            ; preds = %bb.ar
  store ptr @.str.24, ptr %i.es, align 8, !tbaa !55
  br label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit149

_ZN19InlineModCellVertex11setDoInlineEPKc.exit149: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dz, i64 112
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !192 ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 100
  br i1 %i.ew, label %bb.at, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit151

bb.at:                                            ; preds = %_ZN19InlineModCellVertex11setDoInlineEPKc.exit149
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 88 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !55
  %.not.i150 = icmp eq ptr %i.ey, null
  br i1 %.not.i150, label %bb.au, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit151

bb.au:                                            ; preds = %bb.at
  store ptr @.str.25, ptr %i.ex, align 8, !tbaa !55
  br label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit151

_ZN19InlineModCellVertex11setDoInlineEPKc.exit151: ; preds = %bb.au, %bb.at, %_ZN19InlineModCellVertex11setDoInlineEPKc.exit149
  %i.ez = load i32, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1100), align 4, !tbaa !376 ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 1
  br i1 %i.fa, label %bb.av, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit153

bb.av:                                            ; preds = %_ZN19InlineModCellVertex11setDoInlineEPKc.exit151
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 88 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !55
  %.not.i152 = icmp eq ptr %i.fc, null
  br i1 %.not.i152, label %bb.aw, label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit153

bb.aw:                                            ; preds = %bb.av
  store ptr @.str.26, ptr %i.fb, align 8, !tbaa !55
  br label %_ZN19InlineModCellVertex11setDoInlineEPKc.exit153

_ZN19InlineModCellVertex11setDoInlineEPKc.exit153: ; preds = %bb.aw, %bb.av, %_ZN19InlineModCellVertex11setDoInlineEPKc.exit151
  br i1 %.not.i.i, label %.lr.ph.i, label %_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit

.lr.ph.i:                                         ; preds = %_ZN19InlineModCellVertex11setDoInlineEPKc.exit153, %.lr.ph.i
  %.sroa.02.07.i = phi ptr [ %.sroa.02.0.i, %.lr.ph.i ], [ %i.en, %_ZN19InlineModCellVertex11setDoInlineEPKc.exit153 ]
  %.06.i = phi i64 [ %i.fd, %.lr.ph.i ], [ 0, %_ZN19InlineModCellVertex11setDoInlineEPKc.exit153 ]
  %i.fd = add i64 %.06.i, 1                       ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 24
  %.sroa.02.0.i = load ptr, ptr %i.fe, align 8, !tbaa !61 ; 2 uses
  %.not.i154 = icmp eq ptr %.sroa.02.0.i, null
  br i1 %.not.i154, label %_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !373

_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit.loopexit: ; preds = %.lr.ph.i
  %i.ff = mul i64 %i.fd, %i.ev
  br label %_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit

_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit: ; preds = %_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit.loopexit, %_ZN19InlineModCellVertex11setDoInlineEPKc.exit153
  %.0.lcssa.i = phi i64 [ 0, %_ZN19InlineModCellVertex11setDoInlineEPKc.exit153 ], [ %i.ff, %_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit.loopexit ]
  %i.fg = sext i32 %i.ez to i64
  %i.fh = icmp ult i64 %.0.lcssa.i, %i.fg
  br i1 %i.fh, label %bb.ax, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.ax:                                            ; preds = %_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0202.0224, i64 88 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !55
  %.not.i155 = icmp eq ptr %i.fj, null
  br i1 %.not.i155, label %bb.ay, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.ay:                                            ; preds = %bb.ax
  store ptr @.str.27, ptr %i.fi, align 8, !tbaa !55
  br label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.ah, %.noexc133, %.noexc134, %.noexc135, %.noexc141, %.noexc140, %.noexc139, %bb.aj, %.critedge, %.lr.ph225, %bb.ad, %bb.ae, %bb.aa, %bb.y, %_ZN13V3GraphVertex2asI19InlineModCellVertexEEPT_v.exit143, %.noexc129, %.noexc128, %.noexc127, %bb.v, %bb.u, %bb.q, %bb.be, %bb.bd, %._crit_edge, %_ZN13V3GraphVertex2asI21InlineModModuleVertexEEPT_v.exit
  %lpad.loopexit.split-lp261 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, %bb.ag, %bb.ay, %bb.ax, %bb.ab, %bb.ac, %bb.af, %bb.ak, %_ZN19InlineModCellVertex11setDoInlineEPKc.exit147, %_ZNK6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E4sizeEv.exit
  %.sroa.0202.0 = load ptr, ptr %i.cn, align 8, !tbaa !190 ; 2 uses
  %.not208 = icmp eq ptr %.sroa.0202.0, null
  br i1 %.not208, label %._crit_edge, label %.lr.ph225

bb.az:                                            ; preds = %._crit_edge
  %i.fk = icmp sgt i32 %i.cm, 5
  br i1 %i.fk, label %.noexc.i158, label %bb.bd

.noexc.i158:                                      ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fl, ptr %9, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 18, ptr %i.b, align 8, !tbaa !83
  %i.fm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc159 unwind label %bb.bb ; 2 uses

.noexc159:                                        ; preds = %.noexc.i158
  store ptr %i.fm, ptr %9, align 8, !tbaa !77
  %i.fn = load i64, ptr %i.b, align 8, !tbaa !83  ; 3 uses
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.fm, ptr noundef nonnull align 1 dereferenceable(18) @.str.28, i64 18, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !78
  %i.fp = load ptr, ptr %9, align 8, !tbaa !77
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fn
  store i8 0, ptr %i.fq, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke void @_ZNK7V3Graph19dumpDotFilePrefixedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext false)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %.noexc159
  %i.fr = load ptr, ptr %9, align 8, !tbaa !77    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fl
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.ba
  %i.ft = load i64, ptr %i.fl, align 8, !tbaa !51
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bd

bb.bb:                                            ; preds = %.noexc.i158
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bc:                                            ; preds = %.noexc159
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %9, align 8, !tbaa !77    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.fl
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bc
  %i.fz = load i64, ptr %i.fl, align 8, !tbaa !51
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.bb
  %.pn73 = phi { ptr, i32 } [ %i.fv, %bb.bb ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.fw, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %bb.az
  invoke void @_ZN13ModuleInliner7processEP10AstNetlistR14InlineModGraph(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  %i.gb = invoke noundef i32 @_ZL14dumpGraphLevelv()
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.gc = icmp sgt i32 %i.gb, 5
  br i1 %i.gc, label %.noexc.i168, label %._crit_edge.i.i177

.noexc.i168:                                      ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.gd, ptr %10, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 17, ptr %i.a, align 8, !tbaa !83
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc169 unwind label %bb.bh ; 2 uses

.noexc169:                                        ; preds = %.noexc.i168
  store ptr %i.ge, ptr %10, align 8, !tbaa !77
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !83  ; 3 uses
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ge, ptr noundef nonnull align 1 dereferenceable(17) @.str.29, i64 17, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !78
  %i.gh = load ptr, ptr %10, align 8, !tbaa !77
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  store i8 0, ptr %i.gi, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZNK7V3Graph19dumpDotFilePrefixedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %.noexc169
  %i.gj = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.gd
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.bg
  %i.gl = load i64, ptr %i.gd, align 8, !tbaa !51
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %._crit_edge.i.i177

bb.bh:                                            ; preds = %.noexc.i168
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.bi:                                            ; preds = %.noexc169
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.gd
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.bi
  %i.gr = load i64, ptr %i.gd, align 8, !tbaa !51
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.bh
  %.pn75 = phi { ptr, i32 } [ %i.gn, %bb.bh ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %i.go, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i177:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.gt, ptr %11, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gt, ptr noundef nonnull align 1 dereferenceable(6) @.str.30, i64 6, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 6, ptr %i.gu, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i8 0, ptr %i.gv, align 2, !tbaa !51
  %i.gw = invoke noundef i32 @_ZL17dumpTreeJsonLevelv()
          to label %.noexc182 unwind label %bb.bn

.noexc182:                                        ; preds = %._crit_edge.i.i177
  %i.gx = invoke noundef i32 @_ZL13dumpTreeLevelv()
          to label %.noexc183 unwind label %bb.bn

.noexc183:                                        ; preds = %.noexc182
  %.not.i181 = icmp slt i32 %i.gw, %i.gx
  br i1 %.not.i181, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.noexc183
  %i.gy = invoke noundef i32 @_ZL17dumpTreeJsonLevelv()
          to label %_ZL19dumpTreeEitherLevelv.exit unwind label %bb.bn

bb.bk:                                            ; preds = %.noexc183
  %i.gz = invoke noundef i32 @_ZL13dumpTreeLevelv()
          to label %_ZL19dumpTreeEitherLevelv.exit unwind label %bb.bn

_ZL19dumpTreeEitherLevelv.exit:                   ; preds = %bb.bj, %bb.bk
  %i.ha = phi i32 [ %i.gy, %bb.bj ], [ %i.gz, %bb.bk ]
  %i.hb = icmp sgt i32 %i.ha, 2
  invoke void @_ZN8V3Global19dumpCheckGlobalTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibb(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 0, i1 noundef zeroext %i.hb, i1 noundef zeroext true)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %_ZL19dumpTreeEitherLevelv.exit
  %i.hc = load ptr, ptr %11, align 8, !tbaa !77   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gt
  br i1 %i.hd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.bl
  %i.he = load i64, ptr %i.gt, align 8, !tbaa !51
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i187: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser4InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser4InUse10s_userBusyE)
          to label %_ZNSt10unique_ptrI14InlineModGraphSt14default_deleteIS0_EED2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i187
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
