inline.NumInlined: 10729
inline.NumDeleted: 3679
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 254
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN6duckdb18TupleDataAllocator13BuildFastPathERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm:bb.a
  store i64 %i.bx, ptr %i.an, align 8, !tbaa !504
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !247
  %i.ca = add i64 %i.bz, %i.am
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !247
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %.041 = phi i64 [ 0, %.lr.ph.new ], [ %i.cq, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.h ]
  %i.cb = mul i64 %.041, %i.al
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cb
  %i.cd = getelementptr [8 x i8], ptr %i.bj, i64 %.041
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !284
  %i.ce = or disjoint i64 %.041, 1                ; 2 uses
  %i.cf = mul i64 %i.ce, %i.al
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cf
  %i.ch = getelementptr [8 x i8], ptr %i.bj, i64 %i.ce
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !284
  %i.ci = or disjoint i64 %.041, 2                ; 2 uses
  %i.cj = mul i64 %i.ci, %i.al
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.bj, i64 %i.ci
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !284
  %i.cm = or disjoint i64 %.041, 3                ; 2 uses
  %i.cn = mul i64 %i.cm, %i.al
  %i.co = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.bj, i64 %i.cm
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !284
  %i.cq = add nuw i64 %.041, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !549

bb.i:                                             ; preds = %bb.c, %._crit_edge, %bb.e, %bb.d, %bb.a, %bb.b
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ true, %._crit_edge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb18TupleDataAllocator13GetRowPointerERNS_17TupleDataPinStateERKNS_18TupleDataChunkPartE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb18TupleDataAllocator11PinRowBlockERNS_17TupleDataPinStateERKNS_18TupleDataChunkPartE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !538
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !541
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !545
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TupleDataAllocator5BuildERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(488) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::unique_ptr.325", align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !531  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !531  ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !414  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !550
  tail call void @_ZN6duckdb18TupleDataAllocator29ReleaseOrStoreHandlesInternalERNS_16TupleDataSegmentERNS_6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS4_EEEERNS_19buffer_handle_map_tERKNS_15ContinuousIdSetERNS3_INS_14TupleDataBlockELb0ENS5_ISE_EEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i8 noundef zeroext %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.z = load i8, ptr %i.y, align 8, !tbaa !145, !range !175, !noundef !60
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load i8, ptr %i.u, align 8, !tbaa !550
  tail call void @_ZN6duckdb18TupleDataAllocator29ReleaseOrStoreHandlesInternalERNS_16TupleDataSegmentERNS_6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS4_EEEERNS_19buffer_handle_map_tERKNS_15ContinuousIdSetERNS3_INS_14TupleDataBlockELb0ENS5_ISE_EEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ae, i8 noundef zeroext %i.af)
  br label %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit

_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.ag = tail call noundef zeroext i1 @_ZN6duckdb18TupleDataAllocator13BuildFastPathERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(488) %3, i64 noundef %4, i64 noundef %5)
  br i1 %i.ag, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 464 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !551 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !552
  %.not.i.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorISt4pairImmELb0ESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairImmES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairImmES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !552
  br label %_ZN6duckdb6vectorISt4pairImmELb0ESaIS2_EE5clearEv.exit

_ZN6duckdb6vectorISt4pairImmELb0ESaIS2_EE5clearEv.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt4pairImmES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %.not127 = icmp eq i64 %5, 0
  br i1 %.not127, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %_ZN6duckdb6vectorISt4pairImmELb0ESaIS2_EE5clearEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph129, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmjEEEvDpOT_.exit
  %.0128 = phi i64 [ 0, %.lr.ph129 ], [ %i.gt, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmjEEEvDpOT_.exit ] ; 3 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !531 ; 4 uses
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !531 ; 3 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !414
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !416
  %i.bb = icmp eq i64 %i.ba, 2048
  br i1 %i.bb, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bd = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.be = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.bd, i64 noundef 40) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 40, i1 false)
  %i.bf = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 noundef 40), !noalias !553 ; 3 uses
  tail call void @_ZN6duckdb14TupleDataChunkC1ERSt5mutex(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.be), !noalias !553
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !422 ; 6 uses
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !556
  %.not.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = ptrtoint ptr %i.bf to i64
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !414
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.i, align 8, !tbaa !422
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !413
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE9push_backEOS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !413 ; 10 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %.noexc, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.noexc:                                           ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #29 ; 11 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  %i.bx = ptrtoint ptr %i.bf to i64
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !414
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %9 = add i64 %i.bl, -8
  %10 = sub i64 %9, %i.bm                         ; 2 uses
  %i.by = lshr i64 %10, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bv, i64 8
  %i.ca = add i64 %i.bl, -8
  %i.cb = sub i64 %i.ca, %i.bm
  %i.cc = and i64 %i.cb, -8                       ; 2 uses
  %scevgep177 = getelementptr i8, ptr %scevgep, i64 %i.cc
  %scevgep178 = getelementptr i8, ptr %i.bk, i64 8
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.cc
  %bound0 = icmp ult ptr %i.bv, %scevgep179
  %bound1 = icmp ult ptr %i.bk, %scevgep177
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.cd = shl i64 %n.vec, 3                       ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bv, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bk, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.cg ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.bk, i64 %i.cg ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.ch = getelementptr i8, ptr %next.gep180, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep180, align 8, !tbaa !414, !alias.scope !562, !noalias !557
  %wide.load181 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !414, !alias.scope !562, !noalias !557
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !414, !alias.scope !565, !noalias !562
  store <2 x i64> %wide.load181, ptr %i.ci, align 8, !tbaa !414, !alias.scope !565, !noalias !562
  %i.cj = getelementptr i8, ptr %next.gep180, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep180, align 8, !tbaa !414, !alias.scope !562, !noalias !557
  store <2 x ptr> splat (ptr null), ptr %i.cj, align 8, !tbaa !414, !alias.scope !562, !noalias !557
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !567

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader201

.lr.ph.i.i.i.i.i.i.i.preheader201:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader201, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader201 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader201 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !414, !alias.scope !560, !noalias !557
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !414, !alias.scope !557, !noalias !560
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !414, !alias.scope !560, !noalias !557
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !568

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ce, %middle.block ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bk) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bv, ptr %i.g, align 8, !tbaa !413
  store ptr %i.co, ptr %i.i, align 8, !tbaa !422
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cp, ptr %i.al, align 8, !tbaa !556
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  %i.cq = phi ptr [ %.pre, %bb.h ], [ %i.bv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.aq, %bb.f ] ; 2 uses
  %i.cr = phi ptr [ %i.bj, %bb.h ], [ %i.co, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ar, %bb.f ]
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = getelementptr i8, ptr %i.cq, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !414 ; 4 uses
  %i.cy = sub i64 %5, %.0128
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !416
  %i.db = sub i64 2048, %i.da
  %i.dc = tail call noundef i64 @llvm.umin.i64(i64 %i.cy, i64 %i.db)
  %i.dd = add i64 %.0128, %4
  call void @_ZN6duckdb18TupleDataAllocator14BuildChunkPartERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmmRNS_14TupleDataChunkE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.325") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(488) %3, i64 noundef %i.dd, i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %i.cx)
  %i.de = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb14TupleDataChunk7AddPartERNS_16TupleDataSegmentENS_10unique_ptrINS_18TupleDataChunkPartENS_13arena_deleterIS4_EELb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull %8) ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !546 ; 2 uses
  %i.dh = zext i32 %i.dg to i64                   ; 4 uses
  %i.di = load i64, ptr %i.am, align 8, !tbaa !548
  %i.dj = add i64 %i.di, %i.dh
  store i64 %i.dj, ptr %i.am, align 8, !tbaa !548
  %i.dk = load ptr, ptr %i.an, align 8, !tbaa !528, !nonnull !60, !align !61 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !289
  %i.dn = mul i64 %i.dm, %i.dh
  %i.do = load i64, ptr %i.ao, align 8, !tbaa !247
  %i.dp = add i64 %i.do, %i.dn                    ; 2 uses
  store i64 %i.dp, ptr %i.ao, align 8, !tbaa !247
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 152
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !145, !range !175, !noundef !60
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE9push_backEOS5_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !569
  %i.dv = add i64 %i.du, %i.dp
  store i64 %i.dv, ptr %i.ao, align 8, !tbaa !247
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14TupleDataChunkENS0_13arena_deleterIS2_EELb0EEESaIS5_EE9push_backEOS5_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 192
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !90
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 200
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !90
  %.not117 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not117, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb18TupleDataAllocator11PinRowBlockERNS_17TupleDataPinStateERKNS_18TupleDataChunkPartE(ptr noundef nonnull readonly align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.de)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eb)
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !538
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !541
  %i.ef = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !545
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  %i.ej = load ptr, ptr %i.an, align 8, !tbaa !528, !nonnull !60, !align !61 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 192
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !90 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !90 ; 2 uses
  %.not118123 = icmp eq ptr %i.el, %i.en
  br i1 %.not118123, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.m
  %.not135 = icmp eq i32 %i.dg, 0
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph126, %._crit_edge
  %.sroa.0110.0124 = phi ptr [ %i.el, %.lr.ph126 ], [ %i.gm, %._crit_edge ] ; 2 uses
  %i.eo = load ptr, ptr %i.an, align 8, !tbaa !528, !nonnull !60, !align !61 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !281
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !282
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = sdiv exact i64 %i.ev, 24
  %i.ex = load i64, ptr %.sroa.0110.0124, align 8, !tbaa !92 ; 4 uses
  %i.ey = add i64 %i.ew, %i.ex                    ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 136
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !448
  %i.fb = load ptr, ptr %i.ep, align 8, !tbaa !449 ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ey, ptr %i.e, align 8, !tbaa !92
  store i64 %i.ff, ptr %i.f, align 8, !tbaa !92
  %.not.i.i.i77 = icmp ult i64 %i.ey, %i.ff
  br i1 %.not.i.i.i77, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit, label %.noexc.i, !prof !450

.noexc.i:                                         ; preds = %bb.n
  %i.fg = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.fh, ptr %7, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 55, ptr %i.b, align 8, !tbaa !92
  %i.fi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc97 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc97:                                         ; preds = %.noexc.i
  store ptr %i.fi, ptr %7, align 8, !tbaa !53
  %i.fj = load i64, ptr %i.b, align 8, !tbaa !92  ; 3 uses
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fi, ptr noundef nonnull align 1 dereferenceable(55) @.str.23, i64 55, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb18TupleDataAllocator5BuildERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm:bb.a

_ZNK6duckdb6vectorINS_15AggregateObjectELb1ESaIS1_EEixEm.exit: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %invariant.gep = getelementptr i8, ptr %i.ei, i64 %i.fr
  br i1 %.not135, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6duckdb6vectorINS_15AggregateObjectELb1ESaIS1_EEixEm.exit
  %i.gk = getelementptr inbounds nuw [416 x i8], ptr %i.fv, i64 %i.ex
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 392
  br label %bb.u

._crit_edge:                                      ; preds = %bb.u, %_ZNK6duckdb6vectorINS_15AggregateObjectELb1ESaIS1_EEixEm.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0110.0124, i64 8 ; 2 uses
  %.not118 = icmp eq ptr %i.gm, %i.en
  br i1 %.not118, label %.loopexit, label %bb.n

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %.072122 = phi i64 [ 0, %.lr.ph ], [ %i.gs, %bb.u ] ; 2 uses
  %i.gn = load ptr, ptr %i.an, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 120
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !289
  %i.gq = mul i64 %i.gp, %.072122
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gq
  %i.gr = load i64, ptr %i.gl, align 8, !tbaa !572
  tail call void @_ZN6duckdb10FastMemsetEPvim(ptr noundef %gep, i32 noundef 0, i64 noundef %i.gr)
  %i.gs = add nuw nsw i64 %.072122, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gs, %i.dh
  br i1 %exitcond.not, label %._crit_edge, label %bb.u, !llvm.loop !594

.loopexit:                                        ; preds = %._crit_edge, %bb.m, %bb.l
  %i.gt = add i64 %.0128, %i.dh                   ; 2 uses
  %i.gu = load ptr, ptr %i.i, align 8, !tbaa !422
  %i.gv = load ptr, ptr %i.g, align 8, !tbaa !413
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = ashr exact i64 %i.gy, 3
  %i.ha = add nsw i64 %i.gz, -1                   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !532 ; 2 uses
  %i.hd = load ptr, ptr %i.aj, align 8, !tbaa !552 ; 7 uses
  %i.he = load ptr, ptr %i.ap, align 8, !tbaa !595
  %.not.i85 = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i85, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  store i64 %i.ha, ptr %i.hd, align 8, !tbaa !596
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hg = zext i32 %i.hc to i64
  store i64 %i.hg, ptr %i.hf, align 8, !tbaa !598
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  store ptr %i.hh, ptr %i.aj, align 8, !tbaa !552
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmjEEEvDpOT_.exit

