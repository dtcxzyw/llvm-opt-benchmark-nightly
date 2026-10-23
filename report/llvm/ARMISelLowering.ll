Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZN4llvm13IRBuilderBase18CreateConstGEP1_32EPNS_4TypeEPNS_5ValueEjRKNS_5TwineE:bb.a
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #38, !inline_history !3014
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.n) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %_ZN4llvm13IRBuilderBase9CreateGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14GEPNoWrapFlagsE.exit

_ZN4llvm13IRBuilderBase9CreateGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14GEPNoWrapFlagsE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.n, %bb.b ], [ %i.l, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret ptr %.1.i
}

declare noundef ptr @_ZN4llvm18concatenateVectorsERNS_13IRBuilderBaseENS_8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #8

declare void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering21lowerInterleavedStoreEPNS_11InstructionEPNS_5ValueEPNS_17ShuffleVectorInstEjRKNS_5APIntE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.1052", align 8 ; 12 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::ArrayRef.804", align 8 ; 4 uses
  %13 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %14 = alloca %class.anon.842, align 1           ; 3 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %15 = alloca %"class.llvm::SmallVector.1052", align 8 ; 12 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::ArrayRef.804", align 8 ; 4 uses
  %18 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %19 = alloca %class.anon.842, align 1           ; 3 uses
  %20 = alloca %"class.llvm::IRBuilder", align 8  ; 25 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %24 = alloca %"class.llvm::SmallVector.830", align 8 ; 13 uses
  %25 = alloca %"class.llvm::SmallVector.836", align 8 ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %27 = alloca %"class.llvm::SmallVector.836", align 8 ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !329
  %.not = icmp eq i8 %i.c, 64
  br i1 %.not, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !788  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !986
  %i.h = udiv i32 %i.g, %4                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !985  ; 3 uses
  %i.k = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.j, i32 noundef %i.h) #38 ; 3 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #38 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !740
  %i.o = trunc i16 %i.n to i8
  %i.p = lshr i8 %i.o, 1
  %i.q = and i8 %i.p, 63
  %i.r = tail call noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering28isLegalInterleavedAccessTypeEjPNS_15FixedVectorTypeENS_5AlignERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518466) %0, i32 noundef %4, ptr noundef %i.k, i8 %i.q, ptr noundef nonnull align 8 dereferenceable(912) %i.l)
  br i1 %i.r, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.s = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.l, ptr noundef %i.k) ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.s, 1
  %i.t = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.t, label %bb.d, label %_ZNK4llvm17ARMTargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.69) #40
  unreachable

