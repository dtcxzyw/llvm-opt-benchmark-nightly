Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsp?download=true
inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 307
begin_hunk_0_@intra_pred_12:bb.a
  %i.aac = zext <8 x i16> %wide.load678 to <8 x i32>
  %i.aad = shl nuw <8 x i32> %vec.ind676, splat (i32 1)
  %i.aae = ashr <8 x i32> %i.aad, %broadcast.splat673
  %i.aaf = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aae, <8 x i32> splat (i32 31))
  %i.aag = lshr <8 x i32> splat (i32 32), %i.aaf
  %predphi679 = select i1 %i.zj, <8 x i32> %i.aag, <8 x i32> zeroinitializer
  %i.aah = mul nsw <8 x i32> %i.zy, %predphi679
  %i.aai = sub nsw <8 x i32> %i.aac, %i.zx
  %i.aaj = mul nsw <8 x i32> %i.aai, %predphi
  %i.aak = add nsw <8 x i32> %i.aaj, splat (i32 32)
  %i.aal = add nsw <8 x i32> %i.aak, %i.aah
  %i.aam = ashr <8 x i32> %i.aal, splat (i32 6)
  %i.aan = add nsw <8 x i32> %i.aam, %i.aaa
  %i.aao = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aan, <8 x i32> zeroinitializer)
  %i.aap = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aao, <8 x i32> splat (i32 4095))
  %i.aaq = trunc nuw nsw <8 x i32> %i.aap to <8 x i16>
  store <8 x i16> %i.aaq, ptr %i.zz, align 2, !tbaa !45, !alias.scope !696, !noalias !698
  %index.next680 = add nuw i64 %index675, 8       ; 2 uses
  %vec.ind.next681 = add <8 x i32> %vec.ind676, splat (i32 8)
  %i.aar = icmp eq i64 %index.next680, %n.vec661
  br i1 %i.aar, label %middle.block682, label %vector.body674, !llvm.loop !701

middle.block682:                                  ; preds = %vector.body674
  br i1 %cmp.n683, label %._crit_edge253, label %.lr.ph252.split.preheader691

.lr.ph252.split.preheader691:                     ; preds = %.lr.ph252.split.preheader, %middle.block682
  %indvars.iv314.ph = phi i64 [ %n.vec661, %middle.block682 ], [ 0, %.lr.ph252.split.preheader ]
  br label %.lr.ph252.split

.lr.ph252.split.us.preheader:                     ; preds = %.preheader
  %brmerge718 = select i1 %min.iters.check618, i1 true, i1 %conflict.rdx616
  br i1 %brmerge718, label %.lr.ph252.split.us.preheader690, label %vector.ph619

vector.ph619:                                     ; preds = %.lr.ph252.split.us.preheader
  %i.aas = load i16, ptr %i.zl, align 2, !tbaa !45, !alias.scope !702
  %broadcast.splatinsert621 = insertelement <8 x i16> poison, i16 %i.aas, i64 0
  %broadcast.splat622 = shufflevector <8 x i16> %broadcast.splatinsert621, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aat = zext <8 x i16> %broadcast.splat622 to <8 x i32>
  %broadcast.splatinsert625 = insertelement <8 x i32> poison, i32 %i.zr, i64 0
  %broadcast.splat626 = shufflevector <8 x i32> %broadcast.splatinsert625, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph619
  %index628 = phi i64 [ 0, %vector.ph619 ], [ %index.next631, %vector.body627 ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph619 ], [ %vec.ind.next, %vector.body627 ] ; 2 uses
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %index628
  %wide.load629 = load <8 x i16>, ptr %i.aau, align 2, !tbaa !45, !alias.scope !705
  %i.aav = zext <8 x i16> %wide.load629 to <8 x i32>
  %i.aaw = shl nuw <8 x i32> %vec.ind, splat (i32 1)
  %i.aax = ashr <8 x i32> %i.aaw, %broadcast.splat624
  %i.aay = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aax, <8 x i32> splat (i32 31))
  %i.aaz = lshr <8 x i32> splat (i32 32), %i.aay
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %index628 ; 2 uses
  %wide.load630 = load <8 x i16>, ptr %i.aba, align 2, !tbaa !45, !alias.scope !707, !noalias !709
  %i.abb = zext <8 x i16> %wide.load630 to <8 x i32> ; 3 uses
  %i.abc = sub nsw <8 x i32> %i.aat, %i.abb
  %i.abd = mul nsw <8 x i32> %i.abc, %i.aaz
  %i.abe = sub nsw <8 x i32> %i.aav, %i.abb
  %i.abf = mul nsw <8 x i32> %i.abe, %broadcast.splat626
  %i.abg = add nsw <8 x i32> %i.abf, splat (i32 32)
  %i.abh = add nsw <8 x i32> %i.abg, %i.abd
  %i.abi = ashr <8 x i32> %i.abh, splat (i32 6)
  %i.abj = add nsw <8 x i32> %i.abi, %i.abb
  %i.abk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.abj, <8 x i32> zeroinitializer)
  %i.abl = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.abk, <8 x i32> splat (i32 4095))
  %i.abm = trunc nuw nsw <8 x i32> %i.abl to <8 x i16>
  store <8 x i16> %i.abm, ptr %i.aba, align 2, !tbaa !45, !alias.scope !707, !noalias !709
  %index.next631 = add nuw i64 %index628, 8       ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.abn = icmp eq i64 %index.next631, %n.vec620
  br i1 %i.abn, label %middle.block632, label %vector.body627, !llvm.loop !710

middle.block632:                                  ; preds = %vector.body627
  br i1 %cmp.n633, label %._crit_edge253, label %.lr.ph252.split.us.preheader690

.lr.ph252.split.us.preheader690:                  ; preds = %.lr.ph252.split.us.preheader, %middle.block632
  %indvars.iv319.ph = phi i64 [ %n.vec620, %middle.block632 ], [ 0, %.lr.ph252.split.us.preheader ]
  br label %.lr.ph252.split.us

.lr.ph252.split.us:                               ; preds = %.lr.ph252.split.us.preheader690, %.lr.ph252.split.us
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %.lr.ph252.split.us ], [ %indvars.iv319.ph, %.lr.ph252.split.us.preheader690 ] ; 4 uses
  %i.abo = load i16, ptr %i.zl, align 2, !tbaa !45
  %i.abp = zext i16 %i.abo to i32
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv319
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !45
  %i.abs = zext i16 %i.abr to i32
  %indvars.iv319.tr = trunc nuw i64 %indvars.iv319 to i32
  %i.abt = shl nuw i32 %indvars.iv319.tr, 1
  %i.abu = ashr i32 %i.abt, %i.yi
  %i.abv = call i32 @llvm.smin.i32(i32 %i.abu, i32 31)
  %i.abw = lshr i32 32, %i.abv
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv319 ; 2 uses
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !45
  %i.abz = zext i16 %i.aby to i32                 ; 3 uses
  %i.aca = sub nsw i32 %i.abp, %i.abz
  %i.acb = mul nsw i32 %i.aca, %i.abw
  %i.acc = sub nsw i32 %i.abs, %i.abz
  %i.acd = mul nsw i32 %i.acc, %i.zr
  %i.ace = add nsw i32 %i.acd, 32
  %i.acf = add nsw i32 %i.ace, %i.acb
  %i.acg = ashr i32 %i.acf, 6
  %i.ach = add nsw i32 %i.acg, %i.abz
  %i.aci = call i32 @llvm.smax.i32(i32 %i.ach, i32 0)
  %i.acj = call i32 @llvm.umin.i32(i32 %i.aci, i32 4095)
  %i.ack = trunc nuw nsw i32 %i.acj to i16
  store i16 %i.ack, ptr %i.abx, align 2, !tbaa !45
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge253, label %.lr.ph252.split.us, !llvm.loop !711

