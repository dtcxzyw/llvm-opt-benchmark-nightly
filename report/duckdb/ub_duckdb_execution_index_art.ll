inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm:bb.a
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.021
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.021
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !45
  %i.am = add nuw i64 %.021, 1                    ; 2 uses
  %i.an = load i8, ptr %i.d, align 8, !tbaa !52
  %i.ao = zext i8 %i.an to i64                    ; 3 uses
  %i.ap = add i64 %i.ao, %i.l
  %i.aq = icmp ult i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1372

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
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1379

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.j = add i8 %i.c, -1
  %i.k = call i8 @llvm.umin.i8(i8 %i.h, i8 %i.j)
  %i.l = xor i8 %i.k, -1
  %i.m = add i8 %i.c, %i.l                        ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.m, 57
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.critedge.i
  %6 = add i8 %i.c, -1
  %7 = call i8 @llvm.usub.sat.i8(i8 %6, i8 %i.h)
  %8 = zext i8 %i.c to i32
  %9 = add nsw i32 %8, -1
  %10 = zext i8 %7 to i32
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %12 = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep = getelementptr i8, ptr %12, i64 1
  %i.p = add i8 %i.c, -1
  %i.q = call i8 @llvm.usub.sat.i8(i8 %i.p, i8 %i.h)
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  %scevgep23 = getelementptr i8, ptr %scevgep, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep24 = getelementptr i8, ptr %i.t, i64 2  ; 3 uses
  %i.u = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  %13 = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep25 = getelementptr i8, ptr %13, i64 8
  %i.v = mul nsw i64 %i.r, -8                     ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep25, i64 %i.v ; 3 uses
  %14 = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep27 = getelementptr i8, ptr %14, i64 16  ; 3 uses
  %15 = zext i8 %i.c to i64
  %16 = add nuw nsw i64 %15, 4294967295
  %17 = and i64 %16, 4294967295                   ; 3 uses
  %18 = getelementptr i8, ptr %i.b, i64 %17
  %scevgep28.a = getelementptr i8, ptr %18, i64 1
  %scevgep29.a = getelementptr i8, ptr %scevgep28.a, i64 %i.s ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %17
  %scevgep30.a = getelementptr i8, ptr %i.w, i64 2 ; 2 uses
  %19 = shl nuw nsw i64 %17, 3                    ; 2 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %19
  %scevgep31 = getelementptr i8, ptr %i.x, i64 8
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.b, i64 %19
  %scevgep33 = getelementptr i8, ptr %i.y, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %scevgep23, %scevgep27
  %bound1 = icmp ult ptr %scevgep26, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %scevgep23, %scevgep30.a
  %bound135 = icmp ult ptr %scevgep29.a, %scevgep24
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  %bound037 = icmp ult ptr %scevgep23, %scevgep33
  %bound138 = icmp ult ptr %scevgep32, %scevgep24
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx40 = or i1 %conflict.rdx, %found.conflict39
  %bound041 = icmp ult ptr %scevgep26, %scevgep30.a
  %bound142 = icmp ult ptr %scevgep29.a, %scevgep27
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx40, %found.conflict43
  %bound045 = icmp ult ptr %scevgep26, %scevgep33
  %bound146 = icmp ult ptr %scevgep32, %scevgep27
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 510                      ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %20 = add nuw nsw i64 %i.aa, 4294967295
  %21 = and i64 %20, 4294967295                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %21
  %22 = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %wide.load.a = load <2 x i8>, ptr %22, align 1, !tbaa !45, !alias.scope !1380
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aa
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  store <2 x i8> %wide.load.a, ptr %i.ad, align 1, !tbaa !45, !alias.scope !1383, !noalias !1385
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aa
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %wide.load49 = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !1388
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8
  store <2 x i64> %wide.load49, ptr %i.ah, align 8, !alias.scope !1389, !noalias !1390
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.z, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %23 = add nuw nsw i64 %indvars.iv33.i, 4294967295
  %24 = and i64 %23, 4294967295                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %24
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !45
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %24
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i
  %i.ao = load i64, ptr %i.am, align 8
  store i64 %i.ao, ptr %i.an, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.ap = icmp ult i8 %i.h, %indvars.i
  br i1 %i.ap, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1392

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.aq = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.aq, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.ar, align 1, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.at, align 8
  %i.au = add i8 %i.c, 1
  store i8 %i.au, ptr %i.b, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.av = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %4, align 8, !tbaa !179
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bb = load i64, ptr %1, align 8
  store i64 %i.bb, ptr %5, align 8
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
  %i.i = add i8 %i.c, -1
  %i.j = call i8 @llvm.usub.sat.i8(i8 %i.i, i8 %i.h) ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %i.j, 7
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %5 = add i8 %i.c, -1
  %6 = call i8 @llvm.usub.sat.i8(i8 %5, i8 %i.h)
  %7 = zext i8 %i.c to i32
  %8 = add nsw i32 %7, -1
  %9 = zext i8 %6 to i32
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %.lr.ph25.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %11 = zext i8 %i.c to i64
  %12 = add nuw nsw i64 %11, 4294967295
  %13 = and i64 %12, 4294967295
  %14 = sub nsw i64 %wide.trip.count.i, %13
  %diff.check = icmp ugt i64 %14, -32
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i8 %i.j, 31
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 24
  %n.vec = and i64 %i.l, 480                      ; 4 uses
  %i.m = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = sub i64 %wide.trip.count.i, %index       ; 2 uses
  %15 = add nuw nsw i64 %i.n, 4294967295
  %16 = and i64 %15, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %16 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -15
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -31
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !tbaa !45
  %wide.load20 = load <16 x i8>, ptr %i.q, align 1, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -15
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -31
  store <16 x i8> %wide.load, ptr %i.s, align 1, !tbaa !45
  store <16 x i8> %wide.load20, ptr %i.t, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.l, 504                    ; 3 uses
  %i.v = sub nsw i64 %wide.trip.count.i, %n.vec22
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.w = sub i64 %wide.trip.count.i, %index23     ; 2 uses
  %17 = add nuw nsw i64 %i.w, 4294967295
  %18 = and i64 %17, 4294967295
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %18
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -7
  %wide.load24 = load <8 x i8>, ptr %i.y, align 1, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -7
  store <8 x i8> %wide.load24, ptr %i.aa, align 1, !tbaa !45
  %index.next25 = add nuw i64 %index23, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.l, %n.vec22
  br i1 %cmp.n26, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %wide.trip.count.i, %iter.check ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph25.i ], [ %indvars.iv27.i.ph, %.lr.ph25.i.preheader ] ; 3 uses
  %19 = add nuw nsw i64 %indvars.iv27.i, 4294967295
  %20 = and i64 %19, 4294967295
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %20
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv27.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !45
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next28.i to i8
  %i.af = icmp ult i8 %i.h, %indvars.i
  br i1 %i.af, label %.lr.ph25.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, !llvm.loop !1400

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13: ; preds = %bb.c
  %i.ag = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit: ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13, %bb.b
  %.017.lcssa31.i = phi i64 [ 0, %bb.b ], [ %i.ag, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %vec.epilog.middle.block ], [ %indvars.iv.i, %.lr.ph25.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa31.i
  store i8 %2, ptr %i.ah, align 1, !tbaa !45
  %i.ai = add i8 %i.c, 1
  store i8 %i.ai, ptr %i.b, align 1, !tbaa !177
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit
  %i.aj = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %3, align 8, !tbaa !179
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = atomicrmw sub ptr %i.al, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #33
  unreachable

_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit:  ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %4, align 8
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
  %i.i = add i8 %i.c, -1
  %i.j = call i8 @llvm.usub.sat.i8(i8 %i.i, i8 %i.h) ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %i.j, 7
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %6 = add i8 %i.c, -1
  %7 = call i8 @llvm.usub.sat.i8(i8 %6, i8 %i.h)
  %8 = zext i8 %i.c to i32
  %9 = add nsw i32 %8, -1
  %10 = zext i8 %7 to i32
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %.lr.ph25.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %12 = zext i8 %i.c to i64
  %13 = add nuw nsw i64 %12, 4294967295
  %14 = and i64 %13, 4294967295
  %15 = sub nsw i64 %wide.trip.count.i, %14
  %diff.check = icmp ugt i64 %15, -32
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i8 %i.j, 31
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 24
  %n.vec = and i64 %i.l, 480                      ; 4 uses
  %i.m = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = sub i64 %wide.trip.count.i, %index       ; 2 uses
  %16 = add nuw nsw i64 %i.n, 4294967295
  %17 = and i64 %16, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %17 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -15
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -31
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !tbaa !45
  %wide.load20 = load <16 x i8>, ptr %i.q, align 1, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -15
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -31
  store <16 x i8> %wide.load, ptr %i.s, align 1, !tbaa !45
  store <16 x i8> %wide.load20, ptr %i.t, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.l, 504                    ; 3 uses
  %i.v = sub nsw i64 %wide.trip.count.i, %n.vec22
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.w = sub i64 %wide.trip.count.i, %index23     ; 2 uses
  %18 = add nuw nsw i64 %i.w, 4294967295
  %19 = and i64 %18, 4294967295
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %19
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -7
  %wide.load24 = load <8 x i8>, ptr %i.y, align 1, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -7
  store <8 x i8> %wide.load24, ptr %i.aa, align 1, !tbaa !45
  %index.next25 = add nuw i64 %index23, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.l, %n.vec22
  br i1 %cmp.n26, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %wide.trip.count.i, %iter.check ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph25.i ], [ %indvars.iv27.i.ph, %.lr.ph25.i.preheader ] ; 3 uses
  %20 = add nuw nsw i64 %indvars.iv27.i, 4294967295
  %21 = and i64 %20, 4294967295
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %21
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv27.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !45
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next28.i to i8
  %i.af = icmp ult i8 %i.h, %indvars.i
  br i1 %i.af, label %.lr.ph25.i, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, !llvm.loop !1416

