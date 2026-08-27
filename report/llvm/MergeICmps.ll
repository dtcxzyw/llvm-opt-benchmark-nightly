Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MergeICmps?download=true
inline.NumInlined: 2793
inline.NumDeleted: 1578
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm14MergeICmpsPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %.sroa.30.0.i = phi ptr [ null, %.lr.ph.i38.i.i ], [ %.sroa.30.4.i, %bb.ck ] ; 3 uses
  %.sroa.059.0106.i.i.i = phi ptr [ %i.jj, %.lr.ph.i38.i.i ], [ %i.adn, %bb.ck ] ; 2 uses
  %i.kg = load ptr, ptr %.sroa.059.0106.i.i.i, align 8, !tbaa !100 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ki = load i8, ptr %i.kh, align 1
  %i.kj = and i8 %i.ki, 2
  %.not80.i.i.i = icmp eq i8 %i.kj, 0
  br i1 %.not80.i.i.i, label %bb.v, label %_ZNSt6vectorIS_IN12_GLOBAL__N_111BCECmpBlockESaIS1_EESaIS3_EED2Ev.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #16
  %i.kk = load i32, ptr %i.ij, align 4
  %i.kl = and i32 %i.kk, 268435455                ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.kl, 0
  %.pre.i.i.i.i = load ptr, ptr %i.in, align 8, !tbaa !91 ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.v
  %i.km = load i32, ptr %i.ip, align 4, !tbaa !107
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i.i.i, i64 %i.kn
  %i.kp = zext nneg i32 %i.kl to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i.i16
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i16 ], [ %indvars.iv.next.i.i.i.i.i, %bb.x ] ; 3 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv.i.i.i.i.i
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !100
  %i.ks = icmp eq ptr %i.kr, %i.kg
  br i1 %i.ks, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.kp
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i.i, label %bb.w, !llvm.loop !119

_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.kt = phi i64 [ 4294967295, %bb.v ], [ %indvars.iv.i.i.i.i.i, %bb.w ], [ 4294967295, %bb.x ]
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i.i.i, i64 %i.kt
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !92 ; 2 uses
  %i.kw = load ptr, ptr %i.jd, align 8, !tbaa !97
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kg, i64 48 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !127, !noalias !124 ; 4 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %.loopexit158.i.thread.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i.i
  %i.la = getelementptr inbounds i8, ptr %i.ky, i64 -24 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 8, !tbaa !90, !noalias !124
  switch i8 %i.lb, label %.loopexit158.i.thread.i.i [
    i8 32, label %bb.aa
    i8 33, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !noalias !124
  %i.le = icmp slt i8 %i.ld, 0
  br i1 %i.le, label %.thread.i.i.i.i, label %.loopexit158.i.thread.i.i

.thread.i.i.i.i:                                  ; preds = %bb.z
  %i.lf = getelementptr inbounds i8, ptr %i.ky, i64 -56
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !92, !noalias !124
  %i.lh = getelementptr inbounds i8, ptr %i.ky, i64 -120
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !92, !noalias !124
  %i.lj = icmp eq ptr %i.lg, %i.kw
  %i.lk = select i1 %i.lj, i32 32, i32 33
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.i.i.i.i, %bb.y
  %.220.i.i.i.i = phi i32 [ %i.lk, %.thread.i.i.i.i ], [ 32, %bb.y ]
  %.sroa.28.80.copyload.i.i.i.i = phi ptr [ %i.li, %.thread.i.i.i.i ], [ %i.kv, %bb.y ] ; 9 uses
  %i.ll = load i8, ptr %.sroa.28.80.copyload.i.i.i.i, align 8, !tbaa !90, !noalias !124
  %.not103.i.i.i.i = icmp eq i8 %i.ll, 85
  br i1 %.not103.i.i.i.i, label %bb.ab, label %.loopexit158.i.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %40), !noalias !124
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.28.80.copyload.i.i.i.i, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !128, !noalias !129 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i.i.i.i, label %_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.thread.i.i.i.i, label %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i.i.i

