Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_sgbm?download=true
inline.NumInlined: 265
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  br i1 %min.iters.check578, label %vec.epilog.scalar.ph596.preheader, label %vector.memcheck569

vector.memcheck569:                               ; preds = %iter.check595
  %i.za = shl nsw i64 %i.pv, 1
  %i.zb = add nsw i64 %i.lm, %i.za
  %i.zc = mul i64 %i.zb, %i.fy
  %scevgep573 = getelementptr i8, ptr %scevgep572, i64 %i.zc
  %bound0574 = icmp ult ptr %i.pb, %scevgep573
  %bound1575 = icmp ult ptr %i.px, %scevgep571
  %found.conflict576 = and i1 %bound0574, %bound1575
  br i1 %found.conflict576, label %vec.epilog.scalar.ph596.preheader, label %vector.main.loop.iter.check579

vector.main.loop.iter.check579:                   ; preds = %vector.memcheck569
  br i1 %min.iters.check580, label %vec.epilog.ph599, label %vector.ph581

vector.ph581:                                     ; preds = %vector.main.loop.iter.check579
  %broadcast.splatinsert583 = insertelement <8 x i16> poison, i16 %i.yz, i64 0
  %broadcast.splat584 = shufflevector <8 x i16> %broadcast.splatinsert583, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body585

vector.body585:                                   ; preds = %vector.ph581, %vector.body585
  %index586 = phi i64 [ 0, %vector.ph581 ], [ %index.next591, %vector.body585 ] ; 3 uses
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %index586 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16 ; 2 uses
  %wide.load587 = load <8 x i16>, ptr %i.zd, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %wide.load588 = load <8 x i16>, ptr %i.ze, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %i.zf = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %index586 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %wide.load589 = load <8 x i16>, ptr %i.zf, align 2, !tbaa !59, !alias.scope !192
  %wide.load590 = load <8 x i16>, ptr %i.zg, align 2, !tbaa !59, !alias.scope !192
  %i.zh = mul <8 x i16> %wide.load589, %broadcast.splat584
  %i.zi = mul <8 x i16> %wide.load590, %broadcast.splat584
  %i.zj = add <8 x i16> %i.zh, %wide.load587
  %i.zk = add <8 x i16> %i.zi, %wide.load588
  store <8 x i16> %i.zj, ptr %i.zd, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  store <8 x i16> %i.zk, ptr %i.ze, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next591 = add nuw i64 %index586, 16      ; 2 uses
  %i.zl = icmp eq i64 %index.next591, %n.vec582
  br i1 %i.zl, label %middle.block592, label %vector.body585, !llvm.loop !136

middle.block592:                                  ; preds = %vector.body585
  br i1 %cmp.n593, label %.loopexit217.i, label %vec.epilog.iter.check597

vec.epilog.iter.check597:                         ; preds = %middle.block592
  br i1 %min.epilog.iters.check598, label %vec.epilog.scalar.ph596.preheader, label %vec.epilog.ph599, !prof !63

vec.epilog.ph599:                                 ; preds = %vector.main.loop.iter.check579, %vec.epilog.iter.check597
  %vec.epilog.resume.val594 = phi i64 [ %n.vec582, %vec.epilog.iter.check597 ], [ 0, %vector.main.loop.iter.check579 ]
  %broadcast.splatinsert601 = insertelement <4 x i16> poison, i16 %i.yz, i64 0
  %broadcast.splat602 = shufflevector <4 x i16> %broadcast.splatinsert601, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body603

vec.epilog.vector.body603:                        ; preds = %vec.epilog.vector.body603, %vec.epilog.ph599
  %index604 = phi i64 [ %vec.epilog.resume.val594, %vec.epilog.ph599 ], [ %index.next607, %vec.epilog.vector.body603 ] ; 3 uses
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %index604 ; 2 uses
  %wide.load605 = load <4 x i16>, ptr %i.zm, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %index604
  %wide.load606 = load <4 x i16>, ptr %i.zn, align 2, !tbaa !59, !alias.scope !192
  %i.zo = mul <4 x i16> %wide.load606, %broadcast.splat602
  %i.zp = add <4 x i16> %i.zo, %wide.load605
  store <4 x i16> %i.zp, ptr %i.zm, align 2, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next607 = add nuw i64 %index604, 4       ; 2 uses
  %i.zq = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.zq, label %vec.epilog.middle.block608, label %vec.epilog.vector.body603, !llvm.loop !137

vec.epilog.middle.block608:                       ; preds = %vec.epilog.vector.body603
  br i1 %cmp.n609, label %.loopexit217.i, label %vec.epilog.scalar.ph596.preheader

vec.epilog.scalar.ph596.preheader:                ; preds = %iter.check595, %vector.memcheck569, %vec.epilog.iter.check597, %vec.epilog.middle.block608
  %indvars.iv377.i.ph = phi i64 [ 0, %iter.check595 ], [ 0, %vector.memcheck569 ], [ %n.vec582, %vec.epilog.iter.check597 ], [ %n.vec600, %vec.epilog.middle.block608 ] ; 5 uses
  %.neg864 = or disjoint i64 %indvars.iv377.i.ph, 1
  br i1 %lcmp.mod849.not, label %vec.epilog.scalar.ph596.prol.loopexit, label %vec.epilog.scalar.ph596.prol

vec.epilog.scalar.ph596.prol:                     ; preds = %vec.epilog.scalar.ph596.preheader
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %indvars.iv377.i.ph ; 2 uses
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !59
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %indvars.iv377.i.ph
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !59
  %i.zv = mul i16 %i.zu, %i.yz
  %i.zw = add i16 %i.zv, %i.zs
  store i16 %i.zw, ptr %i.zr, align 2, !tbaa !59
  %indvars.iv.next378.i.prol = or disjoint i64 %indvars.iv377.i.ph, 1
  br label %vec.epilog.scalar.ph596.prol.loopexit

vec.epilog.scalar.ph596.prol.loopexit:            ; preds = %vec.epilog.scalar.ph596.prol, %vec.epilog.scalar.ph596.preheader
  %indvars.iv377.i.unr = phi i64 [ %indvars.iv377.i.ph, %vec.epilog.scalar.ph596.preheader ], [ %indvars.iv.next378.i.prol, %vec.epilog.scalar.ph596.prol ]
  %i.zx = icmp eq i64 %.pre-phi.i, %.neg864
  br i1 %i.zx, label %.loopexit217.i, label %vec.epilog.scalar.ph596

vec.epilog.scalar.ph596:                          ; preds = %vec.epilog.scalar.ph596.prol.loopexit, %vec.epilog.scalar.ph596
  %indvars.iv377.i = phi i64 [ %indvars.iv.next378.i.1, %vec.epilog.scalar.ph596 ], [ %indvars.iv377.i.unr, %vec.epilog.scalar.ph596.prol.loopexit ] ; 4 uses
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %indvars.iv377.i ; 2 uses
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !59
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %indvars.iv377.i
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !59
  %i.aac = mul i16 %i.aab, %i.yz
  %i.aad = add i16 %i.aac, %i.zz
  store i16 %i.aad, ptr %i.zy, align 2, !tbaa !59
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %indvars.iv.next378.i ; 2 uses
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !59
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %indvars.iv.next378.i
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !59
  %i.aai = mul i16 %i.aah, %i.yz
  %i.aaj = add i16 %i.aai, %i.aaf
  store i16 %i.aaj, ptr %i.aae, align 2, !tbaa !59
  %indvars.iv.next378.i.1 = add nuw nsw i64 %indvars.iv377.i, 2 ; 2 uses
  %exitcond381.not.i.1 = icmp eq i64 %indvars.iv.next378.i.1, %.pre-phi.i
  br i1 %exitcond381.not.i.1, label %.loopexit217.i, label %vec.epilog.scalar.ph596, !llvm.loop !138

