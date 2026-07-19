inline.NumInlined: 704
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5arrow7compute14EncoderOffsets6DecodeEjjRKNS0_12RowTableImplEPSt6vectorINS0_14KeyColumnArrayESaIS6_EERKS5_IjSaIjEEPNS0_12LightContextE:bb.a
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
  %i.ad = add nsw i64 %i.z, 1                     ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.ad, 14
  %i.ae = and i64 %i.ac, 4294967295
  %i.af = icmp eq i64 %i.ae, 4294967295
  %i.ag = icmp ugt i64 %i.ac, 4294967295
  %i.ah = or i1 %i.af, %i.ag
  %n.vec79 = and i64 %i.ad, -4                    ; 3 uses
  %cmp.n86 = icmp eq i64 %i.ad, %n.vec79
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
  %.0.i.i.i73 = ptrtoaddr ptr %.0.i.i.i to i64
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
  %brmerge91 = select i1 %min.iters.check76, i1 true, i1 %i.ah
  br i1 %brmerge91, label %.lr.ph.split.i.i.i.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i
  %i.bh = add i64 %i.bd, %i.ak
  %i.bi = add nuw i64 %i.v, %.0.i.i.i73
  %i.bj = add nuw i64 %i.bi, %i.ao
  %i.bk = sub i64 %i.bj, %i.bh
  %diff.check74 = icmp ugt i64 %i.bk, -32
  br i1 %diff.check74, label %.lr.ph.split.i.i.i.preheader, label %vector.body80

vector.body80:                                    ; preds = %vector.memcheck72, %vector.body80
  %index81 = phi i64 [ %index.next84, %vector.body80 ], [ 0, %vector.memcheck72 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index81 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index81 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load82 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !24
  %wide.load83 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x i64> %wide.load82, ptr %i.bl, align 1
  store <2 x i64> %wide.load83, ptr %i.bo, align 1
  %index.next84 = add nuw i64 %index81, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.bp, label %middle.block85, label %vector.body80, !llvm.loop !89

middle.block85:                                   ; preds = %vector.body80
  br i1 %cmp.n86, label %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i, %vector.memcheck72, %middle.block85
  %.ph = phi i64 [ 0, %vector.memcheck72 ], [ %n.vec79, %middle.block85 ], [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i ]
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader, %.lr.ph.split.i.i.i
  %i.bq = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.split.i.i.i ], [ %.ph, %.lr.ph.split.i.i.i.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bq
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !24
  store i64 %i.bt, ptr %i.br, align 1
  %indvars.iv.next.i.i.i = add i64 %i.bq, 1       ; 2 uses
  %10 = and i64 %indvars.iv.next.i.i.i, 4294967295
  %.not.i15.i.i = icmp samesign ult i64 %i.z, %10
  br i1 %.not.i15.i.i, label %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !92

_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i: ; preds = %.lr.ph.split.i.i.i, %middle.block85
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.i.i, !llvm.loop !93

bb.g:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i, label %bb.h, !prof !59

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.bx, %bb.h ], [ null, %bb.g ]
  %.not.i.i27 = icmp eq i32 %1, 0
  br i1 %.not.i.i27, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.bz = zext i32 %2 to i64                      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cb = zext i32 %i.r to i64
  %i.cc = add nsw i64 %i.cb, -1
  %i.cd = sdiv i64 %i.cc, 8                       ; 3 uses
  %i.ce = icmp eq i32 %i.r, 0
  br i1 %i.ce, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.preheader.i.i29

.lr.ph.split.preheader.i.i29:                     ; preds = %.lr.ph.i.i28
  %wide.trip.count.i.i30 = zext i32 %1 to i64
  %i.cf = add nsw i64 %i.cd, 1
  %i.cg = call i64 @llvm.usub.sat.i64(i64 %i.cf, i64 1) ; 2 uses
  %i.ch = add nsw i64 %i.cd, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 14
  %i.ci = and i64 %i.cg, 4294967295
  %i.cj = icmp eq i64 %i.ci, 4294967295
  %i.ck = icmp ugt i64 %i.cg, 4294967295
  %i.cl = or i1 %i.cj, %i.ck
  %n.vec = and i64 %i.ch, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br label %.lr.ph.split.i.i31

