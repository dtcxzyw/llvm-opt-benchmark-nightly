Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AutoUpgrade?download=true
inline.NumInlined: 9788
inline.NumDeleted: 2508
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZL25upgradeX86ALIGNIntrinsicsRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_S6_S6_b:bb.a
  %.035.us.reass.us.13 = add i32 %invariant.op.us, 13
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  store i32 %.035.us.reass.us.13, ptr %i.bh, align 4, !tbaa !151
  %.035.us.reass.us.14 = add i32 %invariant.op.us, 14
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store i32 %.035.us.reass.us.14, ptr %i.bj, align 8, !tbaa !151
  %.035.us.reass.us.15 = add i32 %invariant.op.us, 15
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i32 %.035.us.reass.us.15, ptr %i.bl, align 4, !tbaa !151
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 16 ; 2 uses
  %i.bm = icmp samesign ult i64 %indvars.iv.next56, %i.as
  br i1 %i.bm, label %.preheader.us, label %._crit_edge, !llvm.loop !632

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.1, %.preheader ] ; 7 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.bn = trunc i64 %indvars.iv to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bp = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.br = add <4 x i32> %i.ab, %i.bq
  store <4 x i32> %i.br, ptr %i.bo, align 16, !tbaa !151
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = add <4 x i32> %i.af, %i.bq
  store <4 x i32> %i.bu, ptr %i.bt, align 16, !tbaa !151
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = add <4 x i32> %i.aj, %i.bq
  store <4 x i32> %i.bx, ptr %i.bw, align 16, !tbaa !151
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = add <4 x i32> %i.an, %i.bq
  store <4 x i32> %i.ca, ptr %i.bz, align 16, !tbaa !151
  %indvars.iv.next = or disjoint i64 %indvars.iv, 16 ; 5 uses
  %i.cb = trunc i64 %indvars.iv.next to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.cd = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cf = add <4 x i32> %i.ab, %i.ce
  store <4 x i32> %i.cf, ptr %i.cc, align 16, !tbaa !151
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = add <4 x i32> %i.af, %i.ce
  store <4 x i32> %i.ci, ptr %i.ch, align 16, !tbaa !151
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = add <4 x i32> %i.aj, %i.ce
  store <4 x i32> %i.cl, ptr %i.ck, align 16, !tbaa !151
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = add <4 x i32> %i.an, %i.ce
  store <4 x i32> %i.co, ptr %i.cn, align 16, !tbaa !151
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit95.unr-lcssa, label %.preheader, !llvm.loop !632

._crit_edge.loopexit95.unr-lcssa:                 ; preds = %.preheader
  %i.cp = and i64 %i.ao, 16
  %lcmp.mod.not.not = icmp eq i64 %i.cp, 0
  br i1 %lcmp.mod.not.not, label %.preheader.epil.preheader, label %._crit_edge

