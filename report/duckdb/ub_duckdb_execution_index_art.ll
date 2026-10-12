Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution_index_art?download=true
inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm:bb.a
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.021
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !77
  %i.am = add nuw i64 %.021, 1                    ; 2 uses
  %i.an = load i8, ptr %i.d, align 8, !tbaa !149
  %i.ao = zext i8 %i.an to i64                    ; 3 uses
  %i.ap = add i64 %i.ao, %i.l
  %i.aq = icmp ult i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1458

bb.c:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZN6duckdb6Prefix5SplitERNS_3ARTERSt17reference_wrapperINS_4NodeEERS4_h(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Prefix", align 8    ; 11 uses
  %5 = alloca %"class.duckdb::Prefix", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !173
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.01.0.copyload, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.b = zext i8 %3 to i32
  %i.c = add nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !149   ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = icmp eq i32 %i.c, %i.f
  %i.h = load ptr, ptr %4, align 8, !tbaa !159    ; 2 uses
  %i.i = zext i8 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !77    ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 1, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %1, align 8
  %i.p = load i64, ptr %i.n, align 8
  store i64 %i.p, ptr %2, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.q = zext i8 %i.k to i32
  %i.r = icmp samesign ult i32 %i.c, %i.q
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.t = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s), !noalias !1461
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !156, !noalias !1461
  %i.v = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.u), !noalias !1461
  %i.w = and i64 %i.v, 72057594037927935
  %i.x = or disjoint i64 %i.w, 72057594037927936  ; 2 uses
  store i64 %i.x, ptr %2, align 8, !tbaa !157, !noalias !1461
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.x, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.y = load ptr, ptr %5, align 8, !tbaa !159, !alias.scope !1461
  %i.z = load i8, ptr %i.d, align 8, !tbaa !149, !noalias !1461
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !160, !alias.scope !1461
  store i64 0, ptr %i.ad, align 8, !tbaa !157
  %i.ae = load ptr, ptr %4, align 8, !tbaa !159
  %i.af = load i8, ptr %i.d, align 8, !tbaa !149
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !77
  %i.aj = xor i8 %3, -1
  %i.ak = add i8 %i.ai, %i.aj
  %i.al = load ptr, ptr %5, align 8, !tbaa !159
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !77
  %i.an = load ptr, ptr %5, align 8, !tbaa !159   ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !159
  %i.ap = zext i8 %3 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.d, align 8, !tbaa !149
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !77
  %i.aw = zext i8 %i.av to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ar, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !160
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !157 ; 3 uses
  %i.ba = and i64 %i.az, -72057594037927936
  %or.cond = icmp eq i64 %i.ba, 72057594037927936
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb6Prefix6AppendERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.az)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !160
  store i64 %i.az, ptr %i.bb, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.pre = load ptr, ptr %4, align 8, !tbaa !159
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !160
  %i.be = load i64, ptr %i.bd, align 8
  store i64 %i.be, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi ptr [ %i.h, %bb.h ], [ %.pre, %bb.g ]
  %i.bg = load i8, ptr %i.d, align 8, !tbaa !149
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  store i8 %3, ptr %i.bi, align 1, !tbaa !77
  %i.bj = icmp eq i8 %3, 0
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %1, align 8, !tbaa !173   ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !157 ; 2 uses
  %sum.shift.i28 = lshr i64 %i.bl, 63
  %.lobit1.i29 = trunc nuw nsw i64 %sum.shift.i28 to i8
  %i.bm = lshr i64 %i.bl, 56
  %i.bn = trunc nuw i64 %i.bm to i8
  %i.bo = and i8 %i.bn, 127
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bq = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
  %i.br = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.bo)
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !156
  %.sroa.0.0.copyload.i = load i64, ptr %i.bk, align 8, !tbaa !58
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.bu, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %i.bk, align 8, !tbaa !157
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !160
  %i.bx = ptrtoint ptr %i.bw to i64
  store i64 %i.bx, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ %.lobit1.i29, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i8 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !184
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::NodeHandle.659", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.03.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !658, !nonnull !68, !align !69 ; 17 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !200   ; 6 uses
  %.not.not = icmp eq i8 %i.c, 4                  ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !77
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1462

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = add i8 %i.c, -1
  %i.k = call i8 @llvm.usub.sat.i8(i8 %i.j, i8 %i.h) ; 2 uses
  %i.l = zext i8 %i.k to i64                      ; 4 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.k, 53
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.critedge.i
  %i.n = add nuw nsw i64 %wide.trip.count.i, 1    ; 2 uses
  %i.o = sub nsw i64 %i.n, %i.l
  %scevgep24 = getelementptr i8, ptr %i.b, i64 %i.o ; 3 uses
  %i.p = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep25 = getelementptr i8, ptr %i.p, i64 2  ; 3 uses
  %i.q = shl nuw nsw i64 %wide.trip.count.i, 3    ; 3 uses
  %6 = shl nuw nsw i64 %i.l, 3                    ; 2 uses
  %7 = add nuw nsw i64 %i.q, 8                    ; 2 uses
  %8 = sub nsw i64 %7, %6
  %scevgep27 = getelementptr i8, ptr %i.b, i64 %8 ; 3 uses
  %i.r = getelementptr i8, ptr %i.b, i64 %i.q
  %scevgep28 = getelementptr i8, ptr %i.r, i64 16 ; 3 uses
  %9 = sub nsw i64 %wide.trip.count.i, %i.l
  %scevgep30 = getelementptr i8, ptr %i.b, i64 %9 ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.b, i64 %i.n ; 2 uses
  %10 = sub nsw i64 %i.q, %6
  %scevgep33 = getelementptr i8, ptr %i.b, i64 %10 ; 2 uses
  %scevgep34 = getelementptr i8, ptr %i.b, i64 %7 ; 2 uses
  %bound0 = icmp ult ptr %scevgep24, %scevgep28
  %bound1 = icmp ult ptr %scevgep27, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %scevgep24, %scevgep31
  %bound136 = icmp ult ptr %scevgep30, %scevgep25
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  %bound038 = icmp ult ptr %scevgep24, %scevgep34
  %bound139 = icmp ult ptr %scevgep33, %scevgep25
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  %bound042 = icmp ult ptr %scevgep27, %scevgep31
  %bound143 = icmp ult ptr %scevgep30, %scevgep28
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  %bound046 = icmp ult ptr %scevgep27, %scevgep34
  %bound147 = icmp ult ptr %scevgep33, %scevgep28
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx45, %found.conflict48
  br i1 %conflict.rdx49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 508                      ; 3 uses
  %i.s = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %wide.trip.count.i, %index       ; 4 uses
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = getelementptr i8, ptr %i.u, i64 -3
  %wide.load = load <2 x i8>, ptr %i.v, align 1, !tbaa !77, !alias.scope !1470
  %wide.load50 = load <2 x i8>, ptr %i.w, align 1, !tbaa !77, !alias.scope !1470
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -3
  store <2 x i8> %wide.load, ptr %i.y, align 1, !tbaa !77, !alias.scope !1471, !noalias !1472
  store <2 x i8> %wide.load50, ptr %i.z, align 1, !tbaa !77, !alias.scope !1471, !noalias !1472
  %i.aa = getelementptr [8 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 -8
  %i.ad = getelementptr i8, ptr %i.aa, i64 -24
  %wide.load51 = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !1473
  %wide.load52 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !1473
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -24
  store <2 x i64> %wide.load51, ptr %i.ae, align 8, !alias.scope !1474, !noalias !1475
  store <2 x i64> %wide.load52, ptr %i.af, align 8, !alias.scope !1474, !noalias !1475
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.s, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ah = getelementptr i8, ptr %i.b, i64 %indvars.iv33.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !77
  %i.ak = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv33.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i
  %i.am = load i64, ptr %i.ak, align 8
  store i64 %i.am, ptr %i.al, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.an = icmp ult i8 %i.h, %indvars.i
  br i1 %i.an, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1469

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.ao = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.ao, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.ap, align 1, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.ar, align 8
  %i.as = add i8 %i.c, 1
  store i8 %i.as, ptr %i.b, align 8, !tbaa !200
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.at = load ptr, ptr %4, align 8, !tbaa !184
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %4, align 8, !tbaa !184
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = atomicrmw sub ptr %i.av, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.az = load i64, ptr %1, align 8
  store i64 %i.az, ptr %5, align 8
  call void @_ZN6duckdb6Node169GrowNode4ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @_ZN6duckdb6Node1611InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9Node7Leaf10InsertByteERNS_3ARTERNS_4NodeEh(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.654", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_9Node7LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !661, !nonnull !68 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !183   ; 6 uses
  %.not.not = icmp eq i8 %i.c, 7                  ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !77
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit, label %.lr.ph.i, !llvm.loop !1476

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8
  %i.i = add nuw nsw i64 %wide.trip.count.i, 1
  %i.j = xor i8 %i.h, -1
  %i.k = add i8 %i.c, %i.j
  %i.l = zext i8 %i.k to i64                      ; 3 uses
  %i.m = sub nsw i64 %i.i, %i.l
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.m
  %i.n = sub nsw i64 %wide.trip.count.i, %i.l
  %scevgep27.i = getelementptr i8, ptr %i.b, i64 %i.n
  %i.o = add nuw nsw i64 %i.l, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 1 dereferenceable(1) %scevgep27.i, i64 %i.o, i1 false), !tbaa !77
  br label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit: ; preds = %bb.c
  %i.p = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit: ; preds = %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit, %bb.b, %.critedge.i
  %.017.lcssa32.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %i.p, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa32.i
  store i8 %2, ptr %i.q, align 1, !tbaa !77
  %i.r = add i8 %i.c, 1
  store i8 %i.r, ptr %i.b, align 1, !tbaa !183
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit
  %i.s = load ptr, ptr %3, align 8, !tbaa !184
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

end_hunk_0
begin_hunk_1_@_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE:bb.a
          cleanup
  %i.ax = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #30 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !184
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i8 1, ptr %i.az, align 8, !tbaa !646
  %i.ba = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #30 ; 0 uses
  ret void

bb.h:                                             ; preds = %bb.e, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.aw, %bb.f ]
  tail call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_5Node4EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !184
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node169GrowNode4ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.659", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::NodeHandle.661", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  call void @_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !658, !nonnull !68, !align !69 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156, !noalias !1530
  %i.g = invoke i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.f)
          to label %.noexc25 unwind label %bb.h

