Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tiffinput?download=true
inline.NumInlined: 5003
inline.NumDeleted: 1754
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN11OpenImageIO4v3_19TIFFInput27read_native_scanline_lockedEiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  %i.zf = mul i64 %i.yv, %i.ze
  %i.zg = mul i64 %i.zf, %i.yu
  %i.zh = mul i64 %i.zg, %spec.select.i.i.i226
  %i.zi = mul i64 %i.yv, %i.yu
  %i.zj = mul i64 %i.zi, %spec.select.i.i.i226
  %i.zk = mul i64 %i.yv, %i.yn
  %i.zl = mul i64 %i.zk, %i.yu
  %i.zm = mul i64 %i.zl, %spec.select.i.i.i226
  %i.zn = mul i64 %i.yv, %i.yn
  %i.zo = mul i64 %i.zn, %i.yu
  %i.zp = mul i64 %i.zo, %spec.select.i.i.i226
  %i.zq = getelementptr i8, ptr %i.yr, i64 %i.zh
  %i.zr = getelementptr i8, ptr %4, i64 %i.zm
  %min.iters.check592 = icmp ult i64 %i.yx, 4
  %i.zs = or i64 %i.zb, %i.yx
  %i.zt = icmp slt i64 %i.zs, 0
  %min.iters.check600 = icmp ult i64 %i.yx, 32
  %i.zu = and i64 %i.yx, 28
  %n.vec602 = and i64 %i.yx, -32                  ; 4 uses
  %cmp.n609 = icmp eq i64 %i.yx, %n.vec602
  %min.epilog.iters.check613 = icmp eq i64 %i.zu, 0
  %n.vec616 = and i64 %i.yx, -4                   ; 3 uses
  %cmp.n622 = icmp eq i64 %i.yx, %n.vec616
  %xtraiter675 = and i64 %i.yx, 3                 ; 2 uses
  %lcmp.mod676.not = icmp eq i64 %xtraiter675, 0
  br label %.preheader24.i232

.preheader24.i232:                                ; preds = %.preheader24.i232.preheader, %._crit_edge27.i240
  %.02028.i233 = phi i64 [ %i.aau, %._crit_edge27.i240 ], [ 0, %.preheader24.i232.preheader ] ; 5 uses
  %i.zv = mul i64 %i.zj, %.02028.i233             ; 2 uses
  %scevgep588 = getelementptr i8, ptr %i.zq, i64 %i.zv
  %scevgep589 = getelementptr i8, ptr %i.yr, i64 %i.zv
  %i.zw = mul i64 %i.zp, %.02028.i233             ; 2 uses
  %scevgep590 = getelementptr i8, ptr %i.zr, i64 %i.zw
  %scevgep591 = getelementptr i8, ptr %4, i64 %i.zw
  %i.zx = mul i64 %.02028.i233, %i.yn
  %bound0594 = icmp ult ptr %scevgep591, %scevgep588
  %bound1595 = icmp ult ptr %scevgep589, %scevgep590
  %found.conflict596 = and i1 %bound0594, %bound1595
  %i.zy = or i1 %found.conflict596, %i.zt
  br label %iter.check610

iter.check610:                                    ; preds = %._crit_edge.i238, %.preheader24.i232
  %.01926.i235 = phi i64 [ 0, %.preheader24.i232 ], [ %i.aav, %._crit_edge.i238 ] ; 3 uses
  %i.zz = mul i64 %.01926.i235, %i.yp
  %i.aaa = add i64 %i.zz, %.02028.i233
  %i.aab = mul i64 %i.aaa, %i.yx
  %i.aac = getelementptr i8, ptr %i.yr, i64 %i.aab ; 7 uses
  %i.aad = add i64 %.01926.i235, %i.zx
  %i.aae = mul i64 %i.aad, %i.yx
  %i.aaf = getelementptr i8, ptr %4, i64 %i.aae   ; 7 uses
  %brmerge698 = select i1 %min.iters.check592, i1 true, i1 %i.zy
  br i1 %brmerge698, label %vec.epilog.scalar.ph612.preheader, label %vector.main.loop.iter.check599

