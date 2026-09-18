Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrProfiling?download=true
inline.NumInlined: 4939
inline.NumDeleted: 2601
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_112InstrLowerer15lowerIntrinsicsEPN4llvm8FunctionE:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %55, i64 32
  %.sroa.2.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %39, i64 88 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %39, i64 96 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %39, i64 32 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %39, i64 40 ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %39, i64 48 ; 11 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %39, i64 56
  %i.fp = getelementptr inbounds nuw i8, ptr %39, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %39, i64 68
  %i.fr = getelementptr inbounds nuw i8, ptr %39, i64 69
  %i.fs = getelementptr inbounds nuw i8, ptr %39, i64 70
  %i.ft = getelementptr inbounds nuw i8, ptr %39, i64 72
  %i.fu = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 12 uses
  %.sroa.4.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 12 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.fy = getelementptr inbounds nuw i8, ptr %36, i64 88 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %36, i64 96 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %36, i64 40
  %i.gc = getelementptr inbounds nuw i8, ptr %36, i64 48 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %36, i64 56
  %i.ge = getelementptr inbounds nuw i8, ptr %36, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %36, i64 68
  %i.gg = getelementptr inbounds nuw i8, ptr %36, i64 69
  %i.gh = getelementptr inbounds nuw i8, ptr %36, i64 70
  %i.gi = getelementptr inbounds nuw i8, ptr %36, i64 72
  %i.gj = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %35, i64 33
  %i.gm = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %33, i64 33
  %i.gp = getelementptr inbounds nuw i8, ptr %37, i64 88 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %37, i64 96 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.gt = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.gu = getelementptr inbounds nuw i8, ptr %37, i64 56
  %i.gv = getelementptr inbounds nuw i8, ptr %37, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %37, i64 68
  %i.gx = getelementptr inbounds nuw i8, ptr %37, i64 69
  %i.gy = getelementptr inbounds nuw i8, ptr %37, i64 70
  %i.gz = getelementptr inbounds nuw i8, ptr %37, i64 72
  %i.ha = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %37, i64 16
  %.sroa.4.0..sroa_idx.i.i15.i.i = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.hc = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %38, i64 33
  %i.he = getelementptr inbounds nuw i8, ptr %32, i64 33
  %i.hf = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %23, i64 33
  %i.hi = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %31, i64 33
  %i.hl = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.hs = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %28, i64 33
  %i.hv = getelementptr inbounds nuw i8, ptr %27, i64 33
  %i.hw = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.hy = getelementptr inbounds nuw i8, ptr %20, i64 33
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ia = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %47, i64 32
  br label %bb.g

