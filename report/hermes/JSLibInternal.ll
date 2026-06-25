inline.NumInlined: 2564
inline.NumDeleted: 1401
begin_hunk_0_@_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE:bb.a
  br i1 %i.t, label %bb.e, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit68

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.v = add nsw i64 %.047.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !584

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %gepdiff = sub i64 %.idx, %i.i
  %i.x = ashr exact i64 %gepdiff, 2
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.lr.ph
  %.pre-phi53.i.i.i.i.i = phi i64 [ %i.x, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.9.054, %.lr.ph ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.027.052, %.lr.ph ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i.i, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.y = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !3
  %i.z = icmp ult i32 %i.y, 128
  br i1 %i.z, label %bb.g, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ab = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !3
  %i.ac = icmp ult i32 %i.ab, 128
  br i1 %i.ac, label %bb.i, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !3
  %i.af = icmp ult i32 %i.ae, 128
  br i1 %i.af, label %bb.k, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit66: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit68: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit66, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit68, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.h ], [ %i.g, %bb.k ], [ %.2.i.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %bb.f ], [ %i.ai, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit68 ], [ %i.ah, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit66 ], [ %i.ag, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.aj = ptrtoint ptr %.028.i.i.i.i.i to i64     ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.027.052 to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  tail call void @_ZNK6hermes5regex13MatchCharNode13emitASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %.sroa.027.052, i64 %i.am, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.an = sub i64 %.sroa.9.054, %i.am             ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.027.052, i64 %i.al ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = lshr i64 %i.an, 2                       ; 2 uses
  %.not.i.i8 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i8, label %._crit_edge.i.i.i.i.i15, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit, %bb.o
  %.047.i.i.i.i.i10 = phi i64 [ %i.be, %bb.o ], [ %i.ar, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ] ; 2 uses
  %.02946.i.i.i.i.i11 = phi ptr [ %i.bd, %bb.o ], [ %i.ao, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ] ; 9 uses
  %i.as = load i32, ptr %.02946.i.i.i.i.i11, align 4, !tbaa !3
  %i.at = icmp ult i32 %i.as, 128
  br i1 %i.at, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.au = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = icmp ult i32 %i.av, 128
  br i1 %i.aw, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = icmp ult i32 %i.ay, 128
  br i1 %i.az, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = icmp ult i32 %i.bb, 128
  br i1 %i.bc, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 16 ; 3 uses
  %i.be = add nsw i64 %.047.i.i.i.i.i10, -1
  %i.bf = icmp sgt i64 %.047.i.i.i.i.i10, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i9, label %._crit_edge.loopexit.i.i.i.i.i12, !llvm.loop !586

._crit_edge.loopexit.i.i.i.i.i12:                 ; preds = %bb.o
  %.pre.i.i.i.i.i13 = ptrtoint ptr %i.bd to i64
  %.pre52.i.i.i.i.i14 = sub i64 %i.aq, %.pre.i.i.i.i.i13
  %i.bg = ashr exact i64 %.pre52.i.i.i.i.i14, 2
  br label %._crit_edge.i.i.i.i.i15

._crit_edge.i.i.i.i.i15:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i12, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit
  %.pre-phi53.i.i.i.i.i16 = phi i64 [ %i.bg, %._crit_edge.loopexit.i.i.i.i.i12 ], [ %i.an, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ]
  %.029.lcssa.i.i.i.i.i17 = phi ptr [ %i.bd, %._crit_edge.loopexit.i.i.i.i.i12 ], [ %i.ao, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i.i16, label %bb.u [
    i64 3, label %bb.p
    i64 2, label %bb.r
    i64 1, label %bb.t
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i15
  %i.bh = load i32, ptr %.029.lcssa.i.i.i.i.i17, align 4, !tbaa !3
  %i.bi = icmp ult i32 %i.bh, 128
  br i1 %i.bi, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i17, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i15
  %.1.i.i.i.i.i22 = phi ptr [ %i.bj, %bb.q ], [ %.029.lcssa.i.i.i.i.i17, %._crit_edge.i.i.i.i.i15 ] ; 3 uses
  %i.bk = load i32, ptr %.1.i.i.i.i.i22, align 4, !tbaa !3
  %i.bl = icmp ult i32 %i.bk, 128
  br i1 %i.bl, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i22, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i15
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
  br i1 %i.bx, label %._crit_edge, label %.lr.ph, !llvm.loop !587

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
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !588

bb.b:                                             ; preds = %.lr.ph97, %.loopexit
  %.sroa.8.096 = phi i64 [ %2, %.lr.ph97 ], [ %i.j, %.loopexit ] ; 2 uses
  %.sroa.073.095 = phi ptr [ %1, %.lr.ph97 ], [ %4, %.loopexit ] ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.096, i64 255) ; 3 uses
  %i.j = sub i64 %.sroa.8.096, %.sroa.speculated  ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.073.095, i64 %.idx ; 3 uses
  %i.k = load i8, ptr %i.f, align 8, !tbaa !558, !range !486, !noundef !583
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = trunc nuw i64 %.sroa.speculated to i8
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !83   ; 7 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !81     ; 7 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 5 uses
  %i.r = sub i64 %i.p, %i.q                       ; 7 uses
  %i.s = icmp ult i64 %i.r, -2                    ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i8 0, ptr %i.d, align 1, !tbaa !32
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.n, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !81  ; 2 uses
  %.pre120 = load ptr, ptr %i.g, align 8, !tbaa !83
  %.pre123 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.o, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 2        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.u
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.u, ptr %i.g, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre123, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.f ]
  %i.v = phi ptr [ %.pre120, %bb.d ], [ %i.n, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.w = phi ptr [ %.pre.i, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r
  store i8 11, ptr %i.x, align 1, !tbaa !580
  %i.y = and i64 %i.r, 4294967295                 ; 3 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.z, %.pre-phi                 ; 2 uses
  %.not.i.i.i42 = icmp ugt i64 %i.aa, %i.y
  br i1 %.not.i.i.i42, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.y, i64 noundef %i.aa) #18
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i8 0, ptr %i.c, align 1, !tbaa !32
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.n, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %.pre.i46 = load ptr, ptr %3, align 8, !tbaa !81 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !83
  %.pre128 = ptrtoint ptr %.pre.i46 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.r
  %i.ad = getelementptr i8, ptr %i.ac, i64 2      ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.n, %i.ad
  br i1 %.not.i.i.i43, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.pre-phi129 = phi i64 [ %.pre128, %bb.i ], [ %i.q, %bb.j ], [ %i.q, %bb.k ]
  %i.ae = phi ptr [ %.pre, %bb.i ], [ %i.n, %bb.j ], [ %i.ad, %bb.k ] ; 2 uses
  %i.af = phi ptr [ %.pre.i46, %bb.i ], [ %i.o, %bb.j ], [ %i.o, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.r
  store i8 10, ptr %i.ag, align 1, !tbaa !580
  %i.ah = and i64 %i.r, 4294967295                ; 3 uses
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ai, %.pre-phi129             ; 2 uses
  %.not.i.i.i47 = icmp ugt i64 %i.aj, %i.ah
  br i1 %.not.i.i.i47, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.ah, i64 noundef %i.aj) #18
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit
  %.sink177 = phi ptr [ %i.ab, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.ak, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.al = phi ptr [ %i.v, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.ae, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink177, i64 1
  store i8 %i.m, ptr %i.am, align 1, !tbaa !32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.an = phi ptr [ %i.bh, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %i.al, %.lr.ph.preheader ] ; 3 uses
  %.094 = phi ptr [ %i.bi, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %.sroa.073.095, %.lr.ph.preheader ] ; 2 uses
  %i.ao = load i32, ptr %.094, align 4, !tbaa !3
  %i.ap = trunc i32 %i.ao to i8                   ; 2 uses
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !458
  %.not.i.i.i48 = icmp eq ptr %i.an, %i.aq
  br i1 %.not.i.i.i48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !32
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  store ptr %i.as, ptr %i.g, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

bb.n:                                             ; preds = %.lr.ph
  %i.at = load ptr, ptr %3, align 8, !tbaa !81    ; 4 uses
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 8 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775807
  br i1 %i.ax, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ay = add i64 %.sroa.speculated.i.i.i.i.i, %i.aw ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.aw
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 9223372036854775807)
  %i.bb = select i1 %i.az, i64 9223372036854775807, i64 %i.ba ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #19 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aw ; 2 uses
  store i8 %i.ap, ptr %i.bd, align 1, !tbaa !32
  %i.be = icmp sgt i64 %i.aw, 0
  br i1 %i.be, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #17
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.bc, ptr %3, align 8, !tbaa !81
  store ptr %i.bf, ptr %i.g, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store ptr %i.bg, ptr %i.h, align 8, !tbaa !458
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i
  %i.bh = phi ptr [ %i.as, %bb.m ], [ %i.bf, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.094, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.bi, %4
  br i1 %.not40, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.sroa.073.0.lcssa = phi ptr [ %1, %bb.a ], [ %4, %.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.j, %.loopexit ] ; 2 uses
  %.idx104 = shl nuw nsw i64 %.sroa.8.0.lcssa, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.073.0.lcssa, i64 %.idx104
  %.not99 = icmp eq i64 %.sroa.8.0.lcssa, 0
  br i1 %.not99, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.r

._crit_edge103:                                   ; preds = %bb.ac, %._crit_edge
  ret void

bb.r:                                             ; preds = %.lr.ph102, %bb.ac
  %.039100 = phi ptr [ %.sroa.073.0.lcssa, %.lr.ph102 ], [ %i.cp, %bb.ac ] ; 2 uses
  %i.bm = load i32, ptr %.039100, align 4, !tbaa !3
  %i.bn = load i8, ptr %i.bk, align 8, !tbaa !558, !range !486, !noundef !583
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = trunc i32 %i.bm to i8
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !83 ; 7 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !81    ; 7 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64               ; 5 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 7 uses
  %i.bv = icmp ult i64 %i.bu, -2                  ; 2 uses
  br i1 %i.bo, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1, !tbaa !32
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bq, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre.i52 = load ptr, ptr %3, align 8, !tbaa !81 ; 2 uses
  %.pre122 = load ptr, ptr %i.bl, align 8, !tbaa !83
  %.pre124 = ptrtoint ptr %.pre.i52 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.u:                                             ; preds = %bb.s
  %i.bw = getelementptr i8, ptr %i.br, i64 %i.bu
  %i.bx = getelementptr i8, ptr %i.bw, i64 2      ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bq, %i.bx
  br i1 %.not.i.i.i49, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bx, ptr %i.bl, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.pre-phi125 = phi i64 [ %.pre124, %bb.t ], [ %i.bt, %bb.u ], [ %i.bt, %bb.v ]
  %i.by = phi ptr [ %.pre122, %bb.t ], [ %i.bq, %bb.u ], [ %i.bx, %bb.v ]
  %i.bz = phi ptr [ %.pre.i52, %bb.t ], [ %i.br, %bb.u ], [ %i.br, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bu
  store i8 12, ptr %i.ca, align 1, !tbaa !580
  %i.cb = and i64 %i.bu, 4294967295               ; 3 uses
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cc, %.pre-phi125             ; 2 uses
  %.not.i.i.i53 = icmp ugt i64 %i.cd, %i.cb
  br i1 %.not.i.i.i53, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.cb, i64 noundef %i.cd) #18
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !32
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bq, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i57 = load ptr, ptr %3, align 8, !tbaa !81 ; 2 uses
  %.pre121 = load ptr, ptr %i.bl, align 8, !tbaa !83
  %.pre126 = ptrtoint ptr %.pre.i57 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.z:                                             ; preds = %bb.x
  %i.cf = getelementptr i8, ptr %i.br, i64 %i.bu
  %i.cg = getelementptr i8, ptr %i.cf, i64 2      ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.bq, %i.cg
  br i1 %.not.i.i.i54, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cg, ptr %i.bl, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.pre-phi127 = phi i64 [ %.pre126, %bb.y ], [ %i.bt, %bb.z ], [ %i.bt, %bb.aa ]
  %i.ch = phi ptr [ %.pre121, %bb.y ], [ %i.bq, %bb.z ], [ %i.cg, %bb.aa ]
  %i.ci = phi ptr [ %.pre.i57, %bb.y ], [ %i.br, %bb.z ], [ %i.br, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bu
  store i8 7, ptr %i.cj, align 1, !tbaa !580
  %i.ck = and i64 %i.bu, 4294967295               ; 3 uses
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.cl, %.pre-phi127             ; 2 uses
  %.not.i.i.i58 = icmp ugt i64 %i.cm, %i.ck
  br i1 %.not.i.i.i58, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.ck, i64 noundef %i.cm) #18
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit
  %.sink178 = phi ptr [ %i.cn, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit ], [ %i.ce, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sink178, i64 1
  store i8 %i.bp, ptr %i.co, align 1, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %.039100, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cp, %i.bj
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
  %.pre74 = load i8, ptr %i.g, align 8, !tbaa !558, !range !486
  br label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.f, align 1, !tbaa !565, !range !486, !noundef !583
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = and i32 %i.i, 63488
  %switch.selectcmp.i = icmp eq i32 %i.m, 55296
  %or.cond = and i1 %switch.selectcmp.i, %i.l
  %.pre75 = load i8, ptr %i.g, align 8, !tbaa !558, !range !486 ; 2 uses
  br i1 %or.cond, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread55

_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread: ; preds = %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge, %bb.c
  %i.n = phi i8 [ %.pre74, %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge ], [ %.pre75, %bb.c ]
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !83   ; 7 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !81     ; 7 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 5 uses
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp ult i64 %i.t, -5                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i8 0, ptr %i.d, align 1, !tbaa !32
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.p, i64 noundef 5, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !81  ; 2 uses
  %.pre77 = load ptr, ptr %i.h, align 8, !tbaa !83
  %.pre78 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 5        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.w
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.w, ptr %i.h, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit

end_hunk_0
