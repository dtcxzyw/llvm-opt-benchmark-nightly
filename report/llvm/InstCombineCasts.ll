Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineCasts?download=true
begin_hunk_0_@_ZN4llvm16InstCombinerImpl22optimizeBitCastFromPhiERNS_8CastInstEPNS_7PHINodeE:bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %.0160335, i64 8 ; 2 uses
  %.not189 = icmp eq ptr %i.fj, %i.ds
  br i1 %.not189, label %._crit_edge338, label %bb.x

bb.y:                                             ; preds = %.lr.ph332, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph332 ], [ %indvars.iv.next, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit ] ; 3 uses
  %i.fk = load ptr, ptr %i.d, align 8, !tbaa !421
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !82
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %indvars.iv
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !83 ; 12 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !21  ; 2 uses
  %i.fq = icmp ugt i8 %i.fp, 22
  br i1 %i.fq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fr = call noundef ptr @_ZN4llvm12ConstantExpr10getBitCastEPNS_8ConstantEPNS_4TypeEb(ptr noundef nonnull %i.fo, ptr noundef %i.s, i1 noundef zeroext false) #17
  br label %bb.ag

bb.aa:                                            ; preds = %bb.y
  switch i8 %i.fp, label %bb.ad [
    i8 63, label %bb.ab
    i8 81, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !423
  store ptr %i.fu, ptr %i.du, align 8, !tbaa !420
  store ptr %i.fs, ptr %i.dv, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i227, align 8
  %i.fv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.fo) #17
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !127
  store i64 %i.fw, ptr %i.dt, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i16 257, ptr %i.dw, align 8
  %i.fx = call noundef ptr @_ZN4llvm16InstCombinerImpl20combineLoadToNewTypeERNS_8LoadInstEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(73) %i.fo, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(34) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !92
  %i.ga = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.fz) #17
  %i.gb = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.fo, ptr noundef %i.ga) ; 0 uses
  %i.gc = call noundef ptr @_ZN4llvm16InstCombinerImpl21eraseInstFromFunctionERNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.fo) ; 0 uses
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.gd = getelementptr inbounds i8, ptr %i.fo, i64 -32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !83
  br label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.gf = load i8, ptr %i.fo, align 8, !tbaa !21
  %i.gg = icmp eq i8 %i.gf, 87
  %spec.select.i.i229 = select i1 %i.gg, ptr %i.fo, ptr null ; 2 uses
  store ptr %spec.select.i.i229, ptr %i.e, align 8, !tbaa !421
  %.not197 = icmp eq ptr %spec.select.i.i229, null
  br i1 %.not197, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.fca.0.extract.i230 = extractvalue { ptr, i8 } %i.gh, 0
  %i.gi = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i230, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !421
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0162 = phi ptr [ %i.gj, %bb.ae ], [ null, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ac, %bb.z
  %.3165 = phi ptr [ %i.fr, %bb.z ], [ %i.fx, %bb.ab ], [ %i.ge, %bb.ac ], [ %.0162, %bb.af ] ; 4 uses
  %i.gk = load ptr, ptr %i.d, align 8, !tbaa !421 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 76
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !93
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [32 x i8], ptr %i.gm, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !106
  %i.gt = load i32, ptr %i.ff, align 4            ; 2 uses
  %i.gu = and i32 %i.gt, 268435455
  %i.gv = load i32, ptr %i.fg, align 4, !tbaa !93
  %i.gw = icmp eq i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fa) #17
  %.pre.i = load i32, ptr %i.ff, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gx = phi i32 [ %.pre.i, %bb.ah ], [ %i.gt, %bb.ag ] ; 2 uses
  %i.gy = add i32 %i.gx, 1
  %i.gz = and i32 %i.gy, 268435455                ; 2 uses
  %i.ha = and i32 %i.gx, -268435456
  %i.hb = or disjoint i32 %i.gz, %i.ha
  store i32 %i.hb, ptr %i.ff, align 4
  %i.hc = add nsw i32 %i.gz, -1
  %i.hd = load ptr, ptr %i.fh, align 8, !tbaa !82
  %i.he = zext i32 %i.hc to i64
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.he ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !108 ; 3 uses
  store ptr %i.hj, ptr %i.hh, align 8, !tbaa !82
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr %i.hh, ptr %i.hk, align 8, !tbaa !107
  store ptr null, ptr %i.hi, align 8, !tbaa !108
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store ptr null, ptr %i.hg, align 8, !tbaa !107
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i:    ; preds = %bb.al, %bb.ai
  store ptr %.3165, ptr %i.hf, align 8, !tbaa !83
  %.not.i.i.i.i.i231 = icmp eq ptr %.3165, null
  br i1 %.not.i.i.i.i.i231, label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i
  %i.hl = load i8, ptr %.3165, align 8, !tbaa !21
  %i.hm = icmp ugt i8 %i.hl, 10
  br i1 %i.hm, label %bb.an, label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit

bb.an:                                            ; preds = %bb.am
  %i.hn = getelementptr inbounds nuw i8, ptr %.3165, i64 16 ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !82 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !107
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.ao, %bb.an
  store ptr %i.hn, ptr %i.hg, align 8, !tbaa !107
  store ptr %i.hf, ptr %i.hn, align 8, !tbaa !82
  br label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit

_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, %bb.am, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i
  %i.hr = load i32, ptr %i.ff, align 4
  %i.hs = and i32 %i.hr, 268435455
  %i.ht = add nsw i32 %i.hs, -1
  %i.hu = load ptr, ptr %i.fh, align 8, !tbaa !82
  %i.hv = load i32, ptr %i.fg, align 4, !tbaa !93
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = zext i32 %i.ht to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hy
  store ptr %i.gs, ptr %i.hz, align 8, !tbaa !106
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not193 = icmp eq i64 %indvars.iv.next, %i.fi
  br i1 %.not193, label %._crit_edge333, label %bb.y, !llvm.loop !424

._crit_edge350:                                   ; preds = %._crit_edge344, %.critedge212.thread, %.critedge212, %._crit_edge328, %._crit_edge338
  %.0166.lcssa = phi ptr [ null, %._crit_edge338 ], [ null, %.critedge212.thread ], [ null, %._crit_edge328 ], [ null, %.critedge212 ], [ %.1167.lcssa, %._crit_edge344 ]
  %i.ia = load i32, ptr %6, align 8
  %i.ib = and i32 %i.ia, 1
  %.not.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i, label %bb.ap, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

bb.ap:                                            ; preds = %._crit_edge350
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !8  ; 2 uses
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !8
  %i.ih = zext i32 %i.id to i64                   ; 2 uses
  %i.ii = shl nuw nsw i64 %i.ih, 4
  %i.ij = add nuw nsw i64 %i.ih, 31
  %i.ik = lshr i64 %i.ij, 3
  %i.il = and i64 %i.ik, 1073741820
  %i.im = add nuw nsw i64 %i.il, %i.ii
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ig, i64 noundef %i.im, i64 noundef 8) #17
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %._crit_edge350, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.critedge209

