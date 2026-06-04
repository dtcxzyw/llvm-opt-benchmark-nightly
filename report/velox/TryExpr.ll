inline.NumInlined: 1312
inline.NumDeleted: 735
begin_hunk_0_@_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !448
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.18) #25
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %8, align 8, !tbaa !201    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !23
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.e
  %i.v = extractvalue { i64, i1 } %i.l, 0
  br label %bb.m

bb.i:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit
  %i.w = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.j, i64 96) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26, !prof !30

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14, !noalias !451
  store ptr @.str.9, ptr %5, align 16, !tbaa !23, !noalias !451
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.j, ptr %i.y, align 16, !tbaa !23, !noalias !451
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.z, align 16, !tbaa !23, !noalias !451
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.18, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !451
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.18) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %6, align 8, !tbaa !201   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.l
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26: ; preds = %bb.i
  %i.ag = extractvalue { i64, i1 } %i.w, 0
  %i.ah = load ptr, ptr %2, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.ag)
  br label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.v, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.ak, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit26 ] ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.n, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #25
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.m
  %i.ap = add i64 %.0, -96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %2, ptr %i.ar, align 8, !tbaa !168
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !155
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !291
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  store i32 0, ptr %i.av, align 8, !tbaa !292
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i8 1, ptr %i.aw, align 4, !tbaa !148
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ao, align 8, !tbaa !27
  store i64 %i.j, ptr %i.at, align 8, !tbaa !293
  store ptr %i.ao, ptr %0, align 8, !tbaa !147
  %i.ay = atomicrmw add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  br label %common.resume

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.204", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !454
  store i64 %2, ptr %4, align 16, !tbaa !23, !alias.scope !457, !noalias !454
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !457, !noalias !454
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.26, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !454
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.26) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !201    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i8, ptr %i.j, align 4, !range !9
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !148
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.g, !prof !154

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #25
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155  ; 2 uses
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
  %min.iters.check = icmp ult i64 %i.y, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.y, 124
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 28
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
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !460

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !461

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.aa, 9223372036854775804   ; 3 uses
  %i.ai = shl i64 %n.vec21, 2
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %broadcast.splatinsert22 = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat23 = shufflevector <4 x i32> %broadcast.splatinsert22, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index24, 2
  %next.gep25 = getelementptr i8, ptr %i.v, i64 %i.ak
  store <4 x i32> %broadcast.splat23, ptr %next.gep25, align 4, !tbaa !3
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !462

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
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !463

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, %bb.e
  ret void
}

declare void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !26
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14, !inline_history !464
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14, !inline_history !464
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !465

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !466
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !26
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !467
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !467
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN8facebook5velox4exec4Expr21InputForSharedResultsESt4pairIKS4_NS3_13SharedResultsEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !468
  tail call void @_ZNSt8_Rb_treeIN8facebook5velox4exec4Expr21InputForSharedResultsESt4pairIKS4_NS3_13SharedResultsEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !469  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  tail call void @_ZNSt4pairIKN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.e) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 104) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !470

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec4Expr9clearMemoEv:bb.a
_ZNSt10__weak_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr null, ptr %i.o, align 8, !tbaa !488
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 8 uses
  store ptr null, ptr %i.p, align 8, !tbaa !20
  %.not.i.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10__weak_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !26
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #14, !inline_history !490
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #14, !inline_history !490
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i2 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i4 = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i4, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !30

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #14
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %_ZNSt10__weak_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr null, ptr %i.ag, align 8, !tbaa !488
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 8 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !20
  %.not.i.i.i.i5 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.aj, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !26
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #14, !inline_history !165
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #14, !inline_history !165
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.am, %bb.o ], [ %i.aw, %bb.p ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.q, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #14
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !472 ; 4 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !472
  %.not.i.i.i7 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i7, label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EEaSEDn.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !473
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #26
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i: ; preds = %bb.s, %bb.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 40) #26
  br label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EEaSEDn.exit

