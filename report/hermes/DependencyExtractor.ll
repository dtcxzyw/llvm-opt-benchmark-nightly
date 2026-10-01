Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/DependencyExtractor?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1976
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE:bb.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = icmp ult i32 %i.p, 128
  br i1 %i.q, label %bb.d, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit67

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = icmp ult i32 %i.s, 128
  br i1 %i.t, label %bb.e, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit69

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16 ; 3 uses
  %i.v = add nsw i64 %.047.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %.pre.i.i.i.i.i = ptrtoint ptr %i.u to i64
  %.pre52.i.i.i.i.i = sub i64 %i.h, %.pre.i.i.i.i.i
  %i.x = ashr exact i64 %.pre52.i.i.i.i.i, 2
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.lr.ph
  %.pre-phi53.i.i.i.i.i = phi i64 [ %i.x, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.9.052, %.lr.ph ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.u, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.027.053, %.lr.ph ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i.i, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.y = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !8
  %i.z = icmp ult i32 %i.y, 128
  br i1 %i.z, label %bb.g, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ab = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !8
  %i.ac = icmp ult i32 %i.ab, 128
  br i1 %i.ac, label %bb.i, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !8
  %i.af = icmp ult i32 %i.ae, 128
  br i1 %i.af, label %bb.k, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit67: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit69: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit67, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit69, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.h ], [ %i.g, %bb.k ], [ %.2.i.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %bb.f ], [ %i.ai, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit69 ], [ %i.ah, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit67 ], [ %i.ag, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.aj = ptrtoint ptr %.028.i.i.i.i.i to i64     ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.027.053 to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  tail call void @_ZNK6hermes5regex13MatchCharNode13emitASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %.sroa.027.053, i64 %i.am, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.an = sub i64 %.sroa.9.052, %i.am             ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.027.053, i64 %i.al ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = lshr i64 %i.an, 2                       ; 2 uses
  %.not.i.i8 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i8, label %._crit_edge.i.i.i.i.i15, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit, %bb.o
  %.047.i.i.i.i.i10 = phi i64 [ %i.be, %bb.o ], [ %i.ar, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ] ; 2 uses
  %.02946.i.i.i.i.i11 = phi ptr [ %i.bd, %bb.o ], [ %i.ao, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ] ; 9 uses
  %i.as = load i32, ptr %.02946.i.i.i.i.i11, align 4, !tbaa !8
  %i.at = icmp ult i32 %i.as, 128
  br i1 %i.at, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.au = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = icmp ult i32 %i.av, 128
  br i1 %i.aw, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = icmp ult i32 %i.ay, 128
  br i1 %i.az, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = icmp ult i32 %i.bb, 128
  br i1 %i.bc, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit77, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 16 ; 3 uses
  %i.be = add nsw i64 %.047.i.i.i.i.i10, -1
  %i.bf = icmp sgt i64 %.047.i.i.i.i.i10, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i9, label %._crit_edge.loopexit.i.i.i.i.i12, !llvm.loop !410

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
  %i.bh = load i32, ptr %.029.lcssa.i.i.i.i.i17, align 4, !tbaa !8
  %i.bi = icmp ult i32 %i.bh, 128
  br i1 %i.bi, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i17, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i15
  %.1.i.i.i.i.i22 = phi ptr [ %i.bj, %bb.q ], [ %.029.lcssa.i.i.i.i.i17, %._crit_edge.i.i.i.i.i15 ] ; 3 uses
  %i.bk = load i32, ptr %.1.i.i.i.i.i22, align 4, !tbaa !8
  %i.bl = icmp ult i32 %i.bk, 128
  br i1 %i.bl, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i22, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i15
  %.2.i.i.i.i.i18 = phi ptr [ %i.bm, %bb.s ], [ %.029.lcssa.i.i.i.i.i17, %._crit_edge.i.i.i.i.i15 ] ; 2 uses
  %i.bn = load i32, ptr %.2.i.i.i.i.i18, align 4, !tbaa !8
  %i.bo = icmp ult i32 %i.bn, 128
  br i1 %i.bo, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i15
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 4
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit75: ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 8
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit77: ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 12
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit: ; preds = %.lr.ph.i.i.i.i.i9, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit75, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit77, %bb.p, %bb.r, %bb.t, %bb.u
  %.028.i.i.i.i.i19 = phi ptr [ %.1.i.i.i.i.i22, %bb.r ], [ %i.ap, %bb.u ], [ %.2.i.i.i.i.i18, %bb.t ], [ %.029.lcssa.i.i.i.i.i17, %bb.p ], [ %i.br, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit77 ], [ %i.bq, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit75 ], [ %i.bp, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i11, %.lr.ph.i.i.i.i.i9 ]
  %i.bs = ptrtoint ptr %.028.i.i.i.i.i19 to i64
  %i.bt = sub i64 %i.bs, %i.aj                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 2                 ; 2 uses
  tail call void @_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.ao, i64 %i.bu, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.bv = sub i64 %i.an, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bt
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %._crit_edge, label %.lr.ph, !llvm.loop !411

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
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.b

.loopexit:                                        ; preds = %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.i = icmp ugt i64 %i.j, 2
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !412

bb.b:                                             ; preds = %.lr.ph97, %.loopexit
  %.sroa.8.096 = phi i64 [ %2, %.lr.ph97 ], [ %i.j, %.loopexit ] ; 2 uses
  %.sroa.073.095 = phi ptr [ %1, %.lr.ph97 ], [ %i.k, %.loopexit ] ; 3 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.096, i64 255) ; 4 uses
  %i.j = sub nuw i64 %.sroa.8.096, %.sroa.speculated ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.073.095, i64 %.sroa.speculated ; 2 uses
  %i.l = load i8, ptr %i.f, align 8, !tbaa !153, !range !126, !noundef !24
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i64 %.sroa.speculated to i8
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !155  ; 7 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !84     ; 7 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp ult i64 %i.s, -2                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i8 0, ptr %i.d, align 1, !tbaa !90
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !84  ; 2 uses
  %.pre120 = load ptr, ptr %i.g, align 8, !tbaa !155
  %.pre123.a = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.p, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 2        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.g, align 8, !tbaa !155
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre123.a, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.f ]
  %i.w = phi ptr [ %.pre120, %bb.d ], [ %i.o, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.x = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  store i8 11, ptr %i.y, align 1, !tbaa !158
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
  store i8 0, ptr %i.c, align 1, !tbaa !90
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %.pre.i46 = load ptr, ptr %3, align 8, !tbaa !84 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !155
  %.pre128.a = ptrtoint ptr %.pre.i46 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.s
  %i.ae = getelementptr i8, ptr %i.ad, i64 2      ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.o, %i.ae
  br i1 %.not.i.i.i43, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !155
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.pre-phi129.a = phi i64 [ %.pre128.a, %bb.i ], [ %i.r, %bb.j ], [ %i.r, %bb.k ]
  %i.af = phi ptr [ %.pre, %bb.i ], [ %i.o, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i46, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.s
  store i8 10, ptr %i.ah, align 1, !tbaa !158
  %i.ai = and i64 %i.s, 4294967295                ; 3 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.aj, %.pre-phi129.a           ; 2 uses
  %.not.i.i.i47 = icmp ugt i64 %i.ak, %i.ai
  br i1 %.not.i.i.i47, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.ai, i64 noundef %i.ak) #19
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit
  %.sink177 = phi ptr [ %i.ac, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.al, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.am = phi ptr [ %i.w, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.af, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink177, i64 1
  store i8 %i.n, ptr %i.an, align 1, !tbaa !90
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.073.095, i64 %.idx
  %.pre122 = load ptr, ptr %i.h, align 8, !tbaa !80
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.ap = phi ptr [ %6, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %.pre122, %.lr.ph.preheader ] ; 2 uses
  %.094.a = phi ptr [ %i.bj, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  %.094 = phi ptr [ %i.bk, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %.sroa.073.095, %.lr.ph.preheader ] ; 2 uses
  %4 = load i32, ptr %.094, align 4, !tbaa !8
  %5 = trunc i32 %4 to i8                         ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %.094.a, %i.ap
  br i1 %.not.i.i.i48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i8 %5, ptr %.094.a, align 1, !tbaa !90
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !155
  %.pre121 = load ptr, ptr %i.h, align 8, !tbaa !80
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

bb.n:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %3, align 8, !tbaa !84    ; 4 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 7 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775807
  br i1 %i.aw, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.ax = add i64 %.sroa.speculated.i.i.i.i.i, %i.av ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.av
  %i.az = call i64 @llvm.umin.i64(i64 %i.ax, i64 9223372036854775807)
  %i.ba = select i1 %i.ay, i64 9223372036854775807, i64 %i.az ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ba, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #18 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av ; 2 uses
  store i8 %5, ptr %i.bc, align 1, !tbaa !90
  %i.bd = icmp sgt i64 %i.av, 0
  br i1 %i.bd, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bh) #16
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.bb, ptr %3, align 8, !tbaa !84
  store ptr %i.be, ptr %i.g, align 8, !tbaa !155
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba ; 2 uses
  store ptr %i.bi, ptr %i.h, align 8, !tbaa !80
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i
  %6 = phi ptr [ %.pre121, %bb.m ], [ %i.bi, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ]
  %i.bj = phi ptr [ %i.ar, %bb.m ], [ %i.be, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.094, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.bk, %i.ao
  br i1 %.not40, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.sroa.073.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.j, %.loopexit ] ; 2 uses
  %.idx104 = shl nuw nsw i64 %.sroa.8.0.lcssa, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.073.0.lcssa, i64 %.idx104
  %.not99 = icmp eq i64 %.sroa.8.0.lcssa, 0
  br i1 %.not99, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.r

._crit_edge103:                                   ; preds = %bb.ac, %._crit_edge
  ret void

bb.r:                                             ; preds = %.lr.ph102, %bb.ac
  %.039100 = phi ptr [ %.sroa.073.0.lcssa, %.lr.ph102 ], [ %i.cr, %bb.ac ] ; 2 uses
  %i.bo = load i32, ptr %.039100, align 4, !tbaa !8
  %i.bp = load i8, ptr %i.bm, align 8, !tbaa !153, !range !126, !noundef !24
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = trunc i32 %i.bo to i8
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !155 ; 7 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !84    ; 7 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 5 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 7 uses
  %i.bx = icmp ult i64 %i.bw, -2                  ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !90
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bs, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre.i52 = load ptr, ptr %3, align 8, !tbaa !84 ; 2 uses
  %.pre122.a = load ptr, ptr %i.bn, align 8, !tbaa !155
  %.pre124 = ptrtoint ptr %.pre.i52 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bw
  %i.bz = getelementptr i8, ptr %i.by, i64 2      ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bs, %i.bz
  br i1 %.not.i.i.i49, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bz, ptr %i.bn, align 8, !tbaa !155
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.pre-phi125 = phi i64 [ %.pre124, %bb.t ], [ %i.bv, %bb.u ], [ %i.bv, %bb.v ]
  %i.ca = phi ptr [ %.pre122.a, %bb.t ], [ %i.bs, %bb.u ], [ %i.bz, %bb.v ]
  %i.cb = phi ptr [ %.pre.i52, %bb.t ], [ %i.bt, %bb.u ], [ %i.bt, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bw
  store i8 12, ptr %i.cc, align 1, !tbaa !158
  %i.cd = and i64 %i.bw, 4294967295               ; 3 uses
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.ce, %.pre-phi125             ; 2 uses
  %.not.i.i.i53 = icmp ugt i64 %i.cf, %i.cd
  br i1 %.not.i.i.i53, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.cd, i64 noundef %i.cf) #19
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !90
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bs, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i57 = load ptr, ptr %3, align 8, !tbaa !84 ; 2 uses
  %.pre121.a = load ptr, ptr %i.bn, align 8, !tbaa !155
  %.pre126 = ptrtoint ptr %.pre.i57 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.z:                                             ; preds = %bb.x
  %i.ch = getelementptr i8, ptr %i.bt, i64 %i.bw
  %i.ci = getelementptr i8, ptr %i.ch, i64 2      ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.bs, %i.ci
  br i1 %.not.i.i.i54, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ci, ptr %i.bn, align 8, !tbaa !155
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.pre-phi127 = phi i64 [ %.pre126, %bb.y ], [ %i.bv, %bb.z ], [ %i.bv, %bb.aa ]
  %i.cj = phi ptr [ %.pre121.a, %bb.y ], [ %i.bs, %bb.z ], [ %i.ci, %bb.aa ]
  %i.ck = phi ptr [ %.pre.i57, %bb.y ], [ %i.bt, %bb.z ], [ %i.bt, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.bw
  store i8 7, ptr %i.cl, align 1, !tbaa !158
  %i.cm = and i64 %i.bw, 4294967295               ; 3 uses
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cn, %.pre-phi127             ; 2 uses
  %.not.i.i.i58 = icmp ugt i64 %i.co, %i.cm
  br i1 %.not.i.i.i58, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.cm, i64 noundef %i.co) #19
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit
  %.sink178 = phi ptr [ %i.cp, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit ], [ %i.cg, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink178, i64 1
  store i8 %i.br, ptr %i.cq, align 1, !tbaa !90
  %i.cr = getelementptr inbounds nuw i8, ptr %.039100, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.bl
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
  %i.i = load i32, ptr %.065, align 4, !tbaa !8   ; 5 uses
  %i.j = icmp ult i32 %i.i, 65536
  br i1 %i.j, label %bb.c, label %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge

._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge: ; preds = %bb.b
  %.pre74 = load i8, ptr %i.g, align 8, !tbaa !153, !range !126
  br label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.f, align 1, !tbaa !154, !range !126, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = and i32 %i.i, 63488
  %switch.selectcmp.i = icmp eq i32 %i.m, 55296
  %or.cond = and i1 %switch.selectcmp.i, %i.l
  %.pre75 = load i8, ptr %i.g, align 8, !tbaa !153, !range !126 ; 2 uses
  br i1 %or.cond, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread55

_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread: ; preds = %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge, %bb.c
  %i.n = phi i8 [ %.pre74, %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge ], [ %.pre75, %bb.c ]
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !155  ; 7 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !84     ; 7 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 5 uses
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp ult i64 %i.t, -5                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i8 0, ptr %i.d, align 1, !tbaa !90
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.p, i64 noundef 5, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !84  ; 2 uses
  %.pre77 = load ptr, ptr %i.h, align 8, !tbaa !155
  %.pre78 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 5        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.w
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.w, ptr %i.h, align 8, !tbaa !155
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit
end_hunk_0
