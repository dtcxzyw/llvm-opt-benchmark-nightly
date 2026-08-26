Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/UfarMgr?download=true
inline.NumInlined: 7368
inline.NumDeleted: 2730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4UFAR16CexUifPairFinder17FindUifPairsBasicERKSt6vectorIS1_IcSaIcEESaIS3_EEjRSt3setINS_7UifPairESt4lessIS9_ESaIS9_EE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.yt = load ptr, ptr %i.x, align 8, !tbaa !368 ; 3 uses
  %i.yu = getelementptr inbounds i8, ptr %i.yt, i64 -24 ; 2 uses
  %i.yv = getelementptr inbounds i8, ptr %i.yt, i64 -16 ; 4 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !335 ; 10 uses
  %i.yx = getelementptr inbounds i8, ptr %i.yt, i64 -8 ; 3 uses
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !337
  %.not.i181 = icmp eq ptr %i.yw, %i.yy
  br i1 %.not.i181, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 16 ; 3 uses
  store ptr %i.yz, ptr %i.yw, align 8, !tbaa !70
  %i.za = load ptr, ptr %i.xr, align 8, !tbaa !44 ; 2 uses
  %i.zb = load i64, ptr %i.yk, align 8, !tbaa !48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 %i.zb, ptr %i.c, align 8, !tbaa !71
  %i.zc = icmp ugt i64 %i.zb, 15
  br i1 %i.zc, label %bb.ay, label %._crit_edge.i.i.i182

bb.ay:                                            ; preds = %bb.ax
  %i.zd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.yw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #37 ; 2 uses
  store ptr %i.zd, ptr %i.yw, align 8, !tbaa !44
  %i.ze = load i64, ptr %i.c, align 8, !tbaa !71
  store i64 %i.ze, ptr %i.yz, align 8, !tbaa !58
  br label %._crit_edge.i.i.i182

._crit_edge.i.i.i182:                             ; preds = %bb.ay, %bb.ax
  %i.zf = phi ptr [ %i.zd, %bb.ay ], [ %i.yz, %bb.ax ] ; 2 uses
  switch i64 %i.zb, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i183
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i182
  %i.zg = load i8, ptr %i.za, align 1, !tbaa !58
  store i8 %i.zg, ptr %i.zf, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i183

bb.ba:                                            ; preds = %._crit_edge.i.i.i182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zf, ptr align 1 %i.za, i64 %i.zb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i183: ; preds = %bb.ba, %bb.az, %._crit_edge.i.i.i182
  %i.zh = load i64, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store i64 %i.zh, ptr %i.zi, align 8, !tbaa !48
  %i.zj = load ptr, ptr %i.yw, align 8, !tbaa !44
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zh
  store i8 0, ptr %i.zk, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.zl = load ptr, ptr %i.yv, align 8, !tbaa !335
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 32
  store ptr %i.zm, ptr %i.yv, align 8, !tbaa !335
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit184

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.zn = load ptr, ptr %i.yu, align 8, !tbaa !332 ; 5 uses
  %i.zo = ptrtoint ptr %i.yw to i64
  %i.zp = ptrtoint ptr %i.zn to i64               ; 2 uses
  %i.zq = sub i64 %i.zo, %i.zp                    ; 3 uses
  %i.zr = icmp eq i64 %i.zq, 9223372036854775776
  br i1 %i.zr, label %bb.bc, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i283

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #39
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i283: ; preds = %bb.bb
  %i.zs = ashr exact i64 %i.zq, 5                 ; 3 uses
  %.sroa.speculated.i.i284 = call i64 @llvm.umax.i64(i64 %i.zs, i64 1)
  %i.zt = add nsw i64 %.sroa.speculated.i.i284, %i.zs ; 2 uses
  %i.zu = icmp ult i64 %i.zt, %i.zs
  %i.zv = call i64 @llvm.umin.i64(i64 %i.zt, i64 288230376151711743)
  %i.zw = select i1 %i.zu, i64 288230376151711743, i64 %i.zv ; 3 uses
  %.not.i.i285 = icmp ne i64 %i.zw, 0
  call void @llvm.assume(i1 %.not.i.i285)
  %i.zx = shl nuw nsw i64 %i.zw, 5
  %i.zy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zx) #43 ; 5 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zq ; 6 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16 ; 3 uses
  store ptr %i.aaa, ptr %i.zz, align 8, !tbaa !70
  %i.aab = load ptr, ptr %i.xr, align 8, !tbaa !44 ; 2 uses
  %i.aac = load i64, ptr %i.yk, align 8, !tbaa !48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.aac, ptr %i.a, align 8, !tbaa !71
  %i.aad = icmp ugt i64 %i.aac, 15
  br i1 %i.aad, label %bb.bd, label %._crit_edge.i.i.i286

bb.bd:                                            ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i283
  %i.aae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.zz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #37 ; 2 uses
  store ptr %i.aae, ptr %i.zz, align 8, !tbaa !44
  %i.aaf = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.aaf, ptr %i.aaa, align 8, !tbaa !58
  br label %._crit_edge.i.i.i286

._crit_edge.i.i.i286:                             ; preds = %bb.bd, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i283
  %i.aag = phi ptr [ %i.aae, %bb.bd ], [ %i.aaa, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i283 ] ; 2 uses
  switch i64 %i.aac, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i286
  %i.aah = load i8, ptr %i.aab, align 1, !tbaa !58
  store i8 %i.aah, ptr %i.aag, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287

bb.bf:                                            ; preds = %._crit_edge.i.i.i286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aag, ptr align 1 %i.aab, i64 %i.aac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287: ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i286
  %i.aai = load i64, ptr %i.a, align 8, !tbaa !71 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  store i64 %i.aai, ptr %i.aaj, align 8, !tbaa !48
  %i.aak = load ptr, ptr %i.zz, align 8, !tbaa !44
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.aai
  store i8 0, ptr %i.aal, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not10.i.i.i.i288 = icmp eq ptr %i.zn, %i.yw
  br i1 %.not10.i.i.i.i288, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i308, label %.lr.ph.i.i.i.i289

.lr.ph.i.i.i.i289:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i295
  %.012.i.i.i.i290 = phi ptr [ %i.aaz, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i295 ], [ %i.zy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287 ] ; 5 uses
  %.0911.i.i.i.i291 = phi ptr [ %i.aay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i295 ], [ %i.zn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.aam = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i290, i64 16 ; 3 uses
  store ptr %i.aam, ptr %.012.i.i.i.i290, align 8, !tbaa !70, !alias.scope !400, !noalias !403
  %i.aan = load ptr, ptr %.0911.i.i.i.i291, align 8, !tbaa !44, !alias.scope !403, !noalias !400 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i291, i64 16 ; 5 uses
  %i.aap = icmp eq ptr %i.aan, %i.aao
  br i1 %i.aap, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i292

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i289
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i291, i64 8
  %i.aar = load i64, ptr %i.aaq, align 8, !tbaa !48, !alias.scope !403, !noalias !400 ; 3 uses
  %i.aas = icmp ult i64 %i.aar, 16
  call void @llvm.assume(i1 %i.aas)
  %i.aat = add nuw nsw i64 %i.aar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aam, ptr noundef nonnull align 8 dereferenceable(1) %i.aao, i64 %i.aat, i1 false), !alias.scope !405
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i292: ; preds = %.lr.ph.i.i.i.i289
  store ptr %i.aan, ptr %.012.i.i.i.i290, align 8, !tbaa !44, !alias.scope !400, !noalias !403
  %i.aau = load i64, ptr %i.aao, align 8, !tbaa !58, !alias.scope !403, !noalias !400
  store i64 %i.aau, ptr %i.aam, align 8, !tbaa !58, !alias.scope !400, !noalias !403
  %.phi.trans.insert.i.i.i.i.i293 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i291, i64 8
  %.pre.i.i.i.i.i294 = load i64, ptr %.phi.trans.insert.i.i.i.i.i293, align 8, !tbaa !48, !alias.scope !403, !noalias !400
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i295

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i295: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i292, %bb.bg
  %i.aav = phi i64 [ %i.aar, %bb.bg ], [ %.pre.i.i.i.i.i294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i292 ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i291, i64 8
  %i.aax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i290, i64 8
  store i64 %i.aav, ptr %i.aax, align 8, !tbaa !48, !alias.scope !400, !noalias !403
  store ptr %i.aao, ptr %.0911.i.i.i.i291, align 8, !tbaa !44, !alias.scope !403, !noalias !400
  store i64 0, ptr %i.aaw, align 8, !tbaa !48, !alias.scope !403, !noalias !400
  store i8 0, ptr %i.aao, align 8, !tbaa !58, !alias.scope !403, !noalias !400
  %i.aay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i291, i64 32 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i290, i64 32 ; 2 uses
  %.not.i.i.i.i296 = icmp eq ptr %i.aay, %i.yw
  br i1 %.not.i.i.i.i296, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i308, label %.lr.ph.i.i.i.i289, !llvm.loop !375

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i308: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287
  %.0.lcssa.i.i.i.i298 = phi ptr [ %i.zy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i287 ], [ %i.aaz, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i295 ]
  %i.aba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i298, i64 32
  %.not.i27.i310 = icmp eq ptr %i.zn, null
  br i1 %.not.i27.i310, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit311, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i308
  %i.abb = load ptr, ptr %i.yx, align 8, !tbaa !337
  %i.abc = ptrtoint ptr %i.abb to i64
  %i.abd = sub i64 %i.abc, %i.zp
  call void @_ZdlPvm(ptr noundef nonnull %i.zn, i64 noundef %i.abd) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit311

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit311: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i308, %bb.bh
  store ptr %i.zy, ptr %i.yu, align 8, !tbaa !332
  store ptr %i.aba, ptr %i.yv, align 8, !tbaa !335
  %i.abe = getelementptr inbounds nuw [32 x i8], ptr %i.zy, i64 %i.zw
  store ptr %i.abe, ptr %i.yx, align 8, !tbaa !337
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit184

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i183, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit311
  br i1 %or.cond460, label %._crit_edge464.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit184
  %.pre490.pre = load ptr, ptr %i.v, align 8, !tbaa !330
  br label %.preheader.lr.ph

._crit_edge464.split:                             ; preds = %..critedge_crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit184
  %i.abf = load i32, ptr @_ZN4LogT8loglevelE, align 4, !tbaa !8
  %i.abg = icmp ult i32 %i.abf, 4
  br i1 %i.abg, label %.lr.ph.i.i.i197.preheader, label %bb.cr

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %..critedge_crit_edge
  %.pre490 = phi ptr [ %.pre490.pre, %.preheader.lr.ph.preheader ], [ %.pre490492, %..critedge_crit_edge ] ; 2 uses
  %18 = phi i1 [ false, %.preheader.lr.ph.preheader ], [ true, %..critedge_crit_edge ] ; 7 uses
  %indvars.iv486 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ 1, %..critedge_crit_edge ]
  %i.abh = getelementptr inbounds nuw [32 x i8], ptr %i.xr, i64 %indvars.iv486 ; 2 uses
  %i.abi = getelementptr i8, ptr %i.abh, i64 8
  %19 = zext i1 %18 to i8
  %.not448 = xor i1 %18, true
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.pre490493 = phi ptr [ %.pre490, %.preheader.lr.ph ], [ %.pre490492, %._crit_edge ]
  %i.abj = phi ptr [ %.pre490, %.preheader.lr.ph ], [ %i.abq, %._crit_edge ] ; 2 uses
  %indvars.iv484 = phi i64 [ %i.dn, %.preheader.lr.ph ], [ %indvars.iv.next485, %._crit_edge ] ; 6 uses
  %i.abk = getelementptr inbounds nuw [24 x i8], ptr %i.abj, i64 %indvars.iv484 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !335
  %i.abn = load ptr, ptr %i.abk, align 8, !tbaa !332 ; 2 uses
  %.not476 = icmp eq ptr %i.abm, %i.abn
  %.pre496 = trunc nuw i64 %indvars.iv484 to i32  ; 2 uses
  br i1 %.not476, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.abo = sub nsw i32 %.pre496, %storemerge469   ; 28 uses
  %.sroa.4363.0.insert.ext = zext i32 %i.abo to i64
  %.sroa.4363.0.insert.shift = shl nuw i64 %.sroa.4363.0.insert.ext, 32
  %i.abp = icmp ult i64 %indvars.iv484, %i.dn
  br label %bb.bi

..critedge_crit_edge:                             ; preds = %._crit_edge
  br i1 %18, label %._crit_edge464.split, label %.preheader.lr.ph, !llvm.loop !406

._crit_edge:                                      ; preds = %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193, %.preheader
  %.pre490492 = phi ptr [ %.pre490493, %.preheader ], [ %i.akv, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193 ] ; 2 uses
  %i.abq = phi ptr [ %i.abj, %.preheader ], [ %i.akv, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193 ]
  %indvars.iv.next485 = add nsw i64 %indvars.iv484, -1
  %or.cond.not = icmp slt i32 %invariant.smax, %.pre496
  br i1 %or.cond.not, label %.preheader, label %..critedge_crit_edge, !llvm.loop !407