_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i.i.i:       ; preds = %bb.ab
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !132, !noalias !129
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.ac, label %_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.thread.i.i.i.i

bb.ac:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.28.80.copyload.i.i.i.i, i64 2
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !133, !noalias !129
  %i.lt = and i16 %i.ls, 63
  %i.lu = zext nneg i16 %i.lt to i32
  %.not.i.i23.i.i.i = icmp eq i32 %.220.i.i.i.i, %i.lu
  br i1 %.not.i.i23.i.i.i, label %bb.ad, label %_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.thread.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.lv = getelementptr inbounds i8, ptr %.sroa.28.80.copyload.i.i.i.i, i64 -64 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !92, !noalias !129
  call fastcc void @_ZL20visitICmpLoadOperandPN4llvm5ValueERN12_GLOBAL__N_114BaseIdentifierE(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef %i.lw, ptr noundef nonnull align 8 dereferenceable(32) %46), !noalias !129
  %i.lx = load i32, ptr %i.cz, align 8, !noalias !129
  %.not10.i.i.i.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN12_GLOBAL__N_17BCEAtomD2Ev.exit22.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ly = getelementptr inbounds i8, ptr %.sroa.28.80.copyload.i.i.i.i, i64 -32
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !92, !noalias !129
  call fastcc void @_ZL20visitICmpLoadOperandPN4llvm5ValueERN12_GLOBAL__N_114BaseIdentifierE(ptr dead_on_unwind noalias writable align 8 %40, ptr noundef %i.lz, ptr noundef nonnull align 8 dereferenceable(32) %46), !noalias !129
  %i.ma = load i32, ptr %i.da, align 8, !noalias !129
  %.not11.i.i24.i.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not11.i.i24.i.i.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mb = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.28.80.copyload.i.i.i.i) #16, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #16, !noalias !129
  %i.mc = load i32, ptr %i.dc, align 8, !noalias !129 ; 4 uses
  %i.md = load i64, ptr %i.db, align 8, !noalias !129 ; 5 uses
  store i32 0, ptr %i.dc, align 8, !noalias !129
  %i.me = load i32, ptr %i.de, align 8, !noalias !129 ; 4 uses
  %i.mf = load i64, ptr %i.dd, align 8, !noalias !129 ; 4 uses
  %i.mg = load ptr, ptr %i.lv, align 8, !tbaa !92, !noalias !129
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !134, !noalias !129
  %i.mj = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.mb, ptr noundef %i.mi), !noalias !129 ; 2 uses
  %.fca.1.extract.i.i.i.i.i = extractvalue { i64, i8 } %i.mj, 1
  %i.mk = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1
  br i1 %i.mk, label %bb.ag, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.1) #19, !noalias !129
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i.i.i.i:           ; preds = %bb.af
  %.fca.0.extract.i.i.i.i.i = extractvalue { i64, i8 } %i.mj, 0
  %i.ml = trunc i64 %.fca.0.extract.i.i.i.i.i to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %41, ptr noundef nonnull align 8 dereferenceable(20) %39, i64 20, i1 false), !noalias !129
  store i32 %i.mc, ptr %i.dg, align 16, !tbaa !135, !noalias !129
  store i64 %i.md, ptr %i.df, align 8, !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dh, ptr noundef nonnull align 8 dereferenceable(20) %40, i64 20, i1 false), !noalias !129
  store i32 %i.me, ptr %i.dj, align 8, !tbaa !135, !noalias !129
  store i64 %i.mf, ptr %i.di, align 16, !noalias !129
  store i32 %i.ml, ptr %i.dk, align 16, !tbaa !137, !noalias !129
  store ptr %.sroa.28.80.copyload.i.i.i.i, ptr %i.dl, align 8, !tbaa !143, !noalias !129
  %i.mm = load i32, ptr %i.dm, align 8, !tbaa !144, !noalias !129 ; 6 uses
  %i.mn = load i32, ptr %i.dn, align 16, !tbaa !144, !noalias !129 ; 5 uses
  %.not.i.i.i.i.i39.i.i = icmp eq i32 %i.mm, %i.mn
  br i1 %.not.i.i.i.i.i39.i.i, label %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i.i.i
  %i.mo = icmp ult i32 %i.mm, %i.mn
  br i1 %i.mo, label %bb.ah, label %.thread.i.i.i.i.i

