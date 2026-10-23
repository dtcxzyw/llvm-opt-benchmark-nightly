Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_sham?download=true
inline.NumInlined: 399
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL7do_shamPKcS0_S0_S0_S0_S0_S0_S0_iiPPfbiS2_fffPKfS4_ifPKiPibS1_bS1_:bb.a
.lr.ph1201:                                       ; preds = %bb.bi
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv1337 ; 6 uses
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv1337
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !151 ; 6 uses
  %i.zs = add nuw i32 %i.zo, 1
  %wide.trip.count1335 = zext i32 %i.zs to i64    ; 5 uses
  %min.iters.check1804 = icmp ult i32 %i.zo, 7
  br i1 %min.iters.check1804, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1201
  %i.zt = shl nuw nsw i64 %wide.trip.count1335, 2
  %scevgep = getelementptr i8, ptr %.1483, i64 %i.zt
  %bound0 = icmp ult ptr %.1483, %scevgep1803
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph1805

vector.ph1805:                                    ; preds = %vector.memcheck
  %n.vec1806 = and i64 %wide.trip.count1335, 4294967288 ; 3 uses
  %i.zu = load float, ptr %i.zp, align 4, !tbaa !18, !alias.scope !159
  %broadcast.splatinsert1807.a = insertelement <8 x float> poison, float %i.zu, i64 0
  %broadcast.splat1808.a = shufflevector <8 x float> %broadcast.splatinsert1807.a, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zv = fpext <8 x float> %broadcast.splat1808.a to <8 x double>
  %broadcast.splatinsert1809 = insertelement <8 x double> poison, double %i.zr, i64 0
  %broadcast.splat1810 = shufflevector <8 x double> %broadcast.splatinsert1809, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body1811

vector.body1811:                                  ; preds = %vector.body1811, %vector.ph1805
  %index1812 = phi i64 [ 0, %vector.ph1805 ], [ %index.next1813, %vector.body1811 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1805 ], [ %vec.ind.next, %vector.body1811 ] ; 2 uses
  %i.zw = uitofp nneg <8 x i32> %vec.ind to <8 x double>
  %i.zx = fdiv <8 x double> %i.zw, %broadcast.splat1810
  %i.zy = fadd <8 x double> %i.zx, %i.zv
  %i.zz = fptrunc <8 x double> %i.zy to <8 x float>
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.1483, i64 %index1812
  store <8 x float> %i.zz, ptr %i.aaa, align 4, !tbaa !18, !alias.scope !160, !noalias !159
  %index.next1813 = add nuw i64 %index1812, 8     ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.aab = icmp eq i64 %index.next1813, %n.vec1806
  br i1 %i.aab, label %middle.block1814, label %vector.body1811, !llvm.loop !92