.preheader.epil.preheader:                        ; preds = %._crit_edge.loopexit95.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit95.unr-lcssa ] ; 5 uses
  %lcmp.mod96 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.cq = trunc i64 %indvars.iv.epil.init to i32
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cs = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cu = add <4 x i32> %i.ab, %i.ct
  store <4 x i32> %i.cu, ptr %i.cr, align 16, !tbaa !151
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = add <4 x i32> %i.af, %i.ct
  store <4 x i32> %i.cx, ptr %i.cw, align 16, !tbaa !151
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = add <4 x i32> %i.aj, %i.ct
  store <4 x i32> %i.da, ptr %i.cz, align 16, !tbaa !151
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = add <4 x i32> %i.an, %i.ct
  store <4 x i32> %i.dd, ptr %i.dc, align 16, !tbaa !151
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.epil.preheader, %._crit_edge.loopexit95.unr-lcssa, %.preheader.us, %bb.e
  %.pre-phi = phi i64 [ 0, %bb.e ], [ %i.as, %.preheader.us ], [ %i.w, %._crit_edge.loopexit95.unr-lcssa ], [ %i.w, %.preheader.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.df, align 1, !tbaa !108
  store ptr @.str.1109, ptr %10, align 8, !tbaa !43
  store i8 3, ptr %i.de, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !164, !nonnull !19, !align !92 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef ptr %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %.040, ptr noundef %.039, ptr nonnull %i.a, i64 %.pre-phi) #23, !inline_history !361 ; 2 uses
  %.not.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.not.i, label %bb.f, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.dm = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.dn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.dm, ptr noundef %.040, ptr noundef %.039, ptr nonnull %i.a, i64 %.pre-phi, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %9) #23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !166, !nonnull !19, !align !92 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dq, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull %i.dm, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #23, !inline_history !362
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.dm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %._crit_edge, %bb.f
  %.1.i = phi ptr [ %i.dm, %bb.f ], [ %i.dl, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.du = load i8, ptr %5, align 8, !tbaa !150
  %i.dv = icmp ugt i8 %i.du, 22
  br i1 %i.dv, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %i.dw = call noundef zeroext i1 @_ZNK4llvm8Constant14isAllOnesValueEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br i1 %i.dw, label %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !82
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !266
  %i.eb = call fastcc noundef ptr @_ZL13getX86MaskVecRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %5, i32 noundef %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.ec, align 8
  %i.ed = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.eb, ptr noundef nonnull %.1.i, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit

_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit: ; preds = %bb.g, %bb.h
  %.1.i46 = phi ptr [ %i.ed, %bb.h ], [ %.1.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit, %bb.b
  %.0 = phi ptr [ %i.o, %bb.b ], [ %.1.i46, %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL26upgradeX86PSLLDQIntrinsicsRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca [64 x i32], align 16              ; 16 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !266
  %i.f = shl i32 %i.e, 3                          ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145, !nonnull !19, !align !92
  %i.i = tail call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #23
  %i.j = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.i, i32 noundef %i.f) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !108
  store ptr @.str.35, ptr %5, align 8, !tbaa !43
  store i8 3, ptr %i.k, align 8, !tbaa !102
  %i.m = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 51, ptr noundef nonnull %1, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef null, i64 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.n = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.j) #23 ; 3 uses
  %i.o = icmp ult i32 %2, 16
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not40 = icmp eq i32 %i.f, 0
  br i1 %.not40, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %8 = insertelement <2 x i32> <i32 poison, i32 16>, i32 %i.f, i64 0 ; 2 uses
  %9 = insertelement <2 x i32> poison, i32 %2, i64 0
  %10 = insertelement <2 x i32> %9, i32 %i.f, i64 1
  %11 = sub <2 x i32> %8, %10                     ; 4 uses
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.p = shufflevector <2 x i32> %11, <2 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.q = add <4 x i32> %i.p, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.r = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.t = icmp ult <4 x i32> %i.q, %i.s
  %13 = shufflevector <2 x i32> %11, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %14 = shufflevector <2 x i32> %11, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.u = select <4 x i1> %i.t, <4 x i32> %14, <4 x i32> zeroinitializer
  %i.v = add <4 x i32> %i.q, %i.u                 ; 3 uses
  %i.w = add <4 x i32> %i.p, <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.x = icmp ult <4 x i32> %i.w, %i.s
  %i.y = select <4 x i1> %i.x, <4 x i32> %14, <4 x i32> zeroinitializer
  %i.z = add <4 x i32> %i.w, %i.y                 ; 3 uses
  %i.aa = add <4 x i32> %i.p, <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ab = icmp ult <4 x i32> %i.aa, %i.s
  %i.ac = select <4 x i1> %i.ab, <4 x i32> %14, <4 x i32> zeroinitializer
  %i.ad = add <4 x i32> %i.aa, %i.ac              ; 3 uses
  %i.ae = add <4 x i32> %12, <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %15 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.af = icmp ult <4 x i32> %i.ae, %15
  %i.ag = select <4 x i1> %i.af, <4 x i32> %13, <4 x i32> zeroinitializer
  %i.ah = add <4 x i32> %i.ae, %i.ag              ; 3 uses
  %i.ai = add i32 %i.f, -16                       ; 2 uses
  %i.aj = lshr i32 %i.ai, 4                       ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.al = icmp eq i32 %i.aj, 0
  br i1 %i.al, label %.preheader.epil.preheader, label %.preheader.lr.ph.new

.preheader.lr.ph.new:                             ; preds = %.preheader.lr.ph
  %unroll_iter = and i32 %i.ak, 536870910
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph.new ], [ %indvars.iv.next.1, %.preheader ] ; 7 uses
  %niter = phi i32 [ 0, %.preheader.lr.ph.new ], [ %niter.next.1, %.preheader ]
  %i.am = trunc i64 %indvars.iv to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ao = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ap = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aq = add <4 x i32> %i.v, %i.ap
  store <4 x i32> %i.aq, ptr %i.an, align 16, !tbaa !151
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = add <4 x i32> %i.z, %i.ap
  store <4 x i32> %i.at, ptr %i.as, align 16, !tbaa !151
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = add <4 x i32> %i.ad, %i.ap
  store <4 x i32> %i.aw, ptr %i.av, align 16, !tbaa !151
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = add <4 x i32> %i.ah, %i.ap
  store <4 x i32> %i.az, ptr %i.ay, align 16, !tbaa !151
  %indvars.iv.next = or disjoint i64 %indvars.iv, 16 ; 5 uses
  %i.ba = trunc i64 %indvars.iv.next to i32
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bc = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %i.bd = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.be = add <4 x i32> %i.v, %i.bd
  store <4 x i32> %i.be, ptr %i.bb, align 16, !tbaa !151
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = add <4 x i32> %i.z, %i.bd
  store <4 x i32> %i.bh, ptr %i.bg, align 16, !tbaa !151
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = add <4 x i32> %i.ad, %i.bd
  store <4 x i32> %i.bk, ptr %i.bj, align 16, !tbaa !151
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = add <4 x i32> %i.ah, %i.bd
  store <4 x i32> %i.bn, ptr %i.bm, align 16, !tbaa !151
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader, !llvm.loop !633

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader
  %i.bo = and i32 %i.ai, 16
  %lcmp.mod.not.not = icmp eq i32 %i.bo, 0
  br i1 %lcmp.mod.not.not, label %.preheader.epil.preheader, label %._crit_edge