bb.w:                                             ; preds = %.loopexit
  %i.hi = load ptr, ptr %i.ah, align 8, !tbaa !551 ; 5 uses
  %i.hj = ptrtoint ptr %i.hd to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 3 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775792
  br i1 %i.hm, label %bb.x, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.hn = ashr exact i64 %i.hl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = tail call i64 @llvm.umin.i64(i64 %i.ho, i64 576460752303423487)
  %i.hr = select i1 %i.hp, i64 576460752303423487, i64 %i.hq ; 3 uses
  %.not.i.i.i86 = icmp ne i64 %i.hr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i86)
  %i.hs = shl nuw nsw i64 %i.hr, 4
  %i.ht = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #29 ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hl ; 2 uses
  store i64 %i.ha, ptr %i.hu, align 8, !tbaa !596
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = zext i32 %i.hc to i64
  store i64 %i.hw, ptr %i.hv, align 8, !tbaa !598
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.hi, %i.hd
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i.i ], [ %i.ht, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i.i ], [ %i.hi, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !599
  %i.hx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hx, %i.hd
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !603

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ht, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.hy, %.lr.ph.i.i.i.i.i.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.hi) #30
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ht, ptr %i.ah, align 8, !tbaa !551
  store ptr %i.hz, ptr %i.aj, align 8, !tbaa !552
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.hr
  store ptr %i.ia, ptr %i.ap, align 8, !tbaa !595
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmjEEEvDpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmjEEEvDpOT_.exit: ; preds = %bb.v, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ib = phi ptr [ %i.hh, %bb.v ], [ %i.hz, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJmjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %.not = icmp eq i64 %i.gt, %5
  br i1 %.not, label %._crit_edge130, label %bb.e, !llvm.loop !604

._crit_edge130:                                   ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmjEEEvDpOT_.exit, %_ZN6duckdb6vectorISt4pairImmELb0ESaIS2_EE5clearEv.exit
  %i.ic = phi ptr [ %i.ai, %_ZN6duckdb6vectorISt4pairImmELb0ESaIS2_EE5clearEv.exit ], [ %i.ib, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJmjEEEvDpOT_.exit ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 440 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !605 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 448 ; 4 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !606 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.ig, %i.ie
  br i1 %.not.i.i.i87, label %_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb18TupleDataChunkPartEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb18TupleDataChunkPartEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge130
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !606
  br label %_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit

_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit: ; preds = %._crit_edge130, %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb18TupleDataChunkPartEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.ih = phi ptr [ %i.ig, %._crit_edge130 ], [ %i.ie, %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb18TupleDataChunkPartEES3_EvT_S5_RSaIT0_E.exit.i.i.i ]
  %i.ii = load ptr, ptr %i.ah, align 8, !tbaa !607 ; 2 uses
  %.not119131 = icmp eq ptr %i.ii, %i.ic
  br i1 %.not119131, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 456 ; 2 uses
  %.pre138 = load ptr, ptr %i.ik, align 8, !tbaa !608
  br label %bb.z

._crit_edge134:                                   ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit, %_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit
  tail call void @_ZN6duckdb18TupleDataAllocator28InitializeChunkStateInternalERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmbbbRNS_6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS8_EEENS_12optional_ptrINS_19SortKeyPayloadStateELb1EEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(488) %3, i64 noundef %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.id, i64 0)
  %i.il = load ptr, ptr %i.ah, align 8, !tbaa !551
  %i.im = load i64, ptr %i.il, align 8, !tbaa !596
  %i.in = load ptr, ptr %i.g, align 8, !tbaa !413
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.im
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !414
  tail call void @_ZN6duckdb14TupleDataChunk18MergeLastChunkPartERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(40) %i.ip, ptr noundef nonnull align 8 dereferenceable(192) %1)
  br label %bb.ae

bb.z:                                             ; preds = %.lr.ph133, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit
  %i.iq = phi ptr [ %i.ie, %.lr.ph133 ], [ %i.kb, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 8 uses
  %i.ir = phi ptr [ %.pre138, %.lr.ph133 ], [ %i.kc, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 5 uses
  %i.is = phi ptr [ %i.ih, %.lr.ph133 ], [ %i.kd, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 3 uses
  %.sroa.0103.0132 = phi ptr [ %i.ii, %.lr.ph133 ], [ %i.ke, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !598
  %i.iv = load ptr, ptr %i.ij, align 8, !tbaa !533
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iu
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !534 ; 2 uses
  %.not.i88 = icmp eq ptr %i.is, %i.ir
  br i1 %.not.i88, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ix, ptr %i.is, align 8, !tbaa !609
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  store ptr %i.iy, ptr %i.if, align 8, !tbaa !606
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.iz = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.ja = ptrtoint ptr %i.iq to i64               ; 3 uses
  %i.jb = sub i64 %i.iz, %i.ja                    ; 3 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775800
  br i1 %i.jc, label %bb.ac, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jd = ashr exact i64 %i.jb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i89 = tail call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i89, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = tail call i64 @llvm.umin.i64(i64 %i.je, i64 1152921504606846975)
  %i.jh = select i1 %i.jf, i64 1152921504606846975, i64 %i.jg ; 3 uses
  %.not.i.i.i90 = icmp ne i64 %i.jh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i90)
  %i.ji = shl nuw nsw i64 %i.jh, 3
  %i.jj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #29 ; 9 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jb
  store ptr %i.ix, ptr %i.jk, align 8, !tbaa !609
  %.not10.i.i.i.i.i.i91 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not10.i.i.i.i.i.i91, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i92.preheader

.lr.ph.i.i.i.i.i.i92.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jl = ptrtoaddr ptr %i.jj to i64
  %11 = add i64 %i.iz, -8
  %12 = sub i64 %11, %i.ja                        ; 2 uses
  %i.jm = lshr i64 %12, 3
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check185 = icmp ult i64 %12, 24
  %i.jo = sub i64 %i.ja, %i.jl
  %diff.check = icmp ugt i64 %i.jo, -32
  %or.cond = or i1 %min.iters.check185, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i92.preheader200, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.i.i.i.i.i.i92.preheader
  %n.vec188 = and i64 %i.jn, 4611686018427387900  ; 3 uses
  %i.jp = shl i64 %n.vec188, 3                    ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jj, i64 %i.jp  ; 2 uses
  %i.jr = getelementptr i8, ptr %i.iq, i64 %i.jp
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph186
  %index190 = phi i64 [ 0, %vector.ph186 ], [ %index.next195, %vector.body189 ] ; 2 uses
  %i.js = shl i64 %index190, 3                    ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.jj, i64 %i.js ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.iq, i64 %i.js ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.jt = getelementptr i8, ptr %next.gep192, i64 16
  %wide.load193 = load <2 x i64>, ptr %next.gep192, align 8, !alias.scope !614, !noalias !611
  %wide.load194 = load <2 x i64>, ptr %i.jt, align 8, !alias.scope !614, !noalias !611
  %i.ju = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x i64> %wide.load193, ptr %next.gep191, align 8, !alias.scope !611, !noalias !614
  store <2 x i64> %wide.load194, ptr %i.ju, align 8, !alias.scope !611, !noalias !614
  %index.next195 = add nuw i64 %index190, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next195, %n.vec188
  br i1 %i.jv, label %middle.block196, label %vector.body189, !llvm.loop !616

middle.block196:                                  ; preds = %vector.body189
  %cmp.n197 = icmp eq i64 %i.jn, %n.vec188
  br i1 %cmp.n197, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i92.preheader200

.lr.ph.i.i.i.i.i.i92.preheader200:                ; preds = %.lr.ph.i.i.i.i.i.i92.preheader, %middle.block196
  %.012.i.i.i.i.i.i93.ph = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i92.preheader ], [ %i.jq, %middle.block196 ]
  %.0911.i.i.i.i.i.i94.ph = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i.i92.preheader ], [ %i.jr, %middle.block196 ]
  br label %.lr.ph.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i92:                             ; preds = %.lr.ph.i.i.i.i.i.i92.preheader200, %.lr.ph.i.i.i.i.i.i92
  %.012.i.i.i.i.i.i93 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i92 ], [ %.012.i.i.i.i.i.i93.ph, %.lr.ph.i.i.i.i.i.i92.preheader200 ] ; 2 uses
  %.0911.i.i.i.i.i.i94 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i92 ], [ %.0911.i.i.i.i.i.i94.ph, %.lr.ph.i.i.i.i.i.i92.preheader200 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.jw = load i64, ptr %.0911.i.i.i.i.i.i94, align 8, !alias.scope !614, !noalias !611
  store i64 %i.jw, ptr %.012.i.i.i.i.i.i93, align 8, !alias.scope !611, !noalias !614
  %i.jx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i94, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i93, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i95 = icmp eq ptr %i.jx, %i.ir
  br i1 %.not.i.i.i.i.i.i95, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i92, !llvm.loop !617

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i92, %middle.block196, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i96 = phi ptr [ %i.jj, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.jq, %middle.block196 ], [ %i.jy, %.lr.ph.i.i.i.i.i.i92 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.iq) #30
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.jj, ptr %i.id, align 8, !tbaa !605
  store ptr %i.jz, ptr %i.if, align 8, !tbaa !606
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jh ; 2 uses
  store ptr %i.ka, ptr %i.ik, align 8, !tbaa !608
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit: ; preds = %bb.aa, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.kb = phi ptr [ %i.iq, %bb.aa ], [ %i.jj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.kc = phi ptr [ %i.ir, %bb.aa ], [ %i.ka, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.kd = phi ptr [ %i.iy, %bb.aa ], [ %i.jz, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132, i64 16 ; 2 uses
  %.not119 = icmp eq ptr %i.ke, %i.ic
  br i1 %.not119, label %._crit_edge134, label %bb.z

bb.ae:                                            ; preds = %._crit_edge134, %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !550
  tail call void @_ZN6duckdb18TupleDataAllocator29ReleaseOrStoreHandlesInternalERNS_16TupleDataSegmentERNS_6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS4_EEEERNS_19buffer_handle_map_tERKNS_15ContinuousIdSetERNS3_INS_14TupleDataBlockELb0ENS5_ISE_EEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 noundef zeroext %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load i8, ptr %i.h, align 8, !tbaa !145, !range !175, !noundef !60
  %i.j = trunc nuw i8 %i.i to i1
  %.not = xor i1 %i.j, true
  %or.cond = and i1 %4, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i8, ptr %i.d, align 8, !tbaa !550
  tail call void @_ZN6duckdb18TupleDataAllocator29ReleaseOrStoreHandlesInternalERNS_16TupleDataSegmentERNS_6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS4_EEEERNS_19buffer_handle_map_tERKNS_15ContinuousIdSetERNS3_INS_14TupleDataBlockELb0ENS5_ISE_EEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 noundef zeroext %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb14TupleDataChunk7AddPartERNS_16TupleDataSegmentENS_10unique_ptrINS_18TupleDataChunkPartENS_13arena_deleterIS4_EELb0EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !534    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !546
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !416
  %i.g = add i64 %i.f, %i.d
  store i64 %i.g, ptr %i.e, align 8, !tbaa !416
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !618  ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !3    ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.k, ptr %i.h, align 8, !tbaa !618
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !532
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @llvm.umin.i32(i32 %i.i, i32 %i.k)
  store i32 %i.m, ptr %i.h, align 8, !tbaa !618
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !532
  %i.p = load i32, ptr %i.a, align 8, !tbaa !3
  %i.q = tail call noundef i32 @llvm.umax.i32(i32 %i.o, i32 %i.p)
  store i32 %i.q, ptr %i.n, align 4, !tbaa !532
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit

_ZN6duckdb15ContinuousIdSet6InsertERKj.exit:      ; preds = %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !619, !nonnull !60, !align !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.u = load i8, ptr %i.t, align 8, !tbaa !145, !range !175, !noundef !60
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !569
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !618 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !3   ; 3 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ac, ptr %i.y, align 8, !tbaa !618
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !532
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10

bb.g:                                             ; preds = %bb.e
  %i.ae = tail call noundef i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ac)
  store i32 %i.ae, ptr %i.y, align 8, !tbaa !618
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !532
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !3
  %i.ai = tail call noundef i32 @llvm.umax.i32(i32 %i.ag, i32 %i.ah)
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !532
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10

_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10:    ; preds = %bb.g, %bb.f, %bb.d, %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.al = load i64, ptr %i.aj, align 8
  store i64 %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !620 ; 6 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !533 ; 10 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = ashr exact i64 %i.as, 3                 ; 4 uses
  %i.au = trunc i64 %i.at to i32                  ; 4 uses
  %i.av = load i32, ptr %0, align 8, !tbaa !618   ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10
  store i32 %i.au, ptr %0, align 8, !tbaa !618
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !532
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11

bb.i:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10
  %i.ay = tail call noundef i32 @llvm.umin.i32(i32 %i.av, i32 %i.au)
  store i32 %i.ay, ptr %0, align 8, !tbaa !618
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !532
  %i.bb = tail call noundef i32 @llvm.umax.i32(i32 %i.ba, i32 %i.au)
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !532
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11

_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11:    ; preds = %bb.h, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !621
  %.not.i = icmp eq ptr %i.ao, %i.bd
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11
  %i.be = load i64, ptr %2, align 8, !tbaa !534
  store i64 %i.be, ptr %i.ao, align 8, !tbaa !534
  store ptr null, ptr %2, align 8, !tbaa !534
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !620
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.k:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11
  %i.bg = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.bg, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.at
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #29 ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.as
  %i.bo = load i64, ptr %2, align 8, !tbaa !534
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !534
  store ptr null, ptr %2, align 8, !tbaa !534
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %3 = add i64 %i.aq, -8
  %4 = sub i64 %3, %i.ar                          ; 2 uses
  %i.bp = lshr i64 %4, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.br = add i64 %i.aq, -8
  %i.bs = sub i64 %i.br, %i.ar
  %i.bt = and i64 %i.bs, -8
  %i.bu = add i64 %i.bt, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.bu
  %scevgep18 = getelementptr i8, ptr %i.ap, i64 %i.bu
  %bound0 = icmp ult ptr %i.bm, %scevgep18
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bm, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.ap, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.by ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.ap, i64 %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.bz = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !534, !alias.scope !627, !noalias !622
  %wide.load20 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !534, !alias.scope !627, !noalias !622
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !534, !alias.scope !630, !noalias !627
  store <2 x i64> %wide.load20, ptr %i.ca, align 8, !tbaa !534, !alias.scope !630, !noalias !627
  %i.cb = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !534, !alias.scope !627, !noalias !622
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !534, !alias.scope !627, !noalias !622
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.preheader22:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader22 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !534, !alias.scope !625, !noalias !622
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !534, !alias.scope !622, !noalias !625
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !534, !alias.scope !625, !noalias !622
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !633

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bm, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bw, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bm, ptr %i.am, align 8, !tbaa !533
  store ptr %i.cg, ptr %i.an, align 8, !tbaa !620
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.ch, ptr %i.bc, align 8, !tbaa !621
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TupleDataAllocator14BuildChunkPartERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmmRNS_14TupleDataChunkE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.325") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.d = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 48), !noalias !635 ; 17 uses
  tail call void @_ZN6duckdb18TupleDataChunkPartC1ERSt5mutex(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !635
  store ptr %i.d, ptr %0, align 8, !tbaa !534, !alias.scope !635
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !472, !nonnull !60, !align !61 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !638  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !638  ; 3 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr i8, ptr %i.l, i64 %i.r     ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !498
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !504
  %i.x = sub i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !289
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb18TupleDataAllocator14CreateRowBlockERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(192) %2)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !240
  %.not92 = icmp eq i64 %i.ae, -1
  %.pre104 = load ptr, ptr %i.m, align 8, !tbaa !511 ; 2 uses
  %.pre106 = load ptr, ptr %i.k, align 8, !tbaa !510 ; 3 uses
  br i1 %.not92, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = ptrtoint ptr %.pre104 to i64
  %i.ag = ptrtoint ptr %.pre106 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr i8, ptr %.pre106, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -32
  %i.ak = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !515, !nonnull !60, !align !61
  %i.an = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 3 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr i64 %i.an, 1
  %i.ap = or i64 %i.ao, %i.an                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = or i64 %i.aq, %i.ap                     ; 2 uses
  %i.as = lshr i64 %i.ar, 4
  %i.at = or i64 %i.as, %i.ar                     ; 2 uses
  %i.au = lshr i64 %i.at, 8
  %i.av = or i64 %i.au, %i.at                     ; 2 uses
  %i.aw = lshr i64 %i.av, 16
  %i.ax = or i64 %i.aw, %i.av                     ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = or i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 285870213051386505
  %i.bb = lshr i64 %i.ba, 58
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !92
  %i.be = add i64 %i.bd, 1
  br label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit

_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit: ; preds = %bb.e, %bb.d
  %.0.i.neg.i = phi i64 [ %i.be, %bb.e ], [ 0, %bb.d ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  store atomic i64 %.0.i.neg.i, ptr %i.bf seq_cst, align 8
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !511
  %.pre105 = load ptr, ptr %i.k, align 8, !tbaa !510
  br label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83

_ZN6duckdb11NumericCastIjmvEET_T0_.exit83:        ; preds = %bb.c, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit, %bb.b
  %i.bg = phi ptr [ %.pre106, %bb.c ], [ %.pre105, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit ], [ %i.l, %bb.b ]
  %i.bh = phi ptr [ %.pre104, %bb.c ], [ %.pre, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit ], [ %i.n, %bb.b ]
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 5
  %i.bm = add nsw i64 %i.bl, -1
  %i.bn = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.bm) ; 2 uses
  store i32 %i.bn, ptr %i.d, align 8, !tbaa !536
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !510
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !504
  %i.bt = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !545
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !289
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
end_hunk_1
begin_hunk_2_@_ZN6duckdb18TupleDataAllocator15CreateHeapBlockERNS_16TupleDataSegmentEm:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !656
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.d, align 8, !tbaa !446
  tail call void @_ZN6duckdb14TupleDataBlockC1ERNS_13BufferManagerENS_9MemoryTagEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext %i.i, i64 noundef %2)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !511
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !511
  br label %_ZNSt6vectorIN6duckdb14TupleDataBlockENS0_19arena_stl_allocatorIS1_EEE12emplace_backIJRNS0_13BufferManagerERKNS0_9MemoryTagERmEEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt6vectorIN6duckdb14TupleDataBlockENS0_19arena_stl_allocatorIS1_EEE17_M_realloc_insertIJRNS0_13BufferManagerERKNS0_9MemoryTagERmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !511
  br label %_ZNSt6vectorIN6duckdb14TupleDataBlockENS0_19arena_stl_allocatorIS1_EEE12emplace_backIJRNS0_13BufferManagerERKNS0_9MemoryTagERmEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb14TupleDataBlockENS0_19arena_stl_allocatorIS1_EEE12emplace_backIJRNS0_13BufferManagerERKNS0_9MemoryTagERmEEEvDpOT_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !510
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 5                   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !443  ; 3 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !442  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 24                 ; 3 uses
  %i.ab = icmp ugt i64 %i.s, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb14TupleDataBlockENS0_19arena_stl_allocatorIS1_EEE12emplace_backIJRNS0_13BufferManagerERKNS0_9MemoryTagERmEEEvDpOT_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = sub nuw nsw i64 %i.s, %i.aa
  call void @_ZNSt6vectorIN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.ad)
  br label %_ZNSt6vectorIN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEE6resizeEm.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb14TupleDataBlockENS0_19arena_stl_allocatorIS1_EEE12emplace_backIJRNS0_13BufferManagerERKNS0_9MemoryTagERmEEEvDpOT_.exit
  %i.ae = icmp ult i64 %i.s, %i.aa
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEE6resizeEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.af, %bb.f ] ; 2 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.06.i.i.i) #31
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !444