middle.block1814:                                 ; preds = %vector.body1811
  %cmp.n1815 = icmp eq i64 %n.vec1806, %wide.trip.count1335
  br i1 %cmp.n1815, label %._crit_edge1202, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1201, %middle.block1814
  %indvars.iv1332.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1201 ], [ %n.vec1806, %middle.block1814 ] ; 3 uses
  %i.aac = zext nneg i32 %i.zo to i64
  %i.aad = sub nsw i64 %i.aac, %indvars.iv1332.ph
  %xtraiter2238.a = and i64 %wide.trip.count1335, 3 ; 2 uses
  %lcmp.mod2239.not.a = icmp eq i64 %xtraiter2238.a, 0
  br i1 %lcmp.mod2239.not.a, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv1332.prol = phi i64 [ %indvars.iv.next1333.prol, %scalar.ph.prol ], [ %indvars.iv1332.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aae = load float, ptr %i.zp, align 4, !tbaa !18
  %i.aaf = fpext float %i.aae to double
  %i.aag = trunc nuw nsw i64 %indvars.iv1332.prol to i32
  %i.aah = uitofp nneg i32 %i.aag to double
  %i.aai = fdiv double %i.aah, %i.zr
  %i.aaj = fadd double %i.aai, %i.aaf
  %i.aak = fptrunc double %i.aaj to float
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.1483, i64 %indvars.iv1332.prol
  store float %i.aak, ptr %i.aal, align 4, !tbaa !18
  %indvars.iv.next1333.prol = add nuw nsw i64 %indvars.iv1332.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2238.a
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !93

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1332.unr = phi i64 [ %indvars.iv1332.ph, %scalar.ph.preheader ], [ %indvars.iv.next1333.prol, %scalar.ph.prol ]
  %i.aam = icmp ult i64 %i.aad, 3
  br i1 %i.aam, label %._crit_edge1202, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1332 = phi i64 [ %indvars.iv.next1333.3, %scalar.ph ], [ %indvars.iv1332.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aan = load float, ptr %i.zp, align 4, !tbaa !18
  %i.aao = fpext float %i.aan to double
  %i.aap = trunc nuw nsw i64 %indvars.iv1332 to i32
  %i.aaq = uitofp nneg i32 %i.aap to double
  %i.aar = fdiv double %i.aaq, %i.zr
  %i.aas = fadd double %i.aar, %i.aao
  %i.aat = fptrunc double %i.aas to float
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.1483, i64 %indvars.iv1332
  store float %i.aat, ptr %i.aau, align 4, !tbaa !18
  %indvars.iv.next1333 = add nuw nsw i64 %indvars.iv1332, 1 ; 2 uses
  %i.aav = load float, ptr %i.zp, align 4, !tbaa !18
  %i.aaw = fpext float %i.aav to double
  %i.aax = trunc nuw nsw i64 %indvars.iv.next1333 to i32
  %i.aay = uitofp nneg i32 %i.aax to double
  %i.aaz = fdiv double %i.aay, %i.zr
  %i.aba = fadd double %i.aaz, %i.aaw
  %i.abb = fptrunc double %i.aba to float
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.1483, i64 %indvars.iv.next1333
  store float %i.abb, ptr %i.abc, align 4, !tbaa !18
  %indvars.iv.next1333.1 = add nuw nsw i64 %indvars.iv1332, 2 ; 2 uses
  %i.abd = load float, ptr %i.zp, align 4, !tbaa !18
  %i.abe = fpext float %i.abd to double
  %i.abf = trunc nuw nsw i64 %indvars.iv.next1333.1 to i32
  %i.abg = uitofp nneg i32 %i.abf to double
  %i.abh = fdiv double %i.abg, %i.zr
  %i.abi = fadd double %i.abh, %i.abe
  %i.abj = fptrunc double %i.abi to float
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.1483, i64 %indvars.iv.next1333.1
  store float %i.abj, ptr %i.abk, align 4, !tbaa !18
  %indvars.iv.next1333.2 = add nuw nsw i64 %indvars.iv1332, 3 ; 2 uses
  %i.abl = load float, ptr %i.zp, align 4, !tbaa !18
  %i.abm = fpext float %i.abl to double
  %i.abn = trunc nuw nsw i64 %indvars.iv.next1333.2 to i32
  %i.abo = uitofp nneg i32 %i.abn to double
  %i.abp = fdiv double %i.abo, %i.zr
  %i.abq = fadd double %i.abp, %i.abm
  %i.abr = fptrunc double %i.abq to float
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %.1483, i64 %indvars.iv.next1333.2
  store float %i.abr, ptr %i.abs, align 4, !tbaa !18
  %indvars.iv.next1333.3 = add nuw nsw i64 %indvars.iv1332, 4 ; 2 uses
  %exitcond1336.not.3 = icmp eq i64 %indvars.iv.next1333.3, %wide.trip.count1335
  br i1 %exitcond1336.not.3, label %._crit_edge1202, label %scalar.ph, !llvm.loop !94

._crit_edge1202:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1814, %bb.bi
  %indvars.iv.next1338 = add nuw nsw i64 %indvars.iv1337, 1 ; 2 uses
  %exitcond1341.not = icmp eq i64 %indvars.iv.next1338, %wide.trip.count1340
  br i1 %exitcond1341.not, label %._crit_edge1207, label %.lr.ph1206, !llvm.loop !95

._crit_edge1207:                                  ; preds = %._crit_edge1202, %._crit_edge1197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %7, ptr %i.i, align 8, !tbaa !16
  %i.abt = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.97, i32 noundef 303, i64 noundef range(i64 -2147483648, 2147483648) %i.gb, i64 noundef 16) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef zeroext 2)
  %i.abu = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull @.str.133)
          to label %bb.bj unwind label %bb.bl     ; 10 uses

bb.bj:                                            ; preds = %._crit_edge1207
  %i.abv = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.abw, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.abv, ptr noundef nonnull %i.abw) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.bk, %bb.bj
  %i.abx = load ptr, ptr %28, align 8, !tbaa !23  ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.abz = icmp eq ptr %i.abx, %i.aby
  br i1 %i.abz, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.aca = load i64, ptr %i.aby, align 8, !tbaa !24
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.abx, i64 noundef %i.acb) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  switch i32 %9, label %bb.bs [
    i32 0, label %.loopexit273.i
    i32 2, label %.preheader272.i
    i32 3, label %.preheader276.i
  ]

.preheader276.i:                                  ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.acc = load i32, ptr %22, align 4, !tbaa !10  ; 2 uses
  %i.acd = icmp sgt i32 %i.acc, 0
  br i1 %i.acd, label %.preheader275.lr.ph.i, label %.loopexit273.i

.preheader275.lr.ph.i:                            ; preds = %.preheader276.i
  %i.ace = load i32, ptr %i.yp, align 4, !tbaa !10 ; 3 uses
  %i.acf = icmp sgt i32 %i.ace, 0
  br i1 %i.acf, label %.preheader275.i, label %.loopexit273.i

.preheader272.i:                                  ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.acg = load i32, ptr %22, align 4, !tbaa !10  ; 2 uses
  %i.ach = icmp sgt i32 %i.acg, 0
  br i1 %i.ach, label %.preheader271.lr.ph.i, label %.loopexit273.i

.preheader271.lr.ph.i:                            ; preds = %.preheader272.i
  %i.aci = load i32, ptr %i.yp, align 4, !tbaa !10 ; 6 uses
  %i.acj = icmp sgt i32 %i.aci, 0
  br i1 %i.acj, label %.preheader271.preheader.i, label %.loopexit273.i

