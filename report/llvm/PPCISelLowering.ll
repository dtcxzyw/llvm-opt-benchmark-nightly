Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelLowering?download=true
inline.NumInlined: 17285
inline.NumDeleted: 3532
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZNK4llvm17PPCTargetLowering20combineVectorShuffleEPNS_19ShuffleVectorSDNodeERNS_12SelectionDAGE:bb.a
  %i.eg = trunc i64 %.pn.i.i to i32               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.eh = icmp slt i32 %i.eg, 64
  %or.cond.not = or i1 %i.eh, %i.as
  br i1 %or.cond.not, label %bb.ac, label %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit.thread427

bb.ac:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %_ZNK4llvm8TypeSizecvmEv.exit
  %.0195 = phi i32 [ %i.eg, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %.not447 = icmp eq ptr %.sroa.012.0.i243420, null
  br i1 %.not447, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i243420, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !556
  %i.ek = zext i32 %.sroa.7.0.i244422 to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload.i.i264 = load i16, ptr %i.el, align 8, !tbaa !215 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i265 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.21.0.copyload.i.i266 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i265, align 8, !tbaa !366 ; 2 uses
  %.fca.0.insert.i.i267 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i264, 0
  %.fca.1.insert.i.i268 = insertvalue { i16, ptr } %.fca.0.insert.i.i267, ptr %.sroa.21.0.copyload.i.i266, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i264, ptr %14, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.21.0.copyload.i.i266, ptr %i.em, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %.not.i.i.i269 = icmp eq i16 %.sroa.0.0.copyload.i.i264, 0
  br i1 %.not.i.i.i269, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i279, label %.split.i.i270

.split.i.i270:                                    ; preds = %bb.ad
  %i.en = add i16 %.sroa.0.0.copyload.i.i264, -19
  %spec.select.i.i.i.i271 = icmp ult i16 %i.en, 197
  br i1 %spec.select.i.i.i.i271, label %bb.ae, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i274

_ZNK4llvm3EVT8isVectorEv.exit.i.i279:             ; preds = %bb.ad
  %i.eo = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #33
  br i1 %i.eo, label %bb.af, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i274

bb.ae:                                            ; preds = %.split.i.i270
  %i.ep = zext nneg i16 %.sroa.0.0.copyload.i.i264 to i64
  %i.eq = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !215
  %i.et = insertvalue { i16, ptr } poison, i16 %i.es, 0
  %i.eu = insertvalue { i16, ptr } %i.et, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i274

bb.af:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i279
  %i.ev = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #31
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i274

_ZNK4llvm3EVT13getScalarTypeEv.exit.i274:         ; preds = %.split.i.i270, %_ZNK4llvm3EVT8isVectorEv.exit.i.i279, %bb.af, %bb.ae
  %.fca.1.insert.merged.i.i275 = phi { i16, ptr } [ %i.ev, %bb.af ], [ %i.eu, %bb.ae ], [ %.fca.1.insert.i.i268, %_ZNK4llvm3EVT8isVectorEv.exit.i.i279 ], [ %.fca.1.insert.i.i268, %.split.i.i270 ] ; 2 uses
  %i.ew = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i275, 0 ; 3 uses
  store i16 %i.ew, ptr %4, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ey = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i275, 1
  store ptr %i.ey, ptr %i.ex, align 8
  %.not.i.i276 = icmp eq i16 %i.ew, 0
  br i1 %.not.i.i276, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i274
  %i.ez = zext i16 %i.ew to i64
  %i.fa = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -16
  %.sroa.0.0.copyload.i.i.i277 = load i64, ptr %i.fb, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit280

bb.ah:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i274
  %i.fc = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #33
  %i.fd = extractvalue { i64, i8 } %i.fc, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit280

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit280:     ; preds = %bb.ag, %bb.ah
  %.pn.i.i278 = phi i64 [ %.sroa.0.0.copyload.i.i.i277, %bb.ag ], [ %i.fd, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.fe = trunc i64 %.pn.i.i278 to i32            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.ff = icmp slt i32 %i.fe, 64
  %or.cond4.not = or i1 %i.ff, %i.as
  br i1 %or.cond4.not, label %bb.ai, label %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit.thread427

bb.ai:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit280, %bb.ac
  %.0196 = phi i32 [ %i.fe, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit280 ], [ 0, %bb.ac ] ; 2 uses
  %.not = icmp eq i32 %.0195, 0
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load ptr, ptr %i.ao, align 8, !tbaa !89, !nonnull !46, !align !90
  %i.fh = getelementptr i8, ptr %.sroa.0404.0, i64 48
  %.val210.val = load ptr, ptr %i.fh, align 8, !tbaa !556
  %i.fi = call fastcc { ptr, i32 } @_ZL33generateSToVPermutedForVecShuffleimRjiRiN4llvm7SDValueES2_RNS1_12SelectionDAGERKNS1_12PPCSubtargetE(i32 noundef %.0195, i64 noundef %.fca.0.extract99, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr %.val210.val, i32 %.sroa.14.0, ptr %.sroa.012.0.i, i32 %.sroa.7.0.i, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(520296) %i.fg) ; 2 uses
  %.fca.0.extract76 = extractvalue { ptr, i32 } %i.fi, 0
  %.fca.1.extract77 = extractvalue { ptr, i32 } %i.fi, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.0404.1 = phi ptr [ %.sroa.0404.0, %bb.ai ], [ %.fca.0.extract76, %bb.aj ] ; 2 uses
  %.sroa.14.1 = phi i32 [ %.sroa.14.0, %bb.ai ], [ %.fca.1.extract77, %bb.aj ] ; 2 uses
  %.not206 = icmp eq i32 %.0196, 0
  br i1 %.not206, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = load ptr, ptr %i.ao, align 8, !tbaa !89, !nonnull !46, !align !90
  %i.fk = getelementptr i8, ptr %.sroa.0379.0, i64 48
  %.val.val = load ptr, ptr %i.fk, align 8, !tbaa !556
  %i.fl = call fastcc { ptr, i32 } @_ZL33generateSToVPermutedForVecShuffleimRjiRiN4llvm7SDValueES2_RNS1_12SelectionDAGERKNS1_12PPCSubtargetE(i32 noundef %.0196, i64 noundef %.fca.0.extract99, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.di, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr %.val.val, i32 %.sroa.13.0, ptr %.sroa.012.0.i243420, i32 %.sroa.7.0.i244422, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(520296) %i.fj) ; 2 uses
  %.fca.0.extract69 = extractvalue { ptr, i32 } %i.fl, 0
  %.fca.1.extract70 = extractvalue { ptr, i32 } %i.fl, 1
  %.pre486 = load i32, ptr %i.d, align 4, !tbaa !332
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fm = phi i32 [ -1, %bb.ak ], [ %.pre486, %bb.al ] ; 4 uses
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %bb.ak ], [ %.fca.1.extract70, %bb.al ] ; 2 uses
  %.sroa.0379.1 = phi ptr [ %.sroa.0379.0, %bb.ak ], [ %.fca.0.extract69, %bb.al ] ; 2 uses
  %i.fn = load i32, ptr %i.c, align 4, !tbaa !332 ; 4 uses
  %.val214 = load ptr, ptr %10, align 8, !tbaa !49 ; 9 uses
  %.val215 = load i32, ptr %i.bu, align 8, !tbaa !355 ; 4 uses
  %i.fo = zext i32 %.val215 to i64                ; 5 uses
  %.idx.i281 = shl nuw nsw i64 %i.fo, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.val214, i64 %.idx.i281 ; 2 uses
  %.not2.i = icmp eq i32 %.val215, 0
  br i1 %.not2.i, label %.loopexit460, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.fq = icmp sgt i32 %i.fm, -1
  %i.fr = add nsw i32 %i.fm, %i.dj
  br i1 %i.fq, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ao
  %.0193.us.i = phi ptr [ %i.fw, %bb.ao ], [ %.val214, %.lr.ph.i ] ; 2 uses
  %i.fs = load i32, ptr %.0193.us.i, align 4, !tbaa !332 ; 3 uses
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us.i
  %i.fu = icmp slt i32 %i.fs, %i.dj
  %i.fv = icmp ult i32 %i.fn, %i.fs
  %or.cond25.us.i = and i1 %i.fv, %i.fu
  br i1 %or.cond25.us.i, label %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit.thread427, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.split.us.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.0193.us.i, i64 4 ; 2 uses
  %.not.us.i = icmp eq ptr %i.fw, %i.fp
  br i1 %.not.us.i, label %.loopexit460, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.aq
  %.0193.i = phi ptr [ %i.gc, %bb.aq ], [ %.val214, %.lr.ph.i ] ; 2 uses
  %i.fx = load i32, ptr %.0193.i, align 4, !tbaa !332 ; 4 uses
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.i
  %i.fz = icmp slt i32 %i.fx, %i.dj
  %i.ga = icmp ult i32 %i.fn, %i.fx
  %or.cond25.i = and i1 %i.ga, %i.fz
  %i.gb = icmp sgt i32 %i.fx, %i.fr
  %or.cond.i = select i1 %or.cond25.i, i1 true, i1 %i.gb
  br i1 %or.cond.i, label %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit.thread427, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.split.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.0193.i, i64 4 ; 2 uses
  %.not.i282 = icmp eq ptr %i.gc, %i.fp
  br i1 %.not.i282, label %.loopexit460, label %.lr.ph.split.i

.loopexit460:                                     ; preds = %bb.ao, %bb.aq, %bb.am
  %i.gd = load i32, ptr %i.a, align 4, !tbaa !332
  %i.ge = load i32, ptr %i.b, align 4, !tbaa !332
  %i.gf = load ptr, ptr %i.ao, align 8, !tbaa !89, !nonnull !46, !align !90
  %i.gg = getelementptr i8, ptr %i.gf, i64 556
  %.val218 = load i8, ptr %i.gg, align 4, !tbaa !338, !range !45, !noundef !46
  %i.gh = trunc nuw i8 %.val218 to i1             ; 2 uses
  %i.gi = select i1 %i.gh, i32 0, i32 %i.gd       ; 2 uses
  %i.gj = select i1 %i.gh, i32 0, i32 %i.ge       ; 2 uses
  %i.gk = icmp sgt i32 %.val215, 0
  br i1 %i.gk, label %.lr.ph.i283.preheader, label %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit

.lr.ph.i283.preheader:                            ; preds = %.loopexit460
  %min.iters.check = icmp ult i32 %.val215, 4
  br i1 %min.iters.check, label %.lr.ph.i283.preheader535, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i283.preheader
  %n.vec = and i64 %i.fo, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert514 = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat515 = shufflevector <4 x i32> %broadcast.splatinsert514, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert516 = insertelement <4 x i32> poison, i32 %i.fm, i64 0
  %broadcast.splat517 = shufflevector <4 x i32> %broadcast.splatinsert516, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert518 = insertelement <4 x i32> poison, i32 %i.gi, i64 0
  %broadcast.splat519 = shufflevector <4 x i32> %broadcast.splatinsert518, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert520 = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %broadcast.splat521 = shufflevector <4 x i32> %broadcast.splatinsert520, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue527, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue527 ] ; 5 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val214, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.gl, align 4, !tbaa !332 ; 8 uses
  %19 = icmp slt <4 x i32> %wide.load, zeroinitializer
  %20 = icmp sgt <4 x i32> %wide.load, %broadcast.splat
  %21 = or <4 x i1> %19, %20                      ; 3 uses
  %i.gm = icmp sge <4 x i32> %wide.load, %broadcast.splat515
  %i.gn = icmp sle <4 x i32> %wide.load, %broadcast.splat517
  %.not530 = and <4 x i1> %i.gm, %i.gn
  %i.go = select <4 x i1> %21, <4 x i1> %.not530, <4 x i1> zeroinitializer
  %22 = xor <4 x i1> %21, splat (i1 true)
  %23 = or <4 x i1> %i.go, %22                    ; 4 uses
  %predphi = select <4 x i1> %21, <4 x i32> %broadcast.splat521, <4 x i32> %broadcast.splat519 ; 4 uses
  %i.gp = extractelement <4 x i1> %23, i64 0
  br i1 %i.gp, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.gq = extractelement <4 x i32> %wide.load, i64 0
  %i.gr = add i32 %i.gq, %i.dj
  %i.gs = extractelement <4 x i32> %predphi, i64 0
  %i.gt = sub i32 %i.gr, %i.gs
  store i32 %i.gt, ptr %i.gl, align 4, !tbaa !332
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.gu = extractelement <4 x i1> %23, i64 1
  br i1 %i.gu, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue
  %i.gv = extractelement <4 x i32> %wide.load, i64 1
  %i.gw = add i32 %i.gv, %i.dj
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val214, i64 %index
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = extractelement <4 x i32> %predphi, i64 1
  %i.ha = sub i32 %i.gw, %i.gz
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !332
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue
  %i.hb = extractelement <4 x i1> %23, i64 2
  br i1 %i.hb, label %pred.store.if524, label %pred.store.continue525