vector.main.loop.iter.check599:                   ; preds = %iter.check610
  br i1 %min.iters.check600, label %vec.epilog.ph614, label %vector.body603

vector.body603:                                   ; preds = %vector.main.loop.iter.check599, %vector.body603
  %index604 = phi i64 [ %index.next607, %vector.body603 ], [ 0, %vector.main.loop.iter.check599 ] ; 3 uses
  %i.aag = getelementptr i8, ptr %i.aac, i64 %index604 ; 2 uses
  %i.aah = getelementptr i8, ptr %i.aag, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.aag, align 1, !tbaa !306, !alias.scope !864
  %wide.load606 = load <16 x i8>, ptr %i.aah, align 1, !tbaa !306, !alias.scope !864
  %i.aai = getelementptr i8, ptr %i.aaf, i64 %index604 ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.aai, i64 16
  store <16 x i8> %wide.load605, ptr %i.aai, align 1, !tbaa !306, !alias.scope !865, !noalias !864
  store <16 x i8> %wide.load606, ptr %i.aaj, align 1, !tbaa !306, !alias.scope !865, !noalias !864
  %index.next607 = add nuw i64 %index604, 32      ; 2 uses
  %i.aak = icmp eq i64 %index.next607, %n.vec602
  br i1 %i.aak, label %middle.block608, label %vector.body603, !llvm.loop !853

middle.block608:                                  ; preds = %vector.body603
  br i1 %cmp.n609, label %._crit_edge.i238, label %vec.epilog.iter.check611

vec.epilog.iter.check611:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check613, label %vec.epilog.scalar.ph612.preheader, label %vec.epilog.ph614, !prof !442