.preheader.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod78 = trunc i32 %i.ak to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.bp = trunc i64 %indvars.iv.epil.init to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.br = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bt = add <4 x i32> %i.v, %i.bs
  store <4 x i32> %i.bt, ptr %i.bq, align 16, !tbaa !151
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = add <4 x i32> %i.z, %i.bs
  store <4 x i32> %i.bw, ptr %i.bv, align 16, !tbaa !151
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = add <4 x i32> %i.ad, %i.bs
  store <4 x i32> %i.bz, ptr %i.by, align 16, !tbaa !151
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = add <4 x i32> %i.ah, %i.bs
  store <4 x i32> %i.cc, ptr %i.cb, align 16, !tbaa !151
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.cd = zext i32 %i.f to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !164, !nonnull !19, !align !92 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef %i.n, ptr noundef %i.m, ptr nonnull %i.a, i64 %i.cd) #23, !inline_history !361 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.not.i, label %bb.c, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.cl = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.cm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.cl, ptr noundef %i.n, ptr noundef %i.m, ptr nonnull %i.a, i64 %i.cd, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %4) #23
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !166, !nonnull !19, !align !92 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cp, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.cl, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #23, !inline_history !362
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.cl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %._crit_edge, %bb.c
  %.1.i = phi ptr [ %i.cl, %bb.c ], [ %i.ck, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit, %bb.a
  %.033 = phi ptr [ %.1.i, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit ], [ %i.n, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.cu, align 1, !tbaa !108
  store ptr @.str.35, ptr %7, align 8, !tbaa !43
  store i8 3, ptr %i.ct, align 8, !tbaa !102
  %i.cv = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 51, ptr noundef %.033, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret ptr %i.cv
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL26upgradeX86PSRLDQIntrinsicsRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca [64 x i32], align 16              ; 11 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !266
  %i.f = shl i32 %i.e, 3                          ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145, !nonnull !19, !align !92
  %i.i = tail call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #23
  %i.j = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.i, i32 noundef %i.f) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !108
  store ptr @.str.35, ptr %5, align 8, !tbaa !43
  store i8 3, ptr %i.k, align 8, !tbaa !102
  %i.m = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 51, ptr noundef nonnull %1, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef null, i64 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.n = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.j) #23 ; 3 uses
  %i.o = icmp ult i32 %2, 16
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not38 = icmp eq i32 %i.f, 0
  br i1 %.not38, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.p = add i32 %i.f, -16                        ; 4 uses
  %i.q = insertelement <4 x i32> poison, i32 %2, i64 0 ; 2 uses
  %i.r = shufflevector <4 x i32> %i.q, <4 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.s = add nuw nsw <4 x i32> %i.r, <i32 1, i32 2, i32 3, i32 4>
  %i.t = shufflevector <4 x i32> <i32 15, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.q, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %i.u = insertelement <4 x i32> <i32 poison, i32 13, i32 12, i32 11>, i32 %2, i64 0 ; 2 uses
  %i.v = icmp eq <4 x i32> %i.t, %i.u
  %i.w = icmp samesign ugt <4 x i32> %i.t, %i.u
  %i.x = shufflevector <4 x i1> %i.v, <4 x i1> %i.w, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.y = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.z = shufflevector <4 x i32> %i.y, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aa = select <4 x i1> %i.x, <4 x i32> %i.z, <4 x i32> zeroinitializer
  %i.ab = add <4 x i32> %i.s, %i.aa
  %i.ac = add nuw nsw <4 x i32> %i.r, <i32 5, i32 6, i32 7, i32 8>
  %i.ad = icmp samesign ugt <4 x i32> %i.r, <i32 10, i32 9, i32 8, i32 7>
  %i.ae = select <4 x i1> %i.ad, <4 x i32> %i.z, <4 x i32> zeroinitializer
  %i.af = add <4 x i32> %i.ac, %i.ae
  %i.ag = add nuw nsw <4 x i32> %i.r, <i32 9, i32 10, i32 11, i32 12>
  %i.ah = icmp samesign ugt <4 x i32> %i.r, <i32 6, i32 5, i32 4, i32 3>
  %i.ai = select <4 x i1> %i.ah, <4 x i32> %i.z, <4 x i32> zeroinitializer
  %i.aj = add <4 x i32> %i.ag, %i.ai
  %i.ak = add nuw nsw i32 %2, 13
  %i.al = icmp samesign ugt i32 %2, 2
end_hunk_0
