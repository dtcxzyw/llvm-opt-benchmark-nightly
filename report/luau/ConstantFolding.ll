Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstantFolding?download=true
inline.NumInlined: 650
inline.NumDeleted: 342
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau7CompileL10foldBinaryERNS0_8ConstantENS_13AstExprBinary2OpERKS1_S6_RNS_12AstNameTableE:bb.a
  br i1 %i.zc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cp
  %i.zd = load i64, ptr %i.yi, align 8, !tbaa !70
  %i.ze = add i64 %i.zd, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.ze) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.thread629

bb.cq:                                            ; preds = %bb.cl, %bb.cm, %bb.cn, %bb.co
  %i.zf = landingpad { ptr, i32 }
          cleanup
  %i.zg = load ptr, ptr %5, align 8, !tbaa !168   ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.yi
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624: ; preds = %bb.cq
  %i.zi = load i64, ptr %i.yi, align 8, !tbaa !70
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zg, i64 noundef %i.zj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.zf

bb.cr:                                            ; preds = %bb.a
  %i.zk = load i32, ptr %2, align 8, !tbaa !68
  %.not563 = icmp eq i32 %i.zk, 0
  %i.zl = load i32, ptr %3, align 8
  %.not564 = icmp eq i32 %i.zl, 0
  %or.cond614 = select i1 %.not563, i1 true, i1 %.not564
  br i1 %or.cond614, label %.thread629, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store i32 2, ptr %0, align 8, !tbaa !68
  %i.zm = tail call fastcc noundef zeroext i1 @_ZN4Luau7CompileL14constantsEqualERKNS0_8ConstantES3_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
  %i.zn = xor i1 %i.zm, true
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zp = zext i1 %i.zn to i8
  store i8 %i.zp, ptr %i.zo, align 8, !tbaa !70
  br label %.thread629

bb.ct:                                            ; preds = %bb.a
  %i.zq = load i32, ptr %2, align 8, !tbaa !68
  %.not561 = icmp eq i32 %i.zq, 0
  %i.zr = load i32, ptr %3, align 8
  %.not562 = icmp eq i32 %i.zr, 0
  %or.cond615 = select i1 %.not561, i1 true, i1 %.not562
  br i1 %or.cond615, label %.thread629, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 2, ptr %0, align 8, !tbaa !68
  %i.zs = tail call fastcc noundef zeroext i1 @_ZN4Luau7CompileL14constantsEqualERKNS0_8ConstantES3_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zu = zext i1 %i.zs to i8
  store i8 %i.zu, ptr %i.zt, align 8, !tbaa !70
  br label %.thread629

bb.cv:                                            ; preds = %bb.a
  %i.zv = load i32, ptr %2, align 8, !tbaa !68
  %i.zw = icmp eq i32 %i.zv, 3
  %i.zx = load i32, ptr %3, align 8
  %i.zy = icmp eq i32 %i.zx, 3
  %or.cond617 = select i1 %i.zw, i1 %i.zy, i1 false
  br i1 %or.cond617, label %bb.cw, label %.thread629

bb.cw:                                            ; preds = %bb.cv
  store i32 2, ptr %0, align 8, !tbaa !68
  %i.zz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !70
  %i.aab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !70
  %i.aad = fcmp olt double %i.aaa, %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aaf = zext i1 %i.aad to i8
  store i8 %i.aaf, ptr %i.aae, align 8, !tbaa !70
  br label %.thread629

bb.cx:                                            ; preds = %bb.a
  %i.aag = load i32, ptr %2, align 8, !tbaa !68
  %i.aah = icmp eq i32 %i.aag, 3
  %i.aai = load i32, ptr %3, align 8
  %i.aaj = icmp eq i32 %i.aai, 3
  %or.cond619 = select i1 %i.aah, i1 %i.aaj, i1 false
  br i1 %or.cond619, label %bb.cy, label %.thread629