_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13: ; preds = %bb.c
  %i.ag = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit: ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13, %bb.b
  %.017.lcssa31.i = phi i64 [ 0, %bb.b ], [ %i.ag, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %vec.epilog.middle.block ], [ %indvars.iv.i, %.lr.ph25.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa31.i
  store i8 %2, ptr %i.ah, align 1, !tbaa !45
  %i.ai = add i8 %i.c, 1
  store i8 %i.ai, ptr %i.b, align 1, !tbaa !186
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit
  %i.aj = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %4, align 8, !tbaa !179
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = atomicrmw sub ptr %i.al, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #33
  unreachable

_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit: ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %5, align 8
  call void @_ZN6duckdb11Node256Leaf14GrowNode15LeafERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_11Node256LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !191, !nonnull !36, !align !37 ; 3 uses
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !194
  %i.at = add i16 %i.as, 1
  store i16 %i.at, ptr %i.ar, align 8, !tbaa !194
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = zext i8 %2 to i64                       ; 2 uses
  %i.aw = lshr i64 %i.av, 6
  %i.ax = and i64 %i.av, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = or i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !19
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %3, align 8, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit

bb.k:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
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
end_hunk_0
begin_hunk_1_@_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE:bb.a
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
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1472

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.j = add i8 %i.c, -1
  %i.k = call i8 @llvm.umin.i8(i8 %i.h, i8 %i.j)
  %i.l = xor i8 %i.k, -1
  %i.m = add i8 %i.c, %i.l                        ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.m, 57
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.critedge.i
  %6 = add i8 %i.c, -1
  %7 = call i8 @llvm.usub.sat.i8(i8 %6, i8 %i.h)
  %8 = zext i8 %i.c to i32
  %9 = add nsw i32 %8, -1
  %10 = zext i8 %7 to i32
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %12 = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep = getelementptr i8, ptr %12, i64 1
  %i.p = add i8 %i.c, -1
  %i.q = call i8 @llvm.usub.sat.i8(i8 %i.p, i8 %i.h)
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  %scevgep23 = getelementptr i8, ptr %scevgep, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep24 = getelementptr i8, ptr %i.t, i64 2  ; 3 uses
  %i.u = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  %13 = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep25 = getelementptr i8, ptr %13, i64 24
  %i.v = mul nsw i64 %i.r, -8                     ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep25, i64 %i.v ; 3 uses
  %14 = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep27 = getelementptr i8, ptr %14, i64 32  ; 3 uses
  %15 = zext i8 %i.c to i64
  %16 = add nuw nsw i64 %15, 4294967295
  %17 = and i64 %16, 4294967295                   ; 3 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %17
  %scevgep28.a = getelementptr i8, ptr %i.w, i64 1
  %scevgep29.a = getelementptr i8, ptr %scevgep28.a, i64 %i.s ; 2 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %17
  %scevgep30 = getelementptr i8, ptr %i.x, i64 2  ; 2 uses
  %18 = shl nuw nsw i64 %17, 3                    ; 2 uses
  %i.y = getelementptr i8, ptr %i.b, i64 %18
  %scevgep31 = getelementptr i8, ptr %i.y, i64 24
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.v ; 2 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %18
  %scevgep33 = getelementptr i8, ptr %i.z, i64 32 ; 2 uses
  %bound0 = icmp ult ptr %scevgep23, %scevgep27
  %bound1 = icmp ult ptr %scevgep26, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %scevgep23, %scevgep30
  %bound135 = icmp ult ptr %scevgep29.a, %scevgep24
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  %bound037 = icmp ult ptr %scevgep23, %scevgep33
  %bound138 = icmp ult ptr %scevgep32, %scevgep24
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx40 = or i1 %conflict.rdx, %found.conflict39
  %bound041 = icmp ult ptr %scevgep26, %scevgep30
  %bound142 = icmp ult ptr %scevgep29.a, %scevgep27
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx40, %found.conflict43
  %bound045 = icmp ult ptr %scevgep26, %scevgep33
  %bound146 = icmp ult ptr %scevgep32, %scevgep27
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 510                      ; 3 uses
  %i.aa = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %19 = add nuw nsw i64 %i.ab, 4294967295
  %20 = and i64 %19, 4294967295                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %20
  %21 = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %wide.load.a = load <2 x i8>, ptr %21, align 1, !tbaa !45, !alias.scope !1473
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  store <2 x i8> %wide.load.a, ptr %i.ae, align 1, !tbaa !45, !alias.scope !1476, !noalias !1478
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %20
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ab
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %wide.load49 = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !1481
  %i.ah = getelementptr inbounds i8, ptr %22, i64 -8
  store <2 x i64> %wide.load49, ptr %i.ah, align 8, !alias.scope !1482, !noalias !1483
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.aa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %23 = add nuw nsw i64 %indvars.iv33.i, 4294967295
  %24 = and i64 %23, 4294967295                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %24
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !45
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %24
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i
  %i.an = load i64, ptr %i.am, align 8
  store i64 %i.an, ptr %25, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.ao = icmp ult i8 %i.h, %indvars.i
  br i1 %i.ao, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1485

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.ap = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.ap, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.aq, align 1, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.as, align 8
  %i.at = add i8 %i.c, 1
  store i8 %i.at, ptr %i.b, align 8, !tbaa !901
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.au = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %4, align 8, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #33
  unreachable

_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit:     ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ba = load i64, ptr %1, align 8
  store i64 %i.ba, ptr %5, align 8
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
  %i.aa = add nuw i64 %index, %i.j                ; 3 uses
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
end_hunk_1
begin_hunk_2_@llvm.usub.sat.i8
!1200 = !{!"_ZTSN6duckdb10shared_ptrINS_13IndexTypeInfoELb1EEE", !1201, i64 0}
!1201 = !{!"_ZTSSt10shared_ptrIN6duckdb13IndexTypeInfoEE", !1202, i64 0}
!1202 = !{!"_ZTSSt12__shared_ptrIN6duckdb13IndexTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !1203, i64 0, !117, i64 8}
!1203 = !{!"p1 _ZTSN6duckdb13IndexTypeInfoE", !10, i64 0}
!1204 = !{!1199, !10, i64 32}
!1205 = !{!1199, !10, i64 40}
!1206 = !{!1199, !10, i64 48}
!1207 = !{!1199, !10, i64 56}
!1208 = !{!1199, !10, i64 64}
!1209 = !{!1199, !10, i64 72}
!1210 = !{!1199, !10, i64 80}
!1211 = !{!1212, !1213, i64 32}
!1212 = !{!"_ZTSN6duckdb16CreateIndexInputE", !103, i64 0, !69, i64 8, !70, i64 16, !84, i64 24, !1213, i64 32, !1214, i64 40, !1215, i64 48, !1216, i64 56, !1217, i64 64}
!1213 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!1214 = !{!"p1 _ZTSN6duckdb6vectorImLb1ESaImEEE", !10, i64 0}
!1215 = !{!"p1 _ZTSN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !10, i64 0}
!1216 = !{!"p1 _ZTSN6duckdb16IndexStorageInfoE", !10, i64 0}
!1217 = !{!"p1 _ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE", !10, i64 0}
!1218 = !{!1212, !1214, i64 40}
!1219 = !{!1212, !69, i64 8}
!1220 = !{!1212, !1215, i64 48}
!1221 = !{!1212, !70, i64 16}
!1222 = !{!1212, !1216, i64 56}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_ZN6duckdb9make_uniqINS_3ARTEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_19IndexConstraintTypeERKNS_6vectorImLb1ESaImEEERNS_14TableIOManagerERKNSC_INS_10unique_ptrINS_10ExpressionESt14default_deleteISK_ELb1EEELb1ESaISN_EEERNS_16AttachedDatabaseEDnRKNS_16IndexStorageInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1225 = distinct !{!1225, !"_ZN6duckdb9make_uniqINS_3ARTEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_19IndexConstraintTypeERKNS_6vectorImLb1ESaImEEERNS_14TableIOManagerERKNSC_INS_10unique_ptrINS_10ExpressionESt14default_deleteISK_ELb1EEELb1ESaISN_EEERNS_16AttachedDatabaseEDnRKNS_16IndexStorageInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1226 = distinct !{null, ptr @_ZN6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EED2Ev, null, null, null}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_116ARTBuildBindDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1229 = distinct !{!1229, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_116ARTBuildBindDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1230 = !{!1231, !119, i64 8}
!1231 = !{!"_ZTSN6duckdb12_GLOBAL__N_116ARTBuildBindDataE", !1232, i64 0, !119, i64 8}
!1232 = !{!"_ZTSN6duckdb18IndexBuildBindDataE"}
!1233 = !{!1234, !1215, i64 24}
!1234 = !{!"_ZTSN6duckdb19IndexBuildBindInputE", !103, i64 0, !1235, i64 8, !1236, i64 16, !1215, i64 24}
!1235 = !{!"p1 _ZTSN6duckdb14DuckTableEntryE", !10, i64 0}
!1236 = !{!"p1 _ZTSN6duckdb15CreateIndexInfoE", !10, i64 0}
!1237 = distinct !{null, null}
!1238 = !{!1239, !1240, i64 0}
!1239 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb18IndexBuildBindDataELb0EE", !1240, i64 0}
!1240 = !{!"p1 _ZTSN6duckdb18IndexBuildBindDataE", !10, i64 0}
!1241 = !{!1242, !1240, i64 0}
!1242 = !{!"_ZTSN6duckdb12optional_ptrINS_18IndexBuildBindDataELb1EEE", !1240, i64 0}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_119ARTBuildGlobalStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1245 = distinct !{!1245, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_119ARTBuildGlobalStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1246 = !{!1247, !1235, i64 16}
!1247 = !{!"_ZTSN6duckdb30IndexBuildInitGlobalStateInputE", !1242, i64 0, !103, i64 8, !1235, i64 16, !1236, i64 24, !1215, i64 32, !56, i64 40}
!1248 = !{!1247, !1236, i64 24}
!1249 = !{!1247, !1215, i64 32}
!1250 = !{!1251, !70, i64 16}
!1251 = !{!"_ZTSN6duckdb9DataTableE", !1252, i64 0, !70, i64 16, !1258, i64 24, !1262, i64 40, !92, i64 64, !1268, i64 104, !1272, i64 120}
!1252 = !{!"_ZTSN6duckdb23enable_shared_from_thisINS_9DataTableEEE", !1253, i64 0}
!1253 = !{!"_ZTSN6duckdb8weak_ptrINS_9DataTableELb1EEE", !1254, i64 0}
!1254 = !{!"_ZTSSt8weak_ptrIN6duckdb9DataTableEE", !1255, i64 0}
!1255 = !{!"_ZTSSt10__weak_ptrIN6duckdb9DataTableELN9__gnu_cxx12_Lock_policyE2EE", !1256, i64 0, !1257, i64 8}
!1256 = !{!"p1 _ZTSN6duckdb9DataTableE", !10, i64 0}
!1257 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !118, i64 0}
!1258 = !{!"_ZTSN6duckdb10shared_ptrINS_13DataTableInfoELb1EEE", !1259, i64 0}
!1259 = !{!"_ZTSSt10shared_ptrIN6duckdb13DataTableInfoEE", !1260, i64 0}
!1260 = !{!"_ZTSSt12__shared_ptrIN6duckdb13DataTableInfoELN9__gnu_cxx12_Lock_policyE2EE", !1261, i64 0, !117, i64 8}
!1261 = !{!"p1 _ZTSN6duckdb13DataTableInfoE", !10, i64 0}
!1262 = !{!"_ZTSN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEE", !1263, i64 0}
!1263 = !{!"_ZTSSt6vectorIN6duckdb16ColumnDefinitionESaIS1_EE", !1264, i64 0}
!1264 = !{!"_ZTSSt12_Vector_baseIN6duckdb16ColumnDefinitionESaIS1_EE", !1265, i64 0}
!1265 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16ColumnDefinitionESaIS1_EE12_Vector_implE", !1266, i64 0}
!1266 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16ColumnDefinitionESaIS1_EE17_Vector_impl_dataE", !1267, i64 0, !1267, i64 8, !1267, i64 16}
!1267 = !{!"p1 _ZTSN6duckdb16ColumnDefinitionE", !10, i64 0}
!1268 = !{!"_ZTSN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEE", !1269, i64 0}
!1269 = !{!"_ZTSSt10shared_ptrIN6duckdb18RowGroupCollectionEE", !1270, i64 0}
!1270 = !{!"_ZTSSt12__shared_ptrIN6duckdb18RowGroupCollectionELN9__gnu_cxx12_Lock_policyE2EE", !1271, i64 0, !117, i64 8}
!1271 = !{!"p1 _ZTSN6duckdb18RowGroupCollectionE", !10, i64 0}
!1272 = !{!"_ZTSSt6atomicIN6duckdb16DataTableVersionEE", !1273, i64 0}
!1273 = !{!"_ZTSN6duckdb16DataTableVersionE", !5, i64 0}
!1274 = !{!841, !841, i64 0}
!1275 = distinct !{null, null, null, null, null, null}
!1276 = !{!1277, !1278, i64 0}
!1277 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb21IndexBuildGlobalStateELb0EE", !1278, i64 0}
!1278 = !{!"p1 _ZTSN6duckdb21IndexBuildGlobalStateE", !10, i64 0}
!1279 = distinct !{null, null}
!1280 = !{!1281, !103, i64 8}
!1281 = !{!"_ZTSN6duckdb29IndexBuildInitLocalStateInputE", !1242, i64 0, !103, i64 8, !1235, i64 16, !1236, i64 24, !1215, i64 32, !56, i64 40}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_118ARTBuildLocalStateEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1284 = distinct !{!1284, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_118ARTBuildLocalStateEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1285 = distinct !{null, null, null, null}
!1286 = !{!1281, !1235, i64 16}
!1287 = !{!1281, !1236, i64 24}
!1288 = !{!1281, !1215, i64 32}
!1289 = !{!1290, !1291, i64 0}
!1290 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb20IndexBuildLocalStateELb0EE", !1291, i64 0}
!1291 = !{!"p1 _ZTSN6duckdb20IndexBuildLocalStateE", !10, i64 0}
!1292 = distinct !{null, null}
!1293 = distinct !{null, null}
!1294 = !{!1295, !1291, i64 16}
!1295 = !{!"_ZTSN6duckdb19IndexBuildSinkInputE", !1242, i64 0, !1278, i64 8, !1291, i64 16, !1235, i64 24, !1236, i64 32}
!1296 = !{!1295, !1235, i64 24}
!1297 = distinct !{null}
!1298 = !{!1295, !1236, i64 32}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"_ZN6duckdb9make_uniqINS_3ARTEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19IndexConstraintTypeERKNS_6vectorImLb1ESaImEEERNS_14TableIOManagerERNSA_INS_10unique_ptrINS_10ExpressionESt14default_deleteISI_ELb1EEELb1ESaISL_EEERNS_16AttachedDatabaseERNS_10shared_ptrISt5arrayINSH_INS_18FixedSizeAllocatorESJ_IST_ELb0EEELm9EELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1301 = distinct !{!1301, !"_ZN6duckdb9make_uniqINS_3ARTEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19IndexConstraintTypeERKNS_6vectorImLb1ESaImEEERNS_14TableIOManagerERNSA_INS_10unique_ptrINS_10ExpressionESt14default_deleteISI_ELb1EEELb1ESaISL_EEERNS_16AttachedDatabaseERNS_10shared_ptrISt5arrayINSH_INS_18FixedSizeAllocatorESJ_IST_ELb0EEELm9EELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1302 = distinct !{null, null, null}
!1303 = distinct !{!1303, !47}
!1304 = !{!1305, !1278, i64 8}
!1305 = !{!"_ZTSN6duckdb22IndexBuildCombineInputE", !1242, i64 0, !1278, i64 8, !1291, i64 16, !1235, i64 24, !1236, i64 32}
!1306 = !{!1305, !1291, i64 16}
!1307 = !{!1308, !1278, i64 0}
!1308 = !{!"_ZTSN6duckdb23IndexBuildFinalizeInputE", !1278, i64 0}
!1309 = distinct !{null, null, null, null}
!1310 = distinct !{!1310, !47, !890, !891}
!1311 = distinct !{!1311, !47, !891, !890}
!1312 = distinct !{!1312, !47}
!1313 = distinct !{!1313, !47}
!1314 = distinct !{!1314, !47}
!1315 = distinct !{!1315, !47}
!1316 = distinct !{!1316, !47}
!1317 = !{!1030, !1033, i64 64}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1320, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm: argument 0"}
!1320 = distinct !{!1320, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1323, !"_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1323 = distinct !{!1323, !"_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE3NewERNS_3ARTERNS_4NodeE"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1326 = distinct !{!1326, !"_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE3NewERNS_3ARTERNS_4NodeE"}
!1327 = !{!1328, !20, i64 8}
!1328 = !{!"_ZTSN6duckdb9array_ptrIhLb1EEE", !43, i64 0, !20, i64 8}
!1329 = distinct !{!1329, !47}
!1330 = distinct !{!1330, !47}
!1331 = distinct !{!1331, !47}
!1332 = distinct !{!1332, !47}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1335, !"_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1335 = distinct !{!1335, !"_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE3NewERNS_3ARTERNS_4NodeE"}
!1336 = !{!862, !20, i64 24}
!1337 = distinct !{!1337, !47}
!1338 = !{!862, !20, i64 8}
!1339 = !{!862, !64, i64 0}
!1340 = distinct !{!1340, !47}
!1341 = !{!857, !20, i64 24}
!1342 = !{!857, !20, i64 40}
!1343 = !{!1344, !119, i64 32}
!1344 = !{!"_ZTSN6duckdb15FixedSizeBufferE", !858, i64 0, !1345, i64 8, !20, i64 16, !20, i64 24, !119, i64 32, !119, i64 33, !119, i64 34, !234, i64 40, !1347, i64 56, !1348, i64 80, !92, i64 96}
!1345 = !{!"_ZTSSt6atomicImE", !1346, i64 0}
!1346 = !{!"_ZTSSt13__atomic_baseImE", !20, i64 0}
!1347 = !{!"_ZTSN6duckdb12BufferHandleE", !1348, i64 0, !1352, i64 16}
!1348 = !{!"_ZTSN6duckdb10shared_ptrINS_11BlockHandleELb1EEE", !1349, i64 0}
!1349 = !{!"_ZTSSt10shared_ptrIN6duckdb11BlockHandleEE", !1350, i64 0}
!1350 = !{!"_ZTSSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EE", !1351, i64 0, !117, i64 8}
!1351 = !{!"p1 _ZTSN6duckdb11BlockHandleE", !10, i64 0}
!1352 = !{!"_ZTSN6duckdb12optional_ptrINS_10FileBufferELb1EEE", !1353, i64 0}
!1353 = !{!"p1 _ZTSN6duckdb10FileBufferE", !10, i64 0}
!1354 = !{!1352, !1353, i64 0}
!1355 = !{!1356, !43, i64 16}
!1356 = !{!"_ZTSN6duckdb10FileBufferE", !1357, i64 8, !43, i64 16, !20, i64 24, !1358, i64 32, !43, i64 40, !20, i64 48}
!1357 = !{!"p1 _ZTSN6duckdb14BlockAllocatorE", !10, i64 0}
!1358 = !{!"_ZTSN6duckdb14FileBufferTypeE", !5, i64 0}
!1359 = !{!481, !20, i64 24}
!1360 = distinct !{!1360, !47}
!1361 = !{!1362}
!1362 = distinct !{!1362, !1363, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_: argument 0"}
!1363 = distinct !{!1363, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_"}
!1364 = !{!1328, !43, i64 0}
!1365 = distinct !{!1365, !47}
!1366 = distinct !{!1366, !47}
!1367 = distinct !{!1367, !47}
!1368 = distinct !{!1368, !47}
!1369 = !{!1370, !20, i64 8}
!1370 = !{!"_ZTSN6duckdb9array_ptrINS_4NodeELb1EEE", !18, i64 0, !20, i64 8}
!1371 = !{!1370, !18, i64 0}
!1372 = distinct !{!1372, !47}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1375, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm: argument 0"}
!1375 = distinct !{!1375, !"_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm"}
!1376 = !{!1377, !1378, i64 16}
!1377 = !{!"_ZTSN6duckdb10NodeHandleINS_5Node4EEE", !173, i64 0, !1378, i64 16}
!1378 = !{!"p1 _ZTSN6duckdb5Node4E", !10, i64 0}
!1379 = distinct !{!1379, !47}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1382}
!1382 = distinct !{!1382, !"LVerDomain"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1382}
!1385 = !{!1386, !1381, !1387}
!1386 = distinct !{!1386, !1382}
!1387 = distinct !{!1387, !1382}
!1388 = !{!1387}
!1389 = !{!1386}
!1390 = !{!1381, !1387}
!1391 = distinct !{!1391, !47, !890, !891}
!1392 = distinct !{!1392, !47, !890}
!1393 = !{!1394, !1395, i64 16}
!1394 = !{!"_ZTSN6duckdb10NodeHandleINS_9Node7LeafEEE", !173, i64 0, !1395, i64 16}
!1395 = !{!"p1 _ZTSN6duckdb9Node7LeafE", !10, i64 0}
!1396 = distinct !{!1396, !47}
!1397 = distinct !{!1397, !47, !890, !891}
!1398 = !{!"branch_weights", i32 8, i32 24}
!1399 = distinct !{!1399, !47, !890, !891}
!1400 = distinct !{!1400, !47, !890}
!1401 = !{!1402}
!1402 = distinct !{!1402, !1403, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE: argument 0"}
!1403 = distinct !{!1403, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE"}
!1404 = !{!173, !43, i64 8}
!1405 = !{!1395, !1395, i64 0}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1408 = distinct !{!1408, !"_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE3NewERNS_3ARTERNS_4NodeE"}
!1409 = distinct !{!1409, !47}
!1410 = !{!1411, !1412, i64 16}
!1411 = !{!"_ZTSN6duckdb10NodeHandleINS_10Node15LeafEEE", !173, i64 0, !1412, i64 16}
!1412 = !{!"p1 _ZTSN6duckdb10Node15LeafE", !10, i64 0}
!1413 = distinct !{!1413, !47}
!1414 = distinct !{!1414, !47, !890, !891}
!1415 = distinct !{!1415, !47, !890, !891}
!1416 = distinct !{!1416, !47, !890}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1419, !"_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18DeleteByteInternalERNS_3ARTERNS_4NodeEh: argument 0"}
!1419 = distinct !{!1419, !"_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18DeleteByteInternalERNS_3ARTERNS_4NodeEh"}
!1420 = distinct !{!1420, !47}
!1421 = distinct !{!1421, !47, !890, !891}
!1422 = distinct !{!1422, !47, !890, !891}
!1423 = distinct !{!1423, !47, !891, !890}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1426, !"_ZNSt5dequeIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE1ENS0_4NodeEE9NodeEntryESaIS5_EE3endEv: argument 0"}
!1426 = distinct !{!1426, !"_ZNSt5dequeIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE1ENS0_4NodeEE9NodeEntryESaIS5_EE3endEv"}
!1427 = distinct !{!1427, !47}
!1428 = distinct !{!1428, !47}
!1429 = distinct !{!1429, !47}
!1430 = distinct !{!1430, !47}
!1431 = distinct !{!1431, !47}
!1432 = distinct !{!1432, !47}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1435, !"_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1435 = distinct !{!1435, !"_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE3NewERNS_3ARTERNS_4NodeE"}
!1436 = distinct !{!1436, !47}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1439, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE: argument 0"}
!1439 = distinct !{!1439, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE"}
!1440 = !{!1412, !1412, i64 0}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"_ZN6duckdb11Node256Leaf3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1443 = distinct !{!1443, !"_ZN6duckdb11Node256Leaf3NewERNS_3ARTERNS_4NodeE"}
!1444 = distinct !{!1444, !47}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18DeleteByteInternalERNS_3ARTERNS_4NodeEh: argument 0"}
!1447 = distinct !{!1447, !"_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18DeleteByteInternalERNS_3ARTERNS_4NodeEh"}
!1448 = distinct !{!1448, !47}
!1449 = distinct !{!1449, !47, !890, !891}
!1450 = distinct !{!1450, !47, !890, !891}
!1451 = distinct !{!1451, !47, !891, !890}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1454, !"_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1454 = distinct !{!1454, !"_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE3NewERNS_3ARTERNS_4NodeE"}
!1455 = distinct !{!1455, !47}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1458, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE: argument 0"}
!1458 = distinct !{!1458, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE"}
!1459 = !{!193, !193, i64 0}
!1460 = distinct !{null, null, null, null}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1463, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE: argument 0"}
!1463 = distinct !{!1463, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE"}
!1464 = !{!1378, !1378, i64 0}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1467, !"_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1467 = distinct !{!1467, !"_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE3NewERNS_3ARTERNS_4NodeE"}
!1468 = distinct !{!1468, !47}
!1469 = !{!1470, !1471, i64 16}
!1470 = !{!"_ZTSN6duckdb10NodeHandleINS_6Node16EEE", !173, i64 0, !1471, i64 16}
!1471 = !{!"p1 _ZTSN6duckdb6Node16E", !10, i64 0}
!1472 = distinct !{!1472, !47}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1475}
!1475 = distinct !{!1475, !"LVerDomain"}
!1476 = !{!1477}
!1477 = distinct !{!1477, !1475}
!1478 = !{!1479, !1474, !1480}
!1479 = distinct !{!1479, !1475}
!1480 = distinct !{!1480, !1475}
!1481 = !{!1480}
!1482 = !{!1479}
!1483 = !{!1474, !1480}
!1484 = distinct !{!1484, !47, !890, !891}
!1485 = distinct !{!1485, !47, !890}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1488, !"_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh: argument 0"}
!1488 = distinct !{!1488, !"_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh"}
!1489 = distinct !{!1489, !47}
!1490 = !{!1491}
!1491 = distinct !{!1491, !1492}
!1492 = distinct !{!1492, !"LVerDomain"}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1492}
!1495 = !{!1496, !1491, !1497}
!1496 = distinct !{!1496, !1492}
!1497 = distinct !{!1497, !1492}
!1498 = !{!1497}
!1499 = !{!1496}
!1500 = !{!1491, !1497}
!1501 = distinct !{!1501, !47, !890, !891}
!1502 = distinct !{!1502, !47, !890}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1505, !"_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1505 = distinct !{!1505, !"_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE3NewERNS_3ARTERNS_4NodeE"}
!1506 = distinct !{!1506, !47}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE: argument 0"}
!1509 = distinct !{!1509, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE"}
!1510 = !{!1471, !1471, i64 0}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1513, !"_ZN6duckdb6Node483NewERNS_3ARTERNS_4NodeE: argument 0"}
!1513 = distinct !{!1513, !"_ZN6duckdb6Node483NewERNS_3ARTERNS_4NodeE"}
!1514 = distinct !{!1514, !47}
!1515 = distinct !{!1515, !47}
!1516 = !{!1517}
!1517 = distinct !{!1517, !1518, !"_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh: argument 0"}
!1518 = distinct !{!1518, !"_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh"}
!1519 = distinct !{!1519, !47}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1522}
!1522 = distinct !{!1522, !"LVerDomain"}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1522}
!1525 = !{!1526, !1521, !1527}
!1526 = distinct !{!1526, !1522}
!1527 = distinct !{!1527, !1522}
!1528 = !{!1527}
!1529 = !{!1526}
!1530 = !{!1521, !1527}
!1531 = distinct !{!1531, !47, !890, !891}
!1532 = distinct !{!1532, !47, !890}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE3NewERNS_3ARTERNS_4NodeE: argument 0"}
!1535 = distinct !{!1535, !"_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE3NewERNS_3ARTERNS_4NodeE"}
!1536 = distinct !{!1536, !47}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1539, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE: argument 0"}
!1539 = distinct !{!1539, !"_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE"}
!1540 = !{!216, !216, i64 0}
!1541 = !{!1542, !5, i64 0}
!1542 = !{!"_ZTSN6duckdb4LeafE", !5, i64 0, !5, i64 8, !111, i64 40}
!1543 = distinct !{!1543, !47}
!1544 = distinct !{!1544, !47}
!1545 = distinct !{!1545, !47}
!1546 = distinct !{!1546, !47}
!1547 = distinct !{!1547, !47}
!1548 = !{!760, !761, i64 0}
!1549 = !{!760, !761, i64 8}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1552, !"_ZNSt5dequeIN6duckdb13IteratorEntryESaIS1_EE3endEv: argument 0"}
!1552 = distinct !{!1552, !"_ZNSt5dequeIN6duckdb13IteratorEntryESaIS1_EE3endEv"}
!1553 = !{!760, !759, i64 24}
!1554 = distinct !{!1554, !47}
!1555 = !{!1065, !31, i64 8}
!1556 = !{!1065, !31, i64 16}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1559, !"_ZNSt5dequeIN6duckdb13IteratorEntryESaIS1_EE3endEv: argument 0"}
!1559 = distinct !{!1559, !"_ZNSt5dequeIN6duckdb13IteratorEntryESaIS1_EE3endEv"}
!1560 = !{!758, !761, i64 56}
!1561 = !{!760, !761, i64 16}
!1562 = distinct !{!1562, !47}
!1563 = distinct !{!1563, !47}
!1564 = distinct !{!1564, !47}
!1565 = distinct !{!1565, !47}
!1566 = !{!63, !20, i64 24}
!1567 = distinct !{!1567, !47}
!1568 = distinct !{!1568, !47}
!1569 = distinct !{!1569, !47}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!1572 = distinct !{!1572, !"_ZNSt7__cxx119to_stringEi"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1575, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1575 = distinct !{!1575, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1576 = !{!1577}
!1577 = distinct !{!1577, !1578, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1578 = distinct !{!1578, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1579 = !{!1580}
!1580 = distinct !{!1580, !1581, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!1581 = distinct !{!1581, !"_ZNSt7__cxx119to_stringEl"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1584 = distinct !{!1584, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1585 = distinct !{!1585, !47}
!1586 = distinct !{!1586, !47}
!1587 = !{!1588, !20, i64 8}
!1588 = !{!"_ZTSSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !64, i64 0, !20, i64 8, !65, i64 16, !20, i64 24, !67, i64 32, !66, i64 48}
!1589 = !{!1588, !64, i64 0}
!1590 = distinct !{!1590, !47}
!1591 = !{!1592, !5, i64 0}
!1592 = !{!"_ZTSSt4pairIKhmE", !5, i64 0, !20, i64 8}
!1593 = !{!1592, !20, i64 8}
!1594 = distinct !{!1594, !47}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1597, !"_ZN6duckdb9Exception16ConstructMessageIJNS_5NTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!1597 = distinct !{!1597, !"_ZN6duckdb9Exception16ConstructMessageIJNS_5NTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!1598 = !{!1599}
!1599 = distinct !{!1599, !1600, !"_ZN6duckdb9Exception16ConstructMessageIJNS_5NTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!1600 = distinct !{!1600, !"_ZN6duckdb9Exception16ConstructMessageIJNS_5NTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!1601 = distinct !{!1601, !47}
!1602 = distinct !{!1602, !47}
!1603 = distinct !{!1603, !47}
!1604 = distinct !{!1604, !47}
!1605 = distinct !{!1605, !47}
!1606 = distinct !{!1606, !47}
!1607 = distinct !{!1607, !47}
!1608 = distinct !{!1608, !47}
!1609 = distinct !{!1609, !47}
!1610 = !{!1611, !18, i64 8}
!1611 = !{!"_ZTSN6duckdb12PrefixHandleE", !43, i64 0, !18, i64 8, !173, i64 16}
!1612 = distinct !{!1612, !47}
!1613 = !{!1614}
!1614 = distinct !{!1614, !1615, !"_ZN6duckdb12PrefixHandle13NewDeprecatedERNS_18FixedSizeAllocatorERNS_4NodeE: argument 0"}
!1615 = distinct !{!1615, !"_ZN6duckdb12PrefixHandle13NewDeprecatedERNS_18FixedSizeAllocatorERNS_4NodeE"}
!1616 = !{!1611, !43, i64 0}
end_hunk_2
