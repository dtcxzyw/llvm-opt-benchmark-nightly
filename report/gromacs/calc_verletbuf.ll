Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calc_verletbuf?download=true
inline.NumInlined: 1121
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL24getVerletBufferAtomtypesRK10gmx_mtop_tbb:bb.a
  %i.abw = icmp eq ptr %i.abu, %i.abv
  br i1 %i.abw, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.abx = load i64, ptr %i.abv, align 8, !tbaa !18
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abu, i64 noundef %i.aby) #27
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219, %bb.ce
  %.pn.i = phi { ptr, i32 } [ %i.abq, %bb.ce ], [ %i.abr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219 ], [ %i.abr, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.abz = load ptr, ptr %4, align 8, !tbaa !17   ; 2 uses
  %i.aca = icmp eq ptr %i.abz, %i.abk
  br i1 %i.aca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.acb = load i64, ptr %i.abk, align 8, !tbaa !18
  %i.acc = add i64 %i.acb, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.cd
  %.pn.pn.i = phi { ptr, i32 } [ %i.abp, %bb.cd ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

bb.ch:                                            ; preds = %bb.ca
  %i.acd = load i32, ptr %i.aba, align 4, !tbaa !28
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw [48 x i8], ptr %i.tv, i64 %i.ace
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 4
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !18 ; 2 uses
  %i.aci = fmul float %i.ach, %i.ach
  %i.acj = fdiv float %i.aci, %.0.i191
  %i.ack = fadd float %.081187.i, %i.acj          ; 2 uses
  %indvars.iv.next221.i = add nuw nsw i64 %indvars.iv220.i, 3 ; 2 uses
  %i.acl = trunc nuw i64 %indvars.iv.next221.i to i32
  %i.acm = icmp sgt i32 %i.aax, %i.acl
  br i1 %i.acm, label %bb.ca, label %._crit_edge191.i, !llvm.loop !294

._crit_edge191.i:                                 ; preds = %bb.ch, %bb.bz
  %.081.lcssa.i = phi float [ 0.000000e+00, %bb.bz ], [ %i.ack, %bb.ch ]
  %i.acn = fdiv float 1.000000e+00, %.081.lcssa.i
  %i.aco = sext i32 %i.tz to i64
  %i.acp = getelementptr inbounds [4 x i8], ptr %.sroa.0233.0, i64 %i.aco
  store float %i.acn, ptr %i.acp, align 4, !tbaa !27
  %i.acq = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2384), align 8, !tbaa !233
  %i.acr = add nsw i32 %i.acq, 1
  %i.acs = add nsw i32 %i.aaw, -1
  %i.act = mul nsw i32 %i.acr, %i.acs
  %i.acu = sext i32 %i.act to i64
  %i.acv = add i64 %.092193.i, %i.acu
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit120.i

_ZNSt6vectorIfSaIfEED2Ev.exit120.i:               ; preds = %._crit_edge191.i, %.thread.i
  %.val111.pre223.i = phi i32 [ 74, %._crit_edge191.i ], [ %.val111.pre223.pre.i, %.thread.i ] ; 2 uses
  %.397.i = phi i32 [ %.195192.i, %._crit_edge191.i ], [ %.296163.i, %.thread.i ] ; 2 uses
  %.193.i = phi i64 [ %i.acv, %._crit_edge191.i ], [ %.092193.i, %.thread.i ]
  %i.acw = load i8, ptr @gmx_debug_at, align 1, !tbaa !308, !range !309, !noundef !243
  %i.acx = trunc nuw i8 %i.acw to i1
  br i1 %i.acx, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit120.i
  %i.acy = load ptr, ptr @debug, align 8, !tbaa !132
  %i.acz = sext i32 %.val111.pre223.i to i64
  %i.ada = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.acz
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !310
  %i.add = sext i32 %i.tz to i64
  %i.ade = getelementptr inbounds [4 x i8], ptr %.sroa.0233.0, i64 %i.add
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !27
  %i.adg = fpext float %i.adf to double
  %i.adh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.acy, ptr noundef nonnull @.str.39, i32 noundef %i.tz, ptr noundef %i.adc, double noundef %i.adg) #26 ; 0 uses
  %.val111.pre.i = load i32, ptr %.sroa.0144.0198.i, align 8, !tbaa !245
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNSt6vectorIfSaIfEED2Ev.exit120.i
  %.val111.pre223226.i = phi i32 [ %.val111.pre223.i, %_ZNSt6vectorIfSaIfEED2Ev.exit120.i ], [ %.val111.pre.i, %bb.ci ] ; 2 uses
  %i.adi = sext i32 %.val111.pre223226.i to i64
  %i.adj = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  %i.adl = load i32, ptr %i.adk, align 8, !tbaa !233
  %i.adm = add nsw i32 %i.adl, 1
  %i.adn = sext i32 %i.adm to i64
  %i.ado = add i64 %.193.i, %i.adn                ; 2 uses
  %i.adp = load ptr, ptr %i.tf, align 8, !tbaa !242, !nonnull !243, !align !244 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !218
  %i.ads = load ptr, ptr %i.adp, align 8, !tbaa !219 ; 2 uses
  %i.adt = ptrtoint ptr %i.adr to i64
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = sub i64 %i.adt, %i.adu
  %i.adw = ashr exact i64 %i.adv, 2
  %i.adx = icmp ult i64 %i.ado, %i.adw
  br i1 %i.adx, label %.lr.ph194.i, label %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i, !llvm.loop !295

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bu, %bb.bt, %.loopexit.split-lp.i, %.loopexit.i
  %.pn109.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.yp, %bb.bu ], [ %i.yp, %bb.bt ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i121.i = icmp eq ptr %.sroa.0147.1.i, null
  br i1 %.not.i.i.i121.i, label %.body, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.ady = ptrtoint ptr %.sroa.11.1.i to i64
  %i.adz = ptrtoint ptr %.sroa.0147.1.i to i64
  %i.aea = sub i64 %i.ady, %i.adz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.1.i, i64 noundef %i.aea) #27
  br label %.body