bb.cy:                                            ; preds = %bb.cx
  store i32 2, ptr %0, align 8, !tbaa !68
  %i.aak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !70
  %i.aam = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !70
  %i.aao = fcmp ole double %i.aal, %i.aan
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aaq = zext i1 %i.aao to i8
  store i8 %i.aaq, ptr %i.aap, align 8, !tbaa !70
  br label %.thread629

bb.cz:                                            ; preds = %bb.a
  %i.aar = load i32, ptr %2, align 8, !tbaa !68
  %i.aas = icmp eq i32 %i.aar, 3
  %i.aat = load i32, ptr %3, align 8
  %i.aau = icmp eq i32 %i.aat, 3
  %or.cond621 = select i1 %i.aas, i1 %i.aau, i1 false
  br i1 %or.cond621, label %bb.da, label %.thread629

bb.da:                                            ; preds = %bb.cz
  store i32 2, ptr %0, align 8, !tbaa !68
  %i.aav = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !70
  %i.aax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !70
  %i.aaz = fcmp ogt double %i.aaw, %i.aay
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abb = zext i1 %i.aaz to i8
  store i8 %i.abb, ptr %i.aba, align 8, !tbaa !70
  br label %.thread629

bb.db:                                            ; preds = %bb.a
  %i.abc = load i32, ptr %2, align 8, !tbaa !68
  %i.abd = icmp eq i32 %i.abc, 3
  %i.abe = load i32, ptr %3, align 8
  %i.abf = icmp eq i32 %i.abe, 3
  %or.cond623 = select i1 %i.abd, i1 %i.abf, i1 false
  br i1 %or.cond623, label %bb.dc, label %.thread629

bb.dc:                                            ; preds = %bb.db
  store i32 2, ptr %0, align 8, !tbaa !68
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !70
  %i.abi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !70
  %i.abk = fcmp oge double %i.abh, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abm = zext i1 %i.abk to i8
  store i8 %i.abm, ptr %i.abl, align 8, !tbaa !70
  br label %.thread629

bb.dd:                                            ; preds = %bb.a
  %i.abn = load i32, ptr %2, align 8, !tbaa !68
  switch i32 %i.abn, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread [
    i32 0, label %.thread629
    i32 1, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636
    i32 2, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  ]

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit:    ; preds = %bb.dd
  %i.abo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abp = load i8, ptr %i.abo, align 8, !tbaa !70, !range !41, !noundef !42
  %.not646 = icmp eq i8 %i.abp, 0
  br i1 %.not646, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread: ; preds = %bb.dd, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  br label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636: ; preds = %bb.dd, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread
  %i.abq = phi ptr [ %3, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread ], [ %2, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit ], [ %2, %bb.dd ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.abq, i64 40, i1 false), !tbaa.struct !71
  br label %.thread629

bb.de:                                            ; preds = %bb.a
  %i.abr = load i32, ptr %2, align 8, !tbaa !68
  switch i32 %i.abr, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread [
    i32 0, label %.thread629
    i32 1, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637
    i32 2, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627
  ]

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627: ; preds = %bb.de
  %i.abs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abt = load i8, ptr %i.abs, align 8, !tbaa !70, !range !41, !noundef !42
  %.not = icmp eq i8 %i.abt, 0
  br i1 %.not, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread: ; preds = %bb.de, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627
  br label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637: ; preds = %bb.de, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread
  %i.abu = phi ptr [ %2, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread ], [ %3, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627 ], [ %3, %bb.de ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.abu, i64 40, i1 false), !tbaa.struct !71
  br label %.thread629

.thread629:                                       ; preds = %.rtvec681, %.rtscalar682, %.rtvec670, %.rtscalar671, %.rtvec659, %.rtscalar660, %.rtvec, %.rtscalar, %bb.de, %bb.dd, %bb.by, %bb.bc, %bb.ag, %bb.bv, %bb.az, %bb.ad, %bb.ca, %bb.bz, %bb.bx, %bb.bw, %bb.bt, %bb.bs, %bb.bo, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.ax, %bb.aw, %bb.as, %bb.ap, %bb.am, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.a, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636, %bb.db, %bb.dc, %bb.cz, %bb.da, %bb.cx, %bb.cy, %bb.cv, %bb.cw, %bb.ct, %bb.cu, %bb.cr, %bb.cs, %bb.cf, %bb.cg, %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ci, %bb.cd, %bb.ce, %bb.cb, %bb.cc, %bb.bg, %bb.ak, %bb.o, %bb.i, %bb.l, %bb.m, %bb.k, %bb.c, %bb.f, %bb.g, %bb.e
  ret void