._crit_edge253:                                   ; preds = %bb.as, %.lr.ph252.split.us, %middle.block682, %middle.block632
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.loopexit, label %.preheader, !llvm.loop !712

.lr.ph252.split:                                  ; preds = %.lr.ph252.split.preheader691, %bb.as
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %bb.as ], [ %indvars.iv314.ph, %.lr.ph252.split.preheader691 ] ; 4 uses
  %i.acl = load i16, ptr %i.zl, align 2, !tbaa !45
  %i.acm = zext i16 %i.acl to i32
  %i.acn = load i16, ptr %i.yn, align 2, !tbaa !45
  %i.aco = zext i16 %i.acn to i32
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv314 ; 2 uses
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !45
  %i.acr = zext i16 %i.acq to i32
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv314
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !45
  %i.acu = zext i16 %i.act to i32
  %i.acv = load i16, ptr %i.yo, align 2, !tbaa !45
  %i.acw = zext i16 %i.acv to i32
  switch i32 %i.al, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph252.split
  %indvars.iv314.tr = trunc nuw i64 %indvars.iv314 to i32
  %i.acx = shl nuw i32 %indvars.iv314.tr, 1
  %i.acy = ashr i32 %i.acx, %i.yi
  %i.acz = call i32 @llvm.smin.i32(i32 %i.acy, i32 31)
  %i.ada = lshr i32 32, %i.acz
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph252.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph252.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.ada, %.thread213 ], [ 0, %.lr.ph252.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph252.split ], [ %i.zr, %bb.ar ]
  %i.adb = sub nsw i32 %i.acm, %i.aco
  %i.adc = mul nsw i32 %i.adb, %.0190
  %i.add = sub nsw i32 %i.acu, %i.acw
  %i.ade = mul nsw i32 %i.add, %.0
  %i.adf = add nsw i32 %i.ade, 32
  %i.adg = add nsw i32 %i.adf, %i.adc
  %i.adh = ashr i32 %i.adg, 6
  %i.adi = add nsw i32 %i.adh, %i.acr
  %i.adj = call i32 @llvm.smax.i32(i32 %i.adi, i32 0)
  %i.adk = call i32 @llvm.umin.i32(i32 %i.adj, i32 4095)
  %i.adl = trunc nuw nsw i32 %i.adk to i16
  store i16 %i.adl, ptr %i.acp, align 2, !tbaa !45
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge253, label %.lr.ph252.split, !llvm.loop !713

