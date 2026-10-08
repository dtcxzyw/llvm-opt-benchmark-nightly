Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineSelect?download=true
inline.NumInlined: 8401
inline.NumDeleted: 3143
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm16InstCombinerImpl15visitSelectInstERNS_10SelectInstE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit940.thread, %bb.aw, %.critedge85, %bb.al, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit, %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit940
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.ip = call fastcc noundef ptr @_ZL16foldSelectNegNotRN4llvm10SelectInstERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(120) %i.io) ; 2 uses
  %.not832 = icmp eq ptr %i.ip, null
  br i1 %.not832, label %bb.az, label %bb.jk

bb.az:                                            ; preds = %bb.ay
  %i.iq = call noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(76) %1) ; 2 uses
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !32  ; 11 uses
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !37
  %.not = icmp eq i8 %i.is, 86
  br i1 %.not, label %bb.ba, label %bb.bz

bb.ba:                                            ; preds = %bb.az
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 2 ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !202
  %i.iv = and i16 %i.iu, 63                       ; 3 uses
  %i.iw = zext nneg i16 %i.iv to i32              ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.ir, i64 -64
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !31 ; 14 uses
  %i.iz = getelementptr inbounds i8, ptr %i.ir, i64 -32
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !31 ; 5 uses
  %i.jb = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.jc = icmp eq ptr %i.iy, %i.jb
  %i.jd = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.je = icmp eq ptr %i.ja, %i.jd
  %or.cond905 = select i1 %i.jc, i1 %i.je, i1 false
  br i1 %or.cond905, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jf = icmp eq ptr %i.iy, %i.jd
  %i.jg = icmp eq ptr %i.ja, %i.jb
  %or.cond907 = select i1 %i.jf, i1 %i.jg, i1 false
  br i1 %or.cond907, label %bb.bc, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !45 ; 2 uses
  %.not.i947 = icmp eq ptr %i.ji, null
  br i1 %.not.i947, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit

_ZNK4llvm5Value9hasOneUseEv.exit:                 ; preds = %bb.bc
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !46
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.bd, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.bd:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit
  %i.jm = call noundef zeroext i1 @_ZN4llvm7CmpInst11isUnorderedENS0_9PredicateE(i32 noundef %i.iw) #17
  br i1 %i.jm, label %_ZN4llvm9FMFSourceC2EPNS_11InstructionE.exit, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

_ZN4llvm9FMFSourceC2EPNS_11InstructionE.exit:     ; preds = %bb.bd
  %i.jn = load i16, ptr %i.it, align 2, !tbaa !202
  %i.jo = and i16 %i.jn, 63
  %i.jp = zext nneg i16 %i.jo to i32
  %i.jq = call noundef i32 @_ZN4llvm7CmpInst19getInversePredicateENS0_9PredicateE(i32 noundef %i.jp) #17
  %i.jr = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ir) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.js = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ir) #17 ; 2 uses
  %i.jt = extractvalue { ptr, i64 } %i.js, 0
  %i.ju = extractvalue { ptr, i64 } %i.js, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i8 5, ptr %i.jv, align 8, !tbaa !49, !alias.scope !672
  %i.jw = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 3, ptr %i.jw, align 1, !tbaa !50, !alias.scope !672
  store ptr %i.jt, ptr %24, align 8, !tbaa !51, !alias.scope !672
  %i.jx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.ju, ptr %i.jx, align 8, !tbaa !51, !alias.scope !672
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @.str.8, ptr %i.jy, align 8, !tbaa !51, !alias.scope !672
  %.sroa.01177.0.insert.ext = zext i32 %i.jr to i64
  %.sroa.01177.0.insert.insert = or disjoint i64 %.sroa.01177.0.insert.ext, 4294967296
  %i.jz = call noundef ptr @_ZN4llvm13IRBuilderBase16CreateFCmpHelperENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_6MDNodeENS_9FMFSourceEb(ptr noundef nonnull align 8 dereferenceable(88) %i.io, i32 noundef %i.jq, ptr noundef %i.iy, ptr noundef %i.ja, ptr noundef nonnull align 8 dereferenceable(34) %24, ptr noundef null, i64 %.sroa.01177.0.insert.insert, i1 noundef zeroext false) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  %i.ka = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18 ; 2 uses
  %i.kb = call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoNaNsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ir) #18
  %i.kc = or i32 %i.ka, 2
  %.sroa.01174.0 = select i1 %i.kb, i32 %i.kc, i32 %i.ka ; 2 uses
  %i.kd = call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoInfsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ir) #18
  %i.ke = or i32 %.sroa.01174.0, 4
  %.sroa.01174.1 = select i1 %i.kd, i32 %i.ke, i32 %.sroa.01174.0
  %i.kf = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.kg = load ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.kh = getelementptr inbounds nuw i8, ptr %25, i64 32
  %.sroa.01171.0.insert.ext = zext i32 %.sroa.01174.1 to i64
  %.sroa.01171.0.insert.insert = or disjoint i64 %.sroa.01171.0.insert.ext, 4294967296
  store i16 257, ptr %i.kh, align 8
  %i.ki = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateSelectFMFEPNS_5ValueES2_S2_NS_9FMFSourceERKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.io, ptr noundef %i.jz, ptr noundef %i.kf, ptr noundef %i.kg, i64 %.sroa.01171.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  %i.kj = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.ki)
  br label %bb.jk