_ZNK4llvm17ARMTargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutE.exit: ; preds = %bb.c
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.s, 0
  %i.u = add i64 %.fca.0.extract.i, 127
  %i.v = lshr i64 %i.u, 7
  %i.w = trunc i64 %i.v to i32                    ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %3, i64 -64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !334  ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %3, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !334 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !788
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !877, !nonnull !51, !align !92
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 96 ; 3 uses
  store ptr null, ptr %20, align 8, !tbaa !872
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 5 uses
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !1085
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 3 uses
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !1086
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !1087
  %i.aj = getelementptr inbounds nuw i8, ptr %20, i64 56
  store ptr null, ptr %i.aj, align 8, !tbaa !1088
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 64
  store i32 0, ptr %i.ak, align 8, !tbaa !1089
  %i.al = getelementptr inbounds nuw i8, ptr %20, i64 68
  store i8 0, ptr %i.al, align 4, !tbaa !1090
  %i.am = getelementptr inbounds nuw i8, ptr %20, i64 69
  store i8 2, ptr %i.am, align 1, !tbaa !1091
  %i.an = getelementptr inbounds nuw i8, ptr %20, i64 70
  store i8 7, ptr %i.an, align 2, !tbaa !1092
  %i.ao = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.ae, align 8, !tbaa !42
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.af, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !659
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !1068
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.aq, ptr %i.at, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 3 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #38
  %i.av = load i64, ptr %i.au, align 8, !tbaa !764
  store i64 %i.av, ptr %20, align 8, !tbaa !764
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, 255
  %i.az = icmp eq i32 %i.ay, 15
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm17ARMTargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutE.exit
  %i.ba = call noundef ptr @_ZNK4llvm10DataLayout13getIntPtrTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.l, ptr noundef nonnull %i.j) #38 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !788
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !986
  %i.bf = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ba, i32 noundef %i.be) #38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i16 257, ptr %i.bg, align 8
  %i.bh = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef 48, ptr noundef nonnull %i.y, ptr noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(34) %21, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  %i.bi = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i16 257, ptr %i.bi, align 8
  %i.bj = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef 48, ptr noundef %i.aa, ptr noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(34) %22, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  %i.bk = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ba, i32 noundef %i.h) #38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4llvm17ARMTargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutE.exit
  %.0124 = phi ptr [ %i.bk, %bb.e ], [ %i.k, %_ZNK4llvm17ARMTargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutE.exit ] ; 2 uses
  %.070 = phi ptr [ %i.bh, %bb.e ], [ %i.y, %_ZNK4llvm17ARMTargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutE.exit ] ; 4 uses
  %.069 = phi ptr [ %i.bj, %bb.e ], [ %i.aa, %_ZNK4llvm17ARMTargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutE.exit ] ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -32 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !334
  %i.bn = icmp ugt i32 %i.w, 1
  br i1 %i.bn, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.bo = udiv i32 %i.h, %i.w                     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0124, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !985
  %i.br = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.bq, i32 noundef %i.bo) #38
  br label %.lr.ph134

bb.g:                                             ; preds = %bb.f
  %.not135 = icmp eq i32 %i.w, 0
  br i1 %.not135, label %._crit_edge, label %.lr.ph134