.loopexit:                                        ; preds = %._crit_edge253, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !62
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 3 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 3 uses
  %i.q = mul nuw nsw i32 %4, %3                   ; 2 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr [2 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.x ; 3 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %i.z = add nuw i64 %i.v, 9223372036854775807
  %i.aa = mul i64 %5, %i.z
  %i.ab = shl nuw nsw i64 %wide.trip.count, 1
  %i.ac = add i64 %i.aa, %wide.trip.count
  %i.ad = shl i64 %i.ac, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.ad  ; 4 uses
  %i.ae = shl nuw nsw i64 %i.x, 1
  %i.af = getelementptr i8, ptr %1, i64 %i.ae
  %scevgep58 = getelementptr i8, ptr %i.af, i64 2
  %scevgep59 = getelementptr i8, ptr %1, i64 %i.ab
  %i.ag = shl nuw nsw i64 %i.v, 1
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep60 = getelementptr i8, ptr %i.ah, i64 2
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %0, %scevgep59
  %bound162 = icmp ult ptr %1, %scevgep
  %found.conflict63 = and i1 %bound061, %bound162
  %.mask = and i64 %5, 4611686018427387904
  %stride.check64 = icmp ne i64 %.mask, 0
  %i.ai = or i1 %found.conflict63, %stride.check64
  %conflict.rdx = or i1 %found.conflict, %i.ai
  %bound065 = icmp ult ptr %0, %i.w
  %bound166 = icmp ult ptr %2, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx69 = or i1 %found.conflict67, %conflict.rdx
  %bound070 = icmp ult ptr %0, %scevgep60
  %bound171 = icmp ult ptr %i.w, %scevgep
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx74 = or i1 %found.conflict72, %conflict.rdx69
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert83 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat84 = shufflevector <8 x i32> %broadcast.splatinsert83, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat86 = shufflevector <8 x i32> %broadcast.splatinsert85, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert87 = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat88 = shufflevector <8 x i32> %broadcast.splatinsert87, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat90 = shufflevector <8 x i32> %broadcast.splatinsert89, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat92 = shufflevector <8 x i32> %broadcast.splatinsert91, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = add nsw i32 %4, %i.ak                   ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv52 ; 2 uses
  %i.an = mul nsw i64 %5, %indvars.iv52
  %i.ao = getelementptr [2 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx74
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aq = load i16, ptr %i.w, align 2, !tbaa !45, !alias.scope !714
  %broadcast.splatinsert75 = insertelement <8 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat76 = shufflevector <8 x i16> %broadcast.splatinsert75, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ar = zext <8 x i16> %broadcast.splat76 to <8 x i32>
  %i.as = mul nuw nsw <8 x i32> %broadcast.splat, %i.ar
  %i.at = load i16, ptr %i.am, align 2, !tbaa !45, !alias.scope !717
  %broadcast.splatinsert77 = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat78 = shufflevector <8 x i16> %broadcast.splatinsert77, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.au = zext <8 x i16> %broadcast.splat78 to <8 x i32>
  %i.av = load i16, ptr %i.y, align 2, !tbaa !45, !alias.scope !719
  %broadcast.splatinsert79 = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %broadcast.splat80 = shufflevector <8 x i16> %broadcast.splatinsert79, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aw = zext <8 x i16> %broadcast.splat80 to <8 x i32>
  %broadcast.splatinsert81 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind93 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next94, %vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ax, align 2, !tbaa !45, !alias.scope !721
  %i.ay = zext <8 x i16> %wide.load to <8 x i32>
  %i.az = mul nsw <8 x i32> %broadcast.splat82, %i.ay
  %i.ba = add nsw <8 x i32> %i.as, %i.az
  %i.bb = shl <8 x i32> %i.ba, %broadcast.splat84
  %i.bc = xor <8 x i32> %vec.ind93, splat (i32 -1)
  %i.bd = add nsw <8 x i32> %broadcast.splat86, %i.bc
  %i.be = mul nsw <8 x i32> %i.bd, %i.au
  %i.bf = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.bg = add <8 x i32> %i.bf, splat (i32 1)
  %i.bh = mul nuw nsw <8 x i32> %i.bg, %i.aw
  %i.bi = add nsw <8 x i32> %i.bh, %i.be
  %i.bj = shl <8 x i32> %i.bi, %broadcast.splat88
  %i.bk = add <8 x i32> %i.bb, %broadcast.splat90
  %i.bl = add <8 x i32> %i.bk, %i.bj
  %i.bm = ashr <8 x i32> %i.bl, %broadcast.splat92
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  %i.bo = getelementptr [2 x i8], ptr %i.ao, i64 %index
  store <8 x i16> %i.bn, ptr %i.bo, align 2, !tbaa !45, !alias.scope !723, !noalias !725
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next94 = add <8 x i32> %vec.ind93, splat (i32 8)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !726

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !45
  %i.bs = zext i16 %i.br to i32
  %i.bt = mul nsw i32 %i.al, %i.bs
  %i.bu = load i16, ptr %i.w, align 2, !tbaa !45
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.ap, %i.bv
  %i.bx = add nsw i32 %i.bw, %i.bt
  %i.by = shl i32 %i.bx, %i.h
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ca = xor i32 %i.bz, -1
  %i.cb = add nsw i32 %3, %i.ca
  %i.cc = load i16, ptr %i.am, align 2, !tbaa !45
  %i.cd = zext i16 %i.cc to i32
  %i.ce = mul nsw i32 %i.cb, %i.cd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cf = load i16, ptr %i.y, align 2, !tbaa !45
  %i.cg = zext i16 %i.cf to i32
  %i.ch = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ci = mul nuw nsw i32 %i.ch, %i.cg
  %i.cj = add nsw i32 %i.ci, %i.ce
  %i.ck = shl i32 %i.cj, %i.p
  %i.cl = add i32 %i.by, %i.q
  %i.cm = add i32 %i.cl, %i.ck
  %i.cn = ashr i32 %i.cm, %i.s
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr [2 x i8], ptr %i.ao, i64 %indvars.iv
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !45
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !727

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %i.v
  br i1 %exitcond56.not, label %._crit_edge50.split, label %.preheader, !llvm.loop !728

._crit_edge50.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @pred_mip_12(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #7 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 15 uses
  %i.b = tail call i32 @ff_vvc_get_mip_size_id(i32 noundef %3, i32 noundef %4) #14 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @pred_mip_8.boundary_sizes, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !555  ; 10 uses
  %i.f = getelementptr inbounds [4 x i8], ptr @pred_mip_8.pred_sizes, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !555  ; 5 uses
  %i.h = shl i32 %i.e, 1
  %i.i = icmp eq i32 %i.b, 2                      ; 3 uses
  %.neg = sext i1 %i.i to i32
  %i.j = add i32 %i.h, %.neg                      ; 9 uses
  %i.k = tail call ptr @ff_vvc_get_mip_matrix(i32 noundef %i.b, i32 noundef %6) #14
  %i.l = sdiv i32 %3, %i.g                        ; 11 uses
  %i.m = sdiv i32 %4, %i.g                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = sext i32 %i.e to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr %i.o ; 4 uses
  %spec.select81 = select i1 %.not, ptr %i.o, ptr %i.a ; 4 uses
  %i.p = sdiv i32 %3, %i.e                        ; 8 uses
  %.not.i.i82 = icmp ult i32 %i.p, 65536          ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %spec.select.i.i83 = select i1 %.not.i.i82, i32 %i.p, i32 %i.q ; 3 uses
  %spec.select12.i.i84 = select i1 %.not.i.i82, i32 0, i32 16 ; 2 uses
end_hunk_0
begin_hunk_1_@intra_pred_10:bb.a
  %i.aac = zext <8 x i16> %wide.load678 to <8 x i32>
  %i.aad = shl nuw <8 x i32> %vec.ind676, splat (i32 1)
  %i.aae = ashr <8 x i32> %i.aad, %broadcast.splat673
  %i.aaf = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aae, <8 x i32> splat (i32 31))
  %i.aag = lshr <8 x i32> splat (i32 32), %i.aaf
  %predphi679 = select i1 %i.zj, <8 x i32> %i.aag, <8 x i32> zeroinitializer
  %i.aah = mul nsw <8 x i32> %i.zy, %predphi679
  %i.aai = sub nsw <8 x i32> %i.aac, %i.zx
  %i.aaj = mul nsw <8 x i32> %i.aai, %predphi
  %i.aak = add nsw <8 x i32> %i.aaj, splat (i32 32)
  %i.aal = add nsw <8 x i32> %i.aak, %i.aah
  %i.aam = ashr <8 x i32> %i.aal, splat (i32 6)
  %i.aan = add nsw <8 x i32> %i.aam, %i.aaa
  %i.aao = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aan, <8 x i32> zeroinitializer)
  %i.aap = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aao, <8 x i32> splat (i32 1023))
  %i.aaq = trunc nuw nsw <8 x i32> %i.aap to <8 x i16>
  store <8 x i16> %i.aaq, ptr %i.zz, align 2, !tbaa !45, !alias.scope !1379, !noalias !1381
  %index.next680 = add nuw i64 %index675, 8       ; 2 uses
  %vec.ind.next681 = add <8 x i32> %vec.ind676, splat (i32 8)
  %i.aar = icmp eq i64 %index.next680, %n.vec661
  br i1 %i.aar, label %middle.block682, label %vector.body674, !llvm.loop !1384

middle.block682:                                  ; preds = %vector.body674
  br i1 %cmp.n683, label %._crit_edge253, label %.lr.ph252.split.preheader691

.lr.ph252.split.preheader691:                     ; preds = %.lr.ph252.split.preheader, %middle.block682
  %indvars.iv314.ph = phi i64 [ %n.vec661, %middle.block682 ], [ 0, %.lr.ph252.split.preheader ]
  br label %.lr.ph252.split

.lr.ph252.split.us.preheader:                     ; preds = %.preheader
  %brmerge718 = select i1 %min.iters.check618, i1 true, i1 %conflict.rdx616
  br i1 %brmerge718, label %.lr.ph252.split.us.preheader690, label %vector.ph619

