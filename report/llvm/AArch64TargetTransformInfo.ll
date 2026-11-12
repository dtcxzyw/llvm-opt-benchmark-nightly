Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64TargetTransformInfo?download=true
inline.NumInlined: 13233
inline.NumDeleted: 4962
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL19instCombineSVECmpNERN4llvm12InstCombinerERNS_13IntrinsicInstE:bb.a
bb.aa:                                            ; preds = %_ZL20isAllActivePredicatePN4llvm5ValueE.exit
  %i.ga = load i32, ptr %i.n, align 4
  %i.gb = and i32 %i.ga, 268435455
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = sub nsw i64 0, %i.gc
  %i.ge = getelementptr inbounds [32 x i8], ptr %1, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !72
  %i.gh = call noundef ptr @_ZN4llvm13getSplatValueEPKNS_5ValueE(ptr noundef %i.gg) #30 ; 3 uses
  %.not.i.i105 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i105, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !67
  %i.gj = icmp eq i8 %i.gi, 5
  br i1 %i.gj, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit: ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = icmp slt i8 %i.gl, 0
  br i1 %i.gm, label %bb.ac, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.ac:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit
  %i.gn = load i32, ptr %i.n, align 4
  %i.go = and i32 %i.gn, 268435455
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds [32 x i8], ptr %1, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !72 ; 4 uses
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !67
  %i.gv = icmp eq i8 %i.gu, 88
  br i1 %i.gv, label %bb.ad, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 -32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !67
  %i.gz = icmp eq i8 %i.gy, 14
  br i1 %i.gz, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i: ; preds = %bb.ae
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hb = load i32, ptr %i.ha, align 8
  %i.hc = and i32 %i.hb, 8192
  %.not.i.i107 = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i107, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !346
  %.not94 = icmp eq i32 %i.he, 1399
  br i1 %.not94, label %bb.af, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.af:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, 268435455
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = sub nsw i64 0, %i.hi
  %i.hk = getelementptr inbounds [32 x i8], ptr %i.gt, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !72 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !67
  %.not = icmp eq i8 %i.hn, 5
  br i1 %.not, label %bb.ag, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.hp = load i8, ptr %i.ho, align 1
  %i.hq = icmp slt i8 %i.hp, 0
  br i1 %i.hq, label %bb.ah, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hr = load ptr, ptr %i.hk, align 8, !tbaa !72 ; 4 uses
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !67
  %i.ht = icmp eq i8 %i.hs, 88
  br i1 %i.ht, label %bb.ai, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.hu = getelementptr inbounds i8, ptr %i.hr, i64 -32
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i111 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i111, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !67
  %i.hx = icmp eq i8 %i.hw, 14
  br i1 %i.hx, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i112, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i112: ; preds = %bb.aj
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hz = load i32, ptr %i.hy, align 8
  %i.ia = and i32 %i.hz, 8192
  %.not.i.i113 = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i113, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit115

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit115: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i112
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 36
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !346
  %.not97 = icmp eq i32 %i.ic, 412
  br i1 %.not97, label %bb.ak, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.ak:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit115
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = and i32 %i.ie, 268435455
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = getelementptr inbounds [32 x i8], ptr %i.hr, i64 %i.ih ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !72
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !67
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.ik, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.al, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 64
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !72
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = icmp slt i8 %i.io, 0
  br i1 %i.ip, label %bb.am, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !72 ; 3 uses
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !67
  %i.it = icmp ugt i8 %i.is, 22
  br i1 %i.it, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !306 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load i32, ptr %i.iw, align 8
  %i.iy = and i32 %i.ix, 255
  %i.iz = icmp eq i32 %i.iy, 18
  %i.ja = load ptr, ptr %i.g, align 8, !tbaa !306 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 8
  %i.jd = and i32 %i.jc, 255
  %i.je = icmp eq i32 %i.jd, 19
  %i.jf = icmp ne ptr %i.iv, null
  %i.jg = and i1 %i.jf, %i.iz
  %i.jh = icmp ne ptr %i.ja, null
  %i.ji = and i1 %i.jh, %i.je
  %or.cond = and i1 %i.jg, %i.ji
  br i1 %or.cond, label %bb.ao, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !242 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !242
  %.not99 = icmp eq i32 %i.jk, %i.jm
  br i1 %.not99, label %.preheader163, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