.loopexit217.i:                                   ; preds = %vec.epilog.scalar.ph596.prol.loopexit, %vec.epilog.scalar.ph596, %middle.block592, %vec.epilog.middle.block608, %.loopexit218.i, %bb.bn
  %indvars.iv.next383.i = add nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next383.i to i32
  %exitcond387.not.i = icmp eq i32 %indvars.iv385.i, %lftr.wideiv.i
  %indvar.next741 = add i64 %indvar740, 1
  br i1 %exitcond387.not.i, label %.preheader226.i, label %bb.bm, !llvm.loop !139

.loopexit227.i:                                   ; preds = %.lr.ph268.preheader.i, %.preheader226.i, %bb.bk
  %i.aak = getelementptr inbounds [2 x i8], ptr %i.os, i64 %i.ir
  %i.aal = getelementptr inbounds i8, ptr %i.aak, i64 -16
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aal, i8 0, i64 %i.ji, i1 false)
  %i.aam = getelementptr inbounds [2 x i8], ptr %i.os, i64 %i.jk
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 -16
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aan, i8 0, i64 %i.ji, i1 false)
  %i.aao = getelementptr inbounds i8, ptr %i.ot, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aao, i8 0, i64 16, i1 false)
  %i.aap = getelementptr inbounds [2 x i8], ptr %i.ot, i64 %i.jl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aap, i8 0, i64 16, i1 false)
  br i1 %.not639280.i, label %._crit_edge284.i, label %.lr.ph283.i.preheader

.lr.ph283.i.preheader:                            ; preds = %.loopexit227.i
  %i.aaq = shl i64 %i.pa, 1                       ; 3 uses
  %i.aar = getelementptr i8, ptr %i.os, i64 %i.kt
  %i.aas = getelementptr i8, ptr %i.aar, i64 %i.nt
  %i.aat = getelementptr i8, ptr %i.os, i64 %i.kt
  %i.aau = getelementptr i8, ptr %i.aat, i64 %i.nx
  %i.aav = getelementptr i8, ptr %i.os, i64 %i.ky
  %i.aaw = getelementptr i8, ptr %i.aav, i64 %i.kt
  %i.aax = getelementptr i8, ptr %i.aaw, i64 %i.nt
  %i.aay = getelementptr i8, ptr %i.om, i64 %i.aaq
  %i.aaz = getelementptr i8, ptr %i.on, i64 %i.aaq
  %i.aba = getelementptr i8, ptr %i.os, i64 %i.od
  %i.abb = getelementptr i8, ptr %i.os, i64 %i.of
  %i.abc = getelementptr i8, ptr %i.os, i64 %i.oh
  %i.abd = getelementptr i8, ptr %i.os, i64 %i.oj
  %i.abe = getelementptr i8, ptr %i.os, i64 %i.ol
  %i.abf = getelementptr i8, ptr %i.or, i64 %i.lg
  %i.abg = getelementptr i8, ptr %i.abf, i64 %i.nx
  %i.abh = getelementptr i8, ptr %i.or, i64 %reass.sub
  %i.abi = getelementptr i8, ptr %i.abh, i64 -2
  %i.abj = getelementptr i8, ptr %i.or, i64 %i.li
  %i.abk = getelementptr i8, ptr %i.abj, i64 %i.nx
  %i.abl = getelementptr i8, ptr %i.or, i64 %reass.sub775
  %i.abm = getelementptr i8, ptr %i.abl, i64 2
  %i.abn = getelementptr i8, ptr %i.or, i64 %i.lk
  %i.abo = getelementptr i8, ptr %i.abn, i64 %i.nx
  %i.abp = getelementptr i8, ptr %i.or, i64 %i.kw
  %i.abq = getelementptr i8, ptr %i.abp, i64 -2
  %i.abr = getelementptr i8, ptr %i.abq, i64 %i.nt
  %i.abs = getelementptr i8, ptr %i.or, i64 %i.kw
  %i.abt = getelementptr i8, ptr %i.abs, i64 %i.kt
  %i.abu = getelementptr i8, ptr %i.abt, i64 -2
  %i.abv = getelementptr i8, ptr %i.abu, i64 %i.nt
  %i.abw = getelementptr i8, ptr %i.or, i64 %i.kw
  %i.abx = getelementptr i8, ptr %i.abw, i64 2
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.nt
  %i.abz = getelementptr i8, ptr %i.or, i64 %i.kw
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.kt
  %i.acb = getelementptr i8, ptr %i.aca, i64 2
  %i.acc = getelementptr i8, ptr %i.acb, i64 %i.nt
  %i.acd = getelementptr i8, ptr %i.or, i64 %i.lf
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.ky
  %i.acf = getelementptr i8, ptr %i.ace, i64 %i.kt
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.nt
  %i.ach = getelementptr i8, ptr %i.or, i64 %i.lf
  %i.aci = getelementptr i8, ptr %i.ach, i64 %i.ky
  %i.acj = getelementptr i8, ptr %i.aci, i64 -2
  %i.ack = getelementptr i8, ptr %i.acj, i64 %i.nt
  %i.acl = getelementptr i8, ptr %i.or, i64 %i.lf
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.ky
  %i.acn = getelementptr i8, ptr %i.acm, i64 %i.kt
  %i.aco = getelementptr i8, ptr %i.acn, i64 -2
  %i.acp = getelementptr i8, ptr %i.aco, i64 %i.nt
  %i.acq = getelementptr i8, ptr %i.or, i64 %i.lf
  %i.acr = getelementptr i8, ptr %i.acq, i64 %i.ky
  %i.acs = getelementptr i8, ptr %i.acr, i64 2
  %i.act = getelementptr i8, ptr %i.acs, i64 %i.nt
  %i.acu = getelementptr i8, ptr %i.or, i64 %i.lf
  %i.acv = getelementptr i8, ptr %i.acu, i64 %i.ky
  %i.acw = getelementptr i8, ptr %i.acv, i64 %i.kt
  %i.acx = getelementptr i8, ptr %i.acw, i64 2
  %i.acy = getelementptr i8, ptr %i.acx, i64 %i.nt
  %i.acz = getelementptr i8, ptr %i.oo, i64 %i.aaq
  br label %.lr.ph283.i

