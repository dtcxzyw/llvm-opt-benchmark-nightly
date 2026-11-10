Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeVectorOps?download=true
inline.NumInlined: 3061
inline.NumDeleted: 704
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_115VectorLegalizer10LegalizeOpEN4llvm7SDValueE:bb.a
    i32 490, label %bb.ox
    i32 491, label %bb.pc
    i32 492, label %bb.ph
    i32 493, label %bb.pm
    i32 494, label %bb.pr
    i32 495, label %bb.pw
    i32 496, label %bb.qb
    i32 497, label %bb.qg
    i32 498, label %bb.ql
    i32 499, label %bb.qq
    i32 500, label %bb.qv
    i32 501, label %bb.ra
    i32 502, label %bb.rf
    i32 503, label %bb.rk
    i32 504, label %bb.rp
    i32 505, label %bb.ru
    i32 506, label %bb.rz
    i32 507, label %bb.se
    i32 508, label %bb.sj
    i32 509, label %bb.so
    i32 510, label %bb.st
    i32 511, label %bb.sy
    i32 512, label %bb.td
    i32 513, label %bb.ti
    i32 514, label %bb.tn
    i32 515, label %bb.ts
    i32 516, label %bb.tx
    i32 517, label %bb.uc
    i32 518, label %bb.uh
  ]

bb.ab:                                            ; preds = %.critedge1329
  %i.gy = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_115VectorLegalizer24TranslateLegalizeResultsEN4llvm7SDValueEPNS1_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(2088) %0, ptr nonnull %.fr.i, i32 %2, ptr noundef %i.bi)
  br label %bb.aal