vec.epilog.ph614:                                 ; preds = %vector.main.loop.iter.check599, %vec.epilog.iter.check611
  %vec.epilog.resume.val615 = phi i64 [ %n.vec602, %vec.epilog.iter.check611 ], [ 0, %vector.main.loop.iter.check599 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph614
  %index618 = phi i64 [ %vec.epilog.resume.val615, %vec.epilog.ph614 ], [ %index.next620, %vec.epilog.vector.body617 ] ; 3 uses
  %i.aal = getelementptr i8, ptr %i.aac, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.aal, align 1, !tbaa !306, !alias.scope !864
  %i.aam = getelementptr i8, ptr %i.aaf, i64 %index618
  store <4 x i8> %wide.load619, ptr %i.aam, align 1, !tbaa !306, !alias.scope !865, !noalias !864
  %index.next620 = add nuw i64 %index618, 4       ; 2 uses
  %i.aan = icmp eq i64 %index.next620, %n.vec616
  br i1 %i.aan, label %vec.epilog.middle.block621, label %vec.epilog.vector.body617, !llvm.loop !854

vec.epilog.middle.block621:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n622, label %._crit_edge.i238, label %vec.epilog.scalar.ph612.preheader

vec.epilog.scalar.ph612.preheader:                ; preds = %iter.check610, %vec.epilog.iter.check611, %vec.epilog.middle.block621
  %.025.i236.ph = phi i64 [ 0, %iter.check610 ], [ %n.vec616, %vec.epilog.middle.block621 ], [ %n.vec602, %vec.epilog.iter.check611 ] ; 3 uses
  br i1 %lcmp.mod676.not, label %vec.epilog.scalar.ph612.prol.loopexit, label %vec.epilog.scalar.ph612.prol

vec.epilog.scalar.ph612.prol:                     ; preds = %vec.epilog.scalar.ph612.preheader, %vec.epilog.scalar.ph612.prol
  %.025.i236.prol = phi i64 [ %i.aar, %vec.epilog.scalar.ph612.prol ], [ %.025.i236.ph, %vec.epilog.scalar.ph612.preheader ] ; 3 uses
  %prol.iter677 = phi i64 [ %prol.iter677.next, %vec.epilog.scalar.ph612.prol ], [ 0, %vec.epilog.scalar.ph612.preheader ]
  %i.aao = getelementptr i8, ptr %i.aac, i64 %.025.i236.prol
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !306
  %i.aaq = getelementptr i8, ptr %i.aaf, i64 %.025.i236.prol
  store i8 %i.aap, ptr %i.aaq, align 1, !tbaa !306
  %i.aar = add nuw i64 %.025.i236.prol, 1         ; 2 uses
  %prol.iter677.next = add i64 %prol.iter677, 1   ; 2 uses
  %prol.iter677.cmp.not = icmp eq i64 %prol.iter677.next, %xtraiter675
  br i1 %prol.iter677.cmp.not, label %vec.epilog.scalar.ph612.prol.loopexit, label %vec.epilog.scalar.ph612.prol, !llvm.loop !855

vec.epilog.scalar.ph612.prol.loopexit:            ; preds = %vec.epilog.scalar.ph612.prol, %vec.epilog.scalar.ph612.preheader
  %.025.i236.unr = phi i64 [ %.025.i236.ph, %vec.epilog.scalar.ph612.preheader ], [ %i.aar, %vec.epilog.scalar.ph612.prol ]
  %i.aas = sub i64 %.025.i236.ph, %i.yx
  %i.aat = icmp ugt i64 %i.aas, -4
  br i1 %i.aat, label %._crit_edge.i238, label %vec.epilog.scalar.ph612

._crit_edge27.i240:                               ; preds = %._crit_edge.i238
  %i.aau = add nuw i64 %.02028.i233, 1            ; 2 uses
  %exitcond37.not.i241 = icmp eq i64 %i.aau, %i.yp
  br i1 %exitcond37.not.i241, label %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit242, label %.preheader24.i232, !llvm.loop !3

._crit_edge.i238:                                 ; preds = %vec.epilog.scalar.ph612.prol.loopexit, %vec.epilog.scalar.ph612, %vec.epilog.middle.block621, %middle.block608
  %i.aav = add nuw nsw i64 %.01926.i235, 1        ; 2 uses
  %exitcond36.not.i239 = icmp eq i64 %i.aav, %i.yn
  br i1 %exitcond36.not.i239, label %._crit_edge27.i240, label %iter.check610, !llvm.loop !4

vec.epilog.scalar.ph612:                          ; preds = %vec.epilog.scalar.ph612.prol.loopexit, %vec.epilog.scalar.ph612
  %.025.i236 = phi i64 [ %i.abl, %vec.epilog.scalar.ph612 ], [ %.025.i236.unr, %vec.epilog.scalar.ph612.prol.loopexit ] ; 6 uses
  %i.aaw = getelementptr i8, ptr %i.aac, i64 %.025.i236
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !306
  %i.aay = getelementptr i8, ptr %i.aaf, i64 %.025.i236
  store i8 %i.aax, ptr %i.aay, align 1, !tbaa !306
  %i.aaz = add nuw i64 %.025.i236, 1              ; 2 uses
  %i.aba = getelementptr i8, ptr %i.aac, i64 %i.aaz
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !306
  %i.abc = getelementptr i8, ptr %i.aaf, i64 %i.aaz
  store i8 %i.abb, ptr %i.abc, align 1, !tbaa !306
  %i.abd = add nuw i64 %.025.i236, 2              ; 2 uses
  %i.abe = getelementptr i8, ptr %i.aac, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !306
  %i.abg = getelementptr i8, ptr %i.aaf, i64 %i.abd
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !306
  %i.abh = add nuw i64 %.025.i236, 3              ; 2 uses
  %i.abi = getelementptr i8, ptr %i.aac, i64 %i.abh
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !306
  %i.abk = getelementptr i8, ptr %i.aaf, i64 %i.abh
  store i8 %i.abj, ptr %i.abk, align 1, !tbaa !306
  %i.abl = add nuw i64 %.025.i236, 4              ; 2 uses
  %exitcond.not.i237.3 = icmp eq i64 %i.abl, %i.yx
  br i1 %exitcond.not.i237.3, label %._crit_edge.i238, label %vec.epilog.scalar.ph612, !llvm.loop !856

_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit242: ; preds = %._crit_edge27.i240, %bb.ci, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, %.loopexit
  %i.abm = load i16, ptr %i.bo, align 4, !tbaa !421 ; 2 uses
  %i.abn = icmp eq i16 %i.abm, 5
  br i1 %i.abn, label %bb.cj, label %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exit

bb.cj:                                            ; preds = %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit242
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !394, !range !382, !noundef !383
  %i.abq = trunc nuw i8 %i.abp to i1
  br i1 %i.abq, label %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exitthread-pre-split, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.abr = load i8, ptr %i.kc, align 8, !tbaa !387 ; 2 uses
  %i.abs = icmp eq i8 %i.abr, 2
  %i.abt = load i8, ptr %i.kf, align 1
  %i.abu = icmp eq i8 %i.abt, 1                   ; 2 uses
  %or.cond.i = select i1 %i.abs, i1 %i.abu, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.ck
  %i.abv = load i32, ptr %i.kd, align 4, !tbaa !388
  %.not.i243 = icmp eq i32 %i.abv, 0
  br i1 %.not.i243, label %bb.cl, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249.thread

bb.cl:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.abw = load i32, ptr %i.bi, align 4, !tbaa !409 ; 2 uses
  %i.abx = load i16, ptr %i.bk, align 2, !tbaa !366
  %i.aby = zext i16 %i.abx to i64
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !411
  %i.acb = sext i32 %i.aca to i64
  %.not28.i = icmp eq i32 %i.abw, 0
  br i1 %.not28.i, label %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exitthread-pre-split, label %.lr.ph.i244.preheader

.lr.ph.i244.preheader:                            ; preds = %bb.cl
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !372
  br label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.lr.ph.i244.preheader, %.lr.ph.i244
  %.031.i = phi i32 [ %i.adn, %.lr.ph.i244 ], [ %i.abw, %.lr.ph.i244.preheader ]
  %.01830.i = phi ptr [ %i.ado, %.lr.ph.i244 ], [ %i.acd, %.lr.ph.i244.preheader ] ; 3 uses
  %.01929.i = phi ptr [ %i.adp, %.lr.ph.i244 ], [ %4, %.lr.ph.i244.preheader ] ; 4 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.01830.i, i64 2
  %i.acf = load <2 x i8>, ptr %i.ace, align 1, !tbaa !306
  %i.acg = uitofp <2 x i8> %i.acf to <2 x float>
  %i.ach = fmul nnan <2 x float> %i.acg, splat (float f0x3B808081)
  %i.aci = fsub <2 x float> splat (float 1.000000e+00), %i.ach ; 3 uses
  %shift = shufflevector <2 x float> %i.aci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.aci, %shift
  %i.acj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ack = load <2 x i8>, ptr %.01830.i, align 1, !tbaa !306
  %i.acl = uitofp <2 x i8> %i.ack to <2 x float>
  %i.acm = fmul nnan <2 x float> %i.acl, splat (float f0x3B808081)
  %i.acn = fsub nnan <2 x float> splat (float 1.000000e+00), %i.acm
  %i.aco = shufflevector <2 x float> %i.aci, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acp = fmul <2 x float> %i.acn, %i.aco
  %i.acq = fmul <2 x float> %i.acp, splat (float 2.550000e+02) ; 2 uses
  %i.acr = fcmp olt <2 x float> %i.acq, zeroinitializer
  %i.acs = select <2 x i1> %i.acr, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.act = fadd <2 x float> %i.acq, %i.acs        ; 2 uses
  %i.acu = fcmp oge <2 x float> %i.act, zeroinitializer
  %i.acv = select <2 x i1> %i.acu, <2 x float> %i.act, <2 x float> zeroinitializer ; 3 uses
  %i.acw = fcmp ogt <2 x float> %i.acv, splat (float 2.550000e+02) ; 2 uses
  %i.acx = extractelement <2 x i1> %i.acw, i64 0
  %i.acy = extractelement <2 x float> %i.acv, i64 0
  %i.acz = fptoui float %i.acy to i8
  %i.ada = select i1 %i.acx, i8 -1, i8 %i.acz
  store i8 %i.ada, ptr %.01929.i, align 1, !tbaa !306
  %i.adb = extractelement <2 x i1> %i.acw, i64 1
  %i.adc = extractelement <2 x float> %i.acv, i64 1
  %i.add = fptoui float %i.adc to i8
  %i.ade = select i1 %i.adb, i8 -1, i8 %i.add
  %i.adf = getelementptr inbounds nuw i8, ptr %.01929.i, i64 1
  store i8 %i.ade, ptr %i.adf, align 1, !tbaa !306
  %i.adg = fmul float %i.acj, 2.550000e+02        ; 2 uses
  %i.adh = fcmp olt float %i.adg, 0.000000e+00
  %i.adi = select i1 %i.adh, float -5.000000e-01, float 5.000000e-01
  %i.adj = fadd float %i.adg, %i.adi              ; 2 uses
  %.inv.i.i23.i = fcmp oge float %i.adj, 0.000000e+00
  %.0.i.i.i24.i = select i1 %.inv.i.i23.i, float %i.adj, float 0.000000e+00 ; 2 uses
  %i.adk = fcmp ogt float %.0.i.i.i24.i, 2.550000e+02
  %.1.i.i.i25.i = select i1 %i.adk, float 2.550000e+02, float %.0.i.i.i24.i
  %i.adl = fptoui float %.1.i.i.i25.i to i8
  %i.adm = getelementptr inbounds nuw i8, ptr %.01929.i, i64 2
  store i8 %i.adl, ptr %i.adm, align 1, !tbaa !306
  %i.adn = add nsw i32 %.031.i, -1                ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.01830.i, i64 %i.aby
  %i.adp = getelementptr inbounds nuw i8, ptr %.01929.i, i64 %i.acb
  %.not.i245 = icmp eq i32 %i.adn, 0
  br i1 %.not.i245, label %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exitthread-pre-split, label %.lr.ph.i244, !llvm.loop !857

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.ck
  %i.adq = icmp eq i8 %i.abr, 4
  %or.cond.i247 = select i1 %i.adq, i1 %i.abu, i1 false
  br i1 %or.cond.i247, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.adr = load i32, ptr %i.kd, align 4, !tbaa !388
  %.not.i248 = icmp eq i32 %i.adr, 0
  br i1 %.not.i248, label %bb.cm, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249.thread

bb.cm:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249
  %i.ads = load i32, ptr %i.bi, align 4, !tbaa !409
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !372
  %i.adv = load i16, ptr %i.bk, align 2, !tbaa !366
  %i.adw = zext i16 %i.adv to i64
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !411
  %i.adz = sext i32 %i.ady to i64
  call fastcc void @_ZN11OpenImageIO4v3_1L11cmyk_to_rgbItEEviPKT_mPS2_m(i32 noundef %i.ads, ptr noundef %i.adu, i64 noundef %i.adw, ptr noundef %4, i64 noundef %i.adz)
  br label %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exitthread-pre-split

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.89)
  br label %_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit

_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exitthread-pre-split: ; preds = %.lr.ph.i244, %bb.cj, %bb.cm, %bb.cl
  %.pr = load i16, ptr %i.bo, align 4, !tbaa !421
  br label %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exit

_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exit: ; preds = %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exitthread-pre-split, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit242
  %i.aea = phi i16 [ %.pr, %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exitthread-pre-split ], [ %i.abm, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit242 ]
  %i.aeb = icmp eq i16 %i.aea, 0
  br i1 %i.aeb, label %bb.cn, label %_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit

bb.cn:                                            ; preds = %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exit
  %i.aec = load i8, ptr %i.kc, align 8, !tbaa !445
  %cond.i = icmp eq i8 %i.aec, 2
  %i.aed = icmp sgt i32 %i.bn, 0
  %or.cond.i250 = and i1 %i.aed, %cond.i
  br i1 %or.cond.i250, label %iter.check636, label %_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit

iter.check636:                                    ; preds = %bb.cn
  %wide.trip.count.i251 = zext nneg i32 %i.bn to i64 ; 6 uses
  %min.iters.check624 = icmp ult i32 %i.bn, 4
  br i1 %min.iters.check624, label %.lr.ph.i252.preheader, label %vector.main.loop.iter.check625

vector.main.loop.iter.check625:                   ; preds = %iter.check636
  %min.iters.check626 = icmp ult i32 %i.bn, 32
  br i1 %min.iters.check626, label %vec.epilog.ph640, label %vector.ph627

