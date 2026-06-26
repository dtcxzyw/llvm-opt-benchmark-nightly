inline.NumInlined: 6663
inline.NumDeleted: 2963
begin_hunk_0_@_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm:bb.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZN6duckdb6Prefix5SplitERNS_3ARTERSt17reference_wrapperINS_4NodeEERS4_h(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Prefix", align 8    ; 11 uses
  %5 = alloca %"class.duckdb::Prefix", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !156
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.01.0.copyload, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.b = zext i8 %3 to i32
  %i.c = add nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !52    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = icmp eq i32 %i.c, %i.f
  %i.h = load ptr, ptr %4, align 8, !tbaa !132    ; 2 uses
  %i.i = zext i8 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !45    ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 1, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.t = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s), !noalias !1373
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !129, !noalias !1373
  %i.v = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.u), !noalias !1373
  %i.w = and i64 %i.v, 72057594037927935
  %i.x = or disjoint i64 %i.w, 72057594037927936  ; 2 uses
  store i64 %i.x, ptr %2, align 8, !tbaa !131, !noalias !1373
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.x, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.y = load ptr, ptr %5, align 8, !tbaa !132, !alias.scope !1373
  %i.z = load i8, ptr %i.d, align 8, !tbaa !52, !noalias !1373
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !134, !alias.scope !1373
  store i64 0, ptr %i.ad, align 8, !tbaa !131
  %i.ae = load ptr, ptr %4, align 8, !tbaa !132
  %i.af = load i8, ptr %i.d, align 8, !tbaa !52
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !45
  %i.aj = xor i8 %3, -1
  %i.ak = add i8 %i.ai, %i.aj
  %i.al = load ptr, ptr %5, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !45
  %i.an = load ptr, ptr %5, align 8, !tbaa !132   ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !132
  %i.ap = zext i8 %3 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.d, align 8, !tbaa !52
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !45
  %i.aw = zext i8 %i.av to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ar, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !131 ; 3 uses
  %i.ba = and i64 %i.az, -72057594037927936
  %or.cond = icmp eq i64 %i.ba, 72057594037927936
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb6Prefix6AppendERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.az)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !134
  store i64 %i.az, ptr %i.bb, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.pre = load ptr, ptr %4, align 8, !tbaa !132
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !134
  %i.be = load i64, ptr %i.bd, align 8
  store i64 %i.be, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi ptr [ %i.h, %bb.h ], [ %.pre, %bb.g ]
  %i.bg = load i8, ptr %i.d, align 8, !tbaa !52
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  store i8 %3, ptr %i.bi, align 1, !tbaa !45
  %i.bj = icmp eq i8 %3, 0
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %1, align 8, !tbaa !156   ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !131 ; 2 uses
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
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !129
  %.sroa.0.0.copyload.i = load i64, ptr %i.bk, align 8, !tbaa !19
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.bu, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %i.bk, align 8, !tbaa !131
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !134
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !179
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1376, !nonnull !36, !align !37 ; 13 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !203   ; 11 uses
  %.not.not = icmp eq i8 %i.c, 4                  ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1379

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 2 uses
  %i.i = icmp ugt i8 %i.c, %i.h
  br i1 %i.i, label %.lr.ph31.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit

.lr.ph31.i:                                       ; preds = %.critedge.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.k = trunc i64 %indvars.iv.i to i8
  %i.l = xor i8 %i.k, -1
  %i.m = add i8 %i.c, %i.l                        ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.m, 61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph31.i
  %i.p = trunc i64 %indvars.iv.i to i8
  %i.q = xor i8 %i.p, -1
  %i.r = add i8 %i.c, %i.q
  %i.s = zext i8 %i.c to i32
  %i.t = add nsw i32 %i.s, -1
  %i.u = zext i8 %i.r to i32
  %i.v = icmp ult i32 %i.t, %i.u
  br i1 %i.v, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.w = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep = getelementptr i8, ptr %i.w, i64 1
  %i.x = trunc i64 %indvars.iv.i to i8
  %i.y = xor i8 %i.x, -1
  %i.z = add i8 %i.c, %i.y
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = sub nsw i64 0, %i.aa                    ; 2 uses
  %scevgep24.a = getelementptr i8, ptr %scevgep, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep25.a = getelementptr i8, ptr %i.ac, i64 2 ; 3 uses
  %i.ad = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep26.a = getelementptr i8, ptr %i.ae, i64 8
  %i.af = mul nsw i64 %i.aa, -8                   ; 2 uses
  %scevgep27.a = getelementptr i8, ptr %scevgep26.a, i64 %i.af ; 3 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep28.a = getelementptr i8, ptr %i.ag, i64 16 ; 3 uses
  %i.ah = zext i8 %i.c to i64
  %i.ai = add nuw nsw i64 %i.ah, 4294967295
  %i.aj = and i64 %i.ai, 4294967295               ; 3 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep29.a = getelementptr i8, ptr %i.ak, i64 1
  %scevgep30.a = getelementptr i8, ptr %scevgep29.a, i64 %i.ab ; 2 uses
  %i.al = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep31.a = getelementptr i8, ptr %i.al, i64 2 ; 2 uses
  %i.am = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep32.a = getelementptr i8, ptr %i.an, i64 8
  %scevgep33 = getelementptr i8, ptr %scevgep32.a, i64 %i.af ; 2 uses
  %i.ao = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep34 = getelementptr i8, ptr %i.ao, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %scevgep24.a, %scevgep28.a
  %bound1 = icmp ult ptr %scevgep27.a, %scevgep25.a
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %scevgep24.a, %scevgep31.a
  %bound136 = icmp ult ptr %scevgep30.a, %scevgep25.a
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  %bound038 = icmp ult ptr %scevgep24.a, %scevgep34
  %bound139 = icmp ult ptr %scevgep33, %scevgep25.a
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  %bound042 = icmp ult ptr %scevgep27.a, %scevgep31.a
  %bound143 = icmp ult ptr %scevgep30.a, %scevgep28.a
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  %bound046 = icmp ult ptr %scevgep27.a, %scevgep34
  %bound147 = icmp ult ptr %scevgep33, %scevgep28.a
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx45, %found.conflict48
  br i1 %conflict.rdx49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 510                      ; 3 uses
  %i.ap = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -1
  %wide.load = load <2 x i8>, ptr %i.au, align 1, !tbaa !45, !alias.scope !1380
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -1
  store <2 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !45, !alias.scope !1383, !noalias !1385
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aq
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %wide.load50 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !1388
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -8
  store <2 x i64> %wide.load50, ptr %i.ba, align 8, !alias.scope !1389, !noalias !1390
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph31.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %.lr.ph31.i ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bc = add nuw nsw i64 %indvars.iv33.i, 4294967295
  %i.bd = and i64 %i.bc, 4294967295               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !45
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bd
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv33.i
  %i.bj = load i64, ptr %i.bh, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.bk = icmp ult i8 %i.h, %indvars.i
  br i1 %i.bk, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1392

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %6 = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b, %.critedge.i
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %6, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.bl, align 1, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bn, align 8
  %i.bo = add i8 %i.c, 1
  store i8 %i.bo, ptr %i.b, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bp = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %4, align 8, !tbaa !179
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = atomicrmw sub ptr %i.br, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bv = load i64, ptr %1, align 8
  store i64 %i.bv, ptr %5, align 8
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1393, !nonnull !36 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !177   ; 10 uses
  %.not.not = icmp eq i8 %i.c, 7                  ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 8 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13, label %.lr.ph.i, !llvm.loop !1396

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 2 uses
  %i.i = icmp ugt i8 %i.c, %i.h
  br i1 %i.i, label %iter.check, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