.lr.ph134:                                        ; preds = %.thread, %bb.g
  %.071166 = phi i32 [ %i.bo, %.thread ], [ %i.h, %bb.g ] ; 5 uses
  %.1125165 = phi ptr [ %i.br, %.thread ], [ %.0124, %bb.g ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bs = load ptr, ptr %.in, align 8, !tbaa !54  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1125165, i64 24
  %i.bu = mul i32 %.071166, %4                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 3 uses
  %i.bz = icmp ugt i32 %.071166, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.cj = icmp eq i32 %4, 2
  %i.ck = select i1 %i.cj, i32 4002, i32 4003
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cs = ptrtoint ptr %19 to i64
  %29 = zext i32 %4 to i64                        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cy = add i32 %4, -2
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @"_ZZZNK4llvm17ARMTargetLowering21lowerInterleavedStoreEPNS_11InstructionEPNS_5ValueEPNS_17ShuffleVectorInstEjRKNS_5APIntEENK3$_0clES4_RNS_15SmallVectorImplIS4_EEE9StoreInts", i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dd = ptrtoint ptr %14 to i64
  %wide.trip.count = zext i32 %.071166 to i64
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, %bb.g
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #38
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.ak

bb.h:                                             ; preds = %.lr.ph134, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit
  %.063133 = phi i32 [ 0, %.lr.ph134 ], [ %i.gg, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit ] ; 3 uses
  %.064132 = phi ptr [ %i.bm, %.lr.ph134 ], [ %.165, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit ] ; 2 uses
  %.not74 = icmp eq i32 %.063133, 0
  br i1 %.not74, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = load ptr, ptr %i.bt, align 8, !tbaa !985
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  store i16 257, ptr %i.bv, align 8
  %i.df = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateConstGEP1_32EPNS_4TypeEPNS_5ValueEjRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef %i.de, ptr noundef %.064132, i32 noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(34) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.165 = phi ptr [ %i.df, %bb.i ], [ %.064132, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  store ptr %i.bw, ptr %24, align 8, !tbaa !54
  store i32 0, ptr %i.bx, align 8, !tbaa !375
  store i32 4, ptr %i.by, align 4, !tbaa !376
  %i.dg = mul i32 %i.bu, %.063133                 ; 2 uses
  br label %bb.x

bb.k:                                             ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.dh = load ptr, ptr %i.ci, align 8, !tbaa !98
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 398
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !205, !range !50, !noundef !51
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = load ptr, ptr %i.bl, align 8, !tbaa !334
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !788 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 8            ; 3 uses
  %i.dq = and i32 %i.dp, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.dq, 18  ; 2 uses
  br i1 %i.dk, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i, label %bb.m, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !808
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !353
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i: ; preds = %bb.m, %bb.l
  %i.du = phi i32 [ %.pre.i.i.i, %bb.m ], [ %i.dp, %bb.l ]
  %i.dv = lshr i32 %i.du, 8
  %i.dw = load ptr, ptr %i.ag, align 8, !tbaa !1014, !nonnull !51, !align !92
  %i.dx = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i32 noundef %i.dv) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store ptr %i.dx, ptr %i.a, align 16, !tbaa !353
  store ptr %.1125165, ptr %i.ct, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  store ptr %i.cu, ptr %10, align 8, !tbaa !54
  store i32 6, ptr %i.cw, align 4, !tbaa !376
  store ptr %.165, ptr %i.cu, align 8
  store i32 1, ptr %i.cv, align 8, !tbaa !375
  %i.dy = load ptr, ptr %24, align 8, !tbaa !54   ; 2 uses
  %i.dz = load i32, ptr %i.bx, align 8, !tbaa !375
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea
  %i.ec = call noundef ptr @_ZN4llvm15SmallVectorImplIPNS_5ValueEE6insertIPS2_vEES5_S5_T_S6_(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.cx, ptr noundef %i.dy, ptr noundef %i.eb) ; 0 uses
  %i.ed = load i16, ptr %i.m, align 2, !tbaa !740
  %i.ee = lshr i16 %i.ed, 1
  %i.ef = and i16 %i.ee, 63
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = load ptr, ptr %i.ag, align 8, !tbaa !1014, !nonnull !51, !align !92
  %i.ej = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #38
  %i.ek = and i64 %i.eh, 4294967295
  %i.el = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ej, i64 noundef %i.ek, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %i.em = load i32, ptr %i.cv, align 8, !tbaa !375 ; 2 uses
  %i.en = load i32, ptr %i.cw, align 4, !tbaa !376
  %.not.i10.i = icmp ult i32 %i.em, %i.en
  br i1 %.not.i10.i, label %bb.o, label %bb.n, !prof !455

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.el)
  %.pre39.i = load i32, ptr %i.cv, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit11.i

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i
  %i.eo = zext i32 %i.em to i64
  %i.ep = load ptr, ptr %10, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  store ptr %i.el, ptr %i.eq, align 1
  %i.er = load i32, ptr %i.cv, align 8, !tbaa !375
  %i.es = add i32 %i.er, 1                        ; 2 uses
  store i32 %i.es, ptr %i.cv, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit11.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit11.i: ; preds = %bb.o, %bb.n
  %i.et = phi i32 [ %.pre39.i, %bb.n ], [ %i.es, %bb.o ]
  %i.eu = load i32, ptr %i.da, align 4, !tbaa !324
  %i.ev = load ptr, ptr %10, align 8, !tbaa !54
  %i.ew = zext i32 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  store i16 257, ptr %i.db, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %13, align 8, !tbaa !1094
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !1095
  %i.ex = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef %i.eu, ptr nonnull %i.a, i64 2, ptr %i.ev, i64 %i.ew, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef.804") align 8 %12, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %13) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.ey = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.cu
  br i1 %i.ez, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit11.i
  call void @free(ptr noundef %i.ey) #38
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i: ; preds = %bb.p, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %"_ZZNK4llvm17ARMTargetLowering21lowerInterleavedStoreEPNS_11InstructionEPNS_5ValueEPNS_17ShuffleVectorInstEjRKNS_5APIntEENK3$_0clES4_RNS_15SmallVectorImplIS4_EE.exit"

bb.q:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i, label %bb.r, label %.lr.ph.i