.noexc25:                                         ; preds = %.noexc
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = or disjoint i64 %i.h, 288230376151711744 ; 2 uses
  store i64 %i.i, ptr %1, align 8, !tbaa !157, !noalias !1530
  invoke void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.i)
          to label %.sink.split.i unwind label %bb.h

.sink.split.i:                                    ; preds = %.noexc25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !203, !alias.scope !1530, !nonnull !68, !align !69 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, i8 0, i64 128, i1 false), !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.k, i8 0, i64 17, i1 false)
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !203, !nonnull !68, !align !69 ; 3 uses
  %i.n = load i64, ptr %2, align 8, !tbaa !157
  %i.o = load i64, ptr %1, align 8, !tbaa !157
  %i.p = and i64 %i.o, 9223372036854775807
  %masksel = and i64 %i.n, -9223372036854775808
  %.sink.i = or disjoint i64 %i.p, %masksel
  store i64 %.sink.i, ptr %1, align 8, !tbaa !157
  %i.q = load i8, ptr %i.b, align 8, !tbaa !200   ; 2 uses
  store i8 %i.q, ptr %i.m, align 8, !tbaa !475
  %.not29 = icmp eq i8 %i.q, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.sink.split.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.sink.split.i
  %i.v = load ptr, ptr %4, align 8, !tbaa !184
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %4, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw sub ptr %i.x, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ab = load ptr, ptr %3, align 8, !tbaa !184
  %.not.i.i27 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i27, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %3, align 8, !tbaa !184
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ah = load i64, ptr %2, align 8, !tbaa !157
  %i.ai = lshr i64 %i.ah, 56
  %i.aj = trunc nuw i64 %i.ai to i8
  %i.ak = and i8 %i.aj, 127
  %i.al = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.am = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.ak)
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !156
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !58
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.ap, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %2, align 8, !tbaa !157
  ret void

