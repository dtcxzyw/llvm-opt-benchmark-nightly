Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 297
loop-unroll.NumUnrolled: 333
begin_hunk_0_@_ZNK4llvm13slpvectorizer7BoUpSLP24analyzeRtStrideCandidateENS_8ArrayRefIPNS_5ValueEEEPNS_4TypeENS_5AlignERNS_15SmallVectorImplIjEERNS1_14StridedPtrInfoEb:bb.a
bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !2575
  %i.q = shl i64 %i.p, 32                         ; 2 uses
  %i.r = ashr exact i64 %i.q, 32
  %.not250261 = icmp eq i64 %i.q, 0
  br i1 %.not250261, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !761
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0214.0262 = phi i64 [ 0, %.lr.ph ], [ %i.as, %.critedge ] ; 2 uses
  %i.u = and i64 %.sroa.0214.0262, 4294967295
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %.sroa.0.0.copyload.i146 = load i64, ptr %i.v, align 8
  %i.w = and i64 %.sroa.0.0.copyload.i146, -8     ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i16, ptr %i.y, align 8, !tbaa !757
  %i.aa = icmp ne i16 %i.z, 0
  %.not120251 = icmp eq i64 %i.w, 0
  %.not120 = or i1 %i.aa, %.not120251
  br i1 %.not120, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !764 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !765 ; 3 uses
  %i.ag = icmp ult i32 %i.af, 65
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !571
  %i.ai = icmp eq i32 %i.af, 0
  %i.aj = sub nuw nsw i32 64, %i.af
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = shl i64 %i.ah, %i.ak
  %i.am = ashr exact i64 %i.al, %i.ak
  br i1 %i.ai, label %_ZNK4llvm5APInt12getSExtValueEv.exit.thread, label %_ZNK4llvm5APInt12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !571
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !581
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

_ZNK4llvm5APInt12getSExtValueEv.exit.thread:      ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !581
  br label %.loopexit253

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.am, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !581
  %.not121 = icmp slt i64 %.0.i, 9223372036854775806
  br i1 %.not121, label %.loopexit253, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit
  store i64 0, ptr %i.a, align 8, !tbaa !581
  br label %.critedge

.loopexit253:                                     ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit, %_ZNK4llvm5APInt12getSExtValueEv.exit.thread
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !671
  %i.aq = ptrtoint ptr %i.l to i64
  %i.ar = call noundef ptr @_ZN4llvm15ScalarEvolution12getMinusSCEVENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.ap, i64 %i.aq, i64 %i.w, i32 noundef 0, i32 noundef 0) #31
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !758
  br label %.loopexit

.critedge:                                        ; preds = %bb.e, %bb.i
  %i.as = add i64 %.sroa.0214.0262, 1             ; 2 uses
  %.not250 = icmp eq i64 %i.as, %i.r
  br i1 %.not250, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %.critedge, %bb.d, %.loopexit253, %bb.c
  %i.at = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS3_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS8_EEEElS8_SA_SD_E24lookupOrInsertIntoBucketIRKlJEEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.at, 0 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.av = load ptr, ptr %.sroa.0223.0264, align 8, !tbaa !579 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !371 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !372
  %.not.i = icmp ult i32 %i.ax, %i.az
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !548

bb.j:                                             ; preds = %.loopexit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef %i.av)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

bb.k:                                             ; preds = %.loopexit
  %i.ba = zext i32 %i.ax to i64
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !359
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  store ptr %i.av, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.aw, align 8, !tbaa !371
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.aw, align 8, !tbaa !371
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit: ; preds = %bb.j, %bb.k
  %i.bf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS3_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS8_EEEElS8_SA_SD_E24lookupOrInsertIntoBucketIRKlJEEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i147 = extractvalue { ptr, i8 } %i.bf, 0 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i147, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i147, i64 80 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !371 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i147, i64 84
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !372
  %.not.i148 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i148, label %bb.m, label %bb.l, !prof !548

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i32 noundef %.sroa.8226.0265)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !359
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  store i32 %.sroa.8226.0265, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !371
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bh, align 8, !tbaa !371
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !2576 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.br = add i32 %.sroa.8226.0265, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0223.0264, i64 8 ; 2 uses
  %.not242 = icmp eq ptr %i.bs, %i.h
  br i1 %.not242, label %.critedge131, label %bb.b

