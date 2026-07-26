inline.NumInlined: 5702
inline.NumDeleted: 2184
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN2v88internal8compiler22RegisterAllocationData11PhiMapValue10AddOperandEPNS1_18InstructionOperandE:bb.a
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler18InstructionOperandEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler18InstructionOperandEE9push_backERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.a, align 8
  store ptr %1, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler22RegisterAllocationData11PhiMapValue16CommitAssignmentERKNS1_18InstructionOperandE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr %1, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.e = load ptr, ptr %.010, align 8
  store i64 %.pre, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler22RegisterAllocationDataC2EPKNS0_21RegisterConfigurationEPNS0_4ZoneEPNS1_5FrameEPNS1_19InstructionSequenceEPNS0_11TickCounterEPKc(ptr noundef nonnull align 8 dereferenceable(536) initializes((0, 48), (56, 60), (64, 72)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #2 align 2 {
bb.a:
  store ptr %2, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = ptrtoint ptr %2 to i64                   ; 2 uses
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %sext = shl i64 %i.u, 29
  %i.v = ashr i64 %sext, 32                       ; 3 uses
  store ptr %2, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.not.i = icmp eq i64 %i.v, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %i.v, 2305843009213693951
  br i1 %i.z, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.98) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = shl nuw nsw i64 %i.v, 3                 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %i.aa, %i.af
  br i1 %i.ag, label %bb.e, label %.lr.ph.preheader.i, !prof !16

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.aa) #36
  %.pre.i.i.i = load i64, ptr %i.ad, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.ah = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = add i64 %i.ah, %i.aa
  store i64 %i.aj, ptr %i.ad, align 8
  store ptr %i.ai, ptr %i.w, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %i.ak, ptr %i.y, align 8
  store ptr %i.ak, ptr %i.x, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.ai, %.lr.ph.preheader.i ] ; 2 uses
  store ptr null, ptr %.09.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.x, align 8
  %i.an = icmp ult ptr %i.al, %i.am
  br i1 %i.an, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit.loopexit, !llvm.loop !63

_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit

_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit.loopexit, %bb.a
  %i.ao = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit.loopexit ], [ %2, %bb.a ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aq = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %sext79 = shl i64 %i.ax, 29
  %i.ay = ashr i64 %sext79, 32                    ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.not.i21 = icmp eq i64 %i.ay, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  br i1 %.not.i21, label %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit
  %i.bc = icmp ult i64 %i.ay, 2305843009213693951
  br i1 %i.bc, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.98) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bd = shl nuw nsw i64 %i.ay, 3                ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = sub i64 %i.bf, %i.bh
  %i.bj = icmp ugt i64 %i.bd, %i.bi
  br i1 %i.bj, label %bb.i, label %.lr.ph.preheader.i22, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef %i.bd) #36
  %.pre.i.i.i25 = load i64, ptr %i.bg, align 8
  br label %.lr.ph.preheader.i22

.lr.ph.preheader.i22:                             ; preds = %bb.i, %bb.h
  %i.bk = phi i64 [ %.pre.i.i.i25, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bl = inttoptr i64 %i.bk to ptr               ; 3 uses
  %i.bm = add i64 %i.bk, %i.bd
  store i64 %i.bm, ptr %i.bg, align 8
  store ptr %i.bl, ptr %i.az, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store ptr %i.bn, ptr %i.bb, align 8
  store ptr %i.bn, ptr %i.ba, align 8
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23, %.lr.ph.preheader.i22
  %.09.i24 = phi ptr [ %i.bo, %.lr.ph.i23 ], [ %i.bl, %.lr.ph.preheader.i22 ] ; 2 uses
  store ptr null, ptr %.09.i24, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.09.i24, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.ba, align 8
  %i.bq = icmp ult ptr %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph.i23, label %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26.loopexit, !llvm.loop !63

_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26.loopexit: ; preds = %.lr.ph.i23
  %.pre83 = load ptr, ptr %0, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26

_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26.loopexit, %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit
  %i.br = phi ptr [ %.pre83, %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26.loopexit ], [ %i.ao, %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 8            ; 3 uses
  %i.bv = zext nneg i32 %i.bu to i64
  store ptr %i.br, ptr %i.bs, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.not.i27 = icmp eq i32 %i.bu, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  br i1 %.not.i27, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26
  %i.bz = icmp sgt i32 %i.bu, -1
  br i1 %i.bz, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.98) #35
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ca = shl nuw nsw i64 %i.bv, 3                ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = sub i64 %i.cc, %i.ce
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.m, label %.lr.ph.preheader.i28, !prof !16

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 noundef %i.ca) #36
  %.pre.i.i.i31 = load i64, ptr %i.cd, align 8
  br label %.lr.ph.preheader.i28

