inline.NumInlined: 6861
inline.NumDeleted: 2221
begin_hunk_0_@_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a

common.resume:                                    ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %i.az, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit: ; preds = %bb.a
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  br i1 %4, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  %i.k = and i64 %i.j, -64                        ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.k, i64 160) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !50

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !489
  store ptr @.str.3, ptr %7, align 16, !tbaa !32, !noalias !489
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.k, ptr %i.n, align 16, !tbaa !32, !alias.scope !492, !noalias !489
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 160, ptr %i.o, align 16, !tbaa !32, !alias.scope !492, !noalias !489
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.39, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !489
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.39) #32
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %8, align 8, !tbaa !51     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.e
  %i.v = extractvalue { i64, i1 } %i.l, 0
  br label %bb.m

bb.i:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  %i.w = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.j, i64 96) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26, !prof !50

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !495
  store ptr @.str.3, ptr %5, align 16, !tbaa !32, !noalias !495
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.j, ptr %i.y, align 16, !tbaa !32, !alias.scope !498, !noalias !495
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.z, align 16, !tbaa !32, !alias.scope !498, !noalias !495
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.39, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !495
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.39) #32
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.l
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26: ; preds = %bb.i
  %i.ag = extractvalue { i64, i1 } %i.w, 0
  %i.ah = load ptr, ptr %2, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.ag)
  br label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.v, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.ak, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26 ] ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.n, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !50

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #32
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.m
  %i.ap = add i64 %.0, -96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %2, ptr %i.ar, align 8, !tbaa !482
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !440
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !465
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  store i32 0, ptr %i.av, align 8, !tbaa !501
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i8 1, ptr %i.aw, align 4, !tbaa !435
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ao, align 8, !tbaa !47
  store i64 %i.j, ptr %i.at, align 8, !tbaa !466
  store ptr %i.ao, ptr %0, align 8, !tbaa !242
  %i.ay = atomicrmw add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  br label %common.resume

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !242    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.sink.split.i, label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit

.sink.split.i:                                    ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.c, !inline_history !481

.noexc:                                           ; preds = %.sink.split.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !482
  %.not.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !47
  %..i = select i1 %.not.i, i64 8, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %..i
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit unwind label %bb.c, !inline_history !481

bb.c:                                             ; preds = %.noexc, %.sink.split.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #34
  unreachable

_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit: ; preds = %.noexc, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.280", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !465  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !50

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !502
  store i64 %2, ptr %4, align 16, !tbaa !32, !alias.scope !505, !noalias !502
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !32, !alias.scope !505, !noalias !502
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.31, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !502
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.31) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !73
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPN8facebook5velox10StringViewES2_EvT_S4_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !435
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, label %bb.g, !prof !141

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #32
  unreachable

_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !440  ; 2 uses
  %i.r = lshr i64 %1, 4                           ; 2 uses
  %i.s = lshr i64 %2, 4                           ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  %.not5.i.i.i = icmp samesign eq i64 %i.r, %i.s
  br i1 %.not5.i.i.i, label %_ZSt4fillIPN8facebook5velox10StringViewES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.u, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !508
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt4fillIPN8facebook5velox10StringViewES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !509

_ZSt4fillIPN8facebook5velox10StringViewES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer7setSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.280", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !435
  %i.c = and i8 %i.b, 2
  %.not4 = icmp eq i8 %i.c, 0
  br i1 %.not4, label %bb.c, label %bb.b, !prof !141

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !465  ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.g, !prof !50

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !510
  store i64 %1, ptr %2, align 16, !tbaa !32, !alias.scope !513, !noalias !510
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.e, ptr %i.f, align 16, !tbaa !32, !alias.scope !513, !noalias !510
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.31, i64 11, i64 68, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !510
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.31) #32
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.m, align 8, !tbaa !466
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox13AlignedBuffer10transferToEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.277", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !482  ; 3 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !465  ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 96) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !50

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !516
  store ptr @.str.3, ptr %2, align 16, !tbaa !32, !noalias !516
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 96, ptr %i.h, align 16, !tbaa !32, !alias.scope !519, !noalias !516
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.e, ptr %i.i, align 16, !tbaa !32, !alias.scope !519, !noalias !516
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.39, i64 20, i64 1100, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !516
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.39) #32
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.j

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %i.p = extractvalue { i64, i1 } %i.f, 0
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef %1, ptr noundef nonnull %0, i64 noundef %i.p)
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  store ptr %1, ptr %i.a, align 8, !tbaa !522
  br label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, %bb.a, %bb.f
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ false, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer15setEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !440
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !465
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i64 -4982426243126403411, ptr %i.e, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.281", align 16 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !440
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !465  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !136
  %.not = icmp eq i64 %i.f, -4982426243126403411
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17, !noalias !523
  %.sroa.03.0.insert.ext.i = zext i64 %i.d to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !523
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.47, i64 31, i64 4, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !523
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.47) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !32
  %i.ds = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !32
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #37
  unreachable