_ZNK4llvm5Value9hasOneUseEv.exit.thread:          ; preds = %bb.bc, %_ZNK4llvm5Value9hasOneUseEv.exit, %bb.bd, %bb.bb
  br i1 %i.iq, label %bb.be, label %.thread1224

bb.be:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.thread
  %i.kk = and i32 %i.iw, 55
  switch i32 %i.kk, label %bb.bh [
    i32 1, label %bb.bf
    i32 6, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.kl = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.km = load ptr, ptr %i.b, align 8, !tbaa !32
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.kn = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.ko = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg, %bb.bf
  %.0744 = phi ptr [ %i.km, %bb.bf ], [ %i.ko, %bb.bg ], [ null, %bb.be ]
  %.0742 = phi ptr [ %i.kl, %bb.bf ], [ %i.kn, %bb.bg ], [ null, %bb.be ]
  %i.kp = icmp eq ptr %i.iy, %.0742
  br i1 %i.kp, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.kq = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm14FPMathOperator20getFastMathFlagsImplEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.kq, align 4, !tbaa !81
  %i.kr = and i32 %.sroa.0.0.copyload.i.i, 8
  %i.ks = icmp ne i32 %i.kr, 0
  %i.kt = call fastcc noundef zeroext i1 @_ZL29matchFMulByZeroIfResultEqZeroRN4llvm16InstCombinerImplEPNS_5ValueES3_S3_S3_RNS_11InstructionEb(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef %i.iy, ptr noundef %i.ja, ptr noundef %.0744, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %i.ks)
  br i1 %i.kt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ku = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.iy)
  br label %bb.jk

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.kv = load ptr, ptr %i.d, align 8, !tbaa !77  ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i32, ptr %i.kw, align 8
  %i.ky = and i32 %i.kx, 254
  %spec.select.i.i949 = icmp eq i32 %i.ky, 18
  br i1 %spec.select.i.i949, label %bb.bl, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !76
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !77
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %bb.bk, %bb.bl
  %.0.i = phi ptr [ %i.lb, %bb.bl ], [ %i.kv, %bb.bk ] ; 2 uses
  %i.lc = icmp eq i16 %i.iv, 7                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.ld = add nsw i16 %i.iv, -7
  %or.cond90 = icmp ult i16 %i.ld, 2
  br i1 %or.cond90, label %bb.bm, label %.critedge92

bb.bm:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  store ptr null, ptr %26, align 8
  %i.le = call noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14cstval_pred_tyINS0_14is_pos_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_(ptr noundef %i.ja, ptr noundef nonnull align 8 dereferenceable(8) %26)
  br i1 %i.le, label %bb.bn, label %.critedge92