.lr.ph.preheader.i28:                             ; preds = %bb.m, %bb.l
  %i.ch = phi i64 [ %.pre.i.i.i31, %bb.m ], [ %i.ce, %bb.l ] ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = add i64 %i.ch, %i.ca
  store i64 %i.cj, ptr %i.cd, align 8
  store ptr %i.ci, ptr %i.bw, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store ptr %i.ck, ptr %i.by, align 8
  store ptr %i.ck, ptr %i.bx, align 8
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29, %.lr.ph.preheader.i28
  %.09.i30 = phi ptr [ %i.cl, %.lr.ph.i29 ], [ %i.ci, %.lr.ph.preheader.i28 ] ; 2 uses
  store ptr null, ptr %.09.i30, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i30, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.bx, align 8
  %i.cn = icmp ult ptr %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph.i29, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit.loopexit, !llvm.loop !64

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit.loopexit: ; preds = %.lr.ph.i29
  %.pre84 = load ptr, ptr %0, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit.loopexit, %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26
  %i.co = phi ptr [ %.pre84, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit.loopexit ], [ %i.br, %_ZN2v88internal10ZoneVectorIPNS0_15SparseBitVectorEEC2EmS3_PNS0_4ZoneE.exit26 ] ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 8            ; 3 uses
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = zext nneg i32 %i.ct to i64
  store ptr %i.co, ptr %i.cp, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.not.i32 = icmp eq i32 %i.cs, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  br i1 %.not.i32, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit
  %i.cy = icmp sgt i32 %i.cs, -1
  br i1 %i.cy, label %bb.p, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.98) #35
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cz = shl nuw nsw i64 %i.cu, 3                ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = sub i64 %i.db, %i.dd
  %i.df = icmp ugt i64 %i.cz, %i.de
  br i1 %i.df, label %bb.q, label %.lr.ph.preheader.i33, !prof !16

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 noundef %i.cz) #36
  %.pre.i.i.i36 = load i64, ptr %i.dc, align 8
  br label %.lr.ph.preheader.i33

.lr.ph.preheader.i33:                             ; preds = %bb.q, %bb.p
  %i.dg = phi i64 [ %.pre.i.i.i36, %bb.q ], [ %i.dd, %bb.p ] ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  %i.di = add i64 %i.dg, %i.cz
  store i64 %i.di, ptr %i.dc, align 8
  store ptr %i.dh, ptr %i.cv, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz ; 2 uses
  store ptr %i.dj, ptr %i.cx, align 8
  store ptr %i.dj, ptr %i.cw, align 8
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34, %.lr.ph.preheader.i33
  %.09.i35 = phi ptr [ %i.dk, %.lr.ph.i34 ], [ %i.dh, %.lr.ph.preheader.i33 ] ; 2 uses
  store ptr null, ptr %.09.i35, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i35, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.cw, align 8
  %i.dm = icmp ult ptr %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.i34, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37.loopexit, !llvm.loop !64

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37.loopexit: ; preds = %.lr.ph.i34
  %.pre85 = load ptr, ptr %0, align 8
  %.pre86 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37.loopexit, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit
  %i.dn = phi ptr [ %.pre86, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37.loopexit ], [ %i.cq, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit ]
  %i.do = phi ptr [ %.pre85, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37.loopexit ], [ %i.co, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.do, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = load i32, ptr %i.ds, align 8            ; 3 uses
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = zext nneg i32 %i.du to i64
  store ptr %i.do, ptr %i.dr, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.not.i38 = icmp eq i32 %i.dt, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  br i1 %.not.i38, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37
  %i.dz = icmp sgt i32 %i.dt, -1
  br i1 %i.dz, label %bb.t, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.98) #35
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ea = shl nuw nsw i64 %i.dv, 3                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ef = sub i64 %i.ec, %i.ee
  %i.eg = icmp ugt i64 %i.ea, %i.ef
  br i1 %i.eg, label %bb.u, label %.lr.ph.preheader.i39, !prof !16

bb.u:                                             ; preds = %bb.t
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.do, i64 noundef %i.ea) #36
  %.pre.i.i.i42 = load i64, ptr %i.ed, align 8
  br label %.lr.ph.preheader.i39

.lr.ph.preheader.i39:                             ; preds = %bb.u, %bb.t
  %i.eh = phi i64 [ %.pre.i.i.i42, %bb.u ], [ %i.ee, %bb.t ] ; 2 uses
  %i.ei = inttoptr i64 %i.eh to ptr               ; 3 uses
  %i.ej = add i64 %i.eh, %i.ea
  store i64 %i.ej, ptr %i.ed, align 8
  store ptr %i.ei, ptr %i.dw, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea ; 2 uses
  store ptr %i.ek, ptr %i.dy, align 8
  store ptr %i.ek, ptr %i.dx, align 8
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40, %.lr.ph.preheader.i39
  %.09.i41 = phi ptr [ %i.el, %.lr.ph.i40 ], [ %i.ei, %.lr.ph.preheader.i39 ] ; 2 uses
  store ptr null, ptr %.09.i41, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.09.i41, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.dx, align 8
  %i.en = icmp ult ptr %i.el, %i.em
  br i1 %i.en, label %.lr.ph.i40, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43.loopexit, !llvm.loop !64

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43.loopexit: ; preds = %.lr.ph.i40
  %.pre87 = load ptr, ptr %0, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43.loopexit, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37
  %i.eo = phi ptr [ %.pre87, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43.loopexit ], [ %i.do, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit37 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.eo, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i8 0, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.eo, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.es, i8 0, i64 40, i1 false)
  %i.ew = load i32, ptr %i.bt, align 8
  store i32 %i.ew, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %2, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i8 0, i64 24, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fa = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %sext80 = shl i64 %i.fh, 29
  %i.fi = ashr i64 %sext80, 32                    ; 3 uses
  store ptr %2, ptr %i.ez, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.not.i44 = icmp eq i64 %i.fi, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false)
  br i1 %.not.i44, label %_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43
  %i.fm = icmp ult i64 %i.fi, 576460752303423487
  br i1 %i.fm, label %bb.x, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.98) #35
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.fn = shl nuw nsw i64 %i.fi, 5                ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8            ; 2 uses
  %i.fs = sub i64 %i.fp, %i.fr
  %i.ft = icmp ugt i64 %i.fn, %i.fs
  br i1 %i.ft, label %bb.y, label %.lr.ph.preheader.i45, !prof !16

