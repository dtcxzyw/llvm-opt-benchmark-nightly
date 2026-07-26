inline.NumInlined: 8537
inline.NumDeleted: 3635
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK8facebook5velox8TimeType11valueToTimeERKNS0_10StringViewEPKNS0_2tz8TimeZoneEl:bb.a
  %i.ab = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox4tzdb22nonexistent_local_timeE) #16
  %i.ac = icmp eq i32 %i.t, %i.ab
  br i1 %i.ac, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  %i.ad = call ptr @__cxa_begin_catch(ptr %i.s) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN8facebook5velox10StringViewEvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !1022
  %i.ae = load ptr, ptr %7, align 8, !tbaa !29, !noalias !1022
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !72, !noalias !1022
  %i.ah = ptrtoint ptr %i.ae to i64
  store i64 %i.ah, ptr %4, align 16, !noalias !1022
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ag, ptr %.sroa_idx3.i, align 8, !noalias !1022
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.120, i64 69, i64 13, ptr nonnull %4)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !1022
  %i.ai = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !9
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox8TimeType11valueToTimeERKNS0_10StringViewEPKNS0_2tz8TimeZoneElE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.120) #50
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.q:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.q
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !9
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.p
  %.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.ao, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.r
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !9
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.pn28 = phi { ptr, i32 } [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.au, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

bb.s:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

bb.t:                                             ; preds = %_ZNK8facebook5velox8TimeType11valueToTimeERKNS0_10StringViewE.exit, %bb.j
  %.019 = phi i64 [ %.0, %bb.j ], [ %i.m, %_ZNK8facebook5velox8TimeType11valueToTimeERKNS0_10StringViewE.exit ]
  ret i64 %.019

bb.u:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #53
  unreachable
}

declare i64 @_ZNK8facebook5velox2tz8TimeZone6to_sysENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_7TChooseE(ptr noundef nonnull align 8 dereferenceable(50), i64, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #25

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN8facebook5velox10StringViewEvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !1011   ; 4 uses
  %i.b = icmp ult i32 %i.a, 13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = zext i32 %i.a to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !84
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.176) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %i.a, 15
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, label %._crit_edge.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.g, 1
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #52 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !29
  store i64 %i.g, ptr %i.h, align 8, !tbaa !9
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  switch i32 %i.a, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.c, align 4, !tbaa !9
  store i8 %i.n, ptr %i.m, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !9
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #26 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #53
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox8TimeType16toCompactIso8601B5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.818", align 16 ; 4 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.818", align 16 ; 4 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.818", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1036", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = sdiv i64 %1, 3600000000
  %i.b = srem i64 %1, 3600000000                  ; 2 uses
  %i.c = sdiv i64 %i.b, 60000000
  %i.d = srem i64 %i.b, 60000000                  ; 2 uses
  %.lhs.trunc86 = trunc nsw i64 %i.d to i32       ; 2 uses
  %i.e = srem i32 %.lhs.trunc86, 1000000          ; 4 uses
  %i.f = sdiv i32 %.lhs.trunc86, 1000000
  %.sext87 = zext nneg i32 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !1025
  store i64 %i.a, ptr %5, align 16, !tbaa !9, !noalias !1025
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.c, ptr %i.g, align 16, !tbaa !9, !noalias !1025
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.121, i64 13, i64 51, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !1025
  %i.h = icmp sgt i64 %i.d, 999999
  %i.i = icmp sgt i32 %i.e, 0                     ; 2 uses
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %.noexc27, label %bb.ag

.noexc27:                                         ; preds = %bb.a
  %.sext = sext i32 %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !1028
  store i64 %.sext, ptr %3, align 16, !tbaa !9
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.122, i64 7, i64 3, ptr nonnull %3)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !1028
  %i.j = load ptr, ptr %6, align 8, !tbaa !29     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72   ; 5 uses
  %i.o = sub i64 9223372036854775807, %i.n
  %i.p = icmp ult i64 %i.o, %i.l
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.169) #50
          to label %.noexc32 unwind label %bb.t

