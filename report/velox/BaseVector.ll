inline.NumInlined: 39107
inline.NumDeleted: 7522
begin_hunk_0_@_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi:bb.a
  %5 = alloca %"class.std::optional", align 4     ; 5 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %7 = alloca %"class.std::optional", align 4     ; 5 uses
  %i.a = sext i32 %1 to i64                       ; 4 uses
  %i.b = shl nsw i64 %i.a, 2                      ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !353    ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i8, ptr %i.d, align 4, !tbaa !374
  %i.f = and i8 %i.e, 2
  %.not45 = icmp eq i8 %i.f, 0
  br i1 %.not45, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load atomic i32, ptr %i.g acquire, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 8, !tbaa !353    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !370
  %i.m = icmp ult i64 %i.l, %i.b
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store i32 0, ptr %5, align 4, !tbaa !122
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 1, ptr %i.n, align 4, !tbaa !617
  call void @_ZN8facebook5velox13AlignedBuffer10reallocateIiEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef nonnull %3, i64 noundef %i.a, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %.pre47.pre = load ptr, ptr %3, align 8, !tbaa !353
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre47 = phi ptr [ %.pre47.pre, %bb.e ], [ %i.j, %bb.d ] ; 4 uses
  %i.o = icmp sgt i32 %1, %0
  br i1 %i.o, label %bb.g, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.pre47, i64 44
  %i.q = load i8, ptr %i.p, align 4, !tbaa !374
  %i.r = and i8 %i.q, 2
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.preheader, label %bb.h, !prof !381

bb.h:                                             ; preds = %bb.g
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #51
  unreachable

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.pre47, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !354
  %i.u = sext i32 %0 to i64                       ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.t, i64 %i.u
  %i.w = sub nsw i64 %i.a, %i.u
  %i.x = shl nsw i64 %i.w, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.x, i1 false), !tbaa !3
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store i32 0, ptr %7, align 4, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.y, align 4, !tbaa !617
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %6, i64 noundef %i.a, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.z = load ptr, ptr %3, align 8, !tbaa !353    ; 2 uses
  %.not46 = icmp eq ptr %i.z, null
  br i1 %.not46, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %6, align 8, !tbaa !353   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !374
  %i.ad = and i8 %i.ac, 2
  %.not.i32 = icmp eq i8 %i.ad, 0
  br i1 %.not.i32, label %bb.l, label %bb.k, !prof !381

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #51
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !354
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !354
  %i.ai = shl i32 %0, 2
  %i.aj = trunc i64 %i.b to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.aj)
  %i.ak = sext i32 %.sroa.speculated to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.af, ptr align 4 %i.ah, i64 %i.ak, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %i.al

bb.n:                                             ; preds = %bb.l, %bb.i
  %i.am = load ptr, ptr %6, align 8, !tbaa !353   ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = atomicrmw add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.o, %bb.n
  %i.ap = load ptr, ptr %3, align 8, !tbaa !353   ; 7 uses
  store ptr %i.am, ptr %3, align 8, !tbaa !353
  %.not.i2.i = icmp eq ptr %i.ap, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = atomicrmw sub ptr %i.aq, i32 1 acq_rel, align 4
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.p
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(64) %i.ap)
          to label %.noexc.i.i unwind label %bb.q, !inline_history !371

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !372
  %.not.i.i.i34 = icmp eq ptr %i.ax, null
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !7
  %..i.i.i = select i1 %.not.i.i.i34, i64 8, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %..i.i.i
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %i.ap)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.q, !inline_history !371

bb.q:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #50
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.p, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.bd = load ptr, ptr %6, align 8, !tbaa !353   ; 7 uses
  %.not.i35 = icmp eq ptr %i.bd, null
  br i1 %.not.i35, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.r
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(64) %i.bd)
          to label %.noexc.i unwind label %bb.s, !inline_history !371

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !372
  %.not.i.i36 = icmp eq ptr %i.bl, null
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !7
  %..i.i = select i1 %.not.i.i36, i64 8, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %..i.i
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(64) %i.bd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.s, !inline_history !371

bb.s:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #50
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, %bb.r, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %.pre = load ptr, ptr %3, align 8, !tbaa !353
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i.preheader, %bb.f, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.br = phi ptr [ %.pre47, %.lr.ph.i.i.i.preheader ], [ %.pre47, %bb.f ], [ %.pre, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 44
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !374
  %i.bu = and i8 %i.bt, 2
  %.not.i37 = icmp eq i8 %i.bu, 0
  br i1 %.not.i37, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit38, label %bb.t, !prof !381

bb.t:                                             ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #51
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit38: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !354
  store ptr %i.bw, ptr %4, align 8, !tbaa !603
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer10reallocateIiEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.2023", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.425", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.425", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.425", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %12 = alloca %"class.std::optional", align 4    ; 4 uses
  %i.a = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.a, label %bb.b, label %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit, !prof !128

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !919
  store ptr @.str.62, ptr %9, align 16, !tbaa !122, !noalias !919
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %1, ptr %i.b, align 16, !tbaa !122, !noalias !919
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 4, ptr %i.c, align 16, !tbaa !122, !noalias !919
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.70, i64 20, i64 1100, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !919
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.70) #51
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %10, align 8, !tbaa !317   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !122
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume86:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84
  %common.resume86.op = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %bb.v ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49 ]
  resume { ptr, i32 } %common.resume86.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %common.resume86

_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit: ; preds = %bb.a
  %i.j = shl nuw i64 %1, 2                        ; 13 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !353    ; 11 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.f, !prof !128

bb.e:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer10reallocateIiEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs, ptr noundef nonnull @.str.66) #51
  unreachable

bb.f:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !370  ; 3 uses
  %i.n = icmp ugt i64 %i.j, %i.m
  br i1 %i.n, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !363
  %i.q = icmp ult i64 %i.j, %i.p
  br i1 %i.q, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = load atomic i32, ptr %i.r acquire, align 8
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.v = load i8, ptr %i.u, align 4, !tbaa !374
  %i.w = and i8 %i.v, 2
  %.not70 = icmp eq i8 %i.w, 0
  br i1 %.not70, label %bb.k, label %bb.j, !prof !381

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer10reallocateIiEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs_1) #51
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 noundef %i.m, i64 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(8) %2)
  store i64 %i.j, ptr %i.l, align 8, !tbaa !370
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !372  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aa = load atomic i32, ptr %i.z acquire, align 8
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i8 0, ptr %i.ac, align 4, !tbaa !617
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %11, i64 noundef %1, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(8) %12, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.ad = load ptr, ptr %11, align 8, !tbaa !353  ; 2 uses
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !370
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.j)
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull %i.k, i64 noundef %.sroa.speculated)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %11, align 8, !tbaa !353
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !370
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 noundef %i.aj, i64 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %11, align 8, !tbaa !353  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %i.j, ptr %i.al, align 8, !tbaa !370
  store ptr null, ptr %11, align 8, !tbaa !353
  %i.am = load ptr, ptr %0, align 8, !tbaa !353   ; 7 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !353
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = atomicrmw sub ptr %i.an, i32 1 acq_rel, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.p
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(64) %i.am)
          to label %.noexc.i.i unwind label %bb.q, !inline_history !371

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !372
  %.not.i.i.i = icmp eq ptr %i.au, null
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %..i.i.i
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(64) %i.am)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.q, !inline_history !371

bb.q:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #50
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.p, %.noexc.i.i
  %.pr = load ptr, ptr %11, align 8, !tbaa !353   ; 7 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.bb = atomicrmw sub ptr %i.ba, i32 1 acq_rel, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.r
  %i.bd = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
end_hunk_0