bb.h:                                             ; preds = %.noexc25, %.noexc, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb10NodeHandleINS_5Node4EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.aq

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1, !tbaa !77
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i8, ptr %i.b, align 8, !tbaa !200
  %i.ay = zext i8 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.i, label %._crit_edge, !llvm.loop !1529
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node1611InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::NodeHandle.660", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_6Node16EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.03.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !668, !nonnull !68, !align !69 ; 15 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !475   ; 6 uses
  %.not.not = icmp eq i8 %i.c, 16                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !77
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1531

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = add i8 %i.c, -1
  %i.k = call i8 @llvm.usub.sat.i8(i8 %i.j, i8 %i.h) ; 2 uses
  %i.l = zext i8 %i.k to i64                      ; 4 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.k, 55
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.critedge.i
  %i.n = add nuw nsw i64 %wide.trip.count.i, 1    ; 2 uses
  %i.o = sub nsw i64 %i.n, %i.l
  %scevgep24 = getelementptr i8, ptr %i.b, i64 %i.o ; 3 uses
  %i.p = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep25 = getelementptr i8, ptr %i.p, i64 2  ; 3 uses
  %i.q = shl nuw nsw i64 %wide.trip.count.i, 3    ; 3 uses
  %6 = shl nuw nsw i64 %i.l, 3                    ; 2 uses
  %7 = add nuw nsw i64 %i.q, 24                   ; 2 uses
  %8 = sub nsw i64 %7, %6
  %scevgep27 = getelementptr i8, ptr %i.b, i64 %8 ; 3 uses
  %i.r = getelementptr i8, ptr %i.b, i64 %i.q
  %scevgep28 = getelementptr i8, ptr %i.r, i64 32 ; 3 uses
  %9 = sub nsw i64 %wide.trip.count.i, %i.l
  %scevgep30 = getelementptr i8, ptr %i.b, i64 %9 ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.b, i64 %i.n ; 2 uses
  %10 = add nuw nsw i64 %i.q, 16
  %11 = sub nsw i64 %10, %6
  %scevgep33 = getelementptr i8, ptr %i.b, i64 %11 ; 2 uses
  %scevgep34 = getelementptr i8, ptr %i.b, i64 %7 ; 2 uses
  %bound0 = icmp ult ptr %scevgep24, %scevgep28
  %bound1 = icmp ult ptr %scevgep27, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %scevgep24, %scevgep31
  %bound136 = icmp ult ptr %scevgep30, %scevgep25
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  %bound038 = icmp ult ptr %scevgep24, %scevgep34
  %bound139 = icmp ult ptr %scevgep33, %scevgep25
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  %bound042 = icmp ult ptr %scevgep27, %scevgep31
  %bound143 = icmp ult ptr %scevgep30, %scevgep28
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  %bound046 = icmp ult ptr %scevgep27, %scevgep34
  %bound147 = icmp ult ptr %scevgep33, %scevgep28
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx45, %found.conflict48
  br i1 %conflict.rdx49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 508                      ; 3 uses
  %i.s = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %wide.trip.count.i, %index       ; 3 uses
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = getelementptr i8, ptr %i.u, i64 -3
  %wide.load = load <2 x i8>, ptr %i.v, align 1, !tbaa !77, !alias.scope !1539
  %wide.load50 = load <2 x i8>, ptr %i.w, align 1, !tbaa !77, !alias.scope !1539
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -3
  store <2 x i8> %wide.load, ptr %i.y, align 1, !tbaa !77, !alias.scope !1540, !noalias !1541
  store <2 x i8> %wide.load50, ptr %i.z, align 1, !tbaa !77, !alias.scope !1540, !noalias !1541
  %i.aa = getelementptr [8 x i8], ptr %i.i, i64 %i.t ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %i.ac = getelementptr i8, ptr %i.aa, i64 -32
  %wide.load51 = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !1542
  %wide.load52 = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !1542
  %i.ad = getelementptr i8, ptr %i.aa, i64 -8
  %i.ae = getelementptr i8, ptr %i.aa, i64 -24
  store <2 x i64> %wide.load51, ptr %i.ad, align 8, !alias.scope !1543, !noalias !1544
  store <2 x i64> %wide.load52, ptr %i.ae, align 8, !alias.scope !1543, !noalias !1544
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.s, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %indvars.iv33.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !77
  %i.aj = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv33.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load i64, ptr %i.ak, align 8
  store i64 %i.al, ptr %i.aj, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.am = icmp ult i8 %i.h, %indvars.i
  br i1 %i.am, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1538

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.an = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.an, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.ao, align 1, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.aq, align 8
  %i.ar = add i8 %i.c, 1
  store i8 %i.ar, ptr %i.b, align 8, !tbaa !475
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.as = load ptr, ptr %4, align 8, !tbaa !184
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %4, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw sub ptr %i.au, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #33
  unreachable