bb.y:                                             ; preds = %bb.x
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.fn) #36
  %.pre.i.i.i48 = load i64, ptr %i.fq, align 8
  br label %.lr.ph.preheader.i45

.lr.ph.preheader.i45:                             ; preds = %bb.y, %bb.x
  %i.fu = phi i64 [ %.pre.i.i.i48, %bb.y ], [ %i.fr, %bb.x ] ; 2 uses
  %i.fv = inttoptr i64 %i.fu to ptr               ; 3 uses
  %i.fw = add i64 %i.fu, %i.fn
  store i64 %i.fw, ptr %i.fq, align 8
  store ptr %i.fv, ptr %i.fj, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn ; 2 uses
  store ptr %i.fx, ptr %i.fl, align 8
  store ptr %i.fx, ptr %i.fk, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit, %.lr.ph.preheader.i45
  %.09.i47 = phi ptr [ %i.fz, %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit ], [ %i.fv, %.lr.ph.preheader.i45 ] ; 3 uses
  store ptr %2, ptr %.09.i47, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.09.i47, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.09.i47, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i8 0, i64 24, i1 false)
  %i.ga = load ptr, ptr %i.fk, align 8
  %i.gb = icmp ult ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit, label %_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit, !llvm.loop !65

_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit, %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEEC2EmS4_PNS0_4ZoneE.exit43
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %5, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %i.f, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  store i32 0, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr null, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.ge, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.ge, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 0, ptr %i.gi, align 8
  %i.gj = load i32, ptr %i.bt, align 8
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler22RegisterAllocationData12NewLiveRangeEiNS0_21MachineRepresentationE.exit, %_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit
  %i.gl = load ptr, ptr %i.b, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8            ; 4 uses
  %i.go = load ptr, ptr %i.d, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i32, ptr %i.gp, align 8            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 24 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 6 uses
  %i.gu = load i64, ptr %i.gt, align 8            ; 2 uses
  %i.gv = sub i64 %i.gs, %i.gu
  %i.gw = icmp ult i64 %i.gv, 32
  br i1 %i.gw, label %bb.z, label %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i, !prof !16

bb.z:                                             ; preds = %._crit_edge
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, i64 noundef 32) #36
  %.pre.i.i = load i64, ptr %i.gt, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i

_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i: ; preds = %bb.z, %._crit_edge
  %i.gx = phi i64 [ %.pre.i.i, %bb.z ], [ %i.gu, %._crit_edge ] ; 2 uses
  %i.gy = inttoptr i64 %i.gx to ptr               ; 5 uses
  %i.gz = add i64 %i.gx, 32
  store i64 %i.gz, ptr %i.gt, align 8
  store i32 %i.gq, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 4 uses
  store i64 0, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 3 uses
  store ptr %i.ha, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 2 uses
  store ptr %i.hb, ptr %i.hc, align 8
  %i.hd = add nsw i32 %i.gq, 63
  %i.he = ashr i32 %i.hd, 6                       ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.aa, label %_ZN2v88internal4Zone3NewINS0_9BitVectorEJiPS1_EEEPT_DpOT0_.exit

bb.aa:                                            ; preds = %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i
  %i.hg = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hh = shl nuw nsw i64 %i.hg, 3                ; 4 uses
  %i.hi = load i64, ptr %i.gr, align 8
  %i.hj = load i64, ptr %i.gt, align 8            ; 2 uses
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = icmp ugt i64 %i.hh, %i.hk
  br i1 %i.hl, label %bb.ab, label %.lr.ph.i.i.i.i.i.i, !prof !16
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler17RegisterAllocator22FindOptimalSpillingPosEPNS1_9LiveRangeENS1_16LifetimePositionENS1_22RegisterAllocationData9SpillModeEPS4_:bb.a
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.preheader88, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.l, i64 104
  %.val54 = load i32, ptr %i.p, align 8           ; 2 uses
  %i.q = icmp sgt i32 %.val54, -1
  br i1 %i.q, label %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit, label %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = zext nneg i32 %.val54 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit.thread, label %.preheader88