.lr.ph.split.i.i31:                               ; preds = %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %.lr.ph.split.preheader.i.i29
  %indvars.iv.i.i32 = phi i64 [ 0, %.lr.ph.split.preheader.i.i29 ], [ %indvars.iv.next.i.i39, %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i ] ; 3 uses
  %i.cm = trunc i64 %indvars.iv.i.i32 to i32
  %i.cn = mul i32 %i.r, %i.cm
  %i.co = zext i32 %i.cn to i64
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !57 ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i33, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34, label %bb.i, !prof !59

bb.i:                                             ; preds = %.lr.ph.split.i.i31
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !67, !range !28, !noundef !29
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = select i1 %i.cs, ptr %i.cu, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34

_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34: ; preds = %bb.i, %.lr.ph.split.i.i31
  %.0.i.i.i35 = phi ptr [ %i.cv, %bb.i ], [ null, %.lr.ph.split.i.i31 ] ; 2 uses
  %.0.i.i.i3567 = ptrtoaddr ptr %.0.i.i.i35 to i64
  %i.cw = trunc nuw i64 %indvars.iv.i.i32 to i32  ; 2 uses
  %i.cx = add i32 %0, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !24 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.0.i.i.i35, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.bz ; 2 uses
  %i.dd = load ptr, ptr %i.ca, align 8, !tbaa !32 ; 2 uses
  %i.de = ptrtoaddr ptr %i.dd to i64
  %i.df = mul i32 %i.r, %i.cw
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dg ; 2 uses
  %brmerge92 = select i1 %min.iters.check, i1 true, i1 %i.cl
  br i1 %brmerge92, label %.lr.ph.split.i.i.i36.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34
  %i.di = add i64 %i.de, %i.co
  %i.dj = add i64 %i.da, %i.bz
  %i.dk = add i64 %i.dj, %.0.i.i.i3567
  %i.dl = sub i64 %i.dk, %i.di
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %.lr.ph.split.i.i.i36.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <2 x i64>, ptr %i.dn, align 8, !tbaa !24
  %wide.load68 = load <2 x i64>, ptr %i.do, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x i64> %wide.load, ptr %i.dm, align 1
  store <2 x i64> %wide.load68, ptr %i.dp, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, label %.lr.ph.split.i.i.i36.preheader

.lr.ph.split.i.i.i36.preheader:                   ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34, %vector.memcheck, %middle.block
  %.ph89 = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i34 ]
  br label %.lr.ph.split.i.i.i36