iter.check:                                       ; preds = %.critedge.i
  %i.j = trunc i64 %indvars.iv.i to i8
  %i.k = xor i8 %i.j, -1
  %i.l = add i8 %i.c, %i.k                        ; 3 uses
  %i.m = zext i8 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %i.l, 7
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.o = trunc i64 %indvars.iv.i to i8
  %i.p = xor i8 %i.o, -1
  %i.q = add i8 %i.c, %i.p
  %i.r = zext i8 %i.c to i32
  %i.s = add nsw i32 %i.r, -1
  %i.t = zext i8 %i.q to i32
  %i.u = icmp ult i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph25.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.v = zext i8 %i.c to i64
  %i.w = add nuw nsw i64 %i.v, 4294967295
  %i.x = and i64 %i.w, 4294967295
  %i.y = sub nsw i64 %i.x, %wide.trip.count.i
  %diff.check = icmp ult i64 %i.y, 32
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i8 %i.l, 31
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 24
  %n.vec = and i64 %i.n, 480                      ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = sub i64 %wide.trip.count.i, %index      ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 4294967295
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -15
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !45
  %wide.load21 = load <16 x i8>, ptr %i.af, align 1, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -15
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -31
  store <16 x i8> %wide.load, ptr %i.ah, align 1, !tbaa !45
  store <16 x i8> %wide.load21, ptr %i.ai, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.n, 504                    ; 3 uses
  %i.ak = sub nsw i64 %wide.trip.count.i, %n.vec23
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.al = sub i64 %wide.trip.count.i, %index24    ; 2 uses
  %i.am = add nuw nsw i64 %i.al, 4294967295
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -7
  %wide.load25 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  store <8 x i8> %wide.load25, ptr %i.ar, align 1, !tbaa !45
  %index.next26 = add nuw i64 %index24, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.n, %n.vec23
  br i1 %cmp.n27, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %wide.trip.count.i, %iter.check ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph25.i ], [ %indvars.iv27.i.ph, %.lr.ph25.i.preheader ] ; 3 uses
  %i.at = add nuw nsw i64 %indvars.iv27.i, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv27.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !45
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next28.i to i8
  %i.ay = icmp ult i8 %i.h, %indvars.i
  br i1 %i.ay, label %.lr.ph25.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, !llvm.loop !1400

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13: ; preds = %bb.c
  %5 = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit: ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13, %bb.b, %.critedge.i
  %.017.lcssa31.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %5, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %vec.epilog.middle.block ], [ %indvars.iv.i, %.lr.ph25.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa31.i
  store i8 %2, ptr %i.az, align 1, !tbaa !45
  %i.ba = add i8 %i.c, 1
  store i8 %i.ba, ptr %i.b, align 1, !tbaa !177
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit
  %i.bb = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %3, align 8, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit:  ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bh = load i64, ptr %1, align 8
  store i64 %i.bh, ptr %4, align 8
  call void @_ZN6duckdb10Node15Leaf13GrowNode7LeafERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @_ZN6duckdb10Node15Leaf10InsertByteERNS_3ARTERNS_4NodeEh(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_9Node7LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(433) %1, i64 %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %2, 56
  %i.b = trunc nuw i64 %i.a to i8
  %i.c = and i8 %i.b, 127
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.e = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = tail call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.c)
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129  ; 6 uses
  %i.j = and i64 %2, 4294967295                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1336, !noalias !1401
  %.not.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.m, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !305, !noalias !1401, !nonnull !36, !noundef !36 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !1401
  %i.p = icmp eq i64 %i.j, %i.o
  br i1 %i.p, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.c, !llvm.loop !1337

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1338, !noalias !1401 ; 2 uses
  %i.t = urem i64 %i.j, %i.s                      ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !1339, !noalias !1401
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !309, !noalias !1401, !nonnull !36, !noundef !36
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !305, !noalias !1401 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19, !noalias !1401
  %i.aa = icmp eq i64 %i.j, %i.z
  br i1 %i.aa, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.d ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !305, !noalias !1401, !nonnull !36, !noundef !36 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19, !noalias !1401 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.s
  %.not19.i.i.i.i.i = icmp eq i64 %i.ae, %i.t
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.af = icmp eq i64 %i.j, %i.ad
  br i1 %i.af, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1340

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.x, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ag = lshr i64 %2, 32
  %i.ah = and i64 %i.ag, 16777215
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1341, !noalias !1401
  %i.ak = mul i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1342, !noalias !1401
  %i.an = add i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ap = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao), !noalias !1401
  tail call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.ap, i64 noundef %i.an)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1404
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !1405
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !179
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 3 uses
  %i.av = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.av) #31
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.e
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %.noexc
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #30 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !179
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i8 1, ptr %i.az, align 8, !tbaa !1343
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
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !179
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
define void @_ZN6duckdb10Node15Leaf13GrowNode7LeafERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.654", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::NodeHandle.657", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  call void @_ZN6duckdb10NodeHandleINS_9Node7LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1393, !nonnull !36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129, !noalias !1406
  %i.g = invoke i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.f)
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %.noexc
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = or disjoint i64 %i.h, 648518346341351424 ; 2 uses
  store i64 %i.i, ptr %1, align 8, !tbaa !131, !noalias !1406
  invoke void @_ZN6duckdb10NodeHandleINS_8BaseLeafILh15ELNS_5NTypeE9EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.i)
          to label %.sink.split.i unwind label %bb.h