bb.bn:                                            ; preds = %bb.bm
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.lg = load i32, ptr %i.lf, align 8
  %trunc.i = trunc i32 %i.lg to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  switch i8 %trunc.i, label %.thread1222 [
    i8 3, label %bb.bo
    i8 2, label %bb.bo
    i8 0, label %bb.bo
    i8 1, label %bb.bo
    i8 5, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %.val1387 = load ptr, ptr %i.c, align 8         ; 2 uses
  %.1743 = select i1 %i.lc, ptr %.val, ptr %.val1387 ; 2 uses
  %.1745 = select i1 %i.lc, ptr %.val1387, ptr %.val
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  store double 1.000000e+00, ptr %27, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.iy, ptr %i.lh, align 8
  %i.li = call noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS0_14specific_fpvalENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_(ptr noundef %.1745, ptr noundef nonnull align 8 dereferenceable(16) %27) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  store i32 0, ptr %28, align 8, !tbaa !81, !alias.scope !673
  %.sroa.41.0..sroa_idx.i.i.i951 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.iy, ptr %.sroa.41.0..sroa_idx.i.i.i951, align 8, !tbaa !32, !alias.scope !673
  %i.lj = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 25, ptr %i.lj, align 8, !tbaa !81, !alias.scope !674
  %i.lk = call noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14specificval_tyEEEEEEEEbPT_RKT0_(ptr noundef %.1743, ptr noundef nonnull align 8 dereferenceable(20) %28) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  %or.cond94 = or i1 %i.li, %i.lk
  br i1 %or.cond94, label %bb.bp, label %.thread1222

bb.bp:                                            ; preds = %bb.bo
  %i.ll = call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i) #17
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !251, !nonnull !97, !align !100
  %i.lo = call i16 @_ZNK4llvm8Function15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(140) %i.ln, ptr noundef nonnull align 4 dereferenceable(29) %i.ll) #17 ; 3 uses
  %.sroa.01162.0.extract.trunc = trunc i16 %i.lo to i8
  %.sroa.61165.0.extract.shift = lshr i16 %i.lo, 8
  %.sroa.61165.0.extract.trunc = trunc nuw i16 %.sroa.61165.0.extract.shift to i8
  %i.lp = icmp eq i16 %i.lo, 0                    ; 2 uses
  %or.cond1378 = select i1 %i.li, i1 %i.lp, i1 false
  br i1 %or.cond1378, label %bb.bq, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.lk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.lq = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.iy)
  br label %bb.jk

bb.bs:                                            ; preds = %bb.bq
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !675, !nonnull !97, !align !100
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !177, !nonnull !97, !align !100
  %i.lv = call noundef zeroext i1 @_ZN4llvm24isGuaranteedNotToBeUndefEPKNS_5ValueEPNS_15AssumptionCacheEPKNS_11InstructionEPKNS_13DominatorTreeEj(ptr noundef %i.iy, ptr noundef nonnull %i.ls, ptr noundef nonnull %1, ptr noundef nonnull %i.lu, i32 noundef 0) #17
  br i1 %i.lv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lw = select i1 %i.lc, i32 2, i32 1
  %i.lx = call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.lw, ptr noundef %i.iy) ; 0 uses
  br label %bb.jk

bb.bu:                                            ; preds = %bb.bs
  %i.ly = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  %i.lz = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iy) #17 ; 2 uses
  %i.ma = extractvalue { ptr, i64 } %i.lz, 0
  %i.mb = extractvalue { ptr, i64 } %i.lz, 1
  %i.mc = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i8 5, ptr %i.mc, align 8, !tbaa !49, !alias.scope !676
  %i.md = getelementptr inbounds nuw i8, ptr %29, i64 33
  store i8 3, ptr %i.md, align 1, !tbaa !50, !alias.scope !676
  store ptr %i.ma, ptr %29, align 8, !tbaa !51, !alias.scope !676
  %i.me = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.mb, ptr %i.me, align 8, !tbaa !51, !alias.scope !676
  %i.mf = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr @.str.7, ptr %i.mf, align 8, !tbaa !51, !alias.scope !676
  call void @_ZN4llvm10FreezeInstC1EPNS_5ValueERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ly, ptr noundef nonnull %i.iy, ptr noundef nonnull align 8 dereferenceable(34) %29, ptr null, i64 0) #17
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.mh = call noundef ptr @_ZN4llvm12InstCombiner19InsertNewInstBeforeEPNS_11InstructionENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull %i.ly, ptr nonnull %i.mg, i64 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  %i.mi = call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ir, i32 noundef 0, ptr noundef %i.mh) ; 0 uses
  %i.mj = select i1 %i.lc, i32 2, i32 1
  %i.mk = call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.mj, ptr noundef %i.mh)
  br label %bb.jk

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %bb.bp
  br i1 %i.lk, label %bb.bv, label %.thread1222

