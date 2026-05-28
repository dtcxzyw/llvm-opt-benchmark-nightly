inline.NumInlined: 4272
inline.NumDeleted: 1976
begin_hunk_0_@_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE:bb.a
  %.2.i.i.i.i.i18 = phi ptr [ %i.bm, %bb.s ], [ %.029.lcssa.i.i.i.i.i17, %._crit_edge.i.i.i.i.i15 ] ; 2 uses
  %i.bn = load i32, ptr %.2.i.i.i.i.i18, align 4, !tbaa !3
  %i.bo = icmp ult i32 %i.bn, 128
  br i1 %i.bo, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i15
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 4
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74: ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 8
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76: ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 12
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit: ; preds = %.lr.ph.i.i.i.i.i9, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76, %bb.p, %bb.r, %bb.t, %bb.u
  %.028.i.i.i.i.i19 = phi ptr [ %.1.i.i.i.i.i22, %bb.r ], [ %i.ap, %bb.u ], [ %.2.i.i.i.i.i18, %bb.t ], [ %.029.lcssa.i.i.i.i.i17, %bb.p ], [ %i.br, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76 ], [ %i.bq, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74 ], [ %i.bp, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i11, %.lr.ph.i.i.i.i.i9 ]
  %i.bs = ptrtoint ptr %.028.i.i.i.i.i19 to i64
  %i.bt = sub i64 %i.bs, %i.aj                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 2                 ; 2 uses
  tail call void @_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.ao, i64 %i.bu, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.bv = sub i64 %i.an, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bt
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %._crit_edge, label %.lr.ph, !llvm.loop !347

._crit_edge:                                      ; preds = %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, %bb.a
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex13MatchCharNode13emitASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = icmp ugt i64 %2, 2
  br i1 %i.e, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.i = icmp ugt i64 %i.j, 2
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !348