.lr.ph283.i:                                      ; preds = %.lr.ph283.i.preheader, %._crit_edge276.i
  %indvar = phi i64 [ 0, %.lr.ph283.i.preheader ], [ %indvar.next, %._crit_edge276.i ] ; 3 uses
  %indvars.iv396.i = phi i64 [ %i.nq, %.lr.ph283.i.preheader ], [ %indvars.iv.next397.i, %._crit_edge276.i ] ; 4 uses
  %i.ada = mul i64 %i.nu, %indvar                 ; 23 uses
  %scevgep = getelementptr i8, ptr %i.aas, i64 %i.ada ; 17 uses
  %scevgep209 = getelementptr i8, ptr %i.aau, i64 %i.ada ; 10 uses
  %i.adb = add i64 %i.ny, %i.ada                  ; 2 uses
  %scevgep210 = getelementptr i8, ptr %i.os, i64 %i.adb ; 10 uses
  %scevgep211 = getelementptr i8, ptr %i.aax, i64 %i.ada ; 7 uses
  %i.adc = mul i64 %i.oa, %indvar                 ; 3 uses
  %scevgep212 = getelementptr i8, ptr %i.aay, i64 %i.adc ; 15 uses
  %scevgep213 = getelementptr i8, ptr %i.aaz, i64 %i.adc ; 3 uses
  %scevgep214 = getelementptr i8, ptr %i.aba, i64 %i.ada ; 3 uses
  %scevgep215 = getelementptr i8, ptr %i.abb, i64 %i.ada ; 3 uses
  %scevgep216 = getelementptr i8, ptr %i.abc, i64 %i.ada ; 3 uses
  %scevgep217 = getelementptr i8, ptr %i.abd, i64 %i.ada ; 3 uses
  %scevgep218 = getelementptr i8, ptr %i.abe, i64 %i.ada ; 3 uses
  %scevgep219 = getelementptr i8, ptr %i.abg, i64 %i.ada ; 3 uses
  %scevgep220 = getelementptr i8, ptr %i.abi, i64 %i.ada ; 3 uses
  %scevgep221 = getelementptr i8, ptr %i.abk, i64 %i.ada ; 3 uses
  %scevgep222 = getelementptr i8, ptr %i.abm, i64 %i.ada ; 3 uses
  %scevgep223 = getelementptr i8, ptr %i.abo, i64 %i.ada ; 3 uses
  %scevgep224 = getelementptr i8, ptr %i.or, i64 %i.adb ; 5 uses
  %scevgep225 = getelementptr i8, ptr %i.abr, i64 %i.ada ; 5 uses
  %scevgep226 = getelementptr i8, ptr %i.abv, i64 %i.ada ; 5 uses
  %scevgep227 = getelementptr i8, ptr %i.aby, i64 %i.ada ; 5 uses
  %scevgep228 = getelementptr i8, ptr %i.acc, i64 %i.ada ; 5 uses
  %scevgep229 = getelementptr i8, ptr %i.acg, i64 %i.ada ; 5 uses
  %scevgep230 = getelementptr i8, ptr %i.ack, i64 %i.ada ; 5 uses
  %scevgep231 = getelementptr i8, ptr %i.acp, i64 %i.ada ; 5 uses
  %scevgep232 = getelementptr i8, ptr %i.act, i64 %i.ada ; 5 uses
  %scevgep233 = getelementptr i8, ptr %i.acy, i64 %i.ada ; 5 uses
  %scevgep234 = getelementptr i8, ptr %i.acz, i64 %i.adc ; 14 uses
  %i.add = shl nsw i64 %indvars.iv396.i, 3        ; 4 uses
  %i.ade = mul nsw i64 %i.add, %i.gf              ; 2 uses
  %i.adf = sub nsw i64 %indvars.iv396.i, %i.nr
  %.idx464.i = shl nsw i64 %i.adf, 4
  %i.adg = getelementptr inbounds i8, ptr %i.ot, i64 %.idx464.i
  %i.adh = load i16, ptr %i.adg, align 2, !tbaa !59
  %i.adi = sext i16 %i.adh to i32
  %i.adj = add nsw i32 %.sroa.speculated173.i, %i.adi ; 3 uses
  %i.adk = getelementptr [2 x i8], ptr %i.oq, i64 %i.add ; 2 uses
  %i.adl = getelementptr i8, ptr %i.adk, i64 -14
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !59
  %i.adn = sext i16 %i.adm to i32
  %i.ado = add nsw i32 %.sroa.speculated173.i, %i.adn ; 3 uses
  %i.adp = or disjoint i64 %i.add, 2              ; 2 uses
  %i.adq = getelementptr inbounds [2 x i8], ptr %i.oq, i64 %i.adp
  %i.adr = load i16, ptr %i.adq, align 2, !tbaa !59
  %i.ads = sext i16 %i.adr to i32
  %i.adt = add nsw i32 %.sroa.speculated173.i, %i.ads ; 3 uses
  %i.adu = getelementptr i8, ptr %i.adk, i64 22
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !59
  %i.adw = sext i16 %i.adv to i32
  %i.adx = add nsw i32 %.sroa.speculated173.i, %i.adw ; 3 uses
  %i.ady = getelementptr inbounds [2 x i8], ptr %i.os, i64 %i.ade ; 23 uses
  %i.adz = getelementptr inbounds [2 x i8], ptr %i.ady, i64 %i.nn ; 11 uses
  %i.aea = getelementptr inbounds [2 x i8], ptr %i.or, i64 %i.ade ; 3 uses
  %i.aeb = getelementptr inbounds [2 x i8], ptr %i.aea, i64 %i.ir
  %i.aec = getelementptr inbounds [2 x i8], ptr %i.aeb, i64 %i.gf ; 11 uses
  %i.aed = getelementptr inbounds [2 x i8], ptr %i.aea, i64 %i.jn ; 13 uses
  %i.aee = getelementptr inbounds [2 x i8], ptr %i.aea, i64 %i.iq
  %i.aef = getelementptr inbounds [2 x i8], ptr %i.aee, i64 %i.jp ; 13 uses
  %i.aeg = getelementptr inbounds [2 x i8], ptr %i.aef, i64 %i.iz
  store i16 32767, ptr %i.aeg, align 2, !tbaa !59
  %i.aeh = getelementptr inbounds i8, ptr %i.aef, i64 -2
  store i16 32767, ptr %i.aeh, align 2, !tbaa !59
  %i.aei = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.iz
  store i16 32767, ptr %i.aei, align 2, !tbaa !59
  %i.aej = getelementptr inbounds i8, ptr %i.aed, i64 -2
  store i16 32767, ptr %i.aej, align 2, !tbaa !59
  %i.aek = getelementptr inbounds [2 x i8], ptr %i.aec, i64 %i.iz
  store i16 32767, ptr %i.aek, align 2, !tbaa !59
  %i.ael = getelementptr inbounds i8, ptr %i.aec, i64 -2
  store i16 32767, ptr %i.ael, align 2, !tbaa !59
  %i.aem = getelementptr inbounds [2 x i8], ptr %i.adz, i64 %i.iz
  store i16 32767, ptr %i.aem, align 2, !tbaa !59
  %i.aen = getelementptr inbounds i8, ptr %i.adz, i64 -2
  store i16 32767, ptr %i.aen, align 2, !tbaa !59
  %i.aeo = mul i64 %indvars.iv396.i, %i.iz        ; 2 uses
  %i.aep = getelementptr [2 x i8], ptr %i.pb, i64 %i.aeo ; 5 uses
  %i.aeq = getelementptr [2 x i8], ptr %i.pc, i64 %i.aeo ; 3 uses
  br i1 %i.jq, label %.lr.ph275.i, label %._crit_edge276.i