_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %i.u, align 8, !tbaa !443
  br label %_ZNSt6vectorIN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEE6resizeEm.exit

_ZNSt6vectorIN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEE6resizeEm.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb18TupleDataAllocator18GetBaseHeapPointerERNS_17TupleDataPinStateERKNS_18TupleDataChunkPartE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb18TupleDataAllocator12PinHeapBlockERNS_17TupleDataPinStateERKNS_18TupleDataChunkPartE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !538
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !541
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TupleDataAllocator20InitializeChunkStateERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmbNS_12optional_ptrINS_19SortKeyPayloadStateELb1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(488) %3, i64 noundef %4, i1 noundef zeroext %5, i64 %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %4
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !414  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !618
  %i.g = icmp eq i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !550
  tail call void @_ZN6duckdb18TupleDataAllocator29ReleaseOrStoreHandlesInternalERNS_16TupleDataSegmentERNS_6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS4_EEEERNS_19buffer_handle_map_tERKNS_15ContinuousIdSetERNS3_INS_14TupleDataBlockELb0ENS5_ISE_EEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i8 noundef zeroext %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load i8, ptr %i.o, align 8, !tbaa !145, !range !175, !noundef !60
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.not = or i1 %i.g, %i.q
  br i1 %or.cond.i.not, label %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i8, ptr %i.k, align 8, !tbaa !550
  tail call void @_ZN6duckdb18TupleDataAllocator29ReleaseOrStoreHandlesInternalERNS_16TupleDataSegmentERNS_6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS4_EEEERNS_19buffer_handle_map_tERKNS_15ContinuousIdSetERNS3_INS_14TupleDataBlockELb0ENS5_ISE_EEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i8 noundef zeroext %i.u)
  br label %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit

_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit: ; preds = %bb.a, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 440 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !605  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 448 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !606  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb18TupleDataChunkPartEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb18TupleDataChunkPartEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !606
  br label %_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit

_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit: ; preds = %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit, %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb18TupleDataChunkPartEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.z = phi ptr [ %i.y, %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit ], [ %i.w, %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb18TupleDataChunkPartEES3_EvT_S5_RSaIT0_E.exit.i.i.i ]
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !618 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !532 ; 3 uses
  %i.ad = add i32 %i.ac, 1
  %i.ae = icmp ult i32 %i.aa, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 456 ; 2 uses
  %i.ah = zext i32 %i.aa to i64
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !608
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit, %_ZN6duckdb6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS3_EE5clearEv.exit
  tail call void @_ZN6duckdb18TupleDataAllocator28InitializeChunkStateInternalERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmbbbRNS_6vectorISt17reference_wrapperINS_18TupleDataChunkPartEELb0ESaIS8_EEENS_12optional_ptrINS_19SortKeyPayloadStateELb1EEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(488) %3, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext %5, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 %6)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !634
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.al = ptrtoint ptr %i.aj to i64
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !657
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit
  %.pre2627 = phi i32 [ %i.ac, %.lr.ph ], [ %.pre2628, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 2 uses
  %i.am = phi i32 [ %i.ac, %.lr.ph ], [ %i.bw, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ]
  %i.an = phi ptr [ %i.w, %.lr.ph ], [ %i.bx, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 8 uses
  %i.ao = phi ptr [ %.pre, %.lr.ph ], [ %i.by, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 5 uses
  %i.ap = phi ptr [ %i.z, %.lr.ph ], [ %i.bz, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 2 uses
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !533
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !534 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !609
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.x, align 8, !tbaa !606
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i23)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #29 ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store ptr %i.as, ptr %i.bf, align 8, !tbaa !609
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bg = ptrtoaddr ptr %i.be to i64
  %7 = add i64 %i.au, -8
  %8 = sub i64 %7, %i.av                          ; 2 uses
  %i.bh = lshr i64 %8, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.bj = sub i64 %i.av, %i.bg
  %diff.check = icmp ugt i64 %i.bj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bi, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.be, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.an, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bn ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.an, i64 %i.bn ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.bo = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !661, !noalias !658
  %wide.load37 = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !661, !noalias !658
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !658, !noalias !661
  store <2 x i64> %wide.load37, ptr %i.bp, align 8, !alias.scope !658, !noalias !661
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !663

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.i.preheader39:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !661, !noalias !658
  store i64 %i.br, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !658, !noalias !661
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !664

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bl, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #30
  %.pre26.pre = load i32, ptr %i.ab, align 4, !tbaa !532
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %.pre26 = phi i32 [ %.pre26.pre, %bb.g ], [ %.pre2627, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i ] ; 2 uses
  store ptr %i.be, ptr %i.v, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.x, align 8, !tbaa !606
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  store ptr %i.bv, ptr %i.ag, align 8, !tbaa !608
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.pre2628 = phi i32 [ %.pre2627, %bb.d ], [ %.pre26, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bw = phi i32 [ %i.am, %bb.d ], [ %.pre26, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %i.bx = phi ptr [ %i.an, %bb.d ], [ %i.be, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.by = phi ptr [ %i.ao, %bb.d ], [ %i.bv, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bz = phi ptr [ %i.at, %bb.d ], [ %i.bu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = add i32 %i.bw, 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp samesign ult i64 %indvars.iv.next, %i.cb
  br i1 %i.cc, label %bb.c, label %._crit_edge, !llvm.loop !665
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17SortKeySetPayloadEPKPhmmRKNS_19SortKeyPayloadStateE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !666
  switch i8 %i.b, label %bb.j [
    i8 6, label %bb.b
    i8 7, label %bb.d
    i8 8, label %bb.f
    i8 9, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !669, !nonnull !60, !align !61 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPNS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrISt5mutexLb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !670  ; 5 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %1
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !284
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_ZN6duckdb26TemplatedSortKeySetPayloadILNS_11SortKeyTypeE6EEEvPKPhmmRNS_19TupleDataChunkStateE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.q = add i64 %2, %1                           ; 2 uses
  %i.r = icmp ult i64 %1, %i.q
  br i1 %i.r, label %.lr.ph.i.preheader, label %_ZN6duckdb26TemplatedSortKeySetPayloadILNS_11SortKeyTypeE6EEEvPKPhmmRNS_19TupleDataChunkStateE.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.s = add i64 %2, -1
  %xtraiter86 = and i64 %2, 3                     ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.014.i.prol = phi i64 [ %i.y, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter88 = phi i64 [ %prol.iter88.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014.i.prol
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !671
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.prol
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !284
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !46
  %i.y = add nuw i64 %.014.i.prol, 1              ; 2 uses
  %prol.iter88.next = add i64 %prol.iter88, 1     ; 2 uses
  %prol.iter88.cmp.not = icmp eq i64 %prol.iter88.next, %xtraiter86
  br i1 %prol.iter88.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !673

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.014.i.unr = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %i.z = icmp ult i64 %i.s, 3
  br i1 %i.z, label %_ZN6duckdb26TemplatedSortKeySetPayloadILNS_11SortKeyTypeE6EEEvPKPhmmRNS_19TupleDataChunkStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.014.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !671
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !284
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !46
  %i.af = add nuw i64 %.014.i, 1                  ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !671
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !284
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !46
  %i.al = add nuw i64 %.014.i, 2                  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !671
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !284
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !46
  %i.ar = add nuw i64 %.014.i, 3                  ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !671
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !284
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !46
  %i.ax = add nuw i64 %.014.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ax, %i.q
  br i1 %exitcond.not.i.3, label %_ZN6duckdb26TemplatedSortKeySetPayloadILNS_11SortKeyTypeE6EEEvPKPhmmRNS_19TupleDataChunkStateE.exit, label %.lr.ph.i, !llvm.loop !674

bb.d:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr %3, align 8, !tbaa !669, !nonnull !60, !align !61 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPNS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !176 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 360 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrISt5mutexLb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !670 ; 5 uses
  %i.be = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #31 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb19TupleDataCollection20InitializeChunkStateERNS_19TupleDataChunkStateERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_ImLb1ESaImEEE:bb.a
_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !819  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !820  ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i25, label %_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i27 = phi ptr [ %i.ao, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.t, %_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i.i.i27, align 8, !tbaa !821 ; 3 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb11VectorCacheEEclEPS1_.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.z, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !43
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31, !inline_history !822
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31, !inline_history !822
  br label %_ZNKSt14default_deleteIN6duckdb11VectorCacheEEclEPS1_.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.h ], [ %i.am, %bb.i ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.j, label %_ZNKSt14default_deleteIN6duckdb11VectorCacheEEclEPS1_.exit.i.i.i.i.i.i.i, !prof !48

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31
  br label %_ZNKSt14default_deleteIN6duckdb11VectorCacheEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb11VectorCacheEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11VectorCacheEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.ao, %i.v
  br i1 %.not.i.i.i.i.i29, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i26, !llvm.loop !823

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.t, ptr %i.u, align 8, !tbaa !820
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ap = load ptr, ptr %2, align 8, !tbaa !90    ; 3 uses
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !90  ; 3 uses
  %.not88 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !449
  %.pre103 = load ptr, ptr %i.c, align 8, !tbaa !448
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  %i.at = phi ptr [ %.pre103, %._crit_edge.loopexit ], [ %i.aq, %_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit ]
  %i.au = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ap, %_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !449 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.au, ptr %i.av, align 8, !tbaa !449
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !448
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !803
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !803
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #30
  br label %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit

_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit:        ; preds = %._crit_edge, %bb.k
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  %.sroa.064.089 = phi ptr [ %i.ap, %.lr.ph ], [ %i.gv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit ] ; 2 uses
  %i.bb = load i64, ptr %.sroa.064.089, align 8, !tbaa !92
  %i.bc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bb) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 108, ptr %i.a, align 1, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !49
  %i.bd = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bd, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN6duckdb9ArrayType13ConvertToListERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.n unwind label %bb.aa

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.bf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %.noexc unwind label %bb.aa    ; 4 uses

.noexc:                                           ; preds = %bb.n
  invoke void @_ZN6duckdb11VectorCacheC1ERNS_9AllocatorERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
          to label %bb.p unwind label %bb.o, !noalias !824

bb.o:                                             ; preds = %.noexc
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #30, !noalias !824
  br label %.body

bb.p:                                             ; preds = %.noexc
  store ptr %i.bf, ptr %5, align 8, !tbaa !821, !alias.scope !824
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !820 ; 6 uses
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !827
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  %i.bj = ptrtoint ptr %i.bf to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !821
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bk, ptr %i.u, align 8, !tbaa !820
  br label %_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !819 ; 10 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #29
          to label %.noexc32 unwind label %.loopexit ; 10 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i64 %i.bj, ptr %i.bx, align 8, !tbaa !821
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc32
  %7 = add i64 %i.bm, -8
  %8 = sub i64 %7, %i.bn                          ; 2 uses
  %i.by = lshr i64 %8, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %8, 56
  br i1 %min.iters.check178, label %.lr.ph.i.i.i.i.i.i.i.preheader242, label %vector.memcheck169

vector.memcheck169:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep170 = getelementptr i8, ptr %i.bw, i64 8
  %i.ca = add i64 %i.bm, -8
  %i.cb = sub i64 %i.ca, %i.bn
  %i.cc = and i64 %i.cb, -8                       ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.cc
  %scevgep172 = getelementptr i8, ptr %i.bl, i64 8
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.cc
  %bound0174 = icmp ult ptr %i.bw, %scevgep173
  %bound1175 = icmp ult ptr %i.bl, %scevgep171
  %found.conflict176 = and i1 %bound0174, %bound1175
  br i1 %found.conflict176, label %.lr.ph.i.i.i.i.i.i.i.preheader242, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck169
  %n.vec181 = and i64 %i.bz, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec181, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bw, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bl, i64 %i.cd
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %i.cg = shl i64 %index183, 3                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.bw, i64 %i.cg ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.bl, i64 %i.cg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.ch = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load186 = load <2 x i64>, ptr %next.gep185, align 8, !tbaa !821, !alias.scope !833, !noalias !828
  %wide.load187 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !821, !alias.scope !833, !noalias !828
  %i.ci = getelementptr i8, ptr %next.gep184, i64 16
  store <2 x i64> %wide.load186, ptr %next.gep184, align 8, !tbaa !821, !alias.scope !836, !noalias !833
  store <2 x i64> %wide.load187, ptr %i.ci, align 8, !tbaa !821, !alias.scope !836, !noalias !833
  %i.cj = getelementptr i8, ptr %next.gep185, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep185, align 8, !tbaa !821, !alias.scope !833, !noalias !828
  store <2 x ptr> splat (ptr null), ptr %i.cj, align 8, !tbaa !821, !alias.scope !833, !noalias !828
  %index.next188 = add nuw i64 %index183, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.ck, label %middle.block189, label %vector.body182, !llvm.loop !838

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %i.bz, %n.vec181
  br i1 %cmp.n190, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader242

.lr.ph.i.i.i.i.i.i.i.preheader242:                ; preds = %vector.memcheck169, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block189
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck169 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block189 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %vector.memcheck169 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block189 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader242, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader242 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader242 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !821, !alias.scope !831, !noalias !828
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !821, !alias.scope !828, !noalias !831
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !821, !alias.scope !831, !noalias !828
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %i.cm, %i.bh
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !839

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block189, %.noexc32
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.noexc32 ], [ %i.ce, %middle.block189 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.bw, ptr %i.s, align 8, !tbaa !819
  store ptr %i.co, ptr %i.u, align 8, !tbaa !820
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cp, ptr %i.as, align 8, !tbaa !827
  br label %_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit
  %i.cr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb10unique_ptrINS_11VectorCacheESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %i.cs = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29
          to label %.noexc35 unwind label %bb.ac  ; 4 uses

.noexc35:                                         ; preds = %bb.u
  invoke void @_ZN6duckdb6VectorC1ERKNS_11VectorCacheE(ptr noundef nonnull align 8 dereferenceable(104) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %bb.w unwind label %bb.v, !noalias !840

bb.v:                                             ; preds = %.noexc35
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cs) #30, !noalias !840
  br label %.body36

bb.w:                                             ; preds = %.noexc35
  store ptr %i.cs, ptr %6, align 8, !tbaa !439, !alias.scope !840
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !817 ; 6 uses
  %i.cv = load ptr, ptr %i.ar, align 8, !tbaa !843
  %.not.i.i38 = icmp eq ptr %i.cu, %i.cv
  %i.cw = ptrtoint ptr %i.cs to i64               ; 2 uses
  br i1 %.not.i.i38, label %bb.x, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.w
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !439
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cx, ptr %i.o, align 8, !tbaa !817
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !816 ; 10 uses
  %i.cz = ptrtoint ptr %i.cu to i64               ; 3 uses
  %i.da = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 3 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.y, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
          to label %.noexc48 unwind label %.loopexit.split-lp71

.noexc48:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.dd = ashr exact i64 %i.db, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i39 = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i.i39, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 1152921504606846975)
  %i.dh = select i1 %i.df, i64 1152921504606846975, i64 %i.dg ; 3 uses
  %.not.i.i.i.i40 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i40)
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #29
          to label %.noexc49 unwind label %.loopexit70 ; 10 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db
  store i64 %i.cw, ptr %i.dk, align 8, !tbaa !439
  %.not10.i.i.i.i.i.i.i41 = icmp eq ptr %i.cy, %i.cu
  br i1 %.not10.i.i.i.i.i.i.i41, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %.noexc49
  %9 = add i64 %i.cz, -8
  %10 = sub i64 %9, %i.da                         ; 2 uses
  %i.dl = lshr i64 %10, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i42.preheader241, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader
  %scevgep = getelementptr i8, ptr %i.dj, i64 8
  %i.dn = add i64 %i.cz, -8
  %i.do = sub i64 %i.dn, %i.da
  %i.dp = and i64 %i.do, -8                       ; 2 uses
  %scevgep163 = getelementptr i8, ptr %scevgep, i64 %i.dp
  %scevgep164 = getelementptr i8, ptr %i.cy, i64 8
  %scevgep165 = getelementptr i8, ptr %scevgep164, i64 %i.dp
  %bound0 = icmp ult ptr %i.dj, %scevgep165
  %bound1 = icmp ult ptr %i.cy, %scevgep163
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i42.preheader241, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dq = shl i64 %n.vec, 3                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dj, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cy, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dj, i64 %i.dt ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.cy, i64 %i.dt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.du = getelementptr i8, ptr %next.gep166, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep166, align 8, !tbaa !439, !alias.scope !849, !noalias !844
  %wide.load167 = load <2 x i64>, ptr %i.du, align 8, !tbaa !439, !alias.scope !849, !noalias !844
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !439, !alias.scope !852, !noalias !849
  store <2 x i64> %wide.load167, ptr %i.dv, align 8, !tbaa !439, !alias.scope !852, !noalias !849
  %i.dw = getelementptr i8, ptr %next.gep166, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep166, align 8, !tbaa !439, !alias.scope !849, !noalias !844
  store <2 x ptr> splat (ptr null), ptr %i.dw, align 8, !tbaa !439, !alias.scope !849, !noalias !844
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !854

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i42.preheader241

.lr.ph.i.i.i.i.i.i.i42.preheader241:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i42.preheader, %middle.block
  %.012.i.i.i.i.i.i.i43.ph = phi ptr [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.dr, %middle.block ]
  %.0911.i.i.i.i.i.i.i44.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader241, %.lr.ph.i.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i.i43 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.012.i.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader241 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i44 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader241 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.dy = load i64, ptr %.0911.i.i.i.i.i.i.i44, align 8, !tbaa !439, !alias.scope !847, !noalias !844
  store i64 %i.dy, ptr %.012.i.i.i.i.i.i.i43, align 8, !tbaa !439, !alias.scope !844, !noalias !847
  store ptr null, ptr %.0911.i.i.i.i.i.i.i44, align 8, !tbaa !439, !alias.scope !847, !noalias !844
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i44, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i45 = icmp eq ptr %i.dz, %i.cu
  br i1 %.not.i.i.i.i.i.i.i45, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i42, !llvm.loop !855

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i42, %middle.block, %.noexc49
  %.0.lcssa.i.i.i.i.i.i.i46 = phi ptr [ %i.dj, %.noexc49 ], [ %i.dr, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i42 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i46, i64 8
  %.not.i23.i.i.i47 = icmp eq ptr %i.cy, null
  br i1 %.not.i23.i.i.i47, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.z
  store ptr %i.dj, ptr %i.m, align 8, !tbaa !816
  store ptr %i.eb, ptr %i.o, align 8, !tbaa !817
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.ec, ptr %i.ar, align 8, !tbaa !843
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

bb.aa:                                            ; preds = %bb.n, %bb.m
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  br label %.body

.body:                                            ; preds = %bb.aa, %bb.o, %bb.ab
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ab ], [ %i.ed, %bb.aa ], [ %i.bg, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ae

bb.ac:                                            ; preds = %bb.u, %bb.t, %_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.loopexit70:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp71:                             ; preds = %bb.y
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp71, %.loopexit70
  %lpad.phi74 = phi { ptr, i32 } [ %lpad.loopexit72, %.loopexit70 ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp71 ]
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #31
  br label %.body36

.body36:                                          ; preds = %bb.ac, %bb.v, %bb.ad
  %.pn22 = phi { ptr, i32 } [ %lpad.phi74, %bb.ad ], [ %i.ee, %bb.ac ], [ %i.ct, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ae

bb.ae:                                            ; preds = %.body36, %.body
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %.body36 ], [ %.pn, %.body ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn22.pn

bb.af:                                            ; preds = %bb.l
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !817 ; 6 uses
  %i.eg = load ptr, ptr %i.ar, align 8, !tbaa !843
  %.not.i51 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i51, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr %i.ef, align 8, !tbaa !437
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eh, ptr %i.o, align 8, !tbaa !817
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.ei = load ptr, ptr %i.m, align 8, !tbaa !816 ; 10 uses
  %i.ej = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.ai, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i.i, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i.i52)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #29 ; 10 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el
  store ptr null, ptr %i.eu, align 8, !tbaa !437
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.ef
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %11 = add i64 %i.ej, -8
  %12 = sub i64 %11, %i.ek                        ; 2 uses
  %i.ev = lshr i64 %12, 3
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check226 = icmp ult i64 %12, 56
  br i1 %min.iters.check226, label %.lr.ph.i.i.i.i.i.i.preheader244, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep218 = getelementptr i8, ptr %i.et, i64 8
  %i.ex = add i64 %i.ej, -8
  %i.ey = sub i64 %i.ex, %i.ek
  %i.ez = and i64 %i.ey, -8                       ; 2 uses
  %scevgep219 = getelementptr i8, ptr %scevgep218, i64 %i.ez
  %scevgep220 = getelementptr i8, ptr %i.ei, i64 8
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.ez
  %bound0222 = icmp ult ptr %i.et, %scevgep221
  %bound1223 = icmp ult ptr %i.ei, %scevgep219
  %found.conflict224 = and i1 %bound0222, %bound1223
  br i1 %found.conflict224, label %.lr.ph.i.i.i.i.i.i.preheader244, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck217
  %n.vec229 = and i64 %i.ew, 4611686018427387900  ; 3 uses
  %i.fa = shl i64 %n.vec229, 3                    ; 2 uses
  %i.fb = getelementptr i8, ptr %i.et, i64 %i.fa  ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ei, i64 %i.fa
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph227
  %index231 = phi i64 [ 0, %vector.ph227 ], [ %index.next236, %vector.body230 ] ; 2 uses
  %i.fd = shl i64 %index231, 3                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.et, i64 %i.fd ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.ei, i64 %i.fd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.fe = getelementptr i8, ptr %next.gep233, i64 16
  %wide.load234 = load <2 x i64>, ptr %next.gep233, align 8, !tbaa !439, !alias.scope !861, !noalias !856
  %wide.load235 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !439, !alias.scope !861, !noalias !856
  %i.ff = getelementptr i8, ptr %next.gep232, i64 16
  store <2 x i64> %wide.load234, ptr %next.gep232, align 8, !tbaa !439, !alias.scope !864, !noalias !861
  store <2 x i64> %wide.load235, ptr %i.ff, align 8, !tbaa !439, !alias.scope !864, !noalias !861
  %i.fg = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep233, align 8, !tbaa !439, !alias.scope !861, !noalias !856
  store <2 x ptr> splat (ptr null), ptr %i.fg, align 8, !tbaa !439, !alias.scope !861, !noalias !856
  %index.next236 = add nuw i64 %index231, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.fh, label %middle.block237, label %vector.body230, !llvm.loop !866

middle.block237:                                  ; preds = %vector.body230
  %cmp.n238 = icmp eq i64 %i.ew, %n.vec229
  br i1 %cmp.n238, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.preheader244

.lr.ph.i.i.i.i.i.i.preheader244:                  ; preds = %vector.memcheck217, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block237
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.et, %vector.memcheck217 ], [ %i.et, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fb, %middle.block237 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ei, %vector.memcheck217 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fc, %middle.block237 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader244, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader244 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader244 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.fi = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !859, !noalias !856
  store i64 %i.fi, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !856, !noalias !859
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !859, !noalias !856
  %i.fj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i53 = icmp eq ptr %i.fj, %i.ef
  br i1 %.not.i.i.i.i.i.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !867

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block237, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.et, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fb, %middle.block237 ], [ %i.fk, %.lr.ph.i.i.i.i.i.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ei) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.et, ptr %i.m, align 8, !tbaa !816
  store ptr %i.fl, ptr %i.o, align 8, !tbaa !817
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fm, ptr %i.ar, align 8, !tbaa !843
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %bb.ag, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.fn = load ptr, ptr %i.u, align 8, !tbaa !820 ; 6 uses
  %i.fo = load ptr, ptr %i.as, align 8, !tbaa !827
  %.not.i54 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i54, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  store ptr null, ptr %i.fn, align 8, !tbaa !868
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fp, ptr %i.u, align 8, !tbaa !820
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  %i.fq = load ptr, ptr %i.s, align 8, !tbaa !819 ; 10 uses
  %i.fr = ptrtoint ptr %i.fn to i64               ; 3 uses
  %i.fs = ptrtoint ptr %i.fq to i64               ; 3 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.am, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.fv = ashr exact i64 %i.ft, 3                 ; 3 uses
  %.sroa.speculated.i.i.i55 = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i55, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 1152921504606846975)
  %i.fz = select i1 %i.fx, i64 1152921504606846975, i64 %i.fy ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i56)
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #29 ; 10 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ft
  store ptr null, ptr %i.gc, align 8, !tbaa !868
  %.not10.i.i.i.i.i.i57 = icmp eq ptr %i.fq, %i.fn
  br i1 %.not10.i.i.i.i.i.i57, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i.i58.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %13 = add i64 %i.fr, -8
  %14 = sub i64 %13, %i.fs                        ; 2 uses
  %i.gd = lshr i64 %14, 3
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %min.iters.check202 = icmp ult i64 %14, 56
  br i1 %min.iters.check202, label %.lr.ph.i.i.i.i.i.i58.preheader243, label %vector.memcheck193

vector.memcheck193:                               ; preds = %.lr.ph.i.i.i.i.i.i58.preheader
  %scevgep194 = getelementptr i8, ptr %i.gb, i64 8
  %i.gf = add i64 %i.fr, -8
  %i.gg = sub i64 %i.gf, %i.fs
  %i.gh = and i64 %i.gg, -8                       ; 2 uses
  %scevgep195 = getelementptr i8, ptr %scevgep194, i64 %i.gh
  %scevgep196 = getelementptr i8, ptr %i.fq, i64 8
  %scevgep197 = getelementptr i8, ptr %scevgep196, i64 %i.gh
  %bound0198 = icmp ult ptr %i.gb, %scevgep197
  %bound1199 = icmp ult ptr %i.fq, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  br i1 %found.conflict200, label %.lr.ph.i.i.i.i.i.i58.preheader243, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck193
  %n.vec205 = and i64 %i.ge, 4611686018427387900  ; 3 uses
  %i.gi = shl i64 %n.vec205, 3                    ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gb, i64 %i.gi  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fq, i64 %i.gi
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph203
  %index207 = phi i64 [ 0, %vector.ph203 ], [ %index.next212, %vector.body206 ] ; 2 uses
  %i.gl = shl i64 %index207, 3                    ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.gb, i64 %i.gl ; 2 uses
  %next.gep209 = getelementptr i8, ptr %i.fq, i64 %i.gl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.gm = getelementptr i8, ptr %next.gep209, i64 16
  %wide.load210 = load <2 x i64>, ptr %next.gep209, align 8, !tbaa !821, !alias.scope !875, !noalias !870
  %wide.load211 = load <2 x i64>, ptr %i.gm, align 8, !tbaa !821, !alias.scope !875, !noalias !870
  %i.gn = getelementptr i8, ptr %next.gep208, i64 16
  store <2 x i64> %wide.load210, ptr %next.gep208, align 8, !tbaa !821, !alias.scope !878, !noalias !875
  store <2 x i64> %wide.load211, ptr %i.gn, align 8, !tbaa !821, !alias.scope !878, !noalias !875
  %i.go = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep209, align 8, !tbaa !821, !alias.scope !875, !noalias !870
  store <2 x ptr> splat (ptr null), ptr %i.go, align 8, !tbaa !821, !alias.scope !875, !noalias !870
  %index.next212 = add nuw i64 %index207, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.gp, label %middle.block213, label %vector.body206, !llvm.loop !880

middle.block213:                                  ; preds = %vector.body206
  %cmp.n214 = icmp eq i64 %i.ge, %n.vec205
  br i1 %cmp.n214, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i58.preheader243

.lr.ph.i.i.i.i.i.i58.preheader243:                ; preds = %vector.memcheck193, %.lr.ph.i.i.i.i.i.i58.preheader, %middle.block213
  %.012.i.i.i.i.i.i59.ph = phi ptr [ %i.gb, %vector.memcheck193 ], [ %i.gb, %.lr.ph.i.i.i.i.i.i58.preheader ], [ %i.gj, %middle.block213 ]
  %.0911.i.i.i.i.i.i60.ph = phi ptr [ %i.fq, %vector.memcheck193 ], [ %i.fq, %.lr.ph.i.i.i.i.i.i58.preheader ], [ %i.gk, %middle.block213 ]
  br label %.lr.ph.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i58:                             ; preds = %.lr.ph.i.i.i.i.i.i58.preheader243, %.lr.ph.i.i.i.i.i.i58
  %.012.i.i.i.i.i.i59 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i58 ], [ %.012.i.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i.i58.preheader243 ] ; 2 uses
  %.0911.i.i.i.i.i.i60 = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i.i58 ], [ %.0911.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i58.preheader243 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.gq = load i64, ptr %.0911.i.i.i.i.i.i60, align 8, !tbaa !821, !alias.scope !873, !noalias !870
  store i64 %i.gq, ptr %.012.i.i.i.i.i.i59, align 8, !tbaa !821, !alias.scope !870, !noalias !873
  store ptr null, ptr %.0911.i.i.i.i.i.i60, align 8, !tbaa !821, !alias.scope !873, !noalias !870
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i60, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i59, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i61 = icmp eq ptr %i.gr, %i.fn
  br i1 %.not.i.i.i.i.i.i61, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i58, !llvm.loop !881

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i.i58, %middle.block213, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i62 = phi ptr [ %i.gb, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gj, %middle.block213 ], [ %i.gs, %.lr.ph.i.i.i.i.i.i58 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i62, i64 8
  %.not.i22.i.i63 = icmp eq ptr %i.fq, null
  br i1 %.not.i22.i.i63, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.gb, ptr %i.s, align 8, !tbaa !819
  store ptr %i.gt, ptr %i.u, align 8, !tbaa !820
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.gu, ptr %i.as, align 8, !tbaa !827
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.ak, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.064.089, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gv, %i.aq
  br i1 %.not, label %._crit_edge.loopexit, label %bb.l
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL22InitializeVectorFormatERNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EEERKNS0_INS_11LogicalTypeELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.6", align 8  ; 12 uses
  %3 = alloca %"class.duckdb::vector.6", align 8  ; 12 uses
  %4 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %5 = alloca %"class.duckdb::vector.6", align 8  ; 12 uses
  %6 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.c = load ptr, ptr %1, align 8, !tbaa !282
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !882  ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !883    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 152                 ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p)
  br label %_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [152 x i8], ptr %i.j, i64 %i.g ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  tail call void @_ZN6duckdb21TupleDataVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.05.i.i.i.i) #31, !inline_history !884
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb21TupleDataVectorFormatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !885

_ZSt8_DestroyIPN6duckdb21TupleDataVectorFormatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !882
  br label %_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6duckdb21TupleDataVectorFormatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.u = load ptr, ptr %1, align 8, !tbaa !282
  %.not117 = icmp eq ptr %i.t, %i.u
  br i1 %.not117, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EE6resizeEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  br label %bb.e

._crit_edge116:                                   ; preds = %bb.al, %_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EE6resizeEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph115, %bb.al
  %.0114 = phi i64 [ 0, %.lr.ph115 ], [ %i.cp, %bb.al ] ; 5 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0114) ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !698
  switch i8 %i.ad, label %bb.al [
    i8 24, label %bb.f
    i8 23, label %bb.p
    i8 29, label %bb.aa
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.ab) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !886 ; 3 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !888 ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 56                ; 3 uses
  %i.am = icmp ugt i64 %i.al, 384307168202282325
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not159 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not159, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.an = mul nuw nsw i64 %i.al, 24
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #29
          to label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.loopexit98 ; 3 uses

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE11_M_allocateEm.exit.i
end_hunk_3
begin_hunk_4_@_ZN6duckdb10FastMemcpyEPvPKvm:bb.a
  br label %bb.iy

bb.ih:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(241) %0, ptr noundef nonnull align 1 dereferenceable(241) %1, i64 241, i1 false)
  br label %bb.iy

bb.ii:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(242) %0, ptr noundef nonnull align 1 dereferenceable(242) %1, i64 242, i1 false)
  br label %bb.iy

bb.ij:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(243) %0, ptr noundef nonnull align 1 dereferenceable(243) %1, i64 243, i1 false)
  br label %bb.iy

bb.ik:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(244) %0, ptr noundef nonnull align 1 dereferenceable(244) %1, i64 244, i1 false)
  br label %bb.iy