.lr.ph147:                                        ; preds = %_ZNSt6vectorISt4pairIPN4llvm11InstructionES3_ESaIS4_EE5clearEv.exit, %._crit_edge
  %.sroa.0111.0146 = phi ptr [ %.sroa.0111.0, %._crit_edge ], [ %.sroa.0111.0144, %_ZNSt6vectorISt4pairIPN4llvm11InstructionES3_ESaIS4_EE5clearEv.exit ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0111.0146, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !149, !noalias !645 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0111.0146, i64 24 ; 2 uses
  %.not124142 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not124142, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit, %.lr.ph147
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0111.0146, i64 8
  %.sroa.0111.0 = load ptr, ptr %i.ij, align 8, !tbaa !140 ; 2 uses
  %.not116 = icmp eq ptr %.sroa.0111.0, %i.u
  br i1 %.not116, label %._crit_edge148, label %.lr.ph147

.lr.ph:                                           ; preds = %.lr.ph147, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit
  %.sroa.0106.0143 = phi ptr [ %i.il, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit ], [ %i.ih, %.lr.ph147 ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0106.0143, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !149 ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %.sroa.0106.0143, i64 -24 ; 3 uses
  %i.in = load i8, ptr %i.im, align 8, !tbaa !150
  %i.io = icmp eq i8 %i.in, 88
  br i1 %i.io, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ip = getelementptr inbounds i8, ptr %.sroa.0106.0143, i64 -56
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !154 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !150
  %i.is = icmp eq i8 %i.ir, 14
  br i1 %i.is, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.iu = load i32, ptr %i.it, align 8
  %i.iv = and i32 %i.iu, 8192
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i.i.i.i.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 36
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !158 ; 2 uses
  switch i32 %i.ix, label %_ZN4llvm14CastIsPossibleINS_17InstrProfInstBaseEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i [
    i32 207, label %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit
    i32 208, label %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit
    i32 209, label %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit
    i32 206, label %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit
    i32 212, label %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit
    i32 213, label %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit
  ]

_ZN4llvm14CastIsPossibleINS_17InstrProfInstBaseEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i
  %i.iy = and i32 %i.ix, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.iy, 210
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit

_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_17InstrProfInstBaseEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i.i.i.i.i.i.i
  %i.iz = load i32, ptr %i.r, align 8, !tbaa !335 ; 2 uses
  %i.ja = load i32, ptr %i.s, align 4, !tbaa !340
  %.not.i = icmp ult i32 %i.iz, %i.ja
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !163

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %86, ptr noundef nonnull %i.im)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_17InstrProfInstBaseENS_11InstructionEEEDcPT0_.exit
  %i.jb = zext i32 %i.iz to i64
  %i.jc = load ptr, ptr %86, align 8, !tbaa !33
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jb
  store ptr %i.im, ptr %i.jd, align 1
  %i.je = load i32, ptr %i.r, align 8, !tbaa !335
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr %i.r, align 8, !tbaa !335
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_17InstrProfInstBaseELb1EE9push_backES2_.exit: ; preds = %.lr.ph, %bb.d, %bb.c, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm14CastIsPossibleINS_17InstrProfInstBaseEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, %bb.f, %bb.e
  %.not124 = icmp eq ptr %i.il, %i.ii
  br i1 %.not124, label %._crit_edge, label %.lr.ph

._crit_edge154:                                   ; preds = %bb.br
  br i1 %.7, label %bb.bs, label %_ZN12_GLOBAL__N_112InstrLowerer24promoteCounterLoadStoresEPN4llvm8FunctionE.exit

bb.g:                                             ; preds = %.lr.ph153, %bb.br
  %.040151 = phi i1 [ false, %.lr.ph153 ], [ %.7, %bb.br ]
  %.041150 = phi ptr [ %.pre, %.lr.ph153 ], [ %i.agc, %bb.br ] ; 2 uses
  %i.jg = load ptr, ptr %.041150, align 8, !tbaa !647 ; 51 uses
  %.val.i = load i8, ptr %i.x, align 4
  %i.jh = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112SampledInstrE, i64 8), align 8, !tbaa !131
  %.not.i.i63 = icmp eq i16 %i.jh, 0
  %i.ji = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112SampledInstrE, i64 120), align 8, !range !39
  %.0.v.i.i = select i1 %.not.i.i63, i8 %.val.i, i8 %i.ji
  %.0.i.i64 = trunc i8 %.0.v.i.i to i1
  br i1 %.0.i.i64, label %bb.h, label %_ZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionE.exit

bb.h:                                             ; preds = %bb.g
  %i.jj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_125SampledInstrBurstDurationE, i64 120), align 8, !tbaa !160 ; 6 uses
  %i.jk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118SampledInstrPeriodE, i64 120), align 8, !tbaa !160 ; 7 uses
  %i.jl = icmp ugt i32 %i.jj, %i.jk
  br i1 %i.jl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.135, i1 noundef zeroext true) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.jm = icmp eq i32 %i.jj, 0
  br i1 %i.jm, label %bb.k, label %_ZN12_GLOBAL__N_131getSampledInstrumentationConfigEv.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.136, i1 noundef zeroext true) #25
  unreachable