.sink.split.i:                                    ; preds = %.noexc21
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183, !alias.scope !1406, !nonnull !36 ; 3 uses
  store i8 0, ptr %i.k, align 1, !tbaa !186
  %i.l = load i64, ptr %2, align 8, !tbaa !131
  %i.m = load i64, ptr %1, align 8
  %i.n = and i64 %i.m, 9223372036854775807
  %masksel = and i64 %i.l, -9223372036854775808
  %.sink.i = or disjoint i64 %i.n, %masksel
  store i64 %.sink.i, ptr %1, align 8, !tbaa !131
  %i.o = load i8, ptr %i.b, align 1, !tbaa !177   ; 2 uses
  store i8 %i.o, ptr %i.k, align 1, !tbaa !186
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.sink.split.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.sink.split.i
  %i.r = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseLeafILh15ELNS_5NTypeE9EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %4, align 8, !tbaa !179
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseLeafILh15ELNS_5NTypeE9EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseLeafILh15ELNS_5NTypeE9EEEED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.x = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i23 = icmp eq ptr %i.x, null
  br i1 %.not.i.i23, label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseLeafILh15ELNS_5NTypeE9EEEED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %3, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit:  ; preds = %_ZN6duckdb10NodeHandleINS_8BaseLeafILh15ELNS_5NTypeE9EEEED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ad = load i64, ptr %2, align 8, !tbaa !131
  %i.ae = lshr i64 %i.ad, 56
  %i.af = trunc nuw i64 %i.ae to i8
  %i.ag = and i8 %i.af, 127
  %i.ah = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.ai = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.ag)
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !129
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !19
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.al, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %2, align 8, !tbaa !131
  ret void

bb.h:                                             ; preds = %.noexc21, %.noexc, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.am

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i8, ptr %i.b, align 1, !tbaa !177
  %i.ar = zext i8 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.i, label %._crit_edge, !llvm.loop !1409
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10Node15Leaf10InsertByteERNS_3ARTERNS_4NodeEh(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.658", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::NodeHandle.656", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_10Node15LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1410, !nonnull !36 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !186   ; 10 uses
  %.not.not = icmp eq i8 %i.c, 15                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 8 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13, label %.lr.ph.i, !llvm.loop !1413

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 2 uses
  %i.i = icmp ugt i8 %i.c, %i.h
  br i1 %i.i, label %iter.check, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit

iter.check:                                       ; preds = %.critedge.i
  %i.j = trunc i64 %indvars.iv.i to i8
  %i.k = xor i8 %i.j, -1
  %i.l = add i8 %i.c, %i.k                        ; 3 uses
  %i.m = zext i8 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %i.l, 7
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.o = trunc i64 %indvars.iv.i to i8
  %i.p = xor i8 %i.o, -1
  %i.q = add i8 %i.c, %i.p
  %i.r = zext i8 %i.c to i32
  %i.s = add nsw i32 %i.r, -1
  %i.t = zext i8 %i.q to i32
  %i.u = icmp ult i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph25.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.v = zext i8 %i.c to i64
  %i.w = add nuw nsw i64 %i.v, 4294967295
  %i.x = and i64 %i.w, 4294967295
  %i.y = sub nsw i64 %i.x, %wide.trip.count.i
  %diff.check = icmp ult i64 %i.y, 32
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i8 %i.l, 31
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 24
  %n.vec = and i64 %i.n, 480                      ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = sub i64 %wide.trip.count.i, %index      ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 4294967295
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -15
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !45
  %wide.load21 = load <16 x i8>, ptr %i.af, align 1, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -15
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -31
  store <16 x i8> %wide.load, ptr %i.ah, align 1, !tbaa !45
  store <16 x i8> %wide.load21, ptr %i.ai, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.n, 504                    ; 3 uses
  %i.ak = sub nsw i64 %wide.trip.count.i, %n.vec23
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.al = sub i64 %wide.trip.count.i, %index24    ; 2 uses
  %i.am = add nuw nsw i64 %i.al, 4294967295
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -7
  %wide.load25 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  store <8 x i8> %wide.load25, ptr %i.ar, align 1, !tbaa !45
  %index.next26 = add nuw i64 %index24, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.n, %n.vec23
  br i1 %cmp.n27, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %wide.trip.count.i, %iter.check ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph25.i ], [ %indvars.iv27.i.ph, %.lr.ph25.i.preheader ] ; 3 uses
  %i.at = add nuw nsw i64 %indvars.iv27.i, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv27.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !45
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next28.i to i8
  %i.ay = icmp ult i8 %i.h, %indvars.i
  br i1 %i.ay, label %.lr.ph25.i, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, !llvm.loop !1416