.preheader271.preheader.i:                        ; preds = %.preheader271.lr.ph.i
  %i.ack = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  br label %.preheader271.i

common.resume:                                    ; preds = %bb.eu, %bb.do, %bb.bl
  %common.resume.op = phi { ptr, i32 } [ %i.acl, %bb.bl ], [ %i.bpw, %bb.do ], [ %.pn543, %bb.eu ]
  resume { ptr, i32 } %common.resume.op

bb.bl:                                            ; preds = %._crit_edge1207
  %i.acl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %common.resume

.preheader271.i:                                  ; preds = %._crit_edge297.i, %.preheader271.preheader.i
  %i.acm = phi i32 [ %i.aho, %._crit_edge297.i ], [ %i.aci, %.preheader271.preheader.i ] ; 8 uses
  %i.acn = phi i32 [ %i.ahp, %._crit_edge297.i ], [ %i.aci, %.preheader271.preheader.i ] ; 8 uses
  %i.aco = phi i32 [ %i.ahq, %._crit_edge297.i ], [ %i.aci, %.preheader271.preheader.i ] ; 5 uses
  %i.acp = phi i32 [ %i.ahr, %._crit_edge297.i ], [ %i.aci, %.preheader271.preheader.i ] ; 5 uses
  %i.acq = phi i32 [ %i.aht, %._crit_edge297.i ], [ %i.acg, %.preheader271.preheader.i ] ; 3 uses
  %i.acr = phi i32 [ %i.ahs, %._crit_edge297.i ], [ %i.aci, %.preheader271.preheader.i ] ; 8 uses
  %.0151301.i = phi i32 [ %.pre-phi.i, %._crit_edge297.i ], [ 0, %.preheader271.preheader.i ] ; 10 uses
  %.0154300.i = phi i32 [ %.1155.lcssa.i, %._crit_edge297.i ], [ 0, %.preheader271.preheader.i ] ; 14 uses
  %i.acs = icmp sgt i32 %i.acr, 0
  br i1 %i.acs, label %.lr.ph296.i, label %.preheader271.._crit_edge297_crit_edge.i

.preheader271.._crit_edge297_crit_edge.i:         ; preds = %.preheader271.i
  %.pre364.i = add nuw nsw i32 %.0151301.i, 1
  br label %._crit_edge297.i

.lr.ph296.i:                                      ; preds = %.preheader271.i
  %i.act = icmp eq i32 %.0151301.i, 0
  %i.acu = add nsw i32 %.0151301.i, -1            ; 2 uses
  %i.acv = add nuw nsw i32 %.0151301.i, 1         ; 7 uses
  br i1 %i.act, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.preheader.i, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i: ; preds = %.lr.ph296.i
  %i.acw = mul nuw nsw i32 %.0151301.i, %i.acr
  %i.acx = sext i32 %i.acw to i64                 ; 3 uses
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.acx ; 2 uses
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !18 ; 5 uses
  %i.ada = mul nuw nsw i32 %i.acu, %i.acr
  %i.adb = sext i32 %i.ada to i64
  %i.adc = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.adb
  %i.add = load float, ptr %i.adc, align 4, !tbaa !18
  %i.ade = fcmp olt float %i.acz, %i.add
  br i1 %i.ade, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.peel.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i
  %i.adf = add nsw i32 %i.acq, -1                 ; 2 uses
  %76 = mul nuw nsw i32 %i.acv, %i.acr
  %i.adg = icmp eq i32 %.0151301.i, %i.adf
  br i1 %i.adg, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.peel.i, label %77

77:                                               ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.peel.i
  %78 = icmp slt i32 %.0151301.i, %i.adf
  br i1 %78, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i: ; preds = %77
  %i.adh = sext i32 %76 to i64
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.adh
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !18
  %i.adk = fcmp olt float %i.acz, %i.adj
  br i1 %i.adk, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.peel.i
  %i.adl = icmp eq i32 %i.acr, 1
  br i1 %i.adl, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.peel.i
  %i.adm = getelementptr i8, ptr %i.acy, i64 4
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !18
  %i.ado = fcmp olt float %i.acz, %i.adn
  br i1 %i.ado, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.peel.i
  %i.adp = fpext float %i.acz to double
  %i.adq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.175, i32 noundef %.0154300.i, i64 noundef %i.acx, double noundef %i.adp) #18 ; 0 uses
  %i.adr = sext i32 %.0154300.i to i64
  %i.ads = getelementptr inbounds [16 x i8], ptr %i.abt, i64 %i.adr ; 2 uses
  store i64 %i.acx, ptr %i.ads, align 8, !tbaa !161
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  store float %i.acz, ptr %i.adt, align 8, !tbaa !38
  %i.adu = add nsw i32 %.0154300.i, 1
  %.pre360.i = load i32, ptr %i.yp, align 4, !tbaa !10 ; 4 uses
  br label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i, %77, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i
  %79 = phi i32 [ %.pre360.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i ], [ %i.acm, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i ], [ %i.acm, %77 ], [ %i.acm, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i ], [ %i.acm, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i ] ; 2 uses
  %80 = phi i32 [ %.pre360.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i ], [ %i.acn, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i ], [ %i.acn, %77 ], [ %i.acn, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i ], [ %i.acn, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i ] ; 2 uses
  %81 = phi i32 [ %.pre360.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i ], [ %i.aco, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i ], [ %i.aco, %77 ], [ %i.aco, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i ], [ %i.aco, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i ] ; 2 uses
  %82 = phi i32 [ %.pre360.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i ], [ %i.acp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i ], [ %i.acp, %77 ], [ %i.acp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i ], [ %i.acp, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i ] ; 4 uses
  %.2156.peel.i = phi i32 [ %i.adu, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.peel.i ], [ %.0154300.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.peel.i ], [ %.0154300.i, %77 ], [ %.0154300.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.peel.i ], [ %.0154300.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.preheader.i ] ; 2 uses
  %i.adv = icmp sgt i32 %82, 1
  br i1 %i.adv, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i, label %._crit_edge297.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.preheader.i: ; preds = %.lr.ph296.i
  %i.adw = load float, ptr %i.gd, align 4, !tbaa !18 ; 4 uses
  %83 = mul nuw nsw i32 %i.acv, %i.acr
  %i.adx = icmp eq i32 %i.acq, 1
  br i1 %i.adx, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.peel.i, label %84