_ZN12_GLOBAL__N_131getSampledInstrumentationConfigEv.exit.i: ; preds = %bb.j
  %i.jn = icmp ne i32 %i.jj, 1                    ; 3 uses
  %i.jo = icmp eq i32 %i.jk, 65536
  %i.jp = and i1 %i.jn, %i.jo                     ; 2 uses
  %i.jq = icmp ult i32 %i.jk, 65536
  %i.jr = or i1 %i.jq, %i.jp                      ; 6 uses
  %i.js = load ptr, ptr %0, align 8, !tbaa !132, !nonnull !40, !align !133
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !263, !nonnull !40, !align !133 ; 2 uses
  br i1 %i.jr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_131getSampledInstrumentationConfigEv.exit.i
  %i.ju = call noundef ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.jt) #22
  br label %bb.n

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_131getSampledInstrumentationConfigEv.exit.i
  %i.jv = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.jt) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi ptr [ %i.ju, %bb.l ], [ %i.jv, %bb.m ] ; 2 uses
  %i.jw = load ptr, ptr %0, align 8, !tbaa !132, !nonnull !40, !align !133
  %i.jx = call noundef ptr @_ZNK4llvm6Module17getGlobalVariableENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(1288) %i.jw, ptr nonnull @.str.68, i64 23, i1 noundef zeroext false) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #22
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !267
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !271, !nonnull !40, !align !133 ; 2 uses
  store ptr %i.ka, ptr %75, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #22
  store ptr null, ptr %76, align 8, !tbaa !305
  store ptr %i.ka, ptr %i.aa, align 8, !tbaa !306
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !308
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !310
  store ptr null, ptr %i.ad, align 8, !tbaa !321
  store i32 0, ptr %i.ae, align 8, !tbaa !322
  store i8 0, ptr %i.af, align 4, !tbaa !323
  store i8 2, ptr %i.ag, align 1, !tbaa !324
  store i8 7, ptr %i.ah, align 2, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.y, align 8, !tbaa !28
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jg, i64 24 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jg, i64 40 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !345
  store ptr %i.kd, ptr %i.aj, align 8, !tbaa !326
  store ptr %i.kb, ptr %i.ak, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ke = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jg) #22
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !365
  store i64 %i.kf, ptr %76, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #22
  store i16 257, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %72)
  %i.kg = load ptr, ptr %i.aj, align 8, !tbaa !326
  %i.kh = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.kg) #22
  %i.ki = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.kh, ptr noundef %.0.i) #22
  %i.kj = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #22 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  store i8 1, ptr %i.am, align 8, !tbaa !276
  store i8 1, ptr %i.an, align 1, !tbaa !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.kj, ptr noundef %.0.i, ptr noundef %i.jx, ptr noundef nonnull align 8 dereferenceable(34) %71, i1 noundef zeroext false, i8 %i.ki, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %72) #22
  %i.kk = load ptr, ptr %i.ac, align 8, !tbaa !330, !nonnull !40, !align !133 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ak, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !28
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef nonnull %i.kj, ptr noundef nonnull align 8 dereferenceable(34) %77, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #22, !inline_history !590
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %76, ptr noundef nonnull %i.kj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %72)
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #22
  br i1 %i.jn, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  %i.ko = load ptr, ptr %i.jy, align 8, !tbaa !267
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !271, !nonnull !40, !align !133
  store ptr null, ptr %78, align 8, !tbaa !305
  store ptr %i.kp, ptr %i.aq, align 8, !tbaa !306
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !310
  store ptr null, ptr %i.at, align 8, !tbaa !321
  store i32 0, ptr %i.au, align 8, !tbaa !322
  store i8 0, ptr %i.av, align 4, !tbaa !323
  store i8 2, ptr %i.aw, align 1, !tbaa !324
  store i8 7, ptr %i.ax, align 2, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.ao, align 8, !tbaa !28
  %i.kq = load ptr, ptr %i.kc, align 8, !tbaa !345
  store ptr %i.kq, ptr %i.az, align 8, !tbaa !326
  store ptr %i.kb, ptr %i.ba, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i68.i, align 8
  %i.kr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jg) #22
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !365
  store i64 %i.ks, ptr %78, align 8, !tbaa !365
  %.val66.i = load ptr, ptr %i.aq, align 8        ; 2 uses
  br i1 %i.jr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.kt = call noundef ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val66.i) #22
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit.i"

bb.q:                                             ; preds = %bb.o
  %i.ku = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val66.i) #22
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit.i"

"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit.i": ; preds = %bb.q, %bb.p
  %.sink.i.i = phi ptr [ %i.ku, %bb.q ], [ %i.kt, %bb.p ]
  %i.kv = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.sink.i.i, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  store i16 257, ptr %i.bb, align 8
  %i.kw = load ptr, ptr %i.ar, align 8, !tbaa !366, !nonnull !40, !align !133 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !28
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call noundef ptr %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, i32 noundef 14, ptr noundef nonnull %i.kj, ptr noundef %i.kv, i1 noundef zeroext false, i1 noundef zeroext false) #22, !inline_history !591 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.la, null
  br i1 %.not.not.i.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #22
  store i8 1, ptr %i.bc, align 8, !tbaa !276
  store i8 1, ptr %i.bd, align 1, !tbaa !277
  %i.lb = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %i.kj, ptr noundef %i.kv, ptr noundef nonnull align 8 dereferenceable(34) %74, ptr null, i64 0) #22 ; 3 uses
  %i.lc = load ptr, ptr %i.as, align 8, !tbaa !330, !nonnull !40, !align !133 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ba, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i68.i, align 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !28
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef %i.lb, ptr noundef nonnull align 8 dereferenceable(34) %79, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #22, !inline_history !592
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %78, ptr noundef %i.lb) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit.i"
  %.1.i.i = phi ptr [ %i.la, %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit.i" ], [ %i.lb, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  %i.lg = load ptr, ptr %i.az, align 8, !tbaa !326
  %i.lh = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.lg) #22
  %i.li = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !267
  %i.lk = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.lh, ptr noundef %i.lj) #22
  %i.ll = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #22 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.ll, ptr noundef %.1.i.i, ptr noundef %i.jx, i1 noundef zeroext false, i8 %i.lk, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %69) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  store i16 257, ptr %i.be, align 8
  %i.lm = load ptr, ptr %i.as, align 8, !tbaa !330, !nonnull !40, !align !133 ; 2 uses
  %.sroa.0.0.copyload.i.i98.i = load ptr, ptr %i.ba, align 8
  %.sroa.2.0.copyload.i.i100.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i68.i, align 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !28
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef nonnull %i.ll, ptr noundef nonnull align 8 dereferenceable(34) %70, ptr %.sroa.0.0.copyload.i.i98.i, i64 %.sroa.2.0.copyload.i.i100.i) #22, !inline_history !593
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %78, ptr noundef nonnull %i.ll) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #22
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  br label %bb.z