vector.ph627:                                     ; preds = %vector.main.loop.iter.check625
  %i.aee = and i64 %wide.trip.count.i251, 28
  %n.vec628 = and i64 %wide.trip.count.i251, 2147483616 ; 4 uses
  br label %vector.body629

vector.body629:                                   ; preds = %vector.ph627, %vector.body629
  %index630 = phi i64 [ 0, %vector.ph627 ], [ %index.next633, %vector.body629 ] ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %4, i64 %index630 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 2 uses
  %wide.load631 = load <16 x i8>, ptr %i.aef, align 1, !tbaa !306
  %wide.load632 = load <16 x i8>, ptr %i.aeg, align 1, !tbaa !306
  %i.aeh = xor <16 x i8> %wide.load631, splat (i8 -1)
  %i.aei = xor <16 x i8> %wide.load632, splat (i8 -1)
  store <16 x i8> %i.aeh, ptr %i.aef, align 1, !tbaa !306
  store <16 x i8> %i.aei, ptr %i.aeg, align 1, !tbaa !306
  %index.next633 = add nuw i64 %index630, 32      ; 2 uses
  %i.aej = icmp eq i64 %index.next633, %n.vec628
  br i1 %i.aej, label %middle.block634, label %vector.body629, !llvm.loop !858

middle.block634:                                  ; preds = %vector.body629
  %cmp.n635 = icmp eq i64 %n.vec628, %wide.trip.count.i251
  br i1 %cmp.n635, label %_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit, label %vec.epilog.iter.check637