.preheader163:                                    ; preds = %bb.ao
  %.not101168.not = icmp eq i32 %i.jk, 0
  br i1 %.not101168.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader163, %bb.ar
  %.080170 = phi i32 [ %i.jw, %bb.ar ], [ 0, %.preheader163 ] ; 3 uses
  %.081169 = phi i32 [ %.283.ph, %bb.ar ], [ 0, %.preheader163 ] ; 2 uses
  %i.jn = call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i32 noundef %.080170) #30 ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 8, !tbaa !67
  %.not162 = icmp eq i8 %i.jo, 5
  br i1 %.not162, label %bb.ap, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.ap:                                            ; preds = %.lr.ph
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = icmp slt i8 %i.jq, 0
  br i1 %i.jr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.js = udiv i32 16, %i.jk
  %i.jt = mul i32 %i.js, %.080170
  %i.ju = shl nuw i32 1, %i.jt
  %i.jv = or i32 %i.ju, %.081169
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.283.ph = phi i32 [ %.081169, %bb.ap ], [ %i.jv, %bb.aq ] ; 10 uses
  %i.jw = add nuw i32 %.080170, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.jw, %i.jk
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !810

._crit_edge:                                      ; preds = %bb.ar
  %i.jx = icmp eq i32 %.283.ph, 0
  br i1 %i.jx, label %._crit_edge.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %i.jy = lshr i32 %.283.ph, 1
  %.lobit = and i32 %i.jy, 1
  %.1.1 = or disjoint i32 %.lobit, 8
  %i.jz = lshr i32 %.283.ph, 1
  %i.ka = and i32 %i.jz, 2
  %.1.2.a = or disjoint i32 %i.ka, %.1.1
  %i.kb = insertelement <8 x i32> poison, i32 %.283.ph, i64 0
  %i.kc = shufflevector <8 x i32> %i.kb, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kd = and <8 x i32> %i.kc, <i32 32768, i32 16384, i32 8192, i32 2048, i32 128, i32 64, i32 32, i32 8>
  %i.ke = lshr i32 %.283.ph, 2
  %i.kf = and i32 %i.ke, 4
  %i.kg = lshr i32 %.283.ph, 9
  %.lobit201 = and i32 %i.kg, 1
  %i.kh = lshr i32 %.283.ph, 9
  %i.ki = and i32 %i.kh, 2
  %i.kj = lshr i32 %.283.ph, 10
  %i.kk = and i32 %i.kj, 4
  %i.kl = icmp eq <8 x i32> %i.kd, zeroinitializer ; 8 uses
  %i.km = extractelement <8 x i1> %i.kl, i64 7
  %i.kn = select i1 %i.km, i32 0, i32 3
  %.1.3.a = or i32 %i.kn, %.1.2.a
  %.1.4.a = or disjoint i32 %i.kf, %.1.3.a
  %i.ko = extractelement <8 x i1> %i.kl, i64 6
  %i.kp = select i1 %i.ko, i32 0, i32 5
  %.1.5.a = or i32 %i.kp, %.1.4.a
  %i.kq = extractelement <8 x i1> %i.kl, i64 5
  %i.kr = select i1 %i.kq, i32 0, i32 6
  %.1.6.a = or i32 %i.kr, %.1.5.a
  %i.ks = extractelement <8 x i1> %i.kl, i64 4
  %i.kt = select i1 %i.ks, i32 0, i32 7
  %.1.7.a = or i32 %i.kt, %.1.6.a
  %.1.9.a = or i32 %.lobit201, %.1.7.a
  %.1.10.a = or i32 %i.ki, %.1.9.a
  %i.ku = extractelement <8 x i1> %i.kl, i64 3
  %i.kv = select i1 %i.ku, i32 0, i32 3
  %.1.11.a = or i32 %i.kv, %.1.10.a
  %.1.12.a = or i32 %i.kk, %.1.11.a
  %i.kw = extractelement <8 x i1> %i.kl, i64 2
  %i.kx = select i1 %i.kw, i32 0, i32 5
  %.1.13.a = or i32 %i.kx, %.1.12.a
  %i.ky = extractelement <8 x i1> %i.kl, i64 1
  %i.kz = select i1 %i.ky, i32 0, i32 6
  %.1.14.a = or i32 %i.kz, %.1.13.a
  %i.la = extractelement <8 x i1> %i.kl, i64 0
  %i.lb = select i1 %i.la, i32 0, i32 7
  %.1.15 = or i32 %i.lb, %.1.14.a                 ; 2 uses
  %i.lc = sub nsw i32 0, %.1.15
  %i.ld = and i32 %.1.15, %i.lc                   ; 2 uses
  %i.le = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #30
  %i.lf = shl nuw nsw i32 %i.ld, 3
  %i.lg = call range(i32 3, 33) i32 @llvm.cttz.i32(i32 %i.lf, i1 true)
  %i.lh = lshr i32 128, %i.lg
  %i.li = call noundef ptr @_ZN4llvm18ScalableVectorType3getEPNS_4TypeEj(ptr noundef %i.le, i32 noundef %i.lh) #30 ; 2 uses
  br label %bb.at