84:                                               ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.preheader.i
  %85 = icmp sgt i32 %i.acq, 1
  br i1 %85, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.peel.i: ; preds = %84
  %i.ady = zext nneg i32 %83 to i64
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.ady
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !18
  %i.aeb = fcmp olt float %i.adw, %i.aea
  br i1 %i.aeb, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.peel.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.preheader.i
  %i.aec = icmp eq i32 %i.acr, 1
  br i1 %i.aec, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.peel.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.peel.i
  %i.aed = load float, ptr %i.ack, align 4, !tbaa !18
  %i.aee = fcmp olt float %i.adw, %i.aed
  br i1 %i.aee, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.peel.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.peel.i
  %i.aef = fpext float %i.adw to double
  %i.aeg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.175, i32 noundef %.0154300.i, i64 noundef 0, double noundef %i.aef) #18 ; 0 uses
  %i.aeh = sext i32 %.0154300.i to i64
  %i.aei = getelementptr inbounds [16 x i8], ptr %i.abt, i64 %i.aeh ; 2 uses
  store i64 0, ptr %i.aei, align 8, !tbaa !161
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  store float %i.adw, ptr %i.aej, align 8, !tbaa !38
  %i.aek = add nsw i32 %.0154300.i, 1
  %.pre362.i = load i32, ptr %i.yp, align 4, !tbaa !10 ; 2 uses
  br label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.peel.i, %84
  %86 = phi i32 [ %.pre362.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.peel.i ], [ %i.acm, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.peel.i ], [ %i.acm, %84 ], [ %i.acm, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.peel.i ] ; 2 uses
  %87 = phi i32 [ %.pre362.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.peel.i ], [ %i.acn, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.peel.i ], [ %i.acn, %84 ], [ %i.acn, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.peel.i ] ; 6 uses
  %.2156.us.peel.i = phi i32 [ %i.aek, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.peel.i ], [ %.0154300.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.peel.i ], [ %.0154300.i, %84 ], [ %.0154300.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.peel.i ] ; 2 uses
  %i.ael = icmp sgt i32 %87, 1
  br i1 %i.ael, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.i, label %._crit_edge297.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i
  %i.aem = phi i32 [ %i.afp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %86, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ] ; 4 uses
  %indvars.iv.i582 = phi i64 [ %indvars.iv.next.i583, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ 1, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ] ; 6 uses
  %i.aen = phi i32 [ %i.afp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %87, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ] ; 2 uses
  %.1155295.us.i = phi i32 [ %.2156.us.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %.2156.us.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ] ; 7 uses
  %i.aeo = getelementptr [4 x i8], ptr %i.gd, i64 %indvars.iv.i582 ; 3 uses
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !18 ; 5 uses
  %i.aeq = load i32, ptr %22, align 4, !tbaa !10  ; 2 uses
  %i.aer = mul nuw nsw i32 %i.aen, %i.acv
  %i.aes = trunc nuw nsw i64 %indvars.iv.i582 to i32
  %i.aet = add nsw i32 %i.aer, %i.aes
  %i.aeu = icmp eq i32 %i.aeq, 1
  br i1 %i.aeu, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.us.i, label %bb.bm