.lr.ph275.i:                                      ; preds = %.lr.ph283.i
  %invariant.gep492.i = getelementptr [2 x i8], ptr %i.ady, i64 %i.gf ; 12 uses
  %invariant.gep494.i = getelementptr [2 x i8], ptr %i.ady, i64 %i.jn ; 12 uses
  %invariant.gep496.i = getelementptr [2 x i8], ptr %i.ady, i64 %i.jp ; 9 uses
  br i1 %min.iters.check531, label %scalar.ph.preheader, label %vector.memcheck208

scalar.ph.preheader:                              ; preds = %vector.memcheck208, %.lr.ph275.i
  br label %scalar.ph

vector.memcheck208:                               ; preds = %.lr.ph275.i
  %bound0 = icmp ult ptr %i.ady, %scevgep209
  %bound1 = icmp ult ptr %invariant.gep492.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0235 = icmp ult ptr %i.ady, %scevgep210
  %bound1236 = icmp ult ptr %invariant.gep494.i, %scevgep
  %found.conflict237 = and i1 %bound0235, %bound1236
  %bound0239 = icmp ult ptr %i.ady, %scevgep211
  %bound1240 = icmp ult ptr %invariant.gep496.i, %scevgep
  %found.conflict241 = and i1 %bound0239, %bound1240
  %bound0243 = icmp ult ptr %i.ady, %scevgep212
  %bound1244 = icmp ult ptr %i.aeq, %scevgep
  %found.conflict245 = and i1 %bound0243, %bound1244
  %bound0247 = icmp ult ptr %i.ady, %scevgep213
  %bound1248 = icmp ult ptr %i.aep, %scevgep
  %found.conflict249 = and i1 %bound0247, %bound1248
  %bound0251 = icmp ult ptr %i.ady, %scevgep214
  %bound1252 = icmp ult ptr %i.adz, %scevgep
  %found.conflict253 = and i1 %bound0251, %bound1252
  %bound0255 = icmp ult ptr %i.ady, %scevgep216
  %bound1256 = icmp ult ptr %scevgep215, %scevgep
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %i.ady, %scevgep218
  %bound1260 = icmp ult ptr %scevgep217, %scevgep
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %i.ady, %scevgep219
  %bound1264 = icmp ult ptr %i.aec, %scevgep
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %i.ady, %scevgep221
  %bound1268 = icmp ult ptr %scevgep220, %scevgep
  %found.conflict269 = and i1 %bound0267, %bound1268
  %bound0271 = icmp ult ptr %i.ady, %scevgep223
  %bound1272 = icmp ult ptr %scevgep222, %scevgep
  %found.conflict273 = and i1 %bound0271, %bound1272
  %bound0275 = icmp ult ptr %i.ady, %scevgep224
  %bound1276 = icmp ult ptr %i.aed, %scevgep
  %found.conflict277 = and i1 %bound0275, %bound1276
  %bound0279 = icmp ult ptr %i.ady, %scevgep226
  %bound1280 = icmp ult ptr %scevgep225, %scevgep
  %found.conflict281 = and i1 %bound0279, %bound1280
  %bound0283 = icmp ult ptr %i.ady, %scevgep228
  %bound1284 = icmp ult ptr %scevgep227, %scevgep
  %found.conflict285 = and i1 %bound0283, %bound1284
  %bound0287 = icmp ult ptr %i.ady, %scevgep229
  %bound1288 = icmp ult ptr %i.aef, %scevgep
  %found.conflict289 = and i1 %bound0287, %bound1288
  %bound0291 = icmp ult ptr %i.ady, %scevgep231
  %bound1292 = icmp ult ptr %scevgep230, %scevgep
  %found.conflict293 = and i1 %bound0291, %bound1292
  %bound0295 = icmp ult ptr %i.ady, %scevgep233
  %bound1296 = icmp ult ptr %scevgep232, %scevgep
  %found.conflict297 = and i1 %bound0295, %bound1296
  %bound0299 = icmp ult ptr %invariant.gep492.i, %scevgep210
  %bound1300 = icmp ult ptr %invariant.gep494.i, %scevgep209
  %found.conflict301 = and i1 %bound0299, %bound1300
  %bound0303 = icmp ult ptr %invariant.gep492.i, %scevgep211
  %bound1304 = icmp ult ptr %invariant.gep496.i, %scevgep209
  %found.conflict305.a = and i1 %bound0303, %bound1304
  %29 = insertelement <8 x ptr> poison, ptr %invariant.gep492.i, i64 0
  %30 = shufflevector <8 x ptr> %29, <8 x ptr> poison, <8 x i32> zeroinitializer
  %31 = insertelement <8 x ptr> poison, ptr %scevgep212, i64 0
  %32 = insertelement <8 x ptr> %31, ptr %scevgep213, i64 1
  %33 = insertelement <8 x ptr> %32, ptr %scevgep214, i64 2
  %34 = insertelement <8 x ptr> %33, ptr %scevgep216, i64 3
  %35 = insertelement <8 x ptr> %34, ptr %scevgep218, i64 4
  %36 = insertelement <8 x ptr> %35, ptr %scevgep219, i64 5
  %37 = insertelement <8 x ptr> %36, ptr %scevgep221, i64 6
  %38 = insertelement <8 x ptr> %37, ptr %scevgep223, i64 7 ; 3 uses
  %39 = icmp ult <8 x ptr> %30, %38
  %40 = insertelement <8 x ptr> poison, ptr %scevgep234, i64 0
  %41 = insertelement <8 x ptr> %40, ptr %i.aep, i64 1
  %42 = insertelement <8 x ptr> %41, ptr %i.adz, i64 2
  %43 = insertelement <8 x ptr> %42, ptr %scevgep215, i64 3
  %44 = insertelement <8 x ptr> %43, ptr %scevgep217, i64 4
  %45 = insertelement <8 x ptr> %44, ptr %i.aec, i64 5
  %46 = insertelement <8 x ptr> %45, ptr %scevgep220, i64 6
  %47 = insertelement <8 x ptr> %46, ptr %scevgep222, i64 7 ; 3 uses
  %48 = insertelement <8 x ptr> poison, ptr %scevgep209, i64 0
  %49 = shufflevector <8 x ptr> %48, <8 x ptr> poison, <8 x i32> zeroinitializer
  %50 = icmp ult <8 x ptr> %47, %49
  %51 = and <8 x i1> %39, %50
  %bound0339 = icmp ult ptr %invariant.gep492.i, %scevgep224
  %bound1340 = icmp ult ptr %i.aed, %scevgep209
  %found.conflict341 = and i1 %bound0339, %bound1340
  %bound0343 = icmp ult ptr %invariant.gep492.i, %scevgep226
  %bound1344 = icmp ult ptr %scevgep225, %scevgep209
  %found.conflict345 = and i1 %bound0343, %bound1344
  %bound0347 = icmp ult ptr %invariant.gep492.i, %scevgep228
  %bound1348 = icmp ult ptr %scevgep227, %scevgep209
  %found.conflict349 = and i1 %bound0347, %bound1348
  %bound0351 = icmp ult ptr %invariant.gep492.i, %scevgep229
  %bound1352 = icmp ult ptr %i.aef, %scevgep209
  %found.conflict353 = and i1 %bound0351, %bound1352
  %bound0355 = icmp ult ptr %invariant.gep492.i, %scevgep231
  %bound1356 = icmp ult ptr %scevgep230, %scevgep209
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0359 = icmp ult ptr %invariant.gep492.i, %scevgep233
  %bound1360 = icmp ult ptr %scevgep232, %scevgep209
  %found.conflict361 = and i1 %bound0359, %bound1360
  %bound0363 = icmp ult ptr %invariant.gep494.i, %scevgep211
  %bound1364 = icmp ult ptr %invariant.gep496.i, %scevgep210
  %found.conflict365 = and i1 %bound0363, %bound1364
  %52 = insertelement <8 x ptr> poison, ptr %invariant.gep494.i, i64 0
  %53 = shufflevector <8 x ptr> %52, <8 x ptr> poison, <8 x i32> zeroinitializer
  %54 = icmp ult <8 x ptr> %53, %38
  %55 = insertelement <8 x ptr> poison, ptr %scevgep210, i64 0
  %56 = shufflevector <8 x ptr> %55, <8 x ptr> poison, <8 x i32> zeroinitializer
  %57 = icmp ult <8 x ptr> %47, %56
  %58 = and <8 x i1> %54, %57
  %bound0399.a = icmp ult ptr %invariant.gep494.i, %scevgep224
  %bound1400.a = icmp ult ptr %i.aed, %scevgep210
  %found.conflict401.a = and i1 %bound0399.a, %bound1400.a
  %bound0403.a = icmp ult ptr %invariant.gep494.i, %scevgep226
  %bound1404.a = icmp ult ptr %scevgep225, %scevgep210
  %found.conflict405.a = and i1 %bound0403.a, %bound1404.a
  %bound0407.a = icmp ult ptr %invariant.gep494.i, %scevgep228
  %bound1408.a = icmp ult ptr %scevgep227, %scevgep210
  %found.conflict409.a = and i1 %bound0407.a, %bound1408.a
  %bound0411.a = icmp ult ptr %invariant.gep494.i, %scevgep229
  %bound1412.a = icmp ult ptr %i.aef, %scevgep210
  %found.conflict413.a = and i1 %bound0411.a, %bound1412.a
  %bound0415.a = icmp ult ptr %invariant.gep494.i, %scevgep231
  %bound1416.a = icmp ult ptr %scevgep230, %scevgep210
  %found.conflict417.a = and i1 %bound0415.a, %bound1416.a
  %bound0419.a = icmp ult ptr %invariant.gep494.i, %scevgep233
  %bound1420.a = icmp ult ptr %scevgep232, %scevgep210
  %found.conflict421.a = and i1 %bound0419.a, %bound1420.a
  %59 = insertelement <8 x ptr> poison, ptr %invariant.gep496.i, i64 0
  %60 = shufflevector <8 x ptr> %59, <8 x ptr> poison, <8 x i32> zeroinitializer
  %61 = icmp ult <8 x ptr> %60, %38
  %62 = insertelement <8 x ptr> poison, ptr %scevgep211, i64 0
  %63 = shufflevector <8 x ptr> %62, <8 x ptr> poison, <8 x i32> zeroinitializer
  %64 = icmp ult <8 x ptr> %47, %63
  %65 = and <8 x i1> %61, %64
  %66 = insertelement <4 x ptr> poison, ptr %invariant.gep496.i, i64 0
  %67 = shufflevector <4 x ptr> %66, <4 x ptr> poison, <4 x i32> zeroinitializer
  %68 = insertelement <4 x ptr> poison, ptr %scevgep224, i64 0
  %69 = insertelement <4 x ptr> %68, ptr %scevgep226, i64 1
  %70 = insertelement <4 x ptr> %69, ptr %scevgep228, i64 2
  %71 = insertelement <4 x ptr> %70, ptr %scevgep229, i64 3
  %72 = icmp ult <4 x ptr> %67, %71
  %73 = insertelement <4 x ptr> poison, ptr %i.aed, i64 0
  %74 = insertelement <4 x ptr> %73, ptr %scevgep225, i64 1
  %75 = insertelement <4 x ptr> %74, ptr %scevgep227, i64 2
  %76 = insertelement <4 x ptr> %75, ptr %i.aef, i64 3
  %77 = insertelement <4 x ptr> poison, ptr %scevgep211, i64 0
  %78 = shufflevector <4 x ptr> %77, <4 x ptr> poison, <4 x i32> zeroinitializer
  %79 = icmp ult <4 x ptr> %76, %78
  %80 = and <4 x i1> %72, %79
  %bound0471.a = icmp ult ptr %invariant.gep496.i, %scevgep231
  %bound1472 = icmp ult ptr %scevgep230, %scevgep211
  %found.conflict473 = and i1 %bound0471.a, %bound1472
  %bound0475.a = icmp ult ptr %invariant.gep496.i, %scevgep233
  %bound1476.a = icmp ult ptr %scevgep232, %scevgep211
  %found.conflict477.a = and i1 %bound0475.a, %bound1476.a
  %bound0479.a = icmp ult ptr %scevgep234, %scevgep213
  %bound1480.a = icmp ult ptr %i.aep, %scevgep212
  %found.conflict481.a = and i1 %bound0479.a, %bound1480.a
  %bound0483.a = icmp ult ptr %scevgep234, %scevgep214
  %bound1484.a = icmp ult ptr %i.adz, %scevgep212
  %found.conflict485.a = and i1 %bound0483.a, %bound1484.a
  %bound0487.a = icmp ult ptr %scevgep234, %scevgep216
  %bound1488.a = icmp ult ptr %scevgep215, %scevgep212
  %found.conflict489.a = and i1 %bound0487.a, %bound1488.a
  %bound0491.a = icmp ult ptr %scevgep234, %scevgep218
  %bound1492.a = icmp ult ptr %scevgep217, %scevgep212
  %found.conflict493.a = and i1 %bound0491.a, %bound1492.a
  %bound0495.a = icmp ult ptr %scevgep234, %scevgep219
  %bound1496.a = icmp ult ptr %i.aec, %scevgep212
  %found.conflict497.a = and i1 %bound0495.a, %bound1496.a
  %bound0499.a = icmp ult ptr %scevgep234, %scevgep221
  %bound1500.a = icmp ult ptr %scevgep220, %scevgep212
  %found.conflict501.a = and i1 %bound0499.a, %bound1500.a
  %bound0503.a = icmp ult ptr %scevgep234, %scevgep223
  %bound1504.a = icmp ult ptr %scevgep222, %scevgep212
  %found.conflict505.a = and i1 %bound0503.a, %bound1504.a
  %bound0507.a = icmp ult ptr %scevgep234, %scevgep224
  %bound1508.a = icmp ult ptr %i.aed, %scevgep212
  %found.conflict509.a = and i1 %bound0507.a, %bound1508.a
  %bound0511.a = icmp ult ptr %scevgep234, %scevgep226
  %bound1512.a = icmp ult ptr %scevgep225, %scevgep212
  %found.conflict513.a = and i1 %bound0511.a, %bound1512.a
  %bound0515.a = icmp ult ptr %scevgep234, %scevgep228
  %bound1516.a = icmp ult ptr %scevgep227, %scevgep212
  %found.conflict517.a = and i1 %bound0515.a, %bound1516.a
  %bound0519.a = icmp ult ptr %scevgep234, %scevgep229
  %bound1520.a = icmp ult ptr %i.aef, %scevgep212
  %found.conflict521.a = and i1 %bound0519.a, %bound1520.a
  %bound0523.a = icmp ult ptr %scevgep234, %scevgep231
  %bound1524.a = icmp ult ptr %scevgep230, %scevgep212
  %found.conflict525.a = and i1 %bound0523.a, %bound1524.a
  %bound0527 = icmp ult ptr %scevgep234, %scevgep233
  %bound1528.a = icmp ult ptr %scevgep232, %scevgep212
  %found.conflict529 = and i1 %bound0527, %bound1528.a
  %rdx.op = or <8 x i1> %51, %58
  %rdx.op777 = or <8 x i1> %rdx.op, %65           ; 2 uses
  %81 = shufflevector <4 x i1> %80, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %82 = or <8 x i1> %rdx.op777, %81
  %83 = shufflevector <8 x i1> %82, <8 x i1> %rdx.op777, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %84 = bitcast <8 x i1> %83 to i8
  %85 = icmp ne i8 %84, 0
  %op.rdx = or i1 %85, %found.conflict
  %op.rdx779 = or i1 %found.conflict237, %found.conflict241
  %op.rdx780 = or i1 %found.conflict245, %found.conflict249
  %op.rdx781 = or i1 %found.conflict253, %found.conflict257
  %op.rdx782 = or i1 %found.conflict261, %found.conflict265
  %op.rdx783 = or i1 %found.conflict269, %found.conflict273
  %op.rdx784 = or i1 %found.conflict277, %found.conflict281
  %op.rdx785 = or i1 %found.conflict285, %found.conflict289
  %op.rdx786 = or i1 %found.conflict293, %found.conflict297
  %op.rdx787 = or i1 %found.conflict301, %found.conflict305.a
  %op.rdx788 = or i1 %found.conflict341, %found.conflict345
  %op.rdx789 = or i1 %found.conflict349, %found.conflict353
  %op.rdx790 = or i1 %found.conflict357, %found.conflict361
  %op.rdx791 = or i1 %found.conflict365, %found.conflict401.a
  %op.rdx792 = or i1 %found.conflict405.a, %found.conflict409.a
  %op.rdx793 = or i1 %found.conflict413.a, %found.conflict417.a
  %op.rdx794 = or i1 %found.conflict421.a, %found.conflict473
  %op.rdx795 = or i1 %found.conflict477.a, %found.conflict481.a
  %op.rdx796 = or i1 %found.conflict485.a, %found.conflict489.a
  %op.rdx797 = or i1 %found.conflict493.a, %found.conflict497.a
  %op.rdx798 = or i1 %found.conflict501.a, %found.conflict505.a
  %op.rdx799 = or i1 %found.conflict509.a, %found.conflict513.a
  %op.rdx800 = or i1 %found.conflict517.a, %found.conflict521.a
  %op.rdx801 = or i1 %found.conflict525.a, %found.conflict529
  %op.rdx802 = or i1 %op.rdx, %op.rdx779
  %op.rdx803 = or i1 %op.rdx780, %op.rdx781
  %op.rdx804 = or i1 %op.rdx782, %op.rdx783
  %op.rdx805 = or i1 %op.rdx784, %op.rdx785
  %op.rdx806 = or i1 %op.rdx786, %op.rdx787
  %op.rdx807 = or i1 %op.rdx788, %op.rdx789
  %op.rdx808 = or i1 %op.rdx790, %op.rdx791
  %op.rdx809 = or i1 %op.rdx792, %op.rdx793
  %op.rdx810 = or i1 %op.rdx794, %op.rdx795
  %op.rdx811 = or i1 %op.rdx796, %op.rdx797
  %op.rdx812 = or i1 %op.rdx798, %op.rdx799
  %op.rdx813 = or i1 %op.rdx800, %op.rdx801
  %op.rdx814 = or i1 %op.rdx802, %op.rdx803
  %op.rdx815 = or i1 %op.rdx804, %op.rdx805
  %op.rdx816 = or i1 %op.rdx806, %op.rdx807
  %op.rdx817 = or i1 %op.rdx808, %op.rdx809
  %op.rdx818 = or i1 %op.rdx810, %op.rdx811
  %op.rdx819 = or i1 %op.rdx812, %op.rdx813
  %op.rdx820 = or i1 %op.rdx814, %op.rdx815
  %op.rdx821 = or i1 %op.rdx816, %op.rdx817
  %op.rdx822 = or i1 %op.rdx818, %op.rdx819
  %op.rdx823 = or i1 %op.rdx820, %op.rdx821
  %op.rdx824 = or i1 %op.rdx823, %op.rdx822
  br i1 %op.rdx824, label %scalar.ph.preheader, label %vector.ph532

