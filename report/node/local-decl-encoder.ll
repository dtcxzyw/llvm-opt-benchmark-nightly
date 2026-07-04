inline.NumInlined: 75
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2v88internal4wasm16LocalDeclEncoder4EmitEPh:bb.a
  %i.at = and i32 %i.as, 19
  %i.au = icmp eq i32 %i.at, 17
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit
  store i8 101, ptr %i.ar, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.7, i64 3
  %.pre = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit
  %i.aw = phi i32 [ %.pre, %bb.f ], [ %i.as, %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit ] ; 4 uses
  %.1 = phi ptr [ %i.av, %bb.f ], [ %i.ar, %_ZNK2v88internal4wasm13ValueTypeBase15value_type_codeEv.exit ] ; 5 uses
  %i.ax = and i32 %i.aw, 3
  switch i32 %i.ax, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34 [
    i32 3, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ay = and i32 %i.aw, 21
  %or.cond.not = icmp eq i32 %i.ay, 5
  br i1 %or.cond.not, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34, label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread

_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread: ; preds = %bb.h, %bb.g
  %i.az = and i32 %i.aw, 8
  %.not39 = icmp eq i32 %i.az, 0
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread
  store i8 98, ptr %.1, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %.sroa.0.0.copyload.i.pre = load i32, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread
  %.sroa.0.0.copyload.i = phi i32 [ %.sroa.0.0.copyload.i.pre, %bb.i ], [ %i.aw, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread ] ; 3 uses
  %.2 = phi ptr [ %i.ba, %bb.i ], [ %.1, %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4
  %i.bb = and i32 %.sroa.0.0.copyload.i, 3
  %i.bc = icmp eq i32 %i.bb, 3
  br i1 %i.bc, label %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread, label %_ZNK2v88internal4wasm8HeapType4codeEv.exit

_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread: ; preds = %bb.j
  %i.bd = lshr i32 %.sroa.0.0.copyload.i, 8       ; 2 uses
  %i.be = and i32 %i.bd, 1048575                  ; 5 uses
  %i.bf = icmp samesign ugt i32 %i.be, 63
  br i1 %i.bf, label %.lr.ph18.i, label %._crit_edge19.i

_ZNK2v88internal4wasm8HeapType4codeEv.exit:       ; preds = %bb.j
  %i.bg = call noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_genericEv(ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or i32 %i.bh, -128                      ; 3 uses
  %.not15.i = icmp samesign ugt i32 %i.bi, -65
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i17

.lr.ph18.i:                                       ; preds = %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread
  %i.bj = trunc i32 %i.bd to i8
  %i.bk = or i8 %i.bj, -128
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  store i8 %i.bk, ptr %.2, align 1
  %i.bm = lshr i32 %i.be, 7                       ; 2 uses
  %i.bn = icmp samesign ugt i32 %i.be, 8191
  br i1 %i.bn, label %.lr.ph18.i.1, label %._crit_edge19.i

.lr.ph18.i.1:                                     ; preds = %.lr.ph18.i
  %i.bo = trunc i32 %i.bm to i8
  %i.bp = or i8 %i.bo, -128
  %i.bq = getelementptr inbounds nuw i8, ptr %.2, i64 2
  store i8 %i.bp, ptr %i.bl, align 1
  %i.br = lshr i32 %i.be, 14
  br label %._crit_edge19.i

._crit_edge19.i:                                  ; preds = %.lr.ph18.i, %.lr.ph18.i.1, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread
  %.10 = phi ptr [ %.2, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ], [ %i.bl, %.lr.ph18.i ], [ %i.bq, %.lr.ph18.i.1 ]
  %.0.lcssa.i18 = phi i32 [ %i.be, %_ZNK2v88internal4wasm8HeapType4codeEv.exit.thread ], [ %i.bm, %.lr.ph18.i ], [ %i.br, %.lr.ph18.i.1 ]
  %i.bs = trunc nuw nsw i32 %.0.lcssa.i18 to i8
  br label %_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit

.lr.ph.i17:                                       ; preds = %_ZNK2v88internal4wasm8HeapType4codeEv.exit
  %i.bt = trunc nsw i32 %i.bi to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.bt, ptr %.2, align 1
  br label %._crit_edge.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %.lr.ph.i17, %_ZNK2v88internal4wasm8HeapType4codeEv.exit
  %.9 = phi ptr [ %.2, %_ZNK2v88internal4wasm8HeapType4codeEv.exit ], [ %i.bu, %.lr.ph.i17 ]
  %.1.lcssa.i = phi i32 [ %i.bi, %_ZNK2v88internal4wasm8HeapType4codeEv.exit ], [ -1, %.lr.ph.i17 ]
  %i.bv = trunc nsw i32 %.1.lcssa.i to i8
  %i.bw = and i8 %i.bv, 127
  br label %_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit

_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit: ; preds = %._crit_edge19.i, %._crit_edge.i
  %.12 = phi ptr [ %.10, %._crit_edge19.i ], [ %.9, %._crit_edge.i ] ; 2 uses
  %.sink.i = phi i8 [ %i.bs, %._crit_edge19.i ], [ %i.bw, %._crit_edge.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.12, i64 1
  store i8 %.sink.i, ptr %.12, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34

_ZNK2v88internal4wasm13ValueTypeBase24encoding_needs_heap_typeEv.exit.thread34: ; preds = %bb.h, %bb.g, %_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit
  %.3 = phi ptr [ %i.bx, %_ZN2v88internal4wasm9LEBHelper10write_i32vEPPhi.exit ], [ %.1, %bb.h ], [ %.1, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.by = getelementptr inbounds nuw i8, ptr %.047, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.by, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal4wasm16LocalDeclEncoder9AddLocalsEjNS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = zext i32 %1 to i64
  %i.h = add i64 %i.b, %i.g
  store i64 %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, %2
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, %1
  store ptr %i.r, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = phi ptr [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %.0 = phi i32 [ %1, %bb.c ], [ %i.t, %bb.e ], [ %1, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE9push_backEOS5_.exit, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.ab, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.ac)
  %.pre.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE9push_backEOS5_.exit

_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE9push_backEOS5_.exit: ; preds = %bb.f, %bb.g
  %i.ad = phi ptr [ %i.u, %bb.f ], [ %.pre.i.i, %bb.g ] ; 2 uses
  %i.ae = add i64 %i.f, %i.b
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.j, align 8
  %.sroa.4.0.insert.ext = zext i32 %2 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ad, align 4
  ret i32 %i.af
}

declare noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_numericEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef zeroext i8 @_ZNK2v88internal4wasm13ValueTypeBase23value_type_code_genericEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %2 = ptrtoint ptr %i.b to i64                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #7
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ac = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit
  %i.ad = add i64 %2, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.ad)
  %i.ae = xor i64 %2, -1
  %i.af = add i64 %umax, %i.ae                    ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 72
  %i.ai = sub i64 %i.f, %i.y
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond17 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond17, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.z, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.b, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.b, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 4
  %wide.load15 = load <2 x i64>, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load15, ptr %i.ao, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i10.ph = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.07.i9.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.0.i10 = phi ptr [ %i.ar, %.lr.ph ], [ %.0.i10.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.07.i9 = phi ptr [ %i.as, %.lr.ph ], [ %.07.i9.ph, %.lr.ph.preheader18 ] ; 2 uses
  %i.aq = load i64, ptr %.07.i9, align 4
  store i64 %i.aq, ptr %.0.i10, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i9, i64 8 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.d
  br i1 %i.at, label %.lr.ph, label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, !llvm.loop !14

_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit: ; preds = %.lr.ph, %middle.block
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit

_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit
  %i.au = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorISt4pairIjNS0_4wasm9ValueTypeEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayISt4pairIjNS0_4wasm9ValueTypeEEA_S6_EEPT_m.exit ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.o
  store ptr %i.av, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = distinct !{!11, !7, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !7, !12}
end_hunk_0