_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EEaSEDn.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !26
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !467
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !467
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !194    ; 13 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !491
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIKN8facebook5velox4TypeEEmS5_ET_S7_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIKN8facebook5velox4TypeEEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !191
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
  unreachable

_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -16
  %i.y = sub i64 %i.x, %i.e                       ; 2 uses
  %i.z = lshr i64 %i.y, 4
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 304
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = add i64 %i.d, -16
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep40 = getelementptr i8, ptr %i.c, i64 %i.ae
  %scevgep41 = getelementptr i8, ptr %i.c, i64 8
  %i.af = add i64 %i.ad, 16                       ; 2 uses
  %scevgep42 = getelementptr i8, ptr %i.c, i64 %i.af
  %scevgep43 = getelementptr i8, ptr %i.u, i64 8
  %scevgep44 = getelementptr i8, ptr %i.u, i64 %i.af
  %bound0 = icmp ult ptr %i.u, %scevgep40
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound045 = icmp ult ptr %scevgep41, %scevgep44
  %bound146 = icmp ult ptr %scevgep43, %scevgep42
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx = or i1 %found.conflict, %found.conflict47
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 2305843009213693944     ; 3 uses
  %i.ag = shl i64 %n.vec, 4                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 4                       ; 3 uses
  %2 = or disjoint i64 %i.aj, 64                  ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.aj
  %next.gep48 = getelementptr i8, ptr %i.u, i64 %2
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.aj ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.c, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %wide.vec = load <8 x ptr>, ptr %next.gep49, align 8, !tbaa !21, !alias.scope !495, !noalias !492
  %wide.vec52 = load <8 x ptr>, ptr %next.gep50, align 8, !tbaa !21, !alias.scope !495, !noalias !492
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !21, !alias.scope !492, !noalias !495
  store <8 x ptr> %wide.vec52, ptr %next.gep48, align 8, !tbaa !21, !alias.scope !492, !noalias !495
  store <8 x ptr> splat (ptr null), ptr %next.gep49, align 8, !tbaa !21, !alias.scope !495, !noalias !492
  store <8 x ptr> splat (ptr null), ptr %next.gep50, align 8, !tbaa !21, !alias.scope !495, !noalias !492
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader57

.lr.ph.i.i.i.preheader57:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader57, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader57 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.am = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !495, !noalias !492
  store ptr null, ptr %i.al, align 8, !tbaa !20, !alias.scope !495, !noalias !492
  store <2 x ptr> %i.am, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !492, !noalias !495
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !498, !alias.scope !495, !noalias !492
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !499

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ap = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit37