vector.ph619:                                     ; preds = %.lr.ph252.split.us.preheader
  %i.aas = load i16, ptr %i.zl, align 2, !tbaa !45, !alias.scope !1385
  %broadcast.splatinsert621 = insertelement <8 x i16> poison, i16 %i.aas, i64 0
  %broadcast.splat622 = shufflevector <8 x i16> %broadcast.splatinsert621, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aat = zext <8 x i16> %broadcast.splat622 to <8 x i32>
  %broadcast.splatinsert625 = insertelement <8 x i32> poison, i32 %i.zr, i64 0
  %broadcast.splat626 = shufflevector <8 x i32> %broadcast.splatinsert625, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph619
  %index628 = phi i64 [ 0, %vector.ph619 ], [ %index.next631, %vector.body627 ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph619 ], [ %vec.ind.next, %vector.body627 ] ; 2 uses
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %index628
  %wide.load629 = load <8 x i16>, ptr %i.aau, align 2, !tbaa !45, !alias.scope !1388
  %i.aav = zext <8 x i16> %wide.load629 to <8 x i32>
  %i.aaw = shl nuw <8 x i32> %vec.ind, splat (i32 1)
  %i.aax = ashr <8 x i32> %i.aaw, %broadcast.splat624
  %i.aay = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aax, <8 x i32> splat (i32 31))
  %i.aaz = lshr <8 x i32> splat (i32 32), %i.aay
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %index628 ; 2 uses
  %wide.load630 = load <8 x i16>, ptr %i.aba, align 2, !tbaa !45, !alias.scope !1390, !noalias !1392
  %i.abb = zext <8 x i16> %wide.load630 to <8 x i32> ; 3 uses
  %i.abc = sub nsw <8 x i32> %i.aat, %i.abb
  %i.abd = mul nsw <8 x i32> %i.abc, %i.aaz
  %i.abe = sub nsw <8 x i32> %i.aav, %i.abb
  %i.abf = mul nsw <8 x i32> %i.abe, %broadcast.splat626
  %i.abg = add nsw <8 x i32> %i.abf, splat (i32 32)
  %i.abh = add nsw <8 x i32> %i.abg, %i.abd
  %i.abi = ashr <8 x i32> %i.abh, splat (i32 6)
  %i.abj = add nsw <8 x i32> %i.abi, %i.abb
  %i.abk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.abj, <8 x i32> zeroinitializer)
  %i.abl = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.abk, <8 x i32> splat (i32 1023))
  %i.abm = trunc nuw nsw <8 x i32> %i.abl to <8 x i16>
  store <8 x i16> %i.abm, ptr %i.aba, align 2, !tbaa !45, !alias.scope !1390, !noalias !1392
  %index.next631 = add nuw i64 %index628, 8       ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.abn = icmp eq i64 %index.next631, %n.vec620
  br i1 %i.abn, label %middle.block632, label %vector.body627, !llvm.loop !1393

middle.block632:                                  ; preds = %vector.body627
  br i1 %cmp.n633, label %._crit_edge253, label %.lr.ph252.split.us.preheader690

.lr.ph252.split.us.preheader690:                  ; preds = %.lr.ph252.split.us.preheader, %middle.block632
  %indvars.iv319.ph = phi i64 [ %n.vec620, %middle.block632 ], [ 0, %.lr.ph252.split.us.preheader ]
  br label %.lr.ph252.split.us

.lr.ph252.split.us:                               ; preds = %.lr.ph252.split.us.preheader690, %.lr.ph252.split.us
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %.lr.ph252.split.us ], [ %indvars.iv319.ph, %.lr.ph252.split.us.preheader690 ] ; 4 uses
  %i.abo = load i16, ptr %i.zl, align 2, !tbaa !45
  %i.abp = zext i16 %i.abo to i32
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv319
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !45
  %i.abs = zext i16 %i.abr to i32
  %indvars.iv319.tr = trunc nuw i64 %indvars.iv319 to i32
  %i.abt = shl nuw i32 %indvars.iv319.tr, 1
  %i.abu = ashr i32 %i.abt, %i.yi
  %i.abv = call i32 @llvm.smin.i32(i32 %i.abu, i32 31)
  %i.abw = lshr i32 32, %i.abv
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv319 ; 2 uses
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !45
  %i.abz = zext i16 %i.aby to i32                 ; 3 uses
  %i.aca = sub nsw i32 %i.abp, %i.abz
  %i.acb = mul nsw i32 %i.aca, %i.abw
  %i.acc = sub nsw i32 %i.abs, %i.abz
  %i.acd = mul nsw i32 %i.acc, %i.zr
  %i.ace = add nsw i32 %i.acd, 32
  %i.acf = add nsw i32 %i.ace, %i.acb
  %i.acg = ashr i32 %i.acf, 6
  %i.ach = add nsw i32 %i.acg, %i.abz
  %i.aci = call i32 @llvm.smax.i32(i32 %i.ach, i32 0)
  %i.acj = call i32 @llvm.umin.i32(i32 %i.aci, i32 1023)
  %i.ack = trunc nuw nsw i32 %i.acj to i16
  store i16 %i.ack, ptr %i.abx, align 2, !tbaa !45
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge253, label %.lr.ph252.split.us, !llvm.loop !1394

._crit_edge253:                                   ; preds = %bb.as, %.lr.ph252.split.us, %middle.block682, %middle.block632
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.loopexit, label %.preheader, !llvm.loop !1395

.lr.ph252.split:                                  ; preds = %.lr.ph252.split.preheader691, %bb.as
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %bb.as ], [ %indvars.iv314.ph, %.lr.ph252.split.preheader691 ] ; 4 uses
  %i.acl = load i16, ptr %i.zl, align 2, !tbaa !45
  %i.acm = zext i16 %i.acl to i32
  %i.acn = load i16, ptr %i.yn, align 2, !tbaa !45
  %i.aco = zext i16 %i.acn to i32
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv314 ; 2 uses
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !45
  %i.acr = zext i16 %i.acq to i32
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv314
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !45
  %i.acu = zext i16 %i.act to i32
  %i.acv = load i16, ptr %i.yo, align 2, !tbaa !45
  %i.acw = zext i16 %i.acv to i32
  switch i32 %i.al, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph252.split
  %indvars.iv314.tr = trunc nuw i64 %indvars.iv314 to i32
  %i.acx = shl nuw i32 %indvars.iv314.tr, 1
  %i.acy = ashr i32 %i.acx, %i.yi
  %i.acz = call i32 @llvm.smin.i32(i32 %i.acy, i32 31)
  %i.ada = lshr i32 32, %i.acz
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph252.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph252.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.ada, %.thread213 ], [ 0, %.lr.ph252.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph252.split ], [ %i.zr, %bb.ar ]
  %i.adb = sub nsw i32 %i.acm, %i.aco
  %i.adc = mul nsw i32 %i.adb, %.0190
  %i.add = sub nsw i32 %i.acu, %i.acw
  %i.ade = mul nsw i32 %i.add, %.0
  %i.adf = add nsw i32 %i.ade, 32
  %i.adg = add nsw i32 %i.adf, %i.adc
  %i.adh = ashr i32 %i.adg, 6
  %i.adi = add nsw i32 %i.adh, %i.acr
  %i.adj = call i32 @llvm.smax.i32(i32 %i.adi, i32 0)
  %i.adk = call i32 @llvm.umin.i32(i32 %i.adj, i32 1023)
  %i.adl = trunc nuw nsw i32 %i.adk to i16
  store i16 %i.adl, ptr %i.acp, align 2, !tbaa !45
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge253, label %.lr.ph252.split, !llvm.loop !1396