bb.b:                                             ; preds = %.lr.ph97, %.loopexit
  %.sroa.8.096 = phi i64 [ %2, %.lr.ph97 ], [ %i.j, %.loopexit ] ; 2 uses
  %.sroa.073.095 = phi ptr [ %1, %.lr.ph97 ], [ %i.k, %.loopexit ] ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.096, i64 255) ; 3 uses
  %i.j = sub i64 %.sroa.8.096, %.sroa.speculated  ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.073.095, i64 %.idx ; 3 uses
  %i.l = load i8, ptr %i.f, align 8, !tbaa !318, !range !242, !noundef !73
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i64 %.sroa.speculated to i8
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !340  ; 7 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !151    ; 7 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp ult i64 %i.s, -2                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i8 0, ptr %i.d, align 1, !tbaa !157
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !151 ; 2 uses
  %.pre120 = load ptr, ptr %i.g, align 8, !tbaa !340
  %.pre123 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.p, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 2        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.g, align 8, !tbaa !340
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre123, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.f ]
  %i.w = phi ptr [ %.pre120, %bb.d ], [ %i.o, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.x = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  store i8 11, ptr %i.y, align 1, !tbaa !341
  %i.z = and i64 %i.s, 4294967295                 ; 3 uses
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.aa, %.pre-phi                ; 2 uses
  %.not.i.i.i42 = icmp ugt i64 %i.ab, %i.z
  br i1 %.not.i.i.i42, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.z, i64 noundef %i.ab) #19
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i8 0, ptr %i.c, align 1, !tbaa !157
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %.pre.i46 = load ptr, ptr %3, align 8, !tbaa !151 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !340
  %.pre128 = ptrtoint ptr %.pre.i46 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.s
  %i.ae = getelementptr i8, ptr %i.ad, i64 2      ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.o, %i.ae
  br i1 %.not.i.i.i43, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !340
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.pre-phi129 = phi i64 [ %.pre128, %bb.i ], [ %i.r, %bb.j ], [ %i.r, %bb.k ]
  %i.af = phi ptr [ %.pre, %bb.i ], [ %i.o, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i46, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.s
  store i8 10, ptr %i.ah, align 1, !tbaa !341
  %i.ai = and i64 %i.s, 4294967295                ; 3 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.aj, %.pre-phi129             ; 2 uses
  %.not.i.i.i47 = icmp ugt i64 %i.ak, %i.ai
  br i1 %.not.i.i.i47, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.ai, i64 noundef %i.ak) #19
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit
  %.sink178.a = phi ptr [ %i.ac, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.al, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.am = phi ptr [ %i.w, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.af, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink178.a, i64 1
  store i8 %i.n, ptr %i.an, align 1, !tbaa !157
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.ao = phi ptr [ %i.bf, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %i.am, %.lr.ph.preheader ] ; 3 uses
  %.094 = phi ptr [ %i.bg, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %.sroa.073.095, %.lr.ph.preheader ] ; 2 uses
  %i.ap = load i32, ptr %.094, align 4, !tbaa !3
  %i.aq = trunc i32 %i.ap to i8                   ; 2 uses
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !146
  %.not.i.i.i48 = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !157
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !340
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.g, align 8, !tbaa !340
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

bb.n:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %3, align 8, !tbaa !151   ; 4 uses
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 8 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775807
  br i1 %i.ay, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.az = add i64 %.sroa.speculated.i.i.i.i.i, %i.ax ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ax
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 9223372036854775807)
  %i.bc = select i1 %i.ba, i64 9223372036854775807, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %4 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #18 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.ax ; 2 uses
  store i8 %i.aq, ptr %5, align 1, !tbaa !157
  %6 = icmp sgt i64 %i.ax, 0
  br i1 %6, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #16
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  store ptr %4, ptr %3, align 8, !tbaa !151
  store ptr %i.bd, ptr %i.g, align 8, !tbaa !340
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  store ptr %i.be, ptr %i.h, align 8, !tbaa !146
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i
  %i.bf = phi ptr [ %i.at, %bb.m ], [ %i.bd, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.094, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.bg, %i.k
  br i1 %.not40, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.sroa.073.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.j, %.loopexit ] ; 2 uses
  %.idx104 = shl nuw nsw i64 %.sroa.8.0.lcssa, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.073.0.lcssa, i64 %.idx104
  %.not99 = icmp eq i64 %.sroa.8.0.lcssa, 0
  br i1 %.not99, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.r

._crit_edge103:                                   ; preds = %bb.ac, %._crit_edge
  ret void

bb.r:                                             ; preds = %.lr.ph102, %bb.ac
  %.039100 = phi ptr [ %.sroa.073.0.lcssa, %.lr.ph102 ], [ %i.cn, %bb.ac ] ; 2 uses
  %i.bk = load i32, ptr %.039100, align 4, !tbaa !3
  %i.bl = load i8, ptr %i.bi, align 8, !tbaa !318, !range !242, !noundef !73
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = trunc i32 %i.bk to i8
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !340 ; 7 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !151   ; 7 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 5 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 7 uses
  %i.bt = icmp ult i64 %i.bs, -2                  ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !157
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bo, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre.i52 = load ptr, ptr %3, align 8, !tbaa !151 ; 2 uses
  %.pre122 = load ptr, ptr %i.bj, align 8, !tbaa !340
  %.pre124 = ptrtoint ptr %.pre.i52 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.u:                                             ; preds = %bb.s
  %i.bu = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 2      ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bo, %i.bv
  br i1 %.not.i.i.i49, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bv, ptr %i.bj, align 8, !tbaa !340
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.pre-phi125 = phi i64 [ %.pre124, %bb.t ], [ %i.br, %bb.u ], [ %i.br, %bb.v ]
  %i.bw = phi ptr [ %.pre122, %bb.t ], [ %i.bo, %bb.u ], [ %i.bv, %bb.v ]
  %i.bx = phi ptr [ %.pre.i52, %bb.t ], [ %i.bp, %bb.u ], [ %i.bp, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bs
  store i8 12, ptr %i.by, align 1, !tbaa !341
  %i.bz = and i64 %i.bs, 4294967295               ; 3 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.ca, %.pre-phi125             ; 2 uses
  %.not.i.i.i53 = icmp ugt i64 %i.cb, %i.bz
  br i1 %.not.i.i.i53, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.bz, i64 noundef %i.cb) #19
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !157
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bo, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i57 = load ptr, ptr %3, align 8, !tbaa !151 ; 2 uses
  %.pre121 = load ptr, ptr %i.bj, align 8, !tbaa !340
  %.pre126 = ptrtoint ptr %.pre.i57 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.z:                                             ; preds = %bb.x
  %i.cd = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.ce = getelementptr i8, ptr %i.cd, i64 2      ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.bo, %i.ce
  br i1 %.not.i.i.i54, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ce, ptr %i.bj, align 8, !tbaa !340
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.pre-phi127 = phi i64 [ %.pre126, %bb.y ], [ %i.br, %bb.z ], [ %i.br, %bb.aa ]
  %i.cf = phi ptr [ %.pre121, %bb.y ], [ %i.bo, %bb.z ], [ %i.ce, %bb.aa ]
  %i.cg = phi ptr [ %.pre.i57, %bb.y ], [ %i.bp, %bb.z ], [ %i.bp, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bs
  store i8 7, ptr %i.ch, align 1, !tbaa !341
  %i.ci = and i64 %i.bs, 4294967295               ; 3 uses
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.cj, %.pre-phi127             ; 2 uses
  %.not.i.i.i58 = icmp ugt i64 %i.ck, %i.ci
  br i1 %.not.i.i.i58, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.ci, i64 noundef %i.ck) #19
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit
  %.sink179 = phi ptr [ %i.cl, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit ], [ %i.cc, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink179, i64 1
  store i8 %i.bn, ptr %i.cm, align 1, !tbaa !157
  %i.cn = getelementptr inbounds nuw i8, ptr %.039100, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cn, %i.bh
  br i1 %.not, label %._crit_edge103, label %bb.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %.idx = shl nuw nsw i64 %2, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not64 = icmp eq i64 %2, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.x, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %.065 = phi ptr [ %1, %.lr.ph ], [ %i.br, %bb.x ] ; 2 uses
  %i.i = load i32, ptr %.065, align 4, !tbaa !3   ; 5 uses
  %i.j = icmp ult i32 %i.i, 65536
  br i1 %i.j, label %bb.c, label %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge

._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge: ; preds = %bb.b
  %.pre74 = load i8, ptr %i.g, align 8, !tbaa !318, !range !242
  br label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.f, align 1, !tbaa !325, !range !242, !noundef !73
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = and i32 %i.i, 63488
  %switch.selectcmp.i = icmp eq i32 %i.m, 55296
  %or.cond = and i1 %switch.selectcmp.i, %i.l
  %.pre75 = load i8, ptr %i.g, align 8, !tbaa !318, !range !242 ; 2 uses
  br i1 %or.cond, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread55

_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread: ; preds = %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge, %bb.c
  %i.n = phi i8 [ %.pre74, %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge ], [ %.pre75, %bb.c ]
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !340  ; 7 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !151    ; 7 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 5 uses
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp ult i64 %i.t, -5                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i8 0, ptr %i.d, align 1, !tbaa !157
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.p, i64 noundef 5, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !151 ; 2 uses
  %.pre77 = load ptr, ptr %i.h, align 8, !tbaa !340
  %.pre78 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 5        ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes12_GLOBAL__N_119DependencyExtractor13addDependencyEN4llvh9StringRefENS_14DependencyKindE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1263 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.p, align 8, !tbaa !154
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !157
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !157
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre24 = load i64, ptr %.phi.trans.insert23, align 8, !tbaa !1263
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ab = phi i64 [ %.pre24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.x, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !1263
  store i64 0, ptr %i.ac, align 8, !tbaa !1263
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.af = load i32, ptr %i.n, align 8, !tbaa !1259
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !1259
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !153
  br label %_ZN6hermes10DependencyD2Ev.exit

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b
  call void @_ZNSt6vectorIN6hermes10DependencyESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(36) %5)
  %.pre25 = load ptr, ptr %5, align 8, !tbaa !154 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %.pre25, %i.ai
  br i1 %i.aj, label %_ZN6hermes10DependencyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !157
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.pre25, i64 noundef %i.al) #16
  br label %_ZN6hermes10DependencyD2Ev.exit

_ZN6hermes10DependencyD2Ev.exit:                  ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.m

bb.e:                                             ; preds = %_ZN4llvh9StringRef13consume_frontES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %.not.i4 = icmp eq ptr %i.j, null
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.am, ptr %7, align 8, !tbaa !1262, !alias.scope !1264
  br i1 %.not.i4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !1263, !alias.scope !1264
  store i8 0, ptr %i.am, align 8, !tbaa !157, !alias.scope !1264
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !1264
  store i64 %i.i, ptr %i.a, align 8, !tbaa !180, !noalias !1264
  %i.ao = icmp ugt i64 %i.i, 15
  br i1 %i.ao, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #15 ; 2 uses
  store ptr %i.ap, ptr %7, align 8, !tbaa !154, !alias.scope !1264
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !180, !noalias !1264
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !157, !alias.scope !1264
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.ar = phi ptr [ %i.ap, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  switch i64 %i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.as = load i8, ptr %i.j, align 1, !tbaa !157
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.j, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.at = load i64, ptr %i.a, align 8, !tbaa !180, !noalias !1264 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !1263, !alias.scope !1264
  %i.av = load ptr, ptr %7, align 8, !tbaa !154, !alias.scope !1264
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !1264
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i32 %3, ptr %i.ax, align 8, !tbaa !1259
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !153 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !150
  %.not.i.i5 = icmp eq ptr %i.az, %i.bb
  br i1 %.not.i.i5, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !1262
  %i.bd = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1263 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6: ; preds = %bb.k
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !154
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !157
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1263
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8.thread

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6
  %i.bl = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6 ], [ %i.bh, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !1263
  store i64 0, ptr %i.bm, align 8, !tbaa !1263
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !1259
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !1259
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !153
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr %i.br, ptr %i.ay, align 8, !tbaa !153
  br label %_ZN6hermes10DependencyD2Ev.exit11

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  call void @_ZNSt6vectorIN6hermes10DependencyESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(36) %7)
  %.pre22 = load ptr, ptr %7, align 8, !tbaa !154 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %.pre22, %i.bs
  br i1 %i.bt, label %_ZN6hermes10DependencyD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !157
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %.pre22, i64 noundef %i.bv) #16
  br label %_ZN6hermes10DependencyD2Ev.exit11