bb.s:                                             ; preds = %bb.n
  %i.lq = add i32 %i.jj, -1                       ; 2 uses
  %.val64.i = load ptr, ptr %i.aa, align 8        ; 2 uses
  br i1 %i.jr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.lr = call noundef ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val64.i) #22
  %i.ls = and i32 %i.lq, 65535
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit70.i"

bb.u:                                             ; preds = %bb.s
  %i.lt = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val64.i) #22
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit70.i"

"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit70.i": ; preds = %bb.u, %bb.t
  %.sink2.i.i = phi i32 [ %i.lq, %bb.u ], [ %i.ls, %bb.t ]
  %.sink.i69.i = phi ptr [ %i.lt, %bb.u ], [ %i.lr, %bb.t ]
  %i.lu = zext i32 %.sink2.i.i to i64
  %i.lv = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.sink.i69.i, i64 noundef %i.lu, i1 noundef zeroext false, i1 noundef zeroext false) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #22
  store i16 257, ptr %i.bf, align 8
  %i.lw = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %76, i32 noundef 37, ptr noundef nonnull %i.kj, ptr noundef %i.lv, ptr noundef nonnull align 8 dereferenceable(34) %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  %i.lx = sub nuw i32 %i.jk, %i.jj
  %i.ly = call noundef ptr @_ZN4llvm9MDBuilder19createBranchWeightsEjjb(ptr noundef nonnull align 8 dereferenceable(8) %75, i32 noundef %i.jj, i32 noundef %i.lx, i1 noundef zeroext false) #22
  %i.lz = call noundef ptr @_ZN4llvm25SplitBlockAndInsertIfThenEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEbPNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPS6_(ptr noundef %i.lw, ptr nonnull %i.kb, i64 0, i1 noundef zeroext false, ptr noundef %i.ly, ptr noundef null, ptr noundef null, ptr noundef null) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #22
  %i.ma = load ptr, ptr %i.jy, align 8, !tbaa !267
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !271, !nonnull !40, !align !133
  store ptr null, ptr %81, align 8, !tbaa !305
  store ptr %i.mb, ptr %i.bi, align 8, !tbaa !306
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !308
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !310
  store ptr null, ptr %i.bl, align 8, !tbaa !321
  store i32 0, ptr %i.bm, align 8, !tbaa !322
  store i8 0, ptr %i.bn, align 4, !tbaa !323
  store i8 2, ptr %i.bo, align 1, !tbaa !324
  store i8 7, ptr %i.bp, align 2, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.bg, align 8, !tbaa !28
  %i.mc = load ptr, ptr %i.kc, align 8, !tbaa !345
  store ptr %i.mc, ptr %i.br, align 8, !tbaa !326
  store ptr %i.kb, ptr %i.bs, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i72.i, align 8
  %i.md = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jg) #22
  %i.me = load i64, ptr %i.md, align 8, !tbaa !365
  store i64 %i.me, ptr %81, align 8, !tbaa !365
  %.val62.i = load ptr, ptr %i.bi, align 8        ; 2 uses
  br i1 %i.jr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit70.i"
  %i.mf = call noundef ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val62.i) #22
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit75.i"

bb.w:                                             ; preds = %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit70.i"
  %i.mg = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val62.i) #22
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit75.i"

