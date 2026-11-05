Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/lldb-dap?download=true
inline.NumInlined: 3621
inline.NumDeleted: 2196
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm11raw_ostreamlsENS_9StringRefE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2) #28
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %1, i64 %2, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %2
  store ptr %i.k, ptr %i.c, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4llvm3opt7ArgList15getLastArgValueENS0_12OptSpecifierENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(176), i32, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZL25LaunchRunInTerminalTargetRN4llvm3opt3ArgENS_9StringRefEmS3_PPci(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr %2, i64 %3, i64 noundef %4, ptr noundef byval(%"class.llvm::StringRef") align 8 %5, ptr noundef %6) unnamed_addr #3 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::tuple.451", align 8   ; 9 uses
  %11 = alloca %"class.llvm::support::detail::FormatFunctor.145", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.llvm::SmallDenseMap.436", align 8 ; 14 uses
  %14 = alloca %"struct.std::pair.441", align 8   ; 8 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::formatv_object.450", align 8 ; 16 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %20 = alloca %"class.llvm::SmallVector.30", align 8 ; 14 uses
  %21 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %22 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %23 = alloca %"class.lldb_dap::RunInTerminalLauncherCommChannel", align 8 ; 9 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %25 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %26 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.85) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #28, !inline_history !417
  %i.e = shl i64 %i.d, 32
  %i.f = ashr exact i64 %i.e, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 20000, %bb.a ]
  %.not17 = icmp eq i64 %4, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (i32, ...) @prctl(i32 noundef 1499557217, i64 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN12lldb_private10FileSystem10InitializeIJEEEvDpOT_()
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !113
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.an, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.l = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.l, ptr %20, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 2 uses
  store i32 3, ptr %i.n, align 4, !tbaa !464
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %20, i8 noundef signext 58, i32 noundef -1, i1 noundef zeroext true) #28
  %i.o = load i32, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.p, i64 3) ; 3 uses
  %i.q = icmp ugt i32 %i.o, 2
  br i1 %i.q, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.n, align 4, !tbaa !464
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ugt i64 %.sroa.speculated, %i.s
  br i1 %i.t, label %bb.h, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.l, i64 noundef %.sroa.speculated, i64 noundef 16) #28
  %.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !55
  %.pre13.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.p, %bb.g ], [ %.pre13.i.i, %bb.h ] ; 3 uses
  %.not11.i.i = icmp samesign eq i64 %.sroa.speculated, %.pre-phi.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i
  %i.u = load ptr, ptr %20, align 8, !tbaa !48
  %i.v = getelementptr [16 x i8], ptr %i.u, i64 %.pre-phi.i.i
  %i.w = shl nuw nsw i64 %.pre-phi.i.i, 4
  %i.x = sub nsw i64 48, %i.w
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.x, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i
  store i32 3, ptr %i.m, align 8, !tbaa !55
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.sink.split.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !465
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  store i32 1, ptr %13, align 8, !noalias !465
  store i32 0, ptr %i.y, align 8, !noalias !465
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 40
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.v
  %.pre.i = load i32, ptr %13, align 8, !noalias !466 ; 2 uses
  %i.af = and i32 %.pre.i, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0          ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !466
  %i.ai = select i1 %.not.i.i.i.i.i, ptr %i.ah, ptr %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !466
  %i.al = select i1 %.not.i.i.i.i.i, ptr %i.ak, ptr %i.y ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.an = load i32, ptr %i.am, align 8, !noalias !466
  %i.ao = select i1 %.not.i.i.i.i.i, i32 %i.an, i32 4 ; 2 uses
  %i.ap = icmp ult i32 %.pre.i, 2
  %i.aq = zext i32 %i.ao to i64                   ; 3 uses
  %.idx141.i = mul nuw nsw i64 %i.aq, 48          ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.ao, 0
  %or.cond.i = select i1 %i.ap, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm5ErrorD2Ev.exit37.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ar = add nuw nsw i64 %i.aq, 31
  %i.as = lshr i64 %i.ar, 5                       ; 4 uses
  %i.at = load i32, ptr %i.al, align 4, !tbaa !26, !noalias !467 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_9StringRefE7FDGroupLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %i.av = icmp eq i64 %i.as, 1
  br i1 %i.av, label %_ZN4llvm5ErrorD2Ev.exit37.i, label %.lr.ph

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.aw = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %i.as
  br i1 %i.ax, label %_ZN4llvm5ErrorD2Ev.exit37.i, label %.lr.ph, !llvm.loop !424

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.ay = phi i64 [ %i.aw, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26, !noalias !467 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !424

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph
  %i.bc = mul i64 %i.ay, 1536
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_9StringRefE7FDGroupLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_9StringRefE7FDGroupLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bc, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.at, %bb.i ], [ %i.ba, %._crit_edge.i.loopexit.i.i.i ]
  %i.bd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow.i = mul nuw nsw i32 %i.bd, 48
  %.idx.i = zext nneg i32 %narrow.i to i64
  %i.be = add i64 %.012.lcssa.i.i.i.i, %.idx.i    ; 2 uses
  %.not77.i = icmp eq i64 %i.be, %.idx141.i
  br i1 %.not77.i, label %_ZN4llvm5ErrorD2Ev.exit37.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_9StringRefE7FDGroupLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E5beginEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  br label %bb.w

