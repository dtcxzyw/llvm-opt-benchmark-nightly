Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache?download=true
inline.NumInlined: 4941
inline.NumDeleted: 2050
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN14llama_kv_cacheC2ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbjjjj14llama_swa_typeP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_PKc:bb.a
  br i1 %.not19.i.i.i.i432, label %bb.hj, label %..loopexit_crit_edge21.i.i.i.i433, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i433:                ; preds = %bb.hk
  br label %.loopexit.i.i434, !llvm.loop !3

.loopexit.i.i434:                                 ; preds = %.lr.ph.i.i.i.i429, %..loopexit_crit_edge21.i.i.i.i433, %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store ptr %i.u, ptr %19, align 8, !tbaa !484
  %i.acj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc437 unwind label %bb.ib ; 5 uses

.noexc437:                                        ; preds = %.loopexit.i.i434
  store ptr null, ptr %i.acj, align 8, !tbaa !157
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  store i64 %storemerge2297831332, ptr %i.ack, align 8, !tbaa !489
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acl, i8 0, i64 24, i1 false)
  store ptr %i.acj, ptr %i.abl, align 8, !tbaa !268
  %i.acm = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 noundef %i.abw, i64 noundef %storemerge2297831332, ptr noundef nonnull %i.acj, i64 noundef 1)
          to label %_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.hl

_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc437
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %.loopexit546

bb.hl:                                            ; preds = %.noexc437
  %i.acn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit463

.loopexit546:                                     ; preds = %bb.hj, %_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.hi
  %.pn.i.i435 = phi ptr [ %i.acm, %_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.aca, %bb.hi ], [ %i.acf, %bb.hj ] ; 3 uses
  %.1.i.i436 = getelementptr inbounds nuw i8, ptr %.pn.i.i435, i64 16 ; 2 uses
  %i.aco = load ptr, ptr %.1.i.i436, align 8, !tbaa !269 ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.pn.i.i435, i64 24
  %i.acq = getelementptr inbounds nuw i8, ptr %.pn.i.i435, i64 32 ; 2 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !270
  store ptr %i.abr, ptr %.1.i.i436, align 8, !tbaa !269
  store ptr %i.abu, ptr %i.acp, align 8, !tbaa !490
  store ptr %i.abs, ptr %i.acq, align 8, !tbaa !270
  %.not.i.i.i.i.i440 = icmp eq ptr %i.aco, null
  br i1 %.not.i.i.i.i.i440, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.hm

bb.hm:                                            ; preds = %.loopexit546
  %i.acs = ptrtoint ptr %i.acr to i64
  %i.act = ptrtoint ptr %i.aco to i64
  %i.acu = sub i64 %i.acs, %i.act
  call void @_ZdlPvm(ptr noundef nonnull %i.aco, i64 noundef %i.acu) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.hm, %.loopexit546
  %i.acv = invoke i64 @ggml_tensor_overhead()
          to label %bb.hn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store i64 %i.acv, ptr %24, align 8, !tbaa !180
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !181
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !479
  %i.acw = invoke ptr @ggml_init(ptr noundef nonnull byval(%struct.ggml_init_params) align 8 %24)
          to label %bb.ho unwind label %bb.ic     ; 4 uses

bb.ho:                                            ; preds = %bb.hn
  store ptr %i.acw, ptr %23, align 8, !tbaa !189
  %i.acx = invoke ptr @ggml_new_tensor_2d(ptr noundef %i.acw, i32 noundef 0, i64 noundef %storemerge2297831332, i64 noundef %storemerge2297831332)
          to label %bb.hp unwind label %bb.id     ; 3 uses

bb.hp:                                            ; preds = %bb.ho
  %i.acy = load i64, ptr %i.w, align 8, !tbaa !104 ; 2 uses
  %i.acz = urem i64 %storemerge2297831332, %i.acy ; 3 uses
  %i.ada = load ptr, ptr %i.u, align 8, !tbaa !103
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %i.ada, i64 %i.acz
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i442 = icmp eq ptr %i.adc, null
  br i1 %.not.i.i.i.i442, label %.loopexit.i.i448, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !157 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !180
  %i.adg = icmp eq i64 %storemerge2297831332, %i.adf
  br i1 %i.adg, label %.loopexit, label %.lr.ph.i.i.i.i443