bb.bm:                                            ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.i
  %i.aev = icmp sgt i32 %i.aeq, 1
  br i1 %i.aev, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.i: ; preds = %bb.bm
  %i.aew = sext i32 %i.aet to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.aew
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !18
  %i.aez = fcmp olt float %i.aep, %i.aey
  br i1 %i.aez, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.us.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.us.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.i
  %i.afa = getelementptr i8, ptr %i.aeo, i64 -4
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !18
  %i.afc = fcmp olt float %i.aep, %i.afb
  br i1 %i.afc, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.us.i
  %i.afd = add nsw i32 %i.aen, -1
  %i.afe = zext i32 %i.afd to i64
  %i.aff = icmp eq i64 %indvars.iv.i582, %i.afe
  br i1 %i.aff, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.i
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !18
  %i.afi = fcmp olt float %i.aep, %i.afh
  br i1 %i.afi, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.us.i
  %i.afj = fpext float %i.aep to double
  %i.afk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.175, i32 noundef %.1155295.us.i, i64 noundef %indvars.iv.i582, double noundef %i.afj) #18 ; 0 uses
  %i.afl = sext i32 %.1155295.us.i to i64
  %i.afm = getelementptr inbounds [16 x i8], ptr %i.abt, i64 %i.afl ; 2 uses
  store i64 %indvars.iv.i582, ptr %i.afm, align 8, !tbaa !161
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  store float %i.aep, ptr %i.afn, align 8, !tbaa !38
  %i.afo = add nsw i32 %.1155295.us.i, 1
  %.pre363.i = load i32, ptr %i.yp, align 4, !tbaa !10
  br label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.us.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.i, %bb.bm
  %i.afp = phi i32 [ %.pre363.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.i ], [ %i.aem, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.i ], [ %i.aem, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.us.i ], [ %i.aem, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.i ], [ %i.aem, %bb.bm ] ; 8 uses
  %.2156.us.i = phi i32 [ %i.afo, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.us.i ], [ %.1155295.us.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.us.i ], [ %.1155295.us.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.us.i ], [ %.1155295.us.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.us.i ], [ %.1155295.us.i, %bb.bm ] ; 2 uses
  %indvars.iv.next.i583 = add nuw nsw i64 %indvars.iv.i582, 1 ; 2 uses
  %i.afq = sext i32 %i.afp to i64
  %i.afr = icmp slt i64 %indvars.iv.next.i583, %i.afq
  br i1 %i.afr, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.us.i, label %._crit_edge297.i, !llvm.loop !96

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i
  %i.afs = phi i32 [ %i.ahj, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ], [ %79, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ] ; 5 uses
  %i.aft = phi i32 [ %i.ahk, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ], [ %80, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ] ; 5 uses
  %i.afu = phi i32 [ %i.ahl, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ], [ %81, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ] ; 5 uses
  %i.afv = phi i32 [ %i.ahl, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ], [ %82, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ] ; 4 uses
  %.1155295.i = phi i32 [ %.2156.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ], [ %.2156.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ] ; 8 uses
  %.0161294.i = phi i32 [ %i.ahm, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ], [ 1, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ] ; 5 uses
  %i.afw = mul nuw nsw i32 %i.afv, %.0151301.i
  %i.afx = add nsw i32 %.0161294.i, %i.afw        ; 3 uses
  %i.afy = sext i32 %i.afx to i64                 ; 3 uses
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.afy
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !18 ; 6 uses
  %i.agb = mul nuw nsw i32 %i.afv, %i.acu
  %i.agc = add nsw i32 %.0161294.i, %i.agb
  %i.agd = sext i32 %i.agc to i64
  %i.age = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.agd
  %i.agf = load float, ptr %i.age, align 4, !tbaa !18
  %i.agg = fcmp olt float %i.aga, %i.agf
  br i1 %i.agg, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i
  %i.agh = load i32, ptr %22, align 4, !tbaa !10
  %i.agi = add nsw i32 %i.agh, -1                 ; 2 uses
  %i.agj = mul nuw nsw i32 %i.afv, %i.acv
  %i.agk = add nsw i32 %.0161294.i, %i.agj
  %i.agl = icmp eq i32 %.0151301.i, %i.agi
  br i1 %i.agl, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i, label %bb.bn

bb.bn:                                            ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.i
  %i.agm = icmp slt i32 %.0151301.i, %i.agi
  br i1 %i.agm, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.i: ; preds = %bb.bn
  %i.agn = sext i32 %i.agk to i64
  %i.ago = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.agn
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !18
  %i.agq = fcmp olt float %i.aga, %i.agp
  br i1 %i.agq, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.thread.i
  %i.agr = add i32 %i.afx, -1
  %i.ags = sext i32 %i.agr to i64
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.ags
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !18
  %i.agv = fcmp olt float %i.aga, %i.agu
  br i1 %i.agv, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i
  %i.agw = add nsw i32 %i.afv, -1
  %i.agx = icmp eq i32 %.0161294.i, %i.agw
  br i1 %i.agx, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.i
  %i.agy = add i32 %i.afx, 1
  %i.agz = sext i32 %i.agy to i64
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.agz
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !18
  %i.ahc = fcmp olt float %i.aga, %i.ahb
  br i1 %i.ahc, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.thread.i
  %i.ahd = fpext float %i.aga to double
  %i.ahe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.175, i32 noundef %.1155295.i, i64 noundef %i.afy, double noundef %i.ahd) #18 ; 0 uses
  %i.ahf = sext i32 %.1155295.i to i64
  %i.ahg = getelementptr inbounds [16 x i8], ptr %i.abt, i64 %i.ahf ; 2 uses
  store i64 %i.afy, ptr %i.ahg, align 8, !tbaa !161
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  store float %i.aga, ptr %i.ahh, align 8, !tbaa !38
  %i.ahi = add nsw i32 %.1155295.i, 1
  %.pre361.i = load i32, ptr %i.yp, align 4, !tbaa !10 ; 3 uses
  br label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.i, %bb.bn, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i
  %i.ahj = phi i32 [ %.pre361.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.i ], [ %i.afs, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.i ], [ %i.afs, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i ], [ %i.afs, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.i ], [ %i.afs, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i ], [ %i.afs, %bb.bn ] ; 2 uses
  %i.ahk = phi i32 [ %.pre361.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.i ], [ %i.aft, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.i ], [ %i.aft, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i ], [ %i.aft, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.i ], [ %i.aft, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i ], [ %i.aft, %bb.bn ] ; 2 uses
  %i.ahl = phi i32 [ %.pre361.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.i ], [ %i.afu, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.i ], [ %i.afu, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i ], [ %i.afu, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.i ], [ %i.afu, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i ], [ %i.afu, %bb.bn ] ; 6 uses
  %.2156.i = phi i32 [ %i.ahi, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.thread.i ], [ %.1155295.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit203.i ], [ %.1155295.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit202.i ], [ %.1155295.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.i ], [ %.1155295.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i ], [ %.1155295.i, %bb.bn ] ; 2 uses
  %i.ahm = add nuw nsw i32 %.0161294.i, 1         ; 2 uses
  %i.ahn = icmp slt i32 %i.ahm, %i.ahl
  br i1 %i.ahn, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit.i, label %._crit_edge297.i, !llvm.loop !97