.noexc32:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.q = add i64 %i.n, %i.l                       ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.v = load i64, ptr %i.s, align 8, !tbaa !9
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.q, %i.w
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.l, 1
  br i1 %cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.j, align 1, !tbaa !9
  store i8 %i.y, ptr %i.x, align 1, !tbaa !9
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.l)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.h
  store i64 %i.q, ptr %i.m, align 8, !tbaa !72
  %i.z = load ptr, ptr %0, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.q
  store i8 0, ptr %i.aa, align 1, !tbaa !9
  %i.ab = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !9
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %i.i, label %bb.j, label %bb.ag

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = urem i32 %i.e, 1000
  %i.ah = udiv i32 %i.e, 1000
  %i.ai = icmp eq i32 %i.ag, 0
  br i1 %i.ai, label %.noexc30, label %.noexc

.noexc30:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %.zext90 = zext nneg i32 %i.ah to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !1031
  store i64 %.zext90, ptr %2, align 16, !tbaa !9
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.123, i64 7, i64 3, ptr nonnull %2)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !1031
  %i.aj = load ptr, ptr %7, align 8, !tbaa !29    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !72 ; 6 uses
  %i.am = load i64, ptr %i.m, align 8, !tbaa !72  ; 5 uses
  %i.an = sub i64 9223372036854775807, %i.am
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.169) #50
          to label %.noexc41 unwind label %bb.v

.noexc41:                                         ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34: ; preds = %bb.k
  %i.ap = add i64 %i.am, %i.al                    ; 3 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.s
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34
  %i.as = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.as)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34
  %i.at = load i64, ptr %i.s, align 8, !tbaa !9
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i40
  %i.au = phi i64 [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i40 ]
  %.not.i.i.i.i37 = icmp ugt i64 %i.ap, %i.au
  br i1 %.not.i.i.i.i37, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36
  %.not8.i.i.i.i38 = icmp eq i64 %i.al, 0
  br i1 %.not8.i.i.i.i38, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am ; 2 uses
  %cond.i.i.i.i39 = icmp eq i64 %i.al, 1
  br i1 %cond.i.i.i.i39, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = load i8, ptr %i.aj, align 1, !tbaa !9
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !9
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am, i64 noundef 0, ptr noundef %i.aj, i64 noundef %i.al)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.q
  store i64 %i.ap, ptr %i.m, align 8, !tbaa !72
  %i.ax = load ptr, ptr %0, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i8 0, ptr %i.ay, align 1, !tbaa !9
  %i.az = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.r
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !9
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ag

bb.s:                                             ; preds = %.noexc27
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.t:                                             ; preds = %bb.h, %bb.c
  %i.bf = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt20back_insert_iteratorISt6vectorIS8_SaIS8_EEEEET0_T_SH_SG_:bb.a
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72   ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %.noexc.i.i.i.i, label %bb.e

.noexc.i.i.i.i:                                   ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.168) #50
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !61

.noexc6.i.i.i.i:                                  ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.e
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #52 ; 2 uses
  store ptr %i.r, ptr %i.h, align 8, !tbaa !29
  store i64 %i.m, ptr %i.j, align 8, !tbaa !9
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.c
  %i.s = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.m, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.t = load i8, ptr %i.k, align 1, !tbaa !9
  store i8 %i.t, ptr %i.s, align 1, !tbaa !9
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.m, ptr %i.u, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !9
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !222
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.x, ptr %i.f, align 8, !tbaa !222
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit

bb.h:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.056)
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.056, i64 32
  %i.z = add nsw i64 %.07, -1
  %i.aa = icmp sgt i64 %.07, 1
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !1328
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #44 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fr26, i64 24 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEET_SK_SK_T0_.exit"
  %i.j = icmp eq i64 %i.cs, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !1329

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ed, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i25.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.m ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i", %._crit_edge
  %.011.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ay, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.011.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.w, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.x = icmp slt i64 %.011.i.i.i, %i.o
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.011.i.i.i, %bb.c ] ; 2 uses
  %i.y = shl i64 %.038.i.i.i.i, 1                 ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.ab
  %.val.i.i.i.i.i = load i32, ptr %i.aa, align 8, !tbaa !515
  %.val1.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !515
  %i.ad = icmp slt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.ab, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.038.i.i.i.i ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !515
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !209
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !517
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1330

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.011.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.al, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i32, ptr %i.s, align 4, !tbaa !3
  store i32 %i.am, ptr %i.t, align 8, !tbaa !515
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !209
  store ptr %i.an, ptr %i.v, align 8, !tbaa !517
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ao = icmp sgt i64 %.1.i.i.i.i, %.011.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0912.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !515 ; 2 uses
  %i.aq = icmp slt i32 %.val.i.i.i.i.i.i, %.sroa.04.0.copyload.i.i.i
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.011.i.i.i.i.i ; 2 uses
  store i32 %.val.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !515
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !209
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !517
  %i.av = icmp sgt i64 %.0912.i.i.i.i.i, %.011.i.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i", !llvm.loop !1331

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i.i, ptr %i.aw, align 8, !tbaa !515
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.ax, align 8, !tbaa !517
  %.not.i.i.i = icmp eq i64 %.011.i.i.i, 0
  %i.ay = add nsw i64 %.011.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_RT0_.exit.i.i", label %bb.c, !llvm.loop !1332

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"
  %i.az = icmp sgt i64 %.fr.i.i25.lcssa, 16
  br i1 %i.az, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ba, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_RT0_.exit.i.i" ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i.i10.i = load i32, ptr %i.ba, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i.i12.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i11.i, align 8
  %i.bb = load i32, ptr %.fr26, align 4, !tbaa !3
  store i32 %i.bb, ptr %i.ba, align 8, !tbaa !515
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !209
  store ptr %i.bc, ptr %.sroa.5.0..sroa_idx.i.i11.i, align 8, !tbaa !517
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bd, %i.a                     ; 3 uses
  %i.bf = ashr exact i64 %i.be, 4                 ; 3 uses
  %i.bg = add nsw i64 %i.bf, -1
  %3 = lshr i64 %i.bg, 1
  %i.bh = icmp sgt i64 %i.bf, 2
  br i1 %i.bh, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.038.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bi = shl i64 %.038.i.i.i22.i, 1              ; 2 uses
  %i.bj = add i64 %i.bi, 2                        ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.bj
  %i.bl = or disjoint i64 %i.bi, 1                ; 2 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.bl
  %.val.i.i.i.i23.i = load i32, ptr %i.bk, align 8, !tbaa !515
  %.val1.i.i.i.i24.i = load i32, ptr %i.bm, align 8, !tbaa !515
  %i.bn = icmp slt i32 %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bn, i64 %i.bl, i64 %i.bj ; 4 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i25.i ; 2 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.038.i.i.i22.i ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.bq, ptr %i.bp, align 8, !tbaa !515
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !209
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !517
  %i.bu = icmp slt i64 %spec.select.i.i.i25.i, %3
  br i1 %i.bu, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !1330

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bv = and i64 %i.be, 16
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bx = add nsw i64 %i.bf, -2
  %i.by = ashr exact i64 %i.bx, 1
  %i.bz = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.by
  br i1 %i.bz, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ca = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.cb = or disjoint i64 %i.ca, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i14.i ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !515
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !209
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !517
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.cb, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0912.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i19.i = load i32, ptr %i.ci, align 8, !tbaa !515 ; 2 uses
  %i.cj = icmp slt i32 %.val.i.i.i.i.i19.i, %.sroa.04.0.copyload.i.i10.i
  br i1 %i.cj, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ck = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.011.i.i.i.i17.i ; 2 uses
  store i32 %.val.i.i.i.i.i19.i, ptr %i.ck, align 8, !tbaa !515
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !209
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !517
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !1331

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.co = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i10.i, ptr %i.co, align 8, !tbaa !515
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %.sroa.5.0.copyload.i.i12.i, ptr %i.cp, align 8, !tbaa !517
  %i.cq = icmp sgt i64 %i.be, 16
  br i1 %i.cq, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !1333

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 5 uses
  %.02440 = phi i64 [ %i.cs, %bb.b ], [ %2, %.lr.ph ]
  %i.cr = phi i64 [ %i.ee, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cs = add nsw i64 %.02440, -1                 ; 3 uses
  %i.ct = lshr i64 %i.cr, 1
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.ct ; 5 uses
  %i.cv = getelementptr inbounds i8, ptr %storemerge2341, i64 -16 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !515 ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.cu, align 8, !tbaa !515 ; 5 uses
  %i.cw = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.cv, align 8, !tbaa !515 ; 6 uses
  br i1 %i.cw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.cx = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = load i32, ptr %.fr26, align 8, !tbaa !3
  store i32 %.val1.i.i.i, ptr %.fr26, align 8, !tbaa !3
  store i32 %i.cy, ptr %i.cu, align 8, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !209
  store ptr %i.db, ptr %i.g, align 8, !tbaa !209
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !209
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dc = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dd = load i32, ptr %.fr26, align 8, !tbaa !3 ; 2 uses
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.val1.i27.i.i, ptr %.fr26, align 8, !tbaa !3
  store i32 %i.dd, ptr %i.cv, align 8, !tbaa !3
  %i.de = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !209
  store ptr %i.dg, ptr %i.g, align 8, !tbaa !209
  store ptr %i.df, ptr %i.de, align 8, !tbaa !209
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %.val.i.i.i, ptr %.fr26, align 8, !tbaa !3
  store i32 %i.dd, ptr %i.f, align 8, !tbaa !3
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !209
  store ptr %i.di, ptr %i.g, align 8, !tbaa !209
  store ptr %i.dh, ptr %i.h, align 8, !tbaa !209
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.dj = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dk = load i32, ptr %.fr26, align 8, !tbaa !3
  store i32 %.val.i.i.i, ptr %.fr26, align 8, !tbaa !3
  store i32 %i.dk, ptr %i.f, align 8, !tbaa !3
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !209
  store ptr %i.dm, ptr %i.g, align 8, !tbaa !209
  store ptr %i.dl, ptr %i.h, align 8, !tbaa !209
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dn = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.do = load i32, ptr %.fr26, align 8, !tbaa !3 ; 2 uses
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %.val1.i27.i.i, ptr %.fr26, align 8, !tbaa !3
  store i32 %i.do, ptr %i.cv, align 8, !tbaa !3
  %i.dp = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !209
  store ptr %i.dr, ptr %i.g, align 8, !tbaa !209
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !209
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i32 %.val1.i.i.i, ptr %.fr26, align 8, !tbaa !3
  store i32 %i.do, ptr %i.cu, align 8, !tbaa !3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !209
  store ptr %i.du, ptr %i.g, align 8, !tbaa !209
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !209
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.dw, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2341, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr26, align 8, !tbaa !515 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.dw, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i32, ptr %.sroa.014.1.i.i, align 8, !tbaa !515 ; 2 uses
  %i.dv = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  br i1 %i.dv, label %bb.t, label %.preheader.i.i, !llvm.loop !1334

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %.val1.i11.i.i = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !515 ; 2 uses
  %i.dx = icmp slt i32 %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.dx, label %.preheader.i.i, label %bb.u, !llvm.loop !1335

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEET_SK_SK_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i32 %.val1.i11.i.i, ptr %.sroa.014.1.i.i, align 4, !tbaa !3
  store i32 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !209
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !209
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !209
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !209
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i", !llvm.loop !1336

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEET_SK_SK_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2341, i64 noundef %i.cs)
  %i.ec = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ed = sub i64 %i.ec, %i.a                     ; 2 uses
  %i.ee = ashr exact i64 %i.ed, 4                 ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 16
  br i1 %i.ef, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !1329

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEET_SK_SK_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_SK_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN5folly7dynamicEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox19SerializedTypeCache9serializeEvE3$_0EEEvT_SK_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !356  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1326   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.174) #50
end_hunk_1