bb.bi:                                            ; preds = %.lr.ph, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193 ] ; 21 uses
  %i.abr = phi ptr [ %i.abn, %.lr.ph ], [ %i.akz, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193 ]
  %i.abs = getelementptr inbounds nuw [32 x i8], ptr %i.abr, i64 %indvars.iv ; 2 uses
  %.val69 = load ptr, ptr %i.abh, align 8
  %.val70 = load i64, ptr %i.abi, align 8, !tbaa !48 ; 3 uses
  %.val71 = load ptr, ptr %i.abs, align 8         ; 4 uses
  %i.abt = getelementptr i8, ptr %i.abs, i64 8
  %.val72 = load i64, ptr %i.abt, align 8, !tbaa !48
  %.not.i185 = icmp eq i64 %.val70, %.val72
  br i1 %.not.i185, label %.preheader.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193

.preheader.i:                                     ; preds = %bb.bi
  %.not20.i = icmp eq i64 %.val70, 0
  br i1 %.not20.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.thread7.i
  %i.abu = phi i64 [ %i.ack, %.thread7.i ], [ 0, %.preheader.i ] ; 5 uses
  %.02211.i = phi i32 [ %i.acj, %.thread7.i ], [ 0, %.preheader.i ]
  %i.abv = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !58
  switch i8 %i.abw, label %.thread7.i [
    i8 49, label %bb.bj
    i8 48, label %bb.bk
    i8 117, label %bb.bl
    i8 115, label %bb.bm
  ]

bb.bj:                                            ; preds = %.lr.ph.i
  %i.abx = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.abu
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !58
  %i.abz = icmp eq i8 %i.aby, 48
  br i1 %i.abz, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193, label %.thread7.i

bb.bk:                                            ; preds = %.lr.ph.i
  %i.aca = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.abu
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !58
  %i.acc = icmp eq i8 %i.acb, 49
  br i1 %i.acc, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193, label %.thread7.i

bb.bl:                                            ; preds = %.lr.ph.i
  %i.acd = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.abu
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !58
  %i.acf = icmp eq i8 %i.ace, 115
  br i1 %i.acf, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193, label %.thread7.i

bb.bm:                                            ; preds = %.lr.ph.i
  %i.acg = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.abu
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !58
  %i.aci = icmp eq i8 %i.ach, 117
  br i1 %i.aci, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193, label %.thread7.i

.thread7.i:                                       ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %.lr.ph.i
  %i.acj = add i32 %.02211.i, 1                   ; 2 uses
  %i.ack = zext i32 %i.acj to i64                 ; 2 uses
  %i.acl = icmp ugt i64 %.val70, %i.ack
  br i1 %i.acl, label %.lr.ph.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit, !llvm.loop !408

_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %.thread7.i, %.preheader.i
  %i.acm = load ptr, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.acn = getelementptr inbounds nuw [24 x i8], ptr %i.acm, i64 %i.dm
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !332
  %i.acp = getelementptr inbounds nuw [32 x i8], ptr %i.aco, i64 %i.fh ; 2 uses
  %i.acq = getelementptr inbounds nuw [24 x i8], ptr %i.acm, i64 %indvars.iv484
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !332
  %i.acs = getelementptr inbounds nuw [32 x i8], ptr %i.acr, i64 %indvars.iv ; 2 uses
  %.val65 = load ptr, ptr %i.acp, align 8
  %i.act = getelementptr i8, ptr %i.acp, i64 8
  %.val66 = load i64, ptr %i.act, align 8, !tbaa !48 ; 3 uses
  %.val67 = load ptr, ptr %i.acs, align 8         ; 4 uses
  %i.acu = getelementptr i8, ptr %i.acs, i64 8
  %.val68 = load i64, ptr %i.acu, align 8, !tbaa !48
  %.not.i186 = icmp eq i64 %.val66, %.val68
  br i1 %.not.i186, label %.preheader.i188, label %.loopexit

.preheader.i188:                                  ; preds = %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %.not20.i189 = icmp eq i64 %.val66, 0
  br i1 %.not20.i189, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.preheader.i188, %.thread7.i192
  %i.acv = phi i64 [ %i.adl, %.thread7.i192 ], [ 0, %.preheader.i188 ] ; 5 uses
  %.02211.i191 = phi i32 [ %i.adk, %.thread7.i192 ], [ 0, %.preheader.i188 ]
  %i.acw = getelementptr inbounds nuw i8, ptr %.val65, i64 %i.acv
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !58
  switch i8 %i.acx, label %.thread7.i192 [
    i8 49, label %bb.bn
    i8 48, label %bb.bo
    i8 117, label %bb.bp
    i8 115, label %bb.bq
  ]

bb.bn:                                            ; preds = %.lr.ph.i190
  %i.acy = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.acv
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !58
  %i.ada = icmp eq i8 %i.acz, 48
  br i1 %i.ada, label %.loopexit, label %.thread7.i192

bb.bo:                                            ; preds = %.lr.ph.i190
  %i.adb = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.acv
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !58
  %i.add = icmp eq i8 %i.adc, 49
  br i1 %i.add, label %.loopexit, label %.thread7.i192

bb.bp:                                            ; preds = %.lr.ph.i190
  %i.ade = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.acv
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !58
  %i.adg = icmp eq i8 %i.adf, 115
  br i1 %i.adg, label %.loopexit, label %.thread7.i192

bb.bq:                                            ; preds = %.lr.ph.i190
  %i.adh = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.acv
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !58
  %i.adj = icmp eq i8 %i.adi, 117
  br i1 %i.adj, label %.loopexit, label %.thread7.i192

.thread7.i192:                                    ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %.lr.ph.i190
  %i.adk = add i32 %.02211.i191, 1                ; 2 uses
  %i.adl = zext i32 %i.adk to i64                 ; 2 uses
  %i.adm = icmp ugt i64 %.val66, %i.adl
  br i1 %i.adm, label %.lr.ph.i190, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193, !llvm.loop !408

.loopexit:                                        ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bq, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %.sroa.0362.0.insert.insert = or disjoint i64 %indvars.iv, %.sroa.4363.0.insert.shift ; 2 uses
  %i.adn = load ptr, ptr %i.cp, align 8, !tbaa !216 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !153 ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adn, i64 8 ; 3 uses
  %.not12.i = icmp eq ptr %i.adp, null
  br i1 %.not12.i, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread, label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %.loopexit
  br i1 %18, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i312, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i
  %.014.us.i = phi ptr [ %.1.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i ], [ %i.adp, %.lr.ph.i312 ] ; 9 uses
  %.0813.us.i = phi ptr [ %.19.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i ], [ %i.adq, %.lr.ph.i312 ]
  %i.adr = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 32
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !11 ; 2 uses
  %i.adt = zext i32 %i.ads to i64
  %.not.i.i.i.us.i = icmp ne i64 %indvars.iv, %i.adt
  %i.adu = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 36
  %i.adv = load i32, ptr %i.adu, align 4          ; 3 uses
  %i.adw = icmp ne i32 %i.adv, %i.abo
  %i.adx = select i1 %.not.i.i.i.us.i, i1 true, i1 %i.adw
  br i1 %i.adx, label %.split.us.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph.split.us.i
  %i.ady = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 40
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.us.i = icmp ne i32 %i.adz, %storemerge46466
  %i.aea = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 44
  %i.aeb = load i32, ptr %i.aea, align 4          ; 3 uses
  %i.aec = icmp ne i32 %i.aeb, 0
  %i.aed = select i1 %.not.i8.i.i.us.i, i1 true, i1 %i.aec
  br i1 %i.aed, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.aee = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 48
  %i.aef = load i8, ptr %i.aee, align 4, !tbaa !14, !range !17, !noundef !18
  %i.aeg = trunc nuw i8 %i.aef to i1
  br i1 %i.aeg, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i, label %.split11.us.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i: ; preds = %bb.br
  %.not.i9.i.i.us.i = icmp eq i32 %i.aeb, 0
  %i.aeh = icmp slt i32 %i.aeb, 0
  %i.aei = icmp slt i32 %i.adz, %storemerge46466
  %.0.i10.i.i.us.i = select i1 %.not.i9.i.i.us.i, i1 %i.aei, i1 %i.aeh
  br i1 %.0.i10.i.i.us.i, label %.split11.us.i, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %.not.i7.i.i.us.i = icmp eq i32 %i.adv, %i.abo
  %i.aej = icmp slt i32 %i.adv, %i.abo
  %i.aek = sext i32 %i.ads to i64
  %i.ael = icmp sgt i64 %indvars.iv, %i.aek
  %.0.i.i.i.us.i = select i1 %.not.i7.i.i.us.i, i1 %i.ael, i1 %i.aej
  br i1 %.0.i.i.i.us.i, label %.split11.us.i, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