bb.j:                                             ; preds = %bb.v, %.lr.ph.i
  %.075.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dk, %bb.v ] ; 5 uses
  %i.bh = load ptr, ptr %20, align 8, !tbaa !48, !noalias !465
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.075.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !113, !noalias !465
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = call noundef ptr @_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapINS_9StringRefE7FDGroupLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E6doFindIS2_EEPKS8_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %i.bi), !noalias !468 ; 5 uses
  %.not.not.i.i.i = icmp eq ptr %i.bm, null       ; 4 uses
  %i.bn = load i32, ptr %13, align 8, !noalias !468
  %i.bo = and i32 %i.bn, 1
  %.not.i.i.i.i5.i.i.i = icmp eq i32 %i.bo, 0     ; 2 uses
  %i.bp = load ptr, ptr %i.z, align 8, !noalias !468
  %i.bq = select i1 %.not.i.i.i.i5.i.i.i, ptr %i.bp, ptr %i.z
  %i.br = load i32, ptr %i.aa, align 8, !noalias !468
  %i.bs = select i1 %.not.i.i.i.i5.i.i.i, i32 %i.br, i32 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %i.bt ; 5 uses
  %..i.i.i = select i1 %.not.not.i.i.i, ptr %i.bu, ptr %i.bm ; 3 uses
  %i.bv = icmp eq ptr %..i.i.i, %i.bu
  br i1 %i.bv, label %_ZNSt4pairIN4llvm9StringRefE7FDGroupEC2IS1_S2_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS6_S7_EEEbE4typeELb1EEERKS1_RKS2_.exit.i, label %bb.m

_ZNSt4pairIN4llvm9StringRefE7FDGroupEC2IS1_S2_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS6_S7_EEEbE4typeELb1EEERKS1_RKS2_.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !465
  %i.bw = load ptr, ptr %20, align 8, !tbaa !48, !noalias !465
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.075.i
  %i.by = trunc nuw i64 %.075.i to i32            ; 2 uses
  %i.bz = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #31, !noalias !465 ; 3 uses
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !26, !noalias !465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !57, !noalias !465
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.ab, i8 0, i64 24, i1 false), !noalias !465
  %i.ca = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #31, !noalias !465 ; 3 uses
  store ptr %i.ca, ptr %i.ab, align 8, !tbaa !115, !noalias !465
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  store ptr %i.cb, ptr %i.ad, align 8, !tbaa !116, !noalias !465
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !26, !noalias !465
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !26, !noalias !465
  store ptr %i.cb, ptr %i.ac, align 8, !tbaa !469, !noalias !465
  store i16 0, ptr %i.ae, align 8, !noalias !465
  %i.cd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_9StringRefE7FDGroupLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E24lookupOrInsertIntoBucketIS2_JS3_EEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(26) %i.ab), !noalias !470
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.cd, 0
  %i.ce = load ptr, ptr %i.ab, align 8, !tbaa !115, !noalias !465 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7FDGroupD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt4pairIN4llvm9StringRefE7FDGroupEC2IS1_S2_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS6_S7_EEEbE4typeELb1EEERKS1_RKS2_.exit.i
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !116, !noalias !465
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #29, !noalias !465
  br label %_ZN7FDGroupD2Ev.exit.i