bb.cl:                                            ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i
  %i.aeb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.tn, ptr noundef nonnull @.str.40, i32 noundef %.094.lcssa.i) #26 ; 0 uses
  br label %_ZL16get_vsite_massesRK13gmx_moltype_tRK14gmx_ffparams_tbN3gmx8ArrayRefIfEE.exit

_ZL16get_vsite_massesRK13gmx_moltype_tRK14gmx_ffparams_tbN3gmx8ArrayRefIfEE.exit: ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i, %bb.cl
  %i.aec = load i32, ptr %i.hk, align 8, !tbaa !216 ; 2 uses
  %i.aed = icmp sgt i32 %i.aec, 0
  br i1 %i.aed, label %.lr.ph371, label %._crit_edge372

._crit_edge372:                                   ; preds = %bb.cs, %_ZL16get_vsite_massesRK13gmx_moltype_tRK14gmx_ffparams_tbN3gmx8ArrayRefIfEE.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0233.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge372
  %i.aee = ptrtoint ptr %.sroa.12.0 to i64
  %i.aef = sub i64 %i.aee, %i.rx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0233.0, i64 noundef %i.aef) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge372, %bb.cm
  %.not.i.i.i193 = icmp eq ptr %.sroa.0248.0, null
  br i1 %.not.i.i.i193, label %_ZNSt6vectorI33AtomNonbondedAndKineticPropertiesSaIS0_EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.aeg = ptrtoint ptr %.sroa.0248.0 to i64
  %i.aeh = sub i64 %.sroa.18.0, %i.aeg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0248.0, i64 noundef %i.aeh) #27
  br label %_ZNSt6vectorI33AtomNonbondedAndKineticPropertiesSaIS0_EED2Ev.exit

_ZNSt6vectorI33AtomNonbondedAndKineticPropertiesSaIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.cn
  %i.aei = getelementptr inbounds nuw i8, ptr %.sroa.0259.0374, i64 56 ; 2 uses
  %.not276 = icmp eq ptr %i.aei, %i.gl
  br i1 %.not276, label %._crit_edge377, label %bb.s

.loopexit285:                                     ; preds = %bb.ao
  %lpad.loopexit287 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit199

.loopexit.split-lp286:                            ; preds = %bb.an
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit199

.lr.ph371:                                        ; preds = %_ZL16get_vsite_massesRK13gmx_moltype_tRK14gmx_ffparams_tbN3gmx8ArrayRefIfEE.exit, %bb.cs
  %i.aej = phi i32 [ %i.afs, %bb.cs ], [ %i.aec, %_ZL16get_vsite_massesRK13gmx_moltype_tRK14gmx_ffparams_tbN3gmx8ArrayRefIfEE.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cs ], [ 0, %_ZL16get_vsite_massesRK13gmx_moltype_tRK14gmx_ffparams_tbN3gmx8ArrayRefIfEE.exit ] ; 4 uses
  %i.aek = load ptr, ptr %i.ic, align 8, !tbaa !217
  %i.ael = getelementptr inbounds nuw [36 x i8], ptr %i.aek, i64 %indvars.iv ; 4 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 20
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !307
  %i.aeo = icmp eq i32 %i.aen, 4
  br i1 %i.aeo, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.lr.ph371
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0233.0, i64 %indvars.iv
  br label %_ZL7getMassRK7t_atomsib.exit195