.preheader88:                                     ; preds = %bb.b, %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit
  %i.z = phi ptr [ %i.x, %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit ], [ %i.l, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.d

bb.d:                                             ; preds = %.preheader88, %.critedge
  %.095 = phi ptr [ %i.z, %.preheader88 ], [ %i.bg, %.critedge ] ; 2 uses
  %.sroa.068.094 = phi i32 [ %2, %.preheader88 ], [ %.sroa.068.1, %.critedge ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.095, i64 116
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = shl nsw i32 %i.ac, 2                    ; 5 uses
  %i.ae = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 92
  %.sroa.0.0.copyload.i = load i32, ptr %i.af, align 4 ; 2 uses
  %i.ag = icmp sgt i32 %.sroa.0.0.copyload.i, %i.ad
  br i1 %i.ag, label %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp eq i32 %.sroa.0.0.copyload.i, %i.ad
  br i1 %i.ah, label %bb.f, label %.critedge4

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 536870912
  %.not86 = icmp eq i32 %i.ak, 0
  br i1 %.not86, label %.critedge4, label %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit.thread

.critedge4:                                       ; preds = %bb.e, %bb.f
  %i.al = tail call noundef ptr @_ZN2v88internal8compiler17TopLevelLiveRange14GetChildCoversENS1_16LifetimePositionE(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, i32 %i.ad) ; 4 uses
  %.not50 = icmp eq ptr %i.al, null
  br i1 %.not50, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.critedge4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.g, %.critedge8.thread
  %.04392 = phi ptr [ %i.au, %.critedge8.thread ], [ %i.al, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04392, i64 92
  %.sroa.0.0.copyload.i56 = load i32, ptr %i.ap, align 4
  %i.aq = icmp slt i32 %.sroa.0.0.copyload.i56, %.sroa.068.094
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader
  %i.ar = tail call noundef ptr @_ZNK2v88internal8compiler9LiveRange31NextUsePositionSpillDetrimentalENS1_16LifetimePositionE(ptr noundef nonnull align 8 dereferenceable(100) %.04392, i32 %i.ad) ; 2 uses
  %.not52 = icmp eq ptr %i.ar, null
  br i1 %.not52, label %.critedge8.thread, label %.critedge8

.critedge8:                                       ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.0.0.copyload.i57 = load i32, ptr %i.as, align 8
  %.not87 = icmp sgt i32 %.sroa.0.0.copyload.i57, %.sroa.068.094
  br i1 %.not87, label %.critedge8.thread, label %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit.thread

.critedge8.thread:                                ; preds = %bb.h, %.critedge8
  %i.at = getelementptr inbounds nuw i8, ptr %.04392, i64 64
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not51 = icmp eq ptr %i.au, null
  br i1 %.not51, label %bb.i, label %.preheader, !llvm.loop !136

bb.i:                                             ; preds = %.preheader, %.critedge8.thread
  store ptr %i.al, ptr %4, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %.critedge4
  %.sroa.068.1 = phi i32 [ %.sroa.068.094, %.critedge4 ], [ %.sroa.068.094, %bb.g ], [ %i.ad, %bb.i ] ; 3 uses
  %i.av = getelementptr i8, ptr %.095, i64 104
  %.0.val = load i32, ptr %i.av, align 8          ; 2 uses
  %i.aw = icmp sgt i32 %.0.val, -1
  br i1 %i.aw, label %.critedge, label %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit.thread

.critedge:                                        ; preds = %bb.j
  %i.ax = load ptr, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = zext nneg i32 %.0.val to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit.thread, label %bb.d, !llvm.loop !137

_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit.thread: ; preds = %bb.j, %bb.d, %bb.f, %.critedge, %.critedge8, %bb.c, %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit, %bb.a
  %.sroa.038.8 = phi i32 [ %2, %_ZN2v88internal8compiler12_GLOBAL__N_117GetContainingLoopEPKNS1_19InstructionSequenceEPKNS1_16InstructionBlockE.exit ], [ %2, %bb.a ], [ %2, %bb.c ], [ %.sroa.068.094, %.critedge8 ], [ %.sroa.068.094, %bb.d ], [ %.sroa.068.1, %.critedge ], [ %.sroa.068.094, %bb.f ], [ %.sroa.068.1, %bb.j ]
  ret i32 %.sroa.038.8
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19LinearScanAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 12)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  switch i32 %2, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.i12.i = load i32, ptr %i.f, align 4         ; 2 uses
  store i32 %.0.i12.i, ptr %i.b, align 4
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.0.i917.i = load i32, ptr %i.h, align 4
  store i32 %.0.i917.i, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler17RegisterAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindE.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0.i15.i = load i32, ptr %i.l, align 4         ; 2 uses
  store i32 %.0.i15.i, ptr %i.b, align 4
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %.0.i920.i = load i32, ptr %i.n, align 4
  store i32 %.0.i920.i, ptr %i.e, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.q = load ptr, ptr %i.p, align 8
  br label %_ZN2v88internal8compiler17RegisterAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindE.exit

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0.i.i = load i32, ptr %i.r, align 4           ; 2 uses
  store i32 %.0.i.i, ptr %i.b, align 4
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.0.i9.i = load i32, ptr %i.t, align 4
  store i32 %.0.i9.i, ptr %i.e, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  br label %_ZN2v88internal8compiler17RegisterAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindE.exit

_ZN2v88internal8compiler17RegisterAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.w = phi i32 [ %.0.i12.i, %bb.c ], [ %.0.i15.i, %bb.d ], [ %.0.i.i, %bb.e ] ; 3 uses
  %.0.i10.i = phi ptr [ %i.k, %bb.c ], [ %i.q, %bb.d ], [ %i.v, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i10.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = ptrtoint ptr %3 to i64
  store i64 %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %3, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = zext nneg i32 %i.w to i64
  store ptr %3, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.not.i = icmp eq i32 %i.w, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit.thread, label %bb.f, !prof !138

_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit.thread: ; preds = %_ZN2v88internal8compiler17RegisterAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 -1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 -1, ptr %i.ao, align 4
  br label %bb.j

bb.f:                                             ; preds = %_ZN2v88internal8compiler17RegisterAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindE.exit
  %i.ap = icmp sgt i32 %i.w, -1
  br i1 %i.ap, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.98) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aq = shl nuw nsw i64 %i.aj, 5                ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.i, label %.lr.ph.preheader.i, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.aq) #36
  %.pre.i.i.i = load i64, ptr %i.at, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i, %bb.h
  %i.ax = phi i64 [ %.pre.i.i.i, %bb.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = add i64 %i.ax, %i.aq
  store i64 %i.az, ptr %i.at, align 8
  store ptr %i.ay, ptr %i.ak, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %i.ba, ptr %i.am, align 8
  store ptr %i.ba, ptr %i.al, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.bc, %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit ], [ %i.ay, %.lr.ph.preheader.i ] ; 3 uses
  store ptr %3, ptr %.09.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bd = load ptr, ptr %i.al, align 8
  %i.be = icmp ult ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit, label %_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit, !llvm.loop !65

_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre13 = load ptr, ptr %i.ah, align 8
  %i.bf = ptrtoint ptr %.pre to i64
  %i.bg = ptrtoint ptr %.pre13 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, 64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 -1, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 -1, ptr %i.bk, align 4
  br i1 %i.bi, label %bb.j, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEE7reserveEm.exit, !prof !139

bb.j:                                             ; preds = %_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit.thread, %_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef 8)
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEE7reserveEm.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEE7reserveEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS1_IPNS0_8compiler9LiveRangeEEEEC2EmS5_PNS0_4ZoneE.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19LinearScanAllocator24MaybeSpillPreviousRangesEPNS1_9LiveRangeENS1_16LifetimePositionES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef %1, i32 %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %1, %3
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler19LinearScanAllocator10SpillAfterEPNS1_9LiveRangeENS1_16LifetimePositionENS1_22RegisterAllocationData9SpillModeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1, i32 %2, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in15 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.016 = load ptr, ptr %.0.in15, align 8         ; 2 uses
  %.not1417 = icmp eq ptr %.016, %3
  br i1 %.not1417, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.018 = phi ptr [ %.0, %bb.f ], [ %.016, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.018, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.g = and i32 %i.e, -8066
  %i.h = or disjoint i32 %i.g, 4097
  store i32 %i.h, ptr %i.d, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0.in = getelementptr inbounds nuw i8, ptr %.018, i64 64
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not14 = icmp eq ptr %.0, %3
  br i1 %.not14, label %.loopexit, label %.lr.ph, !llvm.loop !140

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19LinearScanAllocator10SpillAfterEPNS1_9LiveRangeENS1_16LifetimePositionENS1_22RegisterAllocationData9SpillModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef %1, i32 %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %.not.i = icmp sgt i32 %2, %.sroa.0.0.copyload.i.i
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal8compiler17RegisterAllocator12SplitRangeAtEPNS1_9LiveRangeENS1_16LifetimePositionE.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZN2v88internal8compiler9LiveRange7SplitAtENS1_16LifetimePositionEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 %2, ptr noundef %i.c)
  br label %_ZN2v88internal8compiler17RegisterAllocator12SplitRangeAtEPNS1_9LiveRangeENS1_16LifetimePositionE.exit