.loopexit:                                        ; preds = %._crit_edge253, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !62
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 3 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 3 uses
  %i.q = mul nuw nsw i32 %4, %3                   ; 2 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr [2 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.x ; 3 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %i.z = add nuw i64 %i.v, 9223372036854775807
  %i.aa = mul i64 %5, %i.z
  %i.ab = shl nuw nsw i64 %wide.trip.count, 1
  %i.ac = add i64 %i.aa, %wide.trip.count
  %i.ad = shl i64 %i.ac, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.ad  ; 4 uses
  %i.ae = shl nuw nsw i64 %i.x, 1
  %i.af = getelementptr i8, ptr %1, i64 %i.ae
  %scevgep58 = getelementptr i8, ptr %i.af, i64 2
  %scevgep59 = getelementptr i8, ptr %1, i64 %i.ab
  %i.ag = shl nuw nsw i64 %i.v, 1
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep60 = getelementptr i8, ptr %i.ah, i64 2
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %0, %scevgep59
  %bound162 = icmp ult ptr %1, %scevgep
  %found.conflict63 = and i1 %bound061, %bound162
  %.mask = and i64 %5, 4611686018427387904
  %stride.check64 = icmp ne i64 %.mask, 0
  %i.ai = or i1 %found.conflict63, %stride.check64
  %conflict.rdx = or i1 %found.conflict, %i.ai
  %bound065 = icmp ult ptr %0, %i.w
  %bound166 = icmp ult ptr %2, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx69 = or i1 %found.conflict67, %conflict.rdx
  %bound070 = icmp ult ptr %0, %scevgep60
  %bound171 = icmp ult ptr %i.w, %scevgep
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx74 = or i1 %found.conflict72, %conflict.rdx69
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert83 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat84 = shufflevector <8 x i32> %broadcast.splatinsert83, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat86 = shufflevector <8 x i32> %broadcast.splatinsert85, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert87 = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat88 = shufflevector <8 x i32> %broadcast.splatinsert87, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat90 = shufflevector <8 x i32> %broadcast.splatinsert89, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat92 = shufflevector <8 x i32> %broadcast.splatinsert91, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = add nsw i32 %4, %i.ak                   ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv52 ; 2 uses
  %i.an = mul nsw i64 %5, %indvars.iv52
  %i.ao = getelementptr [2 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx74
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aq = load i16, ptr %i.w, align 2, !tbaa !45, !alias.scope !1397
  %broadcast.splatinsert75 = insertelement <8 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat76 = shufflevector <8 x i16> %broadcast.splatinsert75, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ar = zext <8 x i16> %broadcast.splat76 to <8 x i32>
  %i.as = mul nuw nsw <8 x i32> %broadcast.splat, %i.ar
  %i.at = load i16, ptr %i.am, align 2, !tbaa !45, !alias.scope !1400
  %broadcast.splatinsert77 = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat78 = shufflevector <8 x i16> %broadcast.splatinsert77, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.au = zext <8 x i16> %broadcast.splat78 to <8 x i32>
  %i.av = load i16, ptr %i.y, align 2, !tbaa !45, !alias.scope !1402
  %broadcast.splatinsert79 = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %broadcast.splat80 = shufflevector <8 x i16> %broadcast.splatinsert79, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aw = zext <8 x i16> %broadcast.splat80 to <8 x i32>
  %broadcast.splatinsert81 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind93 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next94, %vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ax, align 2, !tbaa !45, !alias.scope !1404
  %i.ay = zext <8 x i16> %wide.load to <8 x i32>
  %i.az = mul nsw <8 x i32> %broadcast.splat82, %i.ay
  %i.ba = add nsw <8 x i32> %i.as, %i.az
  %i.bb = shl <8 x i32> %i.ba, %broadcast.splat84
  %i.bc = xor <8 x i32> %vec.ind93, splat (i32 -1)
  %i.bd = add nsw <8 x i32> %broadcast.splat86, %i.bc
  %i.be = mul nsw <8 x i32> %i.bd, %i.au
  %i.bf = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.bg = add <8 x i32> %i.bf, splat (i32 1)
  %i.bh = mul nuw nsw <8 x i32> %i.bg, %i.aw
  %i.bi = add nsw <8 x i32> %i.bh, %i.be
  %i.bj = shl <8 x i32> %i.bi, %broadcast.splat88
  %i.bk = add <8 x i32> %i.bb, %broadcast.splat90
  %i.bl = add <8 x i32> %i.bk, %i.bj
  %i.bm = ashr <8 x i32> %i.bl, %broadcast.splat92
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  %i.bo = getelementptr [2 x i8], ptr %i.ao, i64 %index
  store <8 x i16> %i.bn, ptr %i.bo, align 2, !tbaa !45, !alias.scope !1406, !noalias !1408
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next94 = add <8 x i32> %vec.ind93, splat (i32 8)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1409

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !45
  %i.bs = zext i16 %i.br to i32
  %i.bt = mul nsw i32 %i.al, %i.bs
  %i.bu = load i16, ptr %i.w, align 2, !tbaa !45
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.ap, %i.bv
  %i.bx = add nsw i32 %i.bw, %i.bt
  %i.by = shl i32 %i.bx, %i.h
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ca = xor i32 %i.bz, -1
  %i.cb = add nsw i32 %3, %i.ca
  %i.cc = load i16, ptr %i.am, align 2, !tbaa !45
  %i.cd = zext i16 %i.cc to i32
  %i.ce = mul nsw i32 %i.cb, %i.cd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cf = load i16, ptr %i.y, align 2, !tbaa !45
  %i.cg = zext i16 %i.cf to i32
  %i.ch = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ci = mul nuw nsw i32 %i.ch, %i.cg
  %i.cj = add nsw i32 %i.ci, %i.ce
  %i.ck = shl i32 %i.cj, %i.p
  %i.cl = add i32 %i.by, %i.q
  %i.cm = add i32 %i.cl, %i.ck
  %i.cn = ashr i32 %i.cm, %i.s
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr [2 x i8], ptr %i.ao, i64 %indvars.iv
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !45
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1410

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %i.v
  br i1 %exitcond56.not, label %._crit_edge50.split, label %.preheader, !llvm.loop !1411

._crit_edge50.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @pred_mip_10(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #7 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 15 uses
  %i.b = tail call i32 @ff_vvc_get_mip_size_id(i32 noundef %3, i32 noundef %4) #14 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @pred_mip_8.boundary_sizes, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !555  ; 10 uses
  %i.f = getelementptr inbounds [4 x i8], ptr @pred_mip_8.pred_sizes, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !555  ; 5 uses
  %i.h = shl i32 %i.e, 1
  %i.i = icmp eq i32 %i.b, 2                      ; 3 uses
  %.neg = sext i1 %i.i to i32
  %i.j = add i32 %i.h, %.neg                      ; 9 uses
  %i.k = tail call ptr @ff_vvc_get_mip_matrix(i32 noundef %i.b, i32 noundef %6) #14
  %i.l = sdiv i32 %3, %i.g                        ; 11 uses
  %i.m = sdiv i32 %4, %i.g                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = sext i32 %i.e to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr %i.o ; 4 uses
  %spec.select81 = select i1 %.not, ptr %i.o, ptr %i.a ; 4 uses
  %i.p = sdiv i32 %3, %i.e                        ; 8 uses
  %.not.i.i82 = icmp ult i32 %i.p, 65536          ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %spec.select.i.i83 = select i1 %.not.i.i82, i32 %i.p, i32 %i.q ; 3 uses
  %spec.select12.i.i84 = select i1 %.not.i.i82, i32 0, i32 16 ; 2 uses
end_hunk_1
begin_hunk_2_@intra_pred_8:bb.a
  %i.aap = mul nsw <16 x i32> %i.aao, %broadcast.splat591
  %i.aaq = add nsw <16 x i32> %i.aap, splat (i32 32)
  %i.aar = add nsw <16 x i32> %i.aaq, %i.aan
  %i.aas = ashr <16 x i32> %i.aar, splat (i32 6)
  %i.aat = add nsw <16 x i32> %i.aas, %i.aal      ; 3 uses
  %i.aau = icmp ult <16 x i32> %i.aat, splat (i32 256)
  %i.aav = icmp sgt <16 x i32> %i.aat, splat (i32 -1)
  %i.aaw = sext <16 x i1> %i.aav to <16 x i8>
  %i.aax = trunc nuw <16 x i32> %i.aat to <16 x i8>
  %i.aay = select <16 x i1> %i.aau, <16 x i8> %i.aax, <16 x i8> %i.aaw
  store <16 x i8> %i.aay, ptr %i.aak, align 1, !tbaa !62, !alias.scope !2091, !noalias !2093
  %index.next596 = add nuw i64 %index593, 16      ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.aaz = icmp eq i64 %index.next596, %n.vec585
  br i1 %i.aaz, label %middle.block597, label %vector.body592, !llvm.loop !2094

middle.block597:                                  ; preds = %vector.body592
  br i1 %cmp.n598, label %._crit_edge253, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %middle.block597
  br i1 %min.epilog.iters.check603, label %.lr.ph252.split.us.preheader, label %vec.epilog.ph604, !prof !56

vec.epilog.ph604:                                 ; preds = %vector.main.loop.iter.check582, %vec.epilog.iter.check602
  %vec.epilog.resume.val599 = phi i64 [ %n.vec585, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check582 ] ; 2 uses
  %i.aba = load i8, ptr %i.xq, align 1, !tbaa !62, !alias.scope !2086
  %broadcast.splatinsert606 = insertelement <4 x i8> poison, i8 %i.aba, i64 0
  %broadcast.splat607 = shufflevector <4 x i8> %broadcast.splatinsert606, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.abb = zext <4 x i8> %broadcast.splat607 to <4 x i32>
  %broadcast.splatinsert610 = insertelement <4 x i32> poison, i32 %i.xw, i64 0
  %broadcast.splat611 = shufflevector <4 x i32> %broadcast.splatinsert610, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abc = trunc nuw nsw i64 %vec.epilog.resume.val599 to i32
  %broadcast.splatinsert612 = insertelement <4 x i32> poison, i32 %i.abc, i64 0
  %broadcast.splat613 = shufflevector <4 x i32> %broadcast.splatinsert612, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat613, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body614

vec.epilog.vector.body614:                        ; preds = %vec.epilog.vector.body614, %vec.epilog.ph604
  %index615 = phi i64 [ %vec.epilog.resume.val599, %vec.epilog.ph604 ], [ %index.next619, %vec.epilog.vector.body614 ] ; 3 uses
  %vec.ind616 = phi <4 x i32> [ %induction, %vec.epilog.ph604 ], [ %vec.ind.next620, %vec.epilog.vector.body614 ] ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.wt, i64 %index615
  %wide.load617 = load <4 x i8>, ptr %i.abd, align 1, !tbaa !62, !alias.scope !2089
  %i.abe = zext <4 x i8> %wide.load617 to <4 x i32>
  %i.abf = shl nuw <4 x i32> %vec.ind616, splat (i32 1)
  %i.abg = ashr <4 x i32> %i.abf, %broadcast.splat609
  %i.abh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abg, <4 x i32> splat (i32 31))
  %i.abi = lshr <4 x i32> splat (i32 32), %i.abh
  %i.abj = getelementptr i8, ptr %i.xs, i64 %index615 ; 2 uses
  %wide.load618 = load <4 x i8>, ptr %i.abj, align 1, !tbaa !62, !alias.scope !2091, !noalias !2093
  %i.abk = zext <4 x i8> %wide.load618 to <4 x i32> ; 3 uses
  %i.abl = sub nsw <4 x i32> %i.abb, %i.abk
  %i.abm = mul nsw <4 x i32> %i.abl, %i.abi
  %i.abn = sub nsw <4 x i32> %i.abe, %i.abk
  %i.abo = mul nsw <4 x i32> %i.abn, %broadcast.splat611
  %i.abp = add nsw <4 x i32> %i.abo, splat (i32 32)
  %i.abq = add nsw <4 x i32> %i.abp, %i.abm
  %i.abr = ashr <4 x i32> %i.abq, splat (i32 6)
  %i.abs = add nsw <4 x i32> %i.abr, %i.abk       ; 3 uses
  %i.abt = icmp ult <4 x i32> %i.abs, splat (i32 256)
  %i.abu = icmp sgt <4 x i32> %i.abs, splat (i32 -1)
  %i.abv = sext <4 x i1> %i.abu to <4 x i8>
  %i.abw = trunc nuw <4 x i32> %i.abs to <4 x i8>
  %i.abx = select <4 x i1> %i.abt, <4 x i8> %i.abw, <4 x i8> %i.abv
  store <4 x i8> %i.abx, ptr %i.abj, align 1, !tbaa !62, !alias.scope !2091, !noalias !2093
  %index.next619 = add nuw i64 %index615, 4       ; 2 uses
  %vec.ind.next620 = add <4 x i32> %vec.ind616, splat (i32 4)
  %i.aby = icmp eq i64 %index.next619, %n.vec605
  br i1 %i.aby, label %vec.epilog.middle.block621, label %vec.epilog.vector.body614, !llvm.loop !2095

vec.epilog.middle.block621:                       ; preds = %vec.epilog.vector.body614
  br i1 %cmp.n622, label %._crit_edge253, label %.lr.ph252.split.us.preheader

.lr.ph252.split.us.preheader:                     ; preds = %iter.check600, %vec.epilog.iter.check602, %vec.epilog.middle.block621
  %indvars.iv322.ph = phi i64 [ 0, %iter.check600 ], [ %n.vec605, %vec.epilog.middle.block621 ], [ %n.vec585, %vec.epilog.iter.check602 ]
  br label %.lr.ph252.split.us

.lr.ph252.split.us:                               ; preds = %.lr.ph252.split.us.preheader, %.lr.ph252.split.us
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %.lr.ph252.split.us ], [ %indvars.iv322.ph, %.lr.ph252.split.us.preheader ] ; 4 uses
  %i.abz = load i8, ptr %i.xq, align 1, !tbaa !62
  %i.aca = zext i8 %i.abz to i32
  %i.acb = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv322
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !62
  %i.acd = zext i8 %i.acc to i32
  %indvars.iv322.tr = trunc nuw i64 %indvars.iv322 to i32
  %i.ace = shl nuw i32 %indvars.iv322.tr, 1
  %i.acf = ashr i32 %i.ace, %i.wr
  %i.acg = call i32 @llvm.smin.i32(i32 %i.acf, i32 31)
  %i.ach = lshr i32 32, %i.acg
  %i.aci = getelementptr i8, ptr %i.xs, i64 %indvars.iv322 ; 2 uses
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !62
  %i.ack = zext i8 %i.acj to i32                  ; 3 uses
  %i.acl = sub nsw i32 %i.aca, %i.ack
  %i.acm = mul nsw i32 %i.acl, %i.ach
  %i.acn = sub nsw i32 %i.acd, %i.ack
  %i.aco = mul nsw i32 %i.acn, %i.xw
  %i.acp = add nsw i32 %i.aco, 32
  %i.acq = add nsw i32 %i.acp, %i.acm
  %i.acr = ashr i32 %i.acq, 6
  %i.acs = add nsw i32 %i.acr, %i.ack             ; 3 uses
  %.not.i203.us = icmp ult i32 %i.acs, 256
  %isnotneg.i.us = icmp sgt i32 %i.acs, -1
  %i.act = sext i1 %isnotneg.i.us to i8
  %i.acu = trunc nuw i32 %i.acs to i8
  %.0.i.us = select i1 %.not.i203.us, i8 %i.acu, i8 %i.act
  store i8 %.0.i.us, ptr %i.aci, align 1, !tbaa !62
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %._crit_edge253, label %.lr.ph252.split.us, !llvm.loop !2096

._crit_edge253:                                   ; preds = %bb.as, %.lr.ph252.split.us, %middle.block673, %vec.epilog.middle.block706, %middle.block597, %vec.epilog.middle.block621
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond331.not = icmp eq i64 %indvars.iv.next328, %wide.trip.count330
  br i1 %exitcond331.not, label %.loopexit, label %.preheader, !llvm.loop !2097

.lr.ph252.split:                                  ; preds = %.lr.ph252.split.preheader, %bb.as
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %bb.as ], [ %indvars.iv317.ph, %.lr.ph252.split.preheader ] ; 4 uses
  %i.acv = load i8, ptr %i.xq, align 1, !tbaa !62
  %i.acw = zext i8 %i.acv to i32
  %i.acx = load i8, ptr %i.ww, align 1, !tbaa !62
  %i.acy = zext i8 %i.acx to i32
  %i.acz = getelementptr i8, ptr %i.xs, i64 %indvars.iv317 ; 2 uses
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !62
  %i.adb = zext i8 %i.ada to i32
  %i.adc = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv317
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !62
  %i.ade = zext i8 %i.add to i32
  %i.adf = load i8, ptr %i.wx, align 1, !tbaa !62
  %i.adg = zext i8 %i.adf to i32
  switch i32 %i.al, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph252.split
  %indvars.iv317.tr = trunc nuw i64 %indvars.iv317 to i32
  %i.adh = shl nuw i32 %indvars.iv317.tr, 1
  %i.adi = ashr i32 %i.adh, %i.wr
  %i.adj = call i32 @llvm.smin.i32(i32 %i.adi, i32 31)
  %i.adk = lshr i32 32, %i.adj
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph252.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph252.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.adk, %.thread213 ], [ 0, %.lr.ph252.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph252.split ], [ %i.xw, %bb.ar ]
  %i.adl = sub nsw i32 %i.acw, %i.acy
  %i.adm = mul nsw i32 %i.adl, %.0190
  %i.adn = sub nsw i32 %i.ade, %i.adg
  %i.ado = mul nsw i32 %i.adn, %.0
  %i.adp = add nsw i32 %i.ado, 32
  %i.adq = add nsw i32 %i.adp, %i.adm
  %i.adr = ashr i32 %i.adq, 6
  %i.ads = add nsw i32 %i.adr, %i.adb             ; 3 uses
  %.not.i203 = icmp ult i32 %i.ads, 256
  %isnotneg.i = icmp sgt i32 %i.ads, -1
  %i.adt = sext i1 %isnotneg.i to i8
  %i.adu = trunc nuw i32 %i.ads to i8
  %.0.i = select i1 %.not.i203, i8 %i.adu, i8 %i.adt
  store i8 %.0.i, ptr %i.acz, align 1, !tbaa !62
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count320
  br i1 %exitcond321.not, label %._crit_edge253, label %.lr.ph252.split, !llvm.loop !2098

