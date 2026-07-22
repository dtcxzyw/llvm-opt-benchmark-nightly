inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_:bb.a
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
  %scevgep22 = getelementptr i8, ptr %scevgep, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep23 = getelementptr i8, ptr %i.ac, i64 2 ; 3 uses
  %i.ad = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep24 = getelementptr i8, ptr %i.ae, i64 8
  %i.af = mul nsw i64 %i.aa, -8                   ; 2 uses
  %scevgep25 = getelementptr i8, ptr %scevgep24, i64 %i.af ; 3 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.ad
  %scevgep26 = getelementptr i8, ptr %i.ag, i64 16 ; 3 uses
  %i.ah = zext i8 %i.c to i64
  %i.ai = add nuw nsw i64 %i.ah, 4294967295
  %i.aj = and i64 %i.ai, 4294967295               ; 3 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep27 = getelementptr i8, ptr %i.ak, i64 1
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.ab ; 2 uses
  %i.al = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep29 = getelementptr i8, ptr %i.al, i64 2 ; 2 uses
  %i.am = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep30 = getelementptr i8, ptr %i.an, i64 8
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.af ; 2 uses
  %i.ao = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep32 = getelementptr i8, ptr %i.ao, i64 16 ; 2 uses
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
  %wide.load48 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !1388
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -8
  store <2 x i64> %wide.load48, ptr %i.ba, align 8, !alias.scope !1389, !noalias !1390
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
  %i.bl = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b, %.critedge.i
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %i.bl, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.bm, align 1, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bo, align 8
  %i.bp = add i8 %i.c, 1
  store i8 %i.bp, ptr %i.b, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bq = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = load ptr, ptr %4, align 8, !tbaa !179
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bw = load i64, ptr %1, align 8
  store i64 %i.bw, ptr %5, align 8
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
  %5 = zext i8 %i.c to i64
  %6 = add nuw nsw i64 %5, 4294967295
  %7 = and i64 %6, 4294967295
  %8 = sub nsw i64 %wide.trip.count.i, %7
  %diff.check = icmp ugt i64 %8, -32
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i8 %i.l, 31
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 24
  %n.vec = and i64 %i.n, 480                      ; 4 uses
  %i.v = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = sub i64 %wide.trip.count.i, %index       ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -15
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -31
  %wide.load = load <16 x i8>, ptr %i.aa, align 1, !tbaa !45
  %wide.load19 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -31
  store <16 x i8> %wide.load, ptr %i.ad, align 1, !tbaa !45
  store <16 x i8> %wide.load19, ptr %i.ae, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.n, 504                    ; 3 uses
  %i.ag = sub nsw i64 %wide.trip.count.i, %n.vec21
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.ah = sub i64 %wide.trip.count.i, %index22    ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 4294967295
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -7
  %wide.load23 = load <8 x i8>, ptr %i.al, align 1, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -7
  store <8 x i8> %wide.load23, ptr %i.an, align 1, !tbaa !45
  %index.next24 = add nuw i64 %index22, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.n, %n.vec21
  br i1 %cmp.n25, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %wide.trip.count.i, %iter.check ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph25.i ], [ %indvars.iv27.i.ph, %.lr.ph25.i.preheader ] ; 3 uses
  %i.ap = add nuw nsw i64 %indvars.iv27.i, 4294967295
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv27.i
  store i8 %i.as, ptr %i.at, align 1, !tbaa !45
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next28.i to i8
  %i.au = icmp ult i8 %i.h, %indvars.i
  br i1 %i.au, label %.lr.ph25.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, !llvm.loop !1400

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13: ; preds = %bb.c
  %i.av = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit: ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13, %bb.b, %.critedge.i
  %.017.lcssa31.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %i.av, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit.loopexit13 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %vec.epilog.middle.block ], [ %indvars.iv.i, %.lr.ph25.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa31.i
  store i8 %2, ptr %i.aw, align 1, !tbaa !45
  %i.ax = add i8 %i.c, 1
  store i8 %i.ax, ptr %i.b, align 1, !tbaa !177
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit
  %i.ay = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %3, align 8, !tbaa !179
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #33
  unreachable

_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit:  ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_9Node7LeafEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.be = load i64, ptr %1, align 8
  store i64 %i.be, ptr %4, align 8
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
  %6 = zext i8 %i.c to i64
  %7 = add nuw nsw i64 %6, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = sub nsw i64 %wide.trip.count.i, %8
  %diff.check = icmp ugt i64 %9, -32
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i8 %i.l, 31
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 24
  %n.vec = and i64 %i.n, 480                      ; 4 uses
  %i.v = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = sub i64 %wide.trip.count.i, %index       ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -15
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -31
  %wide.load = load <16 x i8>, ptr %i.aa, align 1, !tbaa !45
  %wide.load19 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -31
  store <16 x i8> %wide.load, ptr %i.ad, align 1, !tbaa !45
  store <16 x i8> %wide.load19, ptr %i.ae, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.n, 504                    ; 3 uses
  %i.ag = sub nsw i64 %wide.trip.count.i, %n.vec21
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.ah = sub i64 %wide.trip.count.i, %index22    ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 4294967295
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -7
  %wide.load23 = load <8 x i8>, ptr %i.al, align 1, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -7
  store <8 x i8> %wide.load23, ptr %i.an, align 1, !tbaa !45
  %index.next24 = add nuw i64 %index22, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.n, %n.vec21
  br i1 %cmp.n25, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %wide.trip.count.i, %iter.check ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph25.i ], [ %indvars.iv27.i.ph, %.lr.ph25.i.preheader ] ; 3 uses
  %i.ap = add nuw nsw i64 %indvars.iv27.i, 4294967295
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv27.i
  store i8 %i.as, ptr %i.at, align 1, !tbaa !45
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next28.i to i8
  %i.au = icmp ult i8 %i.h, %indvars.i
  br i1 %i.au, label %.lr.ph25.i, label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit, !llvm.loop !1416

_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13: ; preds = %bb.c
  %i.av = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit

_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit: ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13, %bb.b, %.critedge.i
  %.017.lcssa31.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.i, %.critedge.i ], [ %i.av, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit.loopexit13 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %vec.epilog.middle.block ], [ %indvars.iv.i, %.lr.ph25.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.lcssa31.i
  store i8 %2, ptr %i.aw, align 1, !tbaa !45
  %i.ax = add i8 %i.c, 1
  store i8 %i.ax, ptr %i.b, align 1, !tbaa !186
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseLeafILh15ELNS_5NTypeE9EE18InsertByteInternalERS2_h.exit
  %i.ay = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %4, align 8, !tbaa !179
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #33
  unreachable

_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit: ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_10Node15LeafEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.be = load i64, ptr %1, align 8
  store i64 %i.be, ptr %5, align 8
  call void @_ZN6duckdb11Node256Leaf14GrowNode15LeafERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_11Node256LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !191, !nonnull !36, !align !37 ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !194
  %i.bi = add i16 %i.bh, 1
  store i16 %i.bi, ptr %i.bg, align 8, !tbaa !194
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = zext i8 %2 to i64                       ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = and i64 %i.bk, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !19
  %i.bq = or i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !19
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %3, align 8, !tbaa !179
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb11Node256Leaf10InsertByteERNS_3ARTERNS_4NodeEh.exit

bb.k:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #33
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
end_hunk_0
