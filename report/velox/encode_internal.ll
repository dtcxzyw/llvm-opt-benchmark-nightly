inline.NumInlined: 704
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5arrow7compute14EncoderOffsets6DecodeEjjRKNS0_12RowTableImplEPSt6vectorINS0_14KeyColumnArrayESaIS6_EERKS5_IjSaIjEEPNS0_12LightContextE:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 3 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  br i1 %i.ae, label %.epil.preheader69, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us.new

_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us.new: ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us.new
  %.pn = phi i32 [ %i.bh, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us.new ], [ %i.ap, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us ] ; 2 uses
  %.04148.us = phi i64 [ %i.br, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us.new ], [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us ] ; 4 uses
  %niter75 = phi i64 [ %niter75.next.1, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us.new ], [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us ]
  %i.aq = sub i32 0, %.pn
  %i.ar = and i32 %i.ad, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.04148.us
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 3 uses
  %i.au = add i32 %i.ar, %.pn
  %i.av = sub i32 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.04148.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = add i32 %i.av, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  %i.bd = or disjoint i64 %.04148.us, 1           ; 2 uses
  %i.be = sub i32 0, %i.at
  %i.bf = and i32 %i.ad, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bd
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 3 uses
  %i.bi = add i32 %i.bf, %i.at
  %i.bj = sub i32 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.bd
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = add i32 %i.bj, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = add nuw i64 %.04148.us, 2               ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %._crit_edge50.us.unr-lcssa, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us.new, !llvm.loop !65

._crit_edge50.us.unr-lcssa:                       ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us.new
  br i1 %lcmp.mod72.not, label %._crit_edge50.us, label %.epil.preheader69