_ZN2v88internal8compiler17RegisterAllocator12SplitRangeAtEPNS1_9LiveRangeENS1_16LifetimePositionE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = and i32 %i.h, 96
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN2v88internal8compiler22RegisterAllocationData27AssignSpillRangeToLiveRangeEPNS1_17TopLevelLiveRangeENS2_9SpillModeE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal8compiler17RegisterAllocator12SplitRangeAtEPNS1_9LiveRangeENS1_16LifetimePositionE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ult i64 %i.t, 72
  br i1 %i.u, label %bb.e, label %_ZN2v88internal4Zone3NewINS0_8compiler10SpillRangeEJRPNS3_17TopLevelLiveRangeEPS1_EEEPT_DpOT0_.exit.i.i, !prof !16

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 noundef 72) #36
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10SpillRangeEJRPNS3_17TopLevelLiveRangeEPS1_EEEPT_DpOT0_.exit.i.i

_ZN2v88internal4Zone3NewINS0_8compiler10SpillRangeEJRPNS3_17TopLevelLiveRangeEPS1_EEEPT_DpOT0_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = add i64 %i.v, 72
  store i64 %i.x, ptr %i.r, align 8
  tail call void @_ZN2v88internal8compiler10SpillRangeC2EPNS1_17TopLevelLiveRangeEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull %i.f, ptr noundef nonnull %i.o)
  %.pre.i = load i32, ptr %i.g, align 4           ; 2 uses
  %.pre13.i = and i32 %.pre.i, 96
  %i.y = icmp eq i32 %.pre13.i, 64
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler10SpillRangeEJRPNS3_17TopLevelLiveRangeEPS1_EEEPT_DpOT0_.exit.i.i, %bb.c
  %.pre-phi.i = phi i1 [ %i.y, %_ZN2v88internal4Zone3NewINS0_8compiler10SpillRangeEJRPNS3_17TopLevelLiveRangeEPS1_EEEPT_DpOT0_.exit.i.i ], [ false, %bb.c ]
  %i.z = phi i32 [ %.pre.i, %_ZN2v88internal4Zone3NewINS0_8compiler10SpillRangeEJRPNS3_17TopLevelLiveRangeEPS1_EEEPT_DpOT0_.exit.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.aa = icmp ne i32 %3, 1
  %or.cond.i.i = select i1 %i.aa, i1 true, i1 %.pre-phi.i
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN2v88internal8compiler22RegisterAllocationData27AssignSpillRangeToLiveRangeEPNS1_17TopLevelLiveRangeENS2_9SpillModeE.exit.thread.i

_ZN2v88internal8compiler22RegisterAllocationData27AssignSpillRangeToLiveRangeEPNS1_17TopLevelLiveRangeENS2_9SpillModeE.exit.thread.i: ; preds = %bb.f
  %i.ab = or i32 %i.z, 96
  br label %.sink.split.i

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.ac = and i32 %i.z, -97
  %i.ad = or disjoint i32 %i.ac, 64               ; 2 uses
  store i32 %i.ad, ptr %i.g, align 4
  br label %_ZN2v88internal8compiler22RegisterAllocationData27AssignSpillRangeToLiveRangeEPNS1_17TopLevelLiveRangeENS2_9SpillModeE.exit.i

end_hunk_1
begin_hunk_2_@_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_:bb.a
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp ugt i64 %i.x, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler9LiveRangeEA_S5_EEPT_m.exit, !prof !16

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 noundef %i.x) #36
  %.pre.i.i = load i64, ptr %i.ac, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler9LiveRangeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler9LiveRangeEA_S5_EEPT_m.exit: ; preds = %bb.i, %bb.j
  %i.ag = phi i64 [ %.pre.i.i, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = add i64 %i.ag, %i.x
  store i64 %i.ai, ptr %i.ac, align 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !35, !noundef !35 ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ah, ptr nonnull align 8 %i.aj, i64 %i.an, i1 false)
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  store ptr null, ptr %i.e, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler9LiveRangeEA_S5_EEPT_m.exit
  %i.ao = phi ptr [ null, %bb.k ], [ %.pre, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler9LiveRangeEA_S5_EEPT_m.exit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.x
  store ptr %i.ap, ptr %i.c, align 8
  %i.aq = load ptr, ptr %i.j, align 8
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  store ptr %i.av, ptr %i.t, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJS4_iEEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 48
  br i1 %i.g, label %bb.b, label %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJS4_iEEERSE_DpOT_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 48) #36
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJS4_iEEERSE_DpOT_.exit

