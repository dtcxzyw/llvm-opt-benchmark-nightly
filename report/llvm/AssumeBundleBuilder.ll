Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AssumeBundleBuilder?download=true
inline.NumInlined: 2612
inline.NumDeleted: 1560
begin_hunk_0_@_ZN4llvm18AssumeSimplifyPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
.loopexit.i152.i.i:                               ; preds = %bb.ay, %bb.ax, %bb.aw
  %.lcssa28.sink.i.ph.i153.i.i = phi ptr [ %i.ql, %bb.ax ], [ null, %bb.aw ], [ %i.qy, %bb.ay ]
  %i.rf = shl i32 %i.qc, 1
  %i.rg = and i32 %i.rf, -4
  %i.rh = add i32 %i.rg, 4
  %i.ri = mul i32 %.sink.i.i.i.i151.i.i, 3
  %.not.i.i154.i.i = icmp ult i32 %i.rh, %i.ri
  br i1 %.not.i.i154.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i160.i.i, label %bb.az, !prof !208

bb.az:                                            ; preds = %.loopexit.i152.i.i
  %i.rj = shl i32 %.sink.i.i.i.i151.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i32 noundef %i.rj), !noalias !497
  %i.rk = load i32, ptr %i.bx, align 8, !noalias !498
  %i.rl = and i32 %i.rk, 1
  %.not.i.i.i232.i.i = icmp eq i32 %i.rl, 0       ; 3 uses
  %i.rm = load ptr, ptr %i.dx, align 8, !noalias !498
  %i.rn = load ptr, ptr %i.dy, align 8, !noalias !498
  %i.ro = load i32, ptr %i.dz, align 8, !noalias !498
  %.sink2.i.i.i233.i.i = select i1 %.not.i.i.i232.i.i, ptr %i.rm, ptr %i.dx ; 5 uses
  %.sink1.i.i.i234.i.i = select i1 %.not.i.i.i232.i.i, ptr %i.rn, ptr %i.by ; 5 uses
  %.sink.i.i.i235.i.i = select i1 %.not.i.i.i232.i.i, i32 %i.ro, i32 4 ; 2 uses
  %i.rp = icmp ne i32 %.sink.i.i.i235.i.i, 0
  call void @llvm.assume(i1 %i.rp)
  %i.rq = add i32 %.sink.i.i.i235.i.i, -1         ; 2 uses
  %i.rr = and i32 %i.rq, %i.hp                    ; 3 uses
  %i.rs = zext i32 %i.rr to i64                   ; 2 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i233.i.i, i64 %i.rs ; 2 uses
  %i.ru = lshr i64 %i.rs, 5
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i234.i.i, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !225, !noalias !497
  %i.rx = and i32 %i.rr, 31
  %i.ry = lshr i32 %i.rw, %i.rx
  %i.rz = trunc i32 %i.ry to i1
  br i1 %i.rz, label %.lr.ph.i238.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i160.i.i, !prof !226

.lr.ph.i238.i.i:                                  ; preds = %bb.az, %bb.ba
  %i.sa = phi ptr [ %i.sg, %bb.ba ], [ %i.rt, %bb.az ] ; 2 uses
  %.024.i239.i.i = phi i32 [ %i.se, %bb.ba ], [ %i.rr, %bb.az ]
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !260, !noalias !497
  %i.sc = icmp eq ptr %i.ha, %i.sb
  br i1 %i.sc, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i160.i.i, label %bb.ba, !prof !208