.loopexit:                                        ; preds = %._crit_edge253, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !62
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 4 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 4 uses
  %i.q = mul nuw nsw i32 %4, %3                   ; 3 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 3 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr i8, ptr %2, i64 %i.v       ; 5 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %i.x       ; 4 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %i.z = add nsw i64 %i.v, -1
  %i.aa = mul i64 %5, %i.z
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.ab, i64 %wide.trip.count ; 4 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.x
  %scevgep58 = getelementptr i8, ptr %i.ac, i64 1
  %scevgep59 = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.ad = getelementptr i8, ptr %2, i64 %i.v
  %scevgep60 = getelementptr i8, ptr %i.ad, i64 1
  %min.iters.check = icmp ult i32 %3, 4
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %0, %scevgep59
  %bound162 = icmp ult ptr %1, %scevgep
  %found.conflict63 = and i1 %bound061, %bound162
  %stride.check64 = icmp slt i64 %5, 0
  %i.ae = or i1 %found.conflict63, %stride.check64
  %conflict.rdx = or i1 %found.conflict, %i.ae
  %bound065 = icmp ult ptr %0, %i.w
  %bound166 = icmp ult ptr %2, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx69 = or i1 %found.conflict67, %conflict.rdx
  %bound070 = icmp ult ptr %0, %scevgep60
  %bound171 = icmp ult ptr %i.w, %scevgep
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx74 = or i1 %found.conflict72, %conflict.rdx69
  %min.iters.check75 = icmp ult i32 %3, 16
  %i.af = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert84 = insertelement <16 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat85 = shufflevector <16 x i32> %broadcast.splatinsert84, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat87 = shufflevector <16 x i32> %broadcast.splatinsert86, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <16 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat89 = shufflevector <16 x i32> %broadcast.splatinsert88, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert90 = insertelement <16 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat91 = shufflevector <16 x i32> %broadcast.splatinsert90, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <16 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat93 = shufflevector <16 x i32> %broadcast.splatinsert92, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  %n.vec96 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert107 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat108 = shufflevector <4 x i32> %broadcast.splatinsert107, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat112 = shufflevector <4 x i32> %broadcast.splatinsert111, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat114 = shufflevector <4 x i32> %broadcast.splatinsert113, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n129 = icmp eq i64 %n.vec96, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ah = xor i32 %i.ag, -1
  %i.ai = add nsw i32 %4, %i.ah                   ; 3 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52 ; 3 uses
  %i.ak = mul nsw i64 %5, %indvars.iv52
  %i.al = getelementptr i8, ptr %0, i64 %i.ak     ; 3 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx74
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.an = load i8, ptr %i.w, align 1, !tbaa !62, !alias.scope !2099
  %broadcast.splatinsert76 = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat77 = shufflevector <16 x i8> %broadcast.splatinsert76, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ao = zext <16 x i8> %broadcast.splat77 to <16 x i32>
  %i.ap = mul nuw nsw <16 x i32> %broadcast.splat, %i.ao
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !62, !alias.scope !2102
  %broadcast.splatinsert78 = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %broadcast.splat79 = shufflevector <16 x i8> %broadcast.splatinsert78, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ar = zext <16 x i8> %broadcast.splat79 to <16 x i32>
  %i.as = load i8, ptr %i.y, align 1, !tbaa !62, !alias.scope !2104
  %broadcast.splatinsert80 = insertelement <16 x i8> poison, i8 %i.as, i64 0
  %broadcast.splat81 = shufflevector <16 x i8> %broadcast.splatinsert80, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.at = zext <16 x i8> %broadcast.splat81 to <16 x i32>
  %broadcast.splatinsert82 = insertelement <16 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat83 = shufflevector <16 x i32> %broadcast.splatinsert82, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind94 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next95, %vector.body ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !62, !alias.scope !2106
  %i.av = zext <16 x i8> %wide.load to <16 x i32>
  %i.aw = mul nsw <16 x i32> %broadcast.splat83, %i.av
  %i.ax = add nsw <16 x i32> %i.ap, %i.aw
  %i.ay = shl <16 x i32> %i.ax, %broadcast.splat85
  %i.az = xor <16 x i32> %vec.ind94, splat (i32 -1)
  %i.ba = add nsw <16 x i32> %broadcast.splat87, %i.az
  %i.bb = mul nsw <16 x i32> %i.ba, %i.ar
  %i.bc = trunc <16 x i64> %vec.ind to <16 x i32>
  %i.bd = add <16 x i32> %i.bc, splat (i32 1)
  %i.be = mul nuw nsw <16 x i32> %i.bd, %i.at
  %i.bf = add nsw <16 x i32> %i.be, %i.bb
  %i.bg = shl <16 x i32> %i.bf, %broadcast.splat89
  %i.bh = add <16 x i32> %i.ay, %broadcast.splat91
  %i.bi = add <16 x i32> %i.bh, %i.bg
  %i.bj = ashr <16 x i32> %i.bi, %broadcast.splat93
  %i.bk = trunc <16 x i32> %i.bj to <16 x i8>
  %i.bl = getelementptr i8, ptr %i.al, i64 %index
  store <16 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !62, !alias.scope !2108, !noalias !2110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next95 = add <16 x i32> %vec.ind94, splat (i32 16)
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !2111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %broadcast.splatinsert97 = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat98 = shufflevector <4 x i32> %broadcast.splatinsert97, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bn = load i8, ptr %i.w, align 1, !tbaa !62, !alias.scope !2099
  %broadcast.splatinsert99 = insertelement <4 x i8> poison, i8 %i.bn, i64 0
  %broadcast.splat100 = shufflevector <4 x i8> %broadcast.splatinsert99, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bo = zext <4 x i8> %broadcast.splat100 to <4 x i32>
  %i.bp = mul nuw nsw <4 x i32> %broadcast.splat98, %i.bo
  %i.bq = load i8, ptr %i.aj, align 1, !tbaa !62, !alias.scope !2102
  %broadcast.splatinsert101 = insertelement <4 x i8> poison, i8 %i.bq, i64 0
  %broadcast.splat102 = shufflevector <4 x i8> %broadcast.splatinsert101, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.br = zext <4 x i8> %broadcast.splat102 to <4 x i32>
  %i.bs = load i8, ptr %i.y, align 1, !tbaa !62, !alias.scope !2104
  %broadcast.splatinsert103 = insertelement <4 x i8> poison, i8 %i.bs, i64 0
  %broadcast.splat104 = shufflevector <4 x i8> %broadcast.splatinsert103, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bt = zext <4 x i8> %broadcast.splat104 to <4 x i32>
  %broadcast.splatinsert105 = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat106 = shufflevector <4 x i32> %broadcast.splatinsert105, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat118 = shufflevector <4 x i64> %broadcast.splatinsert117, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat118, <i64 0, i64 1, i64 2, i64 3>
  %i.bu = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction121 = or disjoint <4 x i32> %broadcast.splat120, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind123 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next127, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind124 = phi <4 x i32> [ %induction121, %vec.epilog.ph ], [ %vec.ind.next128, %vec.epilog.vector.body ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %index122
  %wide.load125 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !62, !alias.scope !2106
  %i.bw = zext <4 x i8> %wide.load125 to <4 x i32>
  %i.bx = mul nsw <4 x i32> %broadcast.splat106, %i.bw
  %i.by = add nsw <4 x i32> %i.bp, %i.bx
  %i.bz = shl <4 x i32> %i.by, %broadcast.splat108
  %i.ca = xor <4 x i32> %vec.ind124, splat (i32 -1)
  %i.cb = add nsw <4 x i32> %broadcast.splat110, %i.ca
  %i.cc = mul nsw <4 x i32> %i.cb, %i.br
  %i.cd = trunc <4 x i64> %vec.ind123 to <4 x i32>
  %i.ce = add <4 x i32> %i.cd, splat (i32 1)
  %i.cf = mul nuw nsw <4 x i32> %i.ce, %i.bt
  %i.cg = add nsw <4 x i32> %i.cf, %i.cc
  %i.ch = shl <4 x i32> %i.cg, %broadcast.splat112
  %i.ci = add <4 x i32> %i.bz, %broadcast.splat114
  %i.cj = add <4 x i32> %i.ci, %i.ch
  %i.ck = ashr <4 x i32> %i.cj, %broadcast.splat116
  %i.cl = trunc <4 x i32> %i.ck to <4 x i8>
  %i.cm = getelementptr i8, ptr %i.al, i64 %index122
  store <4 x i8> %i.cl, ptr %i.cm, align 1, !tbaa !62, !alias.scope !2108, !noalias !2110
  %index.next126 = add nuw i64 %index122, 4       ; 2 uses
  %vec.ind.next127 = add nuw nsw <4 x i64> %vec.ind123, splat (i64 4)
  %vec.ind.next128 = add <4 x i32> %vec.ind124, splat (i32 4)
  %i.cn = icmp eq i64 %index.next126, %n.vec96
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2112
end_hunk_2