bb.il:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(245) %0, ptr noundef nonnull align 1 dereferenceable(245) %1, i64 245, i1 false)
  br label %bb.iy

bb.im:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(246) %0, ptr noundef nonnull align 1 dereferenceable(246) %1, i64 246, i1 false)
  br label %bb.iy

bb.in:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(247) %0, ptr noundef nonnull align 1 dereferenceable(247) %1, i64 247, i1 false)
  br label %bb.iy

bb.io:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(248) %0, ptr noundef nonnull align 1 dereferenceable(248) %1, i64 248, i1 false)
  br label %bb.iy

bb.ip:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(249) %0, ptr noundef nonnull align 1 dereferenceable(249) %1, i64 249, i1 false)
  br label %bb.iy

bb.iq:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(250) %0, ptr noundef nonnull align 1 dereferenceable(250) %1, i64 250, i1 false)
  br label %bb.iy

bb.ir:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(251) %0, ptr noundef nonnull align 1 dereferenceable(251) %1, i64 251, i1 false)
  br label %bb.iy

bb.is:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(252) %0, ptr noundef nonnull align 1 dereferenceable(252) %1, i64 252, i1 false)
  br label %bb.iy

bb.it:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(253) %0, ptr noundef nonnull align 1 dereferenceable(253) %1, i64 253, i1 false)
  br label %bb.iy

bb.iu:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(254) %0, ptr noundef nonnull align 1 dereferenceable(254) %1, i64 254, i1 false)
  br label %bb.iy

bb.iv:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %0, ptr noundef nonnull align 1 dereferenceable(255) %1, i64 255, i1 false)
  br label %bb.iy

bb.iw:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, ptr noundef nonnull align 1 dereferenceable(256) %1, i64 256, i1 false)
  br label %bb.iy

bb.ix:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.iy

bb.iy:                                            ; preds = %bb.a, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(488) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !241, !nonnull !60, !align !61 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.l = load i64, ptr %i.k, align 8, !tbaa !283  ; 3 uses
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod26 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.018.epil.init
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.018.epil.init
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !284
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  %.0.copyload.i.epil = load i64, ptr %i.q, align 1 ; 2 uses
  store i64 %.0.copyload.i.epil, ptr %i.o, align 8, !tbaa !92
  %.not.epil = icmp eq i64 %.0.copyload.i.epil, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.r = add i64 %.epil.init, 1
  %i.s = trunc i64 %.018.epil.init to i32
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.epil.init
  store i32 %i.s, ptr %i.u, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.lr.ph.epil.preheader, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %bb.b ], [ %.epil.init, %.lr.ph.epil.preheader ]
  store i64 %.lcssa, ptr %i.a, align 8
  call void @_ZN6duckdb18TupleDataAllocator16FindHeapPointersERNS_19TupleDataChunkStateERNS_15SelectionVectorERmRKNS_15TupleDataLayoutEm(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(217) %i.j, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %.018 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ap, %bb.e ] ; 5 uses
  %i.v = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ao, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.018
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.018
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !284
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.l
  %.0.copyload.i = load i64, ptr %i.z, align 1    ; 2 uses
  store i64 %.0.copyload.i, ptr %i.x, align 8, !tbaa !92
  %.not = icmp eq i64 %.0.copyload.i, 0
  br i1 %.not, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.aa = add i64 %i.v, 1
  %i.ab = trunc i64 %.018 to i32
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.v
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !3
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c, %.lr.ph
  %i.ae = phi i64 [ %i.aa, %bb.c ], [ %i.v, %.lr.ph ] ; 3 uses
  %i.af = or disjoint i64 %.018, 1                ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.af
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !284
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l
  %.0.copyload.i.1 = load i64, ptr %i.aj, align 1 ; 2 uses
  store i64 %.0.copyload.i.1, ptr %i.ah, align 8, !tbaa !92
  %.not.1 = icmp eq i64 %.0.copyload.i.1, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.ak = add i64 %i.ae, 1
  %i.al = trunc i64 %i.af to i32
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae
  store i32 %i.al, ptr %i.an, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %i.ae, %.lr.ph.1 ] ; 3 uses
  %i.ap = add nuw i64 %.018, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !918
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !354
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !244  ; 8 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.n = sub i64 %i.m, %i.g
  %i.o = load ptr, ptr %0, align 8, !tbaa !777
  tail call void @_ZN6duckdb14ArenaAllocator9AlignNextEv(ptr noundef nonnull align 8 dereferenceable(72) %i.o)
  %i.p = load ptr, ptr %0, align 8, !tbaa !777    ; 2 uses
  %i.q = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !778  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !780  ; 2 uses
  %i.v = add i64 %i.u, %i.q                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !789
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE11_M_allocateEm.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 noundef %i.q)
  %.pre.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !778 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 24
  %.pre4.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !780 ; 2 uses
  %.pre5.i.i.i.i.i = add i64 %.pre4.i.i.i.i.i, %i.q
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE11_M_allocateEm.exit.i: ; preds = %bb.e, %bb.f
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre5.i.i.i.i.i, %bb.f ], [ %i.v, %bb.e ]
  %i.z = phi i64 [ %.pre4.i.i.i.i.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i.i.i.i.i, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.z   ; 8 uses
  store i64 %.pre-phi.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !780
  %.not13.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not13.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE20_M_allocate_and_copyISt13move_iteratorIPS5_EEESB_mT_SD_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE11_M_allocateEm.exit.i
  %i.af = add i64 %i.m, -8
  %i.ag = sub i64 %i.af, %i.g                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 200
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.g
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.z
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.an, i64 8
  %i.ao = getelementptr i8, ptr %i.e, i64 %i.al
  %scevgep17 = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ae, %scevgep17
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.e, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.e, i64 %i.as ; 4 uses
  %i.at = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !tbaa !245, !alias.scope !919
  %wide.load19 = load <2 x i64>, ptr %i.at, align 8, !tbaa !245, !alias.scope !919
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !245, !alias.scope !922, !noalias !919
  store <2 x i64> %wide.load19, ptr %i.au, align 8, !tbaa !245, !alias.scope !922, !noalias !919
  %i.av = getelementptr i8, ptr %next.gep18, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !245, !alias.scope !919
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !245, !alias.scope !919
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !924

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE20_M_allocate_and_copyISt13move_iteratorIPS5_EEESB_mT_SD_.exit, label %.lr.ph.i.i.preheader21

.lr.ph.i.i.preheader21:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.015.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.preheader ], [ %i.aq, %middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader21, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader21 ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader21 ] ; 3 uses
  %i.ax = load i64, ptr %.sroa.010.014.i.i, align 8, !tbaa !245
  store i64 %i.ax, ptr %.015.i.i, align 8, !tbaa !245
  store ptr null, ptr %.sroa.010.014.i.i, align 8, !tbaa !245
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i11.i = icmp eq ptr %i.ay, %i.l
  br i1 %.not.i11.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE20_M_allocate_and_copyISt13move_iteratorIPS5_EEESB_mT_SD_.exit, label %.lr.ph.i.i, !llvm.loop !925

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE20_M_allocate_and_copyISt13move_iteratorIPS5_EEESB_mT_SD_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE11_M_allocateEm.exit.i
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !244 ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !243 ; 2 uses
  %.not5.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not5.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEEvT_S9_RT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE20_M_allocate_and_copyISt13move_iteratorIPS5_EEESB_mT_SD_.exit, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i
  %.06.i = phi ptr [ %i.bd, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i ], [ %i.ba, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE20_M_allocate_and_copyISt13move_iteratorIPS5_EEESB_mT_SD_.exit ] ; 2 uses
  %i.bc = load ptr, ptr %.06.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i8, label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @_ZN6duckdb16TupleDataSegmentD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.bc) #31
  br label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i