_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJS4_iEEERSE_DpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = add i64 %i.h, 48
  store i64 %i.j, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %1, align 8                ; 4 uses
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load i32, ptr %2, align 4
  store i32 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.02022.i = load ptr, ptr %i.o, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJS4_iEEERSE_DpOT_.exit, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJS4_iEEERSE_DpOT_.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp ult ptr %i.l, %i.r                  ; 2 uses
  %.in.v.i = select i1 %i.s, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !226

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.s, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJS4_iEEERSE_DpOT_.exit
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.p, %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJS4_iEEERSE_DpOT_.exit ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %.019.lcssa29.i, %i.u
  br i1 %i.v, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.w = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #38 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.x = phi ptr [ %.pre, %bb.c ], [ %i.r, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.w, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.y = icmp ult ptr %i.x, %i.l
  br i1 %i.y, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.z = icmp eq ptr %.sroa.4.0.i.ph, %i.p
  br i1 %i.z, label %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSH_E.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp ult ptr %i.l, %i.ab
  br label %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSH_E.exit

_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSH_E.exit: ; preds = %select.unfold, %bb.e
  %i.ad = phi i1 [ %i.ac, %bb.e ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %i.i, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSH_E.exit
  %.sroa.08.0 = phi ptr [ %i.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSH_E.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSH_E.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPPN2v88internal8compiler9LiveRangeElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEET_SC_SC_T0_.exit
  %i.g = icmp eq i64 %i.ax, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph41, !llvm.loop !228

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %.025.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_RT0_.exit.i.i ], [ %.025.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %0, align 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i = load i32, ptr %i.x, align 8
  %i.y = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i
  %i.z = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.z, i64 %i.q ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !229

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ae = and i64 %i.l, 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = add nsw i64 %i.m, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ah
  br i1 %i.ai, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.aj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.am, ptr %i.an, align 8
  br label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.thread.i.i.i
  %.128.i9.i.i.i = phi i64 [ %i.ak, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.01317.i.i.i.i.i = phi i64 [ %.128.i9.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.018.i.i1011.i.i.i, %bb.f ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i1011.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i1011.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.ar, align 8
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i = load i32, ptr %i.ao, align 8
  %i.as = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i
  br i1 %i.as, label %bb.f, label %_ZSt10__pop_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_RT0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store ptr %i.aq, ptr %i.at, align 8
  %.not12.i.i.i = icmp eq i64 %.018.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_RT0_.exit.i.i, label %bb.e, !llvm.loop !230

_ZSt10__pop_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store ptr %i.i, ptr %i.au, align 8
  %i.av = icmp sgt i64 %i.l, 8
  br i1 %i.av, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_T0_.exit, !llvm.loop !231

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %.0172440 = phi i64 [ %i.ax, %bb.b ], [ %2, %.lr.ph ]
  %.02539 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.aw = phi i64 [ %i.cb, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ax = add nsw i64 %.0172440, -1               ; 3 uses
  %i.ay = lshr i64 %i.aw, 4
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.02539, i64 -8 ; 3 uses
  %i.bb = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.bd, align 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %.sroa.0.0.copyload.i2.i.i.i.i = load i32, ptr %i.be, align 8 ; 3 uses
  %i.bf = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i
  %i.bg = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %.sroa.0.0.copyload.i2.i.i23.i.i = load i32, ptr %i.bh, align 8 ; 4 uses
  br i1 %i.bf, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph41
  %i.bi = icmp slt i32 %.sroa.0.0.copyload.i2.i.i.i.i, %.sroa.0.0.copyload.i2.i.i23.i.i
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %0, align 8
  store ptr %i.bc, ptr %0, align 8
  store ptr %i.bj, ptr %i.az, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.bk = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i23.i.i
  %i.bl = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.bl, ptr %i.ba, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store ptr %i.bb, ptr %0, align 8
  store ptr %i.bl, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph41
  %i.bm = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i23.i.i
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %0, align 8
  store ptr %i.bb, ptr %0, align 8
  store ptr %i.bn, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.bo = icmp slt i32 %.sroa.0.0.copyload.i2.i.i.i.i, %.sroa.0.0.copyload.i2.i.i23.i.i
  %i.bp = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.bp, ptr %i.ba, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  store ptr %i.bc, ptr %0, align 8
  store ptr %i.bp, ptr %i.az, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.s
  %.013.i.i = phi ptr [ %.114.i.i, %bb.s ], [ %.02539, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bv, %bb.s ], [ %i.e, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.bq = load ptr, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %.sroa.0.0.copyload.i2.i.i.i13.i = load i32, ptr %i.br, align 8 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.bv, %bb.q ] ; 8 uses
  %i.bs = load ptr, ptr %.1.i.i, align 8          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %.sroa.0.0.copyload.i.i.i.i14.i = load i32, ptr %i.bt, align 8
  %i.bu = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i14.i, %.sroa.0.0.copyload.i2.i.i.i13.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.q, label %.preheader.i.i, !llvm.loop !232

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.q ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bw = load ptr, ptr %.114.i.i, align 8        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %.sroa.0.0.copyload.i2.i.i16.i.i = load i32, ptr %i.bx, align 8
  %i.by = icmp slt i32 %.sroa.0.0.copyload.i2.i.i.i13.i, %.sroa.0.0.copyload.i2.i.i16.i.i
  br i1 %i.by, label %.preheader.i.i, label %bb.r, !llvm.loop !233

bb.r:                                             ; preds = %.preheader.i.i
  %i.bz = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bz, label %bb.s, label %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEET_SC_SC_T0_.exit

bb.s:                                             ; preds = %bb.r
  store ptr %i.bw, ptr %.1.i.i, align 8
  store ptr %i.bs, ptr %.114.i.i, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !234

_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEET_SC_SC_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIPPN2v88internal8compiler9LiveRangeElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02539, i64 noundef %i.ax)
  %i.ca = ptrtoint ptr %.1.i.i to i64
  %i.cb = sub i64 %i.ca, %i.a                     ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 128
  br i1 %i.cc, label %bb.b, label %_ZSt14__partial_sortIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_T0_.exit, !llvm.loop !228

_ZSt14__partial_sortIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPPN2v88internal8compiler9LiveRangeES5_ET0_T_S7_S6_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPPN2v88internal8compiler9LiveRangeES5_ET0_T_S7_S6_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPPN2v88internal8compiler9LiveRangeES5_ET0_T_S7_S6_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load ptr, ptr %.020.i.ptr, align 8       ; 2 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.g, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.0.0.copyload.i2.i.i.i = load i32, ptr %i.h, align 8
  %i.i = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.j, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPPN2v88internal8compiler9LiveRangeES5_ET0_T_S7_S6_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store ptr %i.f, ptr %i.k, align 8
  br label %_ZSt13move_backwardIPPN2v88internal8compiler9LiveRangeES5_ET0_T_S7_S6_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %.pn19.i, align 8          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.0.0.copyload.i2.i.i13.i.i = load i32, ptr %i.m, align 8
  %i.n = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i13.i.i
end_hunk_2
begin_hunk_3_@_ZSt11__make_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_RT0_:bb.a
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.aq, %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %.sroa.0.0.copyload.i.i.i.i.us = load i32, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %.sroa.0.0.copyload.i2.i.i.i.us = load i32, ptr %i.aa, align 8
  %i.ab = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.us, %.sroa.0.0.copyload.i2.i.i.i.us
  %i.ac = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.ab, i64 %i.ac, i64 %i.t ; 6 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ag, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !229

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ah = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.01317.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.d ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.us = load i32, ptr %i.al, align 8
  %.sroa.0.0.copyload.i2.i.i.i.i.us = load i32, ptr %i.ai, align 8
  %i.am = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i.us, %.sroa.0.0.copyload.i2.i.i.i.i.us
  br i1 %i.am, label %bb.d, label %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store ptr %i.ak, ptr %i.an, align 8
  %i.ao = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.ao, label %bb.c, label %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit.us, !llvm.loop !230

_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %bb.c ], [ %.018.i.i.us, %bb.d ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store ptr %i.q, ptr %i.ap, align 8
  %.not.us = icmp eq i64 %.014.us, 0
  %i.aq = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !238

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit
  %.014 = phi i64 [ %i.bu, %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp slt i64 %.014, %i.i
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.au = shl i64 %.029.i, 1                      ; 3 uses
  %i.av = add i64 %i.au, 2                        ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av
  %i.ax = getelementptr [8 x i8], ptr %0, i64 %i.au
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = load ptr, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %.sroa.0.0.copyload.i2.i.i.i = load i32, ptr %i.bc, align 8
  %i.bd = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  %i.be = or disjoint i64 %i.au, 1
  %spec.select.i = select i1 %i.bd, i64 %i.be, i64 %i.av ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !229

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bk = load ptr, ptr %i.n, align 8
  store ptr %i.bk, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.128.i, %.014
  br i1 %i.bl, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.01317.i.i = phi i64 [ %.128.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.h ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.bp, align 8
  %.sroa.0.0.copyload.i2.i.i.i.i = load i32, ptr %i.bm, align 8
  %i.bq = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i
  br i1 %i.bq, label %bb.h, label %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store ptr %i.bo, ptr %i.br, align 8
  %i.bs = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bs, label %bb.g, label %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit, !llvm.loop !230

_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.f ], [ %.018.i.i, %bb.h ], [ %.01317.i.i, %bb.g ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store ptr %i.as, ptr %i.bt, align 8
  %.not = icmp eq i64 %.014, 0
  %i.bu = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !238

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit.us, %_ZSt13__adjust_heapIPPN2v88internal8compiler9LiveRangeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_T0_SD_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPPN2v88internal8compiler17TopLevelLiveRangeElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.323", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEET_SB_SB_T0_.exit
  %i.g = icmp eq i64 %i.ax, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph41, !llvm.loop !239

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.025.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_RT0_.exit.i.i ], [ %.025.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %0, align 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 92
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i = load i32, ptr %i.x, align 4
  %i.y = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i
  %i.z = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.z, i64 %i.q ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !240

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ae = and i64 %i.l, 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = add nsw i64 %i.m, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ah
  br i1 %i.ai, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.aj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.am, ptr %i.an, align 8
  br label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.thread.i.i.i
  %.128.i9.i.i.i = phi i64 [ %i.ak, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.01317.i.i.i.i.i = phi i64 [ %.128.i9.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.018.i.i1011.i.i.i, %bb.f ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i1011.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i1011.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 92
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.ar, align 4
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i = load i32, ptr %i.ao, align 4
  %i.as = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i
  br i1 %i.as, label %bb.f, label %_ZSt10__pop_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_RT0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store ptr %i.aq, ptr %i.at, align 8
  %.not12.i.i.i = icmp eq i64 %.018.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_RT0_.exit.i.i, label %bb.e, !llvm.loop !241

_ZSt10__pop_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_RT0_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store ptr %i.i, ptr %i.au, align 8
  %i.av = icmp sgt i64 %i.l, 8
  br i1 %i.av, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_T0_.exit, !llvm.loop !242

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %.0172440 = phi i64 [ %i.ax, %bb.b ], [ %2, %.lr.ph ]
  %.02539 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.aw = phi i64 [ %i.cb, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ax = add nsw i64 %.0172440, -1               ; 3 uses
  %i.ay = lshr i64 %i.aw, 4
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.02539, i64 -8 ; 3 uses
  %i.bb = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 92
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.bd, align 4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 92
  %.sroa.0.0.copyload.i2.i.i.i.i = load i32, ptr %i.be, align 4 ; 3 uses
  %i.bf = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i
  %i.bg = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 92
  %.sroa.0.0.copyload.i2.i.i23.i.i = load i32, ptr %i.bh, align 4 ; 4 uses
  br i1 %i.bf, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph41
  %i.bi = icmp slt i32 %.sroa.0.0.copyload.i2.i.i.i.i, %.sroa.0.0.copyload.i2.i.i23.i.i
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %0, align 8
  store ptr %i.bc, ptr %0, align 8
  store ptr %i.bj, ptr %i.az, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.bk = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i23.i.i
  %i.bl = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.bl, ptr %i.ba, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store ptr %i.bb, ptr %0, align 8
  store ptr %i.bl, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph41
  %i.bm = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i23.i.i
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %0, align 8
  store ptr %i.bb, ptr %0, align 8
  store ptr %i.bn, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.bo = icmp slt i32 %.sroa.0.0.copyload.i2.i.i.i.i, %.sroa.0.0.copyload.i2.i.i23.i.i
  %i.bp = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.bp, ptr %i.ba, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  store ptr %i.bc, ptr %0, align 8
  store ptr %i.bp, ptr %i.az, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i

_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader, %bb.s
  %.013.i.i = phi ptr [ %.114.i.i, %bb.s ], [ %.02539, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bv, %bb.s ], [ %i.e, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %i.bq = load ptr, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 92
  %.sroa.0.0.copyload.i2.i.i.i13.i = load i32, ptr %i.br, align 4 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i ], [ %i.bv, %bb.q ] ; 8 uses
  %i.bs = load ptr, ptr %.1.i.i, align 8          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 92
  %.sroa.0.0.copyload.i.i.i.i14.i = load i32, ptr %i.bt, align 4
  %i.bu = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i14.i, %.sroa.0.0.copyload.i2.i.i.i13.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.q, label %.preheader.i.i, !llvm.loop !243

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.q ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bw = load ptr, ptr %.114.i.i, align 8        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 92
  %.sroa.0.0.copyload.i2.i.i16.i.i = load i32, ptr %i.bx, align 4
  %i.by = icmp slt i32 %.sroa.0.0.copyload.i2.i.i.i13.i, %.sroa.0.0.copyload.i2.i.i16.i.i
  br i1 %i.by, label %.preheader.i.i, label %bb.r, !llvm.loop !244

bb.r:                                             ; preds = %.preheader.i.i
  %i.bz = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bz, label %bb.s, label %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEET_SB_SB_T0_.exit

bb.s:                                             ; preds = %bb.r
  store ptr %i.bw, ptr %.1.i.i, align 8
  store ptr %i.bs, ptr %.114.i.i, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_SB_T0_.exit.i, !llvm.loop !245

_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEET_SB_SB_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIPPN2v88internal8compiler17TopLevelLiveRangeElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02539, i64 noundef %i.ax)
  %i.ca = ptrtoint ptr %.1.i.i to i64
  %i.cb = sub i64 %i.ca, %i.a                     ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 128
  br i1 %i.cc, label %bb.b, label %_ZSt14__partial_sortIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_T0_.exit, !llvm.loop !239

_ZSt14__partial_sortIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEET_SB_SB_T0_.exit, %_ZSt10__pop_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_SB_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPPN2v88internal8compiler17TopLevelLiveRangeES5_ET0_T_S7_S6_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPPN2v88internal8compiler17TopLevelLiveRangeES5_ET0_T_S7_S6_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPPN2v88internal8compiler17TopLevelLiveRangeES5_ET0_T_S7_S6_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load ptr, ptr %.020.i.ptr, align 8       ; 2 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.g, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %.sroa.0.0.copyload.i2.i.i.i = load i32, ptr %i.h, align 4
  %i.i = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.j, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPPN2v88internal8compiler17TopLevelLiveRangeES5_ET0_T_S7_S6_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store ptr %i.f, ptr %i.k, align 8
  br label %_ZSt13move_backwardIPPN2v88internal8compiler17TopLevelLiveRangeES5_ET0_T_S7_S6_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %.pn19.i, align 8          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %.sroa.0.0.copyload.i2.i.i13.i.i = load i32, ptr %i.m, align 4
  %i.n = icmp slt i32 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i13.i.i
end_hunk_3
