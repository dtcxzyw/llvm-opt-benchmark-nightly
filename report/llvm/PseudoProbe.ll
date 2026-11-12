Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PseudoProbe?download=true
inline.NumInlined: 374
inline.NumDeleted: 297
begin_hunk_0_@_ZN4llvm12extractProbeERKNS_11InstructionE:bb.a
  store i32 %.0.i.i.i.sink, ptr %0, align 4, !tbaa !49
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink34, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !49
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink33, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !49
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !49
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sink31, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !51
  br label %_ZL29extractProbeFromDiscriminatorRKN4llvm11InstructionE.exit

_ZL29extractProbeFromDiscriminatorRKN4llvm11InstructionE.exit: ; preds = %_ZL29extractProbeFromDiscriminatorRKN4llvm11InstructionE.exit.sink.split, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_11InstructionEEEbRKT0_.exit, %bb.a, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i.i, %_ZNK4llvm10DILocation8getScopeEv.exit.i.i.i, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_11InstructionEEEbRKT0_.exit.thread
  %.sink = phi i8 [ 0, %bb.a ], [ 0, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_11InstructionEEEbRKT0_.exit.thread ], [ 0, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i.i ], [ 0, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_11InstructionEEEbRKT0_.exit ], [ 0, %_ZNK4llvm10DILocation8getScopeEv.exit.i.i.i ], [ 1, %_ZL29extractProbeFromDiscriminatorRKN4llvm11InstructionE.exit.sink.split ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sink, ptr %i.ck, align 4, !tbaa !53
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26setProbeDistributionFactorERNS_11InstructionEf(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.llvm::IRBuilder", align 8   ; 18 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !13
  switch i8 %i.a, label %.critedge [
    i8 88, label %bb.b
    i8 42, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread
    i8 36, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 -32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp eq i8 %i.d, 14
  br i1 %i.e, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 8192
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN4llvm14CastIsPossibleINS_15PseudoProbeInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i

_ZN4llvm14CastIsPossibleINS_15PseudoProbeInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = icmp eq i32 %i.j, 312
  br i1 %i.k, label %_ZN4llvm8dyn_castINS_15PseudoProbeInstENS_11InstructionEEEDcPT0_.exit, label %bb.f

_ZN4llvm8dyn_castINS_15PseudoProbeInstENS_11InstructionEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_15PseudoProbeInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58, !nonnull !41, !align !42
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  store ptr null, ptr %2, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.o, ptr %i.r, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.p, ptr %i.s, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.t, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i8 0, ptr %i.v, align 4, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 69
  store i8 2, ptr %i.w, align 1, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 70
  store i8 7, ptr %i.x, align 2, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.o, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.p, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.aa, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #7
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !84
  store i64 %i.af, ptr %2, align 8, !tbaa !84
  %i.ag = fcmp olt float %1, 1.000000e+00
  %i.ah = fmul nnan float %1, f0x5F800000
  %i.ai = fptoui float %i.ah to i64
  %.0 = select i1 %i.ag, i64 %i.ai, i64 -1        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 268435455
  %i.am = zext nneg i32 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [32 x i8], ptr %0, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  %i.au = icmp ult i32 %i.at, 65
  %i.av = load ptr, ptr %i.ar, align 8
  %spec.select.i.i38 = select i1 %i.au, ptr %i.ar, ptr %i.av
  %.0.i.i39 = load i64, ptr %spec.select.i.i38, align 8, !tbaa !27
  %.not37 = icmp eq i64 %.0, %.0.i.i39
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_15PseudoProbeInstENS_11InstructionEEEDcPT0_.exit
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !85, !nonnull !41, !align !42
  %i.ax = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #7
  %i.ay = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ax, i64 noundef %.0, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %i.az = call noundef zeroext i1 @_ZN4llvm4User17replaceUsesOfWithEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.aq, ptr noundef %i.ay) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm8dyn_castINS_15PseudoProbeInstENS_11InstructionEEEDcPT0_.exit
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #7
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %.critedge

bb.f:                                             ; preds = %_ZN4llvm14CastIsPossibleINS_15PseudoProbeInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i
  %.pr = load i8, ptr %i.c, align 8, !tbaa !13
  %i.ba = icmp eq i8 %.pr, 14
  br i1 %i.ba, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread

_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = and i32 %i.bc, 8192
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread, label %.critedge

_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %bb.a, %bb.f, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30 ; 4 uses
  %.not47 = icmp eq ptr %i.bf, null
  br i1 %.not47, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = and i64 %i.bh, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !32
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bl = lshr i64 %i.bh, 2
  %i.bm = and i64 %i.bl, 15
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bn
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i

_ZNK4llvm10DILocation8getScopeEv.exit.i:          ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bo, %bb.i ], [ %i.bk, %bb.h ]
  %i.bp = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !37
  %.not.i = icmp eq i8 %i.bq, 20
  br i1 %.not.i, label %_ZNK4llvm10DILocation16getDiscriminatorEv.exit, label %.critedge

_ZNK4llvm10DILocation16getDiscriminatorEv.exit:   ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !38 ; 6 uses
  %i.bt = and i32 %i.bs, 7
  %i.bu = icmp eq i32 %i.bt, 7
  %i.bv = icmp ugt i32 %i.bs, 7
  %i.bw = and i1 %i.bv, %i.bu
  br i1 %i.bw, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK4llvm10DILocation16getDiscriminatorEv.exit
  %i.bx = and i32 %i.bs, 268435456
  %.not.i40 = icmp ne i32 %i.bx, 0                ; 2 uses
  %i.by = lshr i32 %i.bs, 3
  %.0.v.i = select i1 %.not.i40, i32 8191, i32 65535
  %.0.i = and i32 %.0.v.i, %i.by                  ; 2 uses
  %i.bz = and i32 %i.bs, 201326592
  %i.ca = and i32 %i.bs, 458752
  %i.cb = fcmp olt float %1, 1.000000e+00
  %i.cc = fmul nnan float %1, 1.000000e+02
  %i.cd = fptoui float %i.cc to i32
  %i.ce = shl nuw nsw i32 %.0.i, 3
  %i.cf = shl i32 %i.cd, 19
  %3 = icmp samesign ult i32 %.0.i, 8192
  %or.cond7.i = and i1 %.not.i40, %3
  %i.cg = or disjoint i32 %i.ca, 268435456
  %i.ch = select i1 %or.cond7.i, i32 %i.cg, i32 0
  %i.ci = or disjoint i32 %i.ce, %i.bz
  %4 = or disjoint i32 %i.cf, 7
  %5 = select i1 %i.cb, i32 %4, i32 52428807
  %i.cj = or i32 %5, %i.ci
  %.0.i41.a = or i32 %i.cj, %i.ch
  %i.ck = tail call noundef ptr @_ZNK4llvm10DILocation22cloneWithDiscriminatorEj(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i32 noundef %.0.i41.a)
  store ptr %i.ck, ptr %i.be, align 8, !tbaa !84
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNK4llvm10DILocation8getScopeEv.exit.i, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit.thread, %bb.j, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPNS_11InstructionEEEbRKT0_.exit, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef zeroext i1 @_ZN4llvm4User17replaceUsesOfWithEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm10DILocation22cloneWithDiscriminatorEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 2
  %.not.i.i.i.i = icmp eq i64 %i.c, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  br label %_ZNK4llvm10DILocation8getScopeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 2
  %i.g = and i64 %i.f, 15
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.h
  br label %_ZNK4llvm10DILocation8getScopeEv.exit

_ZNK4llvm10DILocation8getScopeEv.exit:            ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.j = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !35 ; 3 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !37
  %.not27 = icmp eq i8 %i.k, 20
  br i1 %.not27, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit, %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit
  %.024 = phi ptr [ %i.cg, %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit ], [ %i.j, %_ZNK4llvm10DILocation8getScopeEv.exit ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %.not9 = icmp eq i32 %i.m, 0
  br i1 %.not9, label %.critedge, label %bb.n

.critedge:                                        ; preds = %.lr.ph, %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit, %_ZNK4llvm10DILocation8getScopeEv.exit
  %.0.lcssa = phi ptr [ %i.j, %_ZNK4llvm10DILocation8getScopeEv.exit ], [ %i.cg, %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit ], [ %.024, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.p = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88, !nonnull !41, !align !42
  br label %_ZNK4llvm6MDNode10getContextEv.exit

bb.e:                                             ; preds = %.critedge
  %i.s = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK4llvm6MDNode10getContextEv.exit

_ZNK4llvm6MDNode10getContextEv.exit:              ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm6MDNode10getContextEv.exit
  %i.t = getelementptr inbounds i8, ptr %0, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm6MDNode10getContextEv.exit
  %i.v = lshr i64 %i.b, 2
  %i.w = and i64 %i.v, 15
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.x
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i

_ZNK4llvm10DILocation8getScopeEv.exit.i:          ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %i.u, %bb.f ]
  %i.z = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !35 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !37
  %i.ab = icmp eq i8 %i.aa, 16
  br i1 %i.ab, label %_ZNK4llvm10DILocation7getFileEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i1.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i:        ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i2.i = phi ptr [ %i.ak, %bb.j ], [ %i.ag, %bb.i ]
  %i.al = load ptr, ptr %.sroa.0.0.i.i.i.i2.i, align 8, !tbaa !35
  br label %_ZNK4llvm10DILocation7getFileEv.exit

_ZNK4llvm10DILocation7getFileEv.exit:             ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i
  %i.am = phi ptr [ %i.al, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.z, %_ZNK4llvm10DILocation8getScopeEv.exit.i ]
  %i.an = tail call noundef ptr @_ZN4llvm18DILexicalBlockFile7getImplERNS_11LLVMContextEPNS_8MetadataES4_jNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull %.0.lcssa, ptr noundef %i.am, i32 noundef %1, i32 noundef 0, i1 noundef zeroext true) #7
  %.0.copyload.i.i.i.i.i.i.i.i10 = load i64, ptr %i.n, align 8 ; 3 uses
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i10, 4
  %.not.i.i11 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm10DILocation7getFileEv.exit
  %i.ap = and i64 %.0.copyload.i.i.i.i.i.i.i.i10, -5
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88, !nonnull !41, !align !42
  br label %_ZNK4llvm6MDNode10getContextEv.exit13

bb.l:                                             ; preds = %_ZNK4llvm10DILocation7getFileEv.exit
  %i.as = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i10 to ptr
  br label %_ZNK4llvm6MDNode10getContextEv.exit13

_ZNK4llvm6MDNode10getContextEv.exit13:            ; preds = %bb.k, %bb.l
  %.0.i.i12 = phi ptr [ %i.ar, %bb.k ], [ %i.as, %bb.l ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !89
  %i.ax = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ay = and i64 %i.ax, 2
  %.not.i.i.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i14, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i:      ; preds = %_ZNK4llvm6MDNode10getContextEv.exit13
  %i.az = and i64 %i.ax, 960
  %i.ba = icmp eq i64 %i.az, 128
  br i1 %i.ba, label %bb.m, label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i: ; preds = %_ZNK4llvm6MDNode10getContextEv.exit13
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !90
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %.thread.i.i, label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

.thread.i.i:                                      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i
  %i.be = getelementptr inbounds i8, ptr %0, i64 -32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !32
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.m:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %i.bg = lshr i64 %i.ax, 2
  %i.bh = and i64 %i.bg, 15
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bi
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.m, %.thread.i.i
  %.sroa.0.0.i.i.i.i16 = phi ptr [ %i.bj, %bb.m ], [ %i.bf, %.thread.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i16, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35
  br label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

_ZNK4llvm10DILocation12getInlinedAtEv.exit:       ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i
  %.0.i.i15 = phi ptr [ %i.bl, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i ]
  %i.bm = zext i16 %i.aw to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp slt i8 %i.bo, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = and i64 %i.br, 2305843009213693951
  %i.bt = lshr i64 %i.br, 61
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  %i.bv = tail call noundef ptr @_ZN4llvm10DILocation7getImplERNS_11LLVMContextEjjPNS_8MetadataES4_bmhNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i12, i32 noundef %i.au, i32 noundef %i.bm, ptr noundef %i.an, ptr noundef %.0.i.i15, i1 noundef zeroext %i.bp, i64 noundef %i.bs, i8 noundef zeroext %i.bu, i32 noundef 0, i1 noundef zeroext true) #7
  ret ptr %i.bv

bb.n:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds i8, ptr %.024, i64 -16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = and i64 %i.bx, 2
  %.not.i.i.i.i17 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i17, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds i8, ptr %.024, i64 -32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !32
  br label %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit

bb.p:                                             ; preds = %bb.n
  %i.cb = lshr i64 %i.bx, 2
  %i.cc = and i64 %i.cb, 15
  %i.cd = sub nsw i64 0, %i.cc
end_hunk_0