_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i.i.i
  %i.mp = call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(12) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.df) #20, !noalias !129
  %i.mq = icmp slt i32 %i.mp, 0
  br i1 %i.mq, label %bb.ah, label %.thread.i.i.i.i.i

bb.ah:                                            ; preds = %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  store i32 %i.mn, ptr %i.dm, align 8, !tbaa !144, !noalias !129
  store i64 %i.md, ptr %i.di, align 16, !noalias !129
  %i.mr = load <2 x ptr>, ptr %i.dh, align 8, !noalias !129
  %i.ms = load <2 x ptr>, ptr %41, align 16, !tbaa !145, !noalias !129
  store <2 x ptr> %i.ms, ptr %i.dh, align 8, !tbaa !145, !noalias !129
  store <2 x ptr> %i.mr, ptr %41, align 16, !tbaa !145, !noalias !129
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.ah, %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  %.sroa.19.sroa.0.0.copyload.i.i.i.i = phi i32 [ %i.mn, %bb.ah ], [ %i.mm, %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i ], [ %i.mm, %.split.i.i.i.i.i.i ]
  %.sroa.755.sroa.0.0.copyload.i.i.i.i = phi i32 [ %i.mm, %bb.ah ], [ %i.mm, %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i ], [ %i.mn, %.split.i.i.i.i.i.i ]
  %i.mt = phi i64 [ %i.md, %bb.ah ], [ %i.mf, %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i ], [ %i.mf, %.split.i.i.i.i.i.i ]
  %i.mu = phi i32 [ %i.mc, %bb.ah ], [ %i.me, %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i ], [ %i.me, %.split.i.i.i.i.i.i ]
  %i.mv = phi i64 [ %i.mf, %bb.ah ], [ %i.md, %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i ], [ %i.md, %.split.i.i.i.i.i.i ]
  %i.mw = phi i32 [ %i.me, %bb.ah ], [ %i.mc, %_ZNK12_GLOBAL__N_17BCEAtomltERKS0_.exit.i.i.i.i.i.i ], [ %i.mc, %.split.i.i.i.i.i.i ]
  %.sroa.050.0.copyload.i.i.i.i = load ptr, ptr %41, align 16, !noalias !124
  %.sroa.653.0.copyload.i.i.i.i = load ptr, ptr %i.do, align 8, !noalias !124
  %.sroa.1459.40.copyload.i.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !124
  %.sroa.1862.40.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !124
  %.sroa.26.sroa.2.4.copyload.i.i.i.i = load i64, ptr %i.dk, align 16, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #16, !noalias !129
  br label %_ZN12_GLOBAL__N_17BCEAtomD2Ev.exit22.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %.val13.pre.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !noalias !129 ; 2 uses
  %.val14.pre.i.i.i.i.i = load i32, ptr %i.de, align 8, !noalias !129
  %i.mx = icmp ult i32 %.val14.pre.i.i.i.i.i, 65
  %i.my = icmp eq ptr %.val13.pre.i.i.i.i.i, null
  %or.cond.i21.i.i.i.i.i = select i1 %i.mx, i1 true, i1 %i.my
  br i1 %or.cond.i21.i.i.i.i.i, label %_ZN12_GLOBAL__N_17BCEAtomD2Ev.exit22.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %.val13.pre.i.i.i.i.i) #18, !noalias !129
  br label %_ZN12_GLOBAL__N_17BCEAtomD2Ev.exit22.i.i.i.i.i

