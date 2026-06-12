inline.NumInlined: 482
inline.NumDeleted: 241
begin_hunk_0_@_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.a, label %bb.b, label %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !95
  store ptr @.str, ptr %9, align 16, !tbaa !10, !noalias !95
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %1, ptr %i.b, align 16, !tbaa !10, !noalias !95
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 4, ptr %i.c, align 16, !tbaa !10, !noalias !95
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.7, i64 20, i64 1100, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !95
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.7) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %10, align 8, !tbaa !98    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !10
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %i.az, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit: ; preds = %bb.a
  %i.j = shl nuw i64 %1, 2                        ; 5 uses
  br i1 %4, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  %i.k = and i64 %i.j, -64                        ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.k, i64 160) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !94

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !101
  store ptr @.str, ptr %7, align 16, !tbaa !10, !noalias !101
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.k, ptr %i.n, align 16, !tbaa !10, !noalias !101
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 160, ptr %i.o, align 16, !tbaa !10, !noalias !101
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.9, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !101
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.9) #16
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %8, align 8, !tbaa !98     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !10
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.e
  %i.v = extractvalue { i64, i1 } %i.l, 0
  br label %bb.m

bb.i:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  %i.w = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.j, i64 96) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26, !prof !94

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !104
  store ptr @.str, ptr %5, align 16, !tbaa !10, !noalias !104
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.j, ptr %i.y, align 16, !tbaa !10, !noalias !104
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.z, align 16, !tbaa !10, !noalias !104
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.9, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !104
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.9) #16
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.l
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26: ; preds = %bb.i
  %i.ag = extractvalue { i64, i1 } %i.w, 0
  %i.ah = load ptr, ptr %2, align 8, !tbaa !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.ag)
  br label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.v, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.ak, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26 ] ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.n, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !94

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #16
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.m
  %i.ap = add i64 %.0, -96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %2, ptr %i.ar, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  store i32 0, ptr %i.av, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i8 1, ptr %i.aw, align 4, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ao, align 8, !tbaa !90
  store i64 %i.j, ptr %i.at, align 8, !tbaa !109
  store ptr %i.ao, ptr %0, align 8, !tbaa !14
  %i.ay = atomicrmw add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  br label %common.resume

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.44", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !94

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !110
  store i64 %2, ptr %4, align 16, !tbaa !10, !alias.scope !113, !noalias !110
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !10, !alias.scope !113, !noalias !110
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.17, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !110
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.17) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !10
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i8, ptr %i.j, align 4, !range !30
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !18
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #16
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = lshr i64 %1, 2                           ; 2 uses
  %i.s = lshr i64 %2, 2                           ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %3, align 4, !tbaa !3      ; 3 uses
  %.not5.i.i.i = icmp samesign eq i64 %i.r, %i.s
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.w = add i64 %2, -4
  %i.x = and i64 %1, -4
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.y, 124
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, 9223372036854775776     ; 4 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 32
  %i.af = getelementptr i8, ptr %next.gep, i64 64
  %i.ag = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.aa, 9223372036854775800   ; 3 uses
  %i.ai = shl i64 %n.vec21, 2
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index24, 2
  %next.gep25 = getelementptr i8, ptr %i.v, i64 %i.ak
  store <8 x i32> %broadcast.splat23, ptr %next.gep25, align 4, !tbaa !3
  %index.next26 = add nuw i64 %index24, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.aa, %n.vec21
  br i1 %cmp.n27, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.u, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.t
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !119

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #3

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer7setSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.44", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !18
  %i.c = and i8 %i.b, 2
  %.not4 = icmp eq i8 %i.c, 0
  br i1 %.not4, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.g, !prof !94

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !120
  store i64 %1, ptr %2, align 16, !tbaa !10, !alias.scope !123, !noalias !120
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.e, ptr %i.f, align 16, !tbaa !10, !alias.scope !123, !noalias !120
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.17, i64 11, i64 68, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !120
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.17) #16
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %3, align 8, !tbaa !98     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.m, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox13AlignedBuffer10transferToEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 96) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !94

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !126
  store ptr @.str, ptr %2, align 16, !tbaa !10, !noalias !126
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 96, ptr %i.h, align 16, !tbaa !10, !noalias !126
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.e, ptr %i.i, align 16, !tbaa !10, !noalias !126
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.9, i64 20, i64 1100, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !126
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.9) #16
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !98     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !10
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.j

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %i.p = extractvalue { i64, i1 } %i.f, 0
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef %1, ptr noundef nonnull %0, i64 noundef %i.p)
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  store ptr %1, ptr %i.a, align 8, !tbaa !129
  br label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, %bb.a, %bb.f
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ false, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer15setEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i64 -4982426243126403411, ptr %i.e, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.45", align 16 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %.not = icmp eq i64 %i.f, -4982426243126403411
  br i1 %.not, label %bb.e, label %bb.b

end_hunk_0