_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13: ; preds = %bb.c
  %6 = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit: ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13, %bb.b, %.critedge.i
  %.017.lcssa31.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %6, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %vec.epilog.middle.block ], [ %indvars.iv.i, %.lr.ph25.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa31.i
  store i8 %2, ptr %i.az, align 1, !tbaa !45
  %i.ba = add i8 %i.c, 1
  store i8 %i.ba, ptr %i.b, align 1, !tbaa !186
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit
  %i.bb = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %4, align 8, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit: ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bh = load i64, ptr %1, align 8
  store i64 %i.bh, ptr %5, align 8
  call void @_ZN6duckdb11Node256Leaf14GrowNode15LeafERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_11Node256LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !191, !nonnull !36, !align !37 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !194
  %i.bl = add i16 %i.bk, 1
  store i16 %i.bl, ptr %i.bj, align 8, !tbaa !194
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = zext i8 %2 to i64                       ; 2 uses
  %i.bo = lshr i64 %i.bn, 6
  %i.bp = and i64 %i.bn, 63
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bo ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !19
  %i.bt = or i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !19
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %3, align 8, !tbaa !179
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = atomicrmw sub ptr %i.bv, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit

bb.k:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #33
  unreachable

_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit: ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit, %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9Node7Leaf10DeleteByteERNS_3ARTERNS_4NodeES4_hRKNS_6ARTKeyE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::NodeHandle.655", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !noalias !1417
  call void @_ZN6duckdb10NodeHandleINS_8BaseLeafILh7ELNS_5NTypeE8EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171, !alias.scope !1417, !nonnull !36 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.d = load i8, ptr %i.b, align 1, !tbaa !177   ; 4 uses
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i8 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp eq i8 %i.f, %3
  br i1 %i.g, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1420

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit.i, %bb.a
  %.017.lcssa.i = phi i8 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = add i8 %i.d, -1                          ; 4 uses
  store i8 %i.i, ptr %i.b, align 1, !tbaa !177
  %i.j = icmp ult i8 %.017.lcssa.i, %i.i
  br i1 %i.j, label %iter.check, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18DeleteByteInternalERNS_3ARTERNS_4NodeEh.exit

iter.check:                                       ; preds = %._crit_edge.i
  %i.k = zext i8 %.017.lcssa.i to i64             ; 6 uses
  %wide.trip.count33.i = zext i8 %i.i to i64      ; 2 uses
  %i.l = sub nsw i64 %wide.trip.count33.i, %i.k   ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 24
  %n.vec = and i64 %i.l, -32                      ; 4 uses
  %i.m = add nsw i64 %n.vec, %i.k
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %gep, i64 17
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !45
  %wide.load30 = load <16 x i8>, ptr %i.o, align 1, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !45
  store <16 x i8> %wide.load30, ptr %i.p, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18DeleteByteInternalERNS_3ARTERNS_4NodeEh.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.l, -8                     ; 3 uses
  %i.r = add nsw i64 %n.vec32, %i.k
  %invariant.gep40 = getelementptr i8, ptr %i.c, i64 %i.k
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 2 uses
  %gep41 = getelementptr i8, ptr %invariant.gep40, i64 %index33 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %gep41, i64 1
  %wide.load34 = load <8 x i8>, ptr %i.s, align 1, !tbaa !45
  store <8 x i8> %wide.load34, ptr %gep41, align 1, !tbaa !45
  %index.next35 = add nuw i64 %index33, 8         ; 2 uses
  %i.t = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1422

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.l, %n.vec32
  br i1 %cmp.n36, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18DeleteByteInternalERNS_3ARTERNS_4NodeEh.exit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv30.i.ph = phi i64 [ %i.k, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %vec.epilog.scalar.ph ], [ %indvars.iv30.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv30.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !45
  store i8 %i.w, ptr %i.u, align 1, !tbaa !45
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18DeleteByteInternalERNS_3ARTERNS_4NodeEh.exit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1423

end_hunk_0
begin_hunk_1_@_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE:bb.a
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.aw, %bb.f ]
  tail call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_5Node4EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !179
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1376, !nonnull !36, !align !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129, !noalias !1465
  %i.g = invoke i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.f)
          to label %.noexc25 unwind label %bb.h