bb.cp:                                            ; preds = %.lr.ph371
  br i1 %2, label %_ZL7getMassRK7t_atomsib.exit195.thread, label %_ZL7getMassRK7t_atomsib.exit195

_ZL7getMassRK7t_atomsib.exit195:                  ; preds = %bb.cp, %bb.co
  %.0114.in = phi ptr [ %i.aep, %bb.co ], [ %i.ael, %bb.cp ]
  %.0114 = load float, ptr %.0114.in, align 4, !tbaa !27 ; 2 uses
  %i.aeq = fcmp une float %.0114, 0.000000e+00
  br i1 %i.aeq, label %_ZL7getMassRK7t_atomsib.exit195.thread, label %bb.cs

_ZL7getMassRK7t_atomsib.exit195.thread:           ; preds = %bb.cp, %_ZL7getMassRK7t_atomsib.exit195
  %.0114274 = phi float [ %.0114, %_ZL7getMassRK7t_atomsib.exit195 ], [ 1.000000e+00, %bb.cp ]
  %i.aer = getelementptr inbounds nuw [28 x i8], ptr %.sroa.0248.0, i64 %indvars.iv ; 5 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %i.aet = load i16, ptr %i.aes, align 4, !tbaa !311
  %i.aeu = zext i16 %i.aet to i32
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !303 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !23
  %i.aez = fmul float %.0114274, %i.aey
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  store i32 %i.aeu, ptr %i.afa, align 4, !tbaa !250
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aer, i64 20
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !251
  %i.afd = call noundef float @llvm.copysign.f32(float 5.000000e-01, float %i.aew)
  %i.afe = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.aew, i64 1
  %i.aff = insertelement <2 x float> poison, float %i.aez, i64 0
  %i.afg = insertelement <2 x float> %i.aff, float %i.afc, i64 1
  %i.afh = fdiv <2 x float> %i.afe, %i.afg
  %i.afi = insertelement <2 x float> <float 5.000000e-01, float poison>, float %i.afd, i64 1
  %i.afj = fadd <2 x float> %i.afi, %i.afh
  %i.afk = fptosi <2 x float> %i.afj to <2 x i16>
  %i.afl = shufflevector <2 x i16> %i.afk, <2 x i16> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1>
  %i.afm = call <5 x i16> @llvm.smax.v5i16(<5 x i16> %i.afl, <5 x i16> <i16 1, i16 poison, i16 poison, i16 poison, i16 -32768>)
  call void @llvm.masked.store.v5i16.p0(<5 x i16> %i.afm, ptr align 4 %i.aer, <5 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(28) %i.aer, i64 28, i1 false), !tbaa.struct !312
  store i32 0, ptr %i.gx, align 4, !tbaa !314
  %i.afn = invoke { ptr, i8 } @_ZNSt10_HashtableI33AtomNonbondedAndKineticPropertiesSt4pairIKS0_iESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS3_EEES1_INS5_14_Node_iteratorIS3_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(32) %7)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %_ZL7getMassRK7t_atomsib.exit195.thread
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.afn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.afo = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 36 ; 2 uses
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !314
  %i.afq = add nsw i32 %i.afp, %i.hf
  store i32 %i.afq, ptr %i.afo, align 4, !tbaa !314
  %.pre471 = load i32, ptr %i.hk, align 8, !tbaa !216
  br label %bb.cs

bb.cr:                                            ; preds = %_ZL7getMassRK7t_atomsib.exit195.thread
  %i.afr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body

bb.cs:                                            ; preds = %bb.cq, %_ZL7getMassRK7t_atomsib.exit195
  %i.afs = phi i32 [ %.pre471, %bb.cq ], [ %i.aej, %_ZL7getMassRK7t_atomsib.exit195 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aft = sext i32 %i.afs to i64
  %i.afu = icmp slt i64 %indvars.iv.next, %i.aft
  br i1 %i.afu, label %.lr.ph371, label %._crit_edge372, !llvm.loop !296

.body:                                            ; preds = %bb.ck, %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.bg, %bb.bf, %bb.cr
  %.pn135.pn = phi { ptr, i32 } [ %.pn109.i, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ], [ %i.afr, %bb.cr ], [ %.pn109.i, %bb.ck ], [ %lpad.phi.i.i, %bb.bf ], [ %lpad.phi.i.i, %bb.bg ] ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %.sroa.0233.0, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIfSaIfEED2Ev.exit199, label %bb.ct

bb.ct:                                            ; preds = %.body
  %i.afv = ptrtoint ptr %.sroa.12.0 to i64
  %i.afw = sub i64 %i.afv, %i.rx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0233.0, i64 noundef %i.afw) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit199