_ZN6hermes10DependencyD2Ev.exit11:                ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.m

bb.m:                                             ; preds = %_ZN6hermes10DependencyD2Ev.exit11, %_ZN6hermes10DependencyD2Ev.exit
  ret void
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes10DependencyESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !152    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %3 = mul nuw nsw i64 %i.l, 40
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #18 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %6, ptr %5, align 8, !tbaa !1262
  %7 = load ptr, ptr %2, align 8, !tbaa !154      ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not.i.a = icmp eq ptr %7, %8
  br i1 %.not.i.a, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1263 ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %i.r, i1 false)
  br label %_ZN6hermes10DependencyC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %7, ptr %5, align 8, !tbaa !154
  %i.s = load i64, ptr %8, align 8, !tbaa !157
  store i64 %i.s, ptr %6, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1263
  br label %_ZN6hermes10DependencyC2EOS0_.exit

_ZN6hermes10DependencyC2EOS0_.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !1263
  store ptr %8, ptr %2, align 8, !tbaa !154
  store i64 0, ptr %i.u, align 8, !tbaa !1263
  store i8 0, ptr %8, align 8, !tbaa !157
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1259
  store i32 %i.y, ptr %i.w, align 8, !tbaa !1259
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes10DependencyC2EOS0_.exit, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %4, %_ZN6hermes10DependencyC2EOS0_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6hermes10DependencyC2EOS0_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.z, ptr %.012.i.i.i, align 8, !tbaa !1262, !alias.scope !1267, !noalias !1270
  %i.aa = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !154, !alias.scope !1270, !noalias !1267 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1263, !alias.scope !1270, !noalias !1267 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false), !alias.scope !1272
  br label %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aa, ptr %.012.i.i.i, align 8, !tbaa !154, !alias.scope !1267, !noalias !1270
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !157, !alias.scope !1270, !noalias !1267
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !157, !alias.scope !1267, !noalias !1270
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !1263, !alias.scope !1270, !noalias !1267
  br label %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ai = phi i64 [ %i.ae, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !1263, !alias.scope !1267, !noalias !1270
  store ptr %i.ab, ptr %.0911.i.i.i, align 8, !tbaa !154, !alias.scope !1270, !noalias !1267
  store i64 0, ptr %i.aj, align 8, !tbaa !1263, !alias.scope !1270, !noalias !1267
  store i8 0, ptr %i.ab, align 8, !tbaa !157, !alias.scope !1270, !noalias !1267
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1259, !alias.scope !1270, !noalias !1267
  store i32 %i.an, ptr %i.al, align 8, !tbaa !1259, !alias.scope !1267, !noalias !1270
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1273

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6hermes10DependencyC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %4, %_ZN6hermes10DependencyC2EOS0_.exit ], [ %i.ap, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !1262, !alias.scope !1274, !noalias !1277
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !154, !alias.scope !1277, !noalias !1274 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1263, !alias.scope !1277, !noalias !1274 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !1279
  br label %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !154, !alias.scope !1274, !noalias !1277
  %i.az = load i64, ptr %i.at, align 8, !tbaa !157, !alias.scope !1277, !noalias !1274
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !157, !alias.scope !1274, !noalias !1277
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !1263, !alias.scope !1277, !noalias !1274
  br label %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !1263, !alias.scope !1274, !noalias !1277
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !154, !alias.scope !1277, !noalias !1274
  store i64 0, ptr %i.bb, align 8, !tbaa !1263, !alias.scope !1277, !noalias !1274
  store i8 0, ptr %i.at, align 8, !tbaa !157, !alias.scope !1277, !noalias !1274
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1259, !alias.scope !1277, !noalias !1274
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !1259, !alias.scope !1274, !noalias !1277
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1273

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bh, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !150
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #16
  br label %_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  store ptr %4, ptr %0, align 8, !tbaa !152
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !153
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !150
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes12_GLOBAL__N_119DependencyExtractor5visitEPNS_6ESTree22CallExpressionLikeNodeE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = tail call noundef ptr @_ZN6hermes6ESTree9getCalleeEPNS0_22CallExpressionLikeNodeE(ptr noundef %1) #15 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !437  ; 2 uses
  %i.d = icmp ne i32 %i.c, 66
  %.not75 = icmp eq ptr %i.a, null                ; 2 uses
  %.not = or i1 %.not75, %i.d
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1280 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %.not51 = icmp eq ptr %i.k, %i.f
  br i1 %.not51, label %bb.g, label %.critedge.1

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6hermes6ESTree12getArgumentsEPNS0_22CallExpressionLikeNodeE(ptr noundef %1) #15 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1281
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1282, !nonnull !73, !align !74
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.s, align 1, !tbaa !1258
  store ptr @.str.24, ptr %4, align 8, !tbaa !157
  store i8 3, ptr %i.r, align 8, !tbaa !1255
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.p, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !706  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !437
  %i.x = icmp ne i32 %i.w, 36
  %.not17.i = icmp eq ptr %i.u, null
  %.not.i = or i1 %.not17.i, %i.x
  br i1 %.not.i, label %bb.f, label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1282, !nonnull !73, !align !74
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i12.i = load ptr, ptr %i.aa, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i14.i = load ptr, ptr %.sroa.2.0..sroa_idx.i13.i, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.ac, align 1, !tbaa !1258
  store ptr @.str.24, ptr %5, align 8, !tbaa !157
  store i8 3, ptr %i.ab, align 8, !tbaa !1255
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.z, i32 noundef 0, ptr %.sroa.0.0.copyload.i12.i, ptr %.sroa.2.0.copyload.i14.i, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !704 ; 2 uses
  %.sroa.021.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !144
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !180
  tail call fastcc void @_ZN6hermes12_GLOBAL__N_119DependencyExtractor13addDependencyEN4llvh9StringRefENS_14DependencyKindE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %.sroa.021.0.copyload, i64 %.sroa.222.0.copyload, i32 noundef 2)
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