.rtvec:                                           ; preds = %bb.an
  %i.abv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aby = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.abz = load float, ptr %i.aby, align 8, !tbaa !70
  %i.aca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acb = load float, ptr %i.aca, align 8, !tbaa !70
  %i.acc = load <4 x float>, ptr %i.abv, align 8
  %i.acd = load <4 x float>, ptr %i.abw, align 8
  %i.ace = insertelement <4 x float> %i.acc, float %i.abz, i64 2
  %i.acf = insertelement <4 x float> %i.acd, float %i.acb, i64 2
  %6 = fdiv <4 x float> %i.ace, %i.acf
  %i.acg = insertelement <4 x float> %6, float %i.lg, i64 3
  store <4 x float> %i.acg, ptr %i.abx, align 8, !tbaa !70
  br label %.thread629

.rtscalar:                                        ; preds = %bb.an
  %i.ach = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.acj = load float, ptr %i.ach, align 8, !tbaa !70
  %i.ack = load float, ptr %i.aci, align 8, !tbaa !70
  %i.acl = fdiv float %i.acj, %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.acl, ptr %i.acm, align 8, !tbaa !70
  %i.acn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !70
  %i.acp = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !70
  %i.acr = fdiv float %i.aco, %i.acq
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.acr, ptr %i.acs, align 4, !tbaa !70
  %i.act = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.acu = load float, ptr %i.act, align 8, !tbaa !70
  %i.acv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acw = load float, ptr %i.acv, align 8, !tbaa !70
  %i.acx = fdiv float %i.acu, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.acx, ptr %i.acy, align 8, !tbaa !70
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.lg, ptr %i.acz, align 4, !tbaa !70
  br label %.thread629

.rtvec659:                                        ; preds = %bb.aq
  %i.ada = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.adb = load double, ptr %i.lq, align 8, !tbaa !70 ; 3 uses
  %i.adc = fptrunc double %i.adb to float
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ade = fptrunc double %i.adb to float
  %i.adf = fptrunc double %i.adb to float
  %i.adg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.adh = load float, ptr %i.adg, align 8, !tbaa !70
  %i.adi = load <4 x float>, ptr %i.ada, align 8
  %i.adj = insertelement <4 x float> poison, float %i.adc, i64 0
  %i.adk = insertelement <4 x float> %i.adj, float %i.ade, i64 1
  %i.adl = insertelement <4 x float> %i.adk, float %i.adf, i64 2
  %i.adm = insertelement <4 x float> %i.adi, float %i.adh, i64 2
  %7 = fdiv <4 x float> %i.adl, %i.adm
  %8 = insertelement <4 x float> %7, float %i.lt, i64 3
  store <4 x float> %8, ptr %i.add, align 8, !tbaa !70
  br label %.thread629

.rtscalar660:                                     ; preds = %bb.aq
  %i.adn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.ado = load double, ptr %i.lq, align 8, !tbaa !70
  %i.adp = fptrunc double %i.ado to float
  %i.adq = load float, ptr %i.adn, align 8, !tbaa !70
  %i.adr = fdiv float %i.adp, %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.adr, ptr %i.ads, align 8, !tbaa !70
  %i.adt = load double, ptr %i.lq, align 8, !tbaa !70
  %i.adu = fptrunc double %i.adt to float
  %i.adv = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !70
  %i.adx = fdiv float %i.adu, %i.adw
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.adx, ptr %i.ady, align 4, !tbaa !70
  %i.adz = load double, ptr %i.lq, align 8, !tbaa !70
  %i.aea = fptrunc double %i.adz to float
  %i.aeb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aec = load float, ptr %i.aeb, align 8, !tbaa !70
  %i.aed = fdiv float %i.aea, %i.aec
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.aed, ptr %i.aee, align 8, !tbaa !70
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.lt, ptr %i.aef, align 4, !tbaa !70
  br label %.thread629