bb.r:                                             ; preds = %bb.q
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !808
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !353
  %.phi.trans.insert.i.i13.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.pre.i.i14.i = load i32, ptr %.phi.trans.insert.i.i13.i, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %i.fd = phi i32 [ %.pre.i.i14.i, %bb.r ], [ %i.dp, %bb.q ]
  %i.fe = lshr i32 %i.fd, 8
  %i.ff = load ptr, ptr %i.ag, align 8, !tbaa !1014, !nonnull !51, !align !92
  %i.fg = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, i32 noundef %i.fe) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store ptr %i.fg, ptr %i.b, align 16, !tbaa !353
  store ptr %.1125165, ptr %i.cl, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  store ptr %i.cm, ptr %15, align 8, !tbaa !54
  store i32 6, ptr %i.co, align 4, !tbaa !376
  store ptr %.165, ptr %i.cm, align 8
  store i32 1, ptr %i.cn, align 8, !tbaa !375
  %i.fh = load ptr, ptr %24, align 8, !tbaa !54   ; 2 uses
  %i.fi = load i32, ptr %i.bx, align 8, !tbaa !375
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fj
  %i.fl = call noundef ptr @_ZN4llvm15SmallVectorImplIPNS_5ValueEE6insertIPS2_vEES5_S5_T_S6_(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull %i.cp, ptr noundef %i.fh, ptr noundef %i.fk) ; 0 uses
  br label %bb.t

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i
  %i.fm = load ptr, ptr %15, align 8, !tbaa !54   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.cm
  br i1 %i.fn, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit18.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.fm) #38
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit18.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit18.i: ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  br label %"_ZZNK4llvm17ARMTargetLowering21lowerInterleavedStoreEPNS_11InstructionEPNS_5ValueEPNS_17ShuffleVectorInstEjRKNS_5APIntEENK3$_0clES4_RNS_15SmallVectorImplIS4_EE.exit"

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i ] ; 2 uses
  %i.fo = load ptr, ptr %i.ag, align 8, !tbaa !1014, !nonnull !51, !align !92
  %i.fp = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.fo) #38
  %i.fq = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.fp, i64 noundef %indvars.iv.i, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %i.fr = load i32, ptr %i.cn, align 8, !tbaa !375 ; 2 uses
  %i.fs = load i32, ptr %i.co, align 4, !tbaa !376
  %.not.i19.i = icmp ult i32 %i.fr, %i.fs
  br i1 %.not.i19.i, label %bb.v, label %bb.u, !prof !455

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %i.fq)
  %.pre.i = load i32, ptr %i.cn, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i

bb.v:                                             ; preds = %bb.t
  %i.ft = zext i32 %i.fr to i64
  %i.fu = load ptr, ptr %15, align 8, !tbaa !54
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  store ptr %i.fq, ptr %i.fv, align 1
  %i.fw = load i32, ptr %i.cn, align 8, !tbaa !375
  %i.fx = add i32 %i.fw, 1                        ; 2 uses
  store i32 %i.fx, ptr %i.cn, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit20.i: ; preds = %bb.v, %bb.u
  %i.fy = phi i32 [ %.pre.i, %bb.u ], [ %i.fx, %bb.v ]
  %i.fz = load ptr, ptr %15, align 8, !tbaa !54
  %i.ga = zext i32 %i.fy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  store i16 257, ptr %i.cq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %18, align 8, !tbaa !1094
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !1095
  %i.gb = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef %i.ck, ptr nonnull %i.b, i64 2, ptr %i.fz, i64 %i.ga, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr noundef nonnull byval(%"class.llvm::ArrayRef.804") align 8 %17, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %18) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  %i.gc = load i32, ptr %i.cn, align 8, !tbaa !375
  %i.gd = add i32 %i.gc, -1
  store i32 %i.gd, ptr %i.cn, align 8, !tbaa !375
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond146.not.a = icmp eq i64 %indvars.iv.next.i, %29
  br i1 %exitcond146.not.a, label %._crit_edge.i, label %bb.t, !llvm.loop !3015