.epil.preheader69:                                ; preds = %._crit_edge50.us.unr-lcssa, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us
  %.pn.epil.init = phi i32 [ %i.ap, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us ], [ %i.bh, %._crit_edge50.us.unr-lcssa ] ; 2 uses
  %.04148.us.epil.init = phi i64 [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.us ], [ %i.br, %._crit_edge50.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.bs = sub i32 0, %.pn.epil.init
  %i.bt = and i32 %i.ad, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.04148.us.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = add i32 %i.bt, %.pn.epil.init
  %i.bx = sub i32 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.04148.us.epil.init
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !32 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = add i32 %i.bx, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !3
  br label %._crit_edge50.us

._crit_edge50.us:                                 ; preds = %._crit_edge50.us.unr-lcssa, %.epil.preheader69
  %exitcond62.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond62.not, label %._crit_edge54, label %.lr.ph53.split.us, !llvm.loop !66

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %.047 = phi i64 [ 0, %.lr.ph.new ], [ %i.dc, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.047
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.047
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !3
  %i.ck = or disjoint i64 %.047, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ck
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !3
  %i.cq = or disjoint i64 %.047, 2                ; 2 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cq
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !3
  %i.cw = or disjoint i64 %.047, 3                ; 2 uses
  %i.cx = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cw
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !3
  %i.dc = add nuw i64 %.047, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %bb.e, !llvm.loop !79

._crit_edge54:                                    ; preds = %._crit_edge50.us, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, %._crit_edge.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute13EncoderBinary6DecodeEjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEPNS0_12LightContextES6_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.arrow::compute::KeyColumnMetadata", align 4 ; 5 uses
  %8 = alloca %"class.arrow::compute::KeyColumnArray", align 8 ; 4 uses
  %9 = alloca %"class.arrow::compute::KeyColumnArray", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 49 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !41, !range !28, !noundef !29
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %.not.i = xor i1 %i.d, true
  %i.e = load i8, ptr %i.a, align 4, !range !28
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i32 %i.h, label %.thread [
    i32 4, label %_ZN5arrow7compute13EncoderBinary9IsIntegerERKNS0_17KeyColumnMetadataE.exit
    i32 2, label %_ZN5arrow7compute13EncoderBinary9IsIntegerERKNS0_17KeyColumnMetadataE.exit
    i32 1, label %_ZN5arrow7compute13EncoderBinary9IsIntegerERKNS0_17KeyColumnMetadataE.exit
    i32 0, label %_ZN5arrow7compute13EncoderBinary9IsIntegerERKNS0_17KeyColumnMetadataE.exit
    i32 8, label %_ZN5arrow7compute13EncoderBinary9IsIntegerERKNS0_17KeyColumnMetadataE.exit
  ]

.thread:                                          ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 52
  br label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread

_ZN5arrow7compute13EncoderBinary9IsIntegerERKNS0_17KeyColumnMetadataE.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  tail call void @_ZN5arrow7compute14EncoderInteger6DecodeEjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEPNS0_12LightContextES6_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(209) %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6)
  br label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.k = icmp ne i32 %i.h, 0
  %not. = xor i1 %i.f, true
  %or.cond.i.i = select i1 %not., i1 true, i1 %i.k
  %brmerge = or i1 %or.cond.i.i, %i.d
  br i1 %brmerge, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread, label %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit

_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !83
  store i8 1, ptr %7, align 4, !tbaa !26, !noalias !83
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !42, !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !83
  call void @_ZNK5arrow7compute14KeyColumnArray14WithBufferFromERKS1_i(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef 1), !noalias !83
  call void @_ZNK5arrow7compute14KeyColumnArray12WithMetadataERKNS0_17KeyColumnMetadataE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !83
  %.sroa.549.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.sroa.549.0.copyload.pre = load i64, ptr %.sroa.549.0..sroa_idx.phi.trans.insert, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.4.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.d

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread: ; preds = %bb.c, %.thread
  %i.m = phi ptr [ %i.i, %.thread ], [ %i.j, %bb.c ]
  %.sroa.4.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0.copyload47 = load ptr, ptr %.sroa.4.0..sroa_idx46, align 8
  %.sroa.549.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.549.0.copyload51 = load i64, ptr %.sroa.549.0..sroa_idx50, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit
  %i.n = phi ptr [ %i.j, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit ], [ %i.m, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread ] ; 2 uses
  %.sroa.549.0 = phi i64 [ %.sroa.549.0.copyload.pre, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit ], [ %.sroa.549.0.copyload51, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread ]
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.copyload.pre, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit ], [ %.sroa.4.0.copyload47, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !88, !range !28, !noundef !29
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load i32, ptr %i.n, align 4, !tbaa !42   ; 8 uses
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.v = zext i32 %2 to i64                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = zext i32 %i.r to i64
  %i.y = add nsw i64 %i.x, -1
  %i.z = sdiv i64 %i.y, 8                         ; 3 uses
  %i.aa = icmp eq i32 %i.r, 0
  br i1 %i.aa, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext i32 %1 to i64
  %i.ab = add nsw i64 %i.z, 1
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 1) ; 2 uses
  %10 = add nsw i64 %i.z, 1                       ; 3 uses
  %min.iters.check78 = icmp ult i64 %10, 18
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 4294967295
  %i.af = icmp ugt i64 %i.ac, 4294967295
  %i.ag = or i1 %i.ae, %i.af
  %n.vec81 = and i64 %10, -4                      ; 4 uses
  %i.ah = trunc nsw i64 %n.vec81 to i32
  %cmp.n88 = icmp eq i64 %10, %n.vec81
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %.lr.ph.split.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i ] ; 4 uses
  %i.ai = trunc i64 %indvars.iv.i.i to i32
  %i.aj = mul i32 %i.r, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = trunc i64 %indvars.iv.i.i to i32
  %i.am = add i32 %0, %i.al
  %i.an = mul i32 %i.t, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i, label %bb.f, !prof !59

bb.f:                                             ; preds = %.lr.ph.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !67, !range !28, !noundef !29
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.as, ptr %i.au, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i