.rtvec670:                                        ; preds = %bb.at
  %i.aeg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.aeh = load double, ptr %i.md, align 8, !tbaa !70 ; 3 uses
  %i.aei = fptrunc double %i.aeh to float
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aek = fptrunc double %i.aeh to float
  %i.ael = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aem = load float, ptr %i.ael, align 8, !tbaa !70
  %i.aen = fptrunc double %i.aeh to float
  %i.aeo = load <4 x float>, ptr %i.aeg, align 8
  %i.aep = insertelement <4 x float> %i.aeo, float %i.aem, i64 2
  %i.aeq = insertelement <4 x float> poison, float %i.aei, i64 0
  %i.aer = insertelement <4 x float> %i.aeq, float %i.aek, i64 1
  %i.aes = insertelement <4 x float> %i.aer, float %i.aen, i64 2
  %9 = fdiv <4 x float> %i.aep, %i.aes
  %10 = insertelement <4 x float> %9, float %i.mg, i64 3
  store <4 x float> %10, ptr %i.aej, align 8, !tbaa !70
  br label %.thread629

.rtscalar671:                                     ; preds = %bb.at
  %i.aet = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.aeu = load float, ptr %i.aet, align 8, !tbaa !70
  %i.aev = load double, ptr %i.md, align 8, !tbaa !70
  %i.aew = fptrunc double %i.aev to float
  %i.aex = fdiv float %i.aeu, %i.aew
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.aex, ptr %i.aey, align 8, !tbaa !70
  %i.aez = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !70
  %i.afb = load double, ptr %i.md, align 8, !tbaa !70
  %i.afc = fptrunc double %i.afb to float
  %i.afd = fdiv float %i.afa, %i.afc
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.afd, ptr %i.afe, align 4, !tbaa !70
  %i.aff = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.afg = load float, ptr %i.aff, align 8, !tbaa !70
  %i.afh = load double, ptr %i.md, align 8, !tbaa !70
  %i.afi = fptrunc double %i.afh to float
  %i.afj = fdiv float %i.afg, %i.afi
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.afj, ptr %i.afk, align 8, !tbaa !70
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.mg, ptr %i.afl, align 4, !tbaa !70
  br label %.thread629

.rtvec681:                                        ; preds = %bb.bp
  %i.afm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.afn = load <1 x double>, ptr %i.so, align 8
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afp = load <4 x float>, ptr %i.afm, align 8, !tbaa !70
  %i.afq = shufflevector <1 x double> %i.afn, <1 x double> poison, <4 x i32> zeroinitializer
  %i.afr = fptrunc <4 x double> %i.afq to <4 x float>
  %i.afs = fdiv <4 x float> %i.afp, %i.afr
  %i.aft = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.afs)
  store <4 x float> %i.aft, ptr %i.afo, align 8, !tbaa !70
  br label %.thread629