bb.ar:                                            ; preds = %.lr.ph349, %._crit_edge344
  %.0166347 = phi ptr [ null, %.lr.ph349 ], [ %.1167.lcssa, %._crit_edge344 ] ; 2 uses
  %.0171346 = phi ptr [ %.pre362, %.lr.ph349 ], [ %i.iv, %._crit_edge344 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.in = load ptr, ptr %.0171346, align 8, !tbaa !421
  store ptr %i.in, ptr %i.f, align 8, !tbaa !421
  %i.io = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.fca.0.extract.i232 = extractvalue { ptr, i8 } %i.io, 0
  %i.ip = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i232, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !421 ; 5 uses
  %i.ir = load ptr, ptr %i.f, align 8, !tbaa !421
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !130 ; 2 uses
  %.not305339 = icmp eq ptr %i.it, null
  br i1 %.not305339, label %._crit_edge344, label %.lr.ph343

.lr.ph343:                                        ; preds = %bb.ar
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  br label %bb.as

._crit_edge344:                                   ; preds = %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit, %bb.ar
  %.1167.lcssa = phi ptr [ %.0166347, %bb.ar ], [ %.4170, %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.iv = getelementptr inbounds nuw i8, ptr %.0171346, i64 8 ; 2 uses
  %.not190 = icmp eq ptr %i.iv, %i.em
  br i1 %.not190, label %._crit_edge350, label %bb.ar

bb.as:                                            ; preds = %.lr.ph343, %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit
  %.1167341 = phi ptr [ %.0166347, %.lr.ph343 ], [ %.4170, %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit ] ; 5 uses
  %.sroa.0250.0340 = phi ptr [ %i.it, %.lr.ph343 ], [ %i.ix, %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0250.0340, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !108 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0250.0340, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !145 ; 17 uses
  %i.ja = load i8, ptr %i.iz, align 8, !tbaa !21
  switch i8 %i.ja, label %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit [
    i8 64, label %bb.at
    i8 81, label %bb.bl
  ]

bb.at:                                            ; preds = %bb.as
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !423
  store ptr %i.jd, ptr %i.eo, align 8, !tbaa !420
  store ptr %i.jb, ptr %i.ep, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i240, align 8
  %i.je = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.iz) #17
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !127
  store i64 %i.jf, ptr %i.en, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i16 257, ptr %i.eq, align 8
  %i.jg = load ptr, ptr %i.iu, align 8, !tbaa !92
  %i.jh = icmp eq ptr %i.jg, %i.q
  br i1 %i.jh, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ji = load ptr, ptr %i.er, align 8, !tbaa !155, !nonnull !80, !align !81 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !156
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 120
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = call noundef ptr %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, i32 noundef 51, ptr noundef nonnull %i.iq, ptr noundef %i.q) #17, !inline_history !425 ; 2 uses
  %.not.not.i = icmp eq ptr %i.jm, null
  br i1 %.not.not.i, label %bb.av, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i16 257, ptr %i.es, align 8
  %i.jn = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 51, ptr noundef nonnull %i.iq, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #17 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.jo = call noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %i.jn)
  br i1 %i.jo, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %.sroa.0.0.copyload.i246 = load i32, ptr %i.et, align 8, !tbaa !17
  %i.jp = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not9.i.i = icmp eq ptr %i.jp, null
  br i1 %.not9.i.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.jn, i32 noundef 3, ptr noundef nonnull %i.jp) #17
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i: ; preds = %bb.ax, %bb.aw
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.jn, i32 %.sroa.0.0.copyload.i246) #17
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i, %bb.av
  %i.jq = load ptr, ptr %i.ev, align 8, !tbaa !158, !nonnull !80, !align !81 ; 2 uses
  %.sroa.0.0.copyload.i.i245 = load ptr, ptr %i.ep, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i240, align 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !156
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull %i.jn, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr %.sroa.0.0.copyload.i.i245, i64 %.sroa.2.0.copyload.i.i) #17, !inline_history !426
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.en, ptr noundef nonnull %i.jn) #17
  br label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit

_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit: ; preds = %bb.at, %bb.au, %bb.ay
  %.1.i = phi ptr [ %i.jm, %bb.au ], [ %i.jn, %bb.ay ], [ %i.iq, %bb.at ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.ju = getelementptr inbounds i8, ptr %i.iz, i64 -64 ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %i.iz, i64 -48 ; 3 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit
  %i.jx = getelementptr inbounds i8, ptr %i.iz, i64 -56 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !108 ; 3 uses
  store ptr %i.jy, ptr %i.jw, align 8, !tbaa !82
  %.not2.i.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not2.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store ptr %i.jw, ptr %i.jz, align 8, !tbaa !107
  store ptr null, ptr %i.jx, align 8, !tbaa !108
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store ptr null, ptr %i.jv, align 8, !tbaa !107
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit, %bb.bb
  store ptr %.1.i, ptr %i.ju, align 8, !tbaa !83
  %i.ka = load i8, ptr %.1.i, align 8, !tbaa !21
  %i.kb = icmp ugt i8 %i.ka, 10
  br i1 %i.kb, label %bb.bd, label %_ZN4llvm9StoreInst10setOperandEjPNS_5ValueE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.kc = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !82 ; 3 uses
  %i.ke = getelementptr inbounds i8, ptr %i.iz, i64 -56 ; 2 uses
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !108
  %.not.i.i.i.i.i241 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i.i.i241, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !107
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i:        ; preds = %bb.be, %bb.bd
  store ptr %i.kc, ptr %i.jv, align 8, !tbaa !107
  store ptr %i.ju, ptr %i.kc, align 8, !tbaa !82
  br label %_ZN4llvm9StoreInst10setOperandEjPNS_5ValueE.exit

_ZN4llvm9StoreInst10setOperandEjPNS_5ValueE.exit: ; preds = %bb.bc, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i
  %i.kg = load ptr, ptr %i.ew, align 8, !tbaa !128, !nonnull !80, !align !81 ; 8 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 2064 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 4 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !126
  %i.kk = load ptr, ptr %i.kh, align 8, !tbaa !427, !noalias !430 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 2072 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !439, !noalias !430 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 2084 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !440, !noalias !430 ; 4 uses
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %.loopexit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm9StoreInst10setOperandEjPNS_5ValueE.exit
  %i.kq = add i32 %i.ko, -1                       ; 2 uses
  %i.kr = ptrtoint ptr %i.iz to i64
  %i.ks = mul i64 %i.kr, -4658895280553007687     ; 2 uses
  %i.kt = lshr i64 %i.ks, 31
  %i.ku = xor i64 %i.kt, %i.ks
  %i.kv = trunc i64 %i.ku to i32
  %i.kw = and i32 %i.kq, %i.kv                    ; 3 uses
  %i.kx = zext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kx ; 2 uses
  %i.kz = lshr i64 %i.kx, 5
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !17, !noalias !441
  %i.lc = and i32 %i.kw, 31
  %i.ld = lshr i32 %i.lb, %i.lc
  %i.le = trunc i32 %i.ld to i1
  br i1 %i.le, label %.lr.ph.i.i, label %.loopexit.i, !prof !18

.lr.ph.i.i:                                       ; preds = %bb.bf, %bb.bg
  %i.lf = phi ptr [ %i.ll, %bb.bg ], [ %i.ky, %bb.bf ]
  %.01624.i.i = phi i32 [ %i.lj, %bb.bg ], [ %i.kw, %bb.bf ]
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !129, !noalias !441
  %i.lh = icmp eq ptr %i.iz, %i.lg
  br i1 %i.lh, label %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit, label %bb.bg, !prof !19

bb.bg:                                            ; preds = %.lr.ph.i.i
  %i.li = add nuw i32 %.01624.i.i, 1
  %i.lj = and i32 %i.li, %i.kq                    ; 3 uses
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.lk ; 2 uses
  %i.lm = lshr i64 %i.lk, 5
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !17, !noalias !441
  %i.lp = and i32 %i.lj, 31
  %i.lq = lshr i32 %i.lo, %i.lp
  %i.lr = trunc i32 %i.lq to i1
  br i1 %i.lr, label %.lr.ph.i.i, label %.loopexit.i, !prof !20, !llvm.loop !442

.loopexit.i:                                      ; preds = %bb.bg, %bb.bf, %_ZN4llvm9StoreInst10setOperandEjPNS_5ValueE.exit
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.ky, %bb.bf ], [ null, %_ZN4llvm9StoreInst10setOperandEjPNS_5ValueE.exit ], [ %i.ll, %bb.bg ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kg, i64 2080 ; 3 uses
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !443, !noalias !441
  %i.lu = shl i32 %i.lt, 2
  %i.lv = add i32 %i.lu, 4
  %i.lw = mul i32 %i.ko, 3
  %.not.i.i247 = icmp ult i32 %i.lv, %i.lw
  br i1 %.not.i.i247, label %.loopexit, label %bb.bh, !prof !19

bb.bh:                                            ; preds = %.loopexit.i
  %i.lx = shl i32 %i.ko, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.kh, i32 noundef %i.lx), !noalias !441
  %i.ly = load ptr, ptr %i.kh, align 8, !tbaa !427, !noalias !444 ; 5 uses
  %i.lz = load ptr, ptr %i.kl, align 8, !tbaa !439, !noalias !444 ; 5 uses
  %i.ma = load i32, ptr %i.kn, align 4, !tbaa !440, !noalias !444 ; 2 uses
  %i.mb = icmp ne i32 %i.ma, 0
  call void @llvm.assume(i1 %i.mb)
  %i.mc = add i32 %i.ma, -1                       ; 2 uses
  %i.md = ptrtoint ptr %i.iz to i64
  %i.me = mul i64 %i.md, -4658895280553007687     ; 2 uses
  %i.mf = lshr i64 %i.me, 31
  %i.mg = xor i64 %i.mf, %i.me
  %i.mh = trunc i64 %i.mg to i32
  %i.mi = and i32 %i.mc, %i.mh                    ; 3 uses
  %i.mj = zext i32 %i.mi to i64                   ; 2 uses
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.ly, i64 %i.mj ; 2 uses
  %i.ml = lshr i64 %i.mj, 5
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !17, !noalias !441
end_hunk_0
