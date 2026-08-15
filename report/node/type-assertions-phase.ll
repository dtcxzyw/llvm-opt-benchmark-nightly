inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE8SubtractERKNS2_8WordTypeILm64EEES8_PNS0_4ZoneE:bb.a
  %.sink.i.i = phi ptr [ %i.ay, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i ], [ %i.an, %bb.g ]
  store ptr %.sink.i.i, ptr %.sink16.i.i.sroa.phi, align 8
  store ptr %i.z, ptr %4, align 16
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.ac, ptr %i.ab, align 16
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE12FromElementsENS_4base11SmallVectorImLm16ESaImEEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, ptr noundef nonnull %5, ptr noundef %3)
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit
  %.pre59 = load i8, ptr %i.ad, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.az = phi i8 [ %.pre59, %._crit_edge.loopexit ], [ %i.ai, %.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.bt, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.bb = zext i8 %i.az to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next57, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge54, !llvm.loop !545

.lr.ph:                                           ; preds = %.preheader, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit ], [ 0, %.preheader ] ; 2 uses
  %i.bd = phi i8 [ %i.bt, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit ], [ %i.aj, %.preheader ]
  %i.be = load i8, ptr %i.ad, align 2
  %i.bf = icmp ult i8 %i.be, 3
  %i.bg = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.bf, ptr %i.g, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv56
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ult i8 %i.bd, 3
  %i.bk = load ptr, ptr %i.r, align 8
  %.sroa.0.0.i.i18 = select i1 %i.bj, ptr %i.r, ptr %i.bk
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i18, i64 %indvars.iv
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = sub i64 %i.bi, %i.bm
  %i.bo = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.ab, align 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit, !prof !5

bb.l:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit

_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit: ; preds = %.lr.ph, %bb.l
  %i.br = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bs, ptr %i.aa, align 8
  store i64 %i.bn, ptr %i.br, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i8, ptr %i.ah, align 2             ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !546

bb.m:                                             ; preds = %bb.d
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bx = load i8, ptr %i.bw, align 2             ; 2 uses
  %i.by = icmp ult i8 %i.bx, 3
  %.sroa.3.0.i.i = zext i8 %i.bx to i64
  %.sroa.0.0.i.i19 = select i1 %i.by, ptr %i.g, ptr %i.k ; 6 uses
  %i.bz = add nsw i64 %.sroa.3.0.i.i, -1          ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8            ; 4 uses
  %i.cc = load i64, ptr %.sroa.0.0.i.i19, align 8 ; 4 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp sgt i64 %i.cd, -1
  br i1 %i.ce, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread
  %i.cf = icmp ugt i64 %i.bz, 1
  br i1 %i.cf, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.cg = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %i.cb, %.preheader.i.i ] ; 2 uses
  %i.ch = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.cc, %.preheader.i.i ] ; 2 uses
  %i.ci = phi i64 [ %i.cr, %.lr.ph.i.i ], [ 1, %.preheader.i.i ] ; 2 uses
  %.026.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.01025.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %i.bz, %.preheader.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.ck, %i.ch
  %i.cm = add i64 %.01025.i.i, -1                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = sub i64 %i.cg, %i.co
  %i.cq = icmp ult i64 %i.cl, %i.cp               ; 4 uses
  %.111.i.i = select i1 %i.cq, i64 %.01025.i.i, i64 %i.cm ; 3 uses
  %.1.i.i = select i1 %i.cq, i64 %i.ci, i64 %.026.i.i ; 3 uses
  %i.cr = add i64 %.1.i.i, 1                      ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %.111.i.i
  %i.ct = select i1 %i.cq, i64 %i.ck, i64 %i.ch
  %i.cu = select i1 %i.cq, i64 %i.cg, i64 %i.co
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !520

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.111.i.i
  %.pre.i.i20 = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.1.i.i
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit: ; preds = %bb.m, %.thread, %.preheader.i.i, %._crit_edge.loopexit.i.i
  %.pn12.i = phi i64 [ %.pre.i.i20, %._crit_edge.loopexit.i.i ], [ %i.cc, %.thread ], [ %i.cb, %.preheader.i.i ], [ %i.h, %bb.m ] ; 3 uses
  %.pn10.i = phi i64 [ %.pre29.i.i, %._crit_edge.loopexit.i.i ], [ %i.cb, %.thread ], [ %i.cc, %.preheader.i.i ], [ %i.e, %bb.m ] ; 3 uses
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cw = load i8, ptr %i.cv, align 2             ; 2 uses
  %i.cx = icmp ult i8 %i.cw, 3
  %.sroa.3.0.i.i21 = zext i8 %i.cw to i64
  %.sroa.0.0.i.i22 = select i1 %i.cx, ptr %i.r, ptr %i.v ; 6 uses
  %i.cy = add nsw i64 %.sroa.3.0.i.i21, -1        ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8            ; 4 uses
  %i.db = load i64, ptr %.sroa.0.0.i.i22, align 8 ; 4 uses
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp sgt i64 %i.dc, -1
  br i1 %i.dd, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %bb.n
  %i.de = icmp ugt i64 %i.cy, 1
  br i1 %i.de, label %.lr.ph.i.i28, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