_ZN12_GLOBAL__N_17BCEAtomD2Ev.exit22.i.i.i.i.i:   ; preds = %bb.aj, %bb.ai, %.thread.i.i.i.i.i, %bb.ad
  %.sroa.050.0.i.i.i.i = phi ptr [ %.sroa.050.0.copyload.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ] ; 3 uses
  %.sroa.653.0.i.i.i.i = phi ptr [ %.sroa.653.0.copyload.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ] ; 2 uses
  %.sroa.756.0.i.i.i.i = phi i64 [ %i.mv, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ]
  %.sroa.10.1.i.i.i.i = phi i32 [ %i.mw, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ]
  %.sroa.1459.0.i.i.i.i = phi ptr [ %.sroa.1459.40.copyload.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ] ; 3 uses
  %.sroa.1862.0.i.i.i.i = phi ptr [ %.sroa.1862.40.copyload.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ] ; 2 uses
  %.sroa.1964.0.i.i.i.i = phi i64 [ %i.mt, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ]
  %.sroa.22.1.i.i.i.i = phi i32 [ %i.mu, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ]
  %.sroa.29.0.i.i.i.i = phi i1 [ true, %.thread.i.i.i.i.i ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ad ]
  %.sroa.26.sroa.2.0.i.i.i.i = phi i64 [ %.sroa.26.sroa.2.4.copyload.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ]
  %.sroa.19.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.19.sroa.0.0.copyload.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ]
  %.sroa.755.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.755.sroa.0.0.copyload.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.ad ]
  %.val.i.i.i.i.i = load ptr, ptr %i.db, align 8, !noalias !129 ; 2 uses
  %.val12.i.i.i.i.i = load i32, ptr %i.dc, align 8, !noalias !129
  %i.mz = icmp ult i32 %.val12.i.i.i.i.i, 65
  %i.na = icmp eq ptr %.val.i.i.i.i.i, null
  %or.cond.i23.i.i.i.i.i = select i1 %i.mz, i1 true, i1 %i.na
  br i1 %or.cond.i23.i.i.i.i.i, label %_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_17BCEAtomD2Ev.exit22.i.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.val.i.i.i.i.i) #18, !noalias !129
  br label %_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i.i

_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.thread.i.i.i.i: ; preds = %bb.ac, %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %40), !noalias !124
  br label %.loopexit158.i.thread.i.i

_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i.i: ; preds = %bb.ak, %_ZN12_GLOBAL__N_17BCEAtomD2Ev.exit22.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %40), !noalias !124
  br i1 %.sroa.29.0.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit158.i.thread.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #16, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !124
  store ptr %.sroa.653.0.i.i.i.i, ptr %i.a, align 8, !tbaa !146, !noalias !124
  store ptr %.sroa.1862.0.i.i.i.i, ptr %i.dp, align 8, !tbaa !146, !noalias !124
  store ptr %.sroa.28.80.copyload.i.i.i.i, ptr %i.dq, align 8, !tbaa !146, !noalias !124
  store ptr %i.la, ptr %i.dr, align 8, !tbaa !146, !noalias !124
  store i32 1, ptr %42, align 8, !noalias !124
  store i32 0, ptr %i.ds, align 8, !noalias !124
  %i.nb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !148 ; 0 uses
  %i.nc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.dp), !noalias !148 ; 0 uses
  %i.nd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.dq), !noalias !148 ; 0 uses
  %i.ne = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.dr), !noalias !148 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !124
  %.not26.i.i.i.i = icmp eq ptr %.sroa.050.0.i.i.i.i, null
  br i1 %.not26.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !124
  store ptr %.sroa.050.0.i.i.i.i, ptr %i.b, align 8, !tbaa !146, !noalias !124
  %i.nf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !155 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !124
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i
  %.not27.i.i.i.i = icmp eq ptr %.sroa.1459.0.i.i.i.i, null
  br i1 %.not27.i.i.i.i, label %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !124
  store ptr %.sroa.1459.0.i.i.i.i, ptr %i.c, align 8, !tbaa !146, !noalias !124
  %i.ng = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !162 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !124
  br label %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i.i