._crit_edge297.i:                                 ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i, %.preheader271.._crit_edge297_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre364.i, %.preheader271.._crit_edge297_crit_edge.i ], [ 1, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ], [ %i.acv, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ], [ %i.acv, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %i.acv, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ] ; 2 uses
  %i.aho = phi i32 [ %i.acm, %.preheader271.._crit_edge297_crit_edge.i ], [ %86, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ], [ %79, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ], [ %i.afp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %i.ahj, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ]
  %i.ahp = phi i32 [ %i.acn, %.preheader271.._crit_edge297_crit_edge.i ], [ %87, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ], [ %80, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ], [ %i.afp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %i.ahk, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ]
  %i.ahq = phi i32 [ %i.aco, %.preheader271.._crit_edge297_crit_edge.i ], [ %87, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ], [ %81, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ], [ %i.afp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %i.ahl, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ]
  %i.ahr = phi i32 [ %i.acp, %.preheader271.._crit_edge297_crit_edge.i ], [ %87, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ], [ %82, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ], [ %i.afp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %i.ahl, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ]
  %i.ahs = phi i32 [ %i.acr, %.preheader271.._crit_edge297_crit_edge.i ], [ %87, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ], [ %82, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ], [ %i.afp, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %i.ahl, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ]
  %.1155.lcssa.i = phi i32 [ %.0154300.i, %.preheader271.._crit_edge297_crit_edge.i ], [ %.2156.us.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.peel.i ], [ %.2156.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.peel.i ], [ %.2156.us.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.us.i ], [ %.2156.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit.thread265.i ] ; 2 uses
  %i.aht = load i32, ptr %22, align 4, !tbaa !10  ; 2 uses
  %i.ahu = icmp slt i32 %.pre-phi.i, %i.aht
  br i1 %i.ahu, label %.preheader271.i, label %.loopexit273.i, !llvm.loop !98

.preheader275.i:                                  ; preds = %.preheader275.lr.ph.i, %._crit_edge287.i
  %i.ahv = phi i32 [ %i.ani, %._crit_edge287.i ], [ %i.acc, %.preheader275.lr.ph.i ] ; 2 uses
  %i.ahw = phi i32 [ %i.anj, %._crit_edge287.i ], [ %i.ace, %.preheader275.lr.ph.i ] ; 3 uses
  %i.ahx = phi i32 [ %i.ank, %._crit_edge287.i ], [ %i.ace, %.preheader275.lr.ph.i ] ; 4 uses
  %.1290.i = phi i32 [ %.pre-phi368.i, %._crit_edge287.i ], [ 0, %.preheader275.lr.ph.i ] ; 10 uses
  %.3157289.i = phi i32 [ %.4158.lcssa.i, %._crit_edge287.i ], [ 0, %.preheader275.lr.ph.i ] ; 3 uses
  %i.ahy = icmp sgt i32 %i.ahx, 0
  br i1 %i.ahy, label %.preheader274.lr.ph.i, label %.preheader275.._crit_edge287_crit_edge.i

.preheader275.._crit_edge287_crit_edge.i:         ; preds = %.preheader275.i
  %.pre367.i = add nuw nsw i32 %.1290.i, 1
  br label %._crit_edge287.i

.preheader274.lr.ph.i:                            ; preds = %.preheader275.i
  %i.ahz = icmp eq i32 %.1290.i, 0                ; 2 uses
  %i.aia = add nsw i32 %.1290.i, -1               ; 2 uses
  %i.aib = add nuw nsw i32 %.1290.i, 1            ; 4 uses
  %i.aic = load i32, ptr %i.yu, align 4, !tbaa !10 ; 4 uses
  %i.aid = icmp sgt i32 %i.aic, 0
  br i1 %i.aid, label %.preheader274.i, label %._crit_edge287.i