vec.epilog.iter.check637:                         ; preds = %middle.block634
  %min.epilog.iters.check639 = icmp eq i64 %i.aee, 0
  br i1 %min.epilog.iters.check639, label %.lr.ph.i252.preheader, label %vec.epilog.ph640, !prof !442

vec.epilog.ph640:                                 ; preds = %vector.main.loop.iter.check625, %vec.epilog.iter.check637
  %vec.epilog.resume.val641 = phi i64 [ %n.vec628, %vec.epilog.iter.check637 ], [ 0, %vector.main.loop.iter.check625 ]
  %n.vec642 = and i64 %wide.trip.count.i251, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body643

vec.epilog.vector.body643:                        ; preds = %vec.epilog.vector.body643, %vec.epilog.ph640
  %index644 = phi i64 [ %vec.epilog.resume.val641, %vec.epilog.ph640 ], [ %index.next646, %vec.epilog.vector.body643 ] ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %4, i64 %index644 ; 2 uses
  %wide.load645 = load <4 x i8>, ptr %i.aek, align 1, !tbaa !306
  %i.ael = xor <4 x i8> %wide.load645, splat (i8 -1)
  store <4 x i8> %i.ael, ptr %i.aek, align 1, !tbaa !306
  %index.next646 = add nuw i64 %index644, 4       ; 2 uses
  %i.aem = icmp eq i64 %index.next646, %n.vec642
  br i1 %i.aem, label %vec.epilog.middle.block647, label %vec.epilog.vector.body643, !llvm.loop !859

vec.epilog.middle.block647:                       ; preds = %vec.epilog.vector.body643
  %cmp.n648 = icmp eq i64 %n.vec642, %wide.trip.count.i251
  br i1 %cmp.n648, label %_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit, label %.lr.ph.i252.preheader

.lr.ph.i252.preheader:                            ; preds = %iter.check636, %vec.epilog.iter.check637, %vec.epilog.middle.block647
  %indvars.iv.i253.ph = phi i64 [ 0, %iter.check636 ], [ %n.vec628, %vec.epilog.iter.check637 ], [ %n.vec642, %vec.epilog.middle.block647 ]
  br label %.lr.ph.i252

.lr.ph.i252:                                      ; preds = %.lr.ph.i252.preheader, %.lr.ph.i252
  %indvars.iv.i253 = phi i64 [ %indvars.iv.next.i254, %.lr.ph.i252 ], [ %indvars.iv.i253.ph, %.lr.ph.i252.preheader ] ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i253 ; 2 uses
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !306
  %i.aep = xor i8 %i.aeo, -1
  store i8 %i.aep, ptr %i.aen, align 1, !tbaa !306
  %indvars.iv.next.i254 = add nuw nsw i64 %indvars.iv.i253, 1 ; 2 uses
  %exitcond.not.i255 = icmp eq i64 %indvars.iv.next.i254, %wide.trip.count.i251
  br i1 %exitcond.not.i255, label %_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit, label %.lr.ph.i252, !llvm.loop !860