bb.hr:                                            ; preds = %bb.hs
  %i.adh = icmp eq i64 %storemerge2297831332, %i.adk
  br i1 %i.adh, label %.loopexit, label %.lr.ph.i.i.i.i443, !llvm.loop !3

.lr.ph.i.i.i.i443:                                ; preds = %bb.hq, %bb.hr
  %.020.i.i.i.i444 = phi ptr [ %i.adi, %bb.hr ], [ %i.add, %bb.hq ]
  %i.adi = load ptr, ptr %.020.i.i.i.i444, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i.i445 = icmp eq ptr %i.adi, null
  br i1 %.not18.i.i.i.i445, label %.loopexit.i.i448, label %bb.hs

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i443
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !180 ; 2 uses
  %i.adl = urem i64 %i.adk, %i.acy
  %.not19.i.i.i.i446 = icmp eq i64 %i.adl, %i.acz
  br i1 %.not19.i.i.i.i446, label %bb.hr, label %..loopexit_crit_edge21.i.i.i.i447, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i447:                ; preds = %bb.hs
  br label %.loopexit.i.i448, !llvm.loop !3

.loopexit.i.i448:                                 ; preds = %.lr.ph.i.i.i.i443, %..loopexit_crit_edge21.i.i.i.i447, %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  store ptr %i.u, ptr %18, align 8, !tbaa !484
  %i.adm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc452 unwind label %bb.id ; 5 uses

.noexc452:                                        ; preds = %.loopexit.i.i448
  store ptr null, ptr %i.adm, align 8, !tbaa !157
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  store i64 %storemerge2297831332, ptr %i.adn, align 8, !tbaa !489
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ado, i8 0, i64 24, i1 false)
  store ptr %i.adm, ptr %i.abm, align 8, !tbaa !268
  %i.adp = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 noundef %i.acz, i64 noundef %storemerge2297831332, ptr noundef nonnull %i.adm, i64 noundef 1)
          to label %_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i449 unwind label %bb.ht

_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i449: ; preds = %.noexc452
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.loopexit

bb.ht:                                            ; preds = %.noexc452
  %i.adq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.body453

.loopexit:                                        ; preds = %bb.hr, %_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i449, %bb.hq
  %.pn.i.i450 = phi ptr [ %i.adp, %_ZNSt10_HashtableIlSt4pairIKlSt6vectorIfSaIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i449 ], [ %i.add, %bb.hq ], [ %i.adi, %bb.hr ]
  %.1.i.i451 = getelementptr inbounds nuw i8, ptr %.pn.i.i450, i64 16
  %i.adr = load ptr, ptr %.1.i.i451, align 8, !tbaa !269 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acx, i64 248
  store ptr %i.adr, ptr %i.ads, align 8, !tbaa !171
  %i.adt = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !180 ; 6 uses
  %i.adv = trunc i64 %i.adu to i32                ; 3 uses
  %i.adw = load i32, ptr %i.acx, align 8, !tbaa !271 ; 2 uses
  %.not.i456 = icmp eq i32 %i.adw, 0              ; 2 uses
  br i1 %.not.i456, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %.loopexit
  %i.adx = mul i64 %i.adu, %i.adu
  %i.ady = and i64 %i.adx, 4294967295             ; 4 uses
  %i.adz = icmp ne i64 %i.ady, 0
  call void @llvm.assume(i1 %i.adz)
  %i.aea = shl nuw nsw i64 %i.ady, 2
  %i.aeb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aea) #28
          to label %.noexc458 unwind label %bb.id ; 5 uses

.noexc458:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  store float 0.000000e+00, ptr %i.aeb, align 4, !tbaa !263
  %i.aec = add nsw i64 %i.ady, -1                 ; 2 uses
  %i.aed = icmp eq i64 %i.aec, 0
  br i1 %i.aed, label %.noexc.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc458
  %i.aee = getelementptr i8, ptr %i.aeb, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.aec, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aee, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !263
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc458
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %i.ady
  %i.aeg = ptrtoint ptr %i.aef to i64
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.hu:                                            ; preds = %bb.hw
  %i.aeh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i457 = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not.i.i.i.i457, label %.body453, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aei = ptrtoint ptr %.sroa.0.1.i to i64
  %i.aej = sub i64 %.sroa.15.1.i, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.i, i64 noundef %i.aej) #31
  br label %.body453

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %.noexc.i, %.loopexit
  %.sroa.0.1.i = phi ptr [ null, %.loopexit ], [ %i.aeb, %.noexc.i ] ; 6 uses
  %.sroa.15.1.i = phi i64 [ 0, %.loopexit ], [ %i.aeg, %.noexc.i ] ; 2 uses
  %.049.i = phi ptr [ %i.adr, %.loopexit ], [ %i.aeb, %.noexc.i ] ; 4 uses
  %i.aek = sitofp i32 %i.adv to float
  %i.ael = call float @sqrtf(float noundef %i.aek) #30
  %i.aem = fdiv float 1.000000e+00, %i.ael
  store float %i.aem, ptr %.049.i, align 4, !tbaa !263
  %i.aen = icmp sgt i32 %i.adv, 1
  br i1 %i.aen, label %.preheader67.preheader.i, label %._crit_edge71.i