.split11.us.i:                                    ; preds = %.split.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, %bb.bs
  br label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i: ; preds = %.split11.us.i, %.split.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, %bb.bs
  %.sink.i = phi i64 [ 24, %.split11.us.i ], [ 16, %.split.us.i ], [ 16, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i ], [ 16, %bb.bs ]
  %.19.us.i = phi ptr [ %.0813.us.i, %.split11.us.i ], [ %.014.us.i, %.split.us.i ], [ %.014.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i ], [ %.014.us.i, %bb.bs ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 %.sink.i
  %.1.us.i = load ptr, ptr %i.aem, align 8, !tbaa !158 ; 2 uses
  %.not.us.i = icmp eq ptr %.1.us.i, null
  br i1 %.not.us.i, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit, label %.lr.ph.split.us.i, !llvm.loop !409

.lr.ph.split.i:                                   ; preds = %.lr.ph.i312, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i
  %.014.i = phi ptr [ %.1.i314, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i ], [ %i.adp, %.lr.ph.i312 ] ; 8 uses
  %.0813.i = phi ptr [ %.19.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i ], [ %i.adq, %.lr.ph.i312 ]
  %i.aen = getelementptr inbounds nuw i8, ptr %.014.i, i64 32
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !11 ; 2 uses
  %i.aep = zext i32 %i.aeo to i64
  %.not.i.i.i.i313 = icmp ne i64 %indvars.iv, %i.aep
  %i.aeq = getelementptr inbounds nuw i8, ptr %.014.i, i64 36
  %i.aer = load i32, ptr %i.aeq, align 4          ; 3 uses
  %i.aes = icmp ne i32 %i.aer, %i.abo
  %i.aet = select i1 %.not.i.i.i.i313, i1 true, i1 %i.aes
  br i1 %i.aet, label %.split.i, label %bb.bt

.split.i:                                         ; preds = %.lr.ph.split.i
  %.not.i7.i.i.i = icmp eq i32 %i.aer, %i.abo
  %i.aeu = icmp slt i32 %i.aer, %i.abo
  %i.aev = sext i32 %i.aeo to i64
  %i.aew = icmp sgt i64 %indvars.iv, %i.aev
  %.0.i.i.i.i = select i1 %.not.i7.i.i.i, i1 %i.aew, i1 %i.aeu
  br i1 %.0.i.i.i.i, label %bb.bu, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i

bb.bt:                                            ; preds = %.lr.ph.split.i
  %i.aex = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.i = icmp ne i32 %i.aey, %storemerge46466
  %i.aez = getelementptr inbounds nuw i8, ptr %.014.i, i64 44
  %i.afa = load i32, ptr %i.aez, align 4          ; 3 uses
  %i.afb = icmp ne i32 %i.afa, 0
  %i.afc = select i1 %.not.i8.i.i.i, i1 true, i1 %i.afb
  br i1 %i.afc, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i:   ; preds = %bb.bt
  %.not.i9.i.i.i = icmp eq i32 %i.afa, 0
  %i.afd = icmp slt i32 %i.afa, 0
  %i.afe = icmp slt i32 %i.aey, %storemerge46466
  %.0.i10.i.i.i = select i1 %.not.i9.i.i.i, i1 %i.afe, i1 %i.afd
  br i1 %.0.i10.i.i.i, label %bb.bu, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i

bb.bu:                                            ; preds = %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i, %.split.i
  br label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i: ; preds = %bb.bu, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i, %bb.bt, %.split.i
  %.sink18.i = phi i64 [ 24, %bb.bu ], [ 16, %bb.bt ], [ 16, %.split.i ], [ 16, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i ]
  %.19.i = phi ptr [ %.0813.i, %bb.bu ], [ %.014.i, %bb.bt ], [ %.014.i, %.split.i ], [ %.014.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i ] ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.014.i, i64 %.sink18.i
  %.1.i314 = load ptr, ptr %i.aff, align 8, !tbaa !158 ; 2 uses
  %.not.i315 = icmp eq ptr %.1.i314, null
  br i1 %.not.i315, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit, label %.lr.ph.split.i, !llvm.loop !409

_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit: ; preds = %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i
  %.08.lcssa.i = phi ptr [ %.19.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i ], [ %.19.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i ] ; 6 uses
  %i.afg = icmp eq ptr %.08.lcssa.i, %i.adq
  br i1 %i.afg, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit
  %i.afh = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 32
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !11 ; 2 uses
  %i.afj = zext i32 %i.afi to i64
  %.not.i.i.i.i.i = icmp ne i64 %indvars.iv, %i.afj
  %i.afk = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 36
  %i.afl = load i32, ptr %i.afk, align 4          ; 3 uses
  %i.afm = icmp ne i32 %i.abo, %i.afl
  %i.afn = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.afm
  br i1 %i.afn, label %.split.i.i, label %bb.bw

.split.i.i:                                       ; preds = %bb.bv
  %.not.i7.i.i.i.i = icmp eq i32 %i.abo, %i.afl
  %i.afo = icmp slt i32 %i.abo, %i.afl
  %i.afp = sext i32 %i.afi to i64
  %i.afq = icmp slt i64 %indvars.iv, %i.afp
  %.0.i.i.i.i.i = select i1 %.not.i7.i.i.i.i, i1 %i.afq, i1 %i.afo
  br i1 %.0.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

bb.bw:                                            ; preds = %bb.bv
  %i.afr = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 40
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.i.i = icmp ne i32 %storemerge46466, %i.afs
  %i.aft = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 44
  %i.afu = load i32, ptr %i.aft, align 4          ; 3 uses
  %i.afv = icmp ne i32 %i.afu, 0
  %i.afw = select i1 %.not.i8.i.i.i.i, i1 true, i1 %i.afv
  br i1 %i.afw, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %18, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit, label %.split6.i.i

.split6.i.i:                                      ; preds = %bb.bx
  %i.afx = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 48
  %i.afy = load i8, ptr %i.afx, align 4, !tbaa !14, !range !17, !noundef !18
  %i.afz = trunc nuw i8 %i.afy to i1
  br i1 %i.afz, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i: ; preds = %bb.bw
  %.not.i9.i.i.i.i = icmp eq i32 %i.afu, 0
  %i.aga = icmp sgt i32 %i.afu, 0
  %i.agb = icmp slt i32 %storemerge46466, %i.afs
  %.0.i10.i.i.i.i = select i1 %.not.i9.i.i.i.i, i1 %i.agb, i1 %i.aga
  br i1 %.0.i10.i.i.i.i, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread: ; preds = %.loopexit, %.split.i.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit
  %.02837.i = load ptr, ptr %i.cq, align 8, !tbaa !158 ; 3 uses
  %.not38.i = icmp eq ptr %.02837.i, null
  br i1 %.not38.i, label %._crit_edge.thread.i, label %.lr.ph.i332

_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread: ; preds = %.split6.i.i
  %.02837.i609 = load ptr, ptr %i.cq, align 8, !tbaa !158 ; 2 uses
  %.not38.i610 = icmp eq ptr %.02837.i609, null
  br i1 %.not38.i610, label %._crit_edge.thread.i, label %.lr.ph.split.i333.preheader

.lr.ph.i332:                                      ; preds = %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread
  br i1 %18, label %.lr.ph.split.us.i346, label %.lr.ph.split.i333.preheader

.lr.ph.split.i333.preheader:                      ; preds = %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread, %.lr.ph.i332
  %.02839.i.ph = phi ptr [ %.02837.i609, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread ], [ %.02837.i, %.lr.ph.i332 ]
  br label %.lr.ph.split.i333

.lr.ph.split.us.i346:                             ; preds = %.lr.ph.i332, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349
  %.02839.us.i = phi ptr [ %.028.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349 ], [ %.02837.i, %.lr.ph.i332 ] ; 6 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 32
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !11 ; 2 uses
  %i.age = zext i32 %i.agd to i64
  %.not.i.i.i.us.i347 = icmp ne i64 %indvars.iv, %i.age
  %i.agf = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 36
  %i.agg = load i32, ptr %i.agf, align 4          ; 3 uses
  %i.agh = icmp ne i32 %i.abo, %i.agg
  %i.agi = select i1 %.not.i.i.i.us.i347, i1 true, i1 %i.agh
  br i1 %i.agi, label %.split.us.i355, label %bb.by

bb.by:                                            ; preds = %.lr.ph.split.us.i346
  %i.agj = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 40
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.us.i348 = icmp ne i32 %storemerge46466, %i.agk
  %i.agl = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 44
  %i.agm = load i32, ptr %i.agl, align 4          ; 3 uses
  %i.agn = icmp ne i32 %i.agm, 0
  %i.ago = select i1 %.not.i8.i.i.us.i348, i1 true, i1 %i.agn
  br i1 %i.ago, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i352, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i352: ; preds = %bb.by
  %.not.i9.i.i.us.i353 = icmp eq i32 %i.agm, 0
  %i.agp = icmp sgt i32 %i.agm, 0
  %i.agq = icmp slt i32 %storemerge46466, %i.agk
  %.0.i10.i.i.us.i354 = select i1 %.not.i9.i.i.us.i353, i1 %i.agq, i1 %i.agp
  br i1 %.0.i10.i.i.us.i354, label %bb.bz, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349

.split.us.i355:                                   ; preds = %.lr.ph.split.us.i346
  %.not.i7.i.i.us.i356 = icmp eq i32 %i.abo, %i.agg
  %i.agr = icmp slt i32 %i.abo, %i.agg
  %i.ags = sext i32 %i.agd to i64
  %i.agt = icmp slt i64 %indvars.iv, %i.ags
  %.0.i.i.i.us.i357 = select i1 %.not.i7.i.i.us.i356, i1 %i.agt, i1 %i.agr
  br i1 %.0.i.i.i.us.i357, label %bb.bz, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349

bb.bz:                                            ; preds = %.split.us.i355, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i352
  br label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349: ; preds = %bb.bz, %.split.us.i355, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i352, %bb.by
  %.sink.i350 = phi i64 [ 16, %bb.bz ], [ 24, %bb.by ], [ 24, %.split.us.i355 ], [ 24, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i352 ]
  %.0.i.i30.us.i = phi i1 [ true, %bb.bz ], [ false, %bb.by ], [ false, %.split.us.i355 ], [ false, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i352 ]
  %i.agu = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 %.sink.i350
  %.028.us.i = load ptr, ptr %i.agu, align 8, !tbaa !158 ; 2 uses
  %.not.us.i351 = icmp eq ptr %.028.us.i, null
  br i1 %.not.us.i351, label %._crit_edge.i, label %.lr.ph.split.us.i346, !llvm.loop !159

.lr.ph.split.i333:                                ; preds = %.lr.ph.split.i333.preheader, %bb.cb
  %.02839.i = phi ptr [ %.028.i, %bb.cb ], [ %.02839.i.ph, %.lr.ph.split.i333.preheader ] ; 7 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.02839.i, i64 32
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !11 ; 2 uses
  %i.agx = zext i32 %i.agw to i64
  %.not.i.i.i.i334 = icmp ne i64 %indvars.iv, %i.agx
  %i.agy = getelementptr inbounds nuw i8, ptr %.02839.i, i64 36
  %i.agz = load i32, ptr %i.agy, align 4          ; 3 uses
  %i.aha = icmp ne i32 %i.abo, %i.agz
  %i.ahb = select i1 %.not.i.i.i.i334, i1 true, i1 %i.aha
  br i1 %i.ahb, label %.split.i343, label %bb.ca

.split.i343:                                      ; preds = %.lr.ph.split.i333
  %.not.i7.i.i.i344 = icmp eq i32 %i.abo, %i.agz
  %i.ahc = icmp slt i32 %i.abo, %i.agz
  %i.ahd = sext i32 %i.agw to i64
  %i.ahe = icmp slt i64 %indvars.iv, %i.ahd
  %.0.i.i.i.i345 = select i1 %.not.i7.i.i.i344, i1 %i.ahe, i1 %i.ahc
  br i1 %.0.i.i.i.i345, label %bb.cb, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i336

bb.ca:                                            ; preds = %.lr.ph.split.i333
  %i.ahf = getelementptr inbounds nuw i8, ptr %.02839.i, i64 40
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.i335 = icmp ne i32 %storemerge46466, %i.ahg
  %i.ahh = getelementptr inbounds nuw i8, ptr %.02839.i, i64 44
  %i.ahi = load i32, ptr %i.ahh, align 4          ; 3 uses
  %i.ahj = icmp ne i32 %i.ahi, 0
  %i.ahk = select i1 %.not.i8.i.i.i335, i1 true, i1 %i.ahj
  br i1 %i.ahk, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i340, label %.split33.i

.split33.i:                                       ; preds = %bb.ca
  %i.ahl = getelementptr inbounds nuw i8, ptr %.02839.i, i64 48
  %i.ahm = load i8, ptr %i.ahl, align 4, !tbaa !14, !range !17, !noundef !18
  %i.ahn = trunc nuw i8 %i.ahm to i1
  br i1 %i.ahn, label %bb.cb, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i336

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i340: ; preds = %bb.ca
  %.not.i9.i.i.i341 = icmp eq i32 %i.ahi, 0
  %i.aho = icmp sgt i32 %i.ahi, 0
  %i.ahp = icmp slt i32 %storemerge46466, %i.ahg
  %.0.i10.i.i.i342 = select i1 %.not.i9.i.i.i341, i1 %i.ahp, i1 %i.aho
  br i1 %.0.i10.i.i.i342, label %bb.cb, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i336

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i336: ; preds = %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i340, %.split33.i, %.split.i343
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i336, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i340, %.split33.i, %.split.i343
  %.sink49.i = phi i64 [ 24, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i336 ], [ 16, %.split33.i ], [ 16, %.split.i343 ], [ 16, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i340 ]
  %.0.i.i30.i = phi i1 [ false, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i336 ], [ true, %.split33.i ], [ true, %.split.i343 ], [ true, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i340 ]
  %i.ahq = getelementptr inbounds nuw i8, ptr %.02839.i, i64 %.sink49.i
  %.028.i = load ptr, ptr %i.ahq, align 8, !tbaa !158 ; 2 uses
  %.not.i337 = icmp eq ptr %.028.i, null
  br i1 %.not.i337, label %._crit_edge.i, label %.lr.ph.split.i333, !llvm.loop !159

._crit_edge.i:                                    ; preds = %bb.cb, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349
  %.027.lcssa.i = phi ptr [ %.02839.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349 ], [ %.02839.i, %bb.cb ] ; 3 uses
  %.0.lcssa.i = phi i1 [ %.0.i.i30.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i349 ], [ %.0.i.i30.i, %bb.cb ]
  br i1 %.0.lcssa.i, label %._crit_edge.thread.i, label %bb.cd

._crit_edge.thread.i:                             ; preds = %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread, %._crit_edge.i, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread
  %.027.lcssa47.i = phi ptr [ %.027.lcssa.i, %._crit_edge.i ], [ %i.cr, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread ], [ %i.cr, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread ] ; 4 uses
  %i.ahr = load ptr, ptr %i.cs, align 8, !tbaa !154
  %i.ahs = icmp eq ptr %.027.lcssa47.i, %i.ahr
  br i1 %i.ahs, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.thread.i
  %i.aht = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.027.lcssa47.i) #44
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i
  %.027.lcssa46.i = phi ptr [ %.027.lcssa47.i, %bb.cc ], [ %.027.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.013.0.i = phi ptr [ %i.aht, %bb.cc ], [ %.027.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 32
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !11 ; 2 uses
  %i.ahw = zext i32 %i.ahv to i64
  %.not.i.i.i5.i = icmp ne i64 %indvars.iv, %i.ahw
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 36
  %i.ahy = load i32, ptr %i.ahx, align 4          ; 3 uses
  %i.ahz = icmp ne i32 %i.ahy, %i.abo
  %i.aia = select i1 %.not.i.i.i5.i, i1 true, i1 %i.ahz
  br i1 %i.aia, label %.split35.i, label %bb.ce

.split35.i:                                       ; preds = %bb.cd
  %.not.i7.i.i10.i = icmp eq i32 %i.ahy, %i.abo
  %i.aib = icmp slt i32 %i.ahy, %i.abo
  %i.aic = sext i32 %i.ahv to i64
  %i.aid = icmp sgt i64 %indvars.iv, %i.aic
  %.0.i.i.i11.i = select i1 %.not.i7.i.i10.i, i1 %i.aid, i1 %i.aib
  br i1 %.0.i.i.i11.i, label %bb.cg, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

bb.ce:                                            ; preds = %bb.cd
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 40
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i6.i = icmp ne i32 %i.aif, %storemerge46466
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 44
  %i.aih = load i32, ptr %i.aig, align 4          ; 3 uses
  %i.aii = icmp ne i32 %i.aih, 0
  %i.aij = select i1 %.not.i8.i.i6.i, i1 true, i1 %i.aii
  br i1 %i.aij, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 48
  %i.ail = load i8, ptr %i.aik, align 4, !tbaa !14, !range !17, !noundef !18
  %i.aim = trunc nuw i8 %i.ail to i1
  %brmerge = or i1 %.not448, %i.aim
  br i1 %brmerge, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit, label %bb.cg

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i: ; preds = %bb.ce
  %.not.i9.i.i8.i = icmp eq i32 %i.aih, 0
  %i.ain = icmp slt i32 %i.aih, 0
  %i.aio = icmp slt i32 %i.aif, %storemerge46466
  %.0.i10.i.i9.i = select i1 %.not.i9.i.i8.i, i1 %i.aio, i1 %i.ain
  br i1 %.0.i10.i.i9.i, label %bb.cg, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

bb.cg:                                            ; preds = %bb.cf, %._crit_edge.thread.i, %.split35.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i
  %.sroa.4.0.i.ph = phi ptr [ %.027.lcssa46.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i ], [ %.027.lcssa46.i, %.split35.i ], [ %.027.lcssa46.i, %bb.cf ], [ %.027.lcssa47.i, %._crit_edge.thread.i ] ; 7 uses
  %i.aip = icmp eq ptr %.sroa.4.0.i.ph, %i.cr
  br i1 %i.aip, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !11 ; 2 uses
  %i.ais = zext i32 %i.air to i64
  %.not.i.i.i.i.i318 = icmp ne i64 %indvars.iv, %i.ais
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 36
  %i.aiu = load i32, ptr %i.ait, align 4          ; 3 uses
  %i.aiv = icmp ne i32 %i.abo, %i.aiu
  %i.aiw = select i1 %.not.i.i.i.i.i318, i1 true, i1 %i.aiv
  br i1 %i.aiw, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %.not.i7.i.i.i.i322 = icmp eq i32 %i.abo, %i.aiu
  %i.aix = icmp slt i32 %i.abo, %i.aiu
  %i.aiy = sext i32 %i.air to i64
  %i.aiz = icmp slt i64 %indvars.iv, %i.aiy
  %.0.i.i.i.i.i323 = select i1 %.not.i7.i.i.i.i322, i1 %i.aiz, i1 %i.aix
  br label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.i.i319 = icmp ne i32 %storemerge46466, %i.ajb
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 44
  %i.ajd = load i32, ptr %i.ajc, align 4          ; 3 uses
  %i.aje = icmp ne i32 %i.ajd, 0
  %i.ajf = select i1 %.not.i8.i.i.i.i319, i1 true, i1 %i.aje
  br i1 %i.ajf, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.not.i9.i.i.i.i320 = icmp eq i32 %i.ajd, 0
  %i.ajg = icmp sgt i32 %i.ajd, 0
  %i.ajh = icmp slt i32 %storemerge46466, %i.ajb
  %.0.i10.i.i.i.i321 = select i1 %.not.i9.i.i.i.i320, i1 %i.ajh, i1 %i.ajg
  br label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

bb.cl:                                            ; preds = %bb.cj
  br i1 %18, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 48
  %i.ajj = load i8, ptr %i.aji, align 4, !tbaa !14, !range !17, !noundef !18
  %i.ajk = trunc nuw i8 %i.ajj to i1
  br label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ci, %bb.cg
  %i.ajl = phi i1 [ %i.ajk, %bb.cm ], [ true, %bb.cg ], [ %.0.i.i.i.i.i323, %bb.ci ], [ %.0.i10.i.i.i.i321, %bb.ck ], [ false, %bb.cl ]
  %i.ajm = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #43 ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  store i64 %.sroa.0362.0.insert.insert, ptr %i.ajn, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40
  store i64 %i.fh, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajm, i64 48
  store i8 %19, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !160
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ajl, ptr noundef nonnull %i.ajm, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #37
  %i.ajo = load i64, ptr %i.ct, align 8, !tbaa !156
  %i.ajp = add i64 %i.ajo, 1
  store i64 %i.ajp, ptr %i.ct, align 8, !tbaa !156
  br label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, %bb.cf, %.split35.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i, %.split6.i.i, %bb.bx, %.split.i.i
  br i1 %i.abp, label %bb.cn, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193

bb.cn:                                            ; preds = %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit
  %i.ajq = load ptr, ptr %i.cu, align 8, !tbaa !230 ; 4 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8 ; 3 uses
  %.02224.i.i = load ptr, ptr %i.ajr, align 8, !tbaa !158 ; 2 uses
  %.not25.i.i = icmp eq ptr %.02224.i.i, null
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cn, %.lr.ph.i.i
  %.02226.i.i = phi ptr [ %.022.i.i, %.lr.ph.i.i ], [ %.02224.i.i, %bb.cn ] ; 5 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 32
  %i.aju = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 36
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !13 ; 3 uses
  %.not.i.i.i.i324 = icmp eq i32 %i.abo, %i.ajv
  %i.ajw = icmp slt i32 %i.abo, %i.ajv
  %i.ajx = load i32, ptr %i.ajt, align 4
  %i.ajy = sext i32 %i.ajx to i64                 ; 2 uses
  %i.ajz = icmp slt i64 %indvars.iv, %i.ajy
  %.0.i.i.i.i325 = select i1 %.not.i.i.i.i324, i1 %i.ajz, i1 %i.ajw ; 2 uses
  %.in.v.i.i = select i1 %.0.i.i.i.i325, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 %.in.v.i.i
  %.022.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !158 ; 2 uses
  %.not.i.i326 = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i326, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !410

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %.0.i.i.i.i325, label %._crit_edge.thread.i.i, label %bb.cp

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.cn
  %.021.lcssa31.i.i = phi ptr [ %.02226.i.i, %._crit_edge.i.i ], [ %i.ajs, %bb.cn ] ; 4 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajq, i64 24
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !154
  %i.akc = icmp eq ptr %.021.lcssa31.i.i, %i.akb
  br i1 %i.akc, label %select.unfold.i, label %bb.co

bb.co:                                            ; preds = %._crit_edge.thread.i.i
  %i.akd = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa31.i.i) #44 ; 2 uses
  %.phi.trans.insert.i330 = getelementptr inbounds nuw i8, ptr %i.akd, i64 36
  %.pre.i331 = load i32, ptr %.phi.trans.insert.i330, align 4, !tbaa !13
  %.phi.trans.insert22.i = getelementptr inbounds nuw i8, ptr %i.akd, i64 32
  %.pre23.i = load i32, ptr %.phi.trans.insert22.i, align 4
  %.pre495 = sext i32 %.pre23.i to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge.i.i
  %.pre-phi = phi i64 [ %.pre495, %bb.co ], [ %i.ajy, %._crit_edge.i.i ]
  %i.ake = phi i32 [ %.pre.i331, %bb.co ], [ %i.ajv, %._crit_edge.i.i ] ; 2 uses
  %.021.lcssa30.i.i = phi ptr [ %.021.lcssa31.i.i, %bb.co ], [ %.02226.i.i, %._crit_edge.i.i ]
  %.not.i.i5.i.i = icmp eq i32 %i.ake, %i.abo
  %i.akf = icmp slt i32 %i.ake, %i.abo
  %i.akg = icmp slt i64 %.pre-phi, %indvars.iv
  %.0.i.i6.i.i = select i1 %.not.i.i5.i.i, i1 %i.akg, i1 %i.akf
  br i1 %.0.i.i6.i.i, label %select.unfold.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193

select.unfold.i:                                  ; preds = %bb.cp, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.021.lcssa31.i.i, %._crit_edge.thread.i.i ], [ %.021.lcssa30.i.i, %bb.cp ] ; 4 uses
  %i.akh = icmp eq ptr %.sroa.4.0.i.ph.i, %i.ajs
  br i1 %i.akh, label %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.cq

