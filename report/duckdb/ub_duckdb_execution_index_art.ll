Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution_index_art?download=true
inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6duckdb6Prefix5SplitERNS_3ARTERSt17reference_wrapperINS_4NodeEERS4_h:bb.a
bb.c:                                             ; preds = %bb.a
  %i.q = zext i8 %i.k to i32
  %i.r = icmp samesign ult i32 %i.c, %i.q
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.t = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s), !noalias !1783
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !297, !noalias !1783
  %i.v = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.u), !noalias !1783
  %i.w = and i64 %i.v, 72057594037927935
  %i.x = or disjoint i64 %i.w, 72057594037927936  ; 2 uses
  store i64 %i.x, ptr %2, align 8, !tbaa !298, !noalias !1783
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.x, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.y = load ptr, ptr %5, align 8, !tbaa !300, !alias.scope !1783
  %i.z = load i8, ptr %i.d, align 8, !tbaa !290, !noalias !1783
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !218
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !301, !alias.scope !1783
  store i64 0, ptr %i.ad, align 8, !tbaa !298
  %i.ae = load ptr, ptr %4, align 8, !tbaa !300
  %i.af = load i8, ptr %i.d, align 8, !tbaa !290
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !218
  %i.aj = xor i8 %3, -1
  %i.ak = add i8 %i.ai, %i.aj
  %i.al = load ptr, ptr %5, align 8, !tbaa !300
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !218
  %i.an = load ptr, ptr %5, align 8, !tbaa !300   ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !300
  %i.ap = zext i8 %3 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.d, align 8, !tbaa !290
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !218
  %i.aw = zext i8 %i.av to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ar, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !301
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !298 ; 3 uses
  %i.ba = and i64 %i.az, -72057594037927936
  %or.cond = icmp eq i64 %i.ba, 72057594037927936
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb6Prefix6AppendERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.az)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !301
  store i64 %i.az, ptr %i.bb, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.pre = load ptr, ptr %4, align 8, !tbaa !300
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !301
  %i.be = load i64, ptr %i.bd, align 8
  store i64 %i.be, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi ptr [ %i.h, %bb.h ], [ %.pre, %bb.g ]
  %i.bg = load i8, ptr %i.d, align 8, !tbaa !290
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  store i8 %3, ptr %i.bi, align 1, !tbaa !218
  %i.bj = icmp eq i8 %3, 0
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %1, align 8, !tbaa !314   ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !298 ; 2 uses
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
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !297
  %.sroa.0.0.copyload.i = load i64, ptr %i.bk, align 8, !tbaa !199
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.bu, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %i.bk, align 8, !tbaa !298
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !301
  %i.bx = ptrtoint ptr %i.bw to i64
  store i64 %i.bx, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ %.lobit1.i29, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i8 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1784 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !325
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 seq_cst, align 8 ; 0 uses
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
define void @_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1793 {
bb.a:
  %4 = alloca %"class.duckdb::NodeHandle.659", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.03.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !799, !nonnull !209, !align !210 ; 17 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !341   ; 6 uses
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !218
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1785

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
  %i.p = getelementptr i8, ptr %i.b, i64 %i.o     ; 3 uses
  %i.q = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %i.r = getelementptr i8, ptr %i.q, i64 2        ; 3 uses
  %i.s = shl nuw nsw i64 %wide.trip.count.i, 3    ; 3 uses
  %i.t = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 8                  ; 2 uses
  %i.v = sub nsw i64 %i.u, %i.t
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v     ; 3 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.s
  %i.y = getelementptr i8, ptr %i.x, i64 16       ; 3 uses
  %bound0 = icmp ult ptr %i.p, %i.y
  %bound1 = icmp ult ptr %i.w, %i.r
  %found.conflict = and i1 %bound0, %bound1
  %i.z = sub nsw i64 %wide.trip.count.i, %i.l
  %i.aa = getelementptr i8, ptr %i.b, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.n    ; 2 uses
  %bound0.a = icmp ult ptr %i.p, %i.ab
  %bound1.a = icmp ult ptr %i.aa, %i.r
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %6 = sub nsw i64 %i.s, %i.t
  %7 = getelementptr i8, ptr %i.b, i64 %6         ; 2 uses
  %8 = getelementptr i8, ptr %i.b, i64 %i.u       ; 2 uses
  %bound053 = icmp ult ptr %i.p, %8
  %bound154 = icmp ult ptr %7, %i.r
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx, %found.conflict55
  %bound057 = icmp ult ptr %i.w, %i.ab
  %bound158 = icmp ult ptr %i.aa, %i.y
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  %bound061 = icmp ult ptr %i.w, %8
  %bound162 = icmp ult ptr %7, %i.y
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  br i1 %conflict.rdx64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 508                      ; 3 uses
  %i.ac = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = sub i64 %wide.trip.count.i, %index      ; 4 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = getelementptr i8, ptr %i.ae, i64 -3
  %wide.load = load <2 x i8>, ptr %i.af, align 1, !tbaa !218, !alias.scope !1794
  %wide.load65 = load <2 x i8>, ptr %i.ag, align 1, !tbaa !218, !alias.scope !1794
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -3
  store <2 x i8> %wide.load, ptr %i.ai, align 1, !tbaa !218, !alias.scope !1795, !noalias !1796
  store <2 x i8> %wide.load65, ptr %i.aj, align 1, !tbaa !218, !alias.scope !1795, !noalias !1796
  %i.ak = getelementptr [8 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ad ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 -8
  %i.an = getelementptr i8, ptr %i.ak, i64 -24
  %wide.load66 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1797
  %wide.load67 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !1797
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -24
  store <2 x i64> %wide.load66, ptr %i.ao, align 8, !alias.scope !1798, !noalias !1799
  store <2 x i64> %wide.load67, ptr %i.ap, align 8, !alias.scope !1798, !noalias !1799
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1791

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ar = getelementptr i8, ptr %i.b, i64 %indvars.iv33.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !218
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.as, ptr %i.at, align 1, !tbaa !218
  %i.au = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv33.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.ax = icmp ult i8 %i.h, %indvars.i
  br i1 %i.ax, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1792

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.ay = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.ay, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.az, align 1, !tbaa !218
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bb, align 8
  %i.bc = add i8 %i.c, 1
  store i8 %i.bc, ptr %i.b, align 8, !tbaa !341
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bd = load ptr, ptr %4, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %4, align 8, !tbaa !325
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bj = load i64, ptr %1, align 8
  store i64 %i.bj, ptr %5, align 8
  call void @_ZN6duckdb6Node169GrowNode4ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @_ZN6duckdb6Node1611InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9Node7Leaf10InsertByteERNS_3ARTERNS_4NodeEh(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1801 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.654", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_9Node7LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !802, !nonnull !209 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !324   ; 6 uses
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !218
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit, label %.lr.ph.i, !llvm.loop !1800

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
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 1 dereferenceable(1) %scevgep27.i, i64 range(i64 0, 257) %i.o, i1 false), !tbaa !218
  br label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit: ; preds = %bb.c
  %i.p = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit: ; preds = %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit, %bb.b, %.critedge.i
  %.017.lcssa32.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %i.p, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa32.i
  store i8 %2, ptr %i.q, align 1, !tbaa !218
  %i.r = add i8 %i.c, 1
  store i8 %i.r, ptr %i.b, align 1, !tbaa !324
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit
  %i.s = load ptr, ptr %3, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %3, align 8, !tbaa !325
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = atomicrmw add ptr %i.u, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit:  ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not.not, label %bb.h, label %bb.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb10NodeHandleINS_5Node4EED2Ev:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node169GrowNode4ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1874 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.659", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::NodeHandle.661", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  call void @_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !799, !nonnull !209, !align !210 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !297, !noalias !1875
  %i.g = invoke i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.f)
          to label %.noexc25 unwind label %bb.h

.noexc25:                                         ; preds = %.noexc
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = or disjoint i64 %i.h, 288230376151711744 ; 2 uses
  store i64 %i.i, ptr %1, align 8, !tbaa !298, !noalias !1875
  invoke void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.i)
          to label %.sink.split.i unwind label %bb.h