bb.ac:                                            ; preds = %.critedge1329
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ha = load i16, ptr %i.gz, align 8
  %i.hb = lshr i16 %i.ha, 10
  %i.hc = and i16 %i.hb, 3                        ; 2 uses
  %i.hd = zext nneg i16 %i.hc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #13
  %i.he = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %.sroa.0.0.copyload.i1352 = load i16, ptr %i.he, align 8, !tbaa !126 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !128 ; 2 uses
  store i16 %.sroa.0.0.copyload.i1352, ptr %39, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.hf, align 8
  %.not.i1355 = icmp eq i16 %.sroa.0.0.copyload.i1352, 0
  br i1 %.not.i1355, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = add i16 %.sroa.0.0.copyload.i1352, -19
  %spec.select.i.i = icmp ult i16 %i.hg, 197
  br label %_ZNK4llvm3EVT8isVectorEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.hh = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %39) #14
  br label %_ZNK4llvm3EVT8isVectorEv.exit

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.ad, %bb.ae
  %i.hi = phi i1 [ %spec.select.i.i, %bb.ad ], [ %i.hh, %bb.ae ]
  %i.hj = icmp ne i16 %i.hc, 0
  %or.cond = and i1 %i.hj, %i.hi
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !152, !nonnull !134, !align !135
  %i.hm = load ptr, ptr %i.bj, align 8, !tbaa !123 ; 2 uses
  %.sroa.0.0.copyload.i1356 = load i16, ptr %i.hm, align 8, !tbaa !126
  %.sroa.21.0..sroa_idx.i1357 = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %.sroa.21.0.copyload.i1358 = load ptr, ptr %.sroa.21.0..sroa_idx.i1357, align 8, !tbaa !128
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.hn, align 8
  %i.ho = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.hp = inttoptr i64 %i.ho to ptr
  %i.hq = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.hp) #13
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.hn, align 8
  %i.hr = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.hs) #13
  %i.hu = call noundef zeroext i8 @_ZNK4llvm18TargetLoweringBase13getLoadActionENS_3EVTES1_NS_5AlignEjjb(ptr noundef nonnull align 8 dereferenceable(518435) %i.hl, i16 %.sroa.0.0.copyload.i1356, ptr %.sroa.21.0.copyload.i1358, i16 %.sroa.0.0.copyload.i1352, ptr %.sroa.21.0.copyload.i, i8 %i.hq, i32 noundef %i.ht, i32 noundef %i.hd, i1 noundef zeroext false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK4llvm3EVT8isVectorEv.exit
  %.01322 = phi i8 [ %i.hu, %bb.af ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #13
  br label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1407

bb.ah:                                            ; preds = %.critedge1329
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #13
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %.sroa.0.0.copyload.i1361 = load i16, ptr %i.hv, align 8, !tbaa !126 ; 5 uses
  %.sroa.21.0..sroa_idx.i1362 = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %.sroa.21.0.copyload.i1363 = load ptr, ptr %.sroa.21.0..sroa_idx.i1362, align 8, !tbaa !128 ; 2 uses
  store i16 %.sroa.0.0.copyload.i1361, ptr %40, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %.sroa.21.0.copyload.i1363, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !145 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !140
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !153
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !123
  %i.if = zext i32 %i.ic to i64
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.if
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ig, align 8, !tbaa !126 ; 3 uses
  %.not.i1366 = icmp eq i16 %.sroa.0.0.copyload.i1361, 0 ; 2 uses
  br i1 %.not.i1366, label %_ZNK4llvm3EVT8isVectorEv.exit1368, label %.split

.split:                                           ; preds = %bb.ah
  %i.ih = add i16 %.sroa.0.0.copyload.i1361, -19
  %spec.select.i.i1367 = icmp ult i16 %i.ih, 197
  br i1 %spec.select.i.i1367, label %bb.ai, label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit

_ZNK4llvm3EVT8isVectorEv.exit1368:                ; preds = %bb.ah
  %i.ii = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %40) #14
  br i1 %i.ii, label %bb.ai, label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit

bb.ai:                                            ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit1368
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ik = load i16, ptr %i.ij, align 8
  %i.il = and i16 %i.ik, 1024
  %.not4421 = icmp eq i16 %i.il, 0
  br i1 %.not4421, label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !152, !nonnull !134, !align !135 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i1369 = load i64, ptr %i.io, align 8
  %i.ip = and i64 %.0.copyload.i.i.i.i.i.i.i1369, -5
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.iq) #13
  %.0.copyload.i.i.i.i.i.i.i.i1370 = load i64, ptr %i.io, align 8
  %i.is = and i64 %.0.copyload.i.i.i.i.i.i.i.i1370, -5
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.it) #13
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond.i = or i1 %.not.i1366, %.not.i.i
  br i1 %or.cond.i, label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 426736
  %i.iw = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ix = getelementptr inbounds nuw [264 x i8], ptr %i.iv, i64 %i.iw
  %i.iy = zext nneg i16 %.sroa.0.0.copyload.i1361 to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !155 ; 2 uses
  %i.jb = icmp eq i8 %i.ja, 4
  br i1 %i.jb, label %bb.al, label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit

bb.al:                                            ; preds = %bb.ak
  %i.jc = load ptr, ptr %i.in, align 8, !tbaa !157
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 672
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = call noundef zeroext i8 %i.je(ptr noundef nonnull align 8 dereferenceable(518435) %i.in, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i16 %.sroa.0.0.copyload.i1361, ptr %.sroa.21.0.copyload.i1363, i8 %i.ir, i32 noundef %i.iu) #13, !inline_history !251
  br label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit

_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit: ; preds = %bb.al, %bb.ak, %bb.aj, %.split, %bb.ai, %_ZNK4llvm3EVT8isVectorEv.exit1368
  %.1 = phi i8 [ 0, %.split ], [ 0, %bb.ai ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit1368 ], [ 2, %bb.aj ], [ %i.ja, %bb.ak ], [ %i.jf, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #13
  br label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1407

bb.am:                                            ; preds = %.critedge1329
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !152, !nonnull !134, !align !135
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !151 ; 2 uses
  %i.jk = load ptr, ptr %i.bj, align 8, !tbaa !123
  %.sroa.0.0.copyload.i1371 = load i16, ptr %i.jk, align 8, !tbaa !126 ; 2 uses
  %i.jl = zext nneg i32 %i.jj to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 6184
  %.not.i1376 = icmp ult i32 %i.jj, 537
  br i1 %.not.i1376, label %bb.an, label %.sink.split

bb.an:                                            ; preds = %bb.am
  %.not.i.i1377 = icmp eq i16 %.sroa.0.0.copyload.i1371, 0
  br i1 %.not.i.i1377, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit: ; preds = %bb.an
  %i.jn = zext i16 %.sroa.0.0.copyload.i1371 to i64
  %i.jo = getelementptr inbounds nuw [537 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jl
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !155
  %.fr = freeze i8 %i.jq                          ; 2 uses
  %i.jr = icmp eq i8 %.fr, 0
  br i1 %i.jr, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1407

bb.ao:                                            ; preds = %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329
  %i.js = load ptr, ptr %i.bj, align 8, !tbaa !123 ; 2 uses
  %.sroa.0.0.copyload.i1378 = load i16, ptr %i.js, align 8, !tbaa !126 ; 5 uses
  %.sroa.21.0..sroa_idx.i1379 = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %.sroa.21.0.copyload.i1380 = load ptr, ptr %.sroa.21.0..sroa_idx.i1379, align 8, !tbaa !128 ; 5 uses
  store i16 %.sroa.0.0.copyload.i1378, ptr %38, align 8, !tbaa !126
  store ptr %.sroa.21.0.copyload.i1380, ptr %i.gv, align 8, !tbaa !128
  %140 = and i32 %i.gx, -2
  switch i32 %140, label %thread-pre-split [
    i32 148, label %.thread4289
    i32 152, label %bb.ap
  ]

.thread4289:                                      ; preds = %bb.ao
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !145 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !140
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !153
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !123
  %i.kb = zext i32 %i.jy to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.ka, i64 %i.kb ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.kc, align 8, !tbaa !126 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !128 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %38, align 8, !tbaa !126
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.gv, align 8, !tbaa !128
  br label %thread-pre-split

bb.ap:                                            ; preds = %bb.ao
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !145 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !140
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !153
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !123
  %i.kl = zext i32 %i.ki to i64
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kl
  %.sroa.0.0.copyload.i.i.i1385 = load i16, ptr %i.km, align 8, !tbaa !126 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 120
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !140
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 88
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !160
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !152, !nonnull !134, !align !135 ; 4 uses
  %i.kt = zext i16 %.sroa.0.0.copyload.i.i.i1385 to i32 ; 2 uses
  %i.ku = shl nuw nsw i32 %i.kt, 2
  %i.kv = and i32 %i.ku, 28
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 499072
  %i.kx = zext i32 %i.kq to i64
  %i.ky = getelementptr inbounds nuw [132 x i8], ptr %i.kw, i64 %i.kx
  %i.kz = lshr i32 %i.kt, 3
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !132
  %i.ld = lshr i32 %i.lc, %i.kv
  %i.le = trunc i32 %i.ld to i8
  %i.lf = and i8 %i.le, 15                        ; 2 uses
  %i.lg = icmp eq i8 %i.lf, 0
  br i1 %i.lg, label %bb.aq, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389

bb.aq:                                            ; preds = %bb.ap
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !151 ; 2 uses
  %.not.i1386 = icmp ult i32 %i.li, 537
  br i1 %.not.i1386, label %bb.ar, label %.sink.split

bb.ar:                                            ; preds = %bb.aq
  %.not.i.i1388 = icmp eq i16 %.sroa.0.0.copyload.i.i.i1385, 0
  br i1 %.not.i.i1388, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.thread, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.sink.split

thread-pre-split:                                 ; preds = %bb.ao, %.thread4289
  %.sroa.2818.0.copyload4500 = phi ptr [ %.sroa.21.0.copyload.i.i, %.thread4289 ], [ %.sroa.21.0.copyload.i1380, %bb.ao ] ; 2 uses
  %.sroa.0819.0.copyload = phi i16 [ %.sroa.0.0.copyload.i.i, %.thread4289 ], [ %.sroa.0.0.copyload.i1378, %bb.ao ] ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !151 ; 2 uses
  %.not.i1390 = icmp ult i32 %i.lk, 537
  br i1 %.not.i1390, label %bb.as, label %.sink.split

bb.as:                                            ; preds = %thread-pre-split
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !152, !nonnull !134, !align !135 ; 2 uses
  %.not.i.i1392 = icmp eq i16 %.sroa.0819.0.copyload, 0
  br i1 %.not.i.i1392, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.thread, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.sink.split

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.sink.split: ; preds = %bb.as, %bb.ar
  %.sroa.0819.0.copyload.sink = phi i16 [ %.sroa.0.0.copyload.i.i.i1385, %bb.ar ], [ %.sroa.0819.0.copyload, %bb.as ]
  %.sink4583.in = phi i32 [ %i.li, %bb.ar ], [ %i.lk, %bb.as ]
  %.sroa.2818.0.copyload4498.ph = phi ptr [ %.sroa.21.0.copyload.i1380, %bb.ar ], [ %.sroa.2818.0.copyload4500, %bb.as ]
  %.sroa.0816.0.copyload4496.ph = phi i16 [ %.sroa.0.0.copyload.i1378, %bb.ar ], [ %.sroa.0819.0.copyload, %bb.as ]
  %.ph4581 = phi ptr [ %i.ks, %bb.ar ], [ %i.lm, %bb.as ] ; 2 uses
  %.sink4583 = zext nneg i32 %.sink4583.in to i64
  %.sink = getelementptr inbounds nuw i8, ptr %.ph4581, i64 6184
  %i.ln = zext i16 %.sroa.0819.0.copyload.sink to i64
  %i.lo = getelementptr inbounds nuw [537 x i8], ptr %.sink, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.sink4583
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !155
  br label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389: ; preds = %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.sink.split, %bb.ap
  %.sroa.2818.0.copyload4498 = phi ptr [ %.sroa.21.0.copyload.i1380, %bb.ap ], [ %.sroa.2818.0.copyload4498.ph, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.sink.split ]
  %.sroa.0816.0.copyload4496 = phi i16 [ %.sroa.0.0.copyload.i1378, %bb.ap ], [ %.sroa.0816.0.copyload4496.ph, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.sink.split ]
  %i.lr = phi ptr [ %i.ks, %bb.ap ], [ %.ph4581, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.sink.split ]
  %.3 = phi i8 [ %i.lf, %bb.ap ], [ %i.lq, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.sink.split ] ; 2 uses
  %i.ls = icmp eq i8 %.3, 2
  br i1 %i.ls, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.thread, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1407

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.thread: ; preds = %bb.as, %bb.ar, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389
  %.sroa.2818.0.copyload = phi ptr [ %.sroa.2818.0.copyload4500, %bb.as ], [ %.sroa.21.0.copyload.i1380, %bb.ar ], [ %.sroa.2818.0.copyload4498, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389 ]
  %.sroa.0816.0.copyload = phi i16 [ 0, %bb.as ], [ %.sroa.0.0.copyload.i1378, %bb.ar ], [ %.sroa.0816.0.copyload4496, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389 ]
  %i.lt = phi ptr [ %i.lm, %bb.as ], [ %i.ks, %bb.ar ], [ %i.lr, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389 ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 518434
  %i.lw = load i8, ptr %i.lv, align 2, !tbaa !296, !range !136, !noundef !134
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split, label %bb.at

bb.at:                                            ; preds = %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1389.thread
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !151
  %i.ma = call noundef zeroext i8 @_ZNK4llvm18TargetLoweringBase26getStrictFPOperationActionEjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %i.lt, i32 noundef %i.lz, i16 %.sroa.0816.0.copyload, ptr %.sroa.2818.0.copyload)
  %i.mb = icmp eq i8 %i.ma, 0
  br i1 %i.mb, label %bb.au, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split

bb.au:                                            ; preds = %bb.at
  %i.mc = load i16, ptr %38, align 8, !tbaa !165  ; 2 uses
  %.not.i1394 = icmp eq i16 %i.mc, 0
  br i1 %.not.i1394, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.md = zext i16 %i.mc to i64
  %i.me = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !126
  %i.mh = insertvalue { i16, ptr } poison, i16 %i.mg, 0
  %i.mi = insertvalue { i16, ptr } %i.mh, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.aw:                                            ; preds = %bb.au
  %i.mj = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %38) #13
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.av, %bb.aw
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.mi, %bb.av ], [ %i.mj, %bb.aw ] ; 2 uses
  %i.mk = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  %i.ml = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.mm = load ptr, ptr %i.lu, align 8, !tbaa !152, !nonnull !134, !align !135 ; 2 uses
  %i.mn = load i32, ptr %i.ly, align 8, !tbaa !151 ; 3 uses
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 6184
  %.not.i1395 = icmp ult i32 %i.mn, 537
  br i1 %.not.i1395, label %bb.ax, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split