.critedge131:                                     ; preds = %bb.n
  %.pre = load i32, ptr %8, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bt = lshr i32 %.pre, 1                       ; 5 uses
  store i32 %i.bt, ptr %i.c, align 4, !tbaa !380
  %i.bu = trunc i64 %2 to i32                     ; 4 uses
  %i.bv = icmp ugt i32 %.pre, 3
  br i1 %i.bv, label %bb.o, label %.thread

bb.o:                                             ; preds = %.critedge131
  %i.bw = urem i32 %i.bu, %i.bt
  %i.bx = udiv i32 %i.bu, %i.bt                   ; 2 uses
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %bb.p, label %bb.aq

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %9, align 8
  %i.bz = lshr i32 %i.by, 1
  %.not122 = icmp eq i32 %i.bz, %i.bx
  br i1 %.not122, label %bb.q, label %bb.aq

.thread:                                          ; preds = %.critedge131.thread, %.critedge131
  %i.ca = phi i32 [ 0, %.critedge131.thread ], [ %i.bu, %.critedge131 ] ; 5 uses
  %i.cb = phi i32 [ 0, %.critedge131.thread ], [ %i.bt, %.critedge131 ] ; 2 uses
  %i.cc = phi i32 [ 1, %.critedge131.thread ], [ %.pre, %.critedge131 ] ; 2 uses
  %i.cd = load i32, ptr %9, align 8
  %i.ce = lshr i32 %i.cd, 1
  %.not122235 = icmp eq i32 %i.ce, %i.ca
  br i1 %.not122235, label %.thread237, label %bb.aq

.thread237:                                       ; preds = %.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = and i32 %i.cg, 254
  %spec.select.i = icmp eq i32 %i.ch, 18
  br i1 %spec.select.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.thread237
  %i.ci = phi i1 [ false, %.thread237 ], [ true, %bb.p ]
  %i.cj = phi i32 [ %i.ca, %.thread237 ], [ %i.bu, %bb.p ]
  %i.ck = phi i32 [ %i.cb, %.thread237 ], [ %i.bt, %bb.p ] ; 2 uses
  %i.cl = phi i32 [ %i.cc, %.thread237 ], [ %.pre, %bb.p ]
  %.0111236240 = phi i32 [ %i.ca, %.thread237 ], [ %i.bx, %bb.p ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4824
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !671
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !736, !nonnull !369, !align !655
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.co) #31
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4880
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !670
  %i.cs = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cr, ptr noundef %3)
  %.fca.0.extract45 = extractvalue { i64, i8 } %i.cs, 0
  %i.ct = trunc i64 %.fca.0.extract45 to i32
  %i.cu = mul i32 %i.ck, %i.ct
  %i.cv = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i32 noundef %i.cu) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread237
  %i.cw = phi i1 [ %i.ci, %bb.q ], [ false, %.thread237 ]
  %i.cx = phi i32 [ %i.cj, %bb.q ], [ %i.ca, %.thread237 ]
  %i.cy = phi i32 [ %i.ck, %bb.q ], [ %i.cb, %.thread237 ] ; 7 uses
  %i.cz = phi i32 [ %i.cl, %bb.q ], [ %i.cc, %.thread237 ]
  %.0111236239 = phi i32 [ %.0111236240, %bb.q ], [ %i.ca, %.thread237 ] ; 2 uses
  %.0112 = phi ptr [ %i.cv, %bb.q ], [ %3, %.thread237 ]
  %i.da = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %.0112, i32 noundef %.0111236239) ; 3 uses
  %_ZL25MinProfitableStridedLoads._ZL26MinProfitableStridedStores = select i1 %7, ptr @_ZL25MinProfitableStridedLoads, ptr @_ZL26MinProfitableStridedStores
  %14 = getelementptr inbounds nuw i8, ptr %_ZL25MinProfitableStridedLoads._ZL26MinProfitableStridedStores, i64 120
  %15 = load i32, ptr %14, align 8, !tbaa !669
  %i.db = call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef %3) #31
  %i.dc = mul i32 %i.db, %i.cx
  %i.dd = icmp ult i32 %i.dc, %15
  br i1 %i.dd, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !584
  %i.dg = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo11isTypeLegalEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.da) #31
  br i1 %i.dg, label %bb.t, label %bb.aq