_ZN11OpenImageIO4v3_19TIFFInput14palette_to_rgbEmNS0_4spanIKhLm18446744073709551615EEENS2_IhLm18446744073709551615EEE.exit: ; preds = %.preheader.us, %bb.ay, %.lr.ph.i252, %bb.aq, %bb.an, %middle.block634, %vec.epilog.middle.block647, %bb.cn, %bb.ap, %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249.thread, %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exit, %bb.ao, %bb.ak, %.thread
  %.10 = phi i1 [ true, %.thread ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ true, %_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhEEviPKT_mPS2_m.exit ], [ false, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit ], [ true, %.lr.ph.i252 ], [ false, %bb.ak ], [ true, %bb.ao ], [ true, %middle.block634 ], [ false, %bb.ay ], [ false, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit249.thread ], [ true, %bb.aq ], [ true, %bb.am ], [ true, %bb.ap ], [ true, %bb.cn ], [ true, %bb.an ], [ true, %vec.epilog.middle.block647 ], [ false, %.preheader.us ]
  ret i1 %.10

bb.co:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %.pn120 = phi { ptr, i32 } [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.ev, %bb.ad ]
  resume { ptr, i32 } %.pn120
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare i32 @TIFFReadRGBAImageOriented(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !868 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.153", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !869
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !869
  %i.b = load ptr, ptr %2, align 8, !tbaa !389, !noalias !869
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %3, align 16, !noalias !869
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 12, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !869
  %i.d = load ptr, ptr %5, align 8, !tbaa !367
  store ptr %i.d, ptr %4, align 8, !tbaa !391
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !305
  store i64 %i.g, ptr %i.e, align 8, !tbaa !392
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !367    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !306
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !367    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !306
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %i.m
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110copy_imageEiiiiPKvllllPvlll(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK11OpenImageIO4v3_19TIFFInput16current_subimageEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !870 {
bb.a:
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !363
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #38
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.a
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK11OpenImageIO4v3_19TIFFInput16current_miplevelEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !871 {
bb.a:
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.b = load i32, ptr %i.a, align 4, !tbaa !364
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #38
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.a
  ret i32 %i.b
}

declare i32 @TIFFReadScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11cmyk_to_rgbItEEviPKT_mPS2_m(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, 65536) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #14 !guid !873 {
bb.a:
  %.not28 = icmp eq i32 %0, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i32 [ %i.ac, %.lr.ph ], [ %0, %bb.a ]
  %.01830 = phi ptr [ %i.ad, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.01929 = phi ptr [ %i.ae, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01830, i64 4
  %i.b = load <2 x i16>, ptr %i.a, align 2, !tbaa !380
  %i.c = uitofp <2 x i16> %i.b to <2 x float>
  %i.d = fmul nnan <2 x float> %i.c, splat (float f0x37800080)
  %i.e = fsub <2 x float> splat (float 1.000000e+00), %i.d ; 3 uses
  %shift = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.e, %shift
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.g = load <2 x i16>, ptr %.01830, align 2, !tbaa !380
  %i.h = uitofp <2 x i16> %i.g to <2 x float>
  %i.i = fmul nnan <2 x float> %i.h, splat (float f0x37800080)
  %i.j = fsub nnan <2 x float> splat (float 1.000000e+00), %i.i
  %i.k = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.l, splat (float 6.553500e+04) ; 2 uses
  %i.n = fcmp olt <2 x float> %i.m, zeroinitializer
  %i.o = select <2 x i1> %i.n, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.p = fadd <2 x float> %i.m, %i.o              ; 2 uses
  %i.q = fcmp oge <2 x float> %i.p, zeroinitializer
  %i.r = select <2 x i1> %i.q, <2 x float> %i.p, <2 x float> zeroinitializer ; 2 uses
  %i.s = fcmp ogt <2 x float> %i.r, splat (float 6.553500e+04)
  %i.t = select <2 x i1> %i.s, <2 x float> splat (float 6.553500e+04), <2 x float> %i.r
  %i.u = fptoui <2 x float> %i.t to <2 x i16>
  store <2 x i16> %i.u, ptr %.01929, align 2, !tbaa !380
  %i.v = fmul float %i.f, 6.553500e+04            ; 2 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = select i1 %i.w, float -5.000000e-01, float 5.000000e-01
  %i.y = fadd float %i.v, %i.x                    ; 2 uses
  %.inv.i.i23 = fcmp oge float %i.y, 0.000000e+00
  %.0.i.i.i24 = select i1 %.inv.i.i23, float %i.y, float 0.000000e+00 ; 2 uses
  %i.z = fcmp ogt float %.0.i.i.i24, 6.553500e+04
  %.1.i.i.i25 = select i1 %i.z, float 6.553500e+04, float %.0.i.i.i24
  %i.aa = fptoui float %.1.i.i.i25 to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %.01929, i64 4
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !380
  %i.ac = add nsw i32 %.031, -1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.01830, i64 %2
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.01929, i64 %4
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !872

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !876 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.157", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !877
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !877
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !877
  %i.b = load ptr, ptr %4, align 8, !tbaa !367
  store ptr %i.b, ptr %3, align 8, !tbaa !391
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !305
  store i64 %i.e, ptr %i.c, align 8, !tbaa !392
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !367    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !306
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !367    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !306
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiiPv(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !878 {
bb.a:
  %7 = alloca %"class.OpenImageIO::v3_1::span.40", align 8 ; 3 uses
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !415  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !410
  %i.g = add nsw i32 %i.f, %i.d                   ; 2 uses
  %spec.select.i13 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %3)
  %.1.i14 = tail call i32 @llvm.smin.i32(i32 %spec.select.i13, i32 %i.g) ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %4)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.g) ; 2 uses
  %i.h = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i1 noundef zeroext true) #36
  %i.i = sub nsw i32 %.1.i, %.1.i14
  %i.j = sext i32 %i.i to i64
  %i.k = mul i64 %i.h, %i.j
  store ptr %6, ptr %7, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %2, i32 noundef %.1.i14, i32 noundef %.1.i, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.40") align 8 %7)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #38
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i1 [ false, %bb.b ], [ %i.m, %bb.c ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit15 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #38
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit15: ; preds = %bb.f
  ret i1 %.010
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef byval(%"class.OpenImageIO::v3_1::span.40") align 8 captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !908 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::shared_ptr.159", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::task_set", align 8 ; 12 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca i32, align 4                      ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.std::future", align 16     ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.h = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !447
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !448
  %i.n = add i32 %i.m, %i.k
  %.sroa.speculated226 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %4) ; 16 uses
  %i.o = sub nsw i32 %.sroa.speculated226, %3     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 9 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !424  ; 2 uses
  %i.r = add i32 %i.q, -1
  %i.s = add i32 %i.r, %i.o
  %i.t = sdiv i32 %i.s, %i.q                      ; 3 uses
  %i.u = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.i, i1 noundef zeroext true) #36
  %i.v = load ptr, ptr %5, align 8, !tbaa !450    ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 18 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !451  ; 6 uses
  %i.y = load i32, ptr %i.i, align 8, !tbaa !414  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !409
  %i.ab = add nsw i32 %i.aa, %i.y
  %i.ac = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput19valid_raw_span_sizeENS0_4spanIKSt4byteLm18446744073709551615EEERKNS0_9ImageSpecEiiiiiiii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr %i.v, i64 %i.x, ptr noundef nonnull align 8 dereferenceable(160) %i.i, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %3, i32 noundef %.sroa.speculated226, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef -1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  br i1 %i.ac, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp sgt i32 %i.o, 1
  br i1 %i.ad, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.j, align 4, !tbaa !415 ; 3 uses
  %i.af = sub nsw i32 %3, %i.ae                   ; 2 uses
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !424 ; 3 uses
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
end_hunk_0