bb.ba:                                            ; preds = %.lr.ph.i238.i.i
  %i.sd = add nuw i32 %.024.i239.i.i, 1
  %i.se = and i32 %i.sd, %i.rq                    ; 3 uses
  %i.sf = zext i32 %i.se to i64                   ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i233.i.i, i64 %i.sf ; 2 uses
  %i.sh = lshr i64 %i.sf, 5
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i234.i.i, i64 %i.sh
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !225, !noalias !497
  %i.sk = and i32 %i.se, 31
  %i.sl = lshr i32 %i.sj, %i.sk
  %i.sm = trunc i32 %i.sl to i1
  br i1 %i.sm, label %.lr.ph.i238.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i160.i.i, !prof !231, !llvm.loop !379

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i160.i.i: ; preds = %bb.ba, %.lr.ph.i238.i.i, %bb.az, %.loopexit.i152.i.i
  %.pre-phi386.i.i = phi ptr [ %.sink2.i.i.i.i149.i.i, %.loopexit.i152.i.i ], [ %.sink2.i.i.i233.i.i, %bb.az ], [ %.sink2.i.i.i233.i.i, %.lr.ph.i238.i.i ], [ %.sink2.i.i.i233.i.i, %bb.ba ]
  %.pre-phi385.i.i = phi ptr [ %.sink1.i.i.i.i150.i.i, %.loopexit.i152.i.i ], [ %.sink1.i.i.i234.i.i, %bb.az ], [ %.sink1.i.i.i234.i.i, %.lr.ph.i238.i.i ], [ %.sink1.i.i.i234.i.i, %bb.ba ]
  %i.sn = phi ptr [ %.lcssa28.sink.i.ph.i153.i.i, %.loopexit.i152.i.i ], [ %i.rt, %bb.az ], [ %i.sg, %bb.ba ], [ %i.sa, %.lr.ph.i238.i.i ] ; 2 uses
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = ptrtoint ptr %.pre-phi386.i.i to i64
  %i.sq = sub i64 %i.so, %i.sp
  %i.sr = ashr exact i64 %i.sq, 3                 ; 2 uses
  %i.ss = trunc i64 %i.sr to i32
  %i.st = and i32 %i.ss, 31
  %i.su = shl nuw i32 1, %i.st
  %i.sv = lshr i64 %i.sr, 5
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi385.i.i, i64 %i.sv ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !225, !noalias !497
  %i.sy = or i32 %i.su, %i.sx
  store i32 %i.sy, ptr %i.sw, align 4, !tbaa !225, !noalias !497
  %i.sz = load i32, ptr %i.bx, align 8, !noalias !497 ; 2 uses
  %i.ta = and i32 %i.sz, -2
  %i.tb = add i32 %i.ta, 2
  %i.tc = and i32 %i.sz, 1
  %i.td = or disjoint i32 %i.tb, %i.tc
  store i32 %i.td, ptr %i.bx, align 8, !noalias !497
  store ptr %i.ha, ptr %i.sn, align 8, !tbaa !260, !noalias !497
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit169.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit169.i.i: ; preds = %.lr.ph.i.i167.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i160.i.i
  %i.te = getelementptr inbounds nuw i8, ptr %.054347.i.i, i64 8
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !266 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.054347.i.i, i64 12
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !267
  %.not.i90.i.i = icmp eq i32 %i.tf, %i.th
  br i1 %.not.i90.i.i, label %_ZZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvENKUlvE_clEv.exit97.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit169.i.i
  %i.ti = load i32, ptr %i.hb, align 4
  %i.tj = and i32 %i.ti, 268435455
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = sub nsw i64 0, %i.tk
  %i.tm = getelementptr inbounds [32 x i8], ptr %i.ha, i64 %i.tl
  %i.tn = zext i32 %i.tf to i64
  %i.to = getelementptr inbounds nuw [32 x i8], ptr %i.tm, i64 %i.tn ; 6 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !64
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !90
  %i.ts = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.tr) #18 ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 3 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !268 ; 3 uses
  %.not.i.i.i91.i.i = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i91.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i93.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.tv = getelementptr inbounds nuw i8, ptr %i.to, i64 8 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !269 ; 3 uses
  store ptr %i.tw, ptr %i.tu, align 8, !tbaa !270
  %.not2.i.i.i92.i.i = icmp eq ptr %i.tw, null
  br i1 %.not2.i.i.i92.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store ptr %i.tu, ptr %i.tx, align 8, !tbaa !268
  store ptr null, ptr %i.tv, align 8, !tbaa !269
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  store ptr null, ptr %i.tt, align 8, !tbaa !268
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i93.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i93.i.i:    ; preds = %bb.be, %bb.bb
  store ptr %i.ts, ptr %i.to, align 8, !tbaa !64
  %.not.i.i94.i.i = icmp eq ptr %i.ts, null
  br i1 %.not.i.i94.i.i, label %_ZZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvENKUlvE_clEv.exit97.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i93.i.i
  %i.ty = load i8, ptr %i.ts, align 8, !tbaa !56
  %i.tz = icmp ugt i8 %i.ty, 10
  br i1 %i.tz, label %bb.bg, label %_ZZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvENKUlvE_clEv.exit97.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ts, i64 16 ; 3 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !270 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.to, i64 8 ; 2 uses
  store ptr %i.ub, ptr %i.uc, align 8, !tbaa !269
  %.not.i.i.i.i95.i.i = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i.i95.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i96.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  store ptr %i.uc, ptr %i.ud, align 8, !tbaa !268
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i96.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i96.i.i:    ; preds = %bb.bh, %bb.bg
  store ptr %i.ua, ptr %i.tt, align 8, !tbaa !268
  store ptr %i.to, ptr %i.ua, align 8, !tbaa !270
  br label %_ZZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvENKUlvE_clEv.exit97.i.i

_ZZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvENKUlvE_clEv.exit97.i.i: ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i96.i.i, %bb.bf, %_ZN4llvm3Use14removeFromListEv.exit.i.i93.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit169.i.i
  %i.ue = load ptr, ptr %i.bz, align 8, !tbaa !484
  store ptr %i.ue, ptr %.054347.i.i, align 8, !tbaa !488
  br label %bb.cx