bb.t:                                             ; preds = %bb.s
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !584
  %i.di = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo23isLegalStridedLoadStoreEPNS_4TypeENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.da, i8 %4) #31
  br i1 %i.di, label %bb.u, label %bb.aq

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.dj = zext nneg i32 %i.cy to i64              ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.dk, ptr %10, align 8, !tbaa !359
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !371
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.dm, align 4, !tbaa !372
  %i.dn = icmp eq i32 %i.cy, 0
  br i1 %i.dn, label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = icmp ugt i32 %i.cz, 13
  br i1 %i.do, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.v
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.dk, i64 noundef %i.dj, i64 noundef 8) #31
  %.pre.i.i.i = load i32, ptr %i.dl, align 8, !tbaa !371 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.cy, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !359
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.v
  %i.dp = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.dk, %bb.v ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.v ] ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.dp, i64 %.pre-phi.i.i3.i
  %i.dr = sub nsw i64 %i.dj, %.pre-phi.i.i3.i
  %i.ds = shl nsw i64 %i.dr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dq, i8 0, i64 %i.ds, i1 false), !tbaa !581
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  store i32 %i.cy, ptr %i.dl, align 8, !tbaa !371
  br label %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit

_ZN4llvm11SmallVectorIlLj6EEC2Em.exit:            ; preds = %bb.u, %.sink.split.i.i.i
  %i.dt = load i32, ptr %8, align 8, !noalias !2577 ; 2 uses
  %i.du = and i32 %i.dt, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.du, 0    ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !2577
  %i.dx = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.dw, ptr %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !2577
  %i.ea = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.dz, ptr %i.f ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !noalias !2577
  %i.ed = select i1 %.not.i.i.i.i.i.i.i.i, i32 %i.ec, i32 4 ; 2 uses
  %i.ee = icmp ult i32 %i.dt, 2
  %i.ef = zext i32 %i.ed to i64                   ; 4 uses
  %.idx327.a = mul nuw nsw i64 %i.ef, 136         ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.ed, 0
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %.not.i.not.i.i.i.i.i.i
  br i1 %or.cond.i.i, label %.critedge135, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit
  %i.eg = add nuw nsw i64 %i.ef, 31
  %i.eh = lshr i64 %i.eg, 5                       ; 2 uses
  %i.ei = load i32, ptr %i.ea, align 4, !tbaa !380, !noalias !2578 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.w
  %i.ek = icmp eq i64 %i.eh, 1
  br i1 %i.ek, label %.critedge135, label %.lr.ph339.a

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph339.a
  %i.el = add nuw nsw i64 %i.en, 1                ; 2 uses
  %i.em = icmp eq i64 %i.el, %i.eh
  br i1 %i.em, label %.critedge135, label %.lr.ph339.a, !llvm.loop !2564

.lr.ph339.a:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.en = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !380, !noalias !2578 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i, !llvm.loop !2564

._crit_edge.i.loopexit.i.i.i.i.i.i:               ; preds = %.lr.ph339.a
  %i.er = mul i64 %i.en, 4352
  br label %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit

_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit: ; preds = %bb.w, %._crit_edge.i.loopexit.i.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.w ], [ %i.er, %._crit_edge.i.loopexit.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.ei, %bb.w ], [ %i.ep, %._crit_edge.i.loopexit.i.i.i.i.i.i ]
  %i.es = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.es, 136
  %.idx326 = zext nneg i32 %narrow to i64
  %i.et = add i64 %.012.lcssa.i.i.i.i.i.i.i, %.idx326 ; 2 uses
  %.not244267 = icmp eq i64 %i.et, %.idx327.a
  br i1 %.not244267, label %.critedge135, label %.lr.ph270

.lr.ph270:                                        ; preds = %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit
  %i.eu = load ptr, ptr %10, align 8
  %i.ev = add nuw nsw i64 %i.ef, 31
  %i.ew = lshr i64 %i.ev, 5                       ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph270, %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit
  %.pn = phi i64 [ %i.et, %.lr.ph270 ], [ %i.fv, %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit ] ; 2 uses
  %.sroa.14.0268 = phi i64 [ 0, %.lr.ph270 ], [ %i.fb, %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit ] ; 2 uses
  %.sroa.0195.0269 = getelementptr i8, ptr %i.dx, i64 %.pn ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0195.0269, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !371
  %.not123 = icmp eq i32 %i.ey, %.0111236239
  br i1 %.not123, label %bb.y, label %.critedge133