.preheader67.preheader.i:                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.aeo = and i64 %i.adu, 2147483647             ; 4 uses
  %i.aep = shl nuw nsw i64 %i.aeo, 2              ; 2 uses
  %i.aeq = sub nsw i64 4, %i.aep
  %i.aer = shl nuw nsw i64 %i.aeo, 2
  %i.aes = add nuw nsw i64 %i.aep, 4
  br label %.preheader67.i

.preheader67.i:                                   ; preds = %.split.i, %.preheader67.preheader.i
  %.04870.i = phi i32 [ %i.afq, %.split.i ], [ 1, %.preheader67.preheader.i ] ; 6 uses
  %25 = icmp sgt i32 %.04870.i, 0
  br i1 %25, label %.preheader.preheader.i, label %.split.i

.preheader.preheader.i:                           ; preds = %.preheader67.i
  %i.aet = zext nneg i32 %.04870.i to i64         ; 12 uses
  %i.aeu = mul i64 %i.aeq, %i.aet
  %i.aev = mul nuw i64 %i.aer, %i.aet
  %i.aew = mul i64 %i.aes, %i.aet
  %min.iters.check = icmp ult i32 %.04870.i, 8
  %i.aex = add i64 %i.aeu, -1
  %diff.check = icmp ult i64 %i.aex, 31
  %i.aey = add i64 %i.aev, -1
  %diff.check1334 = icmp ult i64 %i.aey, 31
  %conflict.rdx1335 = or i1 %diff.check, %diff.check1334
  %i.aez = add i64 %i.aew, -1
  %diff.check1336 = icmp ult i64 %i.aez, 31
  %conflict.rdx1337 = or i1 %conflict.rdx1335, %diff.check1336
  %n.vec = and i64 %i.aet, 2147483640
  %xtraiter = and i64 %i.aet, 1
  %i.afa = icmp eq i32 %.04870.i, 1
  %unroll_iter = and i64 %i.aet, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1507 = trunc i32 %.04870.i to i1
  br label %.preheader.i

._crit_edge71.i:                                  ; preds = %.split.i, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  br i1 %.not.i456, label %bb.hx, label %bb.hw

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next74.i, %._crit_edge.i ] ; 3 uses
  %i.afb = mul nuw nsw i64 %indvars.iv73.i, %i.aeo
  %i.afc = add nuw nsw i64 %indvars.iv73.i, %i.aet
  %i.afd = mul nuw nsw i64 %i.afc, %i.aeo
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %.049.i, i64 %i.afb ; 8 uses
  %invariant.gep82.i = getelementptr inbounds nuw [4 x i8], ptr %.049.i, i64 %i.afd ; 8 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx1337
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader.i
  br i1 %i.afa, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 4 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %wide.load = load <4 x float>, ptr %i.afe, align 4, !tbaa !263 ; 3 uses
  %wide.load1338 = load <4 x float>, ptr %i.aff, align 4, !tbaa !263 ; 3 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep82.i, i64 %index ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  store <4 x float> %wide.load, ptr %i.afg, align 4, !tbaa !263
  store <4 x float> %wide.load1338, ptr %i.afh, align 4, !tbaa !263
  %i.afi = add nuw nsw i64 %index, %i.aet         ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.afi ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 16
  store <4 x float> %wide.load, ptr %i.afj, align 4, !tbaa !263
  store <4 x float> %wide.load1338, ptr %i.afk, align 4, !tbaa !263
  %i.afl = fneg <4 x float> %wide.load
  %i.afm = fneg <4 x float> %wide.load1338
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep82.i, i64 %i.afi ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  store <4 x float> %i.afl, ptr %i.afn, align 4, !tbaa !263
  store <4 x float> %i.afm, ptr %i.afo, align 4, !tbaa !263
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.afp = icmp eq i64 %index.next, %n.vec
  br i1 %i.afp, label %._crit_edge.i, label %vector.body, !llvm.loop !461