"_ZZNK4llvm17ARMTargetLowering21lowerInterleavedStoreEPNS_11InstructionEPNS_5ValueEPNS_17ShuffleVectorInstEjRKNS_5APIntEENK3$_0clES4_RNS_15SmallVectorImplIS4_EE.exit": ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.ge = load ptr, ptr %24, align 8, !tbaa !54   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.bw
  br i1 %i.gf, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %"_ZZNK4llvm17ARMTargetLowering21lowerInterleavedStoreEPNS_11InstructionEPNS_5ValueEPNS_17ShuffleVectorInstEjRKNS_5APIntEENK3$_0clES4_RNS_15SmallVectorImplIS4_EE.exit"
  call void @free(ptr noundef %i.ge) #38
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit:  ; preds = %"_ZZNK4llvm17ARMTargetLowering21lowerInterleavedStoreEPNS_11InstructionEPNS_5ValueEPNS_17ShuffleVectorInstEjRKNS_5APIntEENK3$_0clES4_RNS_15SmallVectorImplIS4_EE.exit", %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.gg = add nuw i32 %.063133, 1                 ; 2 uses
  %exitcond147.not = icmp eq i32 %i.gg, %i.w
  br i1 %exitcond147.not, label %._crit_edge, label %bb.h, !llvm.loop !3016

bb.x:                                             ; preds = %bb.j, %bb.aj
  %indvars.iv140 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next141, %bb.aj ] ; 2 uses
  %i.gh = trunc nuw i64 %indvars.iv140 to i32
  %i.gi = add i32 %i.dg, %i.gh                    ; 2 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !324
  %i.gm = icmp sgt i32 %i.gl, -1
  br i1 %i.gm, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.x
  br i1 %i.bz, label %.lr.ph, label %.loopexit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.gn = load i32, ptr %i.gk, align 4, !tbaa !324
  call void @_ZN4llvm20createSequentialMaskEjjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.836") align 8 %25, i32 noundef %i.gn, i32 noundef %.071166, i32 noundef 0) #38
  %i.go = load ptr, ptr %25, align 8, !tbaa !54   ; 2 uses
  %i.gp = load i32, ptr %i.ce, align 8, !tbaa !375
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  store i16 257, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.gr = load ptr, ptr %i.ah, align 8, !tbaa !1081, !nonnull !51, !align !92 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !42
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef %.070, ptr noundef %.069, ptr %i.go, i64 %i.gq) #38, !inline_history !17 ; 2 uses
  %.not.not.i = icmp eq ptr %i.gv, null
  br i1 %.not.not.i, label %bb.z, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.z:                                             ; preds = %bb.y
  %i.gw = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store i16 257, ptr %i.cg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.gw, ptr noundef %.070, ptr noundef %.069, ptr %i.go, i64 %i.gq, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %9) #38
  %i.gx = load ptr, ptr %i.ai, align 8, !tbaa !1082, !nonnull !51, !align !92 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.at, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !42
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #38, !inline_history !18
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef nonnull %i.gw) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %bb.y, %bb.z
  %.1.i = phi ptr [ %i.gw, %bb.z ], [ %i.gv, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.hb = load i32, ptr %i.bx, align 8, !tbaa !375 ; 2 uses
  %i.hc = load i32, ptr %i.by, align 4, !tbaa !376
  %.not.i75 = icmp ult i32 %i.hb, %i.hc
  br i1 %.not.i75, label %bb.ab, label %bb.aa, !prof !455

bb.aa:                                            ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %.1.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

bb.ab:                                            ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %i.hd = zext i32 %i.hb to i64
  %i.he = load ptr, ptr %24, align 8, !tbaa !54
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hd
  store ptr %.1.i, ptr %i.hf, align 1
  %i.hg = load i32, ptr %i.bx, align 8, !tbaa !375
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.bx, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  %i.hi = load ptr, ptr %25, align 8, !tbaa !54   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.ch
  br i1 %i.hj, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  call void @free(ptr noundef %i.hi) #38
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3017

.lr.ph:                                           ; preds = %.preheader, %bb.ad
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ 1, %.preheader ] ; 2 uses
  %i.hk = trunc nuw i64 %indvars.iv to i32
  %i.hl = add i32 %i.dg, %i.hk                    ; 2 uses
  %i.hm = mul i32 %i.hl, %4
  %i.hn = add i32 %i.hm, %i.gi
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !324 ; 2 uses
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %bb.ad, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.hs = sub i32 %i.hq, %i.hl
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.preheader, %bb.ae
  %.2 = phi i32 [ %i.hs, %bb.ae ], [ 0, %.preheader ], [ 0, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  call void @_ZN4llvm20createSequentialMaskEjjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.836") align 8 %27, i32 noundef %.2, i32 noundef %.071166, i32 noundef 0) #38
  %i.ht = load ptr, ptr %27, align 8, !tbaa !54   ; 2 uses
  %i.hu = load i32, ptr %i.ca, align 8, !tbaa !375
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  store i16 257, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.hw = load ptr, ptr %i.ah, align 8, !tbaa !1081, !nonnull !51, !align !92 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !42
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 112
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = call noundef ptr %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef %.070, ptr noundef %.069, ptr %i.ht, i64 %i.hv) #38, !inline_history !17 ; 2 uses
  %.not.not.i76 = icmp eq ptr %i.ia, null
  br i1 %.not.not.i76, label %bb.af, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit81