.noexc25:                                         ; preds = %.noexc
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = or disjoint i64 %i.h, 288230376151711744 ; 2 uses
  store i64 %i.i, ptr %1, align 8, !tbaa !131, !noalias !1465
  invoke void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.i)
          to label %.sink.split.i unwind label %bb.h

.sink.split.i:                                    ; preds = %.noexc25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !208, !alias.scope !1465, !nonnull !36, !align !37 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, i8 0, i64 128, i1 false), !tbaa !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.k, i8 0, i64 17, i1 false)
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !208, !nonnull !36, !align !37 ; 3 uses
  %i.n = load i64, ptr %2, align 8, !tbaa !131
  %i.o = load i64, ptr %1, align 8
  %i.p = and i64 %i.o, 9223372036854775807
  %masksel = and i64 %i.n, -9223372036854775808
  %.sink.i = or disjoint i64 %i.p, %masksel
  store i64 %.sink.i, ptr %1, align 8, !tbaa !131
  %i.q = load i8, ptr %i.b, align 8, !tbaa !203   ; 2 uses
  store i8 %i.q, ptr %i.m, align 8, !tbaa !901
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.sink.split.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.sink.split.i
  %i.v = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %4, align 8, !tbaa !179
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
  %i.ab = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i27 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i27, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %3, align 8, !tbaa !179
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
  %i.ah = load i64, ptr %2, align 8, !tbaa !131
  %i.ai = lshr i64 %i.ah, 56
  %i.aj = trunc nuw i64 %i.ai to i8
  %i.ak = and i8 %i.aj, 127
  %i.al = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.am = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.ak)
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !129
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !19
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.ap, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %2, align 8, !tbaa !131
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
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1, !tbaa !45
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i8, ptr %i.b, align 8, !tbaa !203
  %i.ay = zext i8 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.i, label %._crit_edge, !llvm.loop !1468
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1469, !nonnull !36, !align !37 ; 13 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !901   ; 11 uses
  %.not.not = icmp eq i8 %i.c, 16                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1472

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 2 uses
  %i.i = icmp ugt i8 %i.c, %i.h
  br i1 %i.i, label %.lr.ph31.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit

.lr.ph31.i:                                       ; preds = %.critedge.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.k = trunc i64 %indvars.iv.i to i8
  %i.l = xor i8 %i.k, -1
  %i.m = add i8 %i.c, %i.l                        ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.m, 61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph31.i
  %i.p = trunc i64 %indvars.iv.i to i8
  %i.q = xor i8 %i.p, -1
  %i.r = add i8 %i.c, %i.q
  %i.s = zext i8 %i.c to i32
  %i.t = add nsw i32 %i.s, -1
  %i.u = zext i8 %i.r to i32
  %i.v = icmp ult i32 %i.t, %i.u
  br i1 %i.v, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.w = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep = getelementptr i8, ptr %i.w, i64 1
  %i.x = trunc i64 %indvars.iv.i to i8
  %i.y = xor i8 %i.x, -1
  %i.z = add i8 %i.c, %i.y
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = sub nsw i64 0, %i.aa                    ; 2 uses
  %scevgep24.a = getelementptr i8, ptr %scevgep, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep25.a = getelementptr i8, ptr %i.ac, i64 2 ; 3 uses
  %i.ad = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep26.a = getelementptr i8, ptr %i.ae, i64 24
  %i.af = mul nsw i64 %i.aa, -8                   ; 2 uses
  %scevgep27.a = getelementptr i8, ptr %scevgep26.a, i64 %i.af ; 3 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep28.a = getelementptr i8, ptr %i.ag, i64 32 ; 3 uses
  %i.ah = zext i8 %i.c to i64
  %i.ai = add nuw nsw i64 %i.ah, 4294967295
  %i.aj = and i64 %i.ai, 4294967295               ; 3 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep29.a = getelementptr i8, ptr %i.ak, i64 1
  %scevgep30.a = getelementptr i8, ptr %scevgep29.a, i64 %i.ab ; 2 uses
  %i.al = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep31.a = getelementptr i8, ptr %i.al, i64 2 ; 2 uses
  %i.am = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep32.a = getelementptr i8, ptr %i.an, i64 24
  %scevgep33 = getelementptr i8, ptr %scevgep32.a, i64 %i.af ; 2 uses
  %i.ao = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep34 = getelementptr i8, ptr %i.ao, i64 32 ; 2 uses
  %bound0 = icmp ult ptr %scevgep24.a, %scevgep28.a
  %bound1 = icmp ult ptr %scevgep27.a, %scevgep25.a
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %scevgep24.a, %scevgep31.a
  %bound136 = icmp ult ptr %scevgep30.a, %scevgep25.a
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  %bound038 = icmp ult ptr %scevgep24.a, %scevgep34
  %bound139 = icmp ult ptr %scevgep33, %scevgep25.a
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  %bound042 = icmp ult ptr %scevgep27.a, %scevgep31.a
  %bound143 = icmp ult ptr %scevgep30.a, %scevgep28.a
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  %bound046 = icmp ult ptr %scevgep27.a, %scevgep34
  %bound147 = icmp ult ptr %scevgep33, %scevgep28.a
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx45, %found.conflict48
  br i1 %conflict.rdx49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 510                      ; 3 uses
  %i.ap = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -1
  %wide.load = load <2 x i8>, ptr %i.au, align 1, !tbaa !45, !alias.scope !1473
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -1
  store <2 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !45, !alias.scope !1476, !noalias !1478
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aq
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %wide.load50 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !1481
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -8
  store <2 x i64> %wide.load50, ptr %i.ba, align 8, !alias.scope !1482, !noalias !1483
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph31.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %.lr.ph31.i ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bc = add nuw nsw i64 %indvars.iv33.i, 4294967295
  %i.bd = and i64 %i.bc, 4294967295               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !45
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bd
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv33.i
  %i.bj = load i64, ptr %i.bh, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.bk = icmp ult i8 %i.h, %indvars.i
  br i1 %i.bk, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1485

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %6 = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b, %.critedge.i
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %6, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.bl, align 1, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bn, align 8
  %i.bo = add i8 %i.c, 1
  store i8 %i.bo, ptr %i.b, align 8, !tbaa !901
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bp = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %4, align 8, !tbaa !179
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = atomicrmw sub ptr %i.br, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #33
  unreachable

_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit:     ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bv = load i64, ptr %1, align 8
  store i64 %i.bv, ptr %5, align 8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !noalias !1486
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200, !alias.scope !1486, !nonnull !36, !align !37 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 9 uses
  %i.d = load i8, ptr %i.b, align 8, !tbaa !203   ; 3 uses
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i8 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp eq i8 %i.f, %3
  br i1 %i.g, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1489

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
  %i.l = load i8, ptr %i.b, align 8, !tbaa !203
  %i.m = add i8 %i.l, -1                          ; 3 uses
  store i8 %i.m, ptr %i.b, align 8, !tbaa !203
  %i.n = icmp ult i8 %.026.lcssa.i, %i.m
  br i1 %i.n, label %.lr.ph33.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit

.lr.ph33.i:                                       ; preds = %bb.c
  %wide.trip.count39.i = zext i8 %i.m to i64      ; 7 uses
  %i.o = sub nsw i64 %wide.trip.count39.i, %i.j   ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 50
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph33.i
  %i.p = getelementptr i8, ptr %i.b, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.p, i64 1    ; 3 uses
  %i.q = getelementptr i8, ptr %i.b, i64 %wide.trip.count39.i
  %scevgep27 = getelementptr i8, ptr %i.q, i64 1  ; 3 uses
  %i.r = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 %i.r
  %scevgep28 = getelementptr i8, ptr %i.s, i64 8  ; 3 uses
  %i.t = shl nuw nsw i64 %wide.trip.count39.i, 3  ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %scevgep29 = getelementptr i8, ptr %i.u, i64 8  ; 3 uses
  %i.v = getelementptr i8, ptr %i.b, i64 %i.j
  %scevgep30 = getelementptr i8, ptr %i.v, i64 2  ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %wide.trip.count39.i
  %scevgep31 = getelementptr i8, ptr %i.w, i64 2  ; 2 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.r
  %scevgep32 = getelementptr i8, ptr %i.x, i64 16 ; 2 uses
  %i.y = getelementptr i8, ptr %i.b, i64 %i.t
  %scevgep33 = getelementptr i8, ptr %i.y, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep29
  %bound1 = icmp ult ptr %scevgep28, %scevgep27
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %scevgep, %scevgep31
  %bound135 = icmp ult ptr %scevgep30, %scevgep27
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  %bound037 = icmp ult ptr %scevgep, %scevgep33
  %bound138 = icmp ult ptr %scevgep32, %scevgep27
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx40 = or i1 %conflict.rdx, %found.conflict39
  %bound041 = icmp ult ptr %scevgep28, %scevgep31
  %bound142 = icmp ult ptr %scevgep30, %scevgep29
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx40, %found.conflict43
  %bound045 = icmp ult ptr %scevgep28, %scevgep33
  %bound146 = icmp ult ptr %scevgep32, %scevgep29
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %i.z = add nsw i64 %n.vec, %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %index, %i.j                    ; 3 uses
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %wide.load = load <2 x i8>, ptr %i.ac, align 1, !tbaa !45, !alias.scope !1490
  %wide.load49 = load <2 x i8>, ptr %i.ad, align 1, !tbaa !45, !alias.scope !1490
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store <2 x i8> %wide.load, ptr %i.ae, align 1, !tbaa !45, !alias.scope !1493, !noalias !1495
  store <2 x i8> %wide.load49, ptr %i.af, align 1, !tbaa !45, !alias.scope !1493, !noalias !1495
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ab ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aa ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !1498
  %wide.load51 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !1498
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x i64> %wide.load50, ptr %i.ah, align 8, !alias.scope !1499, !noalias !1500
  store <2 x i64> %wide.load51, ptr %i.aj, align 8, !alias.scope !1499, !noalias !1500
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1501

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph33.i, %middle.block
  %indvars.iv36.i.ph = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph33.i ], [ %i.z, %middle.block ] ; 6 uses
  %i.al = sub nsw i64 %wide.trip.count39.i, %indvars.iv36.i.ph
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.am = add nuw nsw i64 %indvars.iv36.i.ph, 1   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv36.i.ph
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !45
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.am
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv36.i.ph
  %i.as = load i64, ptr %i.aq, align 8
  store i64 %i.as, ptr %i.ar, align 8
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv36.i.unr = phi i64 [ %indvars.iv36.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.at = add nsw i64 %wide.trip.count39.i, -1
  %i.au = icmp eq i64 %indvars.iv36.i.ph, %i.at
  br i1 %i.au, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, label %scalar.ph

bb.d:                                             ; preds = %._crit_edge.i
  %i.av = landingpad { ptr, i32 }
end_hunk_1