_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i: ; preds = %bb.f, %.lr.ph.split.i.i
  %.0.i.i.i = phi ptr [ %i.av, %bb.f ], [ null, %.lr.ph.split.i.i ] ; 2 uses
  %.0.i.i.i74 = ptrtoaddr ptr %.0.i.i.i to i64
  %i.aw = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.ax = add i32 %0, %i.aw
  %i.ay = mul i32 %i.ax, %i.t
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.v ; 2 uses
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !32  ; 2 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %i.be = mul i32 %i.r, %i.aw
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf ; 2 uses
  %brmerge93 = select i1 %min.iters.check78, i1 true, i1 %i.ag
  br i1 %brmerge93, label %.lr.ph.split.i.i.i.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i
  %i.bh = add i64 %i.bd, %i.ak
  %i.bi = add nuw i64 %i.v, %.0.i.i.i74
  %i.bj = add nuw i64 %i.bi, %i.ao
  %i.bk = sub i64 %i.bj, %i.bh
  %diff.check75 = icmp ugt i64 %i.bk, -32
  br i1 %diff.check75, label %.lr.ph.split.i.i.i.preheader, label %vector.body82

vector.body82:                                    ; preds = %vector.memcheck73, %vector.body82
  %index83 = phi i64 [ %index.next86, %vector.body82 ], [ 0, %vector.memcheck73 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index83 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index83 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load84 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !24
  %wide.load85 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x i64> %wide.load84, ptr %i.bl, align 1
  store <2 x i64> %wide.load85, ptr %i.bo, align 1
  %index.next86 = add nuw i64 %index83, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.bp, label %middle.block87, label %vector.body82, !llvm.loop !89

middle.block87:                                   ; preds = %vector.body82
  br i1 %cmp.n88, label %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i, %vector.memcheck73, %middle.block87
  %.ph = phi i64 [ 0, %vector.memcheck73 ], [ %n.vec81, %middle.block87 ], [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i ]
  %.011.i.i.i.ph = phi i32 [ 0, %vector.memcheck73 ], [ %i.ah, %middle.block87 ], [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i ]
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader, %.lr.ph.split.i.i.i
  %i.bq = phi i64 [ %i.bv, %.lr.ph.split.i.i.i ], [ %.ph, %.lr.ph.split.i.i.i.preheader ] ; 2 uses
  %.011.i.i.i = phi i32 [ %i.bu, %.lr.ph.split.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.split.i.i.i.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bq
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !24
  store i64 %i.bt, ptr %i.br, align 1
  %i.bu = add i32 %.011.i.i.i, 1                  ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %.not.i15.i.i = icmp samesign ult i64 %i.z, %i.bv
  br i1 %.not.i15.i.i, label %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !92

_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i: ; preds = %.lr.ph.split.i.i.i, %middle.block87
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.i.i, !llvm.loop !93

bb.g:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i, label %bb.h, !prof !59

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.bz, %bb.h ], [ null, %bb.g ]
  %.not.i.i27 = icmp eq i32 %1, 0
  br i1 %.not.i.i27, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.cb = zext i32 %2 to i64                      ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cd = zext i32 %i.r to i64
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = sdiv i64 %i.ce, 8                       ; 3 uses
  %i.cg = icmp eq i32 %i.r, 0
  br i1 %i.cg, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.preheader.i.i29

.lr.ph.split.preheader.i.i29:                     ; preds = %.lr.ph.i.i28
  %wide.trip.count.i.i30 = zext i32 %1 to i64
  %i.ch = add nsw i64 %i.cf, 1
  %i.ci = call i64 @llvm.usub.sat.i64(i64 %i.ch, i64 1) ; 2 uses
  %11 = add nsw i64 %i.cf, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %11, 18
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = icmp eq i64 %i.cj, 4294967295
  %i.cl = icmp ugt i64 %i.ci, 4294967295
  %i.cm = or i1 %i.ck, %i.cl
  %n.vec = and i64 %11, -4                        ; 4 uses
  %i.cn = trunc nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %11, %n.vec
  br label %.lr.ph.split.i.i31

.lr.ph.split.i.i31:                               ; preds = %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %.lr.ph.split.preheader.i.i29
  %indvars.iv.i.i32 = phi i64 [ 0, %.lr.ph.split.preheader.i.i29 ], [ %indvars.iv.next.i.i39, %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i ] ; 3 uses
  %i.co = trunc i64 %indvars.iv.i.i32 to i32
  %i.cp = mul i32 %i.r, %i.co
  %i.cq = zext i32 %i.cp to i64
  %i.cr = load ptr, ptr %i.ca, align 8, !tbaa !57 ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i33, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34, label %bb.i, !prof !59

bb.i:                                             ; preds = %.lr.ph.split.i.i31
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !67, !range !28, !noundef !29
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = select i1 %i.cu, ptr %i.cw, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34

_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34: ; preds = %bb.i, %.lr.ph.split.i.i31
  %.0.i.i.i35 = phi ptr [ %i.cx, %bb.i ], [ null, %.lr.ph.split.i.i31 ] ; 2 uses
  %.0.i.i.i3567 = ptrtoaddr ptr %.0.i.i.i35 to i64
  %i.cy = trunc nuw i64 %indvars.iv.i.i32 to i32  ; 2 uses
  %i.cz = add i32 %0, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.0.i.i.i35, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cb ; 2 uses
  %i.df = load ptr, ptr %i.cc, align 8, !tbaa !32 ; 2 uses
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = mul i32 %i.r, %i.cy
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.di ; 2 uses
  %brmerge94 = select i1 %min.iters.check, i1 true, i1 %i.cm
  br i1 %brmerge94, label %.lr.ph.split.i.i.i36.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34
  %i.dk = add i64 %i.dg, %i.cq
  %i.dl = add i64 %i.dc, %i.cb
  %i.dm = add i64 %i.dl, %.0.i.i.i3567
  %i.dn = sub i64 %i.dm, %i.dk
  %diff.check = icmp ugt i64 %i.dn, -32
  br i1 %diff.check, label %.lr.ph.split.i.i.i36.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <2 x i64>, ptr %i.dp, align 8, !tbaa !24
  %wide.load69 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <2 x i64> %wide.load, ptr %i.do, align 1
  store <2 x i64> %wide.load69, ptr %i.dr, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, label %.lr.ph.split.i.i.i36.preheader

.lr.ph.split.i.i.i36.preheader:                   ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34, %vector.memcheck, %middle.block
  %.ph91 = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34 ]
  %.011.i.i.i37.ph = phi i32 [ 0, %vector.memcheck ], [ %i.cn, %middle.block ], [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34 ]
  br label %.lr.ph.split.i.i.i36