_ZNSt6vectorIfSaIfEED2Ev.exit199:                 ; preds = %.loopexit285, %.loopexit.split-lp286, %.body, %bb.ct, %bb.am
  %.pn144.pn = phi { ptr, i32 } [ %i.oj, %bb.am ], [ %.pn135.pn, %.body ], [ %.pn135.pn, %bb.ct ], [ %lpad.loopexit287, %.loopexit285 ], [ %lpad.loopexit.split-lp288, %.loopexit.split-lp286 ] ; 2 uses
  %.not.i.i.i200 = icmp eq ptr %.sroa.0248.0, null
  br i1 %.not.i.i.i200, label %_ZNSt6vectorI33AtomNonbondedAndKineticPropertiesSaIS0_EED2Ev.exit201, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit199
  %i.afx = ptrtoint ptr %.sroa.0248.0 to i64
  %i.afy = sub i64 %.sroa.18.0, %i.afx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0248.0, i64 noundef %i.afy) #27
  br label %_ZNSt6vectorI33AtomNonbondedAndKineticPropertiesSaIS0_EED2Ev.exit201

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE7reserveEm.exit: ; preds = %.thread, %_ZNSt12_Vector_baseI17VerletbufAtomtypeSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.r
  %i.afz = phi ptr [ %i.gz, %_ZNSt12_Vector_baseI17VerletbufAtomtypeSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.gz, %bb.r ], [ %i.gs, %.thread ]
  %.promoted382 = phi ptr [ %i.hd, %_ZNSt12_Vector_baseI17VerletbufAtomtypeSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ null, %bb.r ], [ null, %.thread ]
  %.promoted = phi ptr [ %i.hb, %_ZNSt12_Vector_baseI17VerletbufAtomtypeSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ null, %bb.r ], [ null, %.thread ] ; 2 uses
  %i.aga = load ptr, ptr %i.gp, align 8, !tbaa !252 ; 2 uses
  %.not277378 = icmp eq ptr %i.aga, null
  br i1 %.not277378, label %._crit_edge381, label %.lr.ph380

.lr.ph380:                                        ; preds = %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE7reserveEm.exit
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.cv

._crit_edge381:                                   ; preds = %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE7reserveEm.exit
  %i.agc = phi ptr [ %.promoted, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE7reserveEm.exit ], [ %i.ahj, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  %i.agd = load i8, ptr @gmx_debug_at, align 1, !tbaa !308, !range !309, !noundef !243
  %i.age = trunc nuw i8 %i.agd to i1
  br i1 %i.age, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge381
  %i.agf = load ptr, ptr %0, align 8, !tbaa !136  ; 3 uses
  %.not385 = icmp eq ptr %i.agc, %i.agf
  br i1 %.not385, label %.loopexit, label %.lr.ph384.preheader

.lr.ph384.preheader:                              ; preds = %.preheader
  %i.agg = ptrtoint ptr %i.agc to i64
  %i.agh = ptrtoint ptr %i.agf to i64
  %i.agi = sub i64 %i.agg, %i.agh
  %i.agj = ashr exact i64 %i.agi, 5
  br label %.lr.ph384

.thread551:                                       ; preds = %bb.q, %_ZNSt12_Vector_baseI17VerletbufAtomtypeSaIS0_EE11_M_allocateEm.exit.i
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI33AtomNonbondedAndKineticPropertiesSaIS0_EED2Ev.exit201

bb.cv:                                            ; preds = %.lr.ph380, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit
  %i.agl = phi ptr [ %.promoted382, %.lr.ph380 ], [ %i.ahi, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit ] ; 5 uses
  %i.agm = phi ptr [ %.promoted, %.lr.ph380 ], [ %i.ahj, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit ] ; 4 uses
  %.sroa.0227.0379 = phi ptr [ %i.aga, %.lr.ph380 ], [ %i.ahk, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.sroa.0227.0379, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(28) %i.agn, i64 28, i1 false), !tbaa.struct !312
  %i.ago = getelementptr inbounds nuw i8, ptr %.sroa.0227.0379, i64 36
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !314 ; 2 uses
  %.not.i.i202 = icmp eq ptr %i.agm, %i.agl
  br i1 %.not.i.i202, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.agm, ptr noundef nonnull align 4 dereferenceable(28) %i.agn, i64 28, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agm, i64 28
  store i32 %i.agp, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !28
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 32 ; 2 uses
  store ptr %i.agq, ptr %i.agb, align 8, !tbaa !135
  br label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit

bb.cx:                                            ; preds = %bb.cv
  %i.agr = load ptr, ptr %0, align 8, !tbaa !136  ; 8 uses
  %i.ags = ptrtoint ptr %i.agl to i64
  %i.agt = ptrtoint ptr %i.agr to i64
  %i.agu = sub i64 %i.ags, %i.agt                 ; 4 uses
  %i.agv = icmp eq i64 %i.agu, 9223372036854775776
  br i1 %i.agv, label %bb.cy, label %_ZNKSt6vectorI17VerletbufAtomtypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #25
          to label %.noexc207 unwind label %.loopexit.split-lp

.noexc207:                                        ; preds = %bb.cy
  unreachable

_ZNKSt6vectorI17VerletbufAtomtypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cx
  %i.agw = ashr exact i64 %i.agu, 5               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.agw, i64 1)
  %i.agx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.agw ; 2 uses
  %i.agy = icmp ult i64 %i.agx, %i.agw
  %i.agz = call i64 @llvm.umin.i64(i64 %i.agx, i64 288230376151711743)
  %i.aha = select i1 %i.agy, i64 288230376151711743, i64 %i.agz ; 3 uses
  %.not.i.i.i.i203 = icmp ne i64 %i.aha, 0
  call void @llvm.assume(i1 %.not.i.i.i.i203)
  %i.ahb = shl nuw nsw i64 %i.aha, 5
  %i.ahc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahb) #29
          to label %.noexc208 unwind label %.loopexit278 ; 5 uses

