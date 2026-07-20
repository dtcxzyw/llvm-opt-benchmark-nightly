inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
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
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.lr.ph31.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1379

.lr.ph31.i:                                       ; preds = %.lr.ph.i
  %6 = trunc nuw i64 %indvars.iv.i to i8          ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %7 = add i8 %i.c, -1
  %8 = call i8 @llvm.umin.i8(i8 %6, i8 %7)
  %i.i = xor i8 %8, -1
  %i.j = add i8 %i.c, %i.i                        ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.j, 57
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph31.i
  %9 = add i8 %i.c, -1
  %10 = call i8 @llvm.usub.sat.i8(i8 %9, i8 %6)
  %i.m = zext i8 %i.c to i32
  %i.n = add nsw i32 %i.m, -1
  %i.o = zext i8 %10 to i32
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.q = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep = getelementptr i8, ptr %i.q, i64 1
  %11 = add i8 %i.c, -1
  %12 = call i8 @llvm.usub.sat.i8(i8 %11, i8 %6)
  %i.r = zext i8 %12 to i64                       ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  %scevgep22 = getelementptr i8, ptr %scevgep, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep23 = getelementptr i8, ptr %i.t, i64 2  ; 3 uses
  %i.u = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  %i.v = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep24 = getelementptr i8, ptr %i.v, i64 8
  %i.w = mul nsw i64 %i.r, -8                     ; 2 uses
  %scevgep25 = getelementptr i8, ptr %scevgep24, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep26 = getelementptr i8, ptr %i.x, i64 16 ; 3 uses
  %i.y = zext i8 %i.c to i64
  %i.z = add nuw nsw i64 %i.y, 4294967295
  %i.aa = and i64 %i.z, 4294967295                ; 3 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %scevgep27 = getelementptr i8, ptr %i.ab, i64 1
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.s ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 %i.aa
  %scevgep29 = getelementptr i8, ptr %i.ac, i64 2 ; 2 uses
  %i.ad = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep30 = getelementptr i8, ptr %i.ae, i64 8
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.w ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep32 = getelementptr i8, ptr %i.af, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %scevgep22, %scevgep26
  %bound1 = icmp ult ptr %scevgep25, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %scevgep22, %scevgep29
  %bound134 = icmp ult ptr %scevgep28, %scevgep23
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %bound036 = icmp ult ptr %scevgep22, %scevgep32
  %bound137 = icmp ult ptr %scevgep31, %scevgep23
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  %bound040 = icmp ult ptr %scevgep25, %scevgep29
  %bound141 = icmp ult ptr %scevgep28, %scevgep26
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  %bound044 = icmp ult ptr %scevgep25, %scevgep32
  %bound145 = icmp ult ptr %scevgep31, %scevgep26
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  br i1 %conflict.rdx47, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 510                      ; 3 uses
  %i.ag = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %i.ai = add nuw nsw i64 %i.ah, 4294967295
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1
  %wide.load = load <2 x i8>, ptr %i.al, align 1, !tbaa !45, !alias.scope !1380
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  store <2 x i8> %wide.load, ptr %i.an, align 1, !tbaa !45, !alias.scope !1383, !noalias !1385
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %wide.load48 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !1388
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store <2 x i64> %wide.load48, ptr %i.ar, align 8, !alias.scope !1389, !noalias !1390
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph31.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %.lr.ph31.i ], [ %i.ag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = add nuw nsw i64 %indvars.iv33.i, 4294967295
  %i.au = and i64 %i.at, 4294967295               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !45
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.au
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv33.i
  %i.ba = load i64, ptr %i.ay, align 8
  store i64 %i.ba, ptr %i.az, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.bb = icmp ult i8 %6, %indvars.i
  br i1 %i.bb, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1392

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.bc = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.bc, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.bd, align 1, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bf, align 8
  %i.bg = add i8 %i.c, 1
  store i8 %i.bg, ptr %i.b, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bh = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %4, align 8, !tbaa !179
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bn = load i64, ptr %1, align 8
  store i64 %i.bn, ptr %5, align 8
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
  %i.c = load i8, ptr %i.b, align 1, !tbaa !177   ; 9 uses
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
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %iter.check

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13, label %.lr.ph.i, !llvm.loop !1396

iter.check:                                       ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 3 uses
  %5 = add i8 %i.c, -1
  %6 = call i8 @llvm.usub.sat.i8(i8 %5, i8 %i.h)  ; 3 uses
  %i.i = zext i8 %6 to i64
  %i.j = add nuw nsw i64 %i.i, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %6, 7
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %7 = add i8 %i.c, -1
  %8 = call i8 @llvm.usub.sat.i8(i8 %7, i8 %i.h)
  %i.k = zext i8 %i.c to i32
  %i.l = add nsw i32 %i.k, -1
  %i.m = zext i8 %8 to i32
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph25.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.o = zext i8 %i.c to i64
  %i.p = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %i.p, 4294967295
  %i.r = sub nsw i64 %wide.trip.count.i, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i8 %6, 31
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 24
  %n.vec = and i64 %i.j, 480                      ; 4 uses
  %i.s = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %wide.trip.count.i, %index       ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 4294967295
  %i.v = and i64 %i.u, 4294967295
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -15
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -31
  %wide.load = load <16 x i8>, ptr %i.x, align 1, !tbaa !45
  %wide.load19 = load <16 x i8>, ptr %i.y, align 1, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -15
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -31
  store <16 x i8> %wide.load, ptr %i.aa, align 1, !tbaa !45
  store <16 x i8> %wide.load19, ptr %i.ab, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.j, 504                    ; 3 uses
  %i.ad = sub nsw i64 %wide.trip.count.i, %n.vec21
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = sub i64 %wide.trip.count.i, %index22    ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 4294967295
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -7
  %wide.load23 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ae
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -7
  store <8 x i8> %wide.load23, ptr %i.ak, align 1, !tbaa !45
  %index.next24 = add nuw i64 %index22, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.j, %n.vec21
  br i1 %cmp.n25, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %wide.trip.count.i, %iter.check ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph25.i ], [ %indvars.iv27.i.ph, %.lr.ph25.i.preheader ] ; 3 uses
  %i.am = add nuw nsw i64 %indvars.iv27.i, 4294967295
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv27.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !45
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next28.i to i8
  %i.ar = icmp ult i8 %i.h, %indvars.i
  br i1 %i.ar, label %.lr.ph25.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, !llvm.loop !1400

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13: ; preds = %bb.c
  %i.as = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit: ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13, %bb.b
  %.017.lcssa31.i = phi i64 [ 0, %bb.b ], [ %i.as, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %vec.epilog.middle.block ], [ %indvars.iv.i, %.lr.ph25.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa31.i
  store i8 %2, ptr %i.at, align 1, !tbaa !45
  %i.au = add i8 %i.c, 1
  store i8 %i.au, ptr %i.b, align 1, !tbaa !177
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit
  %i.av = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %3, align 8, !tbaa !179
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #33
  unreachable

_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit:  ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bb = load i64, ptr %1, align 8
  store i64 %i.bb, ptr %4, align 8
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
  %i.m = load i64, ptr %1, align 8, !tbaa !131
  %i.n = and i64 %i.m, 9223372036854775807
  %masksel = and i64 %i.l, -9223372036854775808
  %.sink.i = or disjoint i64 %i.n, %masksel
  store i64 %.sink.i, ptr %1, align 8, !tbaa !131
  %i.o = load i8, ptr %i.b, align 1, !tbaa !177   ; 2 uses
  store i8 %i.o, ptr %i.k, align 1, !tbaa !186
  %.not25 = icmp eq i8 %i.o, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

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
  %i.c = load i8, ptr %i.b, align 1, !tbaa !186   ; 9 uses
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
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %iter.check

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13, label %.lr.ph.i, !llvm.loop !1413

iter.check:                                       ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 3 uses
  %6 = add i8 %i.c, -1
  %7 = call i8 @llvm.usub.sat.i8(i8 %6, i8 %i.h)  ; 3 uses
  %i.i = zext i8 %7 to i64
  %i.j = add nuw nsw i64 %i.i, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %7, 7
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %8 = add i8 %i.c, -1
  %9 = call i8 @llvm.usub.sat.i8(i8 %8, i8 %i.h)
  %i.k = zext i8 %i.c to i32
  %i.l = add nsw i32 %i.k, -1
  %i.m = zext i8 %9 to i32
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph25.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.o = zext i8 %i.c to i64
  %i.p = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %i.p, 4294967295
  %i.r = sub nsw i64 %wide.trip.count.i, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i8 %7, 31
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 24
  %n.vec = and i64 %i.j, 480                      ; 4 uses
  %i.s = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %wide.trip.count.i, %index       ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 4294967295
  %i.v = and i64 %i.u, 4294967295
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -15
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -31
  %wide.load = load <16 x i8>, ptr %i.x, align 1, !tbaa !45
  %wide.load19 = load <16 x i8>, ptr %i.y, align 1, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -15
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -31
  store <16 x i8> %wide.load, ptr %i.aa, align 1, !tbaa !45
  store <16 x i8> %wide.load19, ptr %i.ab, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.j, 504                    ; 3 uses
  %i.ad = sub nsw i64 %wide.trip.count.i, %n.vec21
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = sub i64 %wide.trip.count.i, %index22    ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 4294967295
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -7
  %wide.load23 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ae
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -7
  store <8 x i8> %wide.load23, ptr %i.ak, align 1, !tbaa !45
  %index.next24 = add nuw i64 %index22, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.j, %n.vec21
  br i1 %cmp.n25, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %wide.trip.count.i, %iter.check ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph25.i ], [ %indvars.iv27.i.ph, %.lr.ph25.i.preheader ] ; 3 uses
  %i.am = add nuw nsw i64 %indvars.iv27.i, 4294967295
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv27.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !45
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next28.i to i8
  %i.ar = icmp ult i8 %i.h, %indvars.i
  br i1 %i.ar, label %.lr.ph25.i, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, !llvm.loop !1416