.sink.split.i:                                    ; preds = %.noexc25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !344, !alias.scope !1875, !nonnull !209, !align !210 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, i8 0, i64 128, i1 false), !tbaa !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.k, i8 0, i64 17, i1 false)
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !344, !nonnull !209, !align !210 ; 3 uses
  %i.n = load i64, ptr %2, align 8, !tbaa !298
  %i.o = load i64, ptr %1, align 8, !tbaa !298
  %i.p = and i64 %i.o, 9223372036854775807
  %masksel = and i64 %i.n, -9223372036854775808
  %.sink.i = or disjoint i64 %i.p, %masksel
  store i64 %.sink.i, ptr %1, align 8, !tbaa !298
  %i.q = load i8, ptr %i.b, align 8, !tbaa !341   ; 2 uses
  store i8 %i.q, ptr %i.m, align 8, !tbaa !616
  %.not29 = icmp eq i8 %i.q, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.sink.split.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.sink.split.i
  %i.v = load ptr, ptr %4, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %4, align 8, !tbaa !325
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ab = load ptr, ptr %3, align 8, !tbaa !325
  %.not.i.i27 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i27, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %3, align 8, !tbaa !325
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ah = load i64, ptr %2, align 8, !tbaa !298
  %i.ai = lshr i64 %i.ah, 56
  %i.aj = trunc nuw i64 %i.ai to i8
  %i.ak = and i8 %i.aj, 127
  %i.al = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.am = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.ak)
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !297
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !199
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.ap, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %2, align 8, !tbaa !298
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
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !218
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1, !tbaa !218
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i8, ptr %i.b, align 8, !tbaa !341
  %i.ay = zext i8 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.i, label %._crit_edge, !llvm.loop !1873
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node1611InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1884 {
bb.a:
  %4 = alloca %"class.duckdb::NodeHandle.660", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_6Node16EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.03.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !809, !nonnull !209, !align !210 ; 15 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !616   ; 6 uses
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !218
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1876

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
  %i.p = getelementptr i8, ptr %i.b, i64 %i.o     ; 3 uses
  %i.q = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %i.r = getelementptr i8, ptr %i.q, i64 2        ; 3 uses
  %i.s = shl nuw nsw i64 %wide.trip.count.i, 3    ; 3 uses
  %i.t = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 24                 ; 2 uses
  %i.v = sub nsw i64 %i.u, %i.t
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v     ; 3 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.s
  %i.y = getelementptr i8, ptr %i.x, i64 32       ; 3 uses
  %bound0 = icmp ult ptr %i.p, %i.y
  %bound1 = icmp ult ptr %i.w, %i.r
  %found.conflict = and i1 %bound0, %bound1
  %i.z = sub nsw i64 %wide.trip.count.i, %i.l
  %i.aa = getelementptr i8, ptr %i.b, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.n    ; 2 uses
  %bound0.a = icmp ult ptr %i.p, %i.ab
  %bound1.a = icmp ult ptr %i.aa, %i.r
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %6 = add nuw nsw i64 %i.s, 16
  %7 = sub nsw i64 %6, %i.t
  %8 = getelementptr i8, ptr %i.b, i64 %7         ; 2 uses
  %9 = getelementptr i8, ptr %i.b, i64 %i.u       ; 2 uses
  %bound053 = icmp ult ptr %i.p, %9
  %bound154 = icmp ult ptr %8, %i.r
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx, %found.conflict55
  %bound057 = icmp ult ptr %i.w, %i.ab
  %bound158 = icmp ult ptr %i.aa, %i.y
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  %bound061 = icmp ult ptr %i.w, %9
  %bound162 = icmp ult ptr %8, %i.y
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  br i1 %conflict.rdx64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 508                      ; 3 uses
  %i.ac = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = getelementptr i8, ptr %i.ae, i64 -3
  %wide.load = load <2 x i8>, ptr %i.af, align 1, !tbaa !218, !alias.scope !1885
  %wide.load65 = load <2 x i8>, ptr %i.ag, align 1, !tbaa !218, !alias.scope !1885
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -3
  store <2 x i8> %wide.load, ptr %i.ai, align 1, !tbaa !218, !alias.scope !1886, !noalias !1887
  store <2 x i8> %wide.load65, ptr %i.aj, align 1, !tbaa !218, !alias.scope !1886, !noalias !1887
  %i.ak = getelementptr [8 x i8], ptr %i.i, i64 %i.ad ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = getelementptr i8, ptr %i.ak, i64 -16
  %i.an = getelementptr i8, ptr %i.ak, i64 -32
  %wide.load66 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1888
  %wide.load67 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !1888
  %i.ao = getelementptr i8, ptr %i.ak, i64 -24
  store <2 x i64> %wide.load66, ptr %i.al, align 8, !alias.scope !1889, !noalias !1890
  store <2 x i64> %wide.load67, ptr %i.ao, align 8, !alias.scope !1889, !noalias !1890
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1882

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aq = getelementptr i8, ptr %i.b, i64 %indvars.iv33.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !218
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !218
  %i.at = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv33.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load i64, ptr %i.au, align 8
  store i64 %i.av, ptr %i.at, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.aw = icmp ult i8 %i.h, %indvars.i
  br i1 %i.aw, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1883

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.ax = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.ax, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.ay, align 1, !tbaa !218
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.ba, align 8
  %i.bb = add i8 %i.c, 1
  store i8 %i.bb, ptr %i.b, align 8, !tbaa !616
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bc = load ptr, ptr %4, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %4, align 8, !tbaa !325
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #33
  unreachable

_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit:     ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bi = load i64, ptr %1, align 8
  store i64 %i.bi, ptr %5, align 8
  call void @_ZN6duckdb6Node4810GrowNode16ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @_ZN6duckdb6Node4811InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Node411DeleteChildERNS_3ARTERNS_4NodeES4_hNS_10GateStatusE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1901 {
bb.a:
  %5 = alloca %"class.duckdb::NodeHandle", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !noalias !1902
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339, !alias.scope !1902, !nonnull !209, !align !210 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 9 uses
  %i.d = load i8, ptr %i.b, align 8, !tbaa !341   ; 3 uses
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i8 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !218
  %i.g = icmp eq i8 %i.f, %3
  br i1 %i.g, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1893

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
  %i.l = load i8, ptr %i.b, align 8, !tbaa !341
  %i.m = add i8 %i.l, -1                          ; 3 uses
  store i8 %i.m, ptr %i.b, align 8, !tbaa !341
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
  %bound0 = icmp ult ptr %i.q, %i.y
  %bound1 = icmp ult ptr %i.v, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %i.z = getelementptr i8, ptr %i.b, i64 %i.j
  %i.aa = getelementptr i8, ptr %i.z, i64 2       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %wide.trip.count39.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 2      ; 2 uses
  %bound049 = icmp ult ptr %i.q, %i.ac
  %bound0.a = icmp ult ptr %i.aa, %i.s
  %found.conflict51 = and i1 %bound049, %bound0.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  %6 = getelementptr i8, ptr %i.b, i64 %i.t
  %7 = getelementptr i8, ptr %6, i64 16           ; 2 uses
  %8 = getelementptr i8, ptr %i.b, i64 %i.w
  %9 = getelementptr i8, ptr %8, i64 16           ; 2 uses
  %bound052 = icmp ult ptr %i.q, %9
  %bound153 = icmp ult ptr %7, %i.s
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx, %found.conflict54
  %bound056 = icmp ult ptr %i.v, %i.ac
  %bound157 = icmp ult ptr %i.aa, %i.y
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  %bound060 = icmp ult ptr %i.v, %9
  %bound161 = icmp ult ptr %7, %i.y
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx59, %found.conflict62
  br i1 %conflict.rdx63, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %i.ad = add nsw i64 %n.vec, %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %index, %i.j                ; 3 uses
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %wide.load = load <2 x i8>, ptr %i.ag, align 1, !tbaa !218, !alias.scope !1903
  %wide.load64 = load <2 x i8>, ptr %i.ah, align 1, !tbaa !218, !alias.scope !1903
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store <2 x i8> %wide.load, ptr %i.ai, align 1, !tbaa !218, !alias.scope !1904, !noalias !1905
  store <2 x i8> %wide.load64, ptr %i.aj, align 1, !tbaa !218, !alias.scope !1904, !noalias !1905
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.af ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load65 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !1906
  %wide.load66 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1906
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %wide.load65, ptr %i.al, align 8, !alias.scope !1907, !noalias !1908
  store <2 x i64> %wide.load66, ptr %i.an, align 8, !alias.scope !1907, !noalias !1908
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1899

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph33.i, %middle.block
  %indvars.iv36.i.ph = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph33.i ], [ %i.ad, %middle.block ] ; 6 uses
  %i.ap = sub nsw i64 %wide.trip.count39.i, %indvars.iv36.i.ph
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aq = add nuw nsw i64 %indvars.iv36.i.ph, 1   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !218
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv36.i.ph
  store i8 %i.as, ptr %i.at, align 1, !tbaa !218
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv36.i.ph
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv36.i.unr = phi i64 [ %indvars.iv36.i.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %i.ax = add nsw i64 %wide.trip.count39.i, -1
  %i.ay = icmp eq i64 %indvars.iv36.i.ph, %i.ax
  br i1 %i.ay, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, label %scalar.ph

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #30
  resume { ptr, i32 } %i.az

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv36.i = phi i64 [ %i.bh, %scalar.ph ], [ %indvars.iv36.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ba = add nuw nsw i64 %indvars.iv36.i, 1      ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !218
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv36.i
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !218
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ba
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv36.i
  %i.bg = load i64, ptr %i.be, align 8
  store i64 %i.bg, ptr %i.bf, align 8
  %i.bh = add nuw nsw i64 %indvars.iv36.i, 2      ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !218
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !218
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bh
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ba
  %i.bn = load i64, ptr %i.bl, align 8
  store i64 %i.bn, ptr %i.bm, align 8
  %exitcond40.not.i.1 = icmp eq i64 %i.bh, %wide.trip.count39.i
  br i1 %exitcond40.not.i.1, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, label %scalar.ph, !llvm.loop !1900

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !339, !nonnull !209, !align !210 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !341
  %.not = icmp eq i8 %i.bp, 1
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load i64, ptr %i.bq, align 8            ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !218 ; 3 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %5, align 8, !tbaa !325
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit: ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ca = load i64, ptr %1, align 8, !tbaa !298   ; 2 uses
  %i.cb = lshr i64 %i.ca, 56
  %i.cc = trunc nuw i64 %i.cb to i8
  %i.cd = and i8 %i.cc, 127
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cf = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
  %i.cg = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.cd)
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !297
  %.sroa.0.0.copyload.i16 = load i64, ptr %1, align 8, !tbaa !199
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.cj, i64 %.sroa.0.0.copyload.i16)
  store i64 0, ptr %1, align 8, !tbaa !298
  %.not20 = icmp sgt i64 %i.ca, -1
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit
  call void @_ZN6duckdb6Prefix18ConcatNode4WasGateERNS_3ARTERNS_4NodeES3_h(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.br, i8 noundef zeroext %i.bt)
  br label %_ZN6duckdb6Prefix6ConcatERNS_3ARTERNS_4NodeES4_S3_hNS_10GateStatusES5_.exit

bb.j:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit
  %.not.i17 = icmp sgt i64 %i.br, -1
  br i1 %.not.i17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN6duckdb6Prefix17ConcatChildIsGateERNS_3ARTERNS_4NodeES4_S3_h(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.br, i8 noundef zeroext %i.bt)
  br label %_ZN6duckdb6Prefix6ConcatERNS_3ARTERNS_4NodeES4_S3_hNS_10GateStatusES5_.exit

bb.l:                                             ; preds = %bb.j
  call void @_ZN6duckdb6Prefix14ConcatInternalERNS_3ARTERNS_4NodeES4_S3_hNS_10GateStatusE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.br, i8 noundef zeroext %i.bt, i8 noundef zeroext %4)
  br label %_ZN6duckdb6Prefix6ConcatERNS_3ARTERNS_4NodeES4_S3_hNS_10GateStatusES5_.exit