.noexc208:                                        ; preds = %_ZNKSt6vectorI17VerletbufAtomtypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 %i.agu ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ahd, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0, i64 28, i1 false), !tbaa.struct !315
  %.sroa.6.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %i.ahd, i64 28
  store i32 %i.agp, ptr %.sroa.6.0..sroa_idx224, align 4, !tbaa !28
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.agr, %i.agl
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i204

.lr.ph.i.i.i.i.i.i204:                            ; preds = %.noexc208, %.lr.ph.i.i.i.i.i.i204
  %.012.i.i.i.i.i.i = phi ptr [ %i.ahf, %.lr.ph.i.i.i.i.i.i204 ], [ %i.ahc, %.noexc208 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ahe, %.lr.ph.i.i.i.i.i.i204 ], [ %i.agr, %.noexc208 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !315, !alias.scope !316
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i205 = icmp eq ptr %i.ahe, %i.agl
  br i1 %.not.i.i.i.i.i.i205, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i204, !llvm.loop !300

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i204, %.noexc208
  %.0.lcssa.i.i.i.i.i.i206 = phi ptr [ %i.ahc, %.noexc208 ], [ %i.ahf, %.lr.ph.i.i.i.i.i.i204 ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i206, i64 32 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.agr, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.agr, i64 noundef %i.agu) #27
  br label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.cz, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.ahc, ptr %0, align 8, !tbaa !136
  store ptr %i.ahg, ptr %i.agb, align 8, !tbaa !135
  %i.ahh = getelementptr inbounds nuw [32 x i8], ptr %i.ahc, i64 %i.aha ; 2 uses
  store ptr %i.ahh, ptr %i.afz, align 8, !tbaa !204
  br label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.cw
  %i.ahi = phi ptr [ %i.ahh, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.agl, %bb.cw ]
  %i.ahj = phi ptr [ %i.ahg, %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.agq, %bb.cw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.ahk = load ptr, ptr %.sroa.0227.0379, align 8, !tbaa !253 ; 2 uses
  %.not277 = icmp eq ptr %i.ahk, null
  br i1 %.not277, label %._crit_edge381, label %bb.cv

.loopexit278:                                     ; preds = %_ZNKSt6vectorI17VerletbufAtomtypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit.split-lp:                               ; preds = %bb.cy
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.lr.ph384:                                        ; preds = %.lr.ph384.preheader, %.lr.ph384
  %.0383 = phi i64 [ %i.aja, %.lr.ph384 ], [ 0, %.lr.ph384.preheader ] ; 3 uses
  %i.ahl = load ptr, ptr @debug, align 8, !tbaa !132
  %i.ahm = getelementptr inbounds nuw [32 x i8], ptr %i.agf, i64 %.0383 ; 8 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !23
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !250
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahm, i64 20
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !251
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahu = load i16, ptr %i.aht, align 4, !tbaa !254
  %i.ahv = sitofp i16 %i.ahu to float
end_hunk_0