_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i.i:      ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #16, !noalias !124
  store i32 1, ptr %44, align 8, !noalias !124
  store i32 0, ptr %i.dt, align 8, !noalias !124
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8copyFromERKSB_(ptr noundef nonnull align 8 dereferenceable(80) %44, ptr noundef nonnull align 8 dereferenceable(80) %42), !noalias !124
  store ptr %i.kg, ptr %43, align 8, !tbaa !169, !noalias !124
  store i32 1, ptr %i.du, align 8, !noalias !124
  store i32 0, ptr %i.dv, align 8, !noalias !124
  call void @_ZN4llvm13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE8swapImplERSA_(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(80) %44), !noalias !124
  store i8 0, ptr %i.dw, align 8, !tbaa !174, !noalias !124
  store i32 0, ptr %i.dx, align 4, !tbaa !175, !noalias !124
  store ptr %.sroa.050.0.i.i.i.i, ptr %i.dy, align 8, !noalias !124
  store ptr %.sroa.653.0.i.i.i.i, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !124
  store i32 %.sroa.755.sroa.0.0.i.i.i.i, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !124
  store i32 %.sroa.10.1.i.i.i.i, ptr %i.ea, align 8, !tbaa !135, !noalias !124
  store i64 %.sroa.756.0.i.i.i.i, ptr %i.dz, align 8, !noalias !124
  store ptr %.sroa.1459.0.i.i.i.i, ptr %i.eb, align 8, !noalias !124
  store ptr %.sroa.1862.0.i.i.i.i, ptr %.sroa.9.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !124
  store i32 %.sroa.19.sroa.0.0.i.i.i.i, ptr %.sroa.9.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !124
  store i32 %.sroa.22.1.i.i.i.i, ptr %i.ed, align 8, !tbaa !135, !noalias !124
  store i64 %.sroa.1964.0.i.i.i.i, ptr %i.ec, align 8, !noalias !124
  store i64 %.sroa.26.sroa.2.0.i.i.i.i, ptr %i.ee, align 8, !noalias !124
  store ptr %.sroa.28.80.copyload.i.i.i.i, ptr %.sroa.18.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !124
  %i.nh = load ptr, ptr %43, align 8, !tbaa !169, !noalias !124
  store ptr %i.nh, ptr %47, align 8, !tbaa !169, !alias.scope !124
  store i32 1, ptr %i.ef, align 8, !alias.scope !124
  store i32 0, ptr %i.eg, align 8, !alias.scope !124
  call void @_ZN4llvm13SmallDenseMapIPKNS_11InstructionENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE8swapImplERSA_(ptr noundef nonnull align 8 dereferenceable(80) %i.ef, ptr noundef nonnull align 8 dereferenceable(80) %i.du)
  %i.ni = load i64, ptr %i.dw, align 8, !noalias !124
  store i64 %i.ni, ptr %i.eh, align 8, !alias.scope !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ei, ptr noundef nonnull align 8 dereferenceable(96) %i.dy, i64 20, i1 false)
  %i.nj = load i32, ptr %i.ea, align 8, !tbaa !135, !noalias !124
  store i32 %i.nj, ptr %i.ek, align 8, !tbaa !135, !alias.scope !124
  %i.nk = load i64, ptr %i.dz, align 8, !noalias !124
  store i64 %i.nk, ptr %i.ej, align 8, !alias.scope !124
  store i32 0, ptr %i.ea, align 8, !tbaa !135, !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.el, ptr noundef nonnull align 8 dereferenceable(40) %i.eb, i64 20, i1 false)
  %i.nl = load i32, ptr %i.ed, align 8, !tbaa !135, !noalias !124
  store i32 %i.nl, ptr %i.en, align 8, !tbaa !135, !alias.scope !124
  %i.nm = load i64, ptr %i.ec, align 8, !noalias !124
  store i64 %i.nm, ptr %i.em, align 8, !alias.scope !124
  store i32 0, ptr %i.ed, align 8, !tbaa !135, !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false)
  store i8 1, ptr %i.cy, align 8, !tbaa !176, !alias.scope !124
  %.pre.i25.i.i.i = load i32, ptr %i.du, align 8, !noalias !124
  %i.nn = and i32 %.pre.i25.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.nn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ao, label %_ZN12_GLOBAL__N_111BCECmpBlockD2Ev.exit.i.i.i.i