._crit_edge.thread:                               ; preds = %.preheader163, %._crit_edge
  %i.lj = load ptr, ptr %i.g, align 8, !tbaa !306
  %i.lk = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.lj) #30 ; 2 uses
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, ptr noundef nonnull %1) #30
  %i.ll = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.lk)
  br label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

bb.as:                                            ; preds = %bb.at
  %i.lm = add nuw nsw i32 %.0173, %i.ld           ; 2 uses
  %i.ln = icmp samesign ugt i32 %i.lm, 15
  br i1 %i.ln, label %.critedge, label %bb.at, !llvm.loop !811

bb.at:                                            ; preds = %.preheader.preheader, %bb.as
  %.0173 = phi i32 [ 0, %.preheader.preheader ], [ %i.lm, %bb.as ] ; 2 uses
  %i.lo = shl nuw nsw i32 1, %.0173
  %i.lp = and i32 %i.lo, %.283.ph
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread, label %bb.as

.critedge:                                        ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store ptr %i.li, ptr %i.d, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.ls = call noundef ptr @_ZN4llvm11ConstantInt7getTrueEPNS_4TypeE(ptr noundef %i.li) #30
  store ptr %i.ls, ptr %i.e, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.lt, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %9, align 8, !tbaa !402
  %i.lu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lv = ptrtoint ptr %10 to i64
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !403
  %i.lw = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.lr, i32 noundef 1395, ptr nonnull %i.d, i64 1, ptr nonnull %i.e, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull byval(%"class.llvm::ArrayRef.187") align 8 %8, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store ptr %i.lw, ptr %i.c, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.lx = load ptr, ptr %i.g, align 8, !tbaa !306
  store ptr %i.lx, ptr %i.f, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.ly = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i16 257, ptr %i.ly, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %13, align 8, !tbaa !402
  %i.lz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ma = ptrtoint ptr %14 to i64
  store i64 %i.ma, ptr %i.lz, align 8, !tbaa !403
  %i.mb = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.lr, i32 noundef 1394, ptr nonnull %i.f, i64 1, ptr nonnull %i.c, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef.187") align 8 %12, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %13) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.mb, ptr noundef nonnull %1) #30
  %i.mc = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.mb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread

_ZL20isAllActivePredicatePN4llvm5ValueE.exit.thread: ; preds = %.lr.ph, %bb.at, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i112, %bb.aj, %bb.ah, %bb.ai, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i, %bb.ae, %bb.ac, %bb.ad, %bb.aa, %bb.ab, %bb.w, %bb.x, %bb.y, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i12.i, %bb.t, %bb.u, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i.i, %bb.s, %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread.i, %bb.an, %bb.ao, %bb.am, %bb.al, %bb.ak, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit115, %bb.af, %bb.ag, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit, %_ZL20isAllActivePredicatePN4llvm5ValueE.exit, %_ZL23instCombineZExtSVECmpNERN4llvm12InstCombinerERNS_13IntrinsicInstE.exit, %._crit_edge.thread, %.critedge, %bb.a
  %.sroa.0137.0 = phi ptr [ %i.k, %bb.a ], [ %1, %_ZL23instCombineZExtSVECmpNERN4llvm12InstCombinerERNS_13IntrinsicInstE.exit ], [ %1, %_ZL20isAllActivePredicatePN4llvm5ValueE.exit ], [ %1, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit ], [ %1, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit ], [ %1, %bb.af ], [ %1, %bb.al ], [ %1, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i112 ], [ %i.ll, %._crit_edge.thread ], [ %i.mc, %.critedge ], [ %1, %bb.an ], [ %1, %bb.am ], [ %1, %bb.ak ], [ %1, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit115 ], [ %1, %bb.at ], [ %1, %bb.w ], [ %1, %bb.aa ], [ %1, %bb.ag ], [ %1, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i ], [ %1, %bb.ao ], [ %1, %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread.i ], [ %1, %bb.s ], [ %1, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i.i ], [ %1, %bb.u ], [ %1, %bb.t ], [ %1, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i12.i ], [ %1, %bb.y ], [ %1, %bb.x ], [ %1, %bb.ab ], [ %1, %bb.ad ], [ %1, %bb.ac ], [ %1, %bb.ae ], [ %1, %bb.ai ], [ %1, %bb.ah ], [ %1, %bb.aj ], [ %1, %.lr.ph ]
  %.sroa.5.3 = phi i8 [ 1, %bb.a ], [ 1, %_ZL23instCombineZExtSVECmpNERN4llvm12InstCombinerERNS_13IntrinsicInstE.exit ], [ 0, %_ZL20isAllActivePredicatePN4llvm5ValueE.exit ], [ 0, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit ], [ 0, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit ], [ 0, %bb.af ], [ 0, %bb.al ], [ 0, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i112 ], [ 1, %._crit_edge.thread ], [ 1, %.critedge ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit115 ], [ 0, %bb.at ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.ag ], [ 0, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i ], [ 0, %bb.ao ], [ 0, %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread.i ], [ 0, %bb.s ], [ 0, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i12.i ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.aj ], [ 0, %.lr.ph ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0137.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.5.3, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i8 } @_ZL16instCombineRDFFRRN4llvm12InstCombinerERNS_13IntrinsicInstE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.187", align 8 ; 4 uses
  %3 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %class.anon.556, align 1            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = tail call noundef ptr @_ZN4llvm11ConstantInt7getTrueEPNS_4TypeE(ptr noundef %i.d) #30
  store ptr %i.e, ptr %i.a, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.g = ptrtoint ptr %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, i32 noundef 1745, ptr null, i64 0, ptr nonnull %i.a, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.187") align 8 %2, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %3) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull %1) #30
  %i.i = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.h)
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %i.i, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i8 } @_ZL18instCombineSVELastRN4llvm12InstCombinerERNS_13IntrinsicInstE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = alloca [2 x ptr], align 8                ; 5 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::ArrayRef.187", align 8 ; 2 uses
  %4 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %5 = alloca %class.anon.548, align 1            ; 3 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %i.d = alloca [2 x ptr], align 8                ; 5 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::ArrayRef.187", align 8 ; 2 uses
  %8 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %9 = alloca %class.anon.548, align 1            ; 3 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 268435455
  %i.h = zext nneg i32 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [32 x i8], ptr %1, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 11 uses
  %i.n = getelementptr inbounds i8, ptr %1, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !346  ; 3 uses
  %i.r = icmp eq i32 %i.q, 1622                   ; 2 uses
  %i.s = tail call noundef ptr @_ZN4llvm13getSplatValueEPKNS_5ValueE(ptr noundef %i.m) #30 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.s)
  br label %_ZN4llvm32getNumElementsFromSVEPredPatternEj.exit

.critedge:                                        ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !329  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_12OneUse_matchINS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_Lb0EEEEEEEbPT_RKT0_.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit.i.i

_ZNK4llvm5Value9hasOneUseEv.exit.i.i:             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !330
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_12OneUse_matchINS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_Lb0EEEEEEEbPT_RKT0_.exit.thread

bb.c:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i
  %i.z = load i8, ptr %i.m, align 8, !tbaa !67
  %i.aa = add i8 %i.z, -44
  %i.ab = icmp ult i8 %i.aa, 18
  br i1 %i.ab, label %bb.d, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_12OneUse_matchINS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_Lb0EEEEEEEbPT_RKT0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.m, i64 -64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.not.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_12OneUse_matchINS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_Lb0EEEEEEEbPT_RKT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 3 uses
  %.not.i8.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.not.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_12OneUse_matchINS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_Lb0EEEEEEEbPT_RKT0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call noundef zeroext i1 @_ZN4llvm12isSplatValueEPKNS_5ValueEij(ptr noundef nonnull %i.ad, i32 noundef -1, i32 noundef 0) #30
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm12isSplatValueEPKNS_5ValueEij(ptr noundef nonnull %i.af, i32 noundef -1, i32 noundef 0) #30
  br i1 %i.ah, label %bb.h, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_12OneUse_matchINS0_17AnyBinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_Lb0EEEEEEEbPT_RKT0_.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = load i8, ptr %i.m, align 8, !tbaa !67
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -30
end_hunk_0