"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit75.i": ; preds = %bb.w, %bb.v
  %.sink.i74.i = phi ptr [ %i.mg, %bb.w ], [ %i.mf, %bb.v ]
  %i.mh = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.sink.i74.i, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #22
  store i16 257, ptr %i.bt, align 8
  %i.mi = load ptr, ptr %i.bj, align 8, !tbaa !366, !nonnull !40, !align !133 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !28
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = call noundef ptr %i.ml(ptr noundef nonnull align 8 dereferenceable(8) %i.mi, i32 noundef 14, ptr noundef nonnull %i.kj, ptr noundef %i.mh, i1 noundef zeroext false, i1 noundef zeroext false) #22, !inline_history !591 ; 2 uses
  %.not.not.i76.i = icmp eq ptr %i.mm, null
  br i1 %.not.not.i76.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit75.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #22
  store i8 1, ptr %i.bu, align 8, !tbaa !276
  store i8 1, ptr %i.bv, align 1, !tbaa !277
  %i.mn = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %i.kj, ptr noundef %i.mh, ptr noundef nonnull align 8 dereferenceable(34) %73, ptr null, i64 0) #22 ; 3 uses
  %i.mo = load ptr, ptr %i.bk, align 8, !tbaa !330, !nonnull !40, !align !133 ; 2 uses
  %.sroa.0.0.copyload.i.i.i78.i = load ptr, ptr %i.bs, align 8
  %.sroa.2.0.copyload.i.i.i80.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i72.i, align 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !28
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, ptr noundef %i.mn, ptr noundef nonnull align 8 dereferenceable(34) %82, ptr %.sroa.0.0.copyload.i.i.i78.i, i64 %.sroa.2.0.copyload.i.i.i80.i) #22, !inline_history !592
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %81, ptr noundef %i.mn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit75.i"
  %.1.i77.i = phi ptr [ %i.mm, %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit75.i" ], [ %i.mn, %bb.x ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  %i.ms = load ptr, ptr %i.br, align 8, !tbaa !326
  %i.mt = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ms) #22
  %i.mu = getelementptr inbounds nuw i8, ptr %.1.i77.i, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !267
  %i.mw = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.mt, ptr noundef %i.mv) #22
  %i.mx = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #22 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.mx, ptr noundef %.1.i77.i, ptr noundef %i.jx, i1 noundef zeroext false, i8 %i.mw, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %67) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  store i16 257, ptr %i.bw, align 8
  %i.my = load ptr, ptr %i.bk, align 8, !tbaa !330, !nonnull !40, !align !133 ; 2 uses
  %.sroa.0.0.copyload.i.i101.i = load ptr, ptr %i.bs, align 8
  %.sroa.2.0.copyload.i.i103.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i72.i, align 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !28
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef nonnull %i.mx, ptr noundef nonnull align 8 dereferenceable(34) %68, ptr %.sroa.0.0.copyload.i.i101.i, i64 %.sroa.2.0.copyload.i.i103.i) #22, !inline_history !593
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %81, ptr noundef nonnull %i.mx) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  call void @_ZN4llvm11Instruction10moveBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.jg, ptr nonnull %i.nc, i64 0) #22
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #22
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  br i1 %i.jp, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread.i
  %.055137.i = phi ptr [ %i.ll, %.thread.i ], [ %i.mx, %bb.y ] ; 5 uses
  %.056136.i = phi ptr [ %.1.i.i, %.thread.i ], [ %.1.i77.i, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #22
  %i.nd = getelementptr inbounds nuw i8, ptr %.055137.i, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !267
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !271, !nonnull !40, !align !133
  store ptr null, ptr %83, align 8, !tbaa !305
  store ptr %i.nf, ptr %i.bz, align 8, !tbaa !306
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !308
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !310
  store ptr null, ptr %i.cc, align 8, !tbaa !321
  store i32 0, ptr %i.cd, align 8, !tbaa !322
  store i8 0, ptr %i.ce, align 4, !tbaa !323
  store i8 2, ptr %i.cf, align 1, !tbaa !324
  store i8 7, ptr %i.cg, align 2, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.bx, align 8, !tbaa !28
  %i.ng = getelementptr inbounds nuw i8, ptr %.055137.i, i64 24 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.055137.i, i64 40
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !345
  store ptr %i.ni, ptr %i.ci, align 8, !tbaa !326
  store ptr %i.ng, ptr %i.cj, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i85.i, align 8
  %i.nj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %.055137.i) #22
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !365
  store i64 %i.nk, ptr %83, align 8, !tbaa !365
  %.val60.i = load ptr, ptr %i.bz, align 8        ; 2 uses
  br i1 %i.jr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.nl = call noundef ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val60.i) #22
  %i.nm = and i32 %i.jk, 65535
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit88.i"

bb.ab:                                            ; preds = %bb.z
  %i.nn = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val60.i) #22
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit88.i"