.split.i:                                         ; preds = %._crit_edge.i, %.preheader67.i
  %i.afq = shl nsw i32 %.04870.i, 1               ; 2 uses
  %i.afr = icmp slt i32 %i.afq, %i.adv
  br i1 %i.afr, label %.preheader67.i, label %._crit_edge71.i, !llvm.loop !462

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1507)
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.afs = load float, ptr %gep.i.epil, align 4, !tbaa !263 ; 3 uses
  %gep83.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep82.i, i64 %indvars.iv.i.epil.init
  store float %i.afs, ptr %gep83.i.epil, align 4, !tbaa !263
  %i.aft = add nuw nsw i64 %indvars.iv.i.epil.init, %i.aet ; 2 uses
  %gep85.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.aft
  store float %i.afs, ptr %gep85.i.epil, align 4, !tbaa !263
  %i.afu = fneg float %i.afs
  %gep87.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep82.i, i64 %i.aft
  store float %i.afu, ptr %gep87.i.epil, align 4, !tbaa !263
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %i.aet
  br i1 %exitcond77.not.i, label %.split.i, label %.preheader.i, !llvm.loop !463

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.afv = load float, ptr %gep.i, align 4, !tbaa !263 ; 3 uses
  %gep83.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep82.i, i64 %indvars.iv.i
  store float %i.afv, ptr %gep83.i, align 4, !tbaa !263
  %i.afw = add nuw nsw i64 %indvars.iv.i, %i.aet  ; 2 uses
  %gep85.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.afw
  store float %i.afv, ptr %gep85.i, align 4, !tbaa !263
  %i.afx = fneg float %i.afv
  %gep87.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep82.i, i64 %i.afw
  store float %i.afx, ptr %gep87.i, align 4, !tbaa !263
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.afy = load float, ptr %gep.i.1, align 4, !tbaa !263 ; 3 uses
  %gep83.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep82.i, i64 %indvars.iv.next.i
  store float %i.afy, ptr %gep83.i.1, align 4, !tbaa !263
  %i.afz = add nuw nsw i64 %indvars.iv.next.i, %i.aet ; 2 uses
  %gep85.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.afz
  store float %i.afy, ptr %gep85.i.1, align 4, !tbaa !263
  %i.aga = fneg float %i.afy
  %gep87.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep82.i, i64 %i.afz
  store float %i.aga, ptr %gep87.i.1, align 4, !tbaa !263
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !464

bb.hw:                                            ; preds = %._crit_edge71.i
  %i.agb = mul i64 %i.adu, %i.adu
  %i.agc = and i64 %i.agb, 4294967295
  %i.agd = invoke i64 @ggml_quantize_chunk(i32 noundef %i.adw, ptr noundef nonnull %.049.i, ptr noundef %i.adr, i64 noundef 0, i64 noundef 1, i64 noundef %i.agc, ptr noundef null)
          to label %bb.hx unwind label %bb.hu     ; 0 uses

bb.hx:                                            ; preds = %bb.hw, %._crit_edge71.i
  %.not.i.i.i53.i = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not.i.i.i53.i, label %_ZL17ggml_gen_hadamardP11ggml_tensor.exit, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.age = ptrtoint ptr %.sroa.0.1.i to i64
  %i.agf = sub i64 %.sroa.15.1.i, %i.age
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.i, i64 noundef %i.agf) #31
  br label %_ZL17ggml_gen_hadamardP11ggml_tensor.exit

_ZL17ggml_gen_hadamardP11ggml_tensor.exit:        ; preds = %bb.hy, %bb.hx
  %.not.i461 = icmp eq ptr %i.acw, null
  br i1 %.not.i461, label %_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit, label %bb.hz

bb.hz:                                            ; preds = %_ZL17ggml_gen_hadamardP11ggml_tensor.exit
  invoke void @ggml_free(ptr noundef nonnull %i.acw)
          to label %_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.agg = landingpad { ptr, i32 }
          catch ptr null
  %i.agh = extractvalue { ptr, i32 } %i.agg, 0
  call void @__clang_call_terminate(ptr %i.agh) #33
  unreachable