bb.bv:                                            ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  br i1 %i.lp, label %bb.bw, label %_ZNK4llvm12DenormalModeeqES0_.exit954.thread

bb.bw:                                            ; preds = %bb.bv
  %i.ml = select i1 %i.lc, i32 1, i32 2
  %i.mm = call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.ml, ptr noundef %i.iy) ; 0 uses
  br label %bb.jk

_ZNK4llvm12DenormalModeeqES0_.exit954.thread:     ; preds = %bb.bv
  br i1 %i.li, label %bb.bx, label %.thread1222

bb.bx:                                            ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit954.thread
  %i.mn = add i8 %.sroa.61165.0.extract.trunc, -1
  %spec.select.i955.a = icmp ult i8 %i.mn, 2
  %i.mo = add i8 %.sroa.01162.0.extract.trunc, -1
  %spec.select.i956 = icmp ult i8 %i.mo, 2
  %or.cond1381 = select i1 %spec.select.i955.a, i1 true, i1 %spec.select.i956
  br i1 %or.cond1381, label %bb.by, label %.thread1222

bb.by:                                            ; preds = %bb.bx
  %i.mp = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %.1743)
  br label %bb.jk

.critedge92:                                      ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %.thread1222

bb.bz:                                            ; preds = %bb.az
  br i1 %i.iq, label %.thread1222, label %.thread1224

.thread1222:                                      ; preds = %bb.bn, %bb.bx, %_ZNK4llvm12DenormalModeeqES0_.exit.thread, %_ZNK4llvm12DenormalModeeqES0_.exit954.thread, %bb.bo, %.critedge92, %bb.bz
  %i.mq = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.mr = load i8, ptr %i.mq, align 8, !tbaa !37
  %.not1391 = icmp eq i8 %i.mr, 86
  br i1 %.not1391, label %bb.ca, label %.thread1224

bb.ca:                                            ; preds = %.thread1222
  %i.ms = call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoNaNsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.mq) #18
  br i1 %i.ms, label %bb.cb, label %.thread1224

bb.cb:                                            ; preds = %bb.ca
  %i.mt = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm14FPMathOperator20getFastMathFlagsImplEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %.sroa.0.0.copyload.i.i958 = load i32, ptr %i.mt, align 4, !tbaa !81
  %i.mu = and i32 %.sroa.0.0.copyload.i.i958, 8
  %.not1392.a = icmp eq i32 %i.mu, 0
  br i1 %.not1392.a, label %bb.cc, label %.critedge98

bb.cc:                                            ; preds = %bb.cb
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !45 ; 3 uses
  %.not.i959 = icmp eq ptr %i.mw, null
  br i1 %.not.i959, label %.thread1224, label %_ZNK4llvm5Value9hasOneUseEv.exit961

_ZNK4llvm5Value9hasOneUseEv.exit961:              ; preds = %bb.cc
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !46
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.cd, label %.thread1224

bb.cd:                                            ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit961
  %i.na = call noundef zeroext i1 @_ZN4llvm22canIgnoreSignBitOfZeroERKNS_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.mw) #17
  br i1 %i.na, label %.critedge98, label %.thread1224