bb.ax:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %.not.i.i1397 = icmp eq i16 %i.mk, 0
  br i1 %.not.i.i1397, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1398.thread, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1398

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1398: ; preds = %bb.ax
  %i.mq = zext i16 %i.mk to i64
  %i.mr = getelementptr inbounds nuw [537 x i8], ptr %i.mp, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mo
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !155
  %i.mu = icmp eq i8 %i.mt, 2
  br i1 %i.mu, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1398.thread, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1398.thread: ; preds = %bb.ax, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1398
  %i.mv = call noundef zeroext i8 @_ZNK4llvm18TargetLoweringBase26getStrictFPOperationActionEjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %i.mm, i32 noundef %i.mn, i16 %i.mk, ptr %i.ml)
  %i.mw = icmp eq i8 %i.mv, 0
  br i1 %i.mw, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1407.thread4402, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split

bb.ay:                                            ; preds = %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !152, !nonnull !134, !align !135
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !151 ; 2 uses
  %i.nb = load ptr, ptr %i.bj, align 8, !tbaa !123
  %.sroa.0.0.copyload.i1399 = load i16, ptr %i.nb, align 8, !tbaa !126 ; 2 uses
  %i.nc = zext nneg i32 %i.na to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 6184
  %.not.i1404 = icmp ult i32 %i.na, 537
  br i1 %.not.i1404, label %bb.az, label %.sink.split