.critedge.1:                                      ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !148
  %.not51.1 = icmp eq ptr %i.ag, %i.f
  br i1 %.not51.1, label %bb.g, label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !148
  %.not51.2 = icmp eq ptr %i.ai, %i.f
  br i1 %.not51.2, label %bb.g, label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !148
  %.not51.3 = icmp eq ptr %i.ak, %i.f
  br i1 %.not51.3, label %bb.g, label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.3
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148
  %.not51.4 = icmp eq ptr %i.am, %i.f
  br i1 %.not51.4, label %bb.g, label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148
  %.not51.5 = icmp eq ptr %i.ao, %i.f
  br i1 %.not51.5, label %bb.g, label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

bb.g:                                             ; preds = %.critedge.5, %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ 1, %.critedge.1 ], [ 2, %.critedge.2 ], [ 3, %.critedge.3 ], [ 4, %.critedge.4 ], [ 5, %.critedge.5 ]
  %i.ap = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6hermes6ESTree12getArgumentsEPNS0_22CallExpressionLikeNodeE(ptr noundef %1) #15 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1281
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1282, !nonnull !73, !align !74
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i64 = load ptr, ptr %i.au, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i.i66 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i65, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.aw, align 1, !tbaa !1258
  store ptr @.str.24, ptr %2, align 8, !tbaa !157
  store i8 3, ptr %i.av, align 8, !tbaa !1255
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.at, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i64, ptr %.sroa.2.0.copyload.i.i66, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !706 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !437
  %i.bb = icmp ne i32 %i.ba, 36
  %.not17.i58 = icmp eq ptr %i.ay, null
  %.not.i59 = or i1 %.not17.i58, %i.bb
  br i1 %.not.i59, label %bb.j, label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit67

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1282, !nonnull !73, !align !74
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i12.i61 = load ptr, ptr %i.be, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx.i13.i62 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i14.i63 = load ptr, ptr %.sroa.2.0..sroa_idx.i13.i62, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.bg, align 1, !tbaa !1258
  store ptr @.str.24, ptr %3, align 8, !tbaa !157
  store i8 3, ptr %i.bf, align 8, !tbaa !1255
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bd, i32 noundef 0, ptr %.sroa.0.0.copyload.i12.i61, ptr %.sroa.2.0.copyload.i14.i63, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit67: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !704 ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.bi, align 8, !tbaa !144
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.213.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !180
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr @_ZN6hermes12_GLOBAL__N_116RESOURCE_CALLEESE, i64 %.lcssa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1283
  tail call fastcc void @_ZN6hermes12_GLOBAL__N_119DependencyExtractor13addDependencyEN4llvh9StringRefENS_14DependencyKindE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %.sroa.012.0.copyload, i64 %.sroa.213.0.copyload, i32 noundef %i.bl)
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.bm = icmp ne i32 %i.c, 58
  %.not46 = or i1 %.not75, %i.bm
  br i1 %.not46, label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !908 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !437
  %i.br = icmp ne i32 %i.bq, 66
  %.not4777 = icmp eq ptr %i.bo, null
  %.not47 = or i1 %.not4777, %i.br
end_hunk_1