.critedge98:                                      ; preds = %bb.cb, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  %i.nb = ptrtoint ptr %i.e to i64                ; 4 uses
  %i.nc = ptrtoint ptr %i.f to i64                ; 4 uses
  store i64 %i.nb, ptr %30, align 8, !tbaa !53, !alias.scope !677
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.nc, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !53, !alias.scope !677
  %i.nd = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.nb, ptr %i.nd, align 8, !tbaa !53, !alias.scope !677
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i64 %i.nc, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !53, !alias.scope !677
  %i.ne = call noundef zeroext i1 @_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_12PatternMatch13FMaxMin_matchINS0_10match_bindINS_5ValueEEES6_NS2_13ofmax_pred_tyEEENS3_IS6_S6_NS2_13ufmax_pred_tyEEEEE5matchINS_10SelectInstEEEbPT_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  br i1 %i.ne, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.critedge98
  %i.nf = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.ng = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.nh = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.ni = getelementptr inbounds nuw i8, ptr %31, i64 32
  %.sroa.01154.0.insert.ext = zext i32 %i.nh to i64
  %.sroa.01154.0.insert.insert = or disjoint i64 %.sroa.01154.0.insert.ext, 4294967296
  store i16 257, ptr %i.ni, align 8
  %i.nj = call noundef ptr @_ZN4llvm13IRBuilderBase21CreateBinaryIntrinsicEjPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.io, i32 noundef 254, ptr noundef %i.nf, ptr noundef %i.ng, i64 %.sroa.01154.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(34) %31) #17 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  %i.nk = load i8, ptr %i.nj, align 8, !tbaa !37
  %i.nl = icmp ult i8 %i.nk, 30
  br i1 %i.nl, label %.critedge96.thread1229, label %.critedge96.thread1229.sink.split

bb.cf:                                            ; preds = %.critedge98
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  store i64 %i.nb, ptr %32, align 8, !tbaa !53, !alias.scope !678
  %.sroa.4.0..sroa_idx.i965 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.nc, ptr %.sroa.4.0..sroa_idx.i965, align 8, !tbaa !53, !alias.scope !678
  %i.nm = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i64 %i.nb, ptr %i.nm, align 8, !tbaa !53, !alias.scope !678
  %.sroa.45.0..sroa_idx.i966 = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i64 %i.nc, ptr %.sroa.45.0..sroa_idx.i966, align 8, !tbaa !53, !alias.scope !678
  %i.nn = call noundef zeroext i1 @_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_12PatternMatch13FMaxMin_matchINS0_10match_bindINS_5ValueEEES6_NS2_13ofmin_pred_tyEEENS3_IS6_S6_NS2_13ufmin_pred_tyEEEEE5matchINS_10SelectInstEEEbPT_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  br i1 %i.nn, label %bb.cg, label %.critedge96

bb.cg:                                            ; preds = %bb.cf
  %i.no = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.np = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.nq = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  %i.nr = getelementptr inbounds nuw i8, ptr %33, i64 32
  %.sroa.01149.0.insert.ext = zext i32 %i.nq to i64
  %.sroa.01149.0.insert.insert = or disjoint i64 %.sroa.01149.0.insert.ext, 4294967296
  store i16 257, ptr %i.nr, align 8
  %i.ns = call noundef ptr @_ZN4llvm13IRBuilderBase21CreateBinaryIntrinsicEjPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.io, i32 noundef 265, ptr noundef %i.no, ptr noundef %i.np, i64 %.sroa.01149.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(34) %33) #17 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  %i.nt = load i8, ptr %i.ns, align 8, !tbaa !37
  %i.nu = icmp ult i8 %i.nt, 30
  br i1 %i.nu, label %.critedge96.thread1229, label %.critedge96.thread1229.sink.split

.critedge96.thread1229.sink.split:                ; preds = %bb.cg, %bb.ce
  %.sink1534 = phi ptr [ %i.nj, %bb.ce ], [ %i.ns, %bb.cg ] ; 4 uses
  %i.nv = call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoInfsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.mq) #18
  call void @_ZN4llvm11Instruction12setHasNoInfsEb(ptr noundef nonnull align 8 dereferenceable(72) %.sink1534, i1 noundef zeroext %i.nv) #17
  call void @_ZN4llvm11Instruction19setHasNoSignedZerosEb(ptr noundef nonnull align 8 dereferenceable(72) %.sink1534, i1 noundef zeroext true) #17
  call void @_ZN4llvm11Instruction12setHasNoNaNsEb(ptr noundef nonnull align 8 dereferenceable(72) %.sink1534, i1 noundef zeroext true) #17
  br label %.critedge96.thread1229

.critedge96.thread1229:                           ; preds = %.critedge96.thread1229.sink.split, %bb.cg, %bb.ce
  %.sink = phi ptr [ %i.nj, %bb.ce ], [ %i.ns, %bb.cg ], [ %.sink1534, %.critedge96.thread1229.sink.split ]
  %i.nw = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.jk