.critedge:                                        ; preds = %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit
  %i.ck = load ptr, ptr %5, align 8, !tbaa !325
  %.not.i.i18 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i18, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit19, label %bb.m

bb.m:                                             ; preds = %.critedge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %5, align 8, !tbaa !325
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = atomicrmw add ptr %i.cm, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit19

bb.o:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit19: ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN6duckdb6Prefix6ConcatERNS_3ARTERNS_4NodeES4_S3_hNS_10GateStatusES5_.exit

_ZN6duckdb6Prefix6ConcatERNS_3ARTERNS_4NodeES4_S3_hNS_10GateStatusES5_.exit: ; preds = %bb.l, %bb.k, %bb.i, %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Prefix6ConcatERNS_3ARTERNS_4NodeES4_S3_hNS_10GateStatusES5_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i64 %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 align 2 !guid !1909 {
bb.a:
  %i.a = icmp eq i8 %5, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Prefix18ConcatNode4WasGateERNS_3ARTERNS_4NodeES3_h(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i8 noundef zeroext %4)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp sgt i64 %3, -1
  br i1 %.not, label %bb.e, label %bb.d
end_hunk_1
begin_hunk_2_@_ZN6duckdb6Node4810GrowNode16ERNS_3ARTERNS_4NodeES4_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ar
  %i.at = trunc nuw i64 %indvars.iv to i8
  store i8 %i.at, ptr %i.as, align 1, !tbaa !218
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i8, ptr %i.b, align 8, !tbaa !616
  %i.ay = zext i8 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.i, label %._crit_edge, !llvm.loop !1923
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node4811InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1927 {
bb.a:
  %4 = alloca %"class.duckdb::NodeHandle.683", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::NodeHandle.662", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.sroa.012.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_6Node48EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.012.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !209, !align !210 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !349   ; 4 uses
  %.not.not = icmp eq i8 %i.c, 48                 ; 2 uses
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 3 uses
  %i.e = zext i8 %i.c to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !298
  %i.h = icmp ugt i64 %i.g, 72057594037927935
  br i1 %i.h, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b, %.preheader
  %.023 = phi i8 [ %i.m, %.preheader ], [ 0, %bb.b ] ; 3 uses
  %i.i = zext i8 %.023 to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !298
  %i.l = icmp ugt i64 %i.k, 72057594037927935
  %i.m = add i8 %.023, 1
  br i1 %i.l, label %.preheader, label %.loopexit, !llvm.loop !1926

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.pre-phi = phi i64 [ %i.e, %bb.b ], [ %i.i, %.preheader ]
  %.1 = phi i8 [ %i.c, %bb.b ], [ %.023, %.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.pre-phi
  store i64 %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.p = zext i8 %2 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 %.1, ptr %i.q, align 1, !tbaa !218
  %i.r = add i8 %i.c, 1
  store i8 %i.r, ptr %i.b, align 8, !tbaa !349
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  %i.s = load ptr, ptr %5, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_6Node48EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %5, align 8, !tbaa !325
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = atomicrmw add ptr %i.u, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_6Node48EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZN6duckdb10NodeHandleINS_6Node48EED2Ev.exit:     ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.not.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node48EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.y = load i64, ptr %1, align 8
  store i64 %i.y, ptr %6, align 8
  call void @_ZN6duckdb7Node25610GrowNode48ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_7Node256EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !352, !nonnull !209, !align !210 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !354
  %i.ac = add i16 %i.ab, 1
  store i16 %i.ac, ptr %i.aa, align 8, !tbaa !354
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = zext i8 %2 to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  store i64 %3, ptr %i.af, align 8
  %i.ag = load ptr, ptr %4, align 8, !tbaa !325
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZN6duckdb7Node25611InsertChildERNS_3ARTERNS_4NodeEhS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %4, align 8, !tbaa !325
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb7Node25611InsertChildERNS_3ARTERNS_4NodeEhS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #33
  unreachable

_ZN6duckdb7Node25611InsertChildERNS_3ARTERNS_4NodeEhS3_.exit: ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node48EED2Ev.exit, %_ZN6duckdb7Node25611InsertChildERNS_3ARTERNS_4NodeEhS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node1611DeleteChildERNS_3ARTERNS_4NodeEh(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1938 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.661", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !noalias !1939
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344, !alias.scope !1939, !nonnull !209, !align !210 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 9 uses
  %i.d = load i8, ptr %i.b, align 8, !tbaa !616   ; 3 uses
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i8 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !218
  %i.g = icmp eq i8 %i.f, %2
  br i1 %i.g, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1930

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit.i, %bb.a
  %.026.lcssa.i = phi i8 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 9 uses
  %i.j = zext i8 %.026.lcssa.i to i64             ; 9 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  invoke void @_ZN6duckdb4Node8FreeTreeERNS_3ARTERS0_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.l = load i8, ptr %i.b, align 8, !tbaa !616
  %i.m = add i8 %i.l, -1                          ; 3 uses
  store i8 %i.m, ptr %i.b, align 8, !tbaa !616
  %i.n = icmp ult i8 %.026.lcssa.i, %i.m
  br i1 %i.n, label %.lr.ph33.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit

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
  %i.v = getelementptr i8, ptr %i.u, i64 24       ; 3 uses
  %i.w = shl nuw nsw i64 %wide.trip.count39.i, 3  ; 2 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 24       ; 3 uses
  %bound0 = icmp ult ptr %i.q, %i.y
  %bound1 = icmp ult ptr %i.v, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %i.z = getelementptr i8, ptr %i.b, i64 %i.j
  %i.aa = getelementptr i8, ptr %i.z, i64 2       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %wide.trip.count39.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 2      ; 2 uses
  %bound034 = icmp ult ptr %i.q, %i.ac
  %bound0.a = icmp ult ptr %i.aa, %i.s
  %found.conflict36 = and i1 %bound034, %bound0.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  %5 = getelementptr i8, ptr %i.b, i64 %i.t
  %6 = getelementptr i8, ptr %5, i64 32           ; 2 uses
  %7 = getelementptr i8, ptr %i.b, i64 %i.w
  %8 = getelementptr i8, ptr %7, i64 32           ; 2 uses
  %bound037 = icmp ult ptr %i.q, %8
  %bound138 = icmp ult ptr %6, %i.s
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx40 = or i1 %conflict.rdx, %found.conflict39
  %bound041 = icmp ult ptr %i.v, %i.ac
  %bound142 = icmp ult ptr %i.aa, %i.y
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx40, %found.conflict43
  %bound045 = icmp ult ptr %i.v, %8
  %bound146 = icmp ult ptr %6, %i.y
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %i.ad = add nsw i64 %n.vec, %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %index, %i.j                ; 3 uses
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %wide.load = load <2 x i8>, ptr %i.ag, align 1, !tbaa !218, !alias.scope !1940
  %wide.load49 = load <2 x i8>, ptr %i.ah, align 1, !tbaa !218, !alias.scope !1940
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store <2 x i8> %wide.load, ptr %i.ai, align 1, !tbaa !218, !alias.scope !1941, !noalias !1942
  store <2 x i8> %wide.load49, ptr %i.aj, align 1, !tbaa !218, !alias.scope !1941, !noalias !1942
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.af ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !1943
  %wide.load51 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1943
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %wide.load50, ptr %i.al, align 8, !alias.scope !1944, !noalias !1945
  store <2 x i64> %wide.load51, ptr %i.an, align 8, !alias.scope !1944, !noalias !1945
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1936

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph33.i, %middle.block
  %indvars.iv36.i.ph = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph33.i ], [ %i.ad, %middle.block ] ; 6 uses
  %i.ap = sub nsw i64 %wide.trip.count39.i, %indvars.iv36.i.ph
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aq = add nuw nsw i64 %indvars.iv36.i.ph, 1   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !218
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv36.i.ph
  store i8 %i.as, ptr %i.at, align 1, !tbaa !218
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv36.i.ph
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv36.i.unr = phi i64 [ %indvars.iv36.i.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %i.ax = add nsw i64 %wide.trip.count39.i, -1
  %i.ay = icmp eq i64 %indvars.iv36.i.ph, %i.ax
  br i1 %i.ay, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, label %scalar.ph

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  resume { ptr, i32 } %i.az

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv36.i = phi i64 [ %i.bh, %scalar.ph ], [ %indvars.iv36.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ba = add nuw nsw i64 %indvars.iv36.i, 1      ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !218
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv36.i
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !218
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ba
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv36.i
  %i.bg = load i64, ptr %i.be, align 8
  store i64 %i.bg, ptr %i.bf, align 8
  %i.bh = add nuw nsw i64 %indvars.iv36.i, 2      ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !218
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !218
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bh
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ba
  %i.bn = load i64, ptr %i.bl, align 8
  store i64 %i.bn, ptr %i.bm, align 8
  %exitcond40.not.i.1 = icmp eq i64 %i.bh, %wide.trip.count39.i
  br i1 %exitcond40.not.i.1, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, label %scalar.ph, !llvm.loop !1937

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !344, !nonnull !209, !align !210
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !616
  %i.bq = icmp ult i8 %i.bp, 4
  %i.br = load ptr, ptr %3, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = load ptr, ptr %3, align 8, !tbaa !325
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit: ; preds = %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19DeleteChildInternalERNS_3ARTERNS_4NodeEh.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bx = load i64, ptr %1, align 8
  store i64 %i.bx, ptr %4, align 8
  call void @_ZN6duckdb5Node412ShrinkNode16ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1946 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !325
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 seq_cst, align 8 ; 0 uses
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
define void @_ZN6duckdb6Node1612ShrinkNode48ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1950 {
.sink.split.i:
  %3 = alloca %"class.duckdb::NodeHandle.661", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::NodeHandle.662", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !1951
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !297, !noalias !1951
  %i.e = tail call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.d), !noalias !1951
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = or disjoint i64 %i.f, 288230376151711744 ; 2 uses
  store i64 %i.g, ptr %1, align 8, !tbaa !298, !noalias !1951
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !344, !alias.scope !1951, !nonnull !209, !align !210 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, i8 0, i64 128, i1 false), !tbaa !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.i, i8 0, i64 17, i1 false)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !344, !nonnull !209, !align !210 ; 4 uses
  %i.l = load i64, ptr %2, align 8, !tbaa !298
  %i.m = load i64, ptr %1, align 8, !tbaa !298
  %i.n = and i64 %i.m, 9223372036854775807
  %masksel = and i64 %i.l, -9223372036854775808
  %.sink.i = or disjoint i64 %i.n, %masksel
  store i64 %.sink.i, ptr %1, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  invoke void @_ZN6duckdb10NodeHandleINS_6Node48EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
          to label %bb.a unwind label %bb.i

bb.a:                                             ; preds = %.sink.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !347, !nonnull !209, !align !210 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !616
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 264
end_hunk_2