.rtscalar682:                                     ; preds = %bb.bp
  %i.afu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.afv = load float, ptr %i.afu, align 8, !tbaa !70
  %i.afw = load double, ptr %i.so, align 8, !tbaa !70
  %i.afx = fptrunc double %i.afw to float
  %i.afy = fdiv float %i.afv, %i.afx
  %i.afz = tail call noundef float @llvm.floor.f32(float %i.afy)
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.afz, ptr %i.aga, align 8, !tbaa !70
  %i.agb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !70
  %i.agd = load double, ptr %i.so, align 8, !tbaa !70
  %i.age = fptrunc double %i.agd to float
  %i.agf = fdiv float %i.agc, %i.age
  %i.agg = tail call noundef float @llvm.floor.f32(float %i.agf)
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.agg, ptr %i.agh, align 4, !tbaa !70
  %i.agi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.agj = load float, ptr %i.agi, align 8, !tbaa !70
  %i.agk = load double, ptr %i.so, align 8, !tbaa !70
  %i.agl = fptrunc double %i.agk to float
  %i.agm = fdiv float %i.agj, %i.agl
  %i.agn = tail call noundef float @llvm.floor.f32(float %i.agm)
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.agn, ptr %i.ago, align 8, !tbaa !70
  %i.agp = load float, ptr %i.sl, align 4, !tbaa !70
  %i.agq = load double, ptr %i.so, align 8, !tbaa !70
  %i.agr = fptrunc double %i.agq to float
  %i.ags = fdiv float %i.agp, %i.agr
  %i.agt = tail call noundef float @llvm.floor.f32(float %i.ags)
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.agt, ptr %i.agu, align 4, !tbaa !70
  br label %.thread629
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CompileL16foldInterpStringERNS0_8ConstantEPNS_19AstExprInterpStringERNS_12DenseHashMapIPNS_7AstExprES1_NS_16DenseHashPointerESt8equal_toIS7_EEERNS_12AstNameTableE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !298  ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.thread, label %.lr.ph71

.thread:                                          ; preds = %bb.a
  store i32 7, ptr %0, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !156
  br label %bb.f

.lr.ph71:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !299
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !300
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1                         ; 3 uses
  %i.n = load ptr, ptr %2, align 8                ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.o = icmp ugt i64 %.144, 4096
  br i1 %i.o, label %bb.k, label %bb.e

bb.b:                                             ; preds = %.lr.ph71, %bb.d
  %.04370 = phi i64 [ 0, %.lr.ph71 ], [ %.144, %bb.d ]
  %.04569 = phi i64 [ 0, %.lr.ph71 ], [ %i.aq, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.04569
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !301
  %i.s = add i64 %i.r, %.04370                    ; 2 uses
  %i.t = icmp ult i64 %.04569, %i.g
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !302
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.04569
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 4 uses
  %i.x = icmp ne ptr %i.w, %i.j
  tail call void @llvm.assume(i1 %i.x)
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 31
  %i.ab = xor i64 %i.aa, %i.z
  %.01929.i.i66 = and i64 %i.ab, %i.m             ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.01929.i.i66
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = icmp eq ptr %i.ad, %i.w
  br i1 %i.ae, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01929.i.i68 = phi i64 [ %.01929.i.i, %.lr.ph ], [ %.01929.i.i66, %bb.c ]
  %.01828.i.i67 = phi i64 [ %i.af, %.lr.ph ], [ 0, %bb.c ]
  %i.af = add i64 %.01828.i.i67, 1                ; 3 uses
  %i.ag = add i64 %i.af, %.01929.i.i68
  %.not.i.i = icmp ule i64 %i.af, %i.m
  tail call void @llvm.assume(i1 %.not.i.i)
  %.01929.i.i = and i64 %i.ag, %i.m               ; 3 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.01929.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %.lr.ph

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit: ; preds = %.lr.ph, %bb.c
  %i.ak = phi i64 [ %.01929.i.i66, %bb.c ], [ %.01929.i.i, %.lr.ph ]
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !156
  %i.ao = zext i32 %i.an to i64
  %i.ap = add i64 %i.s, %i.ao
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit
  %.144 = phi i64 [ %i.ap, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit ], [ %i.s, %bb.b ] ; 6 uses
  %i.aq = add nuw i64 %.04569, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !293

bb.e:                                             ; preds = %._crit_edge
  store i32 7, ptr %0, align 8, !tbaa !68
  %i.ar = trunc nuw nsw i64 %.144 to i32          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !156
  %i.at = icmp eq i64 %.144, 0
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.70, ptr %i.au, align 8, !tbaa !70
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !167
  store i8 0, ptr %i.av, align 8, !tbaa !70
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.144)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.g
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !298
  %.not84 = icmp eq i64 %i.ax, 0
  br i1 %.not84, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.h

end_hunk_0