.preheader274.i:                                  ; preds = %.preheader274.lr.ph.i, %._crit_edge.i580
  %i.aie = phi i32 [ %i.and, %._crit_edge.i580 ], [ %i.ahw, %.preheader274.lr.ph.i ]
  %i.aif = phi i32 [ %i.ane, %._crit_edge.i580 ], [ %i.aic, %.preheader274.lr.ph.i ] ; 8 uses
  %i.aig = phi i32 [ %i.anf, %._crit_edge.i580 ], [ %i.aic, %.preheader274.lr.ph.i ] ; 8 uses
  %.val200.peel.i = phi i32 [ %i.and, %._crit_edge.i580 ], [ %i.ahx, %.preheader274.lr.ph.i ] ; 4 uses
  %i.aih = phi i32 [ %i.ang, %._crit_edge.i580 ], [ %i.aic, %.preheader274.lr.ph.i ] ; 8 uses
  %.4158286.i = phi i32 [ %.5159.lcssa.i, %._crit_edge.i580 ], [ %.3157289.i, %.preheader274.lr.ph.i ] ; 11 uses
  %.1162285.i = phi i32 [ %.pre-phi366.i, %._crit_edge.i580 ], [ 0, %.preheader274.lr.ph.i ] ; 14 uses
  %i.aii = icmp sgt i32 %i.aih, 0
  br i1 %i.aii, label %.lr.ph.i581, label %.preheader274.._crit_edge_crit_edge.i

.preheader274.._crit_edge_crit_edge.i:            ; preds = %.preheader274.i
  %.pre365.i = add nuw nsw i32 %.1162285.i, 1
  br label %._crit_edge.i580

.lr.ph.i581:                                      ; preds = %.preheader274.i
  %i.aij = icmp eq i32 %.1162285.i, 0             ; 2 uses
  %i.aik = add nsw i32 %.1162285.i, -1            ; 2 uses
  %i.ail = add nuw nsw i32 %.1162285.i, 1         ; 3 uses
  %i.aim = mul nsw i32 %.val200.peel.i, %.1290.i  ; 3 uses
  %i.ain = add nsw i32 %.1162285.i, %i.aim
  %i.aio = mul nsw i32 %i.ain, %i.aih
  %i.aip = sext i32 %i.aio to i64                 ; 3 uses
  %i.aiq = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.aip ; 2 uses
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !18 ; 7 uses
  br i1 %i.ahz, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.peel.i, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.peel.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.peel.i: ; preds = %.lr.ph.i581
  %i.ais = mul nsw i32 %.val200.peel.i, %i.aia
  %i.ait = add nsw i32 %.1162285.i, %i.ais
  %i.aiu = mul nsw i32 %i.ait, %i.aih
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.aiv
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !18
  %i.aiy = fcmp olt float %i.air, %i.aix
  br i1 %i.aiy, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.peel.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.peel.i, %.lr.ph.i581
  %i.aiz = load i32, ptr %22, align 4, !tbaa !10
  %i.aja = add nsw i32 %i.aiz, -1                 ; 2 uses
  %i.ajb = mul nsw i32 %.val200.peel.i, %i.aib
  %i.ajc = add nsw i32 %.1162285.i, %i.ajb
  %i.ajd = mul nsw i32 %i.ajc, %i.aih
  %i.aje = icmp eq i32 %.1290.i, %i.aja
  br i1 %i.aje, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.peel.i, label %bb.bo

bb.bo:                                            ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.peel.i
  %i.ajf = icmp slt i32 %.1290.i, %i.aja
  br i1 %i.ajf, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.peel.i: ; preds = %bb.bo
  %i.ajg = sext i32 %i.ajd to i64
  %i.ajh = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.ajg
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !18
  %i.ajj = fcmp olt float %i.air, %i.aji
  br i1 %i.ajj, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.peel.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.peel.i
  br i1 %i.aij, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.thread.peel.i, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.peel.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.peel.i
  %i.ajk = add nsw i32 %i.aik, %i.aim
  %i.ajl = mul nsw i32 %i.ajk, %i.aih
  %i.ajm = sext i32 %i.ajl to i64
  %i.ajn = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.ajm
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !18
  %i.ajp = fcmp olt float %i.air, %i.ajo
  br i1 %i.ajp, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.thread.peel.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.peel.i
  %i.ajq = add nsw i32 %.val200.peel.i, -1        ; 2 uses
  %i.ajr = add nsw i32 %i.ail, %i.aim
  %i.ajs = mul nsw i32 %i.ajr, %i.aih
  %i.ajt = icmp eq i32 %.1162285.i, %i.ajq
  br i1 %i.ajt, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit208.thread.peel.i, label %bb.bp