pred.store.if524:                                 ; preds = %pred.store.continue523
  %i.hc = extractelement <4 x i32> %wide.load, i64 2
  %i.hd = add i32 %i.hc, %i.dj
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.val214, i64 %index
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = extractelement <4 x i32> %predphi, i64 2
  %i.hh = sub i32 %i.hd, %i.hg
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !332
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %i.hi = extractelement <4 x i1> %23, i64 3
  br i1 %i.hi, label %pred.store.if526, label %pred.store.continue527

pred.store.if526:                                 ; preds = %pred.store.continue525
  %i.hj = extractelement <4 x i32> %wide.load, i64 3
  %i.hk = add i32 %i.hj, %i.dj
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.val214, i64 %index
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hn = extractelement <4 x i32> %predphi, i64 3
  %i.ho = sub i32 %i.hk, %i.hn
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !332
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue525
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !1518

middle.block:                                     ; preds = %pred.store.continue527
  %cmp.n = icmp eq i64 %n.vec, %i.fo
  br i1 %cmp.n, label %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit.loopexit, label %.lr.ph.i283.preheader535

.lr.ph.i283.preheader535:                         ; preds = %.lr.ph.i283.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i283.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i283

.lr.ph.i283:                                      ; preds = %.lr.ph.i283.preheader535, %bb.as
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.as ], [ %indvars.iv.i.ph, %.lr.ph.i283.preheader535 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.val214, i64 %indvars.iv.i ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !332 ; 5 uses
  %i.hs = icmp slt i32 %i.hr, 0
  %.not.i284 = icmp sgt i32 %i.hr, %i.fn
  %or.cond.i285 = or i1 %i.hs, %.not.i284
  br i1 %or.cond.i285, label %bb.ar, label %.sink.split.i

bb.ar:                                            ; preds = %.lr.ph.i283
  %.not28.i = icmp slt i32 %i.hr, %i.di
  %.not29.i = icmp sgt i32 %i.hr, %i.fm
  %or.cond30.i = or i1 %.not28.i, %.not29.i
  br i1 %or.cond30.i, label %bb.as, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ar, %.lr.ph.i283
  %.pn.i286 = phi i32 [ %i.gi, %.lr.ph.i283 ], [ %i.gj, %bb.ar ]
  %.sink4.i = add i32 %i.hr, %i.dj
  %i.ht = sub i32 %.sink4.i, %.pn.i286
  store i32 %i.ht, ptr %i.hq, align 4, !tbaa !332
  br label %bb.as

bb.as:                                            ; preds = %.sink.split.i, %bb.ar
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.fo
  br i1 %exitcond.not.i, label %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit.loopexit, label %.lr.ph.i283, !llvm.loop !1519

_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit.loopexit: ; preds = %bb.as, %middle.block
  %.pre487 = load i32, ptr %i.bu, align 8, !tbaa !355
  %.pre488 = zext i32 %.pre487 to i64
  br label %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit

_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit: ; preds = %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit.loopexit, %.loopexit460
  %.pre-phi = phi i64 [ %.pre488, %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit.loopexit ], [ %i.fo, %.loopexit460 ]
  %i.hu = load ptr, ptr %i.h, align 8, !tbaa !556 ; 2 uses
  %.sroa.0.0.copyload.i287 = load i16, ptr %i.hu, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i288 = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %.sroa.21.0.copyload.i289 = load ptr, ptr %.sroa.21.0..sroa_idx.i288, align 8, !tbaa !366
  store ptr %.sroa.0379.1, ptr %15, align 8, !tbaa !562
  %.sroa.13.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sroa.13.1, ptr %.sroa.13.0..sroa_idx384, align 8, !tbaa !332
  %.sroa.18.0..sroa_idx392 = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx392, align 4
  store ptr %.val214, ptr %16, align 8, !tbaa !684
  %i.hv = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.pre-phi, ptr %i.hv, align 8, !tbaa !685
  %i.hw = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %.sroa.0.0.copyload.i287, ptr %.sroa.21.0.copyload.i289, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr %.sroa.0404.1, i32 %.sroa.14.1, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.537") align 8 %16) #31 ; 2 uses
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.hw, 0 ; 5 uses
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.hw, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.fca.0.extract57, i64 24
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !559
  %i.hz = icmp eq i32 %i.hy, 171
  br i1 %i.hz, label %bb.at, label %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit.thread427

bb.at:                                            ; preds = %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ia = getelementptr inbounds nuw i8, ptr %.fca.0.extract57, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !556 ; 2 uses
  %.sroa.0.0.copyload.i.i292 = load i16, ptr %i.ib, align 8, !tbaa !215 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i293 = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.sroa.21.0.copyload.i.i294 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i293, align 8, !tbaa !366
  store i16 %.sroa.0.0.copyload.i.i292, ptr %3, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i294, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %.fca.0.extract57, i64 88
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !457
  %.not.i.i.i295 = icmp eq i16 %.sroa.0.0.copyload.i.i292, 0
  br i1 %.not.i.i.i295, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i301, label %.split.i.i296

.split.i.i296:                                    ; preds = %bb.at
  %i.if = add i16 %.sroa.0.0.copyload.i.i292, -163
  %spec.select.i.i.i.i297 = icmp ult i16 %i.if, 53
  br i1 %spec.select.i.i.i.i297, label %bb.au, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i298

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i301:    ; preds = %bb.at
  %i.ig = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #33
  br i1 %i.ig, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i301, %.split.i.i296
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.138) #32
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i298: ; preds = %.split.i.i296
  %i.ih = zext i16 %.sroa.0.0.copyload.i.i292 to i64
  %i.ii = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 -2
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !210
  %i.il = zext i16 %i.ik to i32
  br label %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit

bb.av:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i301
  %i.im = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #33
  br label %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit

_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit.thread427: ; preds = %bb.an, %bb.ap, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit280, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit
  %.sroa.0159.0.ph = phi ptr [ %.fca.0.extract57, %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit ], [ %.sroa.0355.0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit280 ], [ %.sroa.0355.0, %bb.ap ], [ %.sroa.0355.0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ %.sroa.0355.0, %bb.an ]
  %.sroa.10.0.ph = phi i32 [ %.fca.1.extract58, %_ZL31fixupShuffleMaskForPermutedSToVRN4llvm15SmallVectorImplIiEEiiiiijjRKNS_12PPCSubtargetE.exit ], [ %.sroa.17.0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit280 ], [ %.sroa.17.0, %bb.ap ], [ %.sroa.17.0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ %.sroa.17.0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %_ZL9isSplatBVN4llvm7SDValueE.exit

_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit: ; preds = %bb.av, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i298
  %i.in = phi i32 [ %i.il, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i298 ], [ %i.im, %bb.av ]
  %i.io = zext i32 %i.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.thread

.thread:                                          ; preds = %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit, %bb.q
  %.sroa.0355.2 = phi ptr [ %.fca.0.extract57, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit ], [ %.sroa.0355.0, %bb.q ], [ %.sroa.0355.0, %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread ] ; 3 uses
  %.sroa.17.2 = phi i32 [ %.fca.1.extract58, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit ], [ %.sroa.17.0, %bb.q ], [ %.sroa.17.0, %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread ] ; 3 uses
  %.sroa.0366.2 = phi ptr [ %i.ie, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit ], [ %.sroa.0366.0, %bb.q ], [ %.sroa.0366.0, %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread ] ; 3 uses
  %.sroa.10369.2 = phi i64 [ %i.io, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit ], [ %.sroa.10369.0, %bb.q ], [ %.sroa.10369.0, %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread ] ; 6 uses
  %.sroa.13.3 = phi i32 [ %.sroa.13.1, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit ], [ %.sroa.13.0, %bb.q ], [ %.sroa.13.0, %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread ] ; 2 uses
  %.sroa.0379.3 = phi ptr [ %.sroa.0379.1, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit ], [ %.sroa.0379.0, %bb.q ], [ %.sroa.0379.0, %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread ] ; 2 uses
  %.sroa.0404.3 = phi ptr [ %.sroa.0404.1, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit ], [ %.sroa.0404.0, %bb.q ], [ %.sroa.0404.0, %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread ] ; 2 uses
  %.sroa.14.3 = phi i32 [ %.sroa.14.1, %_ZL20isShuffleMaskInRangeRKN4llvm15SmallVectorImplIiEEiii.exit ], [ %.sroa.14.0, %bb.q ], [ %.sroa.14.0, %_ZL13isScalarToVecN4llvm7SDValueE.exit248.thread ] ; 2 uses
  %.sroa.0.0.copyload.sroa.speculated = select i1 %i.as, ptr %.sroa.0379.3, ptr %.sroa.0404.3 ; 5 uses
  %.sroa.9.0.copyload.sroa.speculated = select i1 %i.as, i32 %.sroa.13.3, i32 %.sroa.14.3
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.sroa.speculated, i64 24
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !559
  %.not.i303 = icmp eq i32 %i.iq, 162
  br i1 %.not.i303, label %bb.aw, label %_ZL9isSplatBVN4llvm7SDValueE.exit

bb.aw:                                            ; preds = %.thread
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.sroa.speculated, i64 64
  %i.is = load i16, ptr %i.ir, align 8, !tbaa !560 ; 3 uses
  %.not34.i = icmp eq i16 %i.is, 0
  br i1 %.not34.i, label %.loopexit459, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %bb.aw
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.sroa.speculated, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !557 ; 2 uses
  %wide.trip.count.i305 = zext i16 %i.is to i64   ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i304
  %indvars.iv.i306 = phi i64 [ 0, %.lr.ph.i304 ], [ %indvars.iv.next.i309, %bb.ax ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [40 x i8], ptr %i.iu, i64 %indvars.iv.i306 ; 2 uses
  %.sroa.0.0.copyload.i307 = load ptr, ptr %i.iv, align 8, !tbaa !562 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i307, i64 24
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !559
  %i.iy = add i32 %i.ix, -55
  %spec.select.i.i.i308 = icmp ult i32 %i.iy, -2
  %indvars.iv.next.i309 = add nuw nsw i64 %indvars.iv.i306, 1 ; 2 uses
  %exitcond.not.i310 = icmp eq i64 %indvars.iv.next.i309, %wide.trip.count.i305
  %or.cond.i311 = select i1 %spec.select.i.i.i308, i1 true, i1 %exitcond.not.i310
  br i1 %or.cond.i311, label %._crit_edge.i, label %bb.ax, !llvm.loop !1520

._crit_edge.i:                                    ; preds = %bb.ax
  %.sroa.6.0..sroa_idx.le.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.sroa.6.0.copyload.le.i = load i32, ptr %.sroa.6.0..sroa_idx.le.i, align 8, !tbaa !332
  %.not13.not27.not.i = icmp eq i16 %i.is, 1
  br i1 %.not13.not27.not.i, label %.loopexit459, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %._crit_edge.i, %bb.az
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.az ], [ 1, %._crit_edge.i ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [40 x i8], ptr %i.iu, i64 %indvars.iv36.i ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !558 ; 2 uses
  %i.jb = icmp ne ptr %i.ja, %.sroa.0.0.copyload.i307
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jd = load i32, ptr %i.jc, align 8
  %i.je = icmp ne i32 %i.jd, %.sroa.6.0.copyload.le.i
  %.not3.i.i = select i1 %i.jb, i1 true, i1 %i.je
  br i1 %.not3.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph30.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
end_hunk_0