bb.cq:                                            ; preds = %select.unfold.i
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !13 ; 2 uses
  %.not.i.i.i6.i = icmp eq i32 %i.abo, %i.akk
  %i.akl = icmp slt i32 %i.abo, %i.akk
  %i.akm = load i32, ptr %i.aki, align 4
  %i.akn = sext i32 %i.akm to i64
  %i.ako = icmp slt i64 %indvars.iv, %i.akn
  %.0.i.i.i7.i = select i1 %.not.i.i.i6.i, i1 %i.ako, i1 %i.akl
  br label %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i: ; preds = %bb.cq, %select.unfold.i
  %i.akp = phi i1 [ %.0.i.i.i7.i, %bb.cq ], [ true, %select.unfold.i ]
  %i.akq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #43 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 32
  store i64 %.sroa.0362.0.insert.insert, ptr %i.akr, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.akp, ptr noundef nonnull %i.akq, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ajs) #37
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ajq, i64 40 ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !156
  %i.aku = add i64 %i.akt, 1
  store i64 %i.aku, ptr %i.aks, align 8, !tbaa !156
  br label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193

_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193: ; preds = %bb.bm, %bb.bj, %bb.bk, %bb.bl, %.thread7.i192, %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit, %bb.cp, %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, %bb.bi, %.preheader.i188
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.akv = load ptr, ptr %i.v, align 8, !tbaa !330 ; 3 uses
  %i.akw = getelementptr inbounds nuw [24 x i8], ptr %i.akv, i64 %indvars.iv484 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !335
  %i.akz = load ptr, ptr %i.akw, align 8, !tbaa !332 ; 2 uses
  %i.ala = ptrtoint ptr %i.aky to i64
  %i.alb = ptrtoint ptr %i.akz to i64
  %i.alc = sub i64 %i.ala, %i.alb
  %i.ald = ashr exact i64 %i.alc, 5
  %i.ale = icmp ugt i64 %i.ald, %indvars.iv.next
  br i1 %i.ale, label %bb.bi, label %._crit_edge, !llvm.loop !411

bb.cr:                                            ; preds = %._crit_edge464.split
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cv) #37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.cv, align 16, !tbaa !55
  store ptr null, ptr %i.cw, align 8, !tbaa !175
  store i8 0, ptr %i.cx, align 16, !tbaa !188
  store i8 0, ptr %i.cy, align 1, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 32, i1 false)
  store ptr %i.da, ptr %17, align 16, !tbaa !55
  %i.alf = load i64, ptr %i.dc, align 8
  %i.alg = getelementptr inbounds i8, ptr %17, i64 %i.alf
  store ptr %i.db, ptr %i.alg, align 8, !tbaa !55
  %i.alh = load ptr, ptr %17, align 16, !tbaa !55
  %i.ali = getelementptr i8, ptr %i.alh, i64 -24
  %i.alj = load i64, ptr %i.ali, align 8
  %i.alk = getelementptr inbounds i8, ptr %17, i64 %i.alj
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.alk, ptr noundef null) #37
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.cv, align 16, !tbaa !55
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %17, align 16, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.de, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.df) #37
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dd, align 8, !tbaa !55
  store i32 16, ptr %i.dg, align 8, !tbaa !190
  store ptr %i.di, ptr %i.dh, align 16, !tbaa !70
  store i64 0, ptr %i.dj, align 8, !tbaa !48
  store i8 0, ptr %i.di, align 16, !tbaa !58
  %i.all = load ptr, ptr %17, align 16, !tbaa !55
  %i.alm = getelementptr i8, ptr %i.all, i64 -24
  %i.aln = load i64, ptr %i.alm, align 8
  %i.alo = getelementptr inbounds i8, ptr %17, i64 %i.aln
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.alo, ptr noundef nonnull %i.dd) #37
  %i.alp = load ptr, ptr @_ZN4LogT6prefixB5cxx11E, align 8, !tbaa !44
  %i.alq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LogT6prefixB5cxx11E, i64 8), align 8, !tbaa !48
  %i.alr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.alp, i64 noundef %i.alq) #37 ; 2 uses
  %i.als = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alr, ptr noundef nonnull @.str.85, i64 noundef 2) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.dk, ptr %4, align 8, !tbaa !70
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 16, i8 noundef signext 32) #37
  %i.alt = load ptr, ptr %4, align 8, !tbaa !44
  %i.alu = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.alv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alr, ptr noundef %i.alt, i64 noundef %i.alu) #37 ; 0 uses
  %i.alw = load ptr, ptr %4, align 8, !tbaa !44   ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.dk
  br i1 %i.alx, label %_ZN4LogTC2Ej.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194: ; preds = %bb.cr
  %i.aly = load i64, ptr %i.dk, align 8, !tbaa !58
  %i.alz = add i64 %i.aly, 1
  call void @_ZdlPvm(ptr noundef %i.alw, i64 noundef %i.alz) #40
  br label %_ZN4LogTC2Ej.exit

_ZN4LogTC2Ej.exit:                                ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.ama = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.6, i64 noundef 1) #37 ; 0 uses
  %i.amb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %17, i64 noundef %i.dm) #37 ; 0 uses
  %i.amc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.7, i64 noundef 2) #37 ; 0 uses
  %i.amd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %17, i64 noundef %i.fh) #37 ; 0 uses
  %i.ame = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.8, i64 noundef 4) #37 ; 0 uses
  %i.amf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.9, i64 noundef 6) #37 ; 0 uses
  %i.amg = load ptr, ptr %i.xr, align 8, !tbaa !44
  %i.amh = load i64, ptr %i.yk, align 8, !tbaa !48
  %i.ami = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.amg, i64 noundef %i.amh) #37 ; 0 uses
  %i.amj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.10, i64 noundef 10) #37 ; 0 uses
  %i.amk = load ptr, ptr %i.ap, align 8, !tbaa !330
  %i.aml = getelementptr inbounds nuw [24 x i8], ptr %i.amk, i64 %i.dm
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !332
  %i.amn = getelementptr inbounds nuw [32 x i8], ptr %i.amm, i64 %i.fh ; 2 uses
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !44
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !48
  %i.amr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.amo, i64 noundef %i.amq) #37 ; 0 uses
  call void @_ZN4LogTD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %.lr.ph.i.i.i197.preheader

.lr.ph.i.i.i197.preheader:                        ; preds = %._crit_edge464.split, %_ZN4LogTC2Ej.exit
  %i.ams = load ptr, ptr %i.xr, align 8, !tbaa !44 ; 2 uses
  %i.amt = icmp eq ptr %i.ams, %i.yc