.lr.ph.split.i.i.i36:                             ; preds = %.lr.ph.split.i.i.i36.preheader, %.lr.ph.split.i.i.i36
  %i.dr = phi i64 [ %indvars.iv.next.i.i.i38, %.lr.ph.split.i.i.i36 ], [ %.ph89, %.lr.ph.split.i.i.i36.preheader ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !24
  store i64 %i.du, ptr %i.ds, align 1
  %indvars.iv.next.i.i.i38 = add i64 %i.dr, 1     ; 2 uses
  %11 = and i64 %indvars.iv.next.i.i.i38, 4294967295
  %.not.i15.i.i38 = icmp samesign ult i64 %i.cd, %11
  br i1 %.not.i15.i.i38, label %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, label %.lr.ph.split.i.i.i36, !llvm.loop !95

_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i: ; preds = %.lr.ph.split.i.i.i36, %middle.block
  %indvars.iv.next.i.i39 = add nuw nsw i64 %indvars.iv.i.i32, 1 ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %indvars.iv.next.i.i39, %wide.trip.count.i.i30
  br i1 %exitcond.not.i.i40, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.i.i31, !llvm.loop !96

_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit: ; preds = %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %.lr.ph.i.i28, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i, %.lr.ph.i.i, %bb.e
  %i.dv = load i8, ptr %i.a, align 4, !tbaa !26, !range !28, !noundef !29
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = load i32, ptr %i.n, align 4
  %i.dy = icmp eq i32 %i.dx, 0
  %or.cond.i.i41 = select i1 %i.dw, i1 %i.dy, i1 false
  br i1 %or.cond.i.i41, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit42, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit42: ; preds = %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit
  %i.dz = load i8, ptr %i.b, align 1, !tbaa !41, !range !28, !noundef !29
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit42
  %i.eb = getelementptr i8, ptr %4, i64 32
  %.val5.i = load ptr, ptr %i.eb, align 8, !tbaa !32
  %i.ec = getelementptr i8, ptr %4, i64 68
  %.val6.i = load i32, ptr %i.ec, align 4, !tbaa !3
  %.val7.i = load i64, ptr %5, align 8, !tbaa !34
  %i.ed = trunc i64 %.sroa.549.0 to i32
  call void @_ZN5arrow4util8bit_util13bytes_to_bitsEliPKhPhi(i64 noundef %.val7.i, i32 noundef %i.ed, ptr noundef %.sroa.4.0, ptr noundef %.val5.i, i32 noundef %.val6.i)
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
  %i.ab = icmp eq i32 %i.z, 4
  %i.ac = icmp eq i32 %i.z, 2
  %i.ad = select i1 %i.ac, i64 4, i64 0
  %i.ae = select i1 %i.ab, i64 8, i64 %i.ad
  %i.af = select i1 %i.aa, i64 12, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42 ; 3 uses
  %i.ai = icmp eq i32 %i.ah, 8
  %i.aj = icmp eq i32 %i.ah, 4
  %i.ak = icmp eq i32 %i.ah, 2
  %i.al = zext i1 %i.ak to i64
  %i.am = select i1 %i.aj, i64 2, i64 %i.al
  %i.an = select i1 %i.ai, i64 3, i64 %i.am
  %i.ao = load i8, ptr %i.x, align 8, !tbaa !88, !range !28, !noundef !29
  %i.ap = shl nuw nsw i8 %i.ao, 4
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5arrow7compute17EncoderBinaryPair6DecodeEjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES6_PNS0_12LightContextES6_S6_E12DecodeImp_fn, i64 %i.af
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !107
  call void %i.au(i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(209) %3, ptr noundef nonnull %13, ptr noundef nonnull %i.w)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = load i8, ptr %i.a, align 4, !tbaa !26, !range !28, !noundef !29
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load i32, ptr %i.d, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  %or.cond.i.i40 = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.i.i40, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit41, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit41: ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 49
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !41, !range !28, !noundef !29
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit41
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.val.i = load ptr, ptr %i.bc, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 56
  %.val4.i = load i64, ptr %i.bd, align 8, !tbaa !108
  %i.be = getelementptr i8, ptr %4, i64 32
  %.val5.i = load ptr, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr i8, ptr %4, i64 68
  %.val6.i = load i32, ptr %i.bf, align 4, !tbaa !3
  %.val7.i = load i64, ptr %6, align 8, !tbaa !34
  %i.bg = trunc i64 %.val4.i to i32
  call void @_ZN5arrow4util8bit_util13bytes_to_bitsEliPKhPhi(i64 noundef %.val7.i, i32 noundef %i.bg, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef %.val6.i)
  br label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit

_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit: ; preds = %bb.e, %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit41
  %i.bh = load i8, ptr %i.k, align 4, !tbaa !26, !range !28, !noundef !29
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.n, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  %or.cond.i.i44 = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %or.cond.i.i44, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit46, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit55

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit46: ; preds = %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !41, !range !28, !noundef !29
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit55, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i49

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i49: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit46
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 80
  %.val.i50 = load ptr, ptr %i.bo, align 16, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 128
  %.val4.i51 = load i64, ptr %i.bp, align 16, !tbaa !108
  %i.bq = getelementptr i8, ptr %5, i64 32
  %.val5.i52 = load ptr, ptr %i.bq, align 8, !tbaa !32
  %i.br = getelementptr i8, ptr %5, i64 68
  %.val6.i53 = load i32, ptr %i.br, align 4, !tbaa !3
  %.val7.i54 = load i64, ptr %6, align 8, !tbaa !34
  %i.bs = trunc i64 %.val4.i51 to i32
  call void @_ZN5arrow4util8bit_util13bytes_to_bitsEliPKhPhi(i64 noundef %.val7.i54, i32 noundef %i.bs, ptr noundef %.val.i50, ptr noundef %.val5.i52, i32 noundef %.val6.i53)
  br label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit55
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute12EncoderNulls6DecodeEjjRKNS0_12RowTableImplEPSt6vectorINS0_14KeyColumnArrayESaIS6_EE:bb.a
.lr.ph41.split:                                   ; preds = %.lr.ph41, %.loopexit
  %i.bj = phi ptr [ %i.ce, %.loopexit ], [ %i.i, %.lr.ph41 ]
  %.039 = phi i64 [ %i.cc, %.loopexit ], [ 0, %.lr.ph41 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.bj, i64 %.039 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 49
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !41, !range !28, !noundef !29
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph41.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !3  ; 3 uses
  %i.bs = shl i32 255, %i.br
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !21
  %i.bu = trunc i32 %i.bs to i8
  %i.bv = or i8 %i.bt, %i.bu
  store i8 %i.bv, ptr %i.bp, align 1, !tbaa !21
  %i.bw = icmp ugt i32 %i.br, 8
  br i1 %i.bw, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.by = add i32 %i.br, -8
  %i.bz = zext i32 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bz, 7
  %i.cb = lshr i64 %i.ca, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 -1, i64 %i.cb, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h, %.lr.ph41.split
  %i.cc = add nuw i64 %.039, 1                    ; 2 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ce = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 72
  %i.cj = icmp ult i64 %i.cc, %i.ci
  br i1 %i.cj, label %.lr.ph41.split, label %._crit_edge, !llvm.loop !112
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util16TempVectorHolderItED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %i.f = shl i32 %i.e, 1
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c, i32 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute15RowTableEncoder26DecodeVaryingLengthBuffersElllRKNS0_12RowTableImplEPSt6vectorINS0_14KeyColumnArrayESaIS6_EElPNS_4util15TempVectorStackE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %4, ptr nofree noundef nonnull readonly captures(none) %5, i64 noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute15RowTableEncoder22PrepareKeyColumnArraysEllRKSt6vectorINS0_14KeyColumnArrayESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.a = load i8, ptr %0, align 8, !tbaa !44, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = trunc i64 %1 to i32
  %i.h = trunc i64 %3 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi ptr [ %i.f, %.lr.ph ], [ %i.n, %bb.b ]
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 3 uses
  %i.j = trunc i64 %.013 to i32
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %.013
  tail call void @_ZN5arrow7compute16EncoderVarBinary6DecodeEjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEPNS0_12LightContextE(i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef nonnull %i.k, ptr nonnull poison)
  %i.l = add nuw i64 %.013, 1                     ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 72
  %i.s = icmp ult i64 %i.l, %i.r
  br i1 %i.s, label %bb.b, label %.loopexit, !llvm.loop !113

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute16EncoderVarBinary6DecodeEjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEPNS0_12LightContextE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null          ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  %i.f = zext i32 %0 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %_ZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %wide.trip.count.i.i = zext i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i ] ; 2 uses
  %.030.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.p, %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24   ; 4 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.thread.i.i, label %bb.e, !prof !59

_ZNK5arrow7compute12RowTableImpl4dataEi.exit.thread.i.i: ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr null, i64 %i.r
  %i.u = load i32, ptr %i.l, align 4, !tbaa !64   ; 2 uses
  %i.v = load i32, ptr %i.m, align 8, !tbaa !63
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = sub i32 %i.y, %i.u
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit25.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.r
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !64  ; 2 uses
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !63
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sub i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !67, !range !28, !noundef !29
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.al, ptr %i.ab, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit25.i.i

_ZNK5arrow7compute12RowTableImpl4dataEi.exit25.i.i: ; preds = %bb.e, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.thread.i.i
  %.in.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.u, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.thread.i.i ]
  %i.an = phi i32 [ %i.ai, %bb.e ], [ %i.z, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.thread.i.i ] ; 2 uses
  %.0.i24.i.i = phi ptr [ %i.am, %bb.e ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.thread.i.i ] ; 2 uses
  %.0.i24.i.i34 = ptrtoaddr ptr %.0.i24.i.i to i64
  %i.ao = zext i32 %.in.i.i to i64                ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i24.i.i, i64 %i.r
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao  ; 2 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !32  ; 2 uses
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = zext i32 %.030.i.i to i64               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = zext i32 %i.an to i64
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = sdiv i64 %i.aw, 8                       ; 3 uses
  %i.ay = icmp eq i32 %i.an, 0
  br i1 %i.ay, label %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit25.i.i
  %i.az = add nsw i64 %i.ax, 1                    ; 3 uses
  %min.iters.check37 = icmp ult i64 %i.az, 20
  br i1 %min.iters.check37, label %.lr.ph.split.i.i.i.preheader50, label %vector.scevcheck31