"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit88.i": ; preds = %bb.ab, %bb.aa
  %.sink2.i86.i = phi i32 [ %i.jk, %bb.ab ], [ %i.nm, %bb.aa ]
  %.sink.i87.i = phi ptr [ %i.nn, %bb.ab ], [ %i.nl, %bb.aa ]
  %i.no = zext i32 %.sink2.i86.i to i64
  %i.np = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.sink.i87.i, i64 noundef %i.no, i1 noundef zeroext false, i1 noundef zeroext false) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #22
  store i16 257, ptr %i.ck, align 8
  %i.nq = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %83, i32 noundef 35, ptr noundef nonnull %.056136.i, ptr noundef %i.np, ptr noundef nonnull align 8 dereferenceable(34) %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #22
  %i.nr = add i32 %i.jk, -1
  %i.ns = call noundef ptr @_ZN4llvm9MDBuilder19createBranchWeightsEjjb(ptr noundef nonnull align 8 dereferenceable(8) %75, i32 noundef 1, i32 noundef %i.nr, i1 noundef zeroext false) #22
  call void @_ZN4llvm29SplitBlockAndInsertIfThenElseEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEPPS5_SA_PNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoE(ptr noundef %i.nq, ptr nonnull %i.ng, i64 0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.ns, ptr noundef null, ptr noundef null) #22
  br i1 %i.jn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit88.i"
  %i.nt = load ptr, ptr %i.k, align 8, !tbaa !368
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  call void @_ZN4llvm11Instruction10moveBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.jg, ptr nonnull %i.nu, i64 0) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit88.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #22
  %i.nv = load ptr, ptr %i.k, align 8, !tbaa !368 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !267
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !271, !nonnull !40, !align !133
  store ptr null, ptr %85, align 8, !tbaa !305
  store ptr %i.ny, ptr %i.cn, align 8, !tbaa !306
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !308
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !310
  store ptr null, ptr %i.cq, align 8, !tbaa !321
  store i32 0, ptr %i.cr, align 8, !tbaa !322
  store i8 0, ptr %i.cs, align 4, !tbaa !323
  store i8 2, ptr %i.ct, align 1, !tbaa !324
  store i8 7, ptr %i.cu, align 2, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.cl, align 8, !tbaa !28
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !345
  store ptr %i.ob, ptr %i.cw, align 8, !tbaa !326
  store ptr %i.nz, ptr %i.cx, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i92.i, align 8
  %i.oc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.nv) #22
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !365
  store i64 %i.od, ptr %85, align 8, !tbaa !365
  %.val58.i = load ptr, ptr %i.cn, align 8        ; 2 uses
  br i1 %i.jr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.oe = call noundef ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val58.i) #22
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit95.i"

bb.af:                                            ; preds = %bb.ad
  %i.of = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val58.i) #22
  br label %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit95.i"

"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit95.i": ; preds = %bb.af, %bb.ae
  %.sink.i94.i = phi ptr [ %i.of, %bb.af ], [ %i.oe, %bb.ae ]
  %i.og = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.sink.i94.i, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65)
  %i.oh = load ptr, ptr %i.cw, align 8, !tbaa !326
  %i.oi = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.oh) #22
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !267
  %i.ol = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.oi, ptr noundef %i.ok) #22
  %i.om = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #22 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.om, ptr noundef %i.og, ptr noundef %i.jx, i1 noundef zeroext false, i8 %i.ol, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %65) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  store i16 257, ptr %i.cy, align 8
  %i.on = load ptr, ptr %i.cp, align 8, !tbaa !330, !nonnull !40, !align !133 ; 2 uses
  %.sroa.0.0.copyload.i.i104.i = load ptr, ptr %i.cx, align 8
  %.sroa.2.0.copyload.i.i106.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i92.i, align 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !28
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef nonnull %i.om, ptr noundef nonnull align 8 dereferenceable(34) %66, ptr %.sroa.0.0.copyload.i.i104.i, i64 %.sroa.2.0.copyload.i.i106.i) #22, !inline_history !593
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %85, ptr noundef nonnull %i.om) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65)
  %i.or = load ptr, ptr %i.l, align 8, !tbaa !368
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  call void @_ZN4llvm11Instruction10moveBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %.055137.i, ptr nonnull %i.os, i64 0) #22
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cm) #22
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #22
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bx) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionEENK3$_0clERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEEj.exit95.i", %bb.y
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #22
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #22
  br label %_ZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionE.exit

_ZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionE.exit: ; preds = %bb.g, %bb.ag
  %i.ot = getelementptr inbounds i8, ptr %i.jg, i64 -32
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !154
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 36
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !158 ; 7 uses
  %i.ox = icmp ne i32 %i.ow, 209
  %.not50117 = icmp eq ptr %i.jg, null            ; 7 uses
  %.not50 = select i1 %i.ox, i1 true, i1 %.not50117
  br i1 %.not50, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionE.exit
  call fastcc void @_ZN12_GLOBAL__N_112InstrLowerer14lowerIncrementEPN4llvm22InstrProfIncrementInstE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %i.jg)
  br label %bb.br

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_112InstrLowerer10doSamplingEPN4llvm11InstructionE.exit
  %i.oy = and i32 %i.ow, -2
  %spec.select.i.i.i.i.i.i.i.i = icmp ne i32 %i.oy, 208
  %.not51 = select i1 %spec.select.i.i.i.i.i.i.i.i, i1 true, i1 %.not50117
  br i1 %.not51, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @_ZN12_GLOBAL__N_112InstrLowerer14lowerIncrementEPN4llvm22InstrProfIncrementInstE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %i.jg)
  br label %bb.br

bb.ak:                                            ; preds = %bb.ai
  %i.oz = icmp ne i32 %i.ow, 212
  %.not52 = select i1 %i.oz, i1 true, i1 %.not50117
  br i1 %.not52, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pa = load ptr, ptr %0, align 8, !tbaa !132, !nonnull !40, !align !133
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !263, !nonnull !40, !align !133
  %i.pc = call fastcc noundef ptr @_ZN12_GLOBAL__N_112InstrLowerer17getCounterAddressEPN4llvm21InstrProfCntrInstBaseE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %i.jg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  %i.pd = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !267
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !271, !nonnull !40, !align !133
  store ptr null, ptr %63, align 8, !tbaa !305
  store ptr %i.pf, ptr %i.db, align 8, !tbaa !306
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !308
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !310
  store ptr null, ptr %i.de, align 8, !tbaa !321
  store i32 0, ptr %i.df, align 8, !tbaa !322
  store i8 0, ptr %i.dg, align 4, !tbaa !323
  store i8 2, ptr %i.dh, align 1, !tbaa !324
  store i8 7, ptr %i.di, align 2, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.cz, align 8, !tbaa !28
  %i.pg = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ph = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !345
  store ptr %i.pi, ptr %i.dk, align 8, !tbaa !326
  store ptr %i.pg, ptr %i.dl, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i67, align 8
  %i.pj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jg) #22
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !365
  store i64 %i.pk, ptr %63, align 8, !tbaa !365
  %i.pl = call noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.pb) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !267
  store ptr %i.pn, ptr %i.i, align 8, !tbaa !264
  %i.po = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %i.pl, ptr nonnull %i.i, i64 1, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  %i.pp = load ptr, ptr %0, align 8, !tbaa !132, !nonnull !40, !align !133
  %i.pq = call { ptr, ptr } @_ZN4llvm6Module19getOrInsertFunctionENS_9StringRefEPNS_12FunctionTypeE(ptr noundef nonnull align 8 dereferenceable(1288) %i.pp, ptr nonnull @.str.104, i64 28, ptr noundef %i.po) #22 ; 2 uses
  %i.pr = extractvalue { ptr, ptr } %i.pq, 0
  %i.ps = extractvalue { ptr, ptr } %i.pq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store ptr %i.pc, ptr %i.j, align 8, !tbaa !327
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  store i16 257, ptr %i.dm, align 8
  %i.pt = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %63, ptr noundef %i.pr, ptr noundef %i.ps, ptr nonnull %i.j, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %64, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  %i.pu = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jg) #22 ; 0 uses
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.da) #22
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  br label %bb.br

bb.am:                                            ; preds = %bb.ak
  %i.pv = icmp ne i32 %i.ow, 207
  %.not53 = select i1 %i.pv, i1 true, i1 %.not50117
  br i1 %.not53, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pw = call fastcc noundef ptr @_ZN12_GLOBAL__N_112InstrLowerer17getCounterAddressEPN4llvm21InstrProfCntrInstBaseE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %i.jg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  %i.px = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !267
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !271, !nonnull !40, !align !133
  store ptr null, ptr %61, align 8, !tbaa !305
  store ptr %i.pz, ptr %i.dp, align 8, !tbaa !306
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !308
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !310
  store ptr null, ptr %i.ds, align 8, !tbaa !321
  store i32 0, ptr %i.dt, align 8, !tbaa !322
  store i8 0, ptr %i.du, align 4, !tbaa !323
  store i8 2, ptr %i.dv, align 1, !tbaa !324
  store i8 7, ptr %i.dw, align 2, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.dn, align 8, !tbaa !28
  %i.qa = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.qb = getelementptr inbounds nuw i8, ptr %i.jg, i64 40 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !345
  store ptr %i.qc, ptr %i.dy, align 8, !tbaa !326
  store ptr %i.qa, ptr %i.dz, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i69, align 8
  %i.qd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jg) #22
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !365
  store i64 %i.qe, ptr %61, align 8, !tbaa !365
  %i.qf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_124ConditionalCounterUpdateE, i64 120), align 8, !tbaa !146, !range !39, !noundef !40
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %bb.ao, label %_ZN12_GLOBAL__N_112InstrLowerer10lowerCoverEPN4llvm18InstrProfCoverInstE.exit

