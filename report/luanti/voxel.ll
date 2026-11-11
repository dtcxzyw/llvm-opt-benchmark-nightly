Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxel?download=true
inline.NumInlined: 186
inline.NumDeleted: 98
begin_hunk_0_@_ZN16VoxelManipulator8copyFromEP7MapNodebRK9VoxelAreaN4core8vector3dIsEES7_RKS7_:bb.a
  %i.dp = phi i16 [ %.pr, %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit ], [ %.pre, %.lr.ph.i.i.i.i38 ]
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, %i.bk ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bj ; 2 uses
  %i.dq = add nuw nsw i16 %.049, 1                ; 2 uses
  %i.dr = load i16, ptr %i.e, align 2, !tbaa !44  ; 3 uses
  %i.ds = icmp slt i16 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph.split, label %._crit_edge.loopexit60, !llvm.loop !135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK16VoxelManipulator6copyToEP7MapNodeRK9VoxelAreaN4core8vector3dIsEES7_RKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2, i48 %3, i48 %4, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %5) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.221.0.extract.shift = lshr i48 %3, 16
  %.sroa.221.0.extract.trunc = trunc i48 %.sroa.221.0.extract.shift to i16
  %.sroa.2.0.extract.shift = lshr i48 %4, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !43   ; 2 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge39

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i48 %4 to i16
  %.sroa.020.0.extract.trunc = trunc i48 %3 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = sext i16 %.sroa.020.0.extract.trunc to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.o = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i16, ptr %i.d, align 2, !tbaa !44   ; 3 uses
  %i.r = icmp sgt i16 %i.q, 0
  br i1 %i.r, label %.preheader.preheader, label %._crit_edge39

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = lshr i48 %4, 32
  %i.t = trunc nuw i48 %i.s to i16
  %i.u = lshr i48 %3, 32
  %i.v = trunc nuw i48 %i.u to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge37
  %i.w = phi i16 [ %i.b, %.preheader.preheader ], [ %i.ac, %._crit_edge37 ]
  %i.x = phi i16 [ %i.q, %.preheader.preheader ], [ %i.ad, %._crit_edge37 ] ; 2 uses
  %i.y = phi i16 [ %i.q, %.preheader.preheader ], [ %i.ae, %._crit_edge37 ] ; 2 uses
  %indvars.iv45 = phi i16 [ %i.v, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge37 ] ; 2 uses
  %indvars.iv = phi i16 [ %i.t, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge37 ] ; 2 uses
  %.02638 = phi i16 [ 0, %.preheader.preheader ], [ %i.af, %._crit_edge37 ]
  %i.z = sext i16 %indvars.iv to i32
  %i.aa = sext i16 %indvars.iv45 to i32
  %i.ab = icmp sgt i16 %i.y, 0
  br i1 %i.ab, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader
  %.pre = load i16, ptr %5, align 2, !tbaa !45    ; 2 uses
  br label %bb.b

._crit_edge39:                                    ; preds = %._crit_edge37, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge37.loopexit:                           ; preds = %._crit_edge
  %.pre55 = load i16, ptr %i.a, align 2, !tbaa !43
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %.preheader
  %i.ac = phi i16 [ %.pre55, %._crit_edge37.loopexit ], [ %i.w, %.preheader ] ; 2 uses
  %i.ad = phi i16 [ %i.bt, %._crit_edge37.loopexit ], [ %i.x, %.preheader ]
  %i.ae = phi i16 [ %i.bt, %._crit_edge37.loopexit ], [ %i.y, %.preheader ]
  %i.af = add nuw nsw i16 %.02638, 1              ; 2 uses
  %i.ag = icmp slt i16 %i.af, %i.ac
  %indvars.iv.next = add i16 %indvars.iv, 1
  %indvars.iv.next46 = add i16 %indvars.iv45, 1
  br i1 %i.ag, label %.preheader, label %._crit_edge39, !llvm.loop !139