.critedge96:                                      ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %.thread1224

.thread1224:                                      ; preds = %bb.cc, %bb.ca, %.thread1222, %_ZNK4llvm5Value9hasOneUseEv.exit961, %bb.cd, %_ZNK4llvm5Value9hasOneUseEv.exit.thread, %.critedge96, %bb.bz
  %i.nx = call fastcc noundef ptr @_ZL24foldSelectWithFCmpToFabsRN4llvm10SelectInstERNS_16InstCombinerImplE(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(1240) %0) ; 2 uses
  %.not839 = icmp eq ptr %i.nx, null
  br i1 %.not839, label %bb.ch, label %bb.jk

bb.ch:                                            ; preds = %.thread1224
  %i.ny = call fastcc noundef ptr @_ZL44foldSelectOfOrderedFAbsCmpOfNaNScrubbedValueRN4llvm10SelectInstERNS_16InstCombinerImplE(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(1240) %0) ; 2 uses
  %.not840 = icmp eq ptr %i.ny, null
  br i1 %.not840, label %bb.ci, label %bb.jk

bb.ci:                                            ; preds = %bb.ch
  %i.nz = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !37
  %i.ob = add i8 %i.oa, -87
  %i.oc = icmp ult i8 %i.ob, -2
  br i1 %i.oc, label %.thread1236, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.od = call noundef ptr @_ZN4llvm16InstCombinerImpl26foldSelectValueEquivalenceERNS_10SelectInstERNS_7CmpInstE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.nz) ; 2 uses
  %.not842 = icmp eq ptr %i.od, null
  br i1 %.not842, label %.thread1232, label %bb.jk

.thread1232:                                      ; preds = %bb.cj
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %.pre1438 = load i8, ptr %.pre, align 8, !tbaa !37
  %.not1397 = icmp eq i8 %.pre1438, 85
  br i1 %.not1397, label %bb.ck, label %.thread1236

bb.ck:                                            ; preds = %.thread1232
  %i.oe = call noundef ptr @_ZN4llvm16InstCombinerImpl22foldSelectInstWithICmpERNS_10SelectInstEPNS_8ICmpInstE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull %.pre) ; 2 uses
  %.not844 = icmp eq ptr %i.oe, null
  br i1 %.not844, label %..thread1236_crit_edge, label %bb.jk

..thread1236_crit_edge:                           ; preds = %bb.ck
  %.pre1439 = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %.thread1236

.thread1236:                                      ; preds = %bb.ci, %..thread1236_crit_edge, %.thread1232
  %i.of = phi ptr [ %.pre1439, %..thread1236_crit_edge ], [ %.pre, %.thread1232 ], [ %i.nz, %bb.ci ]
  %i.og = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.oh = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.oi = call fastcc noundef ptr @_ZL17foldSelectBitTestRN4llvm10SelectInstEPNS_5ValueES3_S3_RNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEERKNS_13SimplifyQueryE(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %i.of, ptr noundef %i.og, ptr noundef %i.oh, ptr noundef nonnull align 8 dereferenceable(120) %i.io, ptr noundef nonnull align 8 dereferenceable(59) %i.ae) ; 2 uses
  %.not845 = icmp eq ptr %i.oi, null
  br i1 %.not845, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.thread1236
  %i.oj = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.oi)
  br label %bb.jk

bb.cm:                                            ; preds = %.thread1236
  %i.ok = call fastcc noundef ptr @_ZL16foldAddSubSelectRN4llvm10SelectInstERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(120) %i.io) ; 2 uses
  %.not846 = icmp eq ptr %i.ok, null
  br i1 %.not846, label %bb.cn, label %bb.jk

bb.cn:                                            ; preds = %bb.cm
  %i.ol = call fastcc noundef ptr @_ZL27foldOverflowingAddSubSelectRN4llvm10SelectInstERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE(ptr noundef nonnull align 8 dereferenceable(76) %1) ; 2 uses
  %.not847 = icmp eq ptr %i.ol, null
  br i1 %.not847, label %bb.co, label %bb.jk

end_hunk_0