bb.w:                                             ; preds = %._crit_edge.i
  %i.dw = trunc nuw i64 %i.cr to i8
  store i8 %i.dw, ptr %i.dt, align 1, !tbaa !32
  %i.dx = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !755
  %i.dz = add i8 %i.dy, %.018.lcssa.i
  store i8 %i.dz, ptr %i.dx, align 2, !tbaa !755
  %i.ea = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 16
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ds
  %i.ec = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load ptr, ptr %i.cm, align 8, !tbaa !762
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !762
  %.not115 = icmp eq i32 %.sroa.078.1, 0
  br i1 %.not115, label %.loopexit, label %bb.p, !llvm.loop !789

bb.x:                                             ; preds = %.loopexit
  %i.ee = load i64, ptr %i.ar, align 8, !tbaa !754
  %i.ef = and i64 %i.ee, 255
  %i.eg = shl nuw i64 1, %i.ef
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.y
  %.041.in = phi i64 [ %i.eg, %bb.x ], [ %.041, %bb.y ]
  %.041 = add i64 %.041.in, -1                    ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0114, i64 %.041
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !32  ; 3 uses
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.y, label %bb.z, !llvm.loop !790

bb.z:                                             ; preds = %bb.y
  %i.ek = load ptr, ptr %0, align 8, !tbaa !750
  %i.el = getelementptr inbounds nuw [128 x i8], ptr %i.ek, i64 %.041 ; 2 uses
  %i.em = zext nneg i8 %i.ei to i64
  %i.en = add nsw i64 %i.em, -1                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.en
  %i.eq = icmp ne ptr %i.el, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp ult i8 %i.ei, 17
  call void @llvm.assume(i1 %i.er)
  %i.es = lshr i64 %i.en, 1
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = or i64 %i.es, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !136
  br i1 %.not, label %bb.aa, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %.0114, i64 noundef %4) #31
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !59
  %i.ew = load i64, ptr %i.d, align 8, !tbaa !136
  %.not.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load i64, ptr %i.e, align 8, !tbaa !136
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.ey) #17
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !770, !range !73, !noundef !74
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !791, !nonnull !74
  %i.e = load i8, ptr %i.d, align 1, !tbaa !59, !range !73, !noundef !74
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !141

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !793, !nonnull !74, !align !563
  %i.i = load i64, ptr %i.h, align 8, !tbaa !136
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !794, !nonnull !74, !align !563
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !795, !nonnull !74, !align !563
  %i.o = load i64, ptr %i.n, align 8, !tbaa !136
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !796  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !797, !nonnull !74, !align !563
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !798, !nonnull !74, !align !563
  %i.w = load i64, ptr %i.v, align 8, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !794, !nonnull !74, !align !563
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !768
  store ptr %i.z, ptr %i.q, align 8, !tbaa !750
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !799, !nonnull !74, !align !563
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !136 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !754
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !754
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #17
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #24

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #24

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.338") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !754  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !750   ; 3 uses
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %6 = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.0.i75 = phi i64 [ %2, %bb.b ], [ %i.ae, %bb.f ] ; 2 uses
  %.023.i74 = phi i64 [ %i.j, %bb.b ], [ %i.ad, %bb.f ]
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i75, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.w = add nsw i32 %.sroa.040.0, -1
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !762
  %i.ab = icmp eq ptr %6, %i.aa
  br i1 %i.ab, label %bb.g, label %.critedge.i, !prof !141, !llvm.loop !800

bb.e:                                             ; preds = %.critedge.i
  %i.ac = icmp eq i8 %i.u, 0
  br i1 %i.ac, label %.thread64, label %bb.f, !prof !141

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %.023.i74, -1                   ; 2 uses
  %i.ae = add i64 %i.e, %.0.i75
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !801

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !32
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.al = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !750
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !754
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [128 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !32
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.as, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.av = phi i64 [ %i.an, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !786 ; 2 uses
  %.not.i31 = icmp eq i8 %i.ay, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !786
  br label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.ba = add i64 %i.au, %.028                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bg, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !802

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !755
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !32
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #37
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load ptr, ptr %5, align 8, !tbaa !762
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !762
  %i.bu = lshr i64 %i.bl, 1
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = or i64 %i.bu, %i.bv                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !803
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !136
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !754 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %i.cc = add i64 %i.cb, 256
  %i.cd = and i64 %i.ca, 255
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !754
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !804
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !136
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cf, align 8, !tbaa !806
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #26

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !754
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #27

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZNK8facebook5velox9functions12_GLOBAL__N_113SplitFunction10applyInnerILb0EiEEvNS0_10StringViewES5_T0_iRNS0_4exec12VectorWriterINS0_5ArrayINS0_7VarcharEEEvEE(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(200) %5) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