end_hunk_0
begin_hunk_1_@_ZN4UFAR16CexUifPairFinder12FindUifPairsERKSt6vectorIS1_IcSaIcEESaIS3_EEjRSt3setINS_7UifPairESt4lessIS9_ESaIS9_EE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.wv = load ptr, ptr %i.x, align 8, !tbaa !368 ; 3 uses
  %i.ww = getelementptr inbounds i8, ptr %i.wv, i64 -24 ; 2 uses
  %i.wx = getelementptr inbounds i8, ptr %i.wv, i64 -16 ; 4 uses
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !335 ; 10 uses
  %i.wz = getelementptr inbounds i8, ptr %i.wv, i64 -8 ; 3 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !337
  %.not.i149 = icmp eq ptr %i.wy, %i.xa
  br i1 %.not.i149, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 16 ; 3 uses
  store ptr %i.xb, ptr %i.wy, align 8, !tbaa !70
  %i.xc = load ptr, ptr %i.vt, align 8, !tbaa !44 ; 2 uses
  %i.xd = load i64, ptr %i.wm, align 8, !tbaa !48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 %i.xd, ptr %i.c, align 8, !tbaa !71
  %i.xe = icmp ugt i64 %i.xd, 15
  br i1 %i.xe, label %bb.av, label %._crit_edge.i.i.i150

bb.av:                                            ; preds = %bb.au
  %i.xf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.wy, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #37 ; 2 uses
  store ptr %i.xf, ptr %i.wy, align 8, !tbaa !44
  %i.xg = load i64, ptr %i.c, align 8, !tbaa !71
  store i64 %i.xg, ptr %i.xb, align 8, !tbaa !58
  br label %._crit_edge.i.i.i150

._crit_edge.i.i.i150:                             ; preds = %bb.av, %bb.au
  %i.xh = phi ptr [ %i.xf, %bb.av ], [ %i.xb, %bb.au ] ; 2 uses
  switch i64 %i.xd, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i151
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i150
  %i.xi = load i8, ptr %i.xc, align 1, !tbaa !58
  store i8 %i.xi, ptr %i.xh, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i151

bb.ax:                                            ; preds = %._crit_edge.i.i.i150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xh, ptr align 1 %i.xc, i64 %i.xd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i151: ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i.i150
  %i.xj = load i64, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  store i64 %i.xj, ptr %i.xk, align 8, !tbaa !48
  %i.xl = load ptr, ptr %i.wy, align 8, !tbaa !44
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.xj
  store i8 0, ptr %i.xm, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.xn = load ptr, ptr %i.wx, align 8, !tbaa !335
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  store ptr %i.xo, ptr %i.wx, align 8, !tbaa !335
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.xp = load ptr, ptr %i.ww, align 8, !tbaa !332 ; 5 uses
  %i.xq = ptrtoint ptr %i.wy to i64
  %i.xr = ptrtoint ptr %i.xp to i64               ; 2 uses
  %i.xs = sub i64 %i.xq, %i.xr                    ; 3 uses
  %i.xt = icmp eq i64 %i.xs, 9223372036854775776
  br i1 %i.xt, label %bb.az, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i251

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #39
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i251: ; preds = %bb.ay
  %i.xu = ashr exact i64 %i.xs, 5                 ; 3 uses
  %.sroa.speculated.i.i252 = call i64 @llvm.umax.i64(i64 %i.xu, i64 1)
  %i.xv = add nsw i64 %.sroa.speculated.i.i252, %i.xu ; 2 uses
  %i.xw = icmp ult i64 %i.xv, %i.xu
  %i.xx = call i64 @llvm.umin.i64(i64 %i.xv, i64 288230376151711743)
  %i.xy = select i1 %i.xw, i64 288230376151711743, i64 %i.xx ; 3 uses
  %.not.i.i253 = icmp ne i64 %i.xy, 0
  call void @llvm.assume(i1 %.not.i.i253)
  %i.xz = shl nuw nsw i64 %i.xy, 5
  %i.ya = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xz) #43 ; 5 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.xs ; 6 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16 ; 3 uses
  store ptr %i.yc, ptr %i.yb, align 8, !tbaa !70
  %i.yd = load ptr, ptr %i.vt, align 8, !tbaa !44 ; 2 uses
  %i.ye = load i64, ptr %i.wm, align 8, !tbaa !48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.ye, ptr %i.a, align 8, !tbaa !71
  %i.yf = icmp ugt i64 %i.ye, 15
  br i1 %i.yf, label %bb.ba, label %._crit_edge.i.i.i254

bb.ba:                                            ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i251
  %i.yg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.yb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #37 ; 2 uses
  store ptr %i.yg, ptr %i.yb, align 8, !tbaa !44
  %i.yh = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.yh, ptr %i.yc, align 8, !tbaa !58
  br label %._crit_edge.i.i.i254

._crit_edge.i.i.i254:                             ; preds = %bb.ba, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i251
  %i.yi = phi ptr [ %i.yg, %bb.ba ], [ %i.yc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i251 ] ; 2 uses
  switch i64 %i.ye, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i.i254
  %i.yj = load i8, ptr %i.yd, align 1, !tbaa !58
  store i8 %i.yj, ptr %i.yi, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255

bb.bc:                                            ; preds = %._crit_edge.i.i.i254
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yi, ptr align 1 %i.yd, i64 %i.ye, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255: ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i.i254
  %i.yk = load i64, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  store i64 %i.yk, ptr %i.yl, align 8, !tbaa !48
  %i.ym = load ptr, ptr %i.yb, align 8, !tbaa !44
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yk
  store i8 0, ptr %i.yn, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not10.i.i.i.i256 = icmp eq ptr %i.xp, %i.wy
  br i1 %.not10.i.i.i.i256, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i276, label %.lr.ph.i.i.i.i257

.lr.ph.i.i.i.i257:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i263
  %.012.i.i.i.i258 = phi ptr [ %i.zb, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i263 ], [ %i.ya, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255 ] ; 5 uses
  %.0911.i.i.i.i259 = phi ptr [ %i.za, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i263 ], [ %i.xp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.yo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i258, i64 16 ; 3 uses
  store ptr %i.yo, ptr %.012.i.i.i.i258, align 8, !tbaa !70, !alias.scope !465, !noalias !468
  %i.yp = load ptr, ptr %.0911.i.i.i.i259, align 8, !tbaa !44, !alias.scope !468, !noalias !465 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i259, i64 16 ; 5 uses
  %i.yr = icmp eq ptr %i.yp, %i.yq
  br i1 %i.yr, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i260

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i257
  %i.ys = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i259, i64 8
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !48, !alias.scope !468, !noalias !465 ; 3 uses
  %i.yu = icmp ult i64 %i.yt, 16
  call void @llvm.assume(i1 %i.yu)
  %i.yv = add nuw nsw i64 %i.yt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yo, ptr noundef nonnull align 8 dereferenceable(1) %i.yq, i64 %i.yv, i1 false), !alias.scope !470
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i260: ; preds = %.lr.ph.i.i.i.i257
  store ptr %i.yp, ptr %.012.i.i.i.i258, align 8, !tbaa !44, !alias.scope !465, !noalias !468
  %i.yw = load i64, ptr %i.yq, align 8, !tbaa !58, !alias.scope !468, !noalias !465
  store i64 %i.yw, ptr %i.yo, align 8, !tbaa !58, !alias.scope !465, !noalias !468
  %.phi.trans.insert.i.i.i.i.i261 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i259, i64 8
  %.pre.i.i.i.i.i262 = load i64, ptr %.phi.trans.insert.i.i.i.i.i261, align 8, !tbaa !48, !alias.scope !468, !noalias !465
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i263

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i263: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i260, %bb.bd
  %i.yx = phi i64 [ %i.yt, %bb.bd ], [ %.pre.i.i.i.i.i262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i260 ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i259, i64 8
  %i.yz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i258, i64 8
  store i64 %i.yx, ptr %i.yz, align 8, !tbaa !48, !alias.scope !465, !noalias !468
  store ptr %i.yq, ptr %.0911.i.i.i.i259, align 8, !tbaa !44, !alias.scope !468, !noalias !465
  store i64 0, ptr %i.yy, align 8, !tbaa !48, !alias.scope !468, !noalias !465
  store i8 0, ptr %i.yq, align 8, !tbaa !58, !alias.scope !468, !noalias !465
  %i.za = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i259, i64 32 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i258, i64 32 ; 2 uses
  %.not.i.i.i.i264 = icmp eq ptr %i.za, %i.wy
  br i1 %.not.i.i.i.i264, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i276, label %.lr.ph.i.i.i.i257, !llvm.loop !375

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i276: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255
  %.0.lcssa.i.i.i.i266 = phi ptr [ %i.ya, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i255 ], [ %i.zb, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i263 ]
  %i.zc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i266, i64 32
  %.not.i27.i278 = icmp eq ptr %i.xp, null
  br i1 %.not.i27.i278, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit279, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i276
  %i.zd = load ptr, ptr %i.wz, align 8, !tbaa !337
  %i.ze = ptrtoint ptr %i.zd to i64
  %i.zf = sub i64 %i.ze, %i.xr
  call void @_ZdlPvm(ptr noundef nonnull %i.xp, i64 noundef %i.zf) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit279

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit279: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i276, %bb.be
  store ptr %i.ya, ptr %i.ww, align 8, !tbaa !332
  store ptr %i.zc, ptr %i.wx, align 8, !tbaa !335
  %i.zg = getelementptr inbounds nuw [32 x i8], ptr %i.ya, i64 %i.xy
  store ptr %i.zg, ptr %i.wz, align 8, !tbaa !337
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i151, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit279
  br i1 %or.cond428, label %._crit_edge432.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152
  %.pre458.pre = load ptr, ptr %i.v, align 8, !tbaa !330
  br label %.preheader.lr.ph

._crit_edge432.split:                             ; preds = %..critedge_crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152
  %i.zh = load i32, ptr @_ZN4LogT8loglevelE, align 4, !tbaa !8
  %i.zi = icmp ult i32 %i.zh, 4
  br i1 %i.zi, label %.lr.ph.i.i.i165.preheader, label %bb.co

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %..critedge_crit_edge
  %.pre458 = phi ptr [ %.pre458.pre, %.preheader.lr.ph.preheader ], [ %.pre458460, %..critedge_crit_edge ] ; 2 uses
  %18 = phi i1 [ false, %.preheader.lr.ph.preheader ], [ true, %..critedge_crit_edge ] ; 7 uses
  %indvars.iv454 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ 1, %..critedge_crit_edge ]
  %i.zj = getelementptr inbounds nuw [32 x i8], ptr %i.vt, i64 %indvars.iv454 ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 8
  %19 = zext i1 %18 to i8
  %.not416 = xor i1 %18, true
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.pre458461 = phi ptr [ %.pre458, %.preheader.lr.ph ], [ %.pre458460, %._crit_edge ]
  %i.zl = phi ptr [ %.pre458, %.preheader.lr.ph ], [ %i.zs, %._crit_edge ] ; 2 uses
  %indvars.iv452 = phi i64 [ %i.dl, %.preheader.lr.ph ], [ %indvars.iv.next453, %._crit_edge ] ; 6 uses
  %i.zm = getelementptr inbounds nuw [24 x i8], ptr %i.zl, i64 %indvars.iv452 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !335
  %i.zp = load ptr, ptr %i.zm, align 8, !tbaa !332 ; 2 uses
  %.not444 = icmp eq ptr %i.zo, %i.zp
  %.pre464 = trunc nuw i64 %indvars.iv452 to i32  ; 2 uses
  br i1 %.not444, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.zq = sub nsw i32 %.pre464, %storemerge437    ; 28 uses
  %.sroa.4331.0.insert.ext = zext i32 %i.zq to i64
  %.sroa.4331.0.insert.shift = shl nuw i64 %.sroa.4331.0.insert.ext, 32
  %i.zr = icmp ult i64 %indvars.iv452, %i.dl
  br label %bb.bf

..critedge_crit_edge:                             ; preds = %._crit_edge
  br i1 %18, label %._crit_edge432.split, label %.preheader.lr.ph, !llvm.loop !471

._crit_edge:                                      ; preds = %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161, %.preheader
  %.pre458460 = phi ptr [ %.pre458461, %.preheader ], [ %i.aix, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161 ] ; 2 uses
  %i.zs = phi ptr [ %i.zl, %.preheader ], [ %i.aix, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161 ]
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, -1
  %or.cond.not = icmp slt i32 %invariant.smax, %.pre464
  br i1 %or.cond.not, label %.preheader, label %..critedge_crit_edge, !llvm.loop !472

bb.bf:                                            ; preds = %.lr.ph, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161 ] ; 21 uses
  %i.zt = phi ptr [ %i.zp, %.lr.ph ], [ %i.ajb, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161 ]
  %i.zu = getelementptr inbounds nuw [32 x i8], ptr %i.zt, i64 %indvars.iv ; 2 uses
  %.val49 = load ptr, ptr %i.zj, align 8
  %.val50 = load i64, ptr %i.zk, align 8, !tbaa !48 ; 3 uses
  %.val51 = load ptr, ptr %i.zu, align 8          ; 4 uses
  %i.zv = getelementptr i8, ptr %i.zu, i64 8
  %.val52 = load i64, ptr %i.zv, align 8, !tbaa !48
  %.not.i153 = icmp eq i64 %.val50, %.val52
  br i1 %.not.i153, label %.preheader.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161