bb.y:                                             ; preds = %bb.x
  %i.ez = load i64, ptr %.sroa.0195.0269, align 8, !tbaa !2581
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.14.0268
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !581
  %i.fb = add i64 %.sroa.14.0268, 1
  %i.fc = add i64 %.pn, 136
  %i.fd = sdiv exact i64 %i.fc, 136               ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.fd, %i.ef
  br i1 %.not.i.i.i.i, label %bb.z, label %.critedge135

bb.z:                                             ; preds = %bb.y
  %i.fe = lshr i64 %i.fd, 5                       ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !380
  %i.fh = trunc nuw i64 %i.fd to i32
  %i.fi = and i32 %i.fh, 31
  %i.fj = shl nsw i32 -1, %i.fi
  %i.fk = and i32 %i.fg, %i.fj                    ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.z
  %i.fm = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %i.fn = icmp eq i64 %i.fm, %i.ew
  br i1 %i.fn, label %.critedge135, label %.lr.ph340

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph340
  %i.fo = add i64 %i.fq, 1                        ; 2 uses
  %i.fp = icmp eq i64 %i.fo, %i.ew
  br i1 %i.fp, label %.critedge135, label %.lr.ph340, !llvm.loop !2564

.lr.ph340:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.fq = phi i64 [ %i.fo, %.lr.ph.i.i.i.i ], [ %i.fm, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !380 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit, !llvm.loop !2564

_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit: ; preds = %.lr.ph340, %bb.z
  %.012.lcssa.i.i.i.i = phi i64 [ %i.fe, %bb.z ], [ %i.fq, %.lr.ph340 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.fk, %bb.z ], [ %i.fs, %.lr.ph340 ]
  %i.fu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i, 4352
  %narrow329 = mul nuw nsw i32 %i.fu, 136
  %.idx328 = zext nneg i32 %narrow329 to i64
  %i.fv = add i64 %.idx.i.i.i.i, %.idx328         ; 2 uses
  %.not244.a = icmp eq i64 %i.fv, %.idx327.a
  br i1 %.not244.a, label %.critedge135, label %bb.x

.critedge135:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.y, %_ZN4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorENS_16DenseMapIteratorIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EELb0EEEEEENS0_17enumerator_resultIJmRSF_EEEJS3_SG_EEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %_ZN4llvm11SmallVectorIlLj6EEC2Em.exit, %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamERNS_13SmallDenseMapIlSt4pairINS_11SmallVectorIPNS_5ValueELj6EEENS6_IjLj12EEEELj4ENS_12DenseMapInfoIlvEENS0_12DenseMapPairIlSB_EEEEEE5beginEv.exit
  %i.fw = icmp samesign ult i32 %i.cy, 2
  br i1 %i.fw, label %_ZN4llvm4sortIRNS_11SmallVectorIlLj6EEEEEvOT_.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge135
  %i.fx = zext nneg i32 %i.cy to i64
  %i.fy = load ptr, ptr %10, align 8, !tbaa !359
  call void @qsort(ptr noundef nonnull %i.fy, i64 noundef %i.fx, i64 noundef 8, ptr noundef nonnull @_ZN4llvm25array_pod_sort_comparatorIlEEiPKvS2_) #31
  br label %_ZN4llvm4sortIRNS_11SmallVectorIlLj6EEEEEvOT_.exit

_ZN4llvm4sortIRNS_11SmallVectorIlLj6EEEEEvOT_.exit: ; preds = %.critedge135, %bb.aa
  br i1 %i.cw, label %bb.ab, label %.critedge137

bb.ab:                                            ; preds = %_ZN4llvm4sortIRNS_11SmallVectorIlLj6EEEEEvOT_.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4880
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !670
  %i.gb = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ga, ptr noundef %3) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.gb, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.gb, 1
  %i.gc = add i64 %.fca.0.extract.i.i, 7
  %i.gd = lshr i64 %i.gc, 3
  %i.ge = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.ge, label %bb.ac, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.107) #34
end_hunk_0