bb.ao:                                            ; preds = %bb.an
  %i.qh = load ptr, ptr %i.qb, align 8, !tbaa !345
  %i.qi = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !149
  %i.qk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.qh) #22
  %i.ql = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.qk) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  store i8 1, ptr %i.ea, align 1, !tbaa !277
  store ptr @.str.98, ptr %60, align 8, !tbaa !56
  store i8 3, ptr %i.eb, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  %i.qm = load ptr, ptr %i.dy, align 8, !tbaa !326
  %i.qn = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.qm) #22
  %i.qo = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.qn, ptr noundef %i.ql) #22
  %i.qp = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  store i8 1, ptr %i.ec, align 8, !tbaa !276
  store i8 1, ptr %i.ed, align 1, !tbaa !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.qp, ptr noundef %i.ql, ptr noundef %i.pw, ptr noundef nonnull align 8 dereferenceable(34) %58, i1 noundef zeroext false, i8 %i.qo, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %59) #22
  %i.qq = load ptr, ptr %i.dr, align 8, !tbaa !330, !nonnull !40, !align !133 ; 2 uses
  %.sroa.0.0.copyload.i.i.i70 = load ptr, ptr %i.dz, align 8
  %.sroa.2.0.copyload.i.i.i71 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i69, align 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !28
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qt = load ptr, ptr %i.qs, align 8
  call void %i.qt(ptr noundef nonnull align 8 dereferenceable(8) %i.qq, ptr noundef nonnull %i.qp, ptr noundef nonnull align 8 dereferenceable(34) %60, ptr %.sroa.0.0.copyload.i.i.i70, i64 %.sroa.2.0.copyload.i.i.i71) #22, !inline_history !594
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %61, ptr noundef nonnull %i.qp) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  store i8 1, ptr %i.ef, align 1, !tbaa !277
  store ptr @.str.105, ptr %62, align 8, !tbaa !56
  store i8 3, ptr %i.ee, align 8, !tbaa !276
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !267
  %i.qw = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.qv) #22
  %i.qx = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %61, i32 noundef 33, ptr noundef nonnull %i.qp, ptr noundef %i.qw, ptr noundef nonnull align 8 dereferenceable(34) %62)
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  %i.qy = call noundef ptr @_ZN4llvm25SplitBlockAndInsertIfThenEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEbPNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPS6_(ptr noundef %i.qx, ptr nonnull %i.qj, i64 0, i1 noundef zeroext false, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #22 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !345
  store ptr %i.rb, ptr %i.dy, align 8, !tbaa !326
  store ptr %i.qz, ptr %i.dz, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i69, align 8
  %i.rc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.qy) #22
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !365
  store i64 %i.rd, ptr %61, align 8, !tbaa !365
  br label %_ZN12_GLOBAL__N_112InstrLowerer10lowerCoverEPN4llvm18InstrProfCoverInstE.exit

_ZN12_GLOBAL__N_112InstrLowerer10lowerCoverEPN4llvm18InstrProfCoverInstE.exit: ; preds = %bb.an, %bb.ao
  %i.re = load ptr, ptr %i.dp, align 8, !tbaa !329, !nonnull !40, !align !133
  %i.rf = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.re) #22
  %i.rg = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.rf, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  %i.rh = load ptr, ptr %i.dy, align 8, !tbaa !326
  %i.ri = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.rh) #22
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !267
  %i.rl = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ri, ptr noundef %i.rk) #22
  %i.rm = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #22 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.rm, ptr noundef %i.rg, ptr noundef %i.pw, i1 noundef zeroext false, i8 %i.rl, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %56) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  store i16 257, ptr %i.eg, align 8
  %i.rn = load ptr, ptr %i.dr, align 8, !tbaa !330, !nonnull !40, !align !133 ; 2 uses
  %.sroa.0.0.copyload.i.i15.i = load ptr, ptr %i.dz, align 8
  %.sroa.2.0.copyload.i.i17.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i69, align 8
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !28
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8
  call void %i.rq(ptr noundef nonnull align 8 dereferenceable(8) %i.rn, ptr noundef nonnull %i.rm, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr %.sroa.0.0.copyload.i.i15.i, i64 %.sroa.2.0.copyload.i.i17.i) #22, !inline_history !595
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %61, ptr noundef nonnull %i.rm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  %i.rr = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jg) #22 ; 0 uses
end_hunk_0