vector.ph532:                                     ; preds = %vector.memcheck208
  %broadcast.splatinsert536 = insertelement <4 x i32> poison, i32 %i.adj, i64 0
  %broadcast.splat537 = shufflevector <4 x i32> %broadcast.splatinsert536, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert538 = insertelement <4 x i32> poison, i32 %i.ado, i64 0
  %broadcast.splat539 = shufflevector <4 x i32> %broadcast.splatinsert538, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert540 = insertelement <4 x i32> poison, i32 %i.adt, i64 0
  %broadcast.splat541 = shufflevector <4 x i32> %broadcast.splatinsert540, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert542 = insertelement <4 x i32> poison, i32 %i.adx, i64 0
  %broadcast.splat543 = shufflevector <4 x i32> %broadcast.splatinsert542, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph532
  %index545 = phi i64 [ 0, %vector.ph532 ], [ %index.next562, %vector.body544 ] ; 13 uses
  %vec.phi = phi <4 x i32> [ splat (i32 32767), %vector.ph532 ], [ %i.agx, %vector.body544 ]
  %vec.phi546 = phi <4 x i32> [ splat (i32 32767), %vector.ph532 ], [ %i.aha, %vector.body544 ]
  %vec.phi547 = phi <4 x i32> [ splat (i32 32767), %vector.ph532 ], [ %i.ahd, %vector.body544 ]
  %vec.phi548 = phi <4 x i32> [ splat (i32 32767), %vector.ph532 ], [ %i.ahg, %vector.body544 ]
  %i.aer = getelementptr inbounds nuw [2 x i8], ptr %i.aep, i64 %index545
  %wide.load = load <4 x i16>, ptr %i.aer, align 2, !tbaa !59, !alias.scope !193
  %i.aes = sext <4 x i16> %wide.load to <4 x i32> ; 4 uses
  %i.aet = getelementptr inbounds nuw [2 x i8], ptr %i.adz, i64 %index545
  %wide.load549 = load <4 x i16>, ptr %i.aet, align 2, !tbaa !59, !alias.scope !194
  %i.aeu = sext <4 x i16> %wide.load549 to <4 x i32>
  %i.aev = add nsw i64 %index545, -1              ; 4 uses
  %i.aew = getelementptr inbounds [2 x i8], ptr %i.adz, i64 %i.aev
  %wide.load550 = load <4 x i16>, ptr %i.aew, align 2, !tbaa !59, !alias.scope !195
  %i.aex = sext <4 x i16> %wide.load550 to <4 x i32>
  %i.aey = add nsw <4 x i32> %broadcast.splat535, %i.aex
  %i.aez = or disjoint i64 %index545, 1           ; 4 uses
  %i.afa = getelementptr inbounds nuw [2 x i8], ptr %i.adz, i64 %i.aez
  %wide.load551 = load <4 x i16>, ptr %i.afa, align 2, !tbaa !59, !alias.scope !196
  %i.afb = sext <4 x i16> %wide.load551 to <4 x i32>
  %i.afc = add nsw <4 x i32> %broadcast.splat535, %i.afb
  %i.afd = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat537, <4 x i32> %i.afc)
  %i.afe = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afd, <4 x i32> %i.aey)
  %i.aff = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afe, <4 x i32> %i.aeu)
  %i.afg = sub <4 x i32> %i.aes, %broadcast.splat537
  %i.afh = add <4 x i32> %i.aff, %i.afg           ; 3 uses
  %i.afi = getelementptr inbounds nuw [2 x i8], ptr %i.aec, i64 %index545
  %wide.load552 = load <4 x i16>, ptr %i.afi, align 2, !tbaa !59, !alias.scope !197
  %i.afj = sext <4 x i16> %wide.load552 to <4 x i32>
  %i.afk = getelementptr inbounds [2 x i8], ptr %i.aec, i64 %i.aev
  %wide.load553 = load <4 x i16>, ptr %i.afk, align 2, !tbaa !59, !alias.scope !198
  %i.afl = sext <4 x i16> %wide.load553 to <4 x i32>
  %i.afm = add nsw <4 x i32> %broadcast.splat535, %i.afl
  %i.afn = getelementptr inbounds nuw [2 x i8], ptr %i.aec, i64 %i.aez
  %wide.load554 = load <4 x i16>, ptr %i.afn, align 2, !tbaa !59, !alias.scope !199
  %i.afo = sext <4 x i16> %wide.load554 to <4 x i32>
  %i.afp = add nsw <4 x i32> %broadcast.splat535, %i.afo
  %i.afq = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat539, <4 x i32> %i.afp)
  %i.afr = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afq, <4 x i32> %i.afm)
  %i.afs = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afr, <4 x i32> %i.afj)
  %i.aft = sub <4 x i32> %i.aes, %broadcast.splat539
  %i.afu = add <4 x i32> %i.afs, %i.aft           ; 3 uses
  %i.afv = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %index545
  %wide.load555 = load <4 x i16>, ptr %i.afv, align 2, !tbaa !59, !alias.scope !200
  %i.afw = sext <4 x i16> %wide.load555 to <4 x i32>
  %i.afx = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.aev
  %wide.load556 = load <4 x i16>, ptr %i.afx, align 2, !tbaa !59, !alias.scope !201
  %i.afy = sext <4 x i16> %wide.load556 to <4 x i32>
  %i.afz = add nsw <4 x i32> %broadcast.splat535, %i.afy
  %i.aga = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %i.aez
  %wide.load557 = load <4 x i16>, ptr %i.aga, align 2, !tbaa !59, !alias.scope !202
  %i.agb = sext <4 x i16> %wide.load557 to <4 x i32>
  %i.agc = add nsw <4 x i32> %broadcast.splat535, %i.agb
  %i.agd = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat541, <4 x i32> %i.agc)
  %i.age = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agd, <4 x i32> %i.afz)
  %i.agf = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.age, <4 x i32> %i.afw)
  %i.agg = sub <4 x i32> %i.aes, %broadcast.splat541
  %i.agh = add <4 x i32> %i.agf, %i.agg           ; 3 uses
  %i.agi = getelementptr inbounds nuw [2 x i8], ptr %i.aef, i64 %index545
  %wide.load558 = load <4 x i16>, ptr %i.agi, align 2, !tbaa !59, !alias.scope !203
  %i.agj = sext <4 x i16> %wide.load558 to <4 x i32>
  %i.agk = getelementptr inbounds [2 x i8], ptr %i.aef, i64 %i.aev
  %wide.load559 = load <4 x i16>, ptr %i.agk, align 2, !tbaa !59, !alias.scope !204
  %i.agl = sext <4 x i16> %wide.load559 to <4 x i32>
  %i.agm = add nsw <4 x i32> %broadcast.splat535, %i.agl
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %i.aef, i64 %i.aez
  %wide.load560 = load <4 x i16>, ptr %i.agn, align 2, !tbaa !59, !alias.scope !205
  %i.ago = sext <4 x i16> %wide.load560 to <4 x i32>
  %i.agp = add nsw <4 x i32> %broadcast.splat535, %i.ago
  %i.agq = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat543, <4 x i32> %i.agp)
  %i.agr = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agq, <4 x i32> %i.agm)
  %i.ags = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agr, <4 x i32> %i.agj)
  %i.agt = sub <4 x i32> %i.aes, %broadcast.splat543
  %i.agu = add <4 x i32> %i.ags, %i.agt           ; 3 uses
  %i.agv = trunc <4 x i32> %i.afh to <4 x i16>
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.ady, i64 %index545
  store <4 x i16> %i.agv, ptr %i.agw, align 2, !tbaa !59, !alias.scope !206, !noalias !207
  %i.agx = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afh, <4 x i32> %vec.phi) ; 2 uses
  %i.agy = trunc <4 x i32> %i.afu to <4 x i16>
  %i.agz = getelementptr [2 x i8], ptr %invariant.gep492.i, i64 %index545
  store <4 x i16> %i.agy, ptr %i.agz, align 2, !tbaa !59, !alias.scope !208, !noalias !209
  %i.aha = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afu, <4 x i32> %vec.phi546) ; 2 uses
  %i.ahb = trunc <4 x i32> %i.agh to <4 x i16>
  %i.ahc = getelementptr [2 x i8], ptr %invariant.gep494.i, i64 %index545
  store <4 x i16> %i.ahb, ptr %i.ahc, align 2, !tbaa !59, !alias.scope !210, !noalias !211
  %i.ahd = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agh, <4 x i32> %vec.phi547) ; 2 uses
  %i.ahe = trunc <4 x i32> %i.agu to <4 x i16>
  %i.ahf = getelementptr [2 x i8], ptr %invariant.gep496.i, i64 %index545
  store <4 x i16> %i.ahe, ptr %i.ahf, align 2, !tbaa !59, !alias.scope !212, !noalias !213
  %i.ahg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agu, <4 x i32> %vec.phi548) ; 2 uses
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %i.aeq, i64 %index545 ; 2 uses
  %wide.load561 = load <4 x i16>, ptr %i.ahh, align 2, !tbaa !59, !alias.scope !214, !noalias !215
  %i.ahi = sext <4 x i16> %wide.load561 to <4 x i32>
  %i.ahj = add <4 x i32> %i.afu, %i.afh
  %i.ahk = add <4 x i32> %i.ahj, %i.agh
  %i.ahl = add <4 x i32> %i.ahk, %i.agu
  %i.ahm = add <4 x i32> %i.ahl, %i.ahi
  %i.ahn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ahm, <4 x i32> splat (i32 -32768))
  %i.aho = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ahn, <4 x i32> splat (i32 32767))
  %i.ahp = trunc nsw <4 x i32> %i.aho to <4 x i16>
  store <4 x i16> %i.ahp, ptr %i.ahh, align 2, !tbaa !59, !alias.scope !214, !noalias !215
  %index.next562 = add nuw i64 %index545, 4       ; 2 uses
  %i.ahq = icmp eq i64 %index.next562, %i.ju
  br i1 %i.ahq, label %middle.block563, label %vector.body544, !llvm.loop !159