_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i: ; preds = %bb.g, %.lr.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEEvT_S9_RT0_.exit, label %.lr.ph.i, !llvm.loop !355

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEEvT_S9_RT0_.exit: ; preds = %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE20_M_allocate_and_copyISt13move_iteratorIPS5_EEESB_mT_SD_.exit
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !244
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.n
  store ptr %i.be, ptr %i.k, align 8, !tbaa !243
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %1
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !354
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEEvT_S9_RT0_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection10AddSegmentENS_10unique_ptrINS_16TupleDataSegmentENS_13arena_deleterIS2_EELb0EEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !92
  %i.e = load <2 x i64>, ptr %i.c, align 8, !tbaa !92
  %i.f = add <2 x i64> %i.e, %i.d
  store <2 x i64> %i.f, ptr %i.c, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !243  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !354
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.a to i64
  store i64 %i.k, ptr %i.h, align 8, !tbaa !245
  store ptr null, ptr %1, align 8, !tbaa !245
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !243
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE12emplace_backIJS5_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection7CombineENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN6duckdb19TupleDataCollection7CombineERS0_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !426    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EE13AssertNotNullEb.exit, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb19TupleDataCollection15InitializeChunkERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
end_hunk_4
begin_hunk_5_@_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_18TupleDataScanStateENS_22TupleDataPinPropertiesE:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit13

_ZNSt6vectorImSaImEED2Ev.exit13:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit13.loopexit.split-lp, %_ZNSt6vectorImSaImEED2Ev.exit13.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorImSaImEED2Ev.exit13.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorImSaImEED2Ev.exit13.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %.sroa.0.039, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorImSaImEED2Ev.exit15, label %_ZNSt6vectorImSaImEED2Ev.exit15.sink.split

_ZNSt6vectorImSaImEED2Ev.exit15.sink.split:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit13, %bb.j
  %.sink = phi ptr [ %i.ar, %bb.j ], [ %.sroa.0.039, %_ZNSt6vectorImSaImEED2Ev.exit13 ]
  %.pn29.ph = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %lpad.phi, %_ZNSt6vectorImSaImEED2Ev.exit13 ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit15

_ZNSt6vectorImSaImEED2Ev.exit15:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit15.sink.split, %bb.j, %_ZNSt6vectorImSaImEED2Ev.exit13
  %.pn29 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %lpad.phi, %_ZNSt6vectorImSaImEED2Ev.exit13 ], [ %.pn29.ph, %_ZNSt6vectorImSaImEED2Ev.exit15.sink.split ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_18TupleDataScanStateENS_6vectorImLb1ESaImEEENS_22TupleDataPinPropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, ptr nofree noundef captures(none) %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %class.anon, align 8                ; 4 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::unique_ptr.705", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::unique_ptr.104", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !431    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !432  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i.i, label %_ZN6duckdb19buffer_handle_map_t5clearEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #31
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !433

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !432
  br label %_ZN6duckdb19buffer_handle_map_t5clearEv.exit

_ZN6duckdb19buffer_handle_map_t5clearEv.exit:     ; preds = %bb.a, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !431  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !432  ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i.i27, label %_ZN6duckdb19buffer_handle_map_t5clearEv.exit32, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %_ZN6duckdb19buffer_handle_map_t5clearEv.exit, %.lr.ph.i.i.i.i.i.i28
  %.05.i.i.i.i.i.i29 = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i28 ], [ %i.h, %_ZN6duckdb19buffer_handle_map_t5clearEv.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i29, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #31
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i29, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i.i.i.i.i30, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i28, !llvm.loop !433

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i28
  store ptr %i.h, ptr %i.i, align 8, !tbaa !432
  br label %_ZN6duckdb19buffer_handle_map_t5clearEv.exit32

_ZN6duckdb19buffer_handle_map_t5clearEv.exit32:   ; preds = %_ZN6duckdb19buffer_handle_map_t5clearEv.exit, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i31
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %3, ptr %i.m, align 8, !tbaa !931
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %2, align 8, !tbaa !90     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 3 uses
  %.not92 = icmp eq ptr %i.o, %i.q
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb19buffer_handle_map_t5clearEv.exit32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 4 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !449
  %.pre107 = load ptr, ptr %i.p, align 8, !tbaa !448
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6duckdb19buffer_handle_map_t5clearEv.exit32
  %i.y = phi ptr [ %.pre107, %._crit_edge.loopexit ], [ %i.q, %_ZN6duckdb19buffer_handle_map_t5clearEv.exit32 ]
  %i.z = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.o, %_ZN6duckdb19buffer_handle_map_t5clearEv.exit32 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !449 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !449
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !448
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !803
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !803
  %.not.i.i.i.i.i.i33 = icmp eq ptr %i.ab, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i33, label %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #30
  br label %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit

_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit:        ; preds = %._crit_edge, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  %.sroa.068.093 = phi ptr [ %i.o, %.lr.ph ], [ %i.gb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit ] ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !241, !nonnull !60, !align !61
  %i.ah = load i64, ptr %.sroa.068.093, align 8, !tbaa !92
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.ah) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 108, ptr %i.a, align 1, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.a, ptr %4, align 8, !tbaa !49
  %i.aj = call noundef zeroext i1 @_ZN6duckdb11TypeVisitor8ContainsIZNS0_8ContainsERKNS_11LogicalTypeENS_13LogicalTypeIdEEUlS4_E_EEbS4_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.aj, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN6duckdb9ArrayType13ConvertToListERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.al = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %.noexc unwind label %bb.r     ; 4 uses

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN6duckdb11VectorCacheC1ERNS_9AllocatorERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 2048)
          to label %bb.g unwind label %bb.f, !noalias !932

bb.f:                                             ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.al) #30, !noalias !932
  br label %.body

bb.g:                                             ; preds = %.noexc
  store ptr %i.al, ptr %6, align 8, !tbaa !821, !alias.scope !932
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !820 ; 6 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !827
  %.not.i.i = icmp eq ptr %i.an, %i.ao
  %i.ap = ptrtoint ptr %i.al to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.g
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !821
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !820
  br label %_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !819 ; 10 uses
  %i.as = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.ba, 0
  call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #29
          to label %.noexc36 unwind label %.loopexit ; 10 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  store i64 %i.ap, ptr %i.bd, align 8, !tbaa !821
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc36
  %8 = add i64 %i.as, -8
  %9 = sub i64 %8, %i.at                          ; 2 uses
  %i.be = lshr i64 %9, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check177 = icmp ult i64 %9, 56
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i.i.i.preheader241, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep169 = getelementptr i8, ptr %i.bc, i64 8
  %i.bg = add i64 %i.as, -8
  %i.bh = sub i64 %i.bg, %i.at
  %i.bi = and i64 %i.bh, -8                       ; 2 uses
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.bi
  %scevgep171 = getelementptr i8, ptr %i.ar, i64 8
  %scevgep172 = getelementptr i8, ptr %scevgep171, i64 %i.bi
  %bound0173 = icmp ult ptr %i.bc, %scevgep172
  %bound1174 = icmp ult ptr %i.ar, %scevgep170
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph.i.i.i.i.i.i.i.preheader241, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck168
  %n.vec180 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bj = shl i64 %n.vec180, 3                    ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bc, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ar, i64 %i.bj
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %i.bm = shl i64 %index182, 3                    ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.bc, i64 %i.bm ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.ar, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.bn = getelementptr i8, ptr %next.gep184, i64 16
  %wide.load185 = load <2 x i64>, ptr %next.gep184, align 8, !tbaa !821, !alias.scope !940, !noalias !935
  %wide.load186 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !821, !alias.scope !940, !noalias !935
  %i.bo = getelementptr i8, ptr %next.gep183, i64 16
  store <2 x i64> %wide.load185, ptr %next.gep183, align 8, !tbaa !821, !alias.scope !943, !noalias !940
  store <2 x i64> %wide.load186, ptr %i.bo, align 8, !tbaa !821, !alias.scope !943, !noalias !940
  %i.bp = getelementptr i8, ptr %next.gep184, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep184, align 8, !tbaa !821, !alias.scope !940, !noalias !935
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !821, !alias.scope !940, !noalias !935
  %index.next187 = add nuw i64 %index182, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.bq, label %middle.block188, label %vector.body181, !llvm.loop !945

middle.block188:                                  ; preds = %vector.body181
  %cmp.n189 = icmp eq i64 %i.bf, %n.vec180
  br i1 %cmp.n189, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader241

.lr.ph.i.i.i.i.i.i.i.preheader241:                ; preds = %vector.memcheck168, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block188
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck168 ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block188 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck168 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block188 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader241, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader241 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader241 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !821, !alias.scope !938, !noalias !935
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !821, !alias.scope !935, !noalias !938
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !821, !alias.scope !938, !noalias !935
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !946

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block188, %.noexc36
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.noexc36 ], [ %i.bk, %middle.block188 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.j
  store ptr %i.bc, ptr %i.v, align 8, !tbaa !819
  store ptr %i.bu, ptr %i.w, align 8, !tbaa !820
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bv, ptr %i.x, align 8, !tbaa !827
  br label %_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_11VectorCacheESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb10unique_ptrINS_11VectorCacheESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.by = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29
          to label %.noexc39 unwind label %bb.t   ; 4 uses

.noexc39:                                         ; preds = %bb.l
  invoke void @_ZN6duckdb6VectorC1ERKNS_11VectorCacheE(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %bb.n unwind label %bb.m, !noalias !947

bb.m:                                             ; preds = %.noexc39
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.by) #30, !noalias !947
  br label %.body40

bb.n:                                             ; preds = %.noexc39
  store ptr %i.by, ptr %7, align 8, !tbaa !439, !alias.scope !947
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !817 ; 6 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !843
  %.not.i.i42 = icmp eq ptr %i.ca, %i.cb
  %i.cc = ptrtoint ptr %i.by to i64               ; 2 uses
  br i1 %.not.i.i42, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.n
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !439
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cd, ptr %i.t, align 8, !tbaa !817
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !816 ; 10 uses
  %i.cf = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
          to label %.noexc52 unwind label %.loopexit.split-lp75

.noexc52:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i43 = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i43, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i.i.i44 = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i44)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #29
          to label %.noexc53 unwind label %.loopexit74 ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  store i64 %i.cc, ptr %i.cq, align 8, !tbaa !439
  %.not10.i.i.i.i.i.i.i45 = icmp eq ptr %i.ce, %i.ca
  br i1 %.not10.i.i.i.i.i.i.i45, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i.i.i46.preheader:                 ; preds = %.noexc53
  %10 = add i64 %i.cf, -8
  %11 = sub i64 %10, %i.cg                        ; 2 uses
  %i.cr = lshr i64 %11, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i46.preheader240, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i46.preheader
  %scevgep = getelementptr i8, ptr %i.cp, i64 8
  %i.ct = add i64 %i.cf, -8
  %i.cu = sub i64 %i.ct, %i.cg
  %i.cv = and i64 %i.cu, -8                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep, i64 %i.cv
  %scevgep163 = getelementptr i8, ptr %i.ce, i64 8
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.cv
  %bound0 = icmp ult ptr %i.cp, %scevgep164
  %bound1 = icmp ult ptr %i.ce, %scevgep162
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i46.preheader240, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, 4611686018427387900     ; 3 uses
  %i.cw = shl i64 %n.vec, 3                       ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cp, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ce, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.cz ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.ce, i64 %i.cz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  %i.da = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep165, align 8, !tbaa !439, !alias.scope !955, !noalias !950
  %wide.load166 = load <2 x i64>, ptr %i.da, align 8, !tbaa !439, !alias.scope !955, !noalias !950
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !439, !alias.scope !958, !noalias !955
  store <2 x i64> %wide.load166, ptr %i.db, align 8, !tbaa !439, !alias.scope !958, !noalias !955
  %i.dc = getelementptr i8, ptr %next.gep165, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep165, align 8, !tbaa !439, !alias.scope !955, !noalias !950
  store <2 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !439, !alias.scope !955, !noalias !950
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !960

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i46.preheader240