_ZN7FDGroupD2Ev.exit.i:                           ; preds = %bb.l, %_ZNSt4pairIN4llvm9StringRefE7FDGroupEC2IS1_S2_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS6_S7_EEEbE4typeELb1EEERKS1_RKS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 4) #29, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28, !noalias !465
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.m:                                             ; preds = %bb.k
  %..i.i.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.not.i.i.i, ptr %i.bu, ptr %i.bm
  %..i.i.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %..i.i.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16 ; 2 uses
  %i.cj = trunc nuw i64 %.075.i to i32            ; 4 uses
  %..i.i.sroa.sel90.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.not.i.i.i, ptr %i.bu, ptr %i.bm
  %..i.i.sroa.sel90.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %..i.i.sroa.sel90.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24 ; 3 uses
  %i.ck = load ptr, ptr %..i.i.sroa.sel90.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !469, !noalias !465 ; 4 uses
  %..i.i.sroa.sel93.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.not.i.i.i, ptr %i.bu, ptr %i.bm
  %..i.i.sroa.sel93.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %..i.i.sroa.sel93.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32 ; 3 uses
  %i.cl = load ptr, ptr %..i.i.sroa.sel93.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !116, !noalias !465
  %.not.i.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !26, !noalias !465
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.cm, ptr %..i.i.sroa.sel90.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !469, !noalias !465
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %..i.i.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !115, !noalias !465 ; 4 uses
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 5 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775804
  br i1 %i.cr, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #30, !noalias !465
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cs = ashr exact i64 %i.cq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 2305843009213693951)
  %i.cw = select i1 %i.cu, i64 2305843009213693951, i64 %i.cv ; 3 uses
  %.not.i.i.i.i30.i = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i30.i)
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #31, !noalias !465 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cq ; 2 uses
  store i32 %i.cj, ptr %i.cz, align 4, !tbaa !26, !noalias !465
  %i.da = icmp sgt i64 %i.cq, 0
  br i1 %i.da, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cy, ptr align 4 %i.cn, i64 %i.cq, i1 false), !noalias !465
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.not.i17.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.dc = load ptr, ptr %..i.i.sroa.sel93.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !116, !noalias !465
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.de) #29, !noalias !465
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.cy, ptr %..i.i.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !115, !noalias !465
  store ptr %i.db, ptr %..i.i.sroa.sel90.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !469, !noalias !465
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.df, ptr %..i.i.sroa.sel93.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !116, !noalias !465
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.n, %_ZN7FDGroupD2Ev.exit.i
  %trunc.pre-phi.i = phi i32 [ %i.cj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.cj, %bb.n ], [ %i.by, %_ZN7FDGroupD2Ev.exit.i ]
  %.sroa.061.0.i = phi ptr [ %..i.i.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %..i.i.i, %bb.n ], [ %.fca.0.extract.i.i.i, %_ZN7FDGroupD2Ev.exit.i ] ; 4 uses
  switch i32 %trunc.pre-phi.i, label %bb.u [
    i32 0, label %bb.s
    i32 1, label %bb.t
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i, i64 40
  store i8 1, ptr %i.dg, align 8, !tbaa !476, !noalias !465
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i, i64 41
  store i8 1, ptr %i.dh, align 1, !tbaa !477, !noalias !465
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i, i64 40
  store i8 1, ptr %i.di, align 8, !tbaa !476, !noalias !465
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i, i64 41
  store i8 1, ptr %i.dj, align 1, !tbaa !477, !noalias !465
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.j
  %i.dk = add nuw nsw i64 %.075.i, 1              ; 2 uses
  %i.dl = load i32, ptr %i.m, align 8, !tbaa !55, !noalias !465
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp samesign ult i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.j, label %._crit_edge.i, !llvm.loop !433

bb.w:                                             ; preds = %_ZN4llvm16DenseMapIteratorINS_9StringRefE7FDGroupNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit.i, %.lr.ph80.i
  %.pn.i = phi i64 [ %i.be, %.lr.ph80.i ], [ %i.ii, %_ZN4llvm16DenseMapIteratorINS_9StringRefE7FDGroupNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S2_EELb0EEppEv.exit.i ] ; 2 uses
  %.sroa.040.078.i = getelementptr i8, ptr %i.ai, i64 %.pn.i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28, !noalias !465
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.040.078.i, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.040.078.i, align 8, !tbaa !33, !noalias !465 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.040.078.i, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !38, !noalias !465 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.040.078.i, i64 40 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !478, !range !24, !noalias !479, !noundef !25
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.040.078.i, i64 41 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !range !24, !noalias !479
  %i.du = trunc nuw i8 %i.dt to i1
  %or.cond.i.i = select i1 %i.dr, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %bb.x, label %_ZN4llvm5ErrorD2Ev.exit35.i

bb.x:                                             ; preds = %bb.w
  %i.dv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private10FileSystem8InstanceEv() #28, !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !479
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %.not.i.i31.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  store ptr %i.bf, ptr %12, align 8, !tbaa !41, !alias.scope !480, !noalias !479
  br i1 %.not.i.i31.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr %i.bg, align 8, !tbaa !22, !alias.scope !480, !noalias !479
  store i8 0, ptr %i.bf, align 8, !tbaa !31, !alias.scope !480, !noalias !479
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !481
  store i64 %.sroa.2.0.copyload.i, ptr %i.b, align 8, !tbaa !38, !noalias !481
  %i.dw = icmp ugt i64 %.sroa.2.0.copyload.i, 15
  br i1 %i.dw, label %bb.aa, label %._crit_edge.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #28, !noalias !479 ; 2 uses
  store ptr %i.dx, ptr %12, align 8, !tbaa !21, !alias.scope !480, !noalias !479
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !38, !noalias !481
  store i64 %i.dy, ptr %i.bf, align 8, !tbaa !31, !alias.scope !480, !noalias !479
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.aa, %bb.z
  %i.dz = phi ptr [ %i.dx, %bb.aa ], [ %i.bf, %bb.z ] ; 2 uses
  switch i64 %.sroa.2.0.copyload.i, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ea = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !31, !noalias !479
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !31, !noalias !479
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr nonnull readonly align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false), !noalias !479
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i.i
  %i.eb = load i64, ptr %i.b, align 8, !tbaa !38, !noalias !481 ; 2 uses
  store i64 %i.eb, ptr %i.bg, align 8, !tbaa !22, !alias.scope !480, !noalias !479
  %i.ec = load ptr, ptr %12, align 8, !tbaa !21, !alias.scope !480, !noalias !479
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  store i8 0, ptr %i.ed, align 1, !tbaa !31, !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !481
  %.pre.i.i25 = load ptr, ptr %12, align 8, !tbaa !21, !noalias !479
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i, %bb.y
  %i.ee = phi ptr [ %i.bf, %bb.y ], [ %.pre.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i ]
  %i.ef = load i8, ptr %i.dp, align 8, !tbaa !478, !range !24, !noalias !479, !noundef !25
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = load i8, ptr %i.ds, align 1, !range !24, !noalias !479
  %i.ei = trunc nuw i8 %i.eh to i1
  %..i.i32.i = select i1 %i.ei, i32 322, i32 256
  %.0.i.i.i = select i1 %i.eg, i32 %..i.i32.i, i32 833
  %i.ej = call noundef i32 @_ZN12lldb_private10FileSystem4OpenEPKcii(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef %i.ee, i32 noundef %.0.i.i.i, i32 noundef 438) #28, !noalias !479 ; 4 uses
  %i.ek = load ptr, ptr %12, align 8, !tbaa !21, !noalias !479 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.bf
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i
  %i.em = load i64, ptr %i.bf, align 8, !tbaa !31, !noalias !479
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #29, !noalias !479
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !479
  %i.eo = icmp eq i32 %i.ej, -1
  br i1 %i.eo, label %_ZL14RedirectToFileRK7FDGroupN4llvm9StringRefE.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ep = load ptr, ptr %i.do, align 8, !tbaa !77, !noalias !479 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.040.078.i, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !77, !noalias !479 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.ep, %i.er
  br i1 %.not31.i.i, label %_ZN4llvm5ErrorD2Ev.exit17.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.af
  %.sroa.021.032.i.i = phi ptr [ %i.ew, %bb.af ], [ %i.ep, %bb.ad ] ; 2 uses
  %i.es = load i32, ptr %.sroa.021.032.i.i, align 4, !tbaa !26, !noalias !479 ; 2 uses
  %i.et = icmp eq i32 %i.ej, %i.es
  br i1 %i.et, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.eu = call i32 @dup2(i32 noundef %i.ej, i32 noundef %i.es) #28, !noalias !479
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %_ZL14RedirectToFileRK7FDGroupN4llvm9StringRefE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ew, %i.er
  br i1 %.not.i.i, label %_ZN4llvm5ErrorD2Ev.exit17.i.i, label %.lr.ph.i.i