.preheader.i:                                     ; preds = %bb.bf
  %.not20.i = icmp eq i64 %.val50, 0
  br i1 %.not20.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.thread7.i
  %i.zw = phi i64 [ %i.aam, %.thread7.i ], [ 0, %.preheader.i ] ; 5 uses
  %.02211.i = phi i32 [ %i.aal, %.thread7.i ], [ 0, %.preheader.i ]
  %i.zx = getelementptr inbounds nuw i8, ptr %.val49, i64 %i.zw
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !58
  switch i8 %i.zy, label %.thread7.i [
    i8 49, label %bb.bg
    i8 48, label %bb.bh
    i8 117, label %bb.bi
    i8 115, label %bb.bj
  ]

bb.bg:                                            ; preds = %.lr.ph.i
  %i.zz = getelementptr inbounds nuw i8, ptr %.val51, i64 %i.zw
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !58
  %i.aab = icmp eq i8 %i.aaa, 48
  br i1 %i.aab, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161, label %.thread7.i

bb.bh:                                            ; preds = %.lr.ph.i
  %i.aac = getelementptr inbounds nuw i8, ptr %.val51, i64 %i.zw
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !58
  %i.aae = icmp eq i8 %i.aad, 49
  br i1 %i.aae, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161, label %.thread7.i

bb.bi:                                            ; preds = %.lr.ph.i
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val51, i64 %i.zw
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !58
  %i.aah = icmp eq i8 %i.aag, 115
  br i1 %i.aah, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161, label %.thread7.i

bb.bj:                                            ; preds = %.lr.ph.i
  %i.aai = getelementptr inbounds nuw i8, ptr %.val51, i64 %i.zw
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !58
  %i.aak = icmp eq i8 %i.aaj, 117
  br i1 %i.aak, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161, label %.thread7.i

.thread7.i:                                       ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %.lr.ph.i
  %i.aal = add i32 %.02211.i, 1                   ; 2 uses
  %i.aam = zext i32 %i.aal to i64                 ; 2 uses
  %i.aan = icmp ugt i64 %.val50, %i.aam
  br i1 %i.aan, label %.lr.ph.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit, !llvm.loop !408

_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %.thread7.i, %.preheader.i
  %i.aao = load ptr, ptr %i.ap, align 8, !tbaa !330 ; 2 uses
  %i.aap = getelementptr inbounds nuw [24 x i8], ptr %i.aao, i64 %i.dk
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !332
  %i.aar = getelementptr inbounds nuw [32 x i8], ptr %i.aaq, i64 %i.ff ; 2 uses
  %i.aas = getelementptr inbounds nuw [24 x i8], ptr %i.aao, i64 %indvars.iv452
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !332
  %i.aau = getelementptr inbounds nuw [32 x i8], ptr %i.aat, i64 %indvars.iv ; 2 uses
  %.val45 = load ptr, ptr %i.aar, align 8
  %i.aav = getelementptr i8, ptr %i.aar, i64 8
  %.val46 = load i64, ptr %i.aav, align 8, !tbaa !48 ; 3 uses
  %.val47 = load ptr, ptr %i.aau, align 8         ; 4 uses
  %i.aaw = getelementptr i8, ptr %i.aau, i64 8
  %.val48 = load i64, ptr %i.aaw, align 8, !tbaa !48
  %.not.i154 = icmp eq i64 %.val46, %.val48
  br i1 %.not.i154, label %.preheader.i156, label %.loopexit

.preheader.i156:                                  ; preds = %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %.not20.i157 = icmp eq i64 %.val46, 0
  br i1 %.not20.i157, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %.preheader.i156, %.thread7.i160
  %i.aax = phi i64 [ %i.abn, %.thread7.i160 ], [ 0, %.preheader.i156 ] ; 5 uses
  %.02211.i159 = phi i32 [ %i.abm, %.thread7.i160 ], [ 0, %.preheader.i156 ]
  %i.aay = getelementptr inbounds nuw i8, ptr %.val45, i64 %i.aax
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !58
  switch i8 %i.aaz, label %.thread7.i160 [
    i8 49, label %bb.bk
    i8 48, label %bb.bl
    i8 117, label %bb.bm
    i8 115, label %bb.bn
  ]

bb.bk:                                            ; preds = %.lr.ph.i158
  %i.aba = getelementptr inbounds nuw i8, ptr %.val47, i64 %i.aax
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !58
  %i.abc = icmp eq i8 %i.abb, 48
  br i1 %i.abc, label %.loopexit, label %.thread7.i160

bb.bl:                                            ; preds = %.lr.ph.i158
  %i.abd = getelementptr inbounds nuw i8, ptr %.val47, i64 %i.aax
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !58
  %i.abf = icmp eq i8 %i.abe, 49
  br i1 %i.abf, label %.loopexit, label %.thread7.i160

bb.bm:                                            ; preds = %.lr.ph.i158
  %i.abg = getelementptr inbounds nuw i8, ptr %.val47, i64 %i.aax
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !58
  %i.abi = icmp eq i8 %i.abh, 115
  br i1 %i.abi, label %.loopexit, label %.thread7.i160

bb.bn:                                            ; preds = %.lr.ph.i158
  %i.abj = getelementptr inbounds nuw i8, ptr %.val47, i64 %i.aax
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !58
  %i.abl = icmp eq i8 %i.abk, 117
  br i1 %i.abl, label %.loopexit, label %.thread7.i160

.thread7.i160:                                    ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %.lr.ph.i158
  %i.abm = add i32 %.02211.i159, 1                ; 2 uses
  %i.abn = zext i32 %i.abm to i64                 ; 2 uses
  %i.abo = icmp ugt i64 %.val46, %i.abn
  br i1 %i.abo, label %.lr.ph.i158, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161, !llvm.loop !408

.loopexit:                                        ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bn, %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %.sroa.0330.0.insert.insert = or disjoint i64 %indvars.iv, %.sroa.4331.0.insert.shift ; 2 uses
  %i.abp = load ptr, ptr %i.cn, align 8, !tbaa !216 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !153 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 8 ; 3 uses
  %.not12.i = icmp eq ptr %i.abr, null
  br i1 %.not12.i, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread, label %.lr.ph.i280