bb.ao:                                            ; preds = %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i.i
  %i.no = load i32, ptr %i.ep, align 8, !tbaa !178, !noalias !124 ; 2 uses
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %_ZN12_GLOBAL__N_111BCECmpBlockD2Ev.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nq = load ptr, ptr %i.eq, align 8, !tbaa !178, !noalias !124
  %i.nr = zext i32 %i.no to i64                   ; 2 uses
  %i.ns = shl nuw nsw i64 %i.nr, 3
  %i.nt = add nuw nsw i64 %i.nr, 31
  %i.nu = lshr i64 %i.nt, 3
  %i.nv = and i64 %i.nu, 1073741820
  %i.nw = add nuw nsw i64 %i.nv, %i.ns
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.nq, i64 noundef %i.nw, i64 noundef 8) #16
  br label %_ZN12_GLOBAL__N_111BCECmpBlockD2Ev.exit.i.i.i.i

_ZN12_GLOBAL__N_111BCECmpBlockD2Ev.exit.i.i.i.i:  ; preds = %bb.ap, %bb.ao, %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i.i
  %i.nx = load i32, ptr %44, align 8, !noalias !124
  %i.ny = and i32 %i.nx, 1
  %.not.i.i.i35.i.i.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i.i.i35.i.i.i.i, label %bb.aq, label %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_111BCECmpBlockD2Ev.exit.i.i.i.i
  %i.nz = load i32, ptr %i.er, align 8, !tbaa !178, !noalias !124 ; 2 uses
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ob = load ptr, ptr %i.es, align 8, !tbaa !178, !noalias !124
  %i.oc = zext i32 %i.nz to i64                   ; 2 uses
  %i.od = shl nuw nsw i64 %i.oc, 3
  %i.oe = add nuw nsw i64 %i.oc, 31
  %i.of = lshr i64 %i.oe, 3
  %i.og = and i64 %i.of, 1073741820
  %i.oh = add nuw nsw i64 %i.og, %i.od
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ob, i64 noundef %i.oh, i64 noundef 8) #16
  br label %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i

_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i:        ; preds = %bb.ar, %bb.aq, %_ZN12_GLOBAL__N_111BCECmpBlockD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #16, !noalias !124
  %i.oi = load i32, ptr %42, align 8, !noalias !124
  %i.oj = and i32 %i.oi, 1
  %.not.i.i.i37.i.i.i.i = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i.i37.i.i.i.i, label %bb.as, label %_ZL13visitCmpBlockPN4llvm5ValueEPNS_10BasicBlockEPKS2_RN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i
  %i.ok = load i32, ptr %i.et, align 8, !tbaa !178, !noalias !124 ; 2 uses
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %_ZL13visitCmpBlockPN4llvm5ValueEPNS_10BasicBlockEPKS2_RN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.om = load ptr, ptr %i.eu, align 8, !tbaa !178, !noalias !124
  %i.on = zext i32 %i.ok to i64                   ; 2 uses
  %i.oo = shl nuw nsw i64 %i.on, 3
  %i.op = add nuw nsw i64 %i.on, 31
  %i.oq = lshr i64 %i.op, 3
  %i.or = and i64 %i.oq, 1073741820
  %i.os = add nuw nsw i64 %i.or, %i.oo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.om, i64 noundef %i.os, i64 noundef 8) #16
  br label %_ZL13visitCmpBlockPN4llvm5ValueEPNS_10BasicBlockEPKS2_RN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i

.loopexit158.i.thread.i.i:                        ; preds = %_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i.i, %bb.aa, %bb.z, %bb.y, %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i.i.i, %_ZL9visitICmpPKN4llvm8ICmpInstENS_7CmpInst9PredicateERN12_GLOBAL__N_114BaseIdentifierE.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  br label %.loopexit158.i.thread173.i.i

_ZL13visitCmpBlockPN4llvm5ValueEPNS_10BasicBlockEPKS2_RN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i: ; preds = %bb.at, %bb.as, %_ZN12_GLOBAL__N_16BCECmpD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #16, !noalias !124
  %.val.pre.i.i.i = load i8, ptr %i.cy, align 8, !tbaa !176, !range !179
  %i.ot = trunc nuw i8 %.val.pre.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  br i1 %i.ot, label %bb.au, label %.loopexit158.i.thread173.i.i