_ZN4llvm5ErrorD2Ev.exit17.i.i:                    ; preds = %bb.af, %bb.ad
  %i.ex = call i32 @close(i32 noundef %i.ej) #28, !noalias !479 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit35.i

_ZL14RedirectToFileRK7FDGroupN4llvm9StringRefE.exit.i: ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ey = tail call ptr @__errno_location() #33
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !26, !noalias !479
  %i.fa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #33
  call void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %15, i32 %i.ez, ptr nonnull %i.fa) #28, !noalias !465
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !61, !noalias !465 ; 2 uses
  %.not69.i = icmp eq ptr %.pr.i, null
  br i1 %.not69.i, label %_ZN4llvm5ErrorD2Ev.exit35.i, label %bb.ag

bb.ag:                                            ; preds = %_ZL14RedirectToFileRK7FDGroupN4llvm9StringRefE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28, !noalias !465
  store ptr %.pr.i, ptr %19, align 8, !tbaa !61, !noalias !465
  store ptr null, ptr %15, align 8, !tbaa !61, !noalias !465
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nofree noundef nonnull align 8 dereferenceable(8) %19) #28, !noalias !465
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !484
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !484
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.fb, ptr %11, align 8, !tbaa !41, !noalias !484
  %i.fc = load ptr, ptr %18, align 8, !tbaa !21, !noalias !484 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i.i.i

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i.i: ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !22, !noalias !484 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  %i.fi = add nuw nsw i64 %i.fg, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fb, ptr noundef nonnull align 8 dereferenceable(1) %i.fd, i64 %i.fi, i1 false), !noalias !484
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.fd, ptr %18, align 8, !tbaa !21, !noalias !484
  store i64 0, ptr %i.ff, align 8, !tbaa !22, !noalias !484
  store i8 0, ptr %i.fd, align 8, !tbaa !31, !noalias !484
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.fk, ptr %10, align 8, !tbaa !41, !alias.scope !485, !noalias !484
  br label %bb.ah

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i.i.i: ; preds = %bb.ag
  %i.fl = load i64, ptr %i.fd, align 8, !tbaa !31, !noalias !484 ; 2 uses
  store i64 %i.fl, ptr %i.fb, align 8, !tbaa !31, !noalias !484
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !22, !noalias !484 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.fd, ptr %18, align 8, !tbaa !21, !noalias !484
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !22, !noalias !484
  store i8 0, ptr %i.fd, align 8, !tbaa !31, !noalias !484
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.fn, ptr %10, align 8, !tbaa !41, !alias.scope !486, !noalias !484
end_hunk_0