_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13: ; preds = %bb.c
  %i.as = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit: ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13, %bb.b
  %.017.lcssa31.i = phi i64 [ 0, %bb.b ], [ %i.as, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %vec.epilog.middle.block ], [ %indvars.iv.i, %.lr.ph25.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa31.i
  store i8 %2, ptr %i.at, align 1, !tbaa !45
  %i.au = add i8 %i.c, 1
  store i8 %i.au, ptr %i.b, align 1, !tbaa !186
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit
  %i.av = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %4, align 8, !tbaa !179
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #33
  unreachable

_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit: ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bb = load i64, ptr %1, align 8
  store i64 %i.bb, ptr %5, align 8
  call void @_ZN6duckdb11Node256Leaf14GrowNode15LeafERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_11Node256LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !191, !nonnull !36, !align !37 ; 3 uses
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !194
  %i.bf = add i16 %i.be, 1
  store i16 %i.bf, ptr %i.bd, align 8, !tbaa !194
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = zext i8 %2 to i64                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = and i64 %i.bh, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !19
  %i.bn = or i64 %i.bm, %i.bk
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !19
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr %3, align 8, !tbaa !179
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit

bb.k:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
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
  %i.o = load i64, ptr %1, align 8, !tbaa !131
  %i.p = and i64 %i.o, 9223372036854775807
  %masksel = and i64 %i.n, -9223372036854775808
  %.sink.i = or disjoint i64 %i.p, %masksel
  store i64 %.sink.i, ptr %1, align 8, !tbaa !131
  %i.q = load i8, ptr %i.b, align 8, !tbaa !203   ; 2 uses
  store i8 %i.q, ptr %i.m, align 8, !tbaa !901
  %.not29 = icmp eq i8 %i.q, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

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
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.lr.ph31.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1472

.lr.ph31.i:                                       ; preds = %.lr.ph.i
  %6 = trunc nuw i64 %indvars.iv.i to i8          ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %7 = add i8 %i.c, -1
  %8 = call i8 @llvm.umin.i8(i8 %6, i8 %7)
  %i.i = xor i8 %8, -1
  %i.j = add i8 %i.c, %i.i                        ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.j, 57
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph31.i
  %9 = add i8 %i.c, -1
  %10 = call i8 @llvm.usub.sat.i8(i8 %9, i8 %6)
  %i.m = zext i8 %i.c to i32
  %i.n = add nsw i32 %i.m, -1
  %i.o = zext i8 %10 to i32
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.q = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep = getelementptr i8, ptr %i.q, i64 1
  %11 = add i8 %i.c, -1
  %12 = call i8 @llvm.usub.sat.i8(i8 %11, i8 %6)
  %i.r = zext i8 %12 to i64                       ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  %scevgep22 = getelementptr i8, ptr %scevgep, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep23 = getelementptr i8, ptr %i.t, i64 2  ; 3 uses
  %i.u = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  %i.v = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep24 = getelementptr i8, ptr %i.v, i64 24
  %i.w = mul nsw i64 %i.r, -8                     ; 2 uses
  %scevgep25 = getelementptr i8, ptr %scevgep24, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep26 = getelementptr i8, ptr %i.x, i64 32 ; 3 uses
  %i.y = zext i8 %i.c to i64
  %i.z = add nuw nsw i64 %i.y, 4294967295
  %i.aa = and i64 %i.z, 4294967295                ; 3 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %scevgep27 = getelementptr i8, ptr %i.ab, i64 1
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.s ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 %i.aa
  %scevgep29 = getelementptr i8, ptr %i.ac, i64 2 ; 2 uses
  %i.ad = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep30 = getelementptr i8, ptr %i.ae, i64 24
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.w ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep32 = getelementptr i8, ptr %i.af, i64 32 ; 2 uses
  %bound0 = icmp ult ptr %scevgep22, %scevgep26
  %bound1 = icmp ult ptr %scevgep25, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %scevgep22, %scevgep29
  %bound134 = icmp ult ptr %scevgep28, %scevgep23
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %bound036 = icmp ult ptr %scevgep22, %scevgep32
  %bound137 = icmp ult ptr %scevgep31, %scevgep23
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  %bound040 = icmp ult ptr %scevgep25, %scevgep29
  %bound141 = icmp ult ptr %scevgep28, %scevgep26
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  %bound044 = icmp ult ptr %scevgep25, %scevgep32
  %bound145 = icmp ult ptr %scevgep31, %scevgep26
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  br i1 %conflict.rdx47, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 510                      ; 3 uses
  %i.ag = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %i.ai = add nuw nsw i64 %i.ah, 4294967295
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1
  %wide.load = load <2 x i8>, ptr %i.al, align 1, !tbaa !45, !alias.scope !1473
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  store <2 x i8> %wide.load, ptr %i.an, align 1, !tbaa !45, !alias.scope !1476, !noalias !1478
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %wide.load48 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !1481
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store <2 x i64> %wide.load48, ptr %i.ar, align 8, !alias.scope !1482, !noalias !1483
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph31.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %.lr.ph31.i ], [ %i.ag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.at = add nuw nsw i64 %indvars.iv33.i, 4294967295
  %i.au = and i64 %i.at, 4294967295               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !45
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.au
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv33.i
  %i.ba = load i64, ptr %i.ay, align 8
  store i64 %i.ba, ptr %i.az, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.bb = icmp ult i8 %6, %indvars.i
  br i1 %i.bb, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1485

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.bc = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.bc, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.bd, align 1, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bf, align 8
  %i.bg = add i8 %i.c, 1
  store i8 %i.bg, ptr %i.b, align 8, !tbaa !901
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bh = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %4, align 8, !tbaa !179
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #33
  unreachable

_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit:     ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bn = load i64, ptr %1, align 8
  store i64 %i.bn, ptr %5, align 8
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
end_hunk_1
begin_hunk_2_@_ZNSt5dequeIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE17_M_reallocate_mapEmb:bb.a
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE15_M_allocate_mapEm.exit, !prof !125

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #32 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !147

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryES8_ET0_T_SA_S9_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryES8_ET0_T_SA_S9_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !1631
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !1631
  br label %_ZSt4copyIPPN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryES8_ET0_T_SA_S9_.exit24

_ZSt4copyIPPN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryES8_ET0_T_SA_S9_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1650
  tail call void @_ZdlPv(ptr noundef %i.bc) #29
  store ptr %i.aq, ptr %0, align 8, !tbaa !1650
  store i64 %i.am, ptr %i.k, align 8, !tbaa !1914
  br label %_ZSt4copyIPPN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryES8_ET0_T_SA_S9_.exit

_ZSt4copyIPPN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryES8_ET0_T_SA_S9_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryES8_ET0_T_SA_S9_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryES8_ET0_T_SA_S9_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !1630
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !1631 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !1626
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !1636
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !1630
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1631 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !1626
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !1636
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrIKNS_6ARTKeyELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.26", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1098
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17ConstPrefixHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt15_Deque_iteratorIN6duckdb10ARTBuilder9NodeEntryERS2_PS2_E", !9, i64 0, !9, i64 8, !9, i64 16, !11, i64 24}
!9 = !{!"p1 _ZTSN6duckdb10ARTBuilder9NodeEntryE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p2 _ZTSN6duckdb10ARTBuilder9NodeEntryE", !12, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!8, !9, i64 8}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNSt5dequeIN6duckdb10ARTBuilder9NodeEntryESaIS2_EE3endEv: argument 0"}
!16 = distinct !{!16, !"_ZNSt5dequeIN6duckdb10ARTBuilder9NodeEntryESaIS2_EE3endEv"}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSN6duckdb4NodeE", !10, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!8, !11, i64 24}
!22 = !{!9, !9, i64 0}
!23 = !{!24, !11, i64 72}
!24 = !{!"_ZTSNSt11_Deque_baseIN6duckdb10ARTBuilder9NodeEntryESaIS2_EE16_Deque_impl_dataE", !11, i64 0, !20, i64 8, !8, i64 16, !8, i64 48}
!25 = !{!8, !9, i64 16}
!26 = !{!24, !9, i64 48}
!27 = !{!28, !31, i64 16}
!28 = !{!"_ZTSN6duckdb10ARTBuilderE", !29, i64 0, !30, i64 8, !31, i64 16, !31, i64 24, !32, i64 32}
!29 = !{!"p1 _ZTSN6duckdb14ArenaAllocatorE", !10, i64 0}
!30 = !{!"p1 _ZTSN6duckdb3ARTE", !10, i64 0}
!31 = !{!"p1 _ZTSN6duckdb6vectorINS_6ARTKeyELb0ESaIS1_EEE", !10, i64 0}
!32 = !{!"_ZTSSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE", !33, i64 0}
!33 = !{!"_ZTSSt5dequeIN6duckdb10ARTBuilder9NodeEntryESaIS2_EE", !34, i64 0}
!34 = !{!"_ZTSSt11_Deque_baseIN6duckdb10ARTBuilder9NodeEntryESaIS2_EE", !35, i64 0}
!35 = !{!"_ZTSNSt11_Deque_baseIN6duckdb10ARTBuilder9NodeEntryESaIS2_EE11_Deque_implE", !24, i64 0}
!36 = !{}
!37 = !{i64 8}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6ARTKeyESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSN6duckdb6ARTKeyE", !10, i64 0}
!41 = !{!42, !20, i64 0}
!42 = !{!"_ZTSN6duckdb6ARTKeyE", !20, i64 0, !43, i64 8}
!43 = !{!"p1 omnipotent char", !10, i64 0}
!44 = !{!42, !43, i64 8}
!45 = !{!5, !5, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!28, !30, i64 8}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !6, i64 0}
!51 = distinct !{null}
!52 = !{!53, !5, i64 432}
!53 = !{!"_ZTSN6duckdb3ARTE", !54, i64 0, !111, i64 392, !113, i64 400, !119, i64 416, !120, i64 424, !5, i64 432}
!54 = !{!"_ZTSN6duckdb10BoundIndexE", !55, i64 0, !71, i64 104, !76, i64 128, !82, i64 152, !82, i64 184, !84, i64 216, !85, i64 224, !91, i64 248, !92, i64 256, !85, i64 296, !94, i64 320}
!55 = !{!"_ZTSN6duckdb5IndexE", !56, i64 8, !62, i64 32, !69, i64 88, !70, i64 96}
!56 = !{!"_ZTSN6duckdb6vectorImLb1ESaImEEE", !57, i64 0}
!57 = !{!"_ZTSSt6vectorImSaImEE", !58, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseImSaImEE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 long", !10, i64 0}
!62 = !{!"_ZTSSt13unordered_setImSt4hashImESt8equal_toImESaImEE", !63, i64 0}
!63 = !{!"_ZTSSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !64, i64 0, !20, i64 8, !65, i64 16, !20, i64 24, !67, i64 32, !66, i64 48}
!64 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!65 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !66, i64 0}
!66 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!67 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !68, i64 0, !20, i64 8}
!68 = !{!"float", !5, i64 0}
!69 = !{!"p1 _ZTSN6duckdb14TableIOManagerE", !10, i64 0}
!70 = !{!"p1 _ZTSN6duckdb16AttachedDatabaseE", !10, i64 0}
!71 = !{!"_ZTSN6duckdb6vectorINS_12PhysicalTypeELb1ESaIS1_EEE", !72, i64 0}
!72 = !{!"_ZTSSt6vectorIN6duckdb12PhysicalTypeESaIS1_EE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN6duckdb12PhysicalTypeESaIS1_EE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN6duckdb12PhysicalTypeESaIS1_EE12_Vector_implE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN6duckdb12PhysicalTypeESaIS1_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!76 = !{!"_ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !77, i64 0}
!77 = !{!"_ZTSSt6vectorIN6duckdb11LogicalTypeESaIS1_EE", !78, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE12_Vector_implE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!81 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !10, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0, !20, i64 8, !5, i64 16}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!84 = !{!"_ZTSN6duckdb19IndexConstraintTypeE", !5, i64 0}
!85 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !86, i64 0}
!86 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE", !87, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!90 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!91 = !{!"_ZTSN6duckdb14DeltaIndexTypeE", !5, i64 0}
!92 = !{!"_ZTSSt5mutex", !93, i64 0}
!93 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!94 = !{!"_ZTSN6duckdb18ExpressionExecutorE", !95, i64 0, !101, i64 24, !102, i64 32, !104, i64 40, !110, i64 64}
!95 = !{!"_ZTSN6duckdb6vectorIPKNS_10ExpressionELb1ESaIS3_EEE", !96, i64 0}
!96 = !{!"_ZTSSt6vectorIPKN6duckdb10ExpressionESaIS3_EE", !97, i64 0}
!97 = !{!"_ZTSSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE", !98, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE12_Vector_implE", !99, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!100 = !{!"p2 _ZTSN6duckdb10ExpressionE", !12, i64 0}
!101 = !{!"p1 _ZTSN6duckdb9DataChunkE", !10, i64 0}
!102 = !{!"_ZTSN6duckdb12optional_ptrINS_13ClientContextELb1EEE", !103, i64 0}
!103 = !{!"p1 _ZTSN6duckdb13ClientContextE", !10, i64 0}
!104 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !105, i64 0}
!105 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !106, i64 0}
!106 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !107, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!109 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!110 = !{!"_ZTSN6duckdb23DebugVectorVerificationE", !5, i64 0}
!111 = !{!"_ZTSN6duckdb4NodeE", !112, i64 0}
!112 = !{!"_ZTSN6duckdb12IndexPointerE", !20, i64 0}
!113 = !{!"_ZTSN6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEE", !114, i64 0}
!114 = !{!"_ZTSSt10shared_ptrISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EEE", !115, i64 0}
!115 = !{!"_ZTSSt12__shared_ptrISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELN9__gnu_cxx12_Lock_policyE2EE", !116, i64 0, !117, i64 8}
!116 = !{!"p1 _ZTSSt5arrayIN6duckdb10unique_ptrINS0_18FixedSizeAllocatorESt14default_deleteIS2_ELb0EEELm9EE", !10, i64 0}
!117 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !118, i64 0}
!118 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!119 = !{!"bool", !5, i64 0}
!120 = !{!"_ZTSN6duckdb12optional_idxE", !20, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm: argument 0"}
!123 = distinct !{!123, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm"}
!124 = !{!115, !116, i64 0}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!83, !43, i64 0}
!127 = !{!82, !43, i64 0}
!128 = !{!82, !20, i64 8}
!129 = !{!130, !130, i64 0}
!130 = !{!"p1 _ZTSN6duckdb18FixedSizeAllocatorE", !10, i64 0}
!131 = !{!112, !20, i64 0}
!132 = !{!133, !43, i64 0}
!133 = !{!"_ZTSN6duckdb6PrefixE", !43, i64 0, !18, i64 8, !119, i64 16}
!134 = !{!133, !18, i64 8}
!135 = distinct !{!135, !47}
!136 = !{!28, !31, i64 24}
!137 = distinct !{!137, !47}
!138 = !{!28, !29, i64 0}
!139 = distinct !{!139, !47}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm: argument 0"}
!142 = distinct !{!142, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm"}
!143 = !{!60, !61, i64 0}
!144 = !{!60, !61, i64 8}
!145 = !{!60, !61, i64 16}
!146 = distinct !{!146, !47}
!147 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!148 = !{!24, !9, i64 64}
!149 = !{!150, !20, i64 8}
!150 = !{!"_ZTSN6duckdb10ARTBuilder9NodeEntryE", !18, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!151 = !{!150, !20, i64 16}
!152 = !{!150, !20, i64 24}
!153 = !{!24, !20, i64 8}
!154 = !{!24, !11, i64 0}
!155 = distinct !{!155, !47}
!156 = !{!157, !18, i64 0}
!157 = !{!"_ZTSSt17reference_wrapperIN6duckdb4NodeEE", !18, i64 0}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm: argument 0"}
end_hunk_2