.lr.ph.split.i.i.i36:                             ; preds = %.lr.ph.split.i.i.i36.preheader, %.lr.ph.split.i.i.i36
  %i.dt = phi i64 [ %i.dy, %.lr.ph.split.i.i.i36 ], [ %.ph91, %.lr.ph.split.i.i.i36.preheader ] ; 2 uses
  %.011.i.i.i37 = phi i32 [ %i.dx, %.lr.ph.split.i.i.i36 ], [ %.011.i.i.i37.ph, %.lr.ph.split.i.i.i36.preheader ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dt
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !24
  store i64 %i.dw, ptr %i.du, align 1
  %i.dx = add i32 %.011.i.i.i37, 1                ; 2 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %.not.i15.i.i38 = icmp samesign ult i64 %i.cf, %i.dy
  br i1 %.not.i15.i.i38, label %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, label %.lr.ph.split.i.i.i36, !llvm.loop !95

_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i: ; preds = %.lr.ph.split.i.i.i36, %middle.block
  %indvars.iv.next.i.i39 = add nuw nsw i64 %indvars.iv.i.i32, 1 ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %indvars.iv.next.i.i39, %wide.trip.count.i.i30
  br i1 %exitcond.not.i.i40, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.i.i31, !llvm.loop !96

_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit: ; preds = %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %.lr.ph.i.i28, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i, %.lr.ph.i.i, %bb.e
  %i.dz = load i8, ptr %i.a, align 4, !tbaa !26, !range !28, !noundef !29
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = load i32, ptr %i.n, align 4
  %i.ec = icmp eq i32 %i.eb, 0
  %or.cond.i.i41 = select i1 %i.ea, i1 %i.ec, i1 false
  br i1 %or.cond.i.i41, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit42, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit42: ; preds = %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit
  %i.ed = load i8, ptr %i.b, align 1, !tbaa !41, !range !28, !noundef !29
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit42
  %i.ef = getelementptr i8, ptr %4, i64 32
  %.val5.i = load ptr, ptr %i.ef, align 8, !tbaa !32
  %i.eg = getelementptr i8, ptr %4, i64 68
  %.val6.i = load i32, ptr %i.eg, align 4, !tbaa !3
  %.val7.i = load i64, ptr %5, align 8, !tbaa !34
  %i.eh = trunc i64 %.sroa.549.0 to i32
  call void @_ZN5arrow4util8bit_util13bytes_to_bitsEliPKhPhi(i64 noundef %.val7.i, i32 noundef %i.eh, ptr noundef %.sroa.4.0, ptr noundef %.val5.i, i32 noundef %.val6.i)
  br label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit

_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit42, %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i, %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, %_ZN5arrow7compute13EncoderBinary9IsIntegerERKNS0_17KeyColumnMetadataE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute17EncoderBinaryPair6DecodeEjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES6_PNS0_12LightContextES6_S6_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(209) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"struct.arrow::compute::KeyColumnMetadata", align 4 ; 5 uses
  %10 = alloca %"class.arrow::compute::KeyColumnArray", align 8 ; 4 uses
  %11 = alloca %"struct.arrow::compute::KeyColumnMetadata", align 4 ; 5 uses
  %12 = alloca %"class.arrow::compute::KeyColumnArray", align 8 ; 4 uses
  %13 = alloca [2 x %"class.arrow::compute::KeyColumnArray"], align 16 ; 14 uses
  %14 = alloca %"class.arrow::compute::KeyColumnArray", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %or.cond.i.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i.i, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 49
  %i.h = load i8, ptr %i.g, align 1, !tbaa !41, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread, label %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit

_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16, !noalias !97
  store i8 1, ptr %11, align 4, !tbaa !26, !noalias !97
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 1, ptr %i.j, align 4, !tbaa !42, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16, !noalias !97
  call void @_ZNK5arrow7compute14KeyColumnArray14WithBufferFromERKS1_i(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef 1), !noalias !97
  call void @_ZNK5arrow7compute14KeyColumnArray12WithMetadataERKNS0_17KeyColumnMetadataE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 4 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16, !noalias !97
  br label %bb.b

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread: ; preds = %bb.a, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !20
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !26, !range !28, !noundef !29
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 0
  %or.cond.i.i34 = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond.i.i34, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit35, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit35.thread

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit35: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.r = load i8, ptr %i.q, align 1, !tbaa !41, !range !28, !noundef !29
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit35.thread, label %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit39

_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit39: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !noalias !102
  store i8 1, ptr %9, align 4, !tbaa !26, !noalias !102
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 1, ptr %i.t, align 4, !tbaa !42, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16, !noalias !102
  call void @_ZNK5arrow7compute14KeyColumnArray14WithBufferFromERKS1_i(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef 1), !noalias !102
  call void @_ZNK5arrow7compute14KeyColumnArray12WithMetadataERKNS0_17KeyColumnMetadataE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %14, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !102
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %14, i64 72, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.c

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit35.thread: ; preds = %bb.b, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit35
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !tbaa.struct !20
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit35.thread, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit39
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 124
  %i.z = load i32, ptr %i.y, align 4, !tbaa !42   ; 3 uses
  %i.aa = icmp eq i32 %i.z, 8
end_hunk_0