bb.bp:                                            ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.thread.peel.i
  %i.aju = icmp slt i32 %.1162285.i, %i.ajq
  br i1 %i.aju, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit207.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit207.peel.i: ; preds = %bb.bp
  %i.ajv = sext i32 %i.ajs to i64
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.ajv
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !18
  %i.ajy = fcmp olt float %i.air, %i.ajx
  br i1 %i.ajy, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit208.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit208.thread.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit207.peel.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.thread.peel.i
  %i.ajz = icmp eq i32 %i.aih, 1
  br i1 %i.ajz, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.peel.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit208.thread.peel.i
  %i.aka = getelementptr i8, ptr %i.aiq, i64 4
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !18
  %i.akc = fcmp olt float %i.air, %i.akb
  br i1 %i.akc, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.thread.peel.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.thread.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.peel.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit208.thread.peel.i
  %i.akd = fpext float %i.air to double
  %i.ake = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.175, i32 noundef %.4158286.i, i64 noundef %i.aip, double noundef %i.akd) #18 ; 0 uses
  %i.akf = sext i32 %.4158286.i to i64
  %i.akg = getelementptr inbounds [16 x i8], ptr %i.abt, i64 %i.akf ; 2 uses
  store i64 %i.aip, ptr %i.akg, align 8, !tbaa !161
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  store float %i.air, ptr %i.akh, align 8, !tbaa !38
  %i.aki = add nsw i32 %.4158286.i, 1
  %.pre.i = load i32, ptr %i.yu, align 4, !tbaa !10 ; 2 uses
  br label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.thread.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit207.peel.i, %bb.bp, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.peel.i, %bb.bo, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.peel.i
  %i.akj = phi i32 [ %.pre.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.thread.peel.i ], [ %i.aif, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.peel.i ], [ %i.aif, %bb.bo ], [ %i.aif, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit207.peel.i ], [ %i.aif, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.peel.i ], [ %i.aif, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.peel.i ], [ %i.aif, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.peel.i ], [ %i.aif, %bb.bp ] ; 2 uses
  %i.akk = phi i32 [ %.pre.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.thread.peel.i ], [ %i.aig, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.peel.i ], [ %i.aig, %bb.bo ], [ %i.aig, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit207.peel.i ], [ %i.aig, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.peel.i ], [ %i.aig, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.peel.i ], [ %i.aig, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.peel.i ], [ %i.aig, %bb.bp ] ; 3 uses
  %.6.peel.i = phi i32 [ %i.aki, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.thread.peel.i ], [ %.4158286.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit209.peel.i ], [ %.4158286.i, %bb.bo ], [ %.4158286.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit207.peel.i ], [ %.4158286.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.peel.i ], [ %.4158286.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.peel.i ], [ %.4158286.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.peel.i ], [ %.4158286.i, %bb.bp ] ; 2 uses
  %i.akl = icmp sgt i32 %i.akk, 1
  br i1 %i.akl, label %.peel.next.i, label %._crit_edge.loopexit.i

.peel.next.i:                                     ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.i
  %i.akm = phi i32 [ %i.amy, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.i ], [ %i.akj, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i ] ; 8 uses
  %i.akn = phi i32 [ %i.amy, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.i ], [ %i.akk, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i ] ; 6 uses
  %.5159284.i = phi i32 [ %.6.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.i ], [ %.6.peel.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i ] ; 11 uses
  %.0160283.i = phi i32 [ %i.amz, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.i ], [ 1, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.peel.i ] ; 7 uses
  %.val200.i = load i32, ptr %i.yp, align 4, !tbaa !10 ; 4 uses
  %i.ako = mul nsw i32 %.val200.i, %.1290.i       ; 3 uses
  %i.akp = add nsw i32 %i.ako, %.1162285.i
  %i.akq = mul nsw i32 %i.akp, %i.akn
  %i.akr = add nsw i32 %i.akq, %.0160283.i        ; 3 uses
  %i.aks = sext i32 %i.akr to i64                 ; 3 uses
  %i.akt = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.aks
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !18 ; 8 uses
  br i1 %i.ahz, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.i, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.i: ; preds = %.peel.next.i
  %i.akv = mul nsw i32 %.val200.i, %i.aia
  %i.akw = add nsw i32 %i.akv, %.1162285.i
  %i.akx = mul nsw i32 %i.akw, %i.akn
  %i.aky = add nsw i32 %i.akx, %.0160283.i
  %i.akz = sext i32 %i.aky to i64
  %i.ala = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.akz
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !18
  %i.alc = fcmp olt float %i.aku, %i.alb
  br i1 %i.alc, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.i: ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.i, %.peel.next.i
  %i.ald = load i32, ptr %22, align 4, !tbaa !10
  %i.ale = add nsw i32 %i.ald, -1                 ; 2 uses
  %i.alf = mul nsw i32 %.val200.i, %i.aib
  %i.alg = add nsw i32 %i.alf, %.1162285.i
  %i.alh = mul nsw i32 %i.alg, %i.akn
  %i.ali = add nsw i32 %i.alh, %.0160283.i
  %i.alj = icmp eq i32 %.1290.i, %i.ale
  br i1 %i.alj, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.i, label %bb.bq

bb.bq:                                            ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.i
  %i.alk = icmp slt i32 %.1290.i, %i.ale
  br i1 %i.alk, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.i: ; preds = %bb.bq
  %i.all = sext i32 %i.ali to i64
  %i.alm = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.all
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !18
  %i.alo = fcmp olt float %i.aku, %i.aln
  br i1 %i.alo, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.i, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread267.i

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit204.thread.i
  br i1 %i.aij, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.thread.i, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit206.i: ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit205.thread.i
  %i.alp = add nsw i32 %i.ako, %i.aik
  %i.alq = mul nsw i32 %i.alp, %i.akn
  %i.alr = add nsw i32 %i.alq, %.0160283.i
  %i.als = sext i32 %i.alr to i64
  %i.alt = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.als
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !18
  %i.alv = fcmp olt float %i.aku, %i.alu
end_hunk_0