_ZN4llvm16dyn_cast_or_nullINS_8ArgumentENS_5ValueEEEDaPT0_.exit.thread.i.i: ; preds = %._ZN4llvm16dyn_cast_or_nullINS_8ArgumentENS_5ValueEEEDaPT0_.exit.thread_crit_edge.i.i, %bb.ae, %bb.ad
  %i.uf = phi ptr [ %.pre376.i.i, %._ZN4llvm16dyn_cast_or_nullINS_8ArgumentENS_5ValueEEEDaPT0_.exit.thread_crit_edge.i.i ], [ null, %bb.ad ], [ %i.kv, %bb.ae ] ; 5 uses
  %i.ug = load i32, ptr %13, align 8, !tbaa !272  ; 5 uses
  %i.uh = load i32, ptr %9, align 8, !noalias !499
  %i.ui = and i32 %i.uh, 1
  %.not.i.i.i.i.i98.i.i = icmp eq i32 %i.ui, 0    ; 3 uses
  %i.uj = load ptr, ptr %i.ea, align 8, !noalias !499
  %i.uk = load ptr, ptr %i.eb, align 8, !noalias !499
  %i.ul = load i32, ptr %i.ec, align 8, !noalias !499
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i98.i.i, ptr %i.uj, ptr %i.ea ; 2 uses
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i98.i.i, ptr %i.uk, ptr %i.ce ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i98.i.i, i32 %i.ul, i32 16 ; 2 uses
  %i.um = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.um, label %.loopexit.i.i.i.i7, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8ArgumentENS_5ValueEEEDaPT0_.exit.thread.i.i
  %i.un = add i32 %.sink.i.i.i.i.i.i.i, -1        ; 2 uses
  %i.uo = ptrtoint ptr %i.uf to i64
  %i.up = mul i64 %i.uo, -4658895280553007687     ; 2 uses
  %i.uq = lshr i64 %i.up, 31
  %i.ur = xor i64 %i.uq, %i.up
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i32 %i.ug, ptr %8, align 4
  %i.us = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %8, i64 noundef 4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ut = shl i64 %i.ur, 32
  %i.uu = and i64 %i.us, 4294967295
  %i.uv = or disjoint i64 %i.uu, %i.ut
  %i.uw = xor i64 %i.uv, 3981806797
  %i.ux = mul i64 %i.uw, -4658895280553007687     ; 2 uses
  %i.uy = lshr i64 %i.ux, 31
  %i.uz = xor i64 %i.uy, %i.ux
  %i.va = trunc i64 %i.uz to i32
  %i.vb = and i32 %i.un, %i.va                    ; 3 uses
  %i.vc = zext i32 %i.vb to i64                   ; 2 uses
  %i.vd = getelementptr inbounds nuw [80 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.vc ; 2 uses
  %i.ve = lshr i64 %i.vc, 5
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !225
  %i.vh = and i32 %i.vb, 31
  %i.vi = lshr i32 %i.vg, %i.vh
  %i.vj = trunc i32 %i.vi to i1
  br i1 %i.vj, label %.lr.ph.i.i.i.i.i8, label %.loopexit.i.i.i.i7, !prof !226

.lr.ph.i.i.i.i.i8:                                ; preds = %bb.bi, %bb.bj
  %i.vk = phi ptr [ %i.vu, %bb.bj ], [ %i.vd, %bb.bi ] ; 4 uses
  %.024.i.i.i.i.i = phi i32 [ %i.vs, %bb.bj ], [ %i.vb, %bb.bi ]
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !273
  %i.vm = icmp eq ptr %i.uf, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vo = load i32, ptr %i.vn, align 8
  %i.vp = icmp eq i32 %i.ug, %i.vo
  %i.vq = select i1 %i.vm, i1 %i.vp, i1 false
  br i1 %i.vq, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.loopexit.i.i, label %bb.bj, !prof !208

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i8
  %i.vr = add nuw i32 %.024.i.i.i.i.i, 1
  %i.vs = and i32 %i.vr, %i.un                    ; 3 uses
  %i.vt = zext i32 %i.vs to i64                   ; 2 uses
  %i.vu = getelementptr inbounds nuw [80 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.vt ; 2 uses
  %i.vv = lshr i64 %i.vt, 5
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !225
  %i.vy = and i32 %i.vs, 31
  %i.vz = lshr i32 %i.vx, %i.vy
  %i.wa = trunc i32 %i.vz to i1
  br i1 %i.wa, label %.lr.ph.i.i.i.i.i8, label %.loopexit.i.i.i.i7, !prof !231, !llvm.loop !416

.loopexit.i.i.i.i7:                               ; preds = %bb.bj, %bb.bi, %_ZN4llvm16dyn_cast_or_nullINS_8ArgumentENS_5ValueEEEDaPT0_.exit.thread.i.i
  %.lcssa28.sink.i.ph.i.i.i.i = phi ptr [ %i.vd, %bb.bi ], [ null, %_ZN4llvm16dyn_cast_or_nullINS_8ArgumentENS_5ValueEEEDaPT0_.exit.thread.i.i ], [ %i.vu, %bb.bj ]
  %.val5.i.i.i.i.i = load i32, ptr %9, align 8    ; 2 uses
  %.val4.i.i.i.i.i = load i32, ptr %i.ec, align 8
  %i.wb = and i32 %.val5.i.i.i.i.i, 1             ; 2 uses
  %.not.i.i.i7.i.i.i.i = icmp eq i32 %i.wb, 0
  %i.wc = select i1 %.not.i.i.i7.i.i.i.i, i32 %.val4.i.i.i.i.i, i32 16 ; 2 uses
  %i.wd = shl i32 %.val5.i.i.i.i.i, 1
  %i.we = and i32 %i.wd, -4
  %i.wf = add i32 %i.we, 4
  %i.wg = mul i32 %i.wc, 3
  %.not.i.i.i99.i.i = icmp ult i32 %i.wf, %i.wg
  br i1 %.not.i.i.i99.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.thread.i.i, label %bb.bk, !prof !208

bb.bk:                                            ; preds = %.loopexit.i.i.i.i7
  %i.wh = shl i32 %i.wc, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %9, i32 noundef %i.wh)
  %i.wi = load i32, ptr %9, align 8, !noalias !500
  %i.wj = and i32 %i.wi, 1
  %.not.i.i.i170.i.i = icmp eq i32 %i.wj, 0       ; 3 uses
  %i.wk = load ptr, ptr %i.ea, align 8, !noalias !500
  %i.wl = load ptr, ptr %i.eb, align 8, !noalias !500
  %i.wm = load i32, ptr %i.ec, align 8, !noalias !500
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i170.i.i, ptr %i.wk, ptr %i.ea ; 2 uses
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i170.i.i, ptr %i.wl, ptr %i.ce ; 2 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i170.i.i, i32 %i.wm, i32 16 ; 2 uses
  %i.wn = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.wn, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E15LookupBucketForIS7_EEbRKT_RPSH_.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.wo = add i32 %.sink.i.i.i.i.i, -1            ; 2 uses
  %i.wp = ptrtoint ptr %i.uf to i64
  %i.wq = mul i64 %i.wp, -4658895280553007687     ; 2 uses
  %i.wr = lshr i64 %i.wq, 31
  %i.ws = xor i64 %i.wr, %i.wq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 %i.ug, ptr %7, align 4
  %i.wt = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %7, i64 noundef 4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.wu = shl i64 %i.ws, 32
  %i.wv = and i64 %i.wt, 4294967295
  %i.ww = or disjoint i64 %i.wv, %i.wu
  %i.wx = xor i64 %i.ww, 3981806797
  %i.wy = mul i64 %i.wx, -4658895280553007687     ; 2 uses
  %i.wz = lshr i64 %i.wy, 31
  %i.xa = xor i64 %i.wz, %i.wy
  %i.xb = trunc i64 %i.xa to i32
  %i.xc = and i32 %i.wo, %i.xb                    ; 3 uses
  %i.xd = zext i32 %i.xc to i64                   ; 2 uses
  %i.xe = getelementptr inbounds nuw [80 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.xd ; 2 uses
  %i.xf = lshr i64 %i.xd, 5
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.xf
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !225
  %i.xi = and i32 %i.xc, 31
  %i.xj = lshr i32 %i.xh, %i.xi
  %i.xk = trunc i32 %i.xj to i1
  br i1 %i.xk, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E15LookupBucketForIS7_EEbRKT_RPSH_.exit.i.i, !prof !226

.lr.ph.i.i.i:                                     ; preds = %bb.bl, %bb.bm
  %i.xl = phi ptr [ %i.xv, %bb.bm ], [ %i.xe, %bb.bl ] ; 3 uses
  %.024.i.i.i = phi i32 [ %i.xt, %bb.bm ], [ %i.xc, %bb.bl ]
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !273
  %i.xn = icmp eq ptr %i.uf, %i.xm
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xp = load i32, ptr %i.xo, align 8
  %i.xq = icmp eq i32 %i.ug, %i.xp
  %i.xr = select i1 %i.xn, i1 %i.xq, i1 false
  br i1 %i.xr, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E15LookupBucketForIS7_EEbRKT_RPSH_.exit.i.i, label %bb.bm, !prof !208

bb.bm:                                            ; preds = %.lr.ph.i.i.i
  %i.xs = add nuw i32 %.024.i.i.i, 1
  %i.xt = and i32 %i.xs, %i.wo                    ; 3 uses
  %i.xu = zext i32 %i.xt to i64                   ; 2 uses
  %i.xv = getelementptr inbounds nuw [80 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.xu ; 2 uses
  %i.xw = lshr i64 %i.xu, 5
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.xw
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !225
  %i.xz = and i32 %i.xt, 31
  %i.ya = lshr i32 %i.xy, %i.xz
  %i.yb = trunc i32 %i.ya to i1
  br i1 %i.yb, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E15LookupBucketForIS7_EEbRKT_RPSH_.exit.i.i, !prof !231, !llvm.loop !416

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E15LookupBucketForIS7_EEbRKT_RPSH_.exit.i.i: ; preds = %bb.bm, %.lr.ph.i.i.i, %bb.bl, %bb.bk
  %.lcssa28.sink.i.i.i = phi ptr [ %i.xe, %bb.bl ], [ null, %bb.bk ], [ %i.xl, %.lr.ph.i.i.i ], [ %i.xv, %bb.bm ]
  %.pre.i.i.i.i.i = load i32, ptr %9, align 8
  %.pre8.i.i.i.i.i = and i32 %.pre.i.i.i.i.i, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.thread.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.thread.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E15LookupBucketForIS7_EEbRKT_RPSH_.exit.i.i, %.loopexit.i.i.i.i7
  %.pre-phi.i.i.i.i.i = phi i32 [ %.pre8.i.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E15LookupBucketForIS7_EEbRKT_RPSH_.exit.i.i ], [ %i.wb, %.loopexit.i.i.i.i7 ]
  %i.yc = phi ptr [ %.lcssa28.sink.i.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_E15LookupBucketForIS7_EEbRKT_RPSH_.exit.i.i ], [ %.lcssa28.sink.i.ph.i.i.i.i, %.loopexit.i.i.i.i7 ] ; 8 uses
  %.not.i.i.i.i.i.i100.i.i = icmp eq i32 %.pre-phi.i.i.i.i.i, 0 ; 2 uses
  %i.yd = load ptr, ptr %i.eb, align 8
  %i.ye = select i1 %.not.i.i.i.i.i.i100.i.i, ptr %i.yd, ptr %i.ce
  %i.yf = load ptr, ptr %i.ea, align 8
  %i.yg = select i1 %.not.i.i.i.i.i.i100.i.i, ptr %i.yf, ptr %i.ea
  %i.yh = ptrtoint ptr %i.yc to i64
  %i.yi = ptrtoint ptr %i.yg to i64
  %i.yj = sub i64 %i.yh, %i.yi
  %i.yk = sdiv exact i64 %i.yj, 80                ; 2 uses
  %i.yl = trunc i64 %i.yk to i32
  %i.ym = and i32 %i.yl, 31
  %i.yn = shl nuw i32 1, %i.ym
  %i.yo = lshr i64 %i.yk, 5
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.yo ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !225
  %i.yr = or i32 %i.yn, %i.yq
  store i32 %i.yr, ptr %i.yp, align 4, !tbaa !225
  %.val.i.i.i.i.i.i = load i32, ptr %9, align 8   ; 2 uses
  %i.ys = and i32 %.val.i.i.i.i.i.i, -2
  %i.yt = add i32 %i.ys, 2
  %i.yu = and i32 %.val.i.i.i.i.i.i, 1
  %i.yv = or disjoint i32 %i.yt, %i.yu
  store i32 %i.yv, ptr %9, align 8
  store ptr %i.uf, ptr %i.yc, align 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  store i32 %i.ug, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yc, i64 32 ; 2 uses
  store ptr %i.yx, ptr %i.yw, align 8, !tbaa !25
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yc, i64 24
  store i32 0, ptr %i.yy, align 8, !tbaa !48
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yc, i64 28
  store i32 2, ptr %i.yz, align 4, !tbaa !49
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !25
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.loopexit.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.thread.i.i
  %.val.i.i = phi ptr [ %i.yx, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.thread.i.i ], [ %.val.pre.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.yc, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.thread.i.i ], [ %i.vk, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.loopexit.i.i ] ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16 ; 2 uses
  %.phi.trans.insert378.i.i = getelementptr i8, ptr %.sroa.0.0.i.i.i.i, i64 24 ; 4 uses
  %.val64.pre.i.i = load i32, ptr %.phi.trans.insert378.i.i, align 8, !tbaa !48 ; 2 uses
  %i.za = zext i32 %.val64.pre.i.i to i64
  %.idx356.i.i = mul nuw nsw i64 %i.za, 24
  %i.zb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx356.i.i
  %.not61344.i.i = icmp eq i32 %.val64.pre.i.i, 0
  br i1 %.not61344.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.i.i
  %i.zc = getelementptr inbounds nuw i8, ptr %.054347.i.i, i64 8 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.054347.i.i, i64 12 ; 2 uses
  br label %bb.bp

._crit_edge.i.i:                                  ; preds = %bb.cw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_5ValueENS_9Attribute8AttrKindEENS_11SmallVectorIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLj2EEELj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SE_SH_EixEOS7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.ha, ptr %15, align 8, !tbaa !502
  %i.ze = load i64, ptr %i.dw, align 8, !tbaa !265
  store i64 %i.ze, ptr %i.ed, align 8, !tbaa !503
  store ptr %.054347.i.i, ptr %i.ee, align 8, !tbaa !504
  %i.zf = load i32, ptr %.phi.trans.insert378.i.i, align 8, !tbaa !48 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 28
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !49
  %.not.i101.i.i = icmp ult i32 %i.zf, %i.zh
  br i1 %.not.i101.i.i, label %bb.bo, label %bb.bn, !prof !208

bb.bn:                                            ; preds = %._crit_edge.i.i
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull readonly align 8 dereferenceable(24) %15)
  br label %_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLb1EE9push_backERKS3_.exit.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i
  %i.zi = zext i32 %i.zf to i64
  %.val.i.i.i = load ptr, ptr %17, align 8, !tbaa !25
  %i.zj = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %i.zi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.zj, ptr noundef nonnull readonly align 8 dereferenceable(24) %15, i64 24, i1 false)
  %i.zk = load i32, ptr %.phi.trans.insert378.i.i, align 8, !tbaa !48
  %i.zl = add i32 %i.zk, 1
  store i32 %i.zl, ptr %.phi.trans.insert378.i.i, align 8, !tbaa !48
  br label %_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLb1EE9push_backERKS3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIZN12_GLOBAL__N_114AssumeSimplify22dropRedundantKnowledgeEvE8MapValueLb1EE9push_backERKS3_.exit.i.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cx

bb.bp:                                            ; preds = %bb.cw, %.lr.ph.i.i
  %.0345.i.i = phi ptr [ %.val.i.i, %.lr.ph.i.i ], [ %i.aiz, %bb.cw ] ; 6 uses
  %i.zm = load ptr, ptr %.0345.i.i, align 8, !tbaa !502
  %i.zn = load ptr, ptr %i.bv, align 8, !tbaa !482
  %i.zo = call noundef zeroext i1 @_ZN4llvm23isValidAssumeForContextEPKNS_11InstructionES2_PKNS_13DominatorTreeEb(ptr noundef %i.zm, ptr noundef nonnull %i.ha, ptr noundef %i.zn, i1 noundef zeroext false) #18
  br i1 %i.zo, label %bb.bq, label %bb.cw

bb.bq:                                            ; preds = %bb.bp
  %i.zp = getelementptr inbounds nuw i8, ptr %.0345.i.i, i64 8
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !503
  %i.zr = load i64, ptr %i.dw, align 8, !tbaa !265
  %.not62.i.i = icmp ult i64 %i.zq, %i.zr
  br i1 %.not62.i.i, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.zs = load i32, ptr %i.bx, align 8, !noalias !505 ; 2 uses
  %i.zt = and i32 %i.zs, 1
  %.not.i.i.i.i171.i.i = icmp eq i32 %i.zt, 0     ; 3 uses
  %i.zu = load ptr, ptr %i.dx, align 8, !noalias !505
  %i.zv = load ptr, ptr %i.dy, align 8, !noalias !505
  %i.zw = load i32, ptr %i.dz, align 8, !noalias !505
  %.sink2.i.i.i.i172.i.i = select i1 %.not.i.i.i.i171.i.i, ptr %i.zu, ptr %i.dx ; 3 uses
  %.sink1.i.i.i.i173.i.i = select i1 %.not.i.i.i.i171.i.i, ptr %i.zv, ptr %i.by ; 3 uses
  %.sink.i.i.i.i174.i.i = select i1 %.not.i.i.i.i171.i.i, i32 %i.zw, i32 4 ; 4 uses
  %i.zx = icmp eq i32 %.sink.i.i.i.i174.i.i, 0
  br i1 %i.zx, label %.loopexit.i175.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.zy = add i32 %.sink.i.i.i.i174.i.i, -1       ; 2 uses
  %i.zz = and i32 %i.zy, %i.hp                    ; 3 uses
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i172.i.i, i64 %i.aaa ; 2 uses
  %i.aac = lshr i64 %i.aaa, 5
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i173.i.i, i64 %i.aac
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !225, !noalias !506
  %i.aaf = and i32 %i.zz, 31
  %i.aag = lshr i32 %i.aae, %i.aaf
  %i.aah = trunc i32 %i.aag to i1
  br i1 %i.aah, label %.lr.ph.i.i190.i.i, label %.loopexit.i175.i.i, !prof !226

.lr.ph.i.i190.i.i:                                ; preds = %bb.bs, %bb.bt
  %i.aai = phi ptr [ %i.aao, %bb.bt ], [ %i.aab, %bb.bs ]
  %.024.i.i191.i.i = phi i32 [ %i.aam, %bb.bt ], [ %i.zz, %bb.bs ]
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !260, !noalias !506
  %i.aak = icmp eq ptr %i.ha, %i.aaj
  br i1 %i.aak, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i.i, label %bb.bt, !prof !208

bb.bt:                                            ; preds = %.lr.ph.i.i190.i.i
  %i.aal = add nuw i32 %.024.i.i191.i.i, 1
  %i.aam = and i32 %i.aal, %i.zy                  ; 3 uses
  %i.aan = zext i32 %i.aam to i64                 ; 2 uses
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i172.i.i, i64 %i.aan ; 2 uses
  %i.aap = lshr i64 %i.aan, 5
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i173.i.i, i64 %i.aap
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !225, !noalias !506
  %i.aas = and i32 %i.aam, 31
  %i.aat = lshr i32 %i.aar, %i.aas
  %i.aau = trunc i32 %i.aat to i1
  br i1 %i.aau, label %.lr.ph.i.i190.i.i, label %.loopexit.i175.i.i, !prof !231, !llvm.loop !379

.loopexit.i175.i.i:                               ; preds = %bb.bt, %bb.bs, %bb.br
  %.lcssa28.sink.i.ph.i176.i.i = phi ptr [ %i.aab, %bb.bs ], [ null, %bb.br ], [ %i.aao, %bb.bt ]
  %i.aav = shl i32 %i.zs, 1
  %i.aaw = and i32 %i.aav, -4
  %i.aax = add i32 %i.aaw, 4
  %i.aay = mul i32 %.sink.i.i.i.i174.i.i, 3
  %.not.i.i177.i.i = icmp ult i32 %i.aax, %i.aay
  br i1 %.not.i.i177.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i183.i.i, label %bb.bu, !prof !208

bb.bu:                                            ; preds = %.loopexit.i175.i.i
  %i.aaz = shl i32 %.sink.i.i.i.i174.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i32 noundef %i.aaz), !noalias !506
  %i.aba = load i32, ptr %i.bx, align 8, !noalias !507
  %i.abb = and i32 %i.aba, 1
  %.not.i.i.i241.i.i = icmp eq i32 %i.abb, 0      ; 3 uses
  %i.abc = load ptr, ptr %i.dx, align 8, !noalias !507
  %i.abd = load ptr, ptr %i.dy, align 8, !noalias !507
  %i.abe = load i32, ptr %i.dz, align 8, !noalias !507
  %.sink2.i.i.i242.i.i = select i1 %.not.i.i.i241.i.i, ptr %i.abc, ptr %i.dx ; 5 uses
  %.sink1.i.i.i243.i.i = select i1 %.not.i.i.i241.i.i, ptr %i.abd, ptr %i.by ; 5 uses
  %.sink.i.i.i244.i.i = select i1 %.not.i.i.i241.i.i, i32 %i.abe, i32 4 ; 2 uses
  %i.abf = icmp ne i32 %.sink.i.i.i244.i.i, 0
  call void @llvm.assume(i1 %i.abf)
  %i.abg = add i32 %.sink.i.i.i244.i.i, -1        ; 2 uses
  %i.abh = and i32 %i.abg, %i.hp                  ; 3 uses
  %i.abi = zext i32 %i.abh to i64                 ; 2 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i242.i.i, i64 %i.abi ; 2 uses
  %i.abk = lshr i64 %i.abi, 5
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i243.i.i, i64 %i.abk
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !225, !noalias !506
  %i.abn = and i32 %i.abh, 31
  %i.abo = lshr i32 %i.abm, %i.abn
  %i.abp = trunc i32 %i.abo to i1
  br i1 %i.abp, label %.lr.ph.i247.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i183.i.i, !prof !226