bb.b:                                             ; preds = %.lr.ph36, %._crit_edge
  %i.ah = phi i16 [ %i.x, %.lr.ph36 ], [ %i.bt, %._crit_edge ]
  %i.ai = phi i16 [ %.pre, %.lr.ph36 ], [ %i.bu, %._crit_edge ] ; 2 uses
  %i.aj = phi i16 [ %.pre, %.lr.ph36 ], [ %i.bv, %._crit_edge ] ; 2 uses
  %indvars.iv47 = phi i16 [ %.sroa.221.0.extract.trunc, %.lr.ph36 ], [ %indvars.iv.next48, %._crit_edge ] ; 2 uses
  %indvars.iv41 = phi i16 [ %.sroa.2.0.extract.trunc, %.lr.ph36 ], [ %indvars.iv.next42, %._crit_edge ] ; 2 uses
  %.02535 = phi i16 [ 0, %.lr.ph36 ], [ %i.bw, %._crit_edge ]
  %i.ak = icmp sgt i16 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.al = load i16, ptr %i.j, align 8, !tbaa !36
  %i.am = sext i16 %i.al to i32
  %i.an = load i16, ptr %i.n, align 2, !tbaa !35
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !34
  %i.aq = load i32, ptr %i.m, align 8, !tbaa !33
  %i.ar = load i16, ptr %i.k, align 4, !tbaa !32
  %i.as = sext i16 %i.ar to i32
  %i.at = load i16, ptr %2, align 4, !tbaa !36
  %i.au = sext i16 %i.at to i32
  %i.av = load i16, ptr %i.h, align 2, !tbaa !35
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !34
  %i.ay = load i32, ptr %i.g, align 4, !tbaa !33
  %i.az = load i16, ptr %i.e, align 4, !tbaa !32
  %i.ba = sext i16 %i.az to i32
  %i.bb = sext i16 %indvars.iv47 to i32
  %i.bc = sext i16 %indvars.iv41 to i32
  %i.bd = sub nsw i32 %i.z, %i.as
  %i.be = mul i32 %i.aq, %i.bd
  %i.bf = add i32 %i.be, %i.bc
  %i.bg = sub i32 %i.bf, %i.ao
  %i.bh = mul i32 %i.ap, %i.bg
  %i.bi = add i32 %i.bh, %i.o
  %i.bj = sub i32 %i.bi, %i.am
  %i.bk = sext i32 %i.bj to i64
  %i.bl = sub nsw i32 %i.aa, %i.ba
  %i.bm = mul i32 %i.ay, %i.bl
  %i.bn = add i32 %i.bm, %i.bb
  %i.bo = sub i32 %i.bn, %i.aw
  %i.bp = mul i32 %i.ax, %i.bo
  %i.bq = add i32 %i.bp, %i.i
  %i.br = sub i32 %i.bq, %i.au
  %i.bs = sext i32 %i.br to i64
  %.pre52 = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre54 = load i16, ptr %i.d, align 2, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bt = phi i16 [ %.pre54, %._crit_edge.loopexit ], [ %i.ah, %bb.b ] ; 4 uses
  %i.bu = phi i16 [ %i.ce, %._crit_edge.loopexit ], [ %i.ai, %bb.b ]
  %i.bv = phi i16 [ %i.ce, %._crit_edge.loopexit ], [ %i.aj, %bb.b ]
  %i.bw = add nuw nsw i16 %.02535, 1              ; 2 uses
  %i.bx = icmp slt i16 %i.bw, %i.bt
  %indvars.iv.next42 = add i16 %indvars.iv41, 1
  %indvars.iv.next48 = add i16 %indvars.iv47, 1
  br i1 %i.bx, label %bb.b, label %._crit_edge37.loopexit, !llvm.loop !140

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.by = phi i16 [ %i.ai, %.lr.ph.preheader ], [ %i.ce, %bb.d ]
  %i.bz = phi ptr [ %.pre52, %.lr.ph.preheader ], [ %i.cf, %bb.d ] ; 2 uses
  %indvars.iv49 = phi i64 [ %i.bs, %.lr.ph.preheader ], [ %indvars.iv.next50, %bb.d ] ; 2 uses
  %indvars.iv43 = phi i64 [ %i.bk, %.lr.ph.preheader ], [ %indvars.iv.next44, %bb.d ] ; 2 uses
  %.034 = phi i16 [ 0, %.lr.ph.preheader ], [ %i.cg, %bb.d ]
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv43 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !143
  %.not = icmp eq i16 %i.cb, 127
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv49
  %i.cd = load i32, ptr %i.ca, align 4
  store i32 %i.cd, ptr %i.cc, align 4
  %.pre51 = load ptr, ptr %i.p, align 8, !tbaa !21
  %.pre53 = load i16, ptr %5, align 2, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ce = phi i16 [ %.pre53, %bb.c ], [ %i.by, %.lr.ph ] ; 4 uses
  %i.cf = phi ptr [ %.pre51, %bb.c ], [ %i.bz, %.lr.ph ]
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1
  %i.cg = add nuw nsw i16 %.034, 1                ; 2 uses
  %i.ch = icmp slt i16 %i.cg, %i.ce
  br i1 %i.ch, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16VoxelManipulator8setFlagsERK9VoxelAreah(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1, i8 noundef zeroext %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 4
  %.not1.i = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !41   ; 2 uses
  %.not30 = icmp sgt i16 %i.h, %i.j
  br i1 %.not30, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.b
  %i.k = sext i16 %i.h to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i16, ptr %i.m, align 4, !tbaa !40  ; 2 uses
  %i.t = icmp sgt i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph33, %._crit_edge29
  %i.u = phi i16 [ %i.j, %.lr.ph33 ], [ %i.z, %._crit_edge29 ]
  %i.v = phi i16 [ %.pre, %.lr.ph33 ], [ %i.aa, %._crit_edge29 ] ; 2 uses
  %i.w = phi i16 [ %.pre, %.lr.ph33 ], [ %i.ab, %._crit_edge29 ] ; 2 uses
  %.02131 = phi i32 [ %i.k, %.lr.ph33 ], [ %i.ac, %._crit_edge29 ] ; 3 uses
  %i.x = load i16, ptr %i.l, align 2, !tbaa !35   ; 2 uses
  %.not2225 = icmp sgt i16 %i.x, %i.w
  br i1 %.not2225, label %._crit_edge29, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %bb.c
  %i.y = sext i16 %i.x to i32
  %.pre36 = load i32, ptr %i.p, align 4, !tbaa !34
  %.pre38 = load i16, ptr %i.r, align 2, !tbaa !35
  %.pre40 = load i16, ptr %i.n, align 8, !tbaa !36
  %.pre44 = load i32, ptr %i.q, align 8, !tbaa !33
  br label %.lr.ph28

._crit_edge29.loopexit:                           ; preds = %._crit_edge
  %.pre36.a = load i16, ptr %i.i, align 2, !tbaa !41
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.c
  %i.z = phi i16 [ %.pre36.a, %._crit_edge29.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %i.aa = phi i16 [ %8, %._crit_edge29.loopexit ], [ %i.v, %bb.c ]
  %i.ab = phi i16 [ %8, %._crit_edge29.loopexit ], [ %i.w, %bb.c ]
  %i.ac = add nsw i32 %.02131, 1
  %i.ad = sext i16 %i.z to i32
  %.not.not = icmp slt i32 %.02131, %i.ad
  br i1 %.not.not, label %bb.c, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, !llvm.loop !144

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %._crit_edge
  %3 = phi i32 [ %7, %._crit_edge ], [ %.pre44, %.lr.ph28.preheader ] ; 2 uses
  %4 = phi i16 [ %8, %._crit_edge ], [ %i.v, %.lr.ph28.preheader ]
  %5 = phi i16 [ %9, %._crit_edge ], [ %.pre40, %.lr.ph28.preheader ] ; 2 uses
  %i.ae = phi i16 [ %i.ax, %._crit_edge ], [ %.pre38, %.lr.ph28.preheader ] ; 2 uses
  %6 = phi i32 [ %10, %._crit_edge ], [ %.pre36, %.lr.ph28.preheader ] ; 2 uses
  %.02026 = phi i32 [ %i.ay, %._crit_edge ], [ %i.y, %.lr.ph28.preheader ] ; 3 uses
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph28
  %i.af = load i16, ptr %1, align 4, !tbaa !36
  %i.ag = sext i16 %i.af to i32                   ; 2 uses
  %i.ah = sext i16 %5 to i32                      ; 2 uses
  %i.ai = sub nsw i32 %i.ag, %i.ah
  %i.aj = load i16, ptr %i.o, align 4, !tbaa !32
  %i.ak = sext i16 %i.aj to i32
  %i.al = sub i32 %.02131, %i.ak
  %i.am = mul i32 %i.al, %3
  %i.an = add i32 %i.am, %.02026
  %i.ao = sext i16 %i.ae to i32
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = mul i32 %i.ap, %6                       ; 2 uses
  %i.ar = add nsw i32 %i.ai, %i.aq
  %i.as = add nsw i32 %i.ar, %i.b
  %i.at = add i32 %i.aq, %i.ag
  %i.au = sub i32 %i.at, %i.ah
  %i.av = sext i32 %i.au to i64
  %i.aw = sext i32 %i.as to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre35 = load i32, ptr %i.p, align 4, !tbaa !34
  %.pre37 = load i16, ptr %i.r, align 2, !tbaa !35
  %.pre39 = load i16, ptr %i.n, align 8, !tbaa !36
  %.pre35.a = load i16, ptr %i.m, align 4, !tbaa !40
  %.pre43 = load i32, ptr %i.q, align 8, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph28
  %7 = phi i32 [ %.pre43, %._crit_edge.loopexit ], [ %3, %.lr.ph28 ]
  %8 = phi i16 [ %.pre35.a, %._crit_edge.loopexit ], [ %4, %.lr.ph28 ] ; 4 uses
  %9 = phi i16 [ %.pre39, %._crit_edge.loopexit ], [ %5, %.lr.ph28 ]
  %i.ax = phi i16 [ %.pre37, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph28 ]
  %10 = phi i32 [ %.pre35, %._crit_edge.loopexit ], [ %6, %.lr.ph28 ]
  %i.ay = add nsw i32 %.02026, 1
  %i.az = sext i16 %8 to i32
  %.not22.not = icmp slt i32 %.02026, %i.az
  br i1 %.not22.not, label %.lr.ph28, label %._crit_edge29.loopexit, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25
  %i.bd = or i8 %i.bc, %2
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.be = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.be, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !146

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %._crit_edge29, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16VoxelManipulator10clearFlagsERK9VoxelAreah(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1, i8 noundef zeroext %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 4
  %.not1.i = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !41   ; 2 uses
  %.not30 = icmp sgt i16 %i.h, %i.j
  br i1 %.not30, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.b
  %i.k = sext i16 %i.h to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.s = xor i8 %2, -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i16, ptr %i.m, align 4, !tbaa !40  ; 2 uses
  %i.u = icmp sgt i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph33, %._crit_edge29
  %i.v = phi i16 [ %i.j, %.lr.ph33 ], [ %i.aa, %._crit_edge29 ]
  %i.w = phi i16 [ %.pre, %.lr.ph33 ], [ %i.ab, %._crit_edge29 ] ; 2 uses
  %i.x = phi i16 [ %.pre, %.lr.ph33 ], [ %i.ac, %._crit_edge29 ] ; 2 uses
  %.02131 = phi i32 [ %i.k, %.lr.ph33 ], [ %i.ad, %._crit_edge29 ] ; 3 uses
  %i.y = load i16, ptr %i.l, align 2, !tbaa !35   ; 2 uses
  %.not2225 = icmp sgt i16 %i.y, %i.x
  br i1 %.not2225, label %._crit_edge29, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %bb.c
  %i.z = sext i16 %i.y to i32
  %.pre36 = load i32, ptr %i.p, align 4, !tbaa !34
  %.pre38 = load i16, ptr %i.r, align 2, !tbaa !35
  %.pre40 = load i16, ptr %i.n, align 8, !tbaa !36
  %.pre44 = load i32, ptr %i.q, align 8, !tbaa !33
  br label %.lr.ph28

._crit_edge29.loopexit:                           ; preds = %._crit_edge
  %.pre36.a = load i16, ptr %i.i, align 2, !tbaa !41
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.c
  %i.aa = phi i16 [ %.pre36.a, %._crit_edge29.loopexit ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = phi i16 [ %8, %._crit_edge29.loopexit ], [ %i.w, %bb.c ]
  %i.ac = phi i16 [ %8, %._crit_edge29.loopexit ], [ %i.x, %bb.c ]
  %i.ad = add nsw i32 %.02131, 1
  %i.ae = sext i16 %i.aa to i32
  %.not.not = icmp slt i32 %.02131, %i.ae
  br i1 %.not.not, label %bb.c, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, !llvm.loop !147

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %._crit_edge
  %3 = phi i32 [ %7, %._crit_edge ], [ %.pre44, %.lr.ph28.preheader ] ; 2 uses
  %4 = phi i16 [ %8, %._crit_edge ], [ %i.w, %.lr.ph28.preheader ]
  %5 = phi i16 [ %9, %._crit_edge ], [ %.pre40, %.lr.ph28.preheader ] ; 2 uses
  %i.af = phi i16 [ %i.ay, %._crit_edge ], [ %.pre38, %.lr.ph28.preheader ] ; 2 uses
  %6 = phi i32 [ %10, %._crit_edge ], [ %.pre36, %.lr.ph28.preheader ] ; 2 uses
  %.02026 = phi i32 [ %i.az, %._crit_edge ], [ %i.z, %.lr.ph28.preheader ] ; 3 uses
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph28
  %i.ag = load i16, ptr %1, align 4, !tbaa !36
  %i.ah = sext i16 %i.ag to i32                   ; 2 uses
  %i.ai = sext i16 %5 to i32                      ; 2 uses
  %i.aj = sub nsw i32 %i.ah, %i.ai
  %i.ak = load i16, ptr %i.o, align 4, !tbaa !32
  %i.al = sext i16 %i.ak to i32
  %i.am = sub i32 %.02131, %i.al
  %i.an = mul i32 %i.am, %3
  %i.ao = add i32 %i.an, %.02026
  %i.ap = sext i16 %i.af to i32
  %i.aq = sub i32 %i.ao, %i.ap
  %i.ar = mul i32 %i.aq, %6                       ; 2 uses
  %i.as = add nsw i32 %i.aj, %i.ar
  %i.at = add nsw i32 %i.as, %i.b
  %i.au = add i32 %i.ar, %i.ah
  %i.av = sub i32 %i.au, %i.ai
  %i.aw = sext i32 %i.av to i64
  %i.ax = sext i32 %i.at to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre35 = load i32, ptr %i.p, align 4, !tbaa !34
  %.pre37 = load i16, ptr %i.r, align 2, !tbaa !35
  %.pre39 = load i16, ptr %i.n, align 8, !tbaa !36
  %.pre35.a = load i16, ptr %i.m, align 4, !tbaa !40
  %.pre43 = load i32, ptr %i.q, align 8, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph28
  %7 = phi i32 [ %.pre43, %._crit_edge.loopexit ], [ %3, %.lr.ph28 ]
  %8 = phi i16 [ %.pre35.a, %._crit_edge.loopexit ], [ %4, %.lr.ph28 ] ; 4 uses
  %9 = phi i16 [ %.pre39, %._crit_edge.loopexit ], [ %5, %.lr.ph28 ]
  %i.ay = phi i16 [ %.pre37, %._crit_edge.loopexit ], [ %i.af, %.lr.ph28 ]
  %10 = phi i32 [ %.pre35, %._crit_edge.loopexit ], [ %6, %.lr.ph28 ]
  %i.az = add nsw i32 %.02026, 1
  %i.ba = sext i16 %8 to i32
  %.not22.not = icmp slt i32 %.02026, %i.ba
  br i1 %.not22.not, label %.lr.ph28, label %._crit_edge29.loopexit, !llvm.loop !148

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.aw, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %indvars.iv ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = and i8 %i.bd, %i.s
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bf = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !149

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %._crit_edge29, %bb.b, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !47
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !42
  %i.k = load i64, ptr %i.e, align 8, !tbaa !25
  store i64 %i.k, ptr %i.c, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !39
  store ptr %i.e, ptr %i.b, align 8, !tbaa !42
  store i64 0, ptr %i.m, align 8, !tbaa !39
  store i8 0, ptr %i.e, align 8, !tbaa !25
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.029.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i64 %.02328.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add i32 %.029.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = icmp ult i64 %.02328.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.029.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %.02328.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.029.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i64 %.02328.i, 10000
  %i.i = add i32 %.029.i, 4                       ; 2 uses
  %i.j = icmp ult i64 %.02328.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i, !llvm.loop !150

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.022.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.022.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !47
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 0)
  %i.m = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.n = icmp ugt i64 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i
  %.020.i = phi i64 [ %i.u, %.lr.ph.i4 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ae, %.lr.ph.i4 ], [ %i.r, %.lr.ph.preheader.i ] ; 3 uses
  %i.s = urem i64 %.020.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = udiv i64 %.020.i, 100                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !25
  %i.y = zext i32 %.01819.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !25
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !25
  %i.ab = add i32 %.01819.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !25
  %i.ae = add i32 %.01819.i, -2
  %i.af = icmp ugt i64 %.020.i, 9999
  br i1 %i.af, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !151

._crit_edge.i:                                    ; preds = %.lr.ph.i4, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %.0.lcssa.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit ], [ %i.u, %.lr.ph.i4 ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %.0.lcssa.i, 9
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ah = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !25
  %i.am = load i8, ptr %i.ai, align 2, !tbaa !25
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.an = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ao, %bb.i ], [ %i.am, %bb.h ]
  store i8 %storemerge.i, ptr %i.m, align 1, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !47
  %i.d = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.f, ptr %i.a, align 8, !tbaa !152
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !42
  %i.i = load i64, ptr %i.a, align 8, !tbaa !152
  store i64 %i.i, ptr %i.c, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !25
  store i8 %i.k, ptr %i.j, align 1, !tbaa !25
  br label %bb.d

end_hunk_0