.lr.ph.i280:                                      ; preds = %.loopexit
  br i1 %18, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i280, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i
  %.014.us.i = phi ptr [ %.1.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i ], [ %i.abr, %.lr.ph.i280 ] ; 9 uses
  %.0813.us.i = phi ptr [ %.19.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i ], [ %i.abs, %.lr.ph.i280 ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 32
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !11 ; 2 uses
  %i.abv = zext i32 %i.abu to i64
  %.not.i.i.i.us.i = icmp ne i64 %indvars.iv, %i.abv
  %i.abw = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 36
  %i.abx = load i32, ptr %i.abw, align 4          ; 3 uses
  %i.aby = icmp ne i32 %i.abx, %i.zq
  %i.abz = select i1 %.not.i.i.i.us.i, i1 true, i1 %i.aby
  br i1 %i.abz, label %.split.us.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.split.us.i
  %i.aca = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 40
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.us.i = icmp ne i32 %i.acb, %storemerge38434
  %i.acc = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 44
  %i.acd = load i32, ptr %i.acc, align 4          ; 3 uses
  %i.ace = icmp ne i32 %i.acd, 0
  %i.acf = select i1 %.not.i8.i.i.us.i, i1 true, i1 %i.ace
  br i1 %i.acf, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.acg = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 48
  %i.ach = load i8, ptr %i.acg, align 4, !tbaa !14, !range !17, !noundef !18
  %i.aci = trunc nuw i8 %i.ach to i1
  br i1 %i.aci, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i, label %.split11.us.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i: ; preds = %bb.bo
  %.not.i9.i.i.us.i = icmp eq i32 %i.acd, 0
  %i.acj = icmp slt i32 %i.acd, 0
  %i.ack = icmp slt i32 %i.acb, %storemerge38434
  %.0.i10.i.i.us.i = select i1 %.not.i9.i.i.us.i, i1 %i.ack, i1 %i.acj
  br i1 %.0.i10.i.i.us.i, label %.split11.us.i, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %.not.i7.i.i.us.i = icmp eq i32 %i.abx, %i.zq
  %i.acl = icmp slt i32 %i.abx, %i.zq
  %i.acm = sext i32 %i.abu to i64
  %i.acn = icmp sgt i64 %indvars.iv, %i.acm
  %.0.i.i.i.us.i = select i1 %.not.i7.i.i.us.i, i1 %i.acn, i1 %i.acl
  br i1 %.0.i.i.i.us.i, label %.split11.us.i, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

.split11.us.i:                                    ; preds = %.split.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, %bb.bp
  br label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i: ; preds = %.split11.us.i, %.split.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i, %bb.bp
  %.sink.i = phi i64 [ 24, %.split11.us.i ], [ 16, %.split.us.i ], [ 16, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i ], [ 16, %bb.bp ]
  %.19.us.i = phi ptr [ %.0813.us.i, %.split11.us.i ], [ %.014.us.i, %.split.us.i ], [ %.014.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i ], [ %.014.us.i, %bb.bp ] ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 %.sink.i
  %.1.us.i = load ptr, ptr %i.aco, align 8, !tbaa !158 ; 2 uses
  %.not.us.i = icmp eq ptr %.1.us.i, null
  br i1 %.not.us.i, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit, label %.lr.ph.split.us.i, !llvm.loop !409

.lr.ph.split.i:                                   ; preds = %.lr.ph.i280, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i
  %.014.i = phi ptr [ %.1.i282, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i ], [ %i.abr, %.lr.ph.i280 ] ; 8 uses
  %.0813.i = phi ptr [ %.19.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i ], [ %i.abs, %.lr.ph.i280 ]
  %i.acp = getelementptr inbounds nuw i8, ptr %.014.i, i64 32
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !11 ; 2 uses
  %i.acr = zext i32 %i.acq to i64
  %.not.i.i.i.i281 = icmp ne i64 %indvars.iv, %i.acr
  %i.acs = getelementptr inbounds nuw i8, ptr %.014.i, i64 36
  %i.act = load i32, ptr %i.acs, align 4          ; 3 uses
  %i.acu = icmp ne i32 %i.act, %i.zq
  %i.acv = select i1 %.not.i.i.i.i281, i1 true, i1 %i.acu
  br i1 %i.acv, label %.split.i, label %bb.bq

.split.i:                                         ; preds = %.lr.ph.split.i
  %.not.i7.i.i.i = icmp eq i32 %i.act, %i.zq
  %i.acw = icmp slt i32 %i.act, %i.zq
  %i.acx = sext i32 %i.acq to i64
  %i.acy = icmp sgt i64 %indvars.iv, %i.acx
  %.0.i.i.i.i = select i1 %.not.i7.i.i.i, i1 %i.acy, i1 %i.acw
  br i1 %.0.i.i.i.i, label %bb.br, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i

bb.bq:                                            ; preds = %.lr.ph.split.i
  %i.acz = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.i = icmp ne i32 %i.ada, %storemerge38434
  %i.adb = getelementptr inbounds nuw i8, ptr %.014.i, i64 44
  %i.adc = load i32, ptr %i.adb, align 4          ; 3 uses
  %i.add = icmp ne i32 %i.adc, 0
  %i.ade = select i1 %.not.i8.i.i.i, i1 true, i1 %i.add
  br i1 %i.ade, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i:   ; preds = %bb.bq
  %.not.i9.i.i.i = icmp eq i32 %i.adc, 0
  %i.adf = icmp slt i32 %i.adc, 0
  %i.adg = icmp slt i32 %i.ada, %storemerge38434
  %.0.i10.i.i.i = select i1 %.not.i9.i.i.i, i1 %i.adg, i1 %i.adf
  br i1 %.0.i10.i.i.i, label %bb.br, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i

bb.br:                                            ; preds = %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i, %.split.i
  br label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i: ; preds = %bb.br, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i, %bb.bq, %.split.i
  %.sink18.i = phi i64 [ 24, %bb.br ], [ 16, %bb.bq ], [ 16, %.split.i ], [ 16, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i ]
  %.19.i = phi ptr [ %.0813.i, %bb.br ], [ %.014.i, %bb.bq ], [ %.014.i, %.split.i ], [ %.014.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i ] ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.014.i, i64 %.sink18.i
  %.1.i282 = load ptr, ptr %i.adh, align 8, !tbaa !158 ; 2 uses
  %.not.i283 = icmp eq ptr %.1.i282, null
  br i1 %.not.i283, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit, label %.lr.ph.split.i, !llvm.loop !409

_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit: ; preds = %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i
  %.08.lcssa.i = phi ptr [ %.19.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i ], [ %.19.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i ] ; 6 uses
  %i.adi = icmp eq ptr %.08.lcssa.i, %i.abs
  br i1 %i.adi, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit
  %i.adj = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 32
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !11 ; 2 uses
  %i.adl = zext i32 %i.adk to i64
  %.not.i.i.i.i.i = icmp ne i64 %indvars.iv, %i.adl
  %i.adm = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 36
  %i.adn = load i32, ptr %i.adm, align 4          ; 3 uses
  %i.ado = icmp ne i32 %i.zq, %i.adn
  %i.adp = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.ado
  br i1 %i.adp, label %.split.i.i, label %bb.bt

.split.i.i:                                       ; preds = %bb.bs
  %.not.i7.i.i.i.i = icmp eq i32 %i.zq, %i.adn
  %i.adq = icmp slt i32 %i.zq, %i.adn
  %i.adr = sext i32 %i.adk to i64
  %i.ads = icmp slt i64 %indvars.iv, %i.adr
  %.0.i.i.i.i.i = select i1 %.not.i7.i.i.i.i, i1 %i.ads, i1 %i.adq
  br i1 %.0.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

bb.bt:                                            ; preds = %bb.bs
  %i.adt = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 40
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.i.i = icmp ne i32 %storemerge38434, %i.adu
  %i.adv = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 44
  %i.adw = load i32, ptr %i.adv, align 4          ; 3 uses
  %i.adx = icmp ne i32 %i.adw, 0
  %i.ady = select i1 %.not.i8.i.i.i.i, i1 true, i1 %i.adx
  br i1 %i.ady, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %18, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit, label %.split6.i.i

.split6.i.i:                                      ; preds = %bb.bu
  %i.adz = getelementptr inbounds nuw i8, ptr %.08.lcssa.i, i64 48
  %i.aea = load i8, ptr %i.adz, align 4, !tbaa !14, !range !17, !noundef !18
  %i.aeb = trunc nuw i8 %i.aea to i1
  br i1 %i.aeb, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i: ; preds = %bb.bt
  %.not.i9.i.i.i.i = icmp eq i32 %i.adw, 0
  %i.aec = icmp sgt i32 %i.adw, 0
  %i.aed = icmp slt i32 %storemerge38434, %i.adu
  %.0.i10.i.i.i.i = select i1 %.not.i9.i.i.i.i, i1 %i.aed, i1 %i.aec
  br i1 %.0.i10.i.i.i.i, label %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread: ; preds = %.loopexit, %.split.i.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit
  %.02837.i = load ptr, ptr %i.co, align 8, !tbaa !158 ; 3 uses
  %.not38.i = icmp eq ptr %.02837.i, null
  br i1 %.not38.i, label %._crit_edge.thread.i, label %.lr.ph.i300

_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread: ; preds = %.split6.i.i
  %.02837.i574 = load ptr, ptr %i.co, align 8, !tbaa !158 ; 2 uses
  %.not38.i575 = icmp eq ptr %.02837.i574, null
  br i1 %.not38.i575, label %._crit_edge.thread.i, label %.lr.ph.split.i301.preheader

.lr.ph.i300:                                      ; preds = %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread
  br i1 %18, label %.lr.ph.split.us.i314, label %.lr.ph.split.i301.preheader

.lr.ph.split.i301.preheader:                      ; preds = %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread, %.lr.ph.i300
  %.02839.i.ph = phi ptr [ %.02837.i574, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread ], [ %.02837.i, %.lr.ph.i300 ]
  br label %.lr.ph.split.i301

.lr.ph.split.us.i314:                             ; preds = %.lr.ph.i300, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317
  %.02839.us.i = phi ptr [ %.028.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317 ], [ %.02837.i, %.lr.ph.i300 ] ; 6 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 32
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !11 ; 2 uses
  %i.aeg = zext i32 %i.aef to i64
  %.not.i.i.i.us.i315 = icmp ne i64 %indvars.iv, %i.aeg
  %i.aeh = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 36
  %i.aei = load i32, ptr %i.aeh, align 4          ; 3 uses
  %i.aej = icmp ne i32 %i.zq, %i.aei
  %i.aek = select i1 %.not.i.i.i.us.i315, i1 true, i1 %i.aej
  br i1 %i.aek, label %.split.us.i323, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.split.us.i314
  %i.ael = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 40
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.us.i316 = icmp ne i32 %storemerge38434, %i.aem
  %i.aen = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 44
  %i.aeo = load i32, ptr %i.aen, align 4          ; 3 uses
  %i.aep = icmp ne i32 %i.aeo, 0
  %i.aeq = select i1 %.not.i8.i.i.us.i316, i1 true, i1 %i.aep
  br i1 %i.aeq, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i320, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i320: ; preds = %bb.bv
  %.not.i9.i.i.us.i321 = icmp eq i32 %i.aeo, 0
  %i.aer = icmp sgt i32 %i.aeo, 0
  %i.aes = icmp slt i32 %storemerge38434, %i.aem
  %.0.i10.i.i.us.i322 = select i1 %.not.i9.i.i.us.i321, i1 %i.aes, i1 %i.aer
  br i1 %.0.i10.i.i.us.i322, label %bb.bw, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317

.split.us.i323:                                   ; preds = %.lr.ph.split.us.i314
  %.not.i7.i.i.us.i324 = icmp eq i32 %i.zq, %i.aei
  %i.aet = icmp slt i32 %i.zq, %i.aei
  %i.aeu = sext i32 %i.aef to i64
  %i.aev = icmp slt i64 %indvars.iv, %i.aeu
  %.0.i.i.i.us.i325 = select i1 %.not.i7.i.i.us.i324, i1 %i.aev, i1 %i.aet
  br i1 %.0.i.i.i.us.i325, label %bb.bw, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317

bb.bw:                                            ; preds = %.split.us.i323, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i320
  br label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317: ; preds = %bb.bw, %.split.us.i323, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i320, %bb.bv
  %.sink.i318 = phi i64 [ 16, %bb.bw ], [ 24, %bb.bv ], [ 24, %.split.us.i323 ], [ 24, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i320 ]
  %.0.i.i30.us.i = phi i1 [ true, %bb.bw ], [ false, %bb.bv ], [ false, %.split.us.i323 ], [ false, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.us.i320 ]
  %i.aew = getelementptr inbounds nuw i8, ptr %.02839.us.i, i64 %.sink.i318
  %.028.us.i = load ptr, ptr %i.aew, align 8, !tbaa !158 ; 2 uses
  %.not.us.i319 = icmp eq ptr %.028.us.i, null
  br i1 %.not.us.i319, label %._crit_edge.i, label %.lr.ph.split.us.i314, !llvm.loop !159

.lr.ph.split.i301:                                ; preds = %.lr.ph.split.i301.preheader, %bb.by
  %.02839.i = phi ptr [ %.028.i, %bb.by ], [ %.02839.i.ph, %.lr.ph.split.i301.preheader ] ; 7 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.02839.i, i64 32
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !11 ; 2 uses
  %i.aez = zext i32 %i.aey to i64
  %.not.i.i.i.i302 = icmp ne i64 %indvars.iv, %i.aez
  %i.afa = getelementptr inbounds nuw i8, ptr %.02839.i, i64 36
  %i.afb = load i32, ptr %i.afa, align 4          ; 3 uses
  %i.afc = icmp ne i32 %i.zq, %i.afb
  %i.afd = select i1 %.not.i.i.i.i302, i1 true, i1 %i.afc
  br i1 %i.afd, label %.split.i311, label %bb.bx

.split.i311:                                      ; preds = %.lr.ph.split.i301
  %.not.i7.i.i.i312 = icmp eq i32 %i.zq, %i.afb
  %i.afe = icmp slt i32 %i.zq, %i.afb
  %i.aff = sext i32 %i.aey to i64
  %i.afg = icmp slt i64 %indvars.iv, %i.aff
  %.0.i.i.i.i313 = select i1 %.not.i7.i.i.i312, i1 %i.afg, i1 %i.afe
  br i1 %.0.i.i.i.i313, label %bb.by, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i304

bb.bx:                                            ; preds = %.lr.ph.split.i301
  %i.afh = getelementptr inbounds nuw i8, ptr %.02839.i, i64 40
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.i303 = icmp ne i32 %storemerge38434, %i.afi
  %i.afj = getelementptr inbounds nuw i8, ptr %.02839.i, i64 44
  %i.afk = load i32, ptr %i.afj, align 4          ; 3 uses
  %i.afl = icmp ne i32 %i.afk, 0
  %i.afm = select i1 %.not.i8.i.i.i303, i1 true, i1 %i.afl
  br i1 %i.afm, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i308, label %.split33.i

.split33.i:                                       ; preds = %bb.bx
  %i.afn = getelementptr inbounds nuw i8, ptr %.02839.i, i64 48
  %i.afo = load i8, ptr %i.afn, align 4, !tbaa !14, !range !17, !noundef !18
  %i.afp = trunc nuw i8 %i.afo to i1
  br i1 %i.afp, label %bb.by, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i304

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i308: ; preds = %bb.bx
  %.not.i9.i.i.i309 = icmp eq i32 %i.afk, 0
  %i.afq = icmp sgt i32 %i.afk, 0
  %i.afr = icmp slt i32 %storemerge38434, %i.afi
  %.0.i10.i.i.i310 = select i1 %.not.i9.i.i.i309, i1 %i.afr, i1 %i.afq
  br i1 %.0.i10.i.i.i310, label %bb.by, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i304

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i304: ; preds = %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i308, %.split33.i, %.split.i311
  br label %bb.by

bb.by:                                            ; preds = %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i304, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i308, %.split33.i, %.split.i311
  %.sink49.i = phi i64 [ 24, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i304 ], [ 16, %.split33.i ], [ 16, %.split.i311 ], [ 16, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i308 ]
  %.0.i.i30.i = phi i1 [ false, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.i304 ], [ true, %.split33.i ], [ true, %.split.i311 ], [ true, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i308 ]
  %i.afs = getelementptr inbounds nuw i8, ptr %.02839.i, i64 %.sink49.i
  %.028.i = load ptr, ptr %i.afs, align 8, !tbaa !158 ; 2 uses
  %.not.i305 = icmp eq ptr %.028.i, null
  br i1 %.not.i305, label %._crit_edge.i, label %.lr.ph.split.i301, !llvm.loop !159

._crit_edge.i:                                    ; preds = %bb.by, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317
  %.027.lcssa.i = phi ptr [ %.02839.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317 ], [ %.02839.i, %bb.by ] ; 3 uses
  %.0.lcssa.i = phi i1 [ %.0.i.i30.us.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.thread.us.i317 ], [ %.0.i.i30.i, %bb.by ]
  br i1 %.0.lcssa.i, label %._crit_edge.thread.i, label %bb.ca

._crit_edge.thread.i:                             ; preds = %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread, %._crit_edge.i, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread
  %.027.lcssa47.i = phi ptr [ %.027.lcssa.i, %._crit_edge.i ], [ %i.cp, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread ], [ %i.cp, %_ZNKSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.thread.thread ] ; 4 uses
  %i.aft = load ptr, ptr %i.cq, align 8, !tbaa !154
  %i.afu = icmp eq ptr %.027.lcssa47.i, %i.aft
  br i1 %i.afu, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge.thread.i
  %i.afv = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.027.lcssa47.i) #44
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge.i
  %.027.lcssa46.i = phi ptr [ %.027.lcssa47.i, %bb.bz ], [ %.027.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.013.0.i = phi ptr [ %i.afv, %bb.bz ], [ %.027.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 32
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !11 ; 2 uses
  %i.afy = zext i32 %i.afx to i64
  %.not.i.i.i5.i = icmp ne i64 %indvars.iv, %i.afy
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 36
  %i.aga = load i32, ptr %i.afz, align 4          ; 3 uses
  %i.agb = icmp ne i32 %i.aga, %i.zq
  %i.agc = select i1 %.not.i.i.i5.i, i1 true, i1 %i.agb
  br i1 %i.agc, label %.split35.i, label %bb.cb

.split35.i:                                       ; preds = %bb.ca
  %.not.i7.i.i10.i = icmp eq i32 %i.aga, %i.zq
  %i.agd = icmp slt i32 %i.aga, %i.zq
  %i.age = sext i32 %i.afx to i64
  %i.agf = icmp sgt i64 %indvars.iv, %i.age
  %.0.i.i.i11.i = select i1 %.not.i7.i.i10.i, i1 %i.agf, i1 %i.agd
  br i1 %.0.i.i.i11.i, label %bb.cd, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

bb.cb:                                            ; preds = %bb.ca
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 40
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i6.i = icmp ne i32 %i.agh, %storemerge38434
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 44
  %i.agj = load i32, ptr %i.agi, align 4          ; 3 uses
  %i.agk = icmp ne i32 %i.agj, 0
  %i.agl = select i1 %.not.i8.i.i6.i, i1 true, i1 %i.agk
  br i1 %i.agl, label %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.agm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 48
  %i.agn = load i8, ptr %i.agm, align 4, !tbaa !14, !range !17, !noundef !18
  %i.ago = trunc nuw i8 %i.agn to i1
  %brmerge = or i1 %.not416, %i.ago
  br i1 %brmerge, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit, label %bb.cd

_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i: ; preds = %bb.cb
  %.not.i9.i.i8.i = icmp eq i32 %i.agj, 0
  %i.agp = icmp slt i32 %i.agj, 0
  %i.agq = icmp slt i32 %i.agh, %storemerge38434
  %.0.i10.i.i9.i = select i1 %.not.i9.i.i8.i, i1 %i.agq, i1 %i.agp
  br i1 %.0.i10.i.i9.i, label %bb.cd, label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.thread.i, %.split35.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i
  %.sroa.4.0.i.ph = phi ptr [ %.027.lcssa46.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i ], [ %.027.lcssa46.i, %.split35.i ], [ %.027.lcssa46.i, %bb.cc ], [ %.027.lcssa47.i, %._crit_edge.thread.i ] ; 7 uses
  %i.agr = icmp eq ptr %.sroa.4.0.i.ph, %i.cp
  br i1 %i.agr, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !11 ; 2 uses
  %i.agu = zext i32 %i.agt to i64
  %.not.i.i.i.i.i286 = icmp ne i64 %indvars.iv, %i.agu
  %i.agv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 36
  %i.agw = load i32, ptr %i.agv, align 4          ; 3 uses
  %i.agx = icmp ne i32 %i.zq, %i.agw
  %i.agy = select i1 %.not.i.i.i.i.i286, i1 true, i1 %i.agx
  br i1 %i.agy, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %.not.i7.i.i.i.i290 = icmp eq i32 %i.zq, %i.agw
  %i.agz = icmp slt i32 %i.zq, %i.agw
  %i.aha = sext i32 %i.agt to i64
  %i.ahb = icmp slt i64 %indvars.iv, %i.aha
  %.0.i.i.i.i.i291 = select i1 %.not.i7.i.i.i.i290, i1 %i.ahb, i1 %i.agz
  br label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

bb.cg:                                            ; preds = %bb.ce
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !11 ; 2 uses
  %.not.i8.i.i.i.i287 = icmp ne i32 %storemerge38434, %i.ahd
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 44
  %i.ahf = load i32, ptr %i.ahe, align 4          ; 3 uses
  %i.ahg = icmp ne i32 %i.ahf, 0
  %i.ahh = select i1 %.not.i8.i.i.i.i287, i1 true, i1 %i.ahg
  br i1 %i.ahh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %.not.i9.i.i.i.i288 = icmp eq i32 %i.ahf, 0
  %i.ahi = icmp sgt i32 %i.ahf, 0
  %i.ahj = icmp slt i32 %storemerge38434, %i.ahd
  %.0.i10.i.i.i.i289 = select i1 %.not.i9.i.i.i.i288, i1 %i.ahj, i1 %i.ahi
  br label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

bb.ci:                                            ; preds = %bb.cg
  br i1 %18, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 48
  %i.ahl = load i8, ptr %i.ahk, align 4, !tbaa !14, !range !17, !noundef !18
  %i.ahm = trunc nuw i8 %i.ahl to i1
  br label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i: ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.cd
  %i.ahn = phi i1 [ %i.ahm, %bb.cj ], [ true, %bb.cd ], [ %.0.i.i.i.i.i291, %bb.cf ], [ %.0.i10.i.i.i.i289, %bb.ch ], [ false, %bb.ci ]
  %i.aho = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #43 ; 4 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 32
  store i64 %.sroa.0330.0.insert.insert, ptr %i.ahp, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aho, i64 40
  store i64 %i.ff, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aho, i64 48
  store i8 %19, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !160
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ahn, ptr noundef nonnull %i.aho, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.cp) #37
  %i.ahq = load i64, ptr %i.cr, align 8, !tbaa !156
  %i.ahr = add i64 %i.ahq, 1
  store i64 %i.ahr, ptr %i.cr, align 8, !tbaa !156
  br label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, %bb.cc, %.split35.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i, %.split6.i.i, %bb.bu, %.split.i.i
  br i1 %i.zr, label %bb.ck, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161

bb.ck:                                            ; preds = %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit
  %i.ahs = load ptr, ptr %i.cs, align 8, !tbaa !230 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8 ; 3 uses
  %.02224.i.i = load ptr, ptr %i.aht, align 8, !tbaa !158 ; 2 uses
  %.not25.i.i = icmp eq ptr %.02224.i.i, null
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ck, %.lr.ph.i.i
  %.02226.i.i = phi ptr [ %.022.i.i, %.lr.ph.i.i ], [ %.02224.i.i, %bb.ck ] ; 5 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 32
  %i.ahw = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 36
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !13 ; 3 uses
  %.not.i.i.i.i292 = icmp eq i32 %i.zq, %i.ahx
  %i.ahy = icmp slt i32 %i.zq, %i.ahx
  %i.ahz = load i32, ptr %i.ahv, align 4
  %i.aia = sext i32 %i.ahz to i64                 ; 2 uses
  %i.aib = icmp slt i64 %indvars.iv, %i.aia
  %.0.i.i.i.i293 = select i1 %.not.i.i.i.i292, i1 %i.aib, i1 %i.ahy ; 2 uses
  %.in.v.i.i = select i1 %.0.i.i.i.i293, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 %.in.v.i.i
  %.022.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !158 ; 2 uses
  %.not.i.i294 = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i294, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !410

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %.0.i.i.i.i293, label %._crit_edge.thread.i.i, label %bb.cm

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.ck
  %.021.lcssa31.i.i = phi ptr [ %.02226.i.i, %._crit_edge.i.i ], [ %i.ahu, %bb.ck ] ; 4 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahs, i64 24
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !154
  %i.aie = icmp eq ptr %.021.lcssa31.i.i, %i.aid
  br i1 %i.aie, label %select.unfold.i, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.thread.i.i
  %i.aif = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa31.i.i) #44 ; 2 uses
  %.phi.trans.insert.i298 = getelementptr inbounds nuw i8, ptr %i.aif, i64 36
  %.pre.i299 = load i32, ptr %.phi.trans.insert.i298, align 4, !tbaa !13
  %.phi.trans.insert22.i = getelementptr inbounds nuw i8, ptr %i.aif, i64 32
  %.pre23.i = load i32, ptr %.phi.trans.insert22.i, align 4
  %.pre463 = sext i32 %.pre23.i to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge.i.i
  %.pre-phi = phi i64 [ %.pre463, %bb.cl ], [ %i.aia, %._crit_edge.i.i ]
  %i.aig = phi i32 [ %.pre.i299, %bb.cl ], [ %i.ahx, %._crit_edge.i.i ] ; 2 uses
  %.021.lcssa30.i.i = phi ptr [ %.021.lcssa31.i.i, %bb.cl ], [ %.02226.i.i, %._crit_edge.i.i ]
  %.not.i.i5.i.i = icmp eq i32 %i.aig, %i.zq
  %i.aih = icmp slt i32 %i.aig, %i.zq
  %i.aii = icmp slt i64 %.pre-phi, %indvars.iv
  %.0.i.i6.i.i = select i1 %.not.i.i5.i.i, i1 %i.aii, i1 %i.aih
  br i1 %.0.i.i6.i.i, label %select.unfold.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161