_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit: ; preds = %_ZL17ggml_gen_hadamardP11ggml_tensor.exit, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.agi = shl nsw i64 %storemerge2297831332, 1   ; 4 uses
  %i.agj = load i32, ptr %i.s, align 8, !tbaa !110
  %i.agk = load i32, ptr %i.t, align 4, !tbaa !110
  %i.agl = call i32 @llvm.smax.i32(i32 %i.agj, i32 %i.agk)
  %i.agm = sext i32 %i.agl to i64
  %.not230 = icmp sgt i64 %i.agi, %i.agm
  br i1 %.not230, label %.loopexit547, label %bb.hf, !llvm.loop !460

bb.ib:                                            ; preds = %.loopexit.i.i434
  %i.agn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit463

_ZNSt6vectorIfSaIfEED2Ev.exit463:                 ; preds = %bb.hl, %bb.ib
  %eh.lpad-body439 = phi { ptr, i32 } [ %i.agn, %bb.ib ], [ %i.acn, %bb.hl ]
  call void @_ZdlPvm(ptr noundef nonnull %i.abr, i64 noundef %i.abq) #31
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %bb.bl, %bb.bh, %bb.bf, %bb.al, %bb.bp, %bb.bs, %bb.br, %bb.bt, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.db, %bb.dg, %bb.de, %bb.dd, %bb.ao, %bb.ca, %.noexc312, %_ZNSt3mapIP24ggml_backend_buffer_typeSt10unique_ptrI12ggml_context20ggml_context_deleterEZN14llama_kv_cacheC1ERK11llama_modelRK13llama_hparams9ggml_typeSD_bbbjjjj14llama_swa_typeP14llama_memory_iRKSt8functionIFbiEERKSH_IFiiEESP_PKcE28ggml_backend_buft_comparatorSaISt4pairIKS1_S5_EEE4findERSU_.exit.i.thread, %.noexc314, %bb.cc, %.noexc318, %bb.cd, %bb.ch, %.loopexit.i.i298, %.loopexit591, %bb.as, %.loopexit.i.i, %bb.bc, %bb.bd, %.invoke1187, %.invoke, %.loopexit.i.i395, %bb.ez, %bb.ew, %bb.fn, %.loopexit562, %.loopexit.i.i409, %.lr.ph.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.gf, %.lr.ph.i.i.i.i.i, %.noexc316, %.lr.ph.i.i.i.i307, %.noexc310, %.lr.ph751, %.invoke1188, %bb.hg, %_ZNK14llama_kv_cache12size_v_bytesEv.exit, %bb.gg, %bb.gh, %bb.ag, %bb.ai, %bb.aj, %bb.gm, %bb.gn, %bb.gp, %bb.gw, %bb.gy, %bb.hb, %bb.ha, %bb.et, %bb.ak, %bb.cz, %bb.o, %bb.r, %bb.ev
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ic:                                            ; preds = %bb.hn
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.id:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %.loopexit.i.i448, %bb.ho
  %i.agp = landingpad { ptr, i32 }
          cleanup
  br label %.body453

.body453:                                         ; preds = %bb.id, %bb.hv, %bb.hu, %bb.ht
  %eh.lpad-body454 = phi { ptr, i32 } [ %i.adq, %bb.ht ], [ %i.agp, %bb.id ], [ %i.aeh, %bb.hv ], [ %i.aeh, %bb.hu ]
  call void @_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #30
  br label %bb.ie