_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit:     ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ay = load i64, ptr %1, align 8
  store i64 %i.ay, ptr %5, align 8
  call void @_ZN6duckdb6Node4810GrowNode16ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @_ZN6duckdb6Node4811InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Node411DeleteChildERNS_3ARTERNS_4NodeES4_hNS_10GateStatusE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::NodeHandle", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !noalias !1555
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198, !alias.scope !1555, !nonnull !68, !align !69 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 9 uses
  %i.d = load i8, ptr %i.b, align 8, !tbaa !200   ; 3 uses
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i8 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !77
  %i.g = icmp eq i8 %i.f, %3
  br i1 %i.g, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1547

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit.i, %bb.a
  %.026.lcssa.i = phi i8 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.j = zext i8 %.026.lcssa.i to i64             ; 9 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  invoke void @_ZN6duckdb4Node8FreeTreeERNS_3ARTERS0_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.l = load i8, ptr %i.b, align 8, !tbaa !200
  %i.m = add i8 %i.l, -1                          ; 3 uses
  store i8 %i.m, ptr %i.b, align 8, !tbaa !200
  %i.n = icmp ult i8 %.026.lcssa.i, %i.m
  br i1 %i.n, label %.lr.ph33.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit

.lr.ph33.i:                                       ; preds = %bb.c
  %wide.trip.count39.i = zext i8 %i.m to i64      ; 7 uses
  %i.o = sub nsw i64 %wide.trip.count39.i, %i.j   ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 50
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph33.i
  %i.p = getelementptr i8, ptr %i.b, i64 %i.j
  %i.q = getelementptr i8, ptr %i.p, i64 1        ; 3 uses
  %i.r = getelementptr i8, ptr %i.b, i64 %wide.trip.count39.i
  %i.s = getelementptr i8, ptr %i.r, i64 1        ; 3 uses
  %i.t = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 3 uses
  %i.w = shl nuw nsw i64 %wide.trip.count39.i, 3  ; 2 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 8        ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.j
  %i.aa = getelementptr i8, ptr %i.z, i64 2       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %wide.trip.count39.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 2      ; 2 uses
end_hunk_1