select.unfold.i:                                  ; preds = %bb.cm, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.021.lcssa31.i.i, %._crit_edge.thread.i.i ], [ %.021.lcssa30.i.i, %bb.cm ] ; 4 uses
  %i.aij = icmp eq ptr %.sroa.4.0.i.ph.i, %i.ahu
  br i1 %i.aij, label %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %select.unfold.i
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.ail = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !13 ; 2 uses
  %.not.i.i.i6.i = icmp eq i32 %i.zq, %i.aim
  %i.ain = icmp slt i32 %i.zq, %i.aim
  %i.aio = load i32, ptr %i.aik, align 4
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = icmp slt i64 %indvars.iv, %i.aip
  %.0.i.i.i7.i = select i1 %.not.i.i.i6.i, i1 %i.aiq, i1 %i.ain
  br label %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i: ; preds = %bb.cn, %select.unfold.i
  %i.air = phi i1 [ %.0.i.i.i7.i, %bb.cn ], [ true, %select.unfold.i ]
  %i.ais = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #43 ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 32
  store i64 %.sroa.0330.0.insert.insert, ptr %i.ait, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.air, ptr noundef nonnull %i.ais, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ahu) #37
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 40 ; 2 uses
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !156
  %i.aiw = add i64 %i.aiv, 1
  store i64 %i.aiw, ptr %i.aiu, align 8, !tbaa !156
  br label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161

_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161: ; preds = %bb.bj, %bb.bg, %bb.bh, %bb.bi, %.thread7.i160, %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit, %bb.cm, %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, %bb.bf, %.preheader.i156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aix = load ptr, ptr %i.v, align 8, !tbaa !330 ; 3 uses
  %i.aiy = getelementptr inbounds nuw [24 x i8], ptr %i.aix, i64 %indvars.iv452 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !335
  %i.ajb = load ptr, ptr %i.aiy, align 8, !tbaa !332 ; 2 uses
  %i.ajc = ptrtoint ptr %i.aja to i64
  %i.ajd = ptrtoint ptr %i.ajb to i64
  %i.aje = sub i64 %i.ajc, %i.ajd
  %i.ajf = ashr exact i64 %i.aje, 5
  %i.ajg = icmp ugt i64 %i.ajf, %indvars.iv.next
  br i1 %i.ajg, label %bb.bf, label %._crit_edge, !llvm.loop !473

bb.co:                                            ; preds = %._crit_edge432.split
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ct) #37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ct, align 16, !tbaa !55
  store ptr null, ptr %i.cu, align 8, !tbaa !175
  store i8 0, ptr %i.cv, align 16, !tbaa !188
  store i8 0, ptr %i.cw, align 1, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i8 0, i64 32, i1 false)
  store ptr %i.cy, ptr %17, align 16, !tbaa !55
  %i.ajh = load i64, ptr %i.da, align 8
  %i.aji = getelementptr inbounds i8, ptr %17, i64 %i.ajh
  store ptr %i.cz, ptr %i.aji, align 8, !tbaa !55
  %i.ajj = load ptr, ptr %17, align 16, !tbaa !55
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 -24
  %i.ajl = load i64, ptr %i.ajk, align 8
  %i.ajm = getelementptr inbounds i8, ptr %17, i64 %i.ajl
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ajm, ptr noundef null) #37
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.ct, align 16, !tbaa !55
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %17, align 16, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dc, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #37
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.db, align 8, !tbaa !55
  store i32 16, ptr %i.de, align 8, !tbaa !190
  store ptr %i.dg, ptr %i.df, align 16, !tbaa !70
  store i64 0, ptr %i.dh, align 8, !tbaa !48
  store i8 0, ptr %i.dg, align 16, !tbaa !58
  %i.ajn = load ptr, ptr %17, align 16, !tbaa !55
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -24
  %i.ajp = load i64, ptr %i.ajo, align 8
  %i.ajq = getelementptr inbounds i8, ptr %17, i64 %i.ajp
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ajq, ptr noundef nonnull %i.db) #37
  %i.ajr = load ptr, ptr @_ZN4LogT6prefixB5cxx11E, align 8, !tbaa !44
  %i.ajs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LogT6prefixB5cxx11E, i64 8), align 8, !tbaa !48
  %i.ajt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.ajr, i64 noundef %i.ajs) #37 ; 2 uses
  %i.aju = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajt, ptr noundef nonnull @.str.85, i64 noundef 2) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.di, ptr %4, align 8, !tbaa !70
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 16, i8 noundef signext 32) #37
  %i.ajv = load ptr, ptr %4, align 8, !tbaa !44
  %i.ajw = load i64, ptr %i.dj, align 8, !tbaa !48
  %i.ajx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajt, ptr noundef %i.ajv, i64 noundef %i.ajw) #37 ; 0 uses
  %i.ajy = load ptr, ptr %4, align 8, !tbaa !44   ; 2 uses
  %i.ajz = icmp eq ptr %i.ajy, %i.di
  br i1 %i.ajz, label %_ZN4LogTC2Ej.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162: ; preds = %bb.co
  %i.aka = load i64, ptr %i.di, align 8, !tbaa !58
  %i.akb = add i64 %i.aka, 1
  call void @_ZdlPvm(ptr noundef %i.ajy, i64 noundef %i.akb) #40
  br label %_ZN4LogTC2Ej.exit

_ZN4LogTC2Ej.exit:                                ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.akc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.6, i64 noundef 1) #37 ; 0 uses
  %i.akd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %17, i64 noundef %i.dk) #37 ; 0 uses
  %i.ake = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.7, i64 noundef 2) #37 ; 0 uses
  %i.akf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %17, i64 noundef %i.ff) #37 ; 0 uses
  %i.akg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.8, i64 noundef 4) #37 ; 0 uses
  %i.akh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.9, i64 noundef 6) #37 ; 0 uses
  %i.aki = load ptr, ptr %i.vt, align 8, !tbaa !44
  %i.akj = load i64, ptr %i.wm, align 8, !tbaa !48
  %i.akk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.aki, i64 noundef %i.akj) #37 ; 0 uses
  %i.akl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.10, i64 noundef 10) #37 ; 0 uses
  %i.akm = load ptr, ptr %i.ap, align 8, !tbaa !330
  %i.akn = getelementptr inbounds nuw [24 x i8], ptr %i.akm, i64 %i.dk
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !332
  %i.akp = getelementptr inbounds nuw [32 x i8], ptr %i.ako, i64 %i.ff ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !44
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.aks = load i64, ptr %i.akr, align 8, !tbaa !48
  %i.akt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.akq, i64 noundef %i.aks) #37 ; 0 uses
  call void @_ZN4LogTD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %.lr.ph.i.i.i165.preheader

.lr.ph.i.i.i165.preheader:                        ; preds = %._crit_edge432.split, %_ZN4LogTC2Ej.exit
  %i.aku = load ptr, ptr %i.vt, align 8, !tbaa !44 ; 2 uses
  %i.akv = icmp eq ptr %i.aku, %i.we
end_hunk_1