middle.block563:                                  ; preds = %vector.body544
  %i.ahr = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.agx)
  %i.ahs = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.aha)
  %i.aht = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ahd)
  %i.ahu = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ahg)
  br label %._crit_edge276.loopexit.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv391.i = phi i64 [ %indvars.iv.next392.i, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 12 uses
  %.0186272.i = phi i32 [ %.sroa.speculated86.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0187271.i = phi i32 [ %.sroa.speculated68.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0188270.i = phi i32 [ %.sroa.speculated50.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %.0189269.i = phi i32 [ %.sroa.speculated32.i, %scalar.ph ], [ 32767, %scalar.ph.preheader ]
  %i.ahv = getelementptr inbounds nuw [2 x i8], ptr %i.aep, i64 %indvars.iv391.i
  %i.ahw = load i16, ptr %i.ahv, align 2, !tbaa !59
  %i.ahx = sext i16 %i.ahw to i32                 ; 4 uses
  %i.ahy = getelementptr inbounds nuw [2 x i8], ptr %i.adz, i64 %indvars.iv391.i
  %i.ahz = load i16, ptr %i.ahy, align 2, !tbaa !59
  %i.aia = sext i16 %i.ahz to i32
  %i.aib = add nsw i64 %indvars.iv391.i, -1       ; 4 uses
  %i.aic = getelementptr inbounds [2 x i8], ptr %i.adz, i64 %i.aib
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !59
  %i.aie = sext i16 %i.aid to i32
  %i.aif = add nsw i32 %i.ep, %i.aie
  %indvars.iv.next392.i = add nuw nsw i64 %indvars.iv391.i, 1 ; 6 uses
  %i.aig = getelementptr inbounds nuw [2 x i8], ptr %i.adz, i64 %indvars.iv.next392.i
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !59
  %i.aii = sext i16 %i.aih to i32
  %i.aij = add nsw i32 %i.ep, %i.aii
  %i.aik = call i32 @llvm.smin.i32(i32 %i.adj, i32 %i.aij)
  %i.ail = call i32 @llvm.smin.i32(i32 %i.aik, i32 %i.aif)
  %.sroa.speculated78.i = call i32 @llvm.smin.i32(i32 %i.ail, i32 %i.aia)
  %i.aim = sub i32 %i.ahx, %i.adj
  %i.ain = add i32 %.sroa.speculated78.i, %i.aim  ; 3 uses
  %i.aio = getelementptr inbounds nuw [2 x i8], ptr %i.aec, i64 %indvars.iv391.i
  %i.aip = load i16, ptr %i.aio, align 2, !tbaa !59
  %i.aiq = sext i16 %i.aip to i32
  %i.air = getelementptr inbounds [2 x i8], ptr %i.aec, i64 %i.aib
  %i.ais = load i16, ptr %i.air, align 2, !tbaa !59
  %i.ait = sext i16 %i.ais to i32
  %i.aiu = add nsw i32 %i.ep, %i.ait
  %i.aiv = getelementptr inbounds nuw [2 x i8], ptr %i.aec, i64 %indvars.iv.next392.i
  %i.aiw = load i16, ptr %i.aiv, align 2, !tbaa !59
  %i.aix = sext i16 %i.aiw to i32
  %i.aiy = add nsw i32 %i.ep, %i.aix
  %i.aiz = call i32 @llvm.smin.i32(i32 %i.ado, i32 %i.aiy)
  %i.aja = call i32 @llvm.smin.i32(i32 %i.aiz, i32 %i.aiu)
  %.sroa.speculated60.i = call i32 @llvm.smin.i32(i32 %i.aja, i32 %i.aiq)
  %i.ajb = sub i32 %i.ahx, %i.ado
  %i.ajc = add i32 %.sroa.speculated60.i, %i.ajb  ; 3 uses
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %indvars.iv391.i
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !59
  %i.ajf = sext i16 %i.aje to i32
  %i.ajg = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.aib
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !59
  %i.aji = sext i16 %i.ajh to i32
  %i.ajj = add nsw i32 %i.ep, %i.aji
  %i.ajk = getelementptr inbounds nuw [2 x i8], ptr %i.aed, i64 %indvars.iv.next392.i
  %i.ajl = load i16, ptr %i.ajk, align 2, !tbaa !59
  %i.ajm = sext i16 %i.ajl to i32
  %i.ajn = add nsw i32 %i.ep, %i.ajm
  %i.ajo = call i32 @llvm.smin.i32(i32 %i.adt, i32 %i.ajn)
  %i.ajp = call i32 @llvm.smin.i32(i32 %i.ajo, i32 %i.ajj)
  %.sroa.speculated42.i = call i32 @llvm.smin.i32(i32 %i.ajp, i32 %i.ajf)
  %i.ajq = sub i32 %i.ahx, %i.adt
  %i.ajr = add i32 %.sroa.speculated42.i, %i.ajq  ; 3 uses
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.aef, i64 %indvars.iv391.i
  %i.ajt = load i16, ptr %i.ajs, align 2, !tbaa !59
  %i.aju = sext i16 %i.ajt to i32
  %i.ajv = getelementptr inbounds [2 x i8], ptr %i.aef, i64 %i.aib
  %i.ajw = load i16, ptr %i.ajv, align 2, !tbaa !59
  %i.ajx = sext i16 %i.ajw to i32
  %i.ajy = add nsw i32 %i.ep, %i.ajx
  %i.ajz = getelementptr inbounds nuw [2 x i8], ptr %i.aef, i64 %indvars.iv.next392.i
  %i.aka = load i16, ptr %i.ajz, align 2, !tbaa !59
  %i.akb = sext i16 %i.aka to i32
  %i.akc = add nsw i32 %i.ep, %i.akb
  %i.akd = call i32 @llvm.smin.i32(i32 %i.adx, i32 %i.akc)
  %i.ake = call i32 @llvm.smin.i32(i32 %i.akd, i32 %i.ajy)
  %.sroa.speculated25.i = call i32 @llvm.smin.i32(i32 %i.ake, i32 %i.aju)
  %i.akf = sub i32 %i.ahx, %i.adx
end_hunk_0