bb.au:                                            ; preds = %_ZL13visitCmpBlockPN4llvm5ValueEPNS_10BasicBlockEPKS2_RN12_GLOBAL__N_114BaseIdentifierE.exit.i.i.i
  %i.ou = load ptr, ptr %47, align 8, !tbaa !169  ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 56
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 48 ; 3 uses
  %.sroa.014.023.i.i.i.i = load ptr, ptr %i.ov, align 8, !tbaa !87 ; 3 uses
  %.not24.not.i.i.i.i = icmp eq ptr %.sroa.014.023.i.i.i.i, %i.ow
  br i1 %.not24.not.i.i.i.i, label %_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread63.i.i.i, label %.lr.ph.i.i40.i.i

.lr.ph.i.i40.i.i:                                 ; preds = %bb.au
  %i.ox = load i32, ptr %i.ef, align 8, !noalias !180
  %i.oy = and i32 %i.ox, 1
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.oy, 0 ; 3 uses
  %i.oz = load ptr, ptr %i.ev, align 8, !noalias !180
  %i.pa = load ptr, ptr %i.ew, align 8, !noalias !180
  %i.pb = load i32, ptr %i.ex, align 8, !noalias !180
  %.sink2.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %i.oz, ptr %i.ev
  %.sink1.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %i.pa, ptr %i.eg ; 2 uses
  %.sink.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i32 %i.pb, i32 8 ; 2 uses
  %i.pc = icmp eq i32 %.sink.i.i.i.i.i.i.i.i.i.i, 0
  %i.pd = add i32 %.sink.i.i.i.i.i.i.i.i.i.i, -1  ; 2 uses
  br i1 %i.pc, label %_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread65.thread.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i40.i.i, %_ZNK4llvm6detail12DenseSetImplIPKNS_11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5countES4_.exit.i.i.i.i
  %.sroa.014.025.i.i.i.i = phi ptr [ %.sroa.014.0.i.i.i.i, %_ZNK4llvm6detail12DenseSetImplIPKNS_11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5countES4_.exit.i.i.i.i ], [ %.sroa.014.023.i.i.i.i, %.lr.ph.i.i40.i.i ] ; 2 uses
  %i.pe = getelementptr inbounds i8, ptr %.sroa.014.025.i.i.i.i, i64 -24 ; 2 uses
  %i.pf = ptrtoint ptr %i.pe to i64
  %i.pg = mul i64 %i.pf, -4658895280553007687     ; 2 uses
  %i.ph = lshr i64 %i.pg, 31
  %i.pi = xor i64 %i.ph, %i.pg
  %i.pj = trunc i64 %i.pi to i32
  %i.pk = and i32 %i.pd, %i.pj                    ; 3 uses
  %i.pl = zext i32 %i.pk to i64                   ; 2 uses
  %i.pm = lshr i64 %i.pl, 5
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i.i.i, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !24
  %i.pp = and i32 %i.pk, 31
  %i.pq = lshr i32 %i.po, %i.pp
  %i.pr = trunc i32 %i.pq to i1
  br i1 %i.pr, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread65.i.i.i, !prof !26

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i, %bb.av
  %i.ps = phi i64 [ %i.py, %bb.av ], [ %i.pl, %.lr.ph.split.i.i.i.i ]
  %.019.i.i.i.i.i.i.i.i = phi i32 [ %i.px, %bb.av ], [ %i.pk, %.lr.ph.split.i.i.i.i ]
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i.i.i.i.i.i.i, i64 %i.ps
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !146
  %i.pv = icmp eq ptr %i.pe, %i.pu
  br i1 %i.pv, label %_ZNK4llvm6detail12DenseSetImplIPKNS_11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5countES4_.exit.i.i.i.i, label %bb.av, !prof !31

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pw = add nuw i32 %.019.i.i.i.i.i.i.i.i, 1
  %i.px = and i32 %i.pw, %i.pd                    ; 3 uses
  %i.py = zext i32 %i.px to i64                   ; 2 uses
  %i.pz = lshr i64 %i.py, 5
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i.i.i, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !24
  %i.qc = and i32 %i.px, 31
  %i.qd = lshr i32 %i.qb, %i.qc
  %i.qe = trunc i32 %i.qd to i1
  br i1 %i.qe, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread65.i.i.i, !prof !32