bb.ie:                                            ; preds = %.body453, %bb.ic
  %.pn234 = phi { ptr, i32 } [ %eh.lpad-body454, %.body453 ], [ %i.ago, %bb.ic ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.body

.loopexit547:                                     ; preds = %_ZNSt10unique_ptrI12ggml_context20ggml_context_deleterED2Ev.exit, %bb.he, %bb.hd
  %i.agq = call ptr @getenv(ptr noundef nonnull @.str.26) #30 ; 2 uses
  %.not231 = icmp eq ptr %i.agq, null
  br i1 %.not231, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %.loopexit547
  %i.agr = call i64 @__isoc23_strtol(ptr noundef nonnull %i.agq, ptr noundef null, i32 noundef 10) #30, !inline_history !2
  %i.ags = trunc i64 %i.agr to i32
  br label %bb.ig

bb.ig:                                            ; preds = %.loopexit547, %bb.if
  %i.agt = phi i32 [ %i.ags, %bb.if ], [ 0, %.loopexit547 ]
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.agt, ptr %i.agu, align 8, !tbaa !274
  %.val269 = load ptr, ptr %i.ce, align 8, !tbaa !148
  call fastcc void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN14llama_kv_cacheC1ERK11llama_modelRK13llama_hparams9ggml_typeSI_bbbjjjj14llama_swa_typeP14llama_memory_iRKSt8functionIFbiEERKSM_IFiiEESU_PKcE28ggml_backend_buft_comparatorSaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.val269)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ie, %_ZNSt6vectorIfSaIfEED2Ev.exit463, %bb.ct, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i396, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i410, %bb.es, %_ZNSt6vectorIP11ggml_tensorSaIS1_EED2Ev.exit370, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i299, %.loopexit.split-lp555.loopexit.split-lp, %bb.da, %bb.ae, %bb.ad
  %.pn264 = phi { ptr, i32 } [ %i.ji, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i299 ], [ %i.fn, %bb.ae ], [ %i.fm, %bb.ad ], [ %i.om, %bb.da ], [ %.pn253.pn, %bb.es ], [ %.pn240, %.loopexit.split-lp555.loopexit.split-lp ], [ %i.ob, %bb.ct ], [ %i.wx, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i410 ], [ %i.hu, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %eh.lpad-body439, %_ZNSt6vectorIfSaIfEED2Ev.exit463 ], [ %.pn234, %bb.ie ], [ %.pn253.pn, %_ZNSt6vectorIP11ggml_tensorSaIS1_EED2Ev.exit370 ], [ %i.wb, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i396 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val268 = load ptr, ptr %i.ce, align 8, !tbaa !148
  call fastcc void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN14llama_kv_cacheC1ERK11llama_modelRK13llama_hparams9ggml_typeSI_bbbjjjj14llama_swa_typeP14llama_memory_iRKSt8functionIFbiEERKSM_IFiiEESU_PKcE28ggml_backend_buft_comparatorSaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.val268)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.ih

bb.ih:                                            ; preds = %.body, %bb.l
  %.pn264.pn = phi { ptr, i32 } [ %.pn264, %.body ], [ %i.ca, %bb.l ] ; 2 uses
  call void @_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ba) #30
  call void @_ZNSt6vectorIN14llama_kv_cache8kv_layerESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #30
  call void @_ZN14llama_kv_cache16stream_copy_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ay) #30
  %i.agv = load ptr, ptr %i.ax, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i464 = icmp eq ptr %i.agv, null
  br i1 %.not.i.i.i464, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !275
  %i.agy = ptrtoint ptr %i.agx to i64
  %i.agz = ptrtoint ptr %i.agv to i64
  %i.aha = sub i64 %i.agy, %i.agz
  call void @_ZdlPvm(ptr noundef nonnull %i.agv, i64 noundef %i.aha) #31
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  call void @_ZNSt12__shared_ptrISt6vectorI14llama_kv_cellsSaIS1_EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ae) #30
  %.pre962 = load ptr, ptr %i.ac, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i465 = icmp eq ptr %.pre962, null
  br i1 %.not.i.i.i465, label %_ZNSt6vectorIjSaIjEED2Ev.exit466, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !275
  %i.ahd = ptrtoint ptr %i.ahc to i64
  %i.ahe = ptrtoint ptr %.pre962 to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  call void @_ZdlPvm(ptr noundef nonnull %.pre962, i64 noundef %i.ahf) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit466

_ZNSt6vectorIjSaIjEED2Ev.exit466:                 ; preds = %.thread1064, %bb.ij, %bb.ik
  %.pn264.pn.pn1067 = phi { ptr, i32 } [ %i.bx, %.thread1064 ], [ %.pn264.pn, %bb.ij ], [ %.pn264.pn, %bb.ik ]
  call void @_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #30
  call void @_ZNSt13unordered_mapIlSt6vectorIfSaIfEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #30
  resume { ptr, i32 } %.pn264.pn.pn1067

bb.il:                                            ; preds = %bb.fw, %bb.cz
  unreachable
}

declare i32 @__gxx_personality_v0(...)

end_hunk_0