_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit37: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !194
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !191
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !491
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIKN8facebook5velox4TypeEEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec7TryExprESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrIKNS1_4TypeEES9_INS2_4ExprEEEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.9", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec7TryExprESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !21
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !21
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN8facebook5velox4exec7TryExprC2ESt10shared_ptrIKNS0_4TypeEEOS3_INS1_4ExprEE(ptr noundef nonnull align 8 dereferenceable(482) %i.c, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !20   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !26
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #14, !inline_history !500
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #14, !inline_history !500
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i4.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !30

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #14
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec7TryExprESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec7TryExprESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox4exec7TryExprEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(482) %i.a) #14, !inline_history !501
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec7TryExprESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec7TryExprESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec7TryExprESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !502  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!261 = !{!"_ZTSNSt8_Rb_treeIN8facebook5velox4exec4Expr21InputForSharedResultsESt4pairIKS4_NS3_13SharedResultsEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !262, i64 0, !218, i64 8}
!262 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN8facebook5velox4exec4Expr21InputForSharedResultsEEE", !263, i64 0}
!263 = !{!"_ZTSSt4lessIN8facebook5velox4exec4Expr21InputForSharedResultsEE"}
!264 = !{!"_ZTSSt8weak_ptrIN8facebook5velox10BaseVectorEE", !265, i64 0}
!265 = !{!"_ZTSSt10__weak_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !124, i64 0, !266, i64 8}
!266 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!267 = !{!"_ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !123, i64 0}
!268 = !{!"_ZTSSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EE", !269, i64 0}
!269 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_ELb1ELb1EE", !270, i64 0}
!270 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EE", !271, i64 0}
!271 = !{!"_ZTSSt5tupleIJPN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EEE", !272, i64 0}
!272 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EEE", !273, i64 0}
!273 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox17SelectivityVectorELb0EE", !98, i64 0}
!274 = !{!"_ZTSN8facebook5velox4exec9ExprStatsE", !275, i64 0, !58, i64 24, !58, i64 32, !8, i64 40}
!275 = !{!"_ZTSN8facebook5velox13CpuWallTimingE", !58, i64 0, !58, i64 8, !58, i64 16}
!276 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!277 = distinct !{!277, !56}
!278 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!279 = distinct !{null}
!280 = !{i64 16595662}
!281 = distinct !{!281, !56}
!282 = distinct !{null}
!283 = distinct !{!283, !56}
!284 = distinct !{!284, !56}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!287 = distinct !{!287, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!290 = distinct !{!290, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!291 = !{!149, !58, i64 32}
!292 = !{!152, !4, i64 0}
!293 = !{!149, !58, i64 24}
!294 = !{!295}
!295 = distinct !{!295, !296, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!296 = distinct !{!296, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!299 = distinct !{!299, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!302 = distinct !{!302, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!305 = distinct !{!305, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!308 = distinct !{!308, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!309 = !{!51, !51, i64 0}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!312 = distinct !{!312, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!315 = distinct !{!315, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!318 = distinct !{!318, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!321 = distinct !{!321, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!322 = !{!153, !153, i64 0}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!325 = distinct !{!325, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!326 = !{!327, !4, i64 0}
!327 = !{!"_ZTSN3fmt3v1111basic_specsE", !4, i64 0, !5, i64 4}
!328 = !{!329, !4, i64 12}
!329 = !{!"_ZTSN3fmt3v1112format_specsE", !327, i64 0, !4, i64 8, !4, i64 12}
!330 = !{!331, !150, i64 0}
!331 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !150, i64 0, !58, i64 8}
!332 = !{!331, !58, i64 8}
!333 = !{!202, !58, i64 8}
!334 = !{!335, !335, i64 0}
!335 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !14, i64 0}
!336 = distinct !{!336, !56}
!337 = !{!338, !338, i64 0}
!338 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !5, i64 0}
!339 = distinct !{!339, !56}
!340 = !{!341, !4, i64 16}
!341 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !331, i64 0, !4, i64 16}
!342 = !{!343, !343, i64 0}
!343 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !14, i64 0}
!344 = !{!345, !345, i64 0}
!345 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !14, i64 0}
!346 = !{!347, !345, i64 8}
!347 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !343, i64 0, !345, i64 8, !14, i64 16}
!348 = !{i64 8}
!349 = !{!347, !14, i64 16}
!350 = !{i64 4}
!351 = !{!347, !343, i64 0}
!352 = distinct !{!352, !56}
!353 = !{!354, !150, i64 0}
!354 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !150, i64 0, !37, i64 8, !37, i64 16}
!355 = !{!356, !150, i64 0}
!356 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !150, i64 0, !58, i64 8, !58, i64 16, !14, i64 24}
!357 = !{!356, !58, i64 8}
!358 = !{!356, !58, i64 16}
!359 = !{!356, !14, i64 24}
!360 = !{!361, !58, i64 288}
!361 = !{!"_ZTSN3fmt3v116detail15counting_bufferIcEE", !356, i64 0, !5, i64 32, !58, i64 288}
!362 = !{!329, !4, i64 8}
!363 = distinct !{!363, !56}
!364 = distinct !{!364, !56, !365, !366}
!365 = !{!"llvm.loop.isvectorized", i32 1}
!366 = !{!"llvm.loop.unroll.runtime.disable"}
!367 = !{!"branch_weights", i32 8, i32 120}
!368 = distinct !{!368, !56, !365, !366}
!369 = distinct !{!369, !370}
!370 = !{!"llvm.loop.unroll.disable"}
!371 = distinct !{!371, !56, !365}
!372 = distinct !{!372, !56}
!373 = !{!374, !8, i64 0}
!374 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !8, i64 0, !331, i64 8, !150, i64 24, !58, i64 32}
!375 = !{!150, !150, i64 0}
!376 = !{!374, !150, i64 24}
!377 = !{!374, !58, i64 32}
!378 = distinct !{null, null, null}
!379 = !{!380, !150, i64 0}
!380 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !150, i64 0, !150, i64 8, !4, i64 16}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!383 = distinct !{!383, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!384 = !{!380, !150, i64 8}
!385 = !{!380, !4, i64 16}
!386 = distinct !{null, null, null}
!387 = distinct !{!387, !56, !365, !366}
!388 = distinct !{!388, !56, !365, !366}
!389 = distinct !{!389, !370}
!390 = distinct !{!390, !56}
!391 = distinct !{!391, !56, !365}
!392 = distinct !{!392, !56}
!393 = distinct !{null, null}
!394 = distinct !{null, null, null, null}
!395 = distinct !{!395, !56, !365, !366}
!396 = distinct !{!396, !56, !365, !366}
!397 = distinct !{!397, !370}
!398 = distinct !{!398, !56, !365}
!399 = distinct !{!399, !56}
!400 = distinct !{!400, !56, !365, !366}
!401 = distinct !{!401, !56, !365, !366}
!402 = distinct !{!402, !370}
!403 = distinct !{!403, !56, !365}
!404 = distinct !{!404, !56}
!405 = distinct !{!405, !56}
!406 = distinct !{!406, !56, !365, !366}
!407 = distinct !{!407, !56, !365, !366}
!408 = distinct !{!408, !370}
!409 = distinct !{!409, !56, !365}
!410 = distinct !{!410, !56}
!411 = distinct !{!411, !56}
!412 = distinct !{null, null, null}
!413 = !{!414, !37, i64 0}
!414 = !{!"_ZTSZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEE17count_code_points", !37, i64 0}
!415 = distinct !{null, null, null, null}
!416 = distinct !{!416, !56}
!417 = distinct !{!417, !56, !365, !366}
!418 = distinct !{!418, !56, !365, !366}
!419 = distinct !{!419, !370}
!420 = distinct !{!420, !56, !365}
!421 = distinct !{!421, !56}
!422 = !{!423, !424, i64 0}
!423 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !424, i64 0, !5, i64 8}
!424 = !{!"long long", !5, i64 0}
!425 = !{!426, !428}
!426 = distinct !{!426, !427, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!427 = distinct !{!427, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!428 = distinct !{!428, !429, !"_ZNK3fmt3v117context3argEi: argument 0"}
!429 = distinct !{!429, !"_ZNK3fmt3v117context3argEi"}
!430 = !{!431, !433}
!431 = distinct !{!431, !432, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!432 = distinct !{!432, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!433 = distinct !{!433, !434, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE: argument 0"}
!434 = distinct !{!434, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE"}
!435 = !{!436, !58, i64 8}
!436 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !437, i64 0, !58, i64 8}
!437 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !14, i64 0}
!438 = !{!436, !437, i64 0}
!439 = distinct !{!439, !56}
!440 = !{!441, !150, i64 0}
!441 = !{!"_ZTSN3fmt3v116detail14named_arg_infoIcEE", !150, i64 0, !4, i64 8}
!442 = !{!441, !4, i64 8}
!443 = !{!444, !444, i64 0}
!444 = !{!"_ZTSN3fmt3v116detail4typeE", !5, i64 0}
!445 = !{!446}
!446 = distinct !{!446, !447, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!447 = distinct !{!447, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!450 = distinct !{!450, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!451 = !{!452}
!452 = distinct !{!452, !453, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!453 = distinct !{!453, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!456 = distinct !{!456, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!459 = distinct !{!459, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!460 = distinct !{!460, !56, !365, !366}
!461 = !{!"branch_weights", i32 4, i32 28}
!462 = distinct !{!462, !56, !365, !366}
!463 = distinct !{!463, !56, !366, !365}
!464 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec4ExprELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!465 = distinct !{!465, !56}
!466 = !{!43, !44, i64 16}
!467 = distinct !{null, null}
!468 = !{!219, !221, i64 24}
!469 = !{!219, !221, i64 16}
!470 = distinct !{!470, !56}
!471 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!472 = !{!98, !98, i64 0}
!473 = !{!36, !37, i64 16}
!474 = !{!475, !476, i64 0}
!475 = !{!"_ZTSNSt12_Vector_baseISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !476, i64 0, !476, i64 8, !476, i64 16}
!476 = !{!"p1 _ZTSSt8weak_ptrIN8facebook5velox10BaseVectorEE", !14, i64 0}
!477 = !{!475, !476, i64 8}
!478 = !{!266, !19, i64 0}
!479 = distinct !{null, null, null, null, null, null, null, null, null}
!480 = distinct !{!480, !56}
!481 = !{!475, !476, i64 16}
!482 = !{!483, !484, i64 0}
!483 = !{!"_ZTSNSt12_Vector_baseIPKN8facebook5velox10BaseVectorESaIS4_EE17_Vector_impl_dataE", !484, i64 0, !484, i64 8, !484, i64 16}
!484 = !{!"p2 _ZTSN8facebook5velox10BaseVectorE", !251, i64 0}
!485 = !{!483, !484, i64 16}
!486 = !{!227, !4, i64 400}
!487 = !{!227, !124, i64 376}
!488 = !{!124, !124, i64 0}
!489 = distinct !{null, null, null, null}
!490 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!491 = !{!192, !193, i64 16}
!492 = !{!493}
!493 = distinct !{!493, !494, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!494 = distinct !{!494, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_"}
!495 = !{!496}
!496 = distinct !{!496, !494, !"_ZSt19__relocate_object_aISt10shared_ptrIKN8facebook5velox4TypeEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!497 = distinct !{!497, !56, !365, !366}
!498 = !{!128, !129, i64 0}
!499 = distinct !{!499, !56, !365}
!500 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!501 = distinct !{null, null}
!502 = !{!503, !150, i64 8}
!503 = !{!"_ZTSSt9type_info", !150, i64 8}
!504 = !{!203, !150, i64 0}
!505 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec4ExprELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!506 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec4ExprELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!507 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!508 = !{!234, !8, i64 1}
!509 = !{!234, !8, i64 2}
!510 = !{!234, !8, i64 3}
!511 = !{!235, !58, i64 0}
!512 = !{!235, !150, i64 8}
!513 = !{!227, !8, i64 128}
!514 = !{!227, !8, i64 129}
!515 = !{!245, !37, i64 0}
!516 = !{!245, !4, i64 8}
!517 = !{!253, !254, i64 0}
!518 = !{!253, !58, i64 8}
!519 = !{!257, !258, i64 0}
!520 = !{!227, !8, i64 281}
!521 = !{!227, !8, i64 282}
!522 = !{!227, !8, i64 283}
!523 = !{!218, !220, i64 0}
!524 = !{!227, !8, i64 480}
!525 = !{!227, !8, i64 481}
!526 = distinct !{null, null, null}
!527 = !{!93, !94, i64 0}
!528 = !{!93, !94, i64 8}
!529 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!530 = distinct !{!530, !56}
!531 = !{!93, !94, i64 16}
!532 = !{!253, !256, i64 16}
!533 = !{!255, !256, i64 0}
!534 = distinct !{!534, !56}
!535 = !{!249, !250, i64 0}
!536 = !{!249, !250, i64 16}
!537 = !{!243, !37, i64 32}
!538 = distinct !{null, null, null}
end_hunk_2