_ZNK4llvm6detail12DenseSetImplIPKNS_11InstructionENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5countES4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i.i.i.i, i64 8
  %.sroa.014.0.i.i.i.i = load ptr, ptr %i.qf, align 8, !tbaa !87 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %.sroa.014.0.i.i.i.i, %i.ow
  br i1 %.not.not.i.i.i.i, label %_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread63.i.i.i, label %.lr.ph.split.i.i.i.i

_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread65.i.i.i: ; preds = %.lr.ph.split.i.i.i.i, %bb.av
  %.val16.i.i.i = load ptr, ptr %45, align 8, !tbaa !185
  %.val17.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !185
  %i.qg = icmp eq ptr %.val16.i.i.i, %.val17.i.i.i
  br i1 %i.qg, label %.lr.ph.i26.i.i.i.preheader, label %.loopexit158.i.thread172.i.i

_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread65.thread.i.i.i: ; preds = %.lr.ph.i.i40.i.i
  %.val1669.i.i.i = load ptr, ptr %45, align 8, !tbaa !185
  %.val1770.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !185
  %i.qh = icmp eq ptr %.val1669.i.i.i, %.val1770.i.i.i
  br i1 %i.qh, label %.lr.ph.i26.i.i.i.preheader, label %.loopexit158.i.thread172.i.i

.lr.ph.i26.i.i.i.preheader:                       ; preds = %_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread65.thread.i.i.i, %_ZNK12_GLOBAL__N_111BCECmpBlock13doesOtherWorkEv.exit.thread65.i.i.i
  br label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %.lr.ph.i26.i.i.i.preheader, %.critedge.i32.i.i.i
  %.sroa.30.2.i = phi ptr [ %.sroa.30.3.i, %.critedge.i32.i.i.i ], [ null, %.lr.ph.i26.i.i.i.preheader ]
  %.sroa.019.052.i.i.i.i = phi ptr [ %.sroa.019.0.i.i.i.i, %.critedge.i32.i.i.i ], [ %.sroa.014.023.i.i.i.i, %.lr.ph.i26.i.i.i.preheader ] ; 6 uses
  %i.qi = getelementptr inbounds i8, ptr %.sroa.019.052.i.i.i.i, i64 -24 ; 8 uses
  %i.qj = load i32, ptr %i.ef, align 8, !noalias !187
  %i.qk = and i32 %i.qj, 1
  %.not.i.i.i.i.i.i.i27.i.i.i = icmp eq i32 %i.qk, 0 ; 3 uses
  %i.ql = load ptr, ptr %i.ev, align 8, !noalias !187
  %i.qm = load ptr, ptr %i.ew, align 8, !noalias !187
  %i.qn = load i32, ptr %i.ex, align 8, !noalias !187
  %.sink2.i.i.i.i.i.i.i28.i.i.i = select i1 %.not.i.i.i.i.i.i.i27.i.i.i, ptr %i.ql, ptr %i.ev
  %.sink1.i.i.i.i.i.i.i29.i.i.i = select i1 %.not.i.i.i.i.i.i.i27.i.i.i, ptr %i.qm, ptr %i.eg ; 2 uses
  %.sink.i.i.i.i.i.i.i30.i.i.i = select i1 %.not.i.i.i.i.i.i.i27.i.i.i, i32 %i.qn, i32 8 ; 2 uses
  %i.qo = icmp eq i32 %.sink.i.i.i.i.i.i.i30.i.i.i, 0
  br i1 %i.qo, label %.loopexit.i.i.i.i17, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i26.i.i.i
end_hunk_0