bb.af:                                            ; preds = %.loopexit
  %i.ib = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store i16 257, ptr %i.cc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.ib, ptr noundef %.070, ptr noundef %.069, ptr %i.ht, i64 %i.hv, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %7) #38
  %i.ic = load ptr, ptr %i.ai, align 8, !tbaa !1082, !nonnull !51, !align !92 ; 2 uses
  %.sroa.0.0.copyload.i.i78 = load ptr, ptr %i.at, align 8
  %.sroa.2.0.copyload.i.i80 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !42
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull %i.ib, ptr noundef nonnull align 8 dereferenceable(34) %28, ptr %.sroa.0.0.copyload.i.i78, i64 %.sroa.2.0.copyload.i.i80) #38, !inline_history !18
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef nonnull %i.ib) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit81

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit81: ; preds = %.loopexit, %bb.af
  %.1.i77 = phi ptr [ %i.ib, %bb.af ], [ %i.ia, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ig = load i32, ptr %i.bx, align 8, !tbaa !375 ; 2 uses
  %i.ih = load i32, ptr %i.by, align 4, !tbaa !376
  %.not.i82 = icmp ult i32 %i.ig, %i.ih
  br i1 %.not.i82, label %bb.ah, label %bb.ag, !prof !455

bb.ag:                                            ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit81
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %.1.i77)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit83

bb.ah:                                            ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit81
  %i.ii = zext i32 %i.ig to i64
  %i.ij = load ptr, ptr %24, align 8, !tbaa !54
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ii
  store ptr %.1.i77, ptr %i.ik, align 1
  %i.il = load i32, ptr %i.bx, align 8, !tbaa !375
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.bx, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit83

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit83: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  %i.in = load ptr, ptr %27, align 8, !tbaa !54   ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.cd
  br i1 %i.io, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit84, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit83
  call void @free(ptr noundef %i.in) #38
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit84

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit84:         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit83, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit84, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %29
  br i1 %exitcond144.not, label %bb.k, label %bb.x, !llvm.loop !3018

bb.ak:                                            ; preds = %._crit_edge, %bb.b, %bb.a
  %.167 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %._crit_edge ]
  ret i1 %.167
}