.lr.ph.i.i.i.i.i.i.i46.preheader240:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i46.preheader, %middle.block
  %.012.i.i.i.i.i.i.i47.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i46.preheader ], [ %i.cx, %middle.block ]
  %.0911.i.i.i.i.i.i.i48.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i46.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i46

.lr.ph.i.i.i.i.i.i.i46:                           ; preds = %.lr.ph.i.i.i.i.i.i.i46.preheader240, %.lr.ph.i.i.i.i.i.i.i46
  %.012.i.i.i.i.i.i.i47 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i46 ], [ %.012.i.i.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i.i.i46.preheader240 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i48 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i46 ], [ %.0911.i.i.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i.i.i46.preheader240 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  %i.de = load i64, ptr %.0911.i.i.i.i.i.i.i48, align 8, !tbaa !439, !alias.scope !953, !noalias !950
  store i64 %i.de, ptr %.012.i.i.i.i.i.i.i47, align 8, !tbaa !439, !alias.scope !950, !noalias !953
  store ptr null, ptr %.0911.i.i.i.i.i.i.i48, align 8, !tbaa !439, !alias.scope !953, !noalias !950
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i48, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i47, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i49 = icmp eq ptr %i.df, %i.ca
  br i1 %.not.i.i.i.i.i.i.i49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i46, !llvm.loop !961

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i46, %middle.block, %.noexc53
  %.0.lcssa.i.i.i.i.i.i.i50 = phi ptr [ %i.cp, %.noexc53 ], [ %i.cx, %middle.block ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i46 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i50, i64 8
  %.not.i23.i.i.i51 = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i.i.i51, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.cp, ptr %i.s, align 8, !tbaa !816
  store ptr %i.dh, ptr %i.t, align 8, !tbaa !817
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.di, ptr %i.u, align 8, !tbaa !843
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

bb.r:                                             ; preds = %bb.e, %bb.d
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #31
  br label %.body

.body:                                            ; preds = %bb.r, %bb.f, %bb.s
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.s ], [ %i.dj, %bb.r ], [ %i.am, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.v

bb.t:                                             ; preds = %bb.l, %bb.k, %_ZNSt10unique_ptrIN6duckdb11VectorCacheESt14default_deleteIS1_EED2Ev.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body40

.loopexit74:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp75:                             ; preds = %bb.p
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp75, %.loopexit74
  %lpad.phi78 = phi { ptr, i32 } [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ]
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #31
  br label %.body40

.body40:                                          ; preds = %bb.t, %bb.m, %bb.u
  %.pn24 = phi { ptr, i32 } [ %lpad.phi78, %bb.u ], [ %i.dk, %bb.t ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.v

bb.v:                                             ; preds = %.body40, %.body
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %.body40 ], [ %.pn, %.body ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn24.pn

bb.w:                                             ; preds = %bb.c
  %i.dl = load ptr, ptr %i.t, align 8, !tbaa !817 ; 6 uses
  %i.dm = load ptr, ptr %i.u, align 8, !tbaa !843
  %.not.i55 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i55, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.dl, align 8, !tbaa !437
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dn, ptr %i.t, align 8, !tbaa !817
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

bb.y:                                             ; preds = %bb.w
  %i.do = load ptr, ptr %i.s, align 8, !tbaa !816 ; 10 uses
  %i.dp = ptrtoint ptr %i.dl to i64               ; 3 uses
  %i.dq = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775800
  br i1 %i.ds, label %bb.z, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.dt = ashr exact i64 %i.dr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = call i64 @llvm.umin.i64(i64 %i.du, i64 1152921504606846975)
  %i.dx = select i1 %i.dv, i64 1152921504606846975, i64 %i.dw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dy = shl nuw nsw i64 %i.dx, 3
  %i.dz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #29 ; 10 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr
  store ptr null, ptr %i.ea, align 8, !tbaa !437
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.do, %i.dl
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i56.preheader

.lr.ph.i.i.i.i.i.i56.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %12 = add i64 %i.dp, -8
  %13 = sub i64 %12, %i.dq                        ; 2 uses
  %i.eb = lshr i64 %13, 3
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %13, 56
  br i1 %min.iters.check225, label %.lr.ph.i.i.i.i.i.i56.preheader243, label %vector.memcheck216

vector.memcheck216:                               ; preds = %.lr.ph.i.i.i.i.i.i56.preheader
  %scevgep217 = getelementptr i8, ptr %i.dz, i64 8
  %i.ed = add i64 %i.dp, -8
  %i.ee = sub i64 %i.ed, %i.dq
  %i.ef = and i64 %i.ee, -8                       ; 2 uses
  %scevgep218 = getelementptr i8, ptr %scevgep217, i64 %i.ef
  %scevgep219 = getelementptr i8, ptr %i.do, i64 8
  %scevgep220 = getelementptr i8, ptr %scevgep219, i64 %i.ef
  %bound0221 = icmp ult ptr %i.dz, %scevgep220
  %bound1222 = icmp ult ptr %i.do, %scevgep218
  %found.conflict223 = and i1 %bound0221, %bound1222
  br i1 %found.conflict223, label %.lr.ph.i.i.i.i.i.i56.preheader243, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck216
  %n.vec228 = and i64 %i.ec, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec228, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dz, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %i.do, i64 %i.eg
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph226
  %index230 = phi i64 [ 0, %vector.ph226 ], [ %index.next235, %vector.body229 ] ; 2 uses
  %i.ej = shl i64 %index230, 3                    ; 2 uses
  %next.gep231 = getelementptr i8, ptr %i.dz, i64 %i.ej ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.do, i64 %i.ej ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.ek = getelementptr i8, ptr %next.gep232, i64 16
  %wide.load233 = load <2 x i64>, ptr %next.gep232, align 8, !tbaa !439, !alias.scope !967, !noalias !962
  %wide.load234 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !439, !alias.scope !967, !noalias !962
  %i.el = getelementptr i8, ptr %next.gep231, i64 16
  store <2 x i64> %wide.load233, ptr %next.gep231, align 8, !tbaa !439, !alias.scope !970, !noalias !967
  store <2 x i64> %wide.load234, ptr %i.el, align 8, !tbaa !439, !alias.scope !970, !noalias !967
  %i.em = getelementptr i8, ptr %next.gep232, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep232, align 8, !tbaa !439, !alias.scope !967, !noalias !962
  store <2 x ptr> splat (ptr null), ptr %i.em, align 8, !tbaa !439, !alias.scope !967, !noalias !962
  %index.next235 = add nuw i64 %index230, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.en, label %middle.block236, label %vector.body229, !llvm.loop !972

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %i.ec, %n.vec228
  br i1 %cmp.n237, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i56.preheader243

.lr.ph.i.i.i.i.i.i56.preheader243:                ; preds = %vector.memcheck216, %.lr.ph.i.i.i.i.i.i56.preheader, %middle.block236
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dz, %vector.memcheck216 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i56.preheader ], [ %i.eh, %middle.block236 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.do, %vector.memcheck216 ], [ %i.do, %.lr.ph.i.i.i.i.i.i56.preheader ], [ %i.ei, %middle.block236 ]
  br label %.lr.ph.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i56:                             ; preds = %.lr.ph.i.i.i.i.i.i56.preheader243, %.lr.ph.i.i.i.i.i.i56
  %.012.i.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i56 ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i56.preheader243 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i56 ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i56.preheader243 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.eo = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !965, !noalias !962
  store i64 %i.eo, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !962, !noalias !965
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !965, !noalias !962
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i57 = icmp eq ptr %i.ep, %i.dl
  br i1 %.not.i.i.i.i.i.i57, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i56, !llvm.loop !973

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i.i56, %middle.block236, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eh, %middle.block236 ], [ %i.eq, %.lr.ph.i.i.i.i.i.i56 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.do) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.dz, ptr %i.s, align 8, !tbaa !816
  store ptr %i.er, ptr %i.t, align 8, !tbaa !817
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.es, ptr %i.u, align 8, !tbaa !843
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %bb.x, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.et = load ptr, ptr %i.w, align 8, !tbaa !820 ; 6 uses
  %i.eu = load ptr, ptr %i.x, align 8, !tbaa !827
  %.not.i58 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i58, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  store ptr null, ptr %i.et, align 8, !tbaa !868
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.ev, ptr %i.w, align 8, !tbaa !820
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

bb.ac:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  %i.ew = load ptr, ptr %i.v, align 8, !tbaa !819 ; 10 uses
  %i.ex = ptrtoint ptr %i.et to i64               ; 3 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 3 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775800
  br i1 %i.fa, label %bb.ad, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.fb = ashr exact i64 %i.ez, 3                 ; 3 uses
  %.sroa.speculated.i.i.i59 = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i.i59, %i.fb ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 1152921504606846975)
  %i.ff = select i1 %i.fd, i64 1152921504606846975, i64 %i.fe ; 3 uses
  %.not.i.i.i60 = icmp ne i64 %i.ff, 0
  call void @llvm.assume(i1 %.not.i.i.i60)
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #29 ; 10 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez
  store ptr null, ptr %i.fi, align 8, !tbaa !868
  %.not10.i.i.i.i.i.i61 = icmp eq ptr %i.ew, %i.et
  br i1 %.not10.i.i.i.i.i.i61, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i62.preheader

.lr.ph.i.i.i.i.i.i62.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %14 = add i64 %i.ex, -8
  %15 = sub i64 %14, %i.ey                        ; 2 uses
  %i.fj = lshr i64 %15, 3
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %15, 56
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.i.i.i62.preheader242, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph.i.i.i.i.i.i62.preheader
  %scevgep193 = getelementptr i8, ptr %i.fh, i64 8
  %i.fl = add i64 %i.ex, -8
  %i.fm = sub i64 %i.fl, %i.ey
  %i.fn = and i64 %i.fm, -8                       ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.fn
  %scevgep195 = getelementptr i8, ptr %i.ew, i64 8
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.fn
  %bound0197 = icmp ult ptr %i.fh, %scevgep196
  %bound1198 = icmp ult ptr %i.ew, %scevgep194
  %found.conflict199 = and i1 %bound0197, %bound1198
  br i1 %found.conflict199, label %.lr.ph.i.i.i.i.i.i62.preheader242, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck192
  %n.vec204 = and i64 %i.fk, 4611686018427387900  ; 3 uses
  %i.fo = shl i64 %n.vec204, 3                    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fh, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ew, i64 %i.fo
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph202
  %index206 = phi i64 [ 0, %vector.ph202 ], [ %index.next211, %vector.body205 ] ; 2 uses
  %i.fr = shl i64 %index206, 3                    ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.fh, i64 %i.fr ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.ew, i64 %i.fr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.fs = getelementptr i8, ptr %next.gep208, i64 16
  %wide.load209 = load <2 x i64>, ptr %next.gep208, align 8, !tbaa !821, !alias.scope !979, !noalias !974
  %wide.load210 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !821, !alias.scope !979, !noalias !974
  %i.ft = getelementptr i8, ptr %next.gep207, i64 16
  store <2 x i64> %wide.load209, ptr %next.gep207, align 8, !tbaa !821, !alias.scope !982, !noalias !979
  store <2 x i64> %wide.load210, ptr %i.ft, align 8, !tbaa !821, !alias.scope !982, !noalias !979
  %i.fu = getelementptr i8, ptr %next.gep208, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep208, align 8, !tbaa !821, !alias.scope !979, !noalias !974
  store <2 x ptr> splat (ptr null), ptr %i.fu, align 8, !tbaa !821, !alias.scope !979, !noalias !974
  %index.next211 = add nuw i64 %index206, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next211, %n.vec204
  br i1 %i.fv, label %middle.block212, label %vector.body205, !llvm.loop !984

middle.block212:                                  ; preds = %vector.body205
  %cmp.n213 = icmp eq i64 %i.fk, %n.vec204
  br i1 %cmp.n213, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i62.preheader242

.lr.ph.i.i.i.i.i.i62.preheader242:                ; preds = %vector.memcheck192, %.lr.ph.i.i.i.i.i.i62.preheader, %middle.block212
  %.012.i.i.i.i.i.i63.ph = phi ptr [ %i.fh, %vector.memcheck192 ], [ %i.fh, %.lr.ph.i.i.i.i.i.i62.preheader ], [ %i.fp, %middle.block212 ]
  %.0911.i.i.i.i.i.i64.ph = phi ptr [ %i.ew, %vector.memcheck192 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i62.preheader ], [ %i.fq, %middle.block212 ]
  br label %.lr.ph.i.i.i.i.i.i62