bb.az:                                            ; preds = %bb.ay
  %.not.i.i1406 = icmp eq i16 %.sroa.0.0.copyload.i1399, 0
  br i1 %.not.i.i1406, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ne = zext i16 %.sroa.0.0.copyload.i1399 to i64
  %i.nf = getelementptr inbounds nuw [537 x i8], ptr %i.nd, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nc
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !155
  br label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit1407

bb.bb:                                            ; preds = %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329, %.critedge1329
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !145
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !140
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 88
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !168 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !170
  %i.nr = icmp ult i32 %i.nq, 65
  %i.ns = load ptr, ptr %i.no, align 8
  %spec.select.i.i.i.i = select i1 %i.nr, ptr %i.no, ptr %i.ns
  %.0.i.i.i.i1408 = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !137
  %i.nt = trunc i64 %.0.i.i.i.i1408 to i32
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !152, !nonnull !134, !align !135 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !151 ; 3 uses
  %i.ny = load ptr, ptr %i.bj, align 8, !tbaa !123 ; 2 uses
  %.sroa.0.0.copyload.i1409 = load i16, ptr %i.ny, align 8, !tbaa !126 ; 3 uses
  %.sroa.21.0..sroa_idx.i1410 = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %.sroa.21.0.copyload.i1411 = load ptr, ptr %.sroa.21.0..sroa_idx.i1410, align 8, !tbaa !128
  %i.nz = zext nneg i32 %i.nx to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 6184
  %.not.i.i1414 = icmp ult i32 %i.nx, 537
  br i1 %.not.i.i1414, label %bb.bc, label %.sink.split

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i1409, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_115VectorLegalizer21LowerOperationWrapperEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE.exit.thread4404.sink.split, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i: ; preds = %bb.bc
  %i.ob = zext i16 %.sroa.0.0.copyload.i1409 to i64
  %i.oc = getelementptr inbounds nuw [537 x i8], ptr %i.oa, i64 %i.ob
end_hunk_0