declare void @_ZN4llvm20createSequentialMaskEjjj(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.836") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZNK4llvm17ARMTargetLowering29getABIAlignmentForCallingConvEPNS_4TypeERKNS_10DataLayoutE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(912) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %2, ptr noundef %1) #38 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 254
  %spec.select.i = icmp eq i32 %i.d, 18
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i6 = load i8, ptr %i.e, align 8
  %.sroa.0.0.copyload4.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %.sroa.0.0.copyload.i6, i8 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload4.sroa.speculated, %bb.b ], [ %i.a, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering41functionArgumentNeedsConsecutiveRegistersEPNS_4TypeEjbRKNS_10DataLayoutE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call noundef i32 @_ZNK4llvm17ARMTargetLowering23getEffectiveCallingConvEjb(ptr noundef nonnull align 8 dereferenceable(518466) %0, i32 noundef %2, i1 noundef zeroext %3)
  %.not = icmp eq i32 %i.c, 68
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i32 0, ptr %i.a, align 4, !tbaa !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 0, ptr %i.b, align 8, !tbaa !468
  %i.d = call fastcc noundef zeroext i1 @_ZL22isHomogeneousAggregatePN4llvm4TypeER10HABaseTypeRm(ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 255
  %i.h = icmp eq i32 %i.g, 17
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !808
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !353
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 255
  %i.o = icmp eq i32 %i.n, 12
  %i.p = or i1 %i.d, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i1 [ %i.d, %bb.b ], [ %i.p, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %i.q, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZL22isHomogeneousAggregatePN4llvm4TypeER10HABaseTypeRm(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #18 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = and i32 %i.d, 255                        ; 2 uses
  %i.f = icmp ne i32 %i.e, 16
  %.not92 = icmp eq ptr %0, null                  ; 3 uses
  %.not = or i1 %.not92, %i.f
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3020
  %.not7395.not = icmp eq i32 %i.h, 0
  br i1 %.not7395.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 0, ptr %i.a, align 8, !tbaa !468
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !808
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !353
  %i.m = call fastcc noundef zeroext i1 @_ZL22isHomogeneousAggregatePN4llvm4TypeER10HABaseTypeRm(ptr noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !tbaa !468
  %i.o = load i64, ptr %2, align 8, !tbaa !468
  %i.p = add i64 %i.o, %i.n
  store i64 %i.p, ptr %2, align 8, !tbaa !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.g, align 4, !tbaa !3020
  %i.r = zext i32 %i.q to i64
  %.not73 = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %.not73, label %bb.b, label %.loopexit, !llvm.loop !3019

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %.critedge76

bb.d:                                             ; preds = %bb.a
  %i.s = icmp ne i32 %i.e, 17
  %.not67 = or i1 %.not92, %i.s
  br i1 %.not67, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 0, ptr %i.b, align 8, !tbaa !468
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1003
  %i.v = call fastcc noundef zeroext i1 @_ZL22isHomogeneousAggregatePN4llvm4TypeER10HABaseTypeRm(ptr noundef %i.u, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.v, label %bb.f, label %.critedge78

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !468
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1002
  %i.z = mul i64 %i.y, %i.w
  %i.aa = load i64, ptr %2, align 8, !tbaa !468
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %2, align 8, !tbaa !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %trunc = trunc i32 %i.d to i8
  switch i8 %trunc, label %bb.l [
    i8 2, label %bb.h
    i8 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %1, align 4, !tbaa !1104
  %switch = icmp ult i32 %i.ac, 2
  br i1 %switch, label %bb.i, label %.critedge76

bb.i:                                             ; preds = %bb.h
  store i64 1, ptr %2, align 8, !tbaa !468
  store i32 1, ptr %1, align 4, !tbaa !1104
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %1, align 4, !tbaa !1104
  switch i32 %i.ad, label %.critedge76 [
    i32 0, label %bb.k
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  store i64 1, ptr %2, align 8, !tbaa !468
  store i32 2, ptr %1, align 4, !tbaa !1104
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.ae = and i32 %i.d, 254
  %spec.select.i.i.i.i.i.i.i.i = icmp ne i32 %i.ae, 18
  %.not68 = or i1 %.not92, %spec.select.i.i.i.i.i.i.i.i
  br i1 %.not68, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 1, ptr %2, align 8, !tbaa !468
  %i.af = load i32, ptr %1, align 4, !tbaa !1104
  switch i32 %i.af, label %.loopexit [
    i32 1, label %.critedge76
    i32 2, label %.critedge76
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ag = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #39
  %.fca.0.extract9 = extractvalue { i64, i8 } %i.ag, 0
  %i.ah = icmp eq i64 %.fca.0.extract9, 64
  br label %.critedge76

bb.o:                                             ; preds = %bb.m
  %i.ai = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #39
end_hunk_0