vector.scevcheck31:                               ; preds = %.lr.ph.split.i.i.i.preheader
  %i.ba = add nsw i64 %i.ax, 1
  %i.bb = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 1) ; 2 uses
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = icmp eq i64 %i.bc, 4294967295
  %i.be = icmp ugt i64 %i.bb, 4294967295
  %i.bf = or i1 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.split.i.i.i.preheader50, label %vector.memcheck33

vector.memcheck33:                                ; preds = %vector.scevcheck31
  %i.bg = add i64 %i.as, %i.at
  %i.bh = add i64 %i.r, %.0.i24.i.i34
  %i.bi = add i64 %i.bh, %i.ao
  %i.bj = sub i64 %i.bi, %i.bg
  %diff.check35 = icmp ugt i64 %i.bj, -32
  br i1 %diff.check35, label %.lr.ph.split.i.i.i.preheader50, label %vector.ph38

vector.ph38:                                      ; preds = %vector.memcheck33
  %n.vec40 = and i64 %i.az, -4                    ; 3 uses
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph38
  %index42 = phi i64 [ 0, %vector.ph38 ], [ %index.next45, %vector.body41 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index42 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index42 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load43 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !24
  %wide.load44 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x i64> %wide.load43, ptr %i.bk, align 1
  store <2 x i64> %wide.load44, ptr %i.bn, align 1
  %index.next45 = add nuw i64 %index42, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.bo, label %middle.block46, label %vector.body41, !llvm.loop !114

middle.block46:                                   ; preds = %vector.body41
  %cmp.n47 = icmp eq i64 %i.az, %n.vec40
  br i1 %cmp.n47, label %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, label %.lr.ph.split.i.i.i.preheader50

.lr.ph.split.i.i.i.preheader50:                   ; preds = %vector.memcheck33, %vector.scevcheck31, %.lr.ph.split.i.i.i.preheader, %middle.block46
  %.ph = phi i64 [ 0, %vector.memcheck33 ], [ 0, %vector.scevcheck31 ], [ 0, %.lr.ph.split.i.i.i.preheader ], [ %n.vec40, %middle.block46 ]
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader50, %.lr.ph.split.i.i.i
  %i.bp = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.split.i.i.i ], [ %.ph, %.lr.ph.split.i.i.i.preheader50 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !24
  store i64 %i.bs, ptr %i.bq, align 1
  %indvars.iv.next.i.i.i = add i64 %i.bp, 1       ; 2 uses
  %6 = and i64 %indvars.iv.next.i.i.i, 4294967295
  %.not.i26.i.i = icmp samesign ult i64 %i.ax, %6
  br i1 %.not.i26.i.i, label %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !115

_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i: ; preds = %.lr.ph.split.i.i.i, %middle.block46, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit25.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %bb.d, !llvm.loop !116

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i11, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i11

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i11: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i12 = phi ptr [ %i.bu, %bb.g ], [ null, %bb.f ]
  %i.bv = zext i32 %0 to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i12, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32 ; 2 uses
  %.not.i.i13 = icmp eq i32 %1, 0
  br i1 %.not.i.i13, label %_ZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.lr.ph.i.i

_ZNK5arrow7compute12RowTableImpl4dataEi.exit.lr.ph.i.i: ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i11
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = sext i32 %2 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 40
  %wide.trip.count.i.i14 = zext i32 %1 to i64
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i

_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i: ; preds = %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.lr.ph.i.i
  %indvars.iv.i.i15 = phi i64 [ 0, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.lr.ph.i.i ], [ %indvars.iv.next.i.i17, %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i ] ; 2 uses
  %.030.i.i16 = phi i32 [ %i.bz, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.lr.ph.i.i ], [ %i.cg, %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i ]
  %indvars.iv.next.i.i17 = add nuw nsw i64 %indvars.iv.i.i15, 1 ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i.i17
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i.i15
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !24 ; 3 uses
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !57, !nonnull !29, !noundef !29 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !67, !range !28, !noundef !29
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = select i1 %i.cm, ptr %i.co, ptr null, !prof !78
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.ci
  %i.cs = load i32, ptr %i.cb, align 8, !tbaa !63
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.cc ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3  ; 2 uses
  %i.cy = load i32, ptr %i.cd, align 4, !tbaa !62
  %i.cz = sub nsw i32 0, %i.cx
  %i.da = add nsw i32 %i.cy, -1
  %i.db = and i32 %i.da, %i.cz
  %i.dc = add i32 %i.db, %i.cx                    ; 3 uses
  %i.dd = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  %i.de = sub i32 %i.dd, %i.dc
  %i.df = zext i32 %i.dc to i64                   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.co, i64 %i.ci
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.df  ; 2 uses
  %i.di = load ptr, ptr %i.ce, align 8, !tbaa !32 ; 2 uses
  %i.dj = ptrtoaddr ptr %i.di to i64
  %i.dk = zext i32 %.030.i.i16 to i64             ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 2 uses
  %i.dm = zext i32 %i.de to i64
  %i.dn = add nsw i64 %i.dm, -1
  %i.do = sdiv i64 %i.dn, 8                       ; 3 uses
  %i.dp = icmp eq i32 %i.dd, %i.dc
  br i1 %i.dp, label %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, label %.lr.ph.split.i.i.i18.preheader

.lr.ph.split.i.i.i18.preheader:                   ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i
  %i.dq = add nsw i64 %i.do, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.dq, 20
  br i1 %min.iters.check, label %.lr.ph.split.i.i.i18.preheader51, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.i.i.i18.preheader
  %i.dr = add nsw i64 %i.do, 1
  %i.ds = tail call i64 @llvm.usub.sat.i64(i64 %i.dr, i64 1) ; 2 uses
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = icmp eq i64 %i.dt, 4294967295
  %i.dv = icmp ugt i64 %i.ds, 4294967295
  %i.dw = or i1 %i.du, %i.dv
  br i1 %i.dw, label %.lr.ph.split.i.i.i18.preheader51, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dx = add i64 %i.dj, %i.dk
  %i.dy = add i64 %i.ci, %i.cp
  %i.dz = add i64 %i.dy, %i.df
  %i.ea = sub i64 %i.dz, %i.dx
  %diff.check = icmp ugt i64 %i.ea, -32
  br i1 %diff.check, label %.lr.ph.split.i.i.i18.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dq, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load = load <2 x i64>, ptr %i.ec, align 8, !tbaa !24
  %wide.load29 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x i64> %wide.load, ptr %i.eb, align 1
  store <2 x i64> %wide.load29, ptr %i.ee, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, label %.lr.ph.split.i.i.i18.preheader51

.lr.ph.split.i.i.i18.preheader51:                 ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.i.i.i18.preheader, %middle.block
  %.ph52 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i.i18.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.i.i.i18

.lr.ph.split.i.i.i18:                             ; preds = %.lr.ph.split.i.i.i18.preheader51, %.lr.ph.split.i.i.i18
  %i.eg = phi i64 [ %indvars.iv.next.i.i.i20, %.lr.ph.split.i.i.i18 ], [ %.ph52, %.lr.ph.split.i.i.i18.preheader51 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.eg
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !24
  store i64 %i.ej, ptr %i.eh, align 1
  %indvars.iv.next.i.i.i20 = add i64 %i.eg, 1     ; 2 uses
  %7 = and i64 %indvars.iv.next.i.i.i20, 4294967295
  %.not.i27.i.i = icmp samesign ult i64 %i.do, %7
  br i1 %.not.i27.i.i, label %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, label %.lr.ph.split.i.i.i18, !llvm.loop !118

_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i: ; preds = %.lr.ph.split.i.i.i18, %middle.block, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i
  %exitcond.not.i.i20 = icmp eq i64 %indvars.iv.next.i.i17, %wide.trip.count.i.i14
  br i1 %exitcond.not.i.i20, label %_ZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i.i, !llvm.loop !119

_ZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit: ; preds = %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, %_ZZN5arrow7compute16EncoderVarBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.i.i, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i11, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute15RowTableEncoder21PrepareEncodeSelectedEllRKSt6vectorINS0_14KeyColumnArrayESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute15RowTableEncoder22PrepareKeyColumnArraysEllRKSt6vectorINS0_14KeyColumnArrayESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute15RowTableEncoder14EncodeSelectedEPNS0_12RowTableImplEjPKt(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, ptr noundef nonnull %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @_ZN5arrow7compute12RowTableImpl5CleanEv(ptr noundef nonnull align 8 dereferenceable(209) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN5arrow7compute12RowTableImpl11AppendEmptyEjl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %2, i32 noundef %3, i64 noundef 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.a = load ptr, ptr %5, align 8, !tbaa !123, !noalias !120 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !123, !alias.scope !120
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit46, label %bb.j

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  call void @_ZN5arrow7compute14EncoderOffsets21GetRowOffsetsSelectedEPNS0_12RowTableImplERKSt6vectorINS0_14KeyColumnArrayESaIS5_EEjPKt(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %3, ptr noundef %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.d = load ptr, ptr %6, align 8, !tbaa !123, !noalias !126 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !123, !alias.scope !126
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit50, label %bb.j

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN5arrow7compute12RowTableImpl11AppendEmptyEjl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(209) %2, i32 noundef 0, i64 noundef 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.f = load ptr, ptr %7, align 8, !tbaa !123, !noalias !129 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !123, !alias.scope !129
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.preheader, label %bb.j

.preheader:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.a

._crit_edge:                                      ; preds = %bb.c, %.preheader
  call void @_ZN5arrow7compute14EncoderOffsets14EncodeSelectedEPNS0_12RowTableImplERKSt6vectorINS0_14KeyColumnArrayESaIS5_EEjPKt(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %3, ptr noundef %4)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not65 = icmp eq ptr %i.n, %i.o
  br i1 %.not65, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 168
  %.not43.i = icmp eq i32 %3, 0                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 28
  %wide.trip.count.i54 = zext i32 %3 to i64       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i54, 1
  %i.u = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count.i54, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod82 = trunc i32 %3 to i1
  br label %bb.f

bb.a:                                             ; preds = %.lr.ph, %bb.c
  %i.v = phi ptr [ %i.k, %.lr.ph ], [ %i.ae, %bb.c ] ; 2 uses
  %i.w = phi ptr [ %i.j, %.lr.ph ], [ %i.af, %bb.c ]
  %.03760 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %.03760 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i8, ptr %i.y, align 4, !tbaa !26, !range !28, !noundef !29
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.03760
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  call void @_ZN5arrow7compute13EncoderBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt(i32 noundef %i.ad, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i32 noundef %3, ptr noundef %4)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !12
  %.pre67 = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ae = phi ptr [ %i.v, %bb.a ], [ %.pre67, %bb.b ] ; 2 uses
  %i.af = phi ptr [ %i.w, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.ag = add nuw i64 %.03760, 1                  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 72
  %i.al = icmp ult i64 %i.ag, %i.ak
  br i1 %i.al, label %bb.a, label %._crit_edge, !llvm.loop !132

._crit_edge64:                                    ; preds = %_ZN5arrow7compute16EncoderVarBinary14EncodeSelectedEjPNS0_12RowTableImplERKNS0_14KeyColumnArrayEjPKt.exit, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 9
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !67, !range !28, !noundef !29
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !range !28
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = select i1 %i.aq, i1 %i.at, i1 false, !prof !78
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = select i1 %i.au, ptr %i.aw, ptr null, !prof !78 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !110 ; 2 uses
  %i.ba = mul i32 %i.az, %3
  %i.bb = zext i32 %i.ba to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 0, i64 %i.bb, i1 false)
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !12  ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %.not.i53 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i53, label %_ZN5arrow7compute12EncoderNulls14EncodeSelectedEPNS0_12RowTableImplERKSt6vectorINS0_14KeyColumnArrayESaIS5_EEjPKt.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %._crit_edge64
  %.not30.i = icmp eq i32 %3, 0
  %i.be = shl i32 %i.az, 3
  br i1 %.not30.i, label %_ZN5arrow7compute12EncoderNulls14EncodeSelectedEPNS0_12RowTableImplERKSt6vectorINS0_14KeyColumnArrayESaIS5_EEjPKt.exit, label %.lr.ph29.split.us.preheader.i

.lr.ph29.split.us.preheader.i:                    ; preds = %.lr.ph29.i
  %wide.trip.count.i = zext i32 %3 to i64
  br label %.lr.ph29.split.us.i

.lr.ph29.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph29.split.us.preheader.i
  %i.bf = phi ptr [ %i.ck, %..loopexit_crit_edge.us.i ], [ %i.bd, %.lr.ph29.split.us.preheader.i ] ; 2 uses
  %i.bg = phi ptr [ %i.cl, %..loopexit_crit_edge.us.i ], [ %i.bc, %.lr.ph29.split.us.preheader.i ]
  %.027.us.i = phi i64 [ %i.cm, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph29.split.us.preheader.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [72 x i8], ptr %i.bf, i64 %.027.us.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32 ; 2 uses
  %.not.us.i = icmp eq ptr %i.bi, null
  br i1 %.not.us.i, label %..loopexit_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.lr.ph29.split.us.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.lr.ph29.split.us.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !133
  %i.bl = zext i16 %i.bk to i32
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.bm, i64 %.027.us.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = add i32 %i.bp, %i.bl                    ; 2 uses
  %i.br = lshr i32 %i.bq, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.bv = trunc i32 %i.bq to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.us.i
  %i.bz = trunc nuw i64 %indvars.iv.i to i32
  %i.ca = mul i32 %i.be, %i.bz
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add i64 %.027.us.i, %i.cb               ; 2 uses
  %i.cd = srem i64 %i.cc, 8
  %i.ce = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  %i.cg = sdiv i64 %i.cc, 8
  %i.ch = getelementptr inbounds i8, ptr %i.ax, i64 %i.cg ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !21
  %i.cj = or i8 %i.ci, %i.cf
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.loopexit.i, label %.preheader.us.i, !llvm.loop !135

end_hunk_1