.lr.ph.i.i28:                                     ; preds = %.preheader.i.i23, %.lr.ph.i.i28
  %i.df = phi i64 [ %i.dt, %.lr.ph.i.i28 ], [ %i.da, %.preheader.i.i23 ] ; 2 uses
  %i.dg = phi i64 [ %i.ds, %.lr.ph.i.i28 ], [ %i.db, %.preheader.i.i23 ] ; 2 uses
  %i.dh = phi i64 [ %i.dq, %.lr.ph.i.i28 ], [ 1, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i29 = phi i64 [ %.1.i.i32, %.lr.ph.i.i28 ], [ 0, %.preheader.i.i23 ]
  %.01025.i.i30 = phi i64 [ %.111.i.i31, %.lr.ph.i.i28 ], [ %i.cy, %.preheader.i.i23 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = sub i64 %i.dj, %i.dg
  %i.dl = add i64 %.01025.i.i30, -1               ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = sub i64 %i.df, %i.dn
  %i.dp = icmp ult i64 %i.dk, %i.do               ; 4 uses
  %.111.i.i31 = select i1 %i.dp, i64 %.01025.i.i30, i64 %i.dl ; 3 uses
  %.1.i.i32 = select i1 %i.dp, i64 %i.dh, i64 %.026.i.i29 ; 3 uses
  %i.dq = add i64 %.1.i.i32, 1                    ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %.111.i.i31
  %i.ds = select i1 %i.dp, i64 %i.dj, i64 %i.dg
  %i.dt = select i1 %i.dp, i64 %i.df, i64 %i.dn
  br i1 %i.dr, label %.lr.ph.i.i28, label %._crit_edge.loopexit.i.i33, !llvm.loop !520

._crit_edge.loopexit.i.i33:                       ; preds = %.lr.ph.i.i28
  %.phi.trans.insert.i.i34 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.111.i.i31
  %.pre.i.i35 = load i64, ptr %.phi.trans.insert.i.i34, align 8
  %.phi.trans.insert28.i.i36 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.1.i.i32
  %.pre29.i.i37 = load i64, ptr %.phi.trans.insert28.i.i36, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38: ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, %bb.n, %.preheader.i.i23, %._crit_edge.loopexit.i.i33
  %.pn12.i24 = phi i64 [ %.pre.i.i35, %._crit_edge.loopexit.i.i33 ], [ %i.db, %bb.n ], [ %i.da, %.preheader.i.i23 ], [ %i.s, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %.pn10.i25 = phi i64 [ %.pre29.i.i37, %._crit_edge.loopexit.i.i33 ], [ %i.da, %bb.n ], [ %i.db, %.preheader.i.i23 ], [ %i.p, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %i.du = icmp ugt i64 %.pn12.i, %.pn10.i
  %i.dv = icmp ugt i64 %.pn12.i24, %.pn10.i25
  %or.cond = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  %.p.i.i39 = sub nuw i64 %.pn10.i25, %.pn12.i24
  %.p.i.i.neg = add i64 %.pn12.i, -2
  %i.dw = sub i64 %.p.i.i.neg, %.pn10.i
  %i.dx = icmp ugt i64 %i.dw, %.p.i.i39
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dy = sub i64 %.pn12.i, %.pn10.i25
  %i.dz = sub i64 %.pn10.i, %.pn12.i24
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, i64 noundef %i.dy, i64 noundef %i.dz, ptr noundef %3)
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  store i8 3, ptr %0, align 8, !alias.scope !547
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ea, i8 0, i64 15, i1 false), !alias.scope !552
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i40, align 8, !alias.scope !547
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(496) %1, ptr noundef nonnull align 4 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 9 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 10 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %.sroa.03.0.copyload = load i32, ptr %i.a, align 4
  %i.c = lshr i32 %.sroa.03.0.copyload, 4
  %i.d = zext nneg i32 %i.c to i64                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !553
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !553 ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  %.not.i.i.i.i = icmp ugt i64 %i.l, %i.d
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.n = lshr i64 %i.d, 1
  %i.o = add nuw nsw i64 %i.d, 32
  %i.p = add nuw nsw i64 %i.o, %i.n
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft16SnapshotTableKeyINS4_4TypeENS4_9NoKeyDataEEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.p), !noalias !553
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.r = load ptr, ptr %i.q, align 8, !noalias !553
  %i.s = load ptr, ptr %i.g, align 8, !noalias !553
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft16SnapshotTableKeyINS4_4TypeENS4_9NoKeyDataEEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.w), !noalias !553
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !553
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i: ; preds = %bb.b, %bb.a
  %i.x = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.d ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !553
  %i.z = trunc nuw i8 %.sroa.4.0.copyload.i.i to i1
  br i1 %i.z, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit.thread

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i
  %.sroa.0.0.copyload3.i.i = load ptr, ptr %i.y, align 8, !noalias !553 ; 2 uses
  %.sroa.0.0.copyload3.i = load i8, ptr %.sroa.0.0.copyload3.i.i, align 8, !noalias !558 ; 3 uses
  %i.aa = icmp eq i8 %.sroa.0.0.copyload3.i, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit.thread, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 1, ptr %4, align 8
  %.sroa.337.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.337.0..sroa_idx42, i8 0, i64 23, i1 false)
  br label %bb.c

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i
  %.sroa.6.0..sroa.0.0.copyload3.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 %.sroa.0.0.copyload3.i, ptr %4, align 8
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.337.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa.0.0.copyload3.i.sroa_idx.i, i64 23, i1 false)
  %i.ab = icmp eq i8 %.sroa.0.0.copyload3.i, 1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit.thread, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.02.0.copyload.i = load i8, ptr %i.ac, align 4, !noalias !559
  %i.ad = icmp eq i8 %.sroa.02.0.copyload.i, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !559
  call void @_ZN2v88internal8compiler10turboshaft5Typer19TruncateWord32InputERKNS2_4TypeEbPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true, ptr noundef %i.af)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit

_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit: ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ag = load i16, ptr %i.b, align 2
  %i.ah = icmp ugt i16 %i.ag, 1
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25, %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25
  %.045 = phi i64 [ 1, %.lr.ph ], [ %i.bm, %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.045
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 4
  %i.an = lshr i32 %.sroa.0.0.copyload, 4
  %i.ao = zext nneg i32 %i.an to i64              ; 4 uses
  %i.ap = load ptr, ptr %i.e, align 8, !noalias !562
  %i.aq = load ptr, ptr %i.g, align 8, !noalias !562 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 4
  %.not.i.i.i.i12 = icmp ugt i64 %i.au, %i.ao
  br i1 %.not.i.i.i.i12, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.av = lshr i64 %i.ao, 1
  %i.aw = add nuw nsw i64 %i.ao, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft16SnapshotTableKeyINS4_4TypeENS4_9NoKeyDataEEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef %i.ax), !noalias !562
  %i.ay = load ptr, ptr %i.aj, align 8, !noalias !562
  %i.az = load ptr, ptr %i.g, align 8, !noalias !562
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4
  call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft16SnapshotTableKeyINS4_4TypeENS4_9NoKeyDataEEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef %i.bd), !noalias !562
  %.pre.i.i.i.i13 = load ptr, ptr %i.g, align 8, !noalias !562
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14: ; preds = %bb.h, %bb.g
  %i.be = phi ptr [ %.pre.i.i.i.i13, %bb.h ], [ %i.aq, %bb.g ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.ao ; 2 uses
  %.sroa.4.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.4.0.copyload.i.i16 = load i8, ptr %.sroa.4.0..sroa_idx.i.i15, align 8, !noalias !562
  %i.bg = trunc nuw i8 %.sroa.4.0.copyload.i.i16 to i1
  br i1 %i.bg, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i18, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23.thread

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i18: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14
  %.sroa.0.0.copyload3.i.i19 = load ptr, ptr %i.bf, align 8, !noalias !562 ; 2 uses
  %.sroa.0.0.copyload3.i20 = load i8, ptr %.sroa.0.0.copyload3.i.i19, align 8, !noalias !567 ; 3 uses
  %i.bh = icmp eq i8 %.sroa.0.0.copyload3.i20, 0
  br i1 %i.bh, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23.thread, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23.thread: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i18
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.3.0..sroa_idx, i8 0, i64 23, i1 false)
  br label %bb.i

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23: ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i18
  %.sroa.6.0..sroa.0.0.copyload3.i.sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.i19, i64 1
  %.sroa.3.sroa.0.0.copyload48 = load <23 x i8>, ptr %.sroa.6.0..sroa.0.0.copyload3.i.sroa_idx.i21, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 %.sroa.0.0.copyload3.i20, ptr %3, align 8
  store <23 x i8> %.sroa.3.sroa.0.0.copyload48, ptr %.sroa.3.0..sroa_idx, align 1
  %i.bi = icmp eq i8 %.sroa.0.0.copyload3.i20, 1
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23.thread, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23
  %.sroa.02.0.copyload.i24 = load i8, ptr %i.ak, align 4, !noalias !568
  %i.bj = icmp eq i8 %.sroa.02.0.copyload.i24, 0
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.al, align 8, !noalias !568
  call void @_ZN2v88internal8compiler10turboshaft5Typer19TruncateWord32InputERKNS2_4TypeEbPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true, ptr noundef %i.bk)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25