.lr.ph.i.i.i.i.i.i62:                             ; preds = %.lr.ph.i.i.i.i.i.i62.preheader242, %.lr.ph.i.i.i.i.i.i62
  %.012.i.i.i.i.i.i63 = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.i62 ], [ %.012.i.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i.i62.preheader242 ] ; 2 uses
  %.0911.i.i.i.i.i.i64 = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i62 ], [ %.0911.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i62.preheader242 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.fw = load i64, ptr %.0911.i.i.i.i.i.i64, align 8, !tbaa !821, !alias.scope !977, !noalias !974
  store i64 %i.fw, ptr %.012.i.i.i.i.i.i63, align 8, !tbaa !821, !alias.scope !974, !noalias !977
  store ptr null, ptr %.0911.i.i.i.i.i.i64, align 8, !tbaa !821, !alias.scope !977, !noalias !974
  %i.fx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i64, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i65 = icmp eq ptr %i.fx, %i.et
  br i1 %.not.i.i.i.i.i.i65, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i62, !llvm.loop !985

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i.i62, %middle.block212, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i66 = phi ptr [ %i.fh, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fp, %middle.block212 ], [ %i.fy, %.lr.ph.i.i.i.i.i.i62 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i66, i64 8
  %.not.i22.i.i67 = icmp eq ptr %i.ew, null
  br i1 %.not.i22.i.i67, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ew) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.fh, ptr %i.v, align 8, !tbaa !819
  store ptr %i.fz, ptr %i.w, align 8, !tbaa !820
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ff
  store ptr %i.ga, ptr %i.x, align 8, !tbaa !827
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.ab, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.068.093, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gb, %i.q
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_26TupleDataParallelScanStateENS_22TupleDataPinPropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(600) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_18TupleDataScanStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, i8 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_26TupleDataParallelScanStateENS_6vectorImLb1ESaImEEENS_22TupleDataPinPropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr nofree noundef captures(none) %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.27", align 16 ; 5 uses
  %i.a = load <2 x ptr>, ptr %2, align 8, !tbaa !90
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !803
  store ptr %i.d, ptr %i.b, align 16, !tbaa !803
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_18TupleDataScanStateENS_6vectorImLb1ESaImEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, ptr noundef nonnull %4, i8 noundef zeroext %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 16, !tbaa !449   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %4, align 16, !tbaa !449   ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorImSaImEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit5

_ZNSt6vectorImSaImEED2Ev.exit5:                   ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb19TupleDataCollection10FetchChunkERNS_18TupleDataScanStateEmbNS_12optional_ptrINS_19SortKeyPayloadStateELb1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, i64 noundef %2, i1 noundef zeroext %3, ptr %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !244  ; 3 uses
  %.not46 = icmp eq ptr %i.c, %i.d
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.02645 = phi i64 [ %i.s, %bb.b ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.03044 = phi i64 [ %i.t, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03044
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !245  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !422
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !413
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %.not = icmp ult i64 %.02645, %i.r
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = sub nuw i64 %.02645, %i.r
  %i.t = add nuw i64 %.03044, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !986

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.f
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb23TupleDataGatherFunctionENS0_19arena_stl_allocatorIS1_EEE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S4_EEDpOT_:bb.a
  br label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE8allocateERS3_m.exit.i

_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE8allocateERS3_m.exit.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i.i = phi i64 [ %.pre5.i.i.i.i, %bb.d ], [ %i.w, %bb.c ]
  %i.aa = phi i64 [ %.pre4.i.i.i.i, %bb.d ], [ %i.v, %bb.c ]
  %i.ab = phi ptr [ %.pre.i.i.i.i, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa ; 5 uses
  store i64 %.pre-phi.i.i.i.i, ptr %i.ae, align 8, !tbaa !780
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.o ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x ptr>, ptr %2, align 8, !tbaa !49
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !753
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !753
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not13.i.i = icmp eq ptr %i.d, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE8allocateERS3_m.exit.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.af, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE8allocateERS3_m.exit.i ] ; 3 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.d, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE8allocateERS3_m.exit.i ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8
  %i.an = load <2 x ptr>, ptr %.sroa.010.014.i.i, align 8, !tbaa !49
  store <2 x ptr> %i.an, ptr %.015.i.i, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !753
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !753
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !791

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE8allocateERS3_m.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.af, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE8allocateERS3_m.exit.i ], [ %i.as, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.ba, %.lr.ph.i.i29 ], [ %i.at, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.az, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 8
  %i.av = load <2 x ptr>, ptr %.sroa.010.014.i.i31, align 8, !tbaa !49
  store <2 x ptr> %i.av, ptr %.015.i.i30, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 16
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !753
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !753
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 32 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.az, %i.c
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !791

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.at, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit ], [ %i.ba, %.lr.ph.i.i29 ]
  %.not5.i = icmp eq ptr %i.d, %i.c
  br i1 %.not5.i, label %_ZSt8_DestroyIPN6duckdb23TupleDataGatherFunctionENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit34, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE7destroyIS2_EEvRS3_PT_.exit.i
  %.06.i = phi ptr [ %i.bi, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE7destroyIS2_EEvRS3_PT_.exit.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit34 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !754
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !756
  invoke void @_ZSt8_DestroyIPN6duckdb23TupleDataGatherFunctionEEvT_S3_(ptr noundef %i.bc, ptr noundef %i.be)
          to label %_ZNSt6vectorIN6duckdb23TupleDataGatherFunctionESaIS1_EED2Ev.exit.i.i.i.i.i unwind label %bb.e, !inline_history !757

bb.e:                                             ; preds = %.lr.ph.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #33, !inline_history !757
  unreachable

_ZNSt6vectorIN6duckdb23TupleDataGatherFunctionESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !754 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE7destroyIS2_EEvRS3_PT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb23TupleDataGatherFunctionESaIS1_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bh) #30, !inline_history !758
  br label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE7destroyIS2_EEvRS3_PT_.exit.i

_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE7destroyIS2_EEvRS3_PT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb23TupleDataGatherFunctionESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i, i64 32 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bi, %i.c
  br i1 %.not.i35, label %_ZSt8_DestroyIPN6duckdb23TupleDataGatherFunctionENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit, label %.lr.ph.i, !llvm.loop !761

_ZSt8_DestroyIPN6duckdb23TupleDataGatherFunctionENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit: ; preds = %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_23TupleDataGatherFunctionEEEE7destroyIS2_EEvRS3_PT_.exit.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb23TupleDataGatherFunctionES2_NS0_19arena_stl_allocatorIS1_EEET0_T_S6_S5_RT1_.exit34
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.a, align 8, !tbaa !760
  store ptr %.0.lcssa.i.i33, ptr %i.b, align 8, !tbaa !751
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.m
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !752
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6duckdb14ArenaAllocator4MakeINS_16TupleDataSegmentEJRNS_10shared_ptrINS_18TupleDataAllocatorELb1EEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::shared_ptr.134", align 16 ; 4 uses
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 192) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !49
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !49
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN6duckdb16TupleDataSegmentC1ENS_10shared_ptrINS_18TupleDataAllocatorELb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEC2ERKS2_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !45   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !43
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !765
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !765
  br label %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i4 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EED2Ev.exit, !prof !48

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31
  br label %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret ptr %i.a

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEC2ERKS2_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !244  ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = load ptr, ptr %0, align 8, !tbaa !777
  tail call void @_ZN6duckdb14ArenaAllocator9AlignNextEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p)
  %i.q = load ptr, ptr %0, align 8, !tbaa !777    ; 2 uses
  %i.r = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !778  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !780  ; 2 uses
  %i.w = add i64 %i.v, %i.r                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !789
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE8allocateERS7_m.exit.i

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEE12_M_check_lenEmPKc.exit
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !778 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 24
  %.pre4.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !780 ; 2 uses
  %.pre5.i.i.i.i = add i64 %.pre4.i.i.i.i, %i.r
  br label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE8allocateERS7_m.exit.i

_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE8allocateERS7_m.exit.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i.i = phi i64 [ %.pre5.i.i.i.i, %bb.d ], [ %i.w, %bb.c ]
  %i.aa = phi i64 [ %.pre4.i.i.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i.i.i.i, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa ; 9 uses
  store i64 %.pre-phi.i.i.i.i, ptr %i.ae, align 8, !tbaa !780
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.o
  %i.ah = load i64, ptr %2, align 8, !tbaa !245
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !245
  store ptr null, ptr %2, align 8, !tbaa !245
  %.not13.i.i = icmp eq ptr %i.d, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE8allocateERS7_m.exit.i
  %i.ai = add i64 %i.n, -8
  %i.aj = sub i64 %i.ai, %i.f                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 200
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.am = add i64 %i.n, -8
  %i.an = sub i64 %i.am, %i.f
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.aa
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.aq, i64 8
  %i.ar = getelementptr i8, ptr %i.d, i64 %i.ao
  %scevgep60 = getelementptr i8, ptr %i.ar, i64 8
  %bound0 = icmp ult ptr %i.af, %scevgep60
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.af, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.d, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.av ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.d, i64 %i.av ; 4 uses
  %i.aw = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep61, align 8, !tbaa !245, !alias.scope !1448
  %wide.load62 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !245, !alias.scope !1448
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !245, !alias.scope !1451, !noalias !1448
  store <2 x i64> %wide.load62, ptr %i.ax, align 8, !tbaa !245, !alias.scope !1451, !noalias !1448
  %i.ay = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep61, align 8, !tbaa !245, !alias.scope !1448
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !245, !alias.scope !1448
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.preheader87

.lr.ph.i.i.preheader87:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.015.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader87, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader87 ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader87 ] ; 3 uses
  %i.ba = load i64, ptr %.sroa.010.014.i.i, align 8, !tbaa !245
  store i64 %i.ba, ptr %.015.i.i, align 8, !tbaa !245
  store ptr null, ptr %.sroa.010.014.i.i, align 8, !tbaa !245
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1454

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE8allocateERS7_m.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.af, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE8allocateERS7_m.exit.i ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph.i.i ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i, i64 8 ; 6 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit34, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit
  %i.be = add i64 %i.e, -8
  %i.bf = sub i64 %i.be, %i.n                     ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check71 = icmp ult i64 %i.bf, 184
  br i1 %min.iters.check71, label %.lr.ph.i.i29.preheader86, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph.i.i29.preheader
  %i.bi = add i64 %i.e, -8
  %i.bj = sub i64 %i.bi, %i.n
  %i.bk = and i64 %i.bj, -8                       ; 2 uses
  %i.bl = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.bk
  %scevgep65 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = getelementptr i8, ptr %1, i64 %i.bk
  %scevgep66 = getelementptr i8, ptr %i.bm, i64 8
  %bound067 = icmp ult ptr %i.bd, %scevgep66
  %bound168 = icmp ult ptr %1, %scevgep65
  %found.conflict69 = and i1 %bound067, %bound168
  br i1 %found.conflict69, label %.lr.ph.i.i29.preheader86, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck64
  %n.vec74 = and i64 %i.bh, 4611686018427387900   ; 3 uses
  %i.bn = shl i64 %n.vec74, 3                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 %i.bn
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph72
  %index76 = phi i64 [ 0, %vector.ph72 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %i.bq = shl i64 %index76, 3                     ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.bd, i64 %i.bq ; 2 uses
  %next.gep78 = getelementptr i8, ptr %1, i64 %i.bq ; 4 uses
  %i.br = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load79 = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !245, !alias.scope !1455
  %wide.load80 = load <2 x i64>, ptr %i.br, align 8, !tbaa !245, !alias.scope !1455
  %i.bs = getelementptr i8, ptr %next.gep77, i64 16
  store <2 x i64> %wide.load79, ptr %next.gep77, align 8, !tbaa !245, !alias.scope !1458, !noalias !1455
  store <2 x i64> %wide.load80, ptr %i.bs, align 8, !tbaa !245, !alias.scope !1458, !noalias !1455
  %i.bt = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !245, !alias.scope !1455
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !245, !alias.scope !1455
  %index.next81 = add nuw i64 %index76, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.bu, label %middle.block82, label %vector.body75, !llvm.loop !1460

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.bh, %n.vec74
  br i1 %cmp.n83, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit34, label %.lr.ph.i.i29.preheader86

.lr.ph.i.i29.preheader86:                         ; preds = %vector.memcheck64, %.lr.ph.i.i29.preheader, %middle.block82
  %.015.i.i30.ph = phi ptr [ %i.bd, %vector.memcheck64 ], [ %i.bd, %.lr.ph.i.i29.preheader ], [ %i.bo, %middle.block82 ]
  %.sroa.010.014.i.i31.ph = phi ptr [ %1, %vector.memcheck64 ], [ %1, %.lr.ph.i.i29.preheader ], [ %i.bp, %middle.block82 ]
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader86, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.bx, %.lr.ph.i.i29 ], [ %.015.i.i30.ph, %.lr.ph.i.i29.preheader86 ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.bw, %.lr.ph.i.i29 ], [ %.sroa.010.014.i.i31.ph, %.lr.ph.i.i29.preheader86 ] ; 3 uses
  %i.bv = load i64, ptr %.sroa.010.014.i.i31, align 8, !tbaa !245
  store i64 %i.bv, ptr %.015.i.i30, align 8, !tbaa !245
  store ptr null, ptr %.sroa.010.014.i.i31, align 8, !tbaa !245
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 8 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bw, %i.c
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !1461

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit34: ; preds = %.lr.ph.i.i29, %middle.block82, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.bd, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit ], [ %i.bo, %middle.block82 ], [ %i.bx, %.lr.ph.i.i29 ]
  %.not5.i = icmp eq ptr %i.d, %i.c
  br i1 %.not5.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEEvT_S9_RT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit34, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i
  %.06.i = phi ptr [ %i.bz, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit34 ] ; 2 uses
  %i.by = load ptr, ptr %.06.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @_ZN6duckdb16TupleDataSegmentD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.by) #31
  br label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i

_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bz, %i.c
  br i1 %.not.i35, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEEvT_S9_RT0_.exit, label %.lr.ph.i, !llvm.loop !355

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEENS0_19arena_stl_allocatorIS5_EEEvT_S9_RT0_.exit: ; preds = %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS3_EELb0EEEEEE7destroyIS6_EEvRS7_PT_.exit.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_16TupleDataSegmentENS0_13arena_deleterIS2_EELb0EEES6_NS0_19arena_stl_allocatorIS5_EEET0_T_SA_S9_RT1_.exit34
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.a, align 8, !tbaa !244
  store ptr %.0.lcssa.i.i33, ptr %i.b, align 8, !tbaa !243
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.m
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !354
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !282    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i) #31
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i) #31
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1462

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i27
  %.012.i.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i.i27 ], [ %1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i29) #31
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i29) #31
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27, !llvm.loop !1462

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i.i27, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i.i27 ]
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !282
  store ptr %.0.lcssa.i.i.i.i31, ptr %i.a, align 8, !tbaa !281
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8, !tbaa !889
  ret void

bb.d:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #31 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #33
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN6duckdb11VectorCacheC1ERNS_9AllocatorERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #7

declare void @_ZN6duckdb6VectorC1ERKNS_11VectorCacheE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

end_hunk_6