.lr.ph.i247.i.i:                                  ; preds = %bb.bu, %bb.bv
  %i.abq = phi ptr [ %i.abw, %bb.bv ], [ %i.abj, %bb.bu ] ; 2 uses
  %.024.i248.i.i = phi i32 [ %i.abu, %bb.bv ], [ %i.abh, %bb.bu ]
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !260, !noalias !506
  %i.abs = icmp eq ptr %i.ha, %i.abr
  br i1 %i.abs, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i183.i.i, label %bb.bv, !prof !208

bb.bv:                                            ; preds = %.lr.ph.i247.i.i
  %i.abt = add nuw i32 %.024.i248.i.i, 1
  %i.abu = and i32 %i.abt, %i.abg                 ; 3 uses
  %i.abv = zext i32 %i.abu to i64                 ; 2 uses
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i242.i.i, i64 %i.abv ; 2 uses
  %i.abx = lshr i64 %i.abv, 5
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i243.i.i, i64 %i.abx
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !225, !noalias !506
  %i.aca = and i32 %i.abu, 31
  %i.acb = lshr i32 %i.abz, %i.aca
  %i.acc = trunc i32 %i.acb to i1
  br i1 %i.acc, label %.lr.ph.i247.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i183.i.i, !prof !231, !llvm.loop !379

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i183.i.i: ; preds = %bb.bv, %.lr.ph.i247.i.i, %bb.bu, %.loopexit.i175.i.i
  %.pre-phi384.i.i = phi ptr [ %.sink2.i.i.i.i172.i.i, %.loopexit.i175.i.i ], [ %.sink2.i.i.i242.i.i, %bb.bu ], [ %.sink2.i.i.i242.i.i, %.lr.ph.i247.i.i ], [ %.sink2.i.i.i242.i.i, %bb.bv ]
  %.pre-phi383.i.i = phi ptr [ %.sink1.i.i.i.i173.i.i, %.loopexit.i175.i.i ], [ %.sink1.i.i.i243.i.i, %bb.bu ], [ %.sink1.i.i.i243.i.i, %.lr.ph.i247.i.i ], [ %.sink1.i.i.i243.i.i, %bb.bv ]
  %i.acd = phi ptr [ %.lcssa28.sink.i.ph.i176.i.i, %.loopexit.i175.i.i ], [ %i.abj, %bb.bu ], [ %i.abw, %bb.bv ], [ %i.abq, %.lr.ph.i247.i.i ] ; 2 uses
  %i.ace = ptrtoint ptr %i.acd to i64
  %i.acf = ptrtoint ptr %.pre-phi384.i.i to i64
  %i.acg = sub i64 %i.ace, %i.acf
  %i.ach = ashr exact i64 %i.acg, 3               ; 2 uses
  %i.aci = trunc i64 %i.ach to i32
  %i.acj = and i32 %i.aci, 31
  %i.ack = shl nuw i32 1, %i.acj
  %i.acl = lshr i64 %i.ach, 5
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi383.i.i, i64 %i.acl ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !225, !noalias !506
  %i.aco = or i32 %i.ack, %i.acn
  store i32 %i.aco, ptr %i.acm, align 4, !tbaa !225, !noalias !506
  %i.acp = load i32, ptr %i.bx, align 8, !noalias !506 ; 2 uses
  %i.acq = and i32 %i.acp, -2
  %i.acr = add i32 %i.acq, 2
  %i.acs = and i32 %i.acp, 1
  %i.act = or disjoint i32 %i.acr, %i.acs
  store i32 %i.act, ptr %i.bx, align 8, !noalias !506
  store ptr %i.ha, ptr %i.acd, align 8, !tbaa !260, !noalias !506
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i.i: ; preds = %.lr.ph.i.i190.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i183.i.i
  %i.acu = load i32, ptr %i.zc, align 8, !tbaa !266 ; 2 uses
  %i.acv = load i32, ptr %i.zd, align 4, !tbaa !267
  %.not.i102.i.i = icmp eq i32 %i.acu, %i.acv
  br i1 %.not.i102.i.i, label %.sink.split.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_13IntrinsicInstENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i.i
  %i.acw = load i32, ptr %i.hb, align 4
  %i.acx = and i32 %i.acw, 268435455
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = sub nsw i64 0, %i.acy
  %i.ada = getelementptr inbounds [32 x i8], ptr %i.ha, i64 %i.acz
  %i.adb = zext i32 %i.acu to i64
  %i.adc = getelementptr inbounds nuw [32 x i8], ptr %i.ada, i64 %i.adb ; 6 uses
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !64
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !90
  %i.adg = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.adf) #18 ; 4 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adc, i64 16 ; 3 uses
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !268 ; 3 uses
  %.not.i.i.i103.i.i = icmp eq ptr %i.adi, null
  br i1 %.not.i.i.i103.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i105.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adc, i64 8 ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !269 ; 3 uses
  store ptr %i.adk, ptr %i.adi, align 8, !tbaa !270
  %.not2.i.i.i104.i.i = icmp eq ptr %i.adk, null
  br i1 %.not2.i.i.i104.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  store ptr %i.adi, ptr %i.adl, align 8, !tbaa !268
  store ptr null, ptr %i.adj, align 8, !tbaa !269
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  store ptr null, ptr %i.adh, align 8, !tbaa !268
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i105.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i105.i.i:   ; preds = %bb.bz, %bb.bw
  store ptr %i.adg, ptr %i.adc, align 8, !tbaa !64
  %.not.i.i106.i.i = icmp eq ptr %i.adg, null
  br i1 %.not.i.i106.i.i, label %.sink.split.i.i, label %bb.ca

bb.ca:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i105.i.i
  %i.adm = load i8, ptr %i.adg, align 8, !tbaa !56
  %i.adn = icmp ugt i8 %i.adm, 10
  br i1 %i.adn, label %bb.cb, label %.sink.split.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adg, i64 16 ; 3 uses
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !270 ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adc, i64 8 ; 2 uses
  store ptr %i.adp, ptr %i.adq, align 8, !tbaa !269
  %.not.i.i.i.i107.i.i = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i.i107.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i108.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  store ptr %i.adq, ptr %i.adr, align 8, !tbaa !268
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i108.i.i
end_hunk_0