_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25: ; preds = %bb.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bl = load ptr, ptr %i.al, align 8
  call void @_ZN2v88internal8compiler10turboshaft4Type15LeastUpperBoundERKS3_S5_PNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.bl) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bm = add nuw nsw i64 %.045, 1                ; 2 uses
  %i.bn = load i16, ptr %i.b, align 2
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp samesign ult i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.g, label %._crit_edge, !llvm.loop !571
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis14ProcessLoopPhiENS2_7OpIndexERKNS2_5PhiOpE(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 8 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 10 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = lshr i32 %1, 4
  %i.b = zext nneg i32 %i.a to i64                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noalias !572
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !572 ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %.not.i.i.i = icmp ugt i64 %i.j, %i.b
  br i1 %.not.i.i.i, label %_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = lshr i64 %i.b, 1
  %i.m = add nuw nsw i64 %i.b, 32
  %i.n = add nuw nsw i64 %i.m, %i.l
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.n), !noalias !572
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !572
  %i.q = load ptr, ptr %i.e, align 8, !noalias !572
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.u), !noalias !572
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !noalias !572
  br label %_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE.exit

_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE.exit: ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.f, %bb.a ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %4, ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(5) %2)
  %i.x = load i8, ptr %3, align 8
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE.exit
  %i.z = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  br i1 %i.z, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %3, align 8                ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.ac = load i8, ptr %4, align 8, !noalias !575
  %i.ad = icmp eq i8 %i.ac, 7
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit

bb.g:                                             ; preds = %bb.e
  switch i8 %i.aa, label %bb.l [
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !575
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE12WidenMaximalERKNS2_8WordTypeILm32EEES8_PNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.af)
  br label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !575
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE12WidenMaximalERKNS2_8WordTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ah)
  br label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit

bb.j:                                             ; preds = %bb.g
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %5, align 8, !alias.scope !575
  %.sroa.712.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 3, ptr %.sroa.712.0..sroa_idx.i, align 4, !alias.scope !575
  %.sroa.813.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> <float -inf, float +inf>, ptr %.sroa.813.0..sroa_idx.i, align 8, !alias.scope !575
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !575
  br label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit

bb.k:                                             ; preds = %bb.g
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %5, align 8, !alias.scope !575
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 3, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !575
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !575
  br label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit

bb.l:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #24, !noalias !575
  unreachable

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit, %bb.c, %_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE.exit
  %.sink = phi i1 [ true, %bb.c ], [ false, %_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE.exit ], [ false, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit ], [ false, %bb.d ]
  %.0 = phi i1 [ false, %bb.c ], [ true, %_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE.exit ], [ true, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_.exit ], [ true, %bb.d ]
  call void @_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis7SetTypeENS2_7OpIndexENS2_4TypeEbb(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 %1, ptr noundef nonnull byval(%"class.v8::internal::compiler::turboshaft::Type") align 8 %4, i1 noundef zeroext %.sink, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_4TypeENS2_9NoKeyDataEE17MergePredecessorsIZNS2_21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjEUlNS2_16SnapshotTableKeyIS4_S5_EENS_4base6VectorIKS4_EEE_NS2_16NoChangeCallbackEEEvNSH_IKNS6_8SnapshotEEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.i = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %.sroa.5.i = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.idx = mul nuw nsw i64 %2, 24
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not65 = icmp eq ptr %i.o, %i.p
  br i1 %.not65, label %.loopexit, label %.lr.ph68

end_hunk_0
