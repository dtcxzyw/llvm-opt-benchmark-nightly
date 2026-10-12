Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gen_vsite?download=true
inline.NumInlined: 2920
inline.NumDeleted: 809
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE:bb.a
  %i.aam = getelementptr inbounds nuw i8, ptr %60, i64 19
  %i.aan = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 7 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 6 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %62, i64 19
  %i.aas = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.aau = getelementptr inbounds nuw i8, ptr %63, i64 19
  %i.aav = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 6 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.aax = getelementptr inbounds nuw i8, ptr %64, i64 19
  %i.aay = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 7 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.aba = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 6 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.abc = getelementptr inbounds nuw i8, ptr %66, i64 19
  %i.abd = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 6 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.abf = getelementptr inbounds nuw i8, ptr %67, i64 19
  %i.abg = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 7 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.abi = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 6 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.abk = getelementptr inbounds nuw i8, ptr %69, i64 19
  %i.abl = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 6 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.abn = getelementptr inbounds nuw i8, ptr %70, i64 19
  %i.abo = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 6 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.abq = getelementptr inbounds nuw i8, ptr %71, i64 19
  %i.abr = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 7 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.abu = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.abw = getelementptr inbounds nuw i8, ptr %73, i64 19
  %i.abx = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 6 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %74, i64 19
  %i.aca = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 7 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.acc = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 6 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.ace = getelementptr inbounds nuw i8, ptr %76, i64 19
  %i.acf = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 6 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.ach = getelementptr inbounds nuw i8, ptr %77, i64 19
  %i.aci = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 6 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.ack = getelementptr inbounds nuw i8, ptr %78, i64 19
  %i.acl = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 3 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 7 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.aco = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 6 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.acq = getelementptr inbounds nuw i8, ptr %80, i64 19
  %i.acr = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 6 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.act = getelementptr inbounds nuw i8, ptr %81, i64 19
  %i.acu = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 7 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.acw = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 6 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.acy = getelementptr inbounds nuw i8, ptr %83, i64 19
  %i.acz = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 6 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.adb = getelementptr inbounds nuw i8, ptr %84, i64 19
  %i.adc = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 6 uses
  %i.add = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.ade = getelementptr inbounds nuw i8, ptr %85, i64 19
  %i.adf = getelementptr inbounds nuw i8, ptr %6, i64 14112 ; 10 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.bd, i64 20 ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.bd, i64 28 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.bd, i64 12 ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %6, i64 15232 ; 7 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 6 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %92, i64 19
  %i.ado = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 6 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.adq = getelementptr inbounds nuw i8, ptr %93, i64 19
  %i.adr = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 6 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.adt = getelementptr inbounds nuw i8, ptr %94, i64 19
  %i.adu = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 6 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.adw = getelementptr inbounds nuw i8, ptr %95, i64 19
  %i.adx = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 6 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.adz = getelementptr inbounds nuw i8, ptr %96, i64 19
  %i.aea = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 6 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.aec = getelementptr inbounds nuw i8, ptr %97, i64 19
  %i.aed = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 6 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.aef = getelementptr inbounds nuw i8, ptr %98, i64 19
  %i.aeg = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 6 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.aei = getelementptr inbounds nuw i8, ptr %99, i64 18
  %i.aej = getelementptr inbounds nuw i8, ptr %100, i64 16 ; 6 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.ael = getelementptr inbounds nuw i8, ptr %100, i64 18
  %i.aem = getelementptr inbounds nuw i8, ptr %101, i64 16 ; 6 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %101, i64 19
  %i.aep = getelementptr inbounds nuw i8, ptr %102, i64 16 ; 6 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.aer = getelementptr inbounds nuw i8, ptr %102, i64 18
  %i.aes = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 6 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %103, i64 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %103, i64 18
  %i.aev = getelementptr inbounds nuw i8, ptr %104, i64 16 ; 6 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %104, i64 8
  %i.aex = getelementptr inbounds nuw i8, ptr %104, i64 19
  %i.aey = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 6 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.afa = getelementptr inbounds nuw i8, ptr %105, i64 18
  %i.afb = getelementptr inbounds nuw i8, ptr %106, i64 16 ; 6 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %106, i64 8
  %i.afd = getelementptr inbounds nuw i8, ptr %106, i64 18
  %i.afe = getelementptr inbounds nuw i8, ptr %107, i64 16 ; 6 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %107, i64 8
  %i.afg = getelementptr inbounds nuw i8, ptr %107, i64 18
  %i.afh = getelementptr inbounds nuw i8, ptr %i.bd, i64 36 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.bd, i64 40 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.afk = getelementptr inbounds nuw i8, ptr %6, i64 14784
  %i.afl = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 6 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %108, i64 8
  %i.afn = getelementptr inbounds nuw i8, ptr %108, i64 19
  %i.afo = getelementptr inbounds nuw i8, ptr %109, i64 16 ; 6 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %109, i64 8
  %i.afq = getelementptr inbounds nuw i8, ptr %109, i64 19
  %i.afr = getelementptr inbounds nuw i8, ptr %110, i64 16 ; 6 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %110, i64 8
  %i.aft = getelementptr inbounds nuw i8, ptr %110, i64 19
  %i.afu = getelementptr inbounds nuw i8, ptr %111, i64 16 ; 6 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.afw = getelementptr inbounds nuw i8, ptr %111, i64 19
  %i.afx = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 6 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %112, i64 8
  %i.afz = getelementptr inbounds nuw i8, ptr %112, i64 19
  %i.aga = getelementptr inbounds nuw i8, ptr %113, i64 16 ; 6 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.agc = getelementptr inbounds nuw i8, ptr %113, i64 19
  %i.agd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.age = ptrtoint ptr %1 to i64
  %i.agf = ptrtoint ptr %0 to i64
  %i.agg = sub i64 %i.age, %i.agf
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 %i.agg ; 4 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %134, i64 8 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %153, i64 16 ; 9 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %153, i64 8 ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %154, i64 16 ; 8 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %154, i64 8 ; 2 uses
  %i.ago = fcmp une float %8, 1.000000e+00
  %i.agp = getelementptr inbounds nuw i8, ptr %152, i64 32 ; 4 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %152, i64 16 ; 4 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 4 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %6, i64 15680 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %150, i64 32 ; 4 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %150, i64 16 ; 4 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %141, i64 23
  br label %bb.gb

._crit_edge5142:                                  ; preds = %bb.vm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.agx = phi i32 [ %i.wb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eeu, %bb.vm ]
  %.0583.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.3586, %bb.vm ]
  %i.agy = load ptr, ptr @debug, align 8, !tbaa !14 ; 2 uses
  %.not609 = icmp eq ptr %i.agy, null
  br i1 %.not609, label %.loopexit1574, label %bb.vn

bb.fz:                                            ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.agz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747

bb.ga:                                            ; preds = %.noexc744
  %i.aha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahb = load ptr, ptr %139, align 8, !tbaa !31 ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, %i.vp
  br i1 %i.ahc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745: ; preds = %bb.ga
  %i.ahd = load i64, ptr %i.vp, align 8, !tbaa !25
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahe) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745, %bb.fz
  %.pn = phi { ptr, i32 } [ %i.agz, %bb.fz ], [ %i.aha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745 ], [ %i.aha, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #26
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1244

bb.gb:                                            ; preds = %.lr.ph5141, %bb.vm
  %.05145140 = phi i32 [ 0, %.lr.ph5141 ], [ %i.eet, %bb.vm ] ; 12 uses
  %.05695138 = phi i1 [ true, %.lr.ph5141 ], [ %.2571, %bb.vm ] ; 9 uses
  %.05835136 = phi i32 [ 0, %.lr.ph5141 ], [ %.3586, %bb.vm ] ; 11 uses
  %i.ahf = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.ahg = sext i32 %.05145140 to i64             ; 2 uses
  %i.ahh = getelementptr inbounds [36 x i8], ptr %i.ahf, i64 %i.ahg
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 24
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !74 ; 5 uses
  %i.ahk = load ptr, ptr %i.we, align 8, !tbaa !75
  %i.ahl = sext i32 %i.ahj to i64                 ; 4 uses
  %i.ahm = getelementptr inbounds [32 x i8], ptr %i.ahk, i64 %i.ahl ; 2 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !78
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !79 ; 11 uses
  br i1 %9, label %sub_0, label %.critedge2

sub_0:                                            ; preds = %bb.gb
  %i.ahp = load ptr, ptr %i.wf, align 8, !tbaa !80
  %i.ahq = getelementptr inbounds [8 x i8], ptr %i.ahp, i64 %i.ahg
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !81
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !79 ; 3 uses
  %i.aht = load i8, ptr %i.ahs, align 1
  %.not5179 = icmp eq i8 %i.aht, 67
  br i1 %.not5179, label %sub_1, label %.critedge2

sub_1:                                            ; preds = %sub_0
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1
  %i.ahv = load i8, ptr %i.ahu, align 1
  %.not5180 = icmp eq i8 %i.ahv, 65
  br i1 %.not5180, label %.tail, label %.critedge2

.tail:                                            ; preds = %sub_1
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahs, i64 2
  %i.ahx = load i8, ptr %i.ahw, align 1
  %i.ahy = icmp eq i8 %i.ahx, 0
  br i1 %i.ahy, label %bb.gc, label %.critedge2

bb.gc:                                            ; preds = %.tail
  %i.ahz = sdiv i32 %i.ahj, 64
  %.sext = sext i32 %i.ahz to i64
  %i.aia = getelementptr inbounds [8 x i8], ptr %.sroa.01418.0, i64 %.sext
  %i.aib = and i64 %i.ahl, -9223372036854775745
  %i.aic = icmp ugt i64 %i.aib, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.aic, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aia, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  %i.aid = and i64 %i.ahl, 63
  %i.aie = shl nuw i64 1, %i.aid                  ; 2 uses
  %i.aif = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !33
  %i.aig = and i64 %i.aif, %i.aie
  %.not1566 = icmp eq i64 %i.aig, 0
  br i1 %.not1566, label %bb.gd, label %.critedge2

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #26
  %i.aih = load ptr, ptr %i.ahm, align 8, !tbaa !78
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !79 ; 4 uses
  store ptr %i.wg, ptr %140, align 8, !tbaa !32
  %i.aij = icmp eq ptr %i.aii, null
  br i1 %i.aij, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.95) #27
          to label %.noexc750 unwind label %.loopexit.split-lp1611

.noexc750:                                        ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.gd
  %i.aik = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aii) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #26
  store i64 %i.aik, ptr %i.aj, align 8, !tbaa !33
  %i.ail = icmp ugt i64 %i.aik, 15
  br i1 %i.ail, label %.noexc.i749, label %._crit_edge.i.i748

.noexc.i749:                                      ; preds = %bb.gf
  %i.aim = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %140, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef 0)
          to label %.noexc751 unwind label %.loopexit1610 ; 2 uses

.noexc751:                                        ; preds = %.noexc.i749
  store ptr %i.aim, ptr %140, align 8, !tbaa !31
  %i.ain = load i64, ptr %i.aj, align 8, !tbaa !33
  store i64 %i.ain, ptr %i.wg, align 8, !tbaa !25
  br label %._crit_edge.i.i748

._crit_edge.i.i748:                               ; preds = %.noexc751, %bb.gf
  %i.aio = phi ptr [ %i.aim, %.noexc751 ], [ %i.wg, %bb.gf ] ; 2 uses
  switch i64 %i.aik, label %bb.gh [
    i64 1, label %bb.gg
    i64 0, label %._crit_edge.i.i753
  ]

bb.gg:                                            ; preds = %._crit_edge.i.i748
  %i.aip = load i8, ptr %i.aii, align 1, !tbaa !25
  store i8 %i.aip, ptr %i.aio, align 1, !tbaa !25
  br label %._crit_edge.i.i753

bb.gh:                                            ; preds = %._crit_edge.i.i748
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aio, ptr nonnull align 1 %i.aii, i64 %i.aik, i1 false)
  br label %._crit_edge.i.i753

._crit_edge.i.i753:                               ; preds = %bb.gh, %bb.gg, %._crit_edge.i.i748
  %i.aiq = load i64, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  store i64 %i.aiq, ptr %i.wh, align 8, !tbaa !34
  %i.air = load ptr, ptr %140, align 8, !tbaa !31
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 %i.aiq
  store i8 0, ptr %i.ais, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #26
  store ptr %i.wi, ptr %141, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.wi, ptr noundef nonnull align 1 dereferenceable(7) @.str.46, i64 7, i1 false)
  store i64 7, ptr %i.wj, align 8, !tbaa !34
  store i8 0, ptr %i.agw, align 1, !tbaa !25
  %i.ait = invoke noundef zeroext i1 @_Z19namedResidueHasTypeRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEERSB_SH_(ptr noundef nonnull align 8 dereferenceable(56) %138, ptr noundef nonnull align 8 dereferenceable(32) %140, ptr noundef nonnull align 8 dereferenceable(32) %141)
          to label %.critedge693 unwind label %bb.gk

.critedge693:                                     ; preds = %._crit_edge.i.i753
  %i.aiu = load ptr, ptr %141, align 8, !tbaa !31 ; 2 uses
  %i.aiv = icmp eq ptr %i.aiu, %i.wi
  br i1 %i.aiv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757: ; preds = %.critedge693
  %i.aiw = load i64, ptr %i.wi, align 8, !tbaa !25
  %i.aix = add i64 %i.aiw, 1
  call void @_ZdlPvm(ptr noundef %i.aiu, i64 noundef %i.aix) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759: ; preds = %.critedge693, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #26
  %i.aiy = load ptr, ptr %140, align 8, !tbaa !31 ; 2 uses
  %i.aiz = icmp eq ptr %i.aiy, %i.wg
  br i1 %i.aiz, label %.critedge699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759
  %i.aja = load i64, ptr %i.wg, align 8, !tbaa !25
  %i.ajb = add i64 %i.aja, 1
  call void @_ZdlPvm(ptr noundef %i.aiy, i64 noundef %i.ajb) #30
  br label %.critedge699

.critedge699:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #26
  br i1 %i.ait, label %bb.gi, label %.critedge2

bb.gi:                                            ; preds = %.critedge699
  %i.ajc = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !33
  %i.ajd = or i64 %i.ajc, %i.aie
  store i64 %i.ajd, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !33
  br label %bb.gl

bb.gj:                                            ; preds = %._crit_edge5085
  %160 = add nsw i32 %.05145140, 1                ; 4 uses
  %161 = trunc nuw nsw i64 %indvars.iv5615 to i32
  switch i32 %161, label %bb.pu [
    i32 0, label %bb.ie
    i32 1, label %bb.il
    i32 2, label %bb.ip
    i32 3, label %bb.jz
  ]

.loopexit1610:                                    ; preds = %.noexc.i749
  %lpad.loopexit1612 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

.loopexit.split-lp1611:                           ; preds = %bb.ge
  %lpad.loopexit.split-lp1613 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

bb.gk:                                            ; preds = %._crit_edge.i.i753
  %i.aje = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajf = load ptr, ptr %141, align 8, !tbaa !31 ; 2 uses
  %i.ajg = icmp eq ptr %i.ajf, %i.wi
  br i1 %i.ajg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767: ; preds = %bb.gk
  %i.ajh = load i64, ptr %i.wi, align 8, !tbaa !25
  %i.aji = add i64 %i.ajh, 1
  call void @_ZdlPvm(ptr noundef %i.ajf, i64 noundef %i.aji) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #26
  %i.ajj = load ptr, ptr %140, align 8, !tbaa !31 ; 2 uses
  %i.ajk = icmp eq ptr %i.ajj, %i.wg
  br i1 %i.ajk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769
  %i.ajl = load i64, ptr %i.wg, align 8, !tbaa !25
  %i.ajm = add i64 %i.ajl, 1
  call void @_ZdlPvm(ptr noundef %i.ajj, i64 noundef %i.ajm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769, %.loopexit1610, %.loopexit.split-lp1611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770
  %.pn634.pn = phi { ptr, i32 } [ %i.aje, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770 ], [ %lpad.loopexit.split-lp1613, %.loopexit.split-lp1611 ], [ %lpad.loopexit1612, %.loopexit1610 ], [ %i.aje, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #26
  br label %.body844

bb.gl:                                            ; preds = %bb.gi, %bb.id
  %indvars.iv5615 = phi i64 [ 0, %bb.gi ], [ %indvars.iv.next5616, %bb.id ] ; 9 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr @__const._Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE.bPartial, i64 %indvars.iv5615
  %i.ajo = load i8, ptr %i.ajn, align 1, !tbaa !168, !range !82, !noundef !83
  %i.ajp = zext nneg i8 %i.ajo to i64
  %i.ajq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aho) #29
  %i.ajr = sub i64 %i.ajq, %i.ajp
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #26
  store ptr %i.wk, ptr %142, align 8, !tbaa !32
  %i.ajs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aho) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #26
  store i64 %i.ajs, ptr %i.ai, align 8, !tbaa !33
  %i.ajt = icmp ugt i64 %i.ajs, 15
  br i1 %i.ajt, label %.noexc.i774, label %._crit_edge.i.i773

.noexc.i774:                                      ; preds = %bb.gl
  %i.aju = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef 0)
          to label %.noexc776 unwind label %bb.hk ; 2 uses

.noexc776:                                        ; preds = %.noexc.i774
  store ptr %i.aju, ptr %142, align 8, !tbaa !31
  %i.ajv = load i64, ptr %i.ai, align 8, !tbaa !33
  store i64 %i.ajv, ptr %i.wk, align 8, !tbaa !25
  br label %._crit_edge.i.i773

._crit_edge.i.i773:                               ; preds = %.noexc776, %bb.gl
  %i.ajw = phi ptr [ %i.aju, %.noexc776 ], [ %i.wk, %bb.gl ] ; 2 uses
  switch i64 %i.ajs, label %bb.gn [
    i64 1, label %bb.gm
    i64 0, label %bb.go
  ]

bb.gm:                                            ; preds = %._crit_edge.i.i773
  %i.ajx = load i8, ptr %i.aho, align 1, !tbaa !25
  store i8 %i.ajx, ptr %i.ajw, align 1, !tbaa !25
  br label %bb.go

bb.gn:                                            ; preds = %._crit_edge.i.i773
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajw, ptr nonnull align 1 %i.aho, i64 %i.ajs, i1 false)
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm, %._crit_edge.i.i773
  %i.ajy = load i64, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  store i64 %i.ajy, ptr %i.wl, align 8, !tbaa !34
  %i.ajz = load ptr, ptr %142, align 8, !tbaa !31
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.ajy
  store i8 0, ptr %i.aka, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #26
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr @__const._Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE.resnms, i64 %indvars.iv5615
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !79 ; 3 uses
  store ptr %i.wm, ptr %143, align 8, !tbaa !32
  %i.akd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.akc) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #26
  store i64 %i.akd, ptr %i.ah, align 8, !tbaa !33
  %i.ake = icmp ugt i64 %i.akd, 15
  br i1 %i.ake, label %.noexc.i779, label %._crit_edge.i.i778

.noexc.i779:                                      ; preds = %bb.go
  %i.akf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %143, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef 0)
          to label %.noexc781 unwind label %bb.hl ; 2 uses

.noexc781:                                        ; preds = %.noexc.i779
  store ptr %i.akf, ptr %143, align 8, !tbaa !31
  %i.akg = load i64, ptr %i.ah, align 8, !tbaa !33
  store i64 %i.akg, ptr %i.wm, align 8, !tbaa !25
  br label %._crit_edge.i.i778

._crit_edge.i.i778:                               ; preds = %.noexc781, %bb.go
  %i.akh = phi ptr [ %i.akf, %.noexc781 ], [ %i.wm, %bb.go ] ; 2 uses
  switch i64 %i.akd, label %bb.gq [
    i64 1, label %bb.gp
    i64 0, label %bb.gr
  ]

bb.gp:                                            ; preds = %._crit_edge.i.i778
  %i.aki = load i8, ptr %i.akc, align 1, !tbaa !25
  store i8 %i.aki, ptr %i.akh, align 1, !tbaa !25
  br label %bb.gr

bb.gq:                                            ; preds = %._crit_edge.i.i778
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.akh, ptr nonnull align 1 %i.akc, i64 %i.akd, i1 false)
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %._crit_edge.i.i778
  %i.akj = load i64, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  store i64 %i.akj, ptr %i.wn, align 8, !tbaa !34
  %i.akk = load ptr, ptr %143, align 8, !tbaa !31
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.akj
  store i8 0, ptr %i.akl, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #26
  %i.akm = shl i64 %i.ajr, 32
  %i.akn = ashr exact i64 %i.akm, 32              ; 3 uses
  %i.ako = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_m(ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull align 8 dereferenceable(32) %143, i64 noundef %i.akn)
          to label %bb.gs unwind label %bb.hm

bb.gs:                                            ; preds = %bb.gr
  br i1 %i.ako, label %.critedge715, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #26
  store ptr %i.wo, ptr %144, align 8, !tbaa !32
  %i.akp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aho) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #26
  store i64 %i.akp, ptr %i.ag, align 8, !tbaa !33
  %i.akq = icmp ugt i64 %i.akp, 15
  br i1 %i.akq, label %.noexc.i784, label %._crit_edge.i.i783

.noexc.i784:                                      ; preds = %bb.gt
  %i.akr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %144, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef 0)
          to label %.noexc786 unwind label %bb.hn ; 2 uses

.noexc786:                                        ; preds = %.noexc.i784
  store ptr %i.akr, ptr %144, align 8, !tbaa !31
  %i.aks = load i64, ptr %i.ag, align 8, !tbaa !33
  store i64 %i.aks, ptr %i.wo, align 8, !tbaa !25
  br label %._crit_edge.i.i783

._crit_edge.i.i783:                               ; preds = %.noexc786, %bb.gt
  %i.akt = phi ptr [ %i.akr, %.noexc786 ], [ %i.wo, %bb.gt ] ; 2 uses
  switch i64 %i.akp, label %bb.gv [
    i64 1, label %bb.gu
    i64 0, label %bb.gw
  ]

bb.gu:                                            ; preds = %._crit_edge.i.i783
  %i.aku = load i8, ptr %i.aho, align 1, !tbaa !25
  store i8 %i.aku, ptr %i.akt, align 1, !tbaa !25
  br label %bb.gw

bb.gv:                                            ; preds = %._crit_edge.i.i783
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.akt, ptr nonnull align 1 %i.aho, i64 %i.akp, i1 false)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu, %._crit_edge.i.i783
  %i.akv = load i64, ptr %i.ag, align 8, !tbaa !33 ; 2 uses
  store i64 %i.akv, ptr %i.wp, align 8, !tbaa !34
  %i.akw = load ptr, ptr %144, align 8, !tbaa !31
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.akv
  store i8 0, ptr %i.akx, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #26
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr @__const._Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE.resnmsN, i64 %indvars.iv5615
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !79 ; 3 uses
  store ptr %i.wq, ptr %145, align 8, !tbaa !32
  %i.ala = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.akz) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #26
  store i64 %i.ala, ptr %i.af, align 8, !tbaa !33
  %i.alb = icmp ugt i64 %i.ala, 15
  br i1 %i.alb, label %.noexc.i789, label %._crit_edge.i.i788

.noexc.i789:                                      ; preds = %bb.gw
  %i.alc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %145, ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef 0)
          to label %.noexc791 unwind label %bb.ho ; 2 uses

.noexc791:                                        ; preds = %.noexc.i789
  store ptr %i.alc, ptr %145, align 8, !tbaa !31
  %i.ald = load i64, ptr %i.af, align 8, !tbaa !33
  store i64 %i.ald, ptr %i.wq, align 8, !tbaa !25
  br label %._crit_edge.i.i788

._crit_edge.i.i788:                               ; preds = %.noexc791, %bb.gw
  %i.ale = phi ptr [ %i.alc, %.noexc791 ], [ %i.wq, %bb.gw ] ; 2 uses
  switch i64 %i.ala, label %bb.gy [
    i64 1, label %bb.gx
    i64 0, label %bb.gz
  ]

bb.gx:                                            ; preds = %._crit_edge.i.i788
  %i.alf = load i8, ptr %i.akz, align 1, !tbaa !25
  store i8 %i.alf, ptr %i.ale, align 1, !tbaa !25
  br label %bb.gz

bb.gy:                                            ; preds = %._crit_edge.i.i788
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ale, ptr nonnull align 1 %i.akz, i64 %i.ala, i1 false)
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %._crit_edge.i.i788
  %i.alg = load i64, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  store i64 %i.alg, ptr %i.wr, align 8, !tbaa !34
  %i.alh = load ptr, ptr %145, align 8, !tbaa !31
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.alg
  store i8 0, ptr %i.ali, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #26
  %i.alj = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_m(ptr noundef nonnull align 8 dereferenceable(32) %144, ptr noundef nonnull align 8 dereferenceable(32) %145, i64 noundef %i.akn)
          to label %bb.ha unwind label %bb.hp

bb.ha:                                            ; preds = %bb.gz
  br i1 %i.alj, label %.critedge709, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #26
  store ptr %i.ws, ptr %146, align 8, !tbaa !32
  %i.alk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aho) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #26
  store i64 %i.alk, ptr %i.ae, align 8, !tbaa !33
  %i.all = icmp ugt i64 %i.alk, 15
  br i1 %i.all, label %.noexc.i794, label %._crit_edge.i.i793

.noexc.i794:                                      ; preds = %bb.hb
  %i.alm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %146, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef 0)
          to label %.noexc796 unwind label %bb.hq ; 2 uses

.noexc796:                                        ; preds = %.noexc.i794
  store ptr %i.alm, ptr %146, align 8, !tbaa !31
  %i.aln = load i64, ptr %i.ae, align 8, !tbaa !33
  store i64 %i.aln, ptr %i.ws, align 8, !tbaa !25
  br label %._crit_edge.i.i793

._crit_edge.i.i793:                               ; preds = %.noexc796, %bb.hb
  %i.alo = phi ptr [ %i.alm, %.noexc796 ], [ %i.ws, %bb.hb ] ; 2 uses
  switch i64 %i.alk, label %bb.hd [
    i64 1, label %bb.hc
    i64 0, label %bb.he
  ]

bb.hc:                                            ; preds = %._crit_edge.i.i793
  %i.alp = load i8, ptr %i.aho, align 1, !tbaa !25
  store i8 %i.alp, ptr %i.alo, align 1, !tbaa !25
  br label %bb.he

bb.hd:                                            ; preds = %._crit_edge.i.i793
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alo, ptr nonnull align 1 %i.aho, i64 %i.alk, i1 false)
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %._crit_edge.i.i793
  %i.alq = load i64, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  store i64 %i.alq, ptr %i.wt, align 8, !tbaa !34
  %i.alr = load ptr, ptr %146, align 8, !tbaa !31
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 %i.alq
  store i8 0, ptr %i.als, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #26
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr @__const._Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE.resnmsC, i64 %indvars.iv5615
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !79 ; 3 uses
  store ptr %i.wu, ptr %147, align 8, !tbaa !32
  %i.alv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.alu) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #26
  store i64 %i.alv, ptr %i.ad, align 8, !tbaa !33
  %i.alw = icmp ugt i64 %i.alv, 15
  br i1 %i.alw, label %.noexc.i799, label %._crit_edge.i.i798

.noexc.i799:                                      ; preds = %bb.he
  %i.alx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %147, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 0)
          to label %.noexc801 unwind label %bb.hr ; 2 uses

.noexc801:                                        ; preds = %.noexc.i799
  store ptr %i.alx, ptr %147, align 8, !tbaa !31
  %i.aly = load i64, ptr %i.ad, align 8, !tbaa !33
  store i64 %i.aly, ptr %i.wu, align 8, !tbaa !25
  br label %._crit_edge.i.i798

._crit_edge.i.i798:                               ; preds = %.noexc801, %bb.he
  %i.alz = phi ptr [ %i.alx, %.noexc801 ], [ %i.wu, %bb.he ] ; 2 uses
  switch i64 %i.alv, label %bb.hg [
    i64 1, label %bb.hf
    i64 0, label %bb.hh
  ]

bb.hf:                                            ; preds = %._crit_edge.i.i798
  %i.ama = load i8, ptr %i.alu, align 1, !tbaa !25
  store i8 %i.ama, ptr %i.alz, align 1, !tbaa !25
  br label %bb.hh

bb.hg:                                            ; preds = %._crit_edge.i.i798
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alz, ptr nonnull align 1 %i.alu, i64 %i.alv, i1 false)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf, %._crit_edge.i.i798
  %i.amb = load i64, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  store i64 %i.amb, ptr %i.wv, align 8, !tbaa !34
  %i.amc = load ptr, ptr %147, align 8, !tbaa !31
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.amb
  store i8 0, ptr %i.amd, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #26
  %i.ame = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_m(ptr noundef nonnull align 8 dereferenceable(32) %146, ptr noundef nonnull align 8 dereferenceable(32) %147, i64 noundef %i.akn)
          to label %.critedge701 unwind label %bb.hs

.critedge701:                                     ; preds = %bb.hh
  %i.amf = load ptr, ptr %147, align 8, !tbaa !31 ; 2 uses
  %i.amg = icmp eq ptr %i.amf, %i.wu
  br i1 %i.amg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803: ; preds = %.critedge701
  %i.amh = load i64, ptr %i.wu, align 8, !tbaa !25
  %i.ami = add i64 %i.amh, 1
  call void @_ZdlPvm(ptr noundef %i.amf, i64 noundef %i.ami) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805: ; preds = %.critedge701, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i803
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #26
  %i.amj = load ptr, ptr %146, align 8, !tbaa !31 ; 2 uses
  %i.amk = icmp eq ptr %i.amj, %i.ws
  br i1 %i.amk, label %.critedge707.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i806

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i806: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805
  %i.aml = load i64, ptr %i.ws, align 8, !tbaa !25
  %i.amm = add i64 %i.aml, 1
  call void @_ZdlPvm(ptr noundef %i.amj, i64 noundef %i.amm) #30
  br label %.critedge707.thread

.critedge707.thread:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i806
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #26
  br label %.critedge709

.critedge709:                                     ; preds = %bb.ha, %.critedge707.thread
  %i.amn = phi i1 [ %i.ame, %.critedge707.thread ], [ true, %bb.ha ]
  %i.amo = load ptr, ptr %145, align 8, !tbaa !31 ; 2 uses
  %i.amp = icmp eq ptr %i.amo, %i.wq
  br i1 %i.amp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809: ; preds = %.critedge709
  %i.amq = load i64, ptr %i.wq, align 8, !tbaa !25
  %i.amr = add i64 %i.amq, 1
  call void @_ZdlPvm(ptr noundef %i.amo, i64 noundef %i.amr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811: ; preds = %.critedge709, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #26
  %i.ams = load ptr, ptr %144, align 8, !tbaa !31 ; 2 uses
  %i.amt = icmp eq ptr %i.ams, %i.wo
  br i1 %i.amt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811
  %i.amu = load i64, ptr %i.wo, align 8, !tbaa !25
  %i.amv = add i64 %i.amu, 1
  call void @_ZdlPvm(ptr noundef %i.ams, i64 noundef %i.amv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #26
  br label %.critedge715

.critedge715:                                     ; preds = %bb.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814
  %i.amw = phi i1 [ %i.amn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814 ], [ true, %bb.gs ]
  %i.amx = load ptr, ptr %143, align 8, !tbaa !31 ; 2 uses
  %i.amy = icmp eq ptr %i.amx, %i.wm
  br i1 %i.amy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i815

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i815: ; preds = %.critedge715
  %i.amz = load i64, ptr %i.wm, align 8, !tbaa !25
  %i.ana = add i64 %i.amz, 1
  call void @_ZdlPvm(ptr noundef %i.amx, i64 noundef %i.ana) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817: ; preds = %.critedge715, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i815
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #26
  %i.anb = load ptr, ptr %142, align 8, !tbaa !31 ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.wk
  br i1 %i.anc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817
  %i.and = load i64, ptr %i.wk, align 8, !tbaa !25
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.ane) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  br i1 %i.amw, label %.lr.ph5084, label %bb.id

.lr.ph5084:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820
  %i.anf = getelementptr inbounds nuw [136 x i8], ptr @__const._Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE.atnms, i64 %indvars.iv5615 ; 3 uses
  %i.ang = load i32, ptr %3, align 8, !tbaa !24   ; 2 uses
  %i.anh = icmp slt i32 %.05145140, %i.ang
  br i1 %i.anh, label %.lr.ph5084.split.preheader, label %.critedge.us

.lr.ph5084.split.preheader:                       ; preds = %.lr.ph5084
  %i.ani = load ptr, ptr %i.anf, align 8, !tbaa !79
  %i.anj = sext i32 %.05145140 to i64             ; 2 uses
  br label %.lr.ph5084.split

.critedge.us:                                     ; preds = %.lr.ph5084, %.critedge.us
  %indvars.iv5606 = phi i64 [ %indvars.iv.next5607, %.critedge.us ], [ 0, %.lr.ph5084 ] ; 2 uses
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv5606
  store i32 -409203, ptr %i.ank, align 4, !tbaa !15
  %indvars.iv.next5607 = add nuw nsw i64 %indvars.iv5606, 1 ; 3 uses
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr %i.anf, i64 %indvars.iv.next5607
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !79
  %.not676.us = icmp eq ptr %i.anm, null
  br i1 %.not676.us, label %._crit_edge5085, label %.critedge.us, !llvm.loop !120

.lr.ph5084.split:                                 ; preds = %.lr.ph5084.split.preheader, %.critedge
  %i.ann = phi i32 [ %i.ang, %.lr.ph5084.split.preheader ], [ %i.apw, %.critedge ] ; 3 uses
  %indvars.iv5612 = phi i64 [ 0, %.lr.ph5084.split.preheader ], [ %indvars.iv.next5613, %.critedge ] ; 2 uses
  %i.ano = phi ptr [ %i.ani, %.lr.ph5084.split.preheader ], [ %i.apy, %.critedge ]
  %.25775082 = phi i32 [ 0, %.lr.ph5084.split.preheader ], [ %.3578.lcssa, %.critedge ] ; 3 uses
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv5612 ; 2 uses
  store i32 -409203, ptr %i.anp, align 4, !tbaa !15
  %i.anq = icmp slt i32 %.05145140, %i.ann
  br i1 %i.anq, label %.lr.ph5076.preheader, label %.critedge

.lr.ph5076.preheader:                             ; preds = %.lr.ph5084.split
  %i.anr = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.ans = getelementptr inbounds [36 x i8], ptr %i.anr, i64 %i.anj
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 24
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !74
  %i.anv = icmp eq i32 %i.anu, %i.ahj
  br i1 %i.anv, label %.lr.ph7235, label %.critedge

.lr.ph5076:                                       ; preds = %bb.hw
  %i.anw = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.anx = getelementptr inbounds [36 x i8], ptr %i.anw, i64 %indvars.iv.next5610
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 24
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !74
  %i.aoa = icmp eq i32 %i.anz, %i.ahj
  %or.cond6794 = and i1 %i.aoa, %i.aps
  br i1 %or.cond6794, label %.lr.ph7235, label %.critedge, !llvm.loop !121

.lr.ph7235:                                       ; preds = %.lr.ph5076.preheader, %.lr.ph5076
  %.357850737234 = phi i32 [ %.4579, %.lr.ph5076 ], [ %.25775082, %.lr.ph5076.preheader ] ; 2 uses
  %indvars.iv56097233 = phi i64 [ %indvars.iv.next5610, %.lr.ph5076 ], [ %i.anj, %.lr.ph5076.preheader ] ; 4 uses
  %i.aob = load ptr, ptr %i.wf, align 8, !tbaa !80
  %i.aoc = getelementptr inbounds [8 x i8], ptr %i.aob, i64 %indvars.iv56097233
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !81
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !79
  %i.aof = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.aoe, ptr noundef nonnull %i.ano)
          to label %bb.hi unwind label %bb.hv

bb.hi:                                            ; preds = %.lr.ph7235
  %i.aog = icmp eq i32 %i.aof, 0
  br i1 %i.aog, label %bb.hj, label %bb.hw

bb.hj:                                            ; preds = %bb.hi
  %i.aoh = trunc nsw i64 %indvars.iv56097233 to i32
  store i32 %i.aoh, ptr %i.anp, align 4, !tbaa !15
  %i.aoi = add nsw i32 %.357850737234, 1
  %i.aoj = icmp eq i64 %indvars.iv56097233, -409203
  br label %bb.hw

bb.hk:                                            ; preds = %.noexc.i774
  %i.aok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838

bb.hl:                                            ; preds = %.noexc.i779
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835

bb.hm:                                            ; preds = %bb.gr
  %i.aom = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hn:                                            ; preds = %.noexc.i784
  %i.aon = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832

bb.ho:                                            ; preds = %.noexc.i789
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829

bb.hp:                                            ; preds = %bb.gz
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.hq:                                            ; preds = %.noexc.i794
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826

bb.hr:                                            ; preds = %.noexc.i799
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823

bb.hs:                                            ; preds = %bb.hh
  %i.aos = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aot = load ptr, ptr %147, align 8, !tbaa !31 ; 2 uses
  %i.aou = icmp eq ptr %i.aot, %i.wu
  br i1 %i.aou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i821

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i821: ; preds = %bb.hs
  %i.aov = load i64, ptr %i.wu, align 8, !tbaa !25
  %i.aow = add i64 %i.aov, 1
  call void @_ZdlPvm(ptr noundef %i.aot, i64 noundef %i.aow) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823: ; preds = %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i821, %bb.hr
  %.pn667 = phi { ptr, i32 } [ %i.aor, %bb.hr ], [ %i.aos, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i821 ], [ %i.aos, %bb.hs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #26
  %i.aox = load ptr, ptr %146, align 8, !tbaa !31 ; 2 uses
  %i.aoy = icmp eq ptr %i.aox, %i.ws
  br i1 %i.aoy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i824

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i824: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823
  %i.aoz = load i64, ptr %i.ws, align 8, !tbaa !25
  %i.apa = add i64 %i.aoz, 1
  call void @_ZdlPvm(ptr noundef %i.aox, i64 noundef %i.apa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i824, %bb.hq
  %.pn667.pn = phi { ptr, i32 } [ %i.aoq, %bb.hq ], [ %.pn667, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i824 ], [ %.pn667, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #26
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826
  %.pn667.pn.pn = phi { ptr, i32 } [ %.pn667.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit826 ], [ %i.aop, %bb.hp ] ; 2 uses
  %i.apb = load ptr, ptr %145, align 8, !tbaa !31 ; 2 uses
  %i.apc = icmp eq ptr %i.apb, %i.wq
  br i1 %i.apc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i827

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i827: ; preds = %bb.ht
  %i.apd = load i64, ptr %i.wq, align 8, !tbaa !25
  %i.ape = add i64 %i.apd, 1
  call void @_ZdlPvm(ptr noundef %i.apb, i64 noundef %i.ape) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829: ; preds = %bb.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i827, %bb.ho
  %.pn667.pn.pn.pn = phi { ptr, i32 } [ %i.aoo, %bb.ho ], [ %.pn667.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i827 ], [ %.pn667.pn.pn, %bb.ht ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #26
  %i.apf = load ptr, ptr %144, align 8, !tbaa !31 ; 2 uses
  %i.apg = icmp eq ptr %i.apf, %i.wo
  br i1 %i.apg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829
  %i.aph = load i64, ptr %i.wo, align 8, !tbaa !25
  %i.api = add i64 %i.aph, 1
  call void @_ZdlPvm(ptr noundef %i.apf, i64 noundef %i.api) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830, %bb.hn
  %.pn667.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aon, %bb.hn ], [ %.pn667.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830 ], [ %.pn667.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #26
  br label %bb.hu

bb.hu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, %bb.hm
  %.pn667.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn667.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832 ], [ %i.aom, %bb.hm ] ; 2 uses
  %i.apj = load ptr, ptr %143, align 8, !tbaa !31 ; 2 uses
  %i.apk = icmp eq ptr %i.apj, %i.wm
  br i1 %i.apk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833: ; preds = %bb.hu
  %i.apl = load i64, ptr %i.wm, align 8, !tbaa !25
  %i.apm = add i64 %i.apl, 1
  call void @_ZdlPvm(ptr noundef %i.apj, i64 noundef %i.apm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835: ; preds = %bb.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833, %bb.hl
  %.pn667.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aol, %bb.hl ], [ %.pn667.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833 ], [ %.pn667.pn.pn.pn.pn.pn, %bb.hu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #26
  %i.apn = load ptr, ptr %142, align 8, !tbaa !31 ; 2 uses
  %i.apo = icmp eq ptr %i.apn, %i.wk
  br i1 %i.apo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835
  %i.app = load i64, ptr %i.wk, align 8, !tbaa !25
  %i.apq = add i64 %i.app, 1
  call void @_ZdlPvm(ptr noundef %i.apn, i64 noundef %i.apq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836, %bb.hk
  %.pn667.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aok, %bb.hk ], [ %.pn667.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836 ], [ %.pn667.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  br label %.body844

bb.hv:                                            ; preds = %.lr.ph7235
  %i.apr = landingpad { ptr, i32 }
          cleanup
  br label %.body844

bb.hw:                                            ; preds = %bb.hi, %bb.hj
  %i.aps = phi i1 [ %i.aoj, %bb.hj ], [ true, %bb.hi ]
  %.4579 = phi i32 [ %i.aoi, %bb.hj ], [ %.357850737234, %bb.hi ] ; 3 uses
  %indvars.iv.next5610 = add nsw i64 %indvars.iv56097233, 1 ; 3 uses
  %i.apt = load i32, ptr %3, align 8, !tbaa !24   ; 3 uses
  %i.apu = sext i32 %i.apt to i64
  %i.apv = icmp slt i64 %indvars.iv.next5610, %i.apu
  br i1 %i.apv, label %.lr.ph5076, label %..critedge.loopexit_crit_edge, !llvm.loop !121

..critedge.loopexit_crit_edge:                    ; preds = %bb.hw
  br label %.critedge, !llvm.loop !121

.critedge:                                        ; preds = %.lr.ph5076, %.lr.ph5076.preheader, %..critedge.loopexit_crit_edge, %.lr.ph5084.split
  %i.apw = phi i32 [ %i.ann, %.lr.ph5084.split ], [ %i.apt, %..critedge.loopexit_crit_edge ], [ %i.ann, %.lr.ph5076.preheader ], [ %i.apt, %.lr.ph5076 ]
  %.3578.lcssa = phi i32 [ %.25775082, %.lr.ph5084.split ], [ %.4579, %..critedge.loopexit_crit_edge ], [ %.25775082, %.lr.ph5076.preheader ], [ %.4579, %.lr.ph5076 ] ; 2 uses
  %indvars.iv.next5613 = add nuw nsw i64 %indvars.iv5612, 1 ; 3 uses
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.anf, i64 %indvars.iv.next5613
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !79 ; 2 uses
  %.not676 = icmp eq ptr %i.apy, null
  br i1 %.not676, label %._crit_edge5085, label %.lr.ph5084.split, !llvm.loop !122

._crit_edge5085:                                  ; preds = %.critedge.us, %.critedge
  %.2577.lcssa = phi i32 [ %.3578.lcssa, %.critedge ], [ 0, %.critedge.us ] ; 7 uses
  %.0488.lcssa.in = phi i64 [ %indvars.iv.next5613, %.critedge ], [ %indvars.iv.next5607, %.critedge.us ]
  %.0488.lcssa = trunc i64 %.0488.lcssa.in to i32 ; 2 uses
  %i.apz = icmp eq i64 %indvars.iv5615, 3
  %i.aqa = add nsw i32 %.0488.lcssa, -3
  %.0574 = select i1 %i.apz, i32 %i.aqa, i32 %.0488.lcssa ; 2 uses
  %i.aqb = icmp slt i32 %.2577.lcssa, %.0574
  br i1 %i.aqb, label %bb.hx, label %bb.gj

bb.hx:                                            ; preds = %._crit_edge5085
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %148, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %bb.hy unwind label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.aqc = load ptr, ptr %i.we, align 8, !tbaa !75
  %i.aqd = getelementptr inbounds [32 x i8], ptr %i.aqc, i64 %i.ahl
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %i.aqf = load i32, ptr %i.aqe, align 8, !tbaa !170
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %148, i32 noundef 1880, ptr noundef nonnull @.str.47, i32 noundef %.2577.lcssa, i32 noundef %.0574, ptr noundef nonnull %i.aho, i32 noundef %i.aqf) #27
          to label %bb.hz unwind label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  unreachable

bb.ia:                                            ; preds = %bb.hx
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hy
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %148) #26
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.pn677 = phi { ptr, i32 } [ %i.aqh, %bb.ib ], [ %i.aqg, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #26
  br label %.body844

bb.id:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820
  %indvars.iv.next5616 = add nuw nsw i64 %indvars.iv5615, 1
  %i.aqi = icmp samesign ult i64 %indvars.iv5615, 3
  br i1 %i.aqi, label %bb.gl, label %bb.qa, !llvm.loop !123

bb.ie:                                            ; preds = %bb.gj
  %i.aqj = load ptr, ptr @debug, align 8, !tbaa !14
  %.not641 = icmp eq ptr %i.aqj, null
  br i1 %.not641, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aqk = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aql = load i32, ptr %i.bd, align 16, !tbaa !15
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.aqm
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !15
  %i.aqp = add nsw i32 %i.aqo, 1
  %i.aqq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aqk, ptr noundef nonnull @.str.48, i32 noundef %i.aqp) #31 ; 0 uses
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %i.aqr = load ptr, ptr %135, align 8, !tbaa !85 ; 4 uses
  %i.aqs = load ptr, ptr %i.ww, align 8, !tbaa !86
  %i.aqt = ptrtoint ptr %i.aqs to i64
  %i.aqu = ptrtoint ptr %i.aqr to i64
  %i.aqv = sub i64 %i.aqt, %i.aqu
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqr, i64 %i.aqv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #26
  store ptr %i.afl, ptr %108, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.afl, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  store i64 3, ptr %i.afm, align 8, !tbaa !34
  store i8 0, ptr %i.afn, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #26
  store ptr %i.afo, ptr %109, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.afo, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  store i64 3, ptr %i.afp, align 8, !tbaa !34
  store i8 0, ptr %i.afq, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #26
  store ptr %i.afr, ptr %110, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.afr, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i64 3, i1 false)
  store i64 3, ptr %i.afs, align 8, !tbaa !34
  store i8 0, ptr %i.aft, align 1, !tbaa !25
  %i.aqx = invoke fastcc noundef float @_ZL12get_ddb_bondN3gmx8ArrayRefIK19VirtualSiteTopologyEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr %i.aqr, ptr %i.aqw, ptr noundef nonnull align 8 dereferenceable(32) %108, ptr noundef nonnull align 8 dereferenceable(32) %109, ptr noundef nonnull align 8 dereferenceable(32) %110)
          to label %bb.ih unwind label %bb.ij     ; 3 uses

bb.ih:                                            ; preds = %bb.ig
  %i.aqy = load ptr, ptr %110, align 8, !tbaa !31 ; 2 uses
  %i.aqz = icmp eq ptr %i.aqy, %i.afr
  br i1 %i.aqz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i841, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i840

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i840: ; preds = %bb.ih
  %i.ara = load i64, ptr %i.afr, align 8, !tbaa !25
  %i.arb = add i64 %i.ara, 1
  call void @_ZdlPvm(ptr noundef %i.aqy, i64 noundef %i.arb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i841

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i841: ; preds = %bb.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i840
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #26
  %i.arc = load ptr, ptr %109, align 8, !tbaa !31 ; 2 uses
  %i.ard = icmp eq ptr %i.arc, %i.afo
  br i1 %i.ard, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i841
  %i.are = load i64, ptr %i.afo, align 8, !tbaa !25
  %i.arf = add i64 %i.are, 1
  call void @_ZdlPvm(ptr noundef %i.arc, i64 noundef %i.arf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i841, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #26
  %i.arg = load ptr, ptr %108, align 8, !tbaa !31 ; 2 uses
  %i.arh = icmp eq ptr %i.arg, %i.afl
  br i1 %i.arh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i
  %i.ari = load i64, ptr %i.afl, align 8, !tbaa !25
  %i.arj = add i64 %i.ari, 1
  call void @_ZdlPvm(ptr noundef %i.arg, i64 noundef %i.arj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #26
  store ptr %i.afu, ptr %111, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.afu, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  store i64 3, ptr %i.afv, align 8, !tbaa !34
  store i8 0, ptr %i.afw, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #26
  store ptr %i.afx, ptr %112, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.afx, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  store i64 3, ptr %i.afy, align 8, !tbaa !34
  store i8 0, ptr %i.afz, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #26
  store ptr %i.aga, ptr %113, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aga, ptr noundef nonnull align 1 dereferenceable(3) @.str.14, i64 3, i1 false)
  store i64 3, ptr %i.agb, align 8, !tbaa !34
  store i8 0, ptr %i.agc, align 1, !tbaa !25
  %i.ark = invoke fastcc noundef float @_ZL12get_ddb_bondN3gmx8ArrayRefIK19VirtualSiteTopologyEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr %i.aqr, ptr %i.aqw, ptr noundef nonnull align 8 dereferenceable(32) %111, ptr noundef nonnull align 8 dereferenceable(32) %112, ptr noundef nonnull align 8 dereferenceable(32) %113)
          to label %bb.ii unwind label %bb.ik     ; 3 uses

bb.ii:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i
  %i.arl = load ptr, ptr %113, align 8, !tbaa !31 ; 2 uses
  %i.arm = icmp eq ptr %i.arl, %i.aga
  br i1 %i.arm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i: ; preds = %bb.ii
  %i.arn = load i64, ptr %i.aga, align 8, !tbaa !25
  %i.aro = add i64 %i.arn, 1
  call void @_ZdlPvm(ptr noundef %i.arl, i64 noundef %i.aro) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i: ; preds = %bb.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  %i.arp = load ptr, ptr %112, align 8, !tbaa !31 ; 2 uses
  %i.arq = icmp eq ptr %i.arp, %i.afx
  br i1 %i.arq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i
  %i.arr = load i64, ptr %i.afx, align 8, !tbaa !25
  %i.ars = add i64 %i.arr, 1
  call void @_ZdlPvm(ptr noundef %i.arp, i64 noundef %i.ars) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #26
  %i.art = load ptr, ptr %111, align 8, !tbaa !31 ; 2 uses
  %i.aru = icmp eq ptr %i.art, %i.afu
  br i1 %i.aru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i
  %i.arv = load i64, ptr %i.afu, align 8, !tbaa !25
  %i.arw = add i64 %i.arv, 1
  call void @_ZdlPvm(ptr noundef %i.art, i64 noundef %i.arw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #26
  %i.arx = fneg float %i.aqx                      ; 3 uses
  %i.ary = fpext float %i.arx to double           ; 2 uses
  %i.arz = fpext float %i.aqx to double           ; 2 uses
  %i.asa = call double @llvm.fmuladd.f64(double %i.arz, double f0xBFDFFFFFFFFFFFFC, double %i.ary)
  %i.asb = fptrunc double %i.asa to float
  %i.asc = fpext float %i.ark to double           ; 2 uses
  %i.asd = call double @llvm.fmuladd.f64(double %i.asc, double f0xBFDFFFFFFFFFFFFC, double %i.ary)
  %i.ase = fptrunc double %i.asd to float         ; 2 uses
  %i.asf = fneg double %i.asc
  %i.asg = call double @llvm.fmuladd.f64(double %i.asf, double f0xBFDFFFFFFFFFFFFC, double 0.000000e+00)
  %i.ash = fptrunc double %i.asg to float         ; 2 uses
  %i.asi = fmul double %i.arz, f0x3FE0000000000001
  %i.asj = fptrunc double %i.asi to float         ; 2 uses
  %i.ask = fadd float %i.ark, %i.asj
  %i.asl = load ptr, ptr %i.wd, align 8, !tbaa !70 ; 11 uses
  %i.asm = load i32, ptr %i.bd, align 16, !tbaa !15
  %i.asn = sext i32 %i.asm to i64
  %i.aso = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.asn
  %i.asp = load float, ptr %i.aso, align 4, !tbaa !87 ; 2 uses
  %i.asq = call float @llvm.fmuladd.f32(float %i.asb, float %i.asp, float 0.000000e+00)
  %i.asr = fadd float %i.asp, 0.000000e+00
  %i.ass = load i32, ptr %i.adi, align 4, !tbaa !15
  %i.ast = sext i32 %i.ass to i64
  %i.asu = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.ast
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !87 ; 2 uses
  %i.asw = call float @llvm.fmuladd.f32(float %i.arx, float %i.asv, float %i.asq)
  %i.asx = fadd float %i.asr, %i.asv
  %i.asy = load i32, ptr %i.wx, align 8, !tbaa !15
  %i.asz = sext i32 %i.asy to i64
  %i.ata = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.asz
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !87 ; 2 uses
  %i.atc = call float @llvm.fmuladd.f32(float %i.ase, float %i.atb, float %i.asw)
  %i.atd = fadd float %i.asx, %i.atb
  %i.ate = load i32, ptr %i.adj, align 4, !tbaa !15
  %i.atf = sext i32 %i.ate to i64
  %i.atg = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.atf
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !87 ; 2 uses
  %i.ati = call float @llvm.fmuladd.f32(float %i.arx, float %i.ath, float %i.atc)
  %i.atj = fadd float %i.atd, %i.ath
  %i.atk = load i32, ptr %i.abr, align 16, !tbaa !15
  %i.atl = sext i32 %i.atk to i64
  %i.atm = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.atl
  %i.atn = load float, ptr %i.atm, align 4, !tbaa !87 ; 2 uses
  %i.ato = call float @llvm.fmuladd.f32(float %i.ase, float %i.atn, float %i.ati)
  %i.atp = fadd float %i.atj, %i.atn
  %i.atq = load i32, ptr %i.adg, align 4, !tbaa !15
  %i.atr = sext i32 %i.atq to i64
  %i.ats = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.atr
  %i.att = load float, ptr %i.ats, align 4, !tbaa !87 ; 2 uses
  %i.atu = call float @llvm.fmuladd.f32(float %i.att, float 0.000000e+00, float %i.ato)
  %i.atv = fadd float %i.atp, %i.att
  %i.atw = load i32, ptr %i.acl, align 8, !tbaa !15
  %i.atx = sext i32 %i.atw to i64
  %i.aty = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.atx
  %i.atz = load float, ptr %i.aty, align 4, !tbaa !87 ; 2 uses
  %i.aua = call float @llvm.fmuladd.f32(float %i.ash, float %i.atz, float %i.atu)
  %i.aub = fadd float %i.atv, %i.atz
  %i.auc = load i32, ptr %i.adh, align 4, !tbaa !15
  %i.aud = sext i32 %i.auc to i64
  %i.aue = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.aud
  %i.auf = load float, ptr %i.aue, align 4, !tbaa !87 ; 2 uses
  %i.aug = call float @llvm.fmuladd.f32(float %i.auf, float 0.000000e+00, float %i.aua)
  %i.auh = fadd float %i.aub, %i.auf
  %i.aui = load i32, ptr %i.wy, align 16, !tbaa !15
  %i.auj = sext i32 %i.aui to i64
  %i.auk = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.auj
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !87 ; 2 uses
  %i.aum = call float @llvm.fmuladd.f32(float %i.ash, float %i.aul, float %i.aug)
  %i.aun = fadd float %i.auh, %i.aul
  %i.auo = load i32, ptr %i.afh, align 4, !tbaa !15
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.aup
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !87 ; 2 uses
  %i.aus = call float @llvm.fmuladd.f32(float %i.asj, float %i.aur, float %i.aum)
  %i.aut = fadd float %i.aun, %i.aur
  %i.auu = load i32, ptr %i.afi, align 8, !tbaa !15
  %i.auv = sext i32 %i.auu to i64
  %i.auw = getelementptr inbounds [36 x i8], ptr %i.asl, i64 %i.auv
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !87 ; 2 uses
  %i.auy = call float @llvm.fmuladd.f32(float %i.ask, float %i.aux, float %i.aus)
  %i.auz = fadd float %i.aut, %i.aux
  %i.ava = fdiv float %i.auy, %i.auz
  %i.avb = invoke fastcc noundef i32 @_ZL16gen_vsites_6ringP7t_atomsN3gmx8ArrayRefI16VsiteTypeAndSignEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS6_95EEEiPifffb(ptr noundef nonnull readonly %3, ptr %i.vz, ptr noundef nonnull align 8 dereferenceable(21280) %6, i32 noundef %.2577.lcssa, ptr noundef nonnull readonly %i.bd, float noundef %i.aqx, float noundef %i.ark, float noundef %i.ava, i1 noundef zeroext true)
          to label %_ZL14gen_vsites_pheP7t_atomsN3gmx8ArrayRefI16VsiteTypeAndSignEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS6_95EEEiPiNS2_IK19VirtualSiteTopologyEE.exit unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

bb.ij:                                            ; preds = %bb.ig
  %i.avc = landingpad { ptr, i32 }
          cleanup
  %i.avd = load ptr, ptr %110, align 8, !tbaa !31 ; 2 uses
  %i.ave = icmp eq ptr %i.avd, %i.afr
  br i1 %i.ave, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %bb.ij
  %i.avf = load i64, ptr %i.afr, align 8, !tbaa !25
  %i.avg = add i64 %i.avf, 1
  call void @_ZdlPvm(ptr noundef %i.avd, i64 noundef %i.avg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i: ; preds = %bb.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #26
  %i.avh = load ptr, ptr %109, align 8, !tbaa !31 ; 2 uses
  %i.avi = icmp eq ptr %i.avh, %i.afo
  br i1 %i.avi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i
  %i.avj = load i64, ptr %i.afo, align 8, !tbaa !25
  %i.avk = add i64 %i.avj, 1
  call void @_ZdlPvm(ptr noundef %i.avh, i64 noundef %i.avk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #26
  %i.avl = load ptr, ptr %108, align 8, !tbaa !31 ; 2 uses
  %i.avm = icmp eq ptr %i.avl, %i.afl
  br i1 %i.avm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i
  %i.avn = load i64, ptr %i.afl, align 8, !tbaa !25
  %i.avo = add i64 %i.avn, 1
  call void @_ZdlPvm(ptr noundef %i.avl, i64 noundef %i.avo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #26
  br label %.body844

bb.ik:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i
  %i.avp = landingpad { ptr, i32 }
          cleanup
  %i.avq = load ptr, ptr %113, align 8, !tbaa !31 ; 2 uses
  %i.avr = icmp eq ptr %i.avq, %i.aga
  br i1 %i.avr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i: ; preds = %bb.ik
  %i.avs = load i64, ptr %i.aga, align 8, !tbaa !25
  %i.avt = add i64 %i.avs, 1
  call void @_ZdlPvm(ptr noundef %i.avq, i64 noundef %i.avt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i: ; preds = %bb.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  %i.avu = load ptr, ptr %112, align 8, !tbaa !31 ; 2 uses
  %i.avv = icmp eq ptr %i.avu, %i.afx
  br i1 %i.avv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i
  %i.avw = load i64, ptr %i.afx, align 8, !tbaa !25
  %i.avx = add i64 %i.avw, 1
  call void @_ZdlPvm(ptr noundef %i.avu, i64 noundef %i.avx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #26
  %i.avy = load ptr, ptr %111, align 8, !tbaa !31 ; 2 uses
  %i.avz = icmp eq ptr %i.avy, %i.afu
  br i1 %i.avz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i
  %i.awa = load i64, ptr %i.afu, align 8, !tbaa !25
  %i.awb = add i64 %i.awa, 1
  call void @_ZdlPvm(ptr noundef %i.avy, i64 noundef %i.awb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #26
  br label %.body844

_ZL14gen_vsites_pheP7t_atomsN3gmx8ArrayRefI16VsiteTypeAndSignEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS6_95EEEiPiNS2_IK19VirtualSiteTopologyEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i
  %i.awc = add nsw i32 %i.avb, %.05835136
  br label %bb.qa

.loopexit1601:                                    ; preds = %.lr.ph71.i, %.noexc899, %bb.qn, %bb.qo
  %lpad.loopexit1603 = landingpad { ptr, i32 }
          cleanup
  br label %.body844

.loopexit.split-lp1602.loopexit:                  ; preds = %bb.qh, %.noexc893, %.lr.ph.i888
  %lpad.loopexit1607 = landingpad { ptr, i32 }
          cleanup
  br label %.body844

.loopexit.split-lp1602.loopexit.split-lp.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.i, %bb.qd, %.loopexit1606, %bb.in, %.noexc855, %.noexc856, %.noexc857, %.noexc858, %.noexc860, %.noexc861, %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE6resizeEm.exit.i, %.noexc864, %.noexc865, %.noexc866, %bb.oe, %.noexc878, %bb.po, %bb.pp, %.noexc881, %.noexc882, %bb.pq, %bb.pr, %_ZNKSt6vectorI16VsiteTypeAndSignSaIS0_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i1196
  %lpad.loopexit1615 = landingpad { ptr, i32 }
          cleanup
  br label %.body844

.loopexit.split-lp1602.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.critedge.i892
  %lpad.loopexit.split-lp1616 = landingpad { ptr, i32 }
          cleanup
  br label %.body844

bb.il:                                            ; preds = %bb.gj
  %i.awd = load ptr, ptr @debug, align 8, !tbaa !14
  %.not640 = icmp eq ptr %i.awd, null
  br i1 %.not640, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.awe = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.awf = load i32, ptr %i.bd, align 16, !tbaa !15
  %i.awg = sext i32 %i.awf to i64
  %i.awh = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.awg
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !15
  %i.awj = add nsw i32 %i.awi, 1
  %i.awk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.awe, ptr noundef nonnull @.str.49, i32 noundef %i.awj) #31 ; 0 uses
  br label %bb.in

bb.in:                                            ; preds = %bb.il, %bb.im
  %i.awl = load ptr, ptr %5, align 8, !tbaa !58
  %i.awm = ptrtoint ptr %i.awl to i64
  %i.awn = load ptr, ptr %135, align 8, !tbaa !85 ; 3 uses
  %i.awo = load ptr, ptr %i.ww, align 8, !tbaa !86
  %i.awp = ptrtoint ptr %i.awo to i64
  %i.awq = ptrtoint ptr %i.awn to i64
  %i.awr = sub i64 %i.awp, %i.awq
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awn, i64 %i.awr
  %i.awt = invoke fastcc noundef i32 @_ZL14gen_vsites_trpP22PreprocessingAtomTypesPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EEPP6t_atomPPPPcPPiPS1_I16VsiteTypeAndSignSaISH_EEP8t_symtabSF_NS2_8ArrayRefIKS4_EEP7t_atomsNSN_ISH_EERNS2_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSU_95EEEiSF_iNSN_IK19VirtualSiteTopologyEE(ptr noundef %2, ptr noundef %136, ptr noundef %i.be, ptr noundef %i.bf, ptr noundef %i.bc, ptr noundef %137, ptr noundef %4, ptr noundef %i.az, i64 %i.awm, ptr noundef nonnull %3, i64 %i.wa, ptr noundef nonnull align 8 dereferenceable(21280) %6, i32 noundef %.2577.lcssa, ptr noundef %i.bd, i32 noundef %i.dk, ptr %i.awn, ptr %i.aws)
          to label %bb.io unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

bb.io:                                            ; preds = %bb.in
  %i.awu = add nsw i32 %i.awt, %.05835136
  br label %bb.qa

bb.ip:                                            ; preds = %bb.gj
  %i.awv = load ptr, ptr @debug, align 8, !tbaa !14
  %.not639 = icmp eq ptr %i.awv, null
  br i1 %.not639, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aww = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.awx = load i32, ptr %i.bd, align 16, !tbaa !15
  %i.awy = sext i32 %i.awx to i64
  %i.awz = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !15
  %i.axb = add nsw i32 %i.axa, 1
  %i.axc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aww, ptr noundef nonnull @.str.50, i32 noundef %i.axb) #31 ; 0 uses
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ip, %bb.iq
  %i.axd = load ptr, ptr %5, align 8, !tbaa !58   ; 2 uses
  %i.axe = load ptr, ptr %135, align 8, !tbaa !85 ; 7 uses
  %i.axf = load ptr, ptr %i.ww, align 8, !tbaa !86
  %i.axg = ptrtoint ptr %i.axf to i64
  %i.axh = ptrtoint ptr %i.axe to i64
  %i.axi = sub i64 %i.axg, %i.axh
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.axi ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #26
  %.not.i846 = icmp eq i32 %.2577.lcssa, 12
  br i1 %.not.i846, label %._crit_edge.i.i.i850, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull @.str.108, ptr noundef nonnull align 1 dereferenceable(1) %90)
          to label %bb.it unwind label %bb.iw

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %91, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %bb.iu unwind label %bb.ix

bb.iu:                                            ; preds = %bb.it
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.100, ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(40) %91, i32 noundef 1302) #27
          to label %bb.iv unwind label %bb.iy

bb.iv:                                            ; preds = %bb.iu
  unreachable

bb.iw:                                            ; preds = %bb.is
  %i.axk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i847

bb.ix:                                            ; preds = %bb.it
  %i.axl = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.iy:                                            ; preds = %bb.iu
  %i.axm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %91) #26
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.pn206.i = phi { ptr, i32 } [ %i.axm, %bb.iy ], [ %i.axl, %bb.ix ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26
  %i.axn = load ptr, ptr %89, align 8, !tbaa !31  ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 2 uses
  %i.axp = icmp eq ptr %i.axn, %i.axo
  br i1 %i.axp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i847, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i848

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i848: ; preds = %bb.iz
  %i.axq = load i64, ptr %i.axo, align 8, !tbaa !25
  %i.axr = add i64 %i.axq, 1
  call void @_ZdlPvm(ptr noundef %i.axn, i64 noundef %i.axr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i847

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i847: ; preds = %bb.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i848, %bb.iw
  %.pn206.pn.i = phi { ptr, i32 } [ %i.axk, %bb.iw ], [ %.pn206.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i848 ], [ %.pn206.i, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #26
  br label %bb.jx

._crit_edge.i.i.i850:                             ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #26
  store ptr %i.adl, ptr %92, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.adl, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  store i64 3, ptr %i.adm, align 8, !tbaa !34
  store i8 0, ptr %i.adn, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #26
  store ptr %i.ado, ptr %93, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ado, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  store i64 3, ptr %i.adp, align 8, !tbaa !34
  store i8 0, ptr %i.adq, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #26
  store ptr %i.adr, ptr %94, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.adr, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i64 3, i1 false)
  store i64 3, ptr %i.ads, align 8, !tbaa !34
  store i8 0, ptr %i.adt, align 1, !tbaa !25
  %i.axs = invoke fastcc noundef float @_ZL12get_ddb_bondN3gmx8ArrayRefIK19VirtualSiteTopologyEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr %i.axe, ptr %i.axj, ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %93, ptr noundef nonnull align 8 dereferenceable(32) %94)
          to label %bb.ja unwind label %bb.jf     ; 7 uses

bb.ja:                                            ; preds = %._crit_edge.i.i.i850
  %i.axt = load ptr, ptr %94, align 8, !tbaa !31  ; 2 uses
  %i.axu = icmp eq ptr %i.axt, %i.adr
  br i1 %i.axu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i852, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i851

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i851: ; preds = %bb.ja
  %i.axv = load i64, ptr %i.adr, align 8, !tbaa !25
  %i.axw = add i64 %i.axv, 1
  call void @_ZdlPvm(ptr noundef %i.axt, i64 noundef %i.axw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i852

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i852: ; preds = %bb.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i851
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #26
  %i.axx = load ptr, ptr %93, align 8, !tbaa !31  ; 2 uses
  %i.axy = icmp eq ptr %i.axx, %i.ado
  br i1 %i.axy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i852
  %i.axz = load i64, ptr %i.ado, align 8, !tbaa !25
  %i.aya = add i64 %i.axz, 1
  call void @_ZdlPvm(ptr noundef %i.axx, i64 noundef %i.aya) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i852, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221.i
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #26
  %i.ayb = load ptr, ptr %92, align 8, !tbaa !31  ; 2 uses
  %i.ayc = icmp eq ptr %i.ayb, %i.adl
  br i1 %i.ayc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i
  %i.ayd = load i64, ptr %i.adl, align 8, !tbaa !25
  %i.aye = add i64 %i.ayd, 1
  call void @_ZdlPvm(ptr noundef %i.ayb, i64 noundef %i.aye) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #26
  store ptr %i.adu, ptr %95, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.adu, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  store i64 3, ptr %i.adv, align 8, !tbaa !34
  store i8 0, ptr %i.adw, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #26
  store ptr %i.adx, ptr %96, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.adx, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  store i64 3, ptr %i.ady, align 8, !tbaa !34
  store i8 0, ptr %i.adz, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #26
  store ptr %i.aea, ptr %97, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aea, ptr noundef nonnull align 1 dereferenceable(3) @.str.14, i64 3, i1 false)
  store i64 3, ptr %i.aeb, align 8, !tbaa !34
  store i8 0, ptr %i.aec, align 1, !tbaa !25
  %i.ayf = invoke fastcc noundef float @_ZL12get_ddb_bondN3gmx8ArrayRefIK19VirtualSiteTopologyEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr %i.axe, ptr %i.axj, ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull align 8 dereferenceable(32) %97)
          to label %bb.jb unwind label %bb.jg     ; 2 uses

bb.jb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i
  %i.ayg = load ptr, ptr %97, align 8, !tbaa !31  ; 2 uses
  %i.ayh = icmp eq ptr %i.ayg, %i.aea
  br i1 %i.ayh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239.i: ; preds = %bb.jb
  %i.ayi = load i64, ptr %i.aea, align 8, !tbaa !25
  %i.ayj = add i64 %i.ayi, 1
  call void @_ZdlPvm(ptr noundef %i.ayg, i64 noundef %i.ayj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.i: ; preds = %bb.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239.i
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  %i.ayk = load ptr, ptr %96, align 8, !tbaa !31  ; 2 uses
  %i.ayl = icmp eq ptr %i.ayk, %i.adx
  br i1 %i.ayl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.i
  %i.aym = load i64, ptr %i.adx, align 8, !tbaa !25
  %i.ayn = add i64 %i.aym, 1
  call void @_ZdlPvm(ptr noundef %i.ayk, i64 noundef %i.ayn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.i
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #26
  %i.ayo = load ptr, ptr %95, align 8, !tbaa !31  ; 2 uses
  %i.ayp = icmp eq ptr %i.ayo, %i.adu
  br i1 %i.ayp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i
  %i.ayq = load i64, ptr %i.adu, align 8, !tbaa !25
  %i.ayr = add i64 %i.ayq, 1
  call void @_ZdlPvm(ptr noundef %i.ayo, i64 noundef %i.ayr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245.i
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #26
  store ptr %i.aed, ptr %98, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aed, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  store i64 3, ptr %i.aee, align 8, !tbaa !34
  store i8 0, ptr %i.aef, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #26
  store ptr %i.aeg, ptr %99, align 8, !tbaa !32
  store i16 23107, ptr %i.aeg, align 8
  store i64 2, ptr %i.aeh, align 8, !tbaa !34
  store i8 0, ptr %i.aei, align 2, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #26
  store ptr %i.aej, ptr %100, align 8, !tbaa !32
  store i16 18511, ptr %i.aej, align 8
  store i64 2, ptr %i.aek, align 8, !tbaa !34
  store i8 0, ptr %i.ael, align 2, !tbaa !25
  %i.ays = invoke fastcc noundef float @_ZL12get_ddb_bondN3gmx8ArrayRefIK19VirtualSiteTopologyEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr %i.axe, ptr %i.axj, ptr noundef nonnull align 8 dereferenceable(32) %98, ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
          to label %bb.jc unwind label %bb.jh     ; 4 uses

bb.jc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247.i
  %i.ayt = load ptr, ptr %100, align 8, !tbaa !31 ; 2 uses
  %i.ayu = icmp eq ptr %i.ayt, %i.aej
  br i1 %i.ayu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i: ; preds = %bb.jc
  %i.ayv = load i64, ptr %i.aej, align 8, !tbaa !25
  %i.ayw = add i64 %i.ayv, 1
  call void @_ZdlPvm(ptr noundef %i.ayt, i64 noundef %i.ayw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i: ; preds = %bb.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #26
  %i.ayx = load ptr, ptr %99, align 8, !tbaa !31  ; 2 uses
  %i.ayy = icmp eq ptr %i.ayx, %i.aeg
end_hunk_0
begin_hunk_1_@_Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE:bb.a
bb.jt:                                            ; preds = %bb.js
  %i.bkk = icmp slt i32 %i.bjs, 0
  br i1 %i.bkk, label %.invoke, label %_ZNKSt6vectorI16VsiteTypeAndSignSaIS0_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.jt, %bb.jo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #27
          to label %.cont unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorI16VsiteTypeAndSignSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.jt
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bjz, i64 %i.bkb)
  %i.bkl = add nuw nsw i64 %.sroa.speculated.i.i, %i.bjz
  %i.bkm = call i64 @llvm.umin.i64(i64 %i.bkl, i64 768614336404564650) ; 2 uses
  %i.bkn = mul nuw nsw i64 %i.bkm, 12
  %i.bko = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bkn) #28
          to label %.noexc1191 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit ; 4 uses

.noexc1191:                                       ; preds = %_ZNKSt6vectorI16VsiteTypeAndSignSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 %i.bjy ; 2 uses
  %i.bkq = mul nuw nsw i64 %i.bkb, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bkp, i8 0, i64 %i.bkq, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.bjv, %i.bju
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i1188

.lr.ph.i.i.i.i1188:                               ; preds = %.noexc1191, %.lr.ph.i.i.i.i1188
  %.012.i.i.i.i = phi ptr [ %i.bks, %.lr.ph.i.i.i.i1188 ], [ %i.bko, %.noexc1191 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bkr, %.lr.ph.i.i.i.i1188 ], [ %i.bjv, %.noexc1191 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !172
  %i.bkr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i1189 = icmp eq ptr %i.bkr, %i.bju
  br i1 %.not.i.i.i.i1189, label %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i1188, !llvm.loop !1

_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i1188, %.noexc1191
  %.not.i36.i = icmp eq ptr %i.bjv, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI16VsiteTypeAndSignSaIS0_EE13_M_deallocateEPS0_m.exit37.i, label %bb.ju

bb.ju:                                            ; preds = %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bkt = load ptr, ptr %i.us, align 8, !tbaa !66
  %i.bku = ptrtoint ptr %i.bkt to i64
  %i.bkv = sub i64 %i.bku, %i.bjx
  call void @_ZdlPvm(ptr noundef nonnull %i.bjv, i64 noundef %i.bkv) #30
  br label %_ZNSt12_Vector_baseI16VsiteTypeAndSignSaIS0_EE13_M_deallocateEPS0_m.exit37.i

_ZNSt12_Vector_baseI16VsiteTypeAndSignSaIS0_EE13_M_deallocateEPS0_m.exit37.i: ; preds = %bb.ju, %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.bko, ptr %137, align 8, !tbaa !65
  %i.bkw = getelementptr inbounds nuw [12 x i8], ptr %i.bkp, i64 %i.bkb
  store ptr %i.bkw, ptr %i.ur, align 8, !tbaa !67
  %i.bkx = getelementptr inbounds nuw [12 x i8], ptr %i.bko, i64 %i.bkm
  store ptr %i.bkx, ptr %i.us, align 8, !tbaa !66
  br label %.noexc863

.noexc863:                                        ; preds = %_ZNSt12_Vector_baseI16VsiteTypeAndSignSaIS0_EE13_M_deallocateEPS0_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP16VsiteTypeAndSignmS0_ET_S2_T0_RSaIT1_E.exit.i
  %.pre47.i = load i32, ptr %3, align 8, !tbaa !24
  %.pre49.i = add nsw i32 %.pre47.i, %i.bhu
  %.pre50.i = sext i32 %.pre49.i to i64
  br label %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE6resizeEm.exit.i

bb.jv:                                            ; preds = %.noexc862
  %i.bky = icmp ugt i64 %i.bjz, %i.bjt
  br i1 %i.bky, label %bb.jw, label %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE6resizeEm.exit.i

bb.jw:                                            ; preds = %bb.jv
  %i.bkz = getelementptr inbounds nuw [12 x i8], ptr %i.bjv, i64 %i.bjt ; 2 uses
  %.not.i.i.i853 = icmp eq ptr %i.bju, %i.bkz
  br i1 %.not.i.i.i853, label %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE6resizeEm.exit.i, label %_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.jw
  store ptr %i.bkz, ptr %i.ur, align 8, !tbaa !67
  br label %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.jw, %bb.jv, %.noexc863
  %.pre-phi51.i = phi i64 [ %.pre50.i, %.noexc863 ], [ %i.bjt, %bb.jv ], [ %i.bjt, %bb.jw ], [ %i.bjt, %_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i.i ]
  %i.bla = fmul float %i.azf, 2.000000e+00        ; 4 uses
  %i.blb = add nsw i32 %i.bew, %i.bej             ; 2 uses
  %i.blc = getelementptr [8 x i8], ptr %i.bjq, i64 %.pre-phi51.i
  %i.bld = getelementptr i8, ptr %i.blc, i64 -8
  store ptr null, ptr %i.bld, align 8, !tbaa !81
  %i.ble = getelementptr inbounds [12 x i8], ptr %i.axd, i64 %i.bek ; 2 uses
  %i.blf = getelementptr inbounds [12 x i8], ptr %i.axd, i64 %i.beo ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %i.ble, i64 8
  %i.blh = load float, ptr %i.blg, align 4, !tbaa !88 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blf, i64 8
  %i.blj = load float, ptr %i.bli, align 4, !tbaa !88
  %i.blk = fsub float %i.blh, %i.blj
  %i.bll = fmul float %i.blk, 2.000000e+00
  %i.blm = sext i32 %i.blb to i64                 ; 3 uses
  %i.bln = load ptr, ptr %136, align 8, !tbaa !58
  %i.blo = getelementptr inbounds nuw [12 x i8], ptr %i.bln, i64 %i.blm ; 2 uses
  %i.blp = fadd float %i.blh, %i.bll
  %i.blq = load <2 x float>, ptr %i.ble, align 4, !tbaa !88 ; 2 uses
  %i.blr = load <2 x float>, ptr %i.blf, align 4, !tbaa !88
  %i.bls = fsub <2 x float> %i.blq, %i.blr
  %i.blt = fmul <2 x float> %i.bls, splat (float 2.000000e+00)
  %i.blu = fadd <2 x float> %i.blq, %i.blt
  store <2 x float> %i.blu, ptr %i.blo, align 4, !tbaa !88
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blo, i64 8
  store float %i.blp, ptr %i.blv, align 4, !tbaa !88
  store i32 3233613, ptr %i.ac, align 4
  %i.blw = invoke noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef %4, ptr noundef nonnull %i.ac)
          to label %.noexc864 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

.noexc864:                                        ; preds = %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE6resizeEm.exit.i
  %i.blx = fptrunc double %i.bdy to float
  %i.bly = fpext float %i.azs to double
  %i.blz = fmul double %i.bly, f0x3F91DF46A2529D39
  %i.bma = fptrunc double %i.blz to float
  %i.bmb = getelementptr inbounds [8 x i8], ptr %i.bjq, i64 %i.blm
  store ptr %i.blw, ptr %i.bmb, align 8, !tbaa !81
  %i.bmc = getelementptr inbounds [36 x i8], ptr %i.bjl, i64 %i.blm ; 10 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 8
  store float %i.ben, ptr %i.bmd, align 4, !tbaa !89
  store float %i.ben, ptr %i.bmc, align 4, !tbaa !87
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmc, i64 12
  store float 0.000000e+00, ptr %i.bme, align 4, !tbaa !91
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bmc, i64 4
  store float 0.000000e+00, ptr %i.bmf, align 4, !tbaa !92
  %i.bmg = trunc i32 %i.bev to i16                ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmc, i64 18
  store i16 %i.bmg, ptr %i.bmh, align 2, !tbaa !93
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmc, i64 16
  store i16 %i.bmg, ptr %i.bmi, align 4, !tbaa !94
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmc, i64 20
  store i32 0, ptr %i.bmj, align 4, !tbaa !95
  %i.bmk = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.bml = getelementptr inbounds [36 x i8], ptr %i.bmk, i64 %i.bek
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 24
  %i.bmn = load i32, ptr %i.bmm, align 4, !tbaa !74
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmc, i64 24
  store i32 %i.bmn, ptr %i.bmo, align 4, !tbaa !74
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmc, i64 32
  store i8 77, ptr %i.bmp, align 4, !tbaa !25
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmc, i64 33
  store i8 0, ptr %i.bmq, align 1, !tbaa !25
  %i.bmr = getelementptr inbounds [12 x i8], ptr %i.vz, i64 %i.bek
  store i64 4294967362, ptr %i.bmr, align 4
  %i.bms = fpext float %i.blx to double
  %i.bmt = fmul double %i.bms, f0x3FEBB67AE8584CAA
  %i.bmu = call double @llvm.fmuladd.f64(double %i.bal, double f0x3FE0000000000001, double %i.bmt)
  %i.bmv = fadd double %i.bmu, %i.bdh
  %i.bmw = fptrunc double %i.bmv to float         ; 3 uses
  %i.bmx = fmul float %i.bmw, %i.bmw
  %i.bmy = fmul float %i.bla, %i.bla
  %i.bmz = fadd float %i.bmy, %i.bmx
  %i.bna = fmul float %i.bmw, 2.000000e+00
  %i.bnb = call noundef float @cosf(float noundef %i.bma) #26
  %i.bnc = fneg float %i.bla
  %i.bnd = fmul float %i.bna, %i.bnc
  %i.bne = call float @llvm.fmuladd.f32(float %i.bnd, float %i.bnb, float %i.bmz)
  %i.bnf = call noundef float @sqrtf(float noundef %i.bne) #26
  %i.bng = add nsw i32 %i.blb, %i.dk              ; 3 uses
  store float %i.bnf, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, align 16, !tbaa !88
  invoke void @_Z9add_paramP18InteractionsOfTypeiiN3gmx8ArrayRefIKfEEPKc(ptr noundef nonnull %i.adf, i32 noundef %i.bax, i32 noundef %i.bng, ptr nonnull @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, i64 48), ptr noundef null)
          to label %.noexc865 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

.noexc865:                                        ; preds = %.noexc864
  store float %i.bla, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, align 16, !tbaa !88
  invoke void @_Z9add_paramP18InteractionsOfTypeiiN3gmx8ArrayRefIKfEEPKc(ptr noundef nonnull %i.adf, i32 noundef %i.bdn, i32 noundef %i.bng, ptr nonnull @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, i64 48), ptr noundef null)
          to label %.noexc866 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

.noexc866:                                        ; preds = %.noexc865
  invoke void @_Z16add_vsite2_paramP18InteractionsOfTypeiiif(ptr noundef nonnull %i.afk, i32 noundef %i.bej, i32 noundef %i.bdn, i32 noundef %i.bng, float noundef 5.000000e-01)
          to label %bb.jy unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

bb.jx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i847
  %.pn206.pn.pn.i = phi { ptr, i32 } [ %.pn206.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i847 ], [ %i.bgy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.i ], [ %i.bgl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353.i ], [ %i.bfy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i ], [ %i.bfl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i ], [ %i.bey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  br label %.body844

bb.jy:                                            ; preds = %.noexc866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  %i.bnh = add i32 %.05835136, 1
  %i.bni = add i32 %i.bnh, %i.bdg
  br label %bb.qa

bb.jz:                                            ; preds = %bb.gj
  %i.bnj = load ptr, ptr @debug, align 8, !tbaa !14
  %.not638 = icmp eq ptr %i.bnj, null
  br i1 %.not638, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bnk = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bnl = load i32, ptr %i.bd, align 16, !tbaa !15
  %i.bnm = sext i32 %i.bnl to i64
  %i.bnn = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.bnm
  %i.bno = load i32, ptr %i.bnn, align 4, !tbaa !15
  %i.bnp = add nsw i32 %i.bno, 1
  %i.bnq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bnk, ptr noundef nonnull @.str.51, i32 noundef %i.bnp) #31 ; 0 uses
  br label %bb.kb

bb.kb:                                            ; preds = %bb.jz, %bb.ka
  %i.bnr = load ptr, ptr %135, align 8, !tbaa !85 ; 19 uses
  %i.bns = load ptr, ptr %i.ww, align 8, !tbaa !86
  %i.bnt = ptrtoint ptr %i.bns to i64
  %i.bnu = ptrtoint ptr %i.bnr to i64
  %i.bnv = sub i64 %i.bnt, %i.bnu
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnr, i64 %i.bnv ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  %i.bnx = add i32 %.2577.lcssa, -10
  %or.cond.i = icmp ult i32 %i.bnx, -4
  br i1 %or.cond.i, label %bb.kc, label %bb.kk

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.kd unwind label %bb.kg

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %bb.ke unwind label %bb.kh

bb.ke:                                            ; preds = %bb.kd
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.100, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(40) %26, i32 noundef 1457) #27
          to label %bb.kf unwind label %bb.ki

bb.kf:                                            ; preds = %bb.ke
  unreachable

bb.kg:                                            ; preds = %bb.kc
  %i.bny = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i875

bb.kh:                                            ; preds = %bb.kd
  %i.bnz = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

bb.ki:                                            ; preds = %bb.ke
  %i.boa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #26
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %.pn346.i = phi { ptr, i32 } [ %i.boa, %bb.ki ], [ %i.bnz, %bb.kh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.bob = load ptr, ptr %24, align 8, !tbaa !31  ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.bod = icmp eq ptr %i.bob, %i.boc
  br i1 %i.bod, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i875, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i876

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i876: ; preds = %bb.kj
  %i.boe = load i64, ptr %i.boc, align 8, !tbaa !25
  %i.bof = add i64 %i.boe, 1
  call void @_ZdlPvm(ptr noundef %i.bob, i64 noundef %i.bof) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i875

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i875: ; preds = %bb.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i876, %bb.kg
  %.pn346.pn.i = phi { ptr, i32 } [ %i.bny, %bb.kg ], [ %.pn346.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i876 ], [ %.pn346.i, %bb.kj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.ps

bb.kk:                                            ; preds = %bb.kb
  %i.bog = load i32, ptr %i.wx, align 8, !tbaa !15
  %.not.i870 = icmp eq i32 %i.bog, -409203        ; 2 uses
  br i1 %.not.i870, label %bb.ko, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.boh = load i32, ptr %i.wy, align 16, !tbaa !15
  %.not253.i = icmp eq i32 %i.boh, -409203
  br i1 %.not253.i, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ab, ptr noundef nonnull align 1 dereferenceable(5) @.str.85, i64 5, i1 false)
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ab, ptr noundef nonnull align 1 dereferenceable(5) @.str.80, i64 5, i1 false)
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ab, ptr noundef nonnull align 1 dereferenceable(5) @.str.83, i64 5, i1 false)
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn, %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr %i.wz, ptr %27, align 8, !tbaa !32
  %i.boi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #26 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26
  store i64 %i.boi, ptr %i.aa, align 8, !tbaa !33
  %i.boj = icmp ugt i64 %i.boi, 15                ; 13 uses
  br i1 %i.boj, label %.noexc.i.i873, label %._crit_edge.i.i.i871

.noexc.i.i873:                                    ; preds = %bb.kp
  %i.bok = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %.noexc.i874 unwind label %bb.ly ; 2 uses

.noexc.i874:                                      ; preds = %.noexc.i.i873
  store ptr %i.bok, ptr %27, align 8, !tbaa !31
  %i.bol = load i64, ptr %i.aa, align 8, !tbaa !33
  store i64 %i.bol, ptr %i.wz, align 8, !tbaa !25
  br label %._crit_edge.i.i.i871

._crit_edge.i.i.i871:                             ; preds = %.noexc.i874, %bb.kp
  %i.bom = phi ptr [ %i.bok, %.noexc.i874 ], [ %i.wz, %bb.kp ] ; 2 uses
  switch i64 %i.boi, label %bb.kr [
    i64 1, label %bb.kq
    i64 0, label %._crit_edge.i.i350.i
  ]

bb.kq:                                            ; preds = %._crit_edge.i.i.i871
  store i8 72, ptr %i.bom, align 1, !tbaa !25
  br label %._crit_edge.i.i350.i

bb.kr:                                            ; preds = %._crit_edge.i.i.i871
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bom, ptr nonnull align 1 %i.ab, i64 %i.boi, i1 false)
  br label %._crit_edge.i.i350.i

._crit_edge.i.i350.i:                             ; preds = %bb.kr, %bb.kq, %._crit_edge.i.i.i871
  %i.bon = load i64, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  store i64 %i.bon, ptr %i.xa, align 8, !tbaa !34
  %i.boo = load ptr, ptr %27, align 8, !tbaa !31
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 %i.bon
  store i8 0, ptr %i.bop, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  store ptr %i.xb, ptr %28, align 8, !tbaa !32
  store i16 18243, ptr %i.xb, align 8
  store i64 2, ptr %i.xc, align 8, !tbaa !34
  store i8 0, ptr %i.xd, align 2, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  store ptr %i.xe, ptr %29, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.xe, ptr noundef nonnull align 1 dereferenceable(3) @.str.35, i64 3, i1 false)
  store i64 3, ptr %i.xf, align 8, !tbaa !34
  store i8 0, ptr %i.xg, align 1, !tbaa !25
  %i.boq = invoke fastcc noundef float @_ZL12get_ddb_bondN3gmx8ArrayRefIK19VirtualSiteTopologyEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr %i.bnr, ptr %i.bnw, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.ks unwind label %bb.lz     ; 3 uses

bb.ks:                                            ; preds = %._crit_edge.i.i350.i
  %i.bor = load ptr, ptr %29, align 8, !tbaa !31  ; 2 uses
  %i.bos = icmp eq ptr %i.bor, %i.xe
  br i1 %i.bos, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358.i: ; preds = %bb.ks
  %i.bot = load i64, ptr %i.xe, align 8, !tbaa !25
  %i.bou = add i64 %i.bot, 1
  call void @_ZdlPvm(ptr noundef %i.bor, i64 noundef %i.bou) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i: ; preds = %bb.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.bov = load ptr, ptr %28, align 8, !tbaa !31  ; 2 uses
  %i.bow = icmp eq ptr %i.bov, %i.xb
  br i1 %i.bow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i
  %i.box = load i64, ptr %i.xb, align 8, !tbaa !25
  %i.boy = add i64 %i.box, 1
  call void @_ZdlPvm(ptr noundef %i.bov, i64 noundef %i.boy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  %i.boz = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.bpa = icmp eq ptr %i.boz, %i.wz
  br i1 %i.bpa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i
  %i.bpb = load i64, ptr %i.wz, align 8, !tbaa !25
  %i.bpc = add i64 %i.bpb, 1
  call void @_ZdlPvm(ptr noundef %i.boz, i64 noundef %i.bpc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  store ptr %i.xh, ptr %30, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  store i64 %i.boi, ptr %i.z, align 8, !tbaa !33
  br i1 %i.boj, label %.noexc.i368.i, label %._crit_edge.i.i367.i

.noexc.i368.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366.i
  %i.bpd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef 0)
          to label %.noexc369.i unwind label %bb.ma ; 2 uses

.noexc369.i:                                      ; preds = %.noexc.i368.i
  store ptr %i.bpd, ptr %30, align 8, !tbaa !31
  %i.bpe = load i64, ptr %i.z, align 8, !tbaa !33
  store i64 %i.bpe, ptr %i.xh, align 8, !tbaa !25
  br label %._crit_edge.i.i367.i

._crit_edge.i.i367.i:                             ; preds = %.noexc369.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366.i
  %i.bpf = phi ptr [ %i.bpd, %.noexc369.i ], [ %i.xh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366.i ] ; 2 uses
  switch i64 %i.boi, label %bb.ku [
    i64 1, label %bb.kt
    i64 0, label %._crit_edge.i.i371.i
  ]

bb.kt:                                            ; preds = %._crit_edge.i.i367.i
  store i8 72, ptr %i.bpf, align 1, !tbaa !25
  br label %._crit_edge.i.i371.i

bb.ku:                                            ; preds = %._crit_edge.i.i367.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bpf, ptr nonnull align 1 %i.ab, i64 %i.boi, i1 false)
  br label %._crit_edge.i.i371.i
end_hunk_1
begin_hunk_2_@_Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE:bb.a
  %i.cqm = call noundef float @cosf(float noundef %i.cqi) #26
  %i.cqn = call float @llvm.fmuladd.f32(float %i.cqk, float %i.cqm, float %i.cpl)
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %.sroa.7114.0.i = phi float [ 0.000000e+00, %bb.oi ], [ %i.cql, %bb.oj ] ; 2 uses
  %.sroa.7.0.i = phi float [ 0.000000e+00, %bb.oi ], [ %i.cqn, %bb.oj ] ; 2 uses
  br i1 %.not303.i, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.cqo = call noundef float @sinf(float noundef %.0234.i) #26
  %i.cqp = call float @llvm.fmuladd.f32(float %.0240.i, float %i.cqo, float 0.000000e+00)
  %i.cqq = call noundef float @cosf(float noundef %.0234.i) #26
  %i.cqr = call float @llvm.fmuladd.f32(float %.0240.i, float %i.cqq, float %i.cpc)
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %.sroa.22120.0.i = phi float [ 0.000000e+00, %bb.ok ], [ %i.cqp, %bb.ol ] ; 2 uses
  %.sroa.22.0.i = phi float [ 0.000000e+00, %bb.ok ], [ %i.cqr, %bb.ol ] ; 2 uses
  %.not345.i = icmp eq i32 %i.coq, -409203
  br i1 %.not345.i, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.cqs = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.cqt = sext i32 %i.coq to i64
  %i.cqu = getelementptr inbounds [36 x i8], ptr %i.cqs, i64 %i.cqt
  %i.cqv = load float, ptr %i.cqu, align 4, !tbaa !87 ; 3 uses
  %i.cqw = fadd float %i.cqv, 0.000000e+00
  %i.cqx = call float @llvm.fmuladd.f32(float %i.cph, float %i.cqv, float 0.000000e+00)
  %i.cqy = call float @llvm.fmuladd.f32(float %i.cqv, float 0.000000e+00, float 0.000000e+00)
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om
  %.1247.i = phi float [ 0.000000e+00, %bb.om ], [ %i.cqx, %bb.on ] ; 2 uses
  %.1245.i = phi float [ 0.000000e+00, %bb.om ], [ %i.cqy, %bb.on ] ; 2 uses
  %.1243.i = phi float [ 0.000000e+00, %bb.om ], [ %i.cqw, %bb.on ] ; 2 uses
  %i.cqz = load i32, ptr %i.adi, align 4, !tbaa !15 ; 3 uses
  %.not345.1.i = icmp eq i32 %i.cqz, -409203
  br i1 %.not345.1.i, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.cra = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.crb = sext i32 %i.cqz to i64                 ; 2 uses
  %i.crc = getelementptr inbounds [36 x i8], ptr %i.cra, i64 %i.crb ; 2 uses
  %i.crd = load float, ptr %i.crc, align 4, !tbaa !87 ; 3 uses
  %i.cre = call float @llvm.fmuladd.f32(float %i.cpl, float %i.crd, float %.1245.i)
  %i.crf = call float @llvm.fmuladd.f32(float %i.cpj, float %i.crd, float %.1247.i)
  %i.crg = fadd float %.1243.i, %i.crd
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.crc, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.crh = getelementptr inbounds [12 x i8], ptr %i.vz, i64 %i.crb
  store i64 4294967364, ptr %i.crh, align 4
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %.1250.1.i = phi i32 [ 1, %bb.op ], [ 0, %bb.oo ] ; 2 uses
  %.1247.1.i = phi float [ %i.crf, %bb.op ], [ %.1247.i, %bb.oo ] ; 2 uses
  %.1245.1.i = phi float [ %i.cre, %bb.op ], [ %.1245.i, %bb.oo ] ; 2 uses
  %.1243.1.i = phi float [ %i.crg, %bb.op ], [ %.1243.i, %bb.oo ] ; 2 uses
  br i1 %.not335.i, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.cri = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.crj = sext i32 %i.cqe to i64                 ; 2 uses
  %i.crk = getelementptr inbounds [36 x i8], ptr %i.cri, i64 %i.crj ; 2 uses
  %i.crl = load float, ptr %i.crk, align 4, !tbaa !87 ; 3 uses
  %i.crm = call float @llvm.fmuladd.f32(float %.sroa.7.0.i, float %i.crl, float %.1245.1.i)
  %i.crn = call float @llvm.fmuladd.f32(float %.sroa.7114.0.i, float %i.crl, float %.1247.1.i)
  %i.cro = fadd float %.1243.1.i, %i.crl
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.crk, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.crp = getelementptr inbounds [12 x i8], ptr %i.vz, i64 %i.crj
  store i64 4294967364, ptr %i.crp, align 4
  %i.crq = add nuw nsw i32 %.1250.1.i, 1
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq
  %.1250.2.i = phi i32 [ %i.crq, %bb.or ], [ %.1250.1.i, %bb.oq ] ; 2 uses
  %.1247.2.i = phi float [ %i.crn, %bb.or ], [ %.1247.1.i, %bb.oq ] ; 2 uses
  %.1245.2.i = phi float [ %i.crm, %bb.or ], [ %.1245.1.i, %bb.oq ] ; 2 uses
  %.1243.2.i = phi float [ %i.cro, %bb.or ], [ %.1243.1.i, %bb.oq ] ; 2 uses
  %i.crr = load i32, ptr %i.adj, align 4, !tbaa !15 ; 3 uses
  %.not345.3.i = icmp eq i32 %i.crr, -409203
  br i1 %.not345.3.i, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.crs = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.crt = sext i32 %i.crr to i64                 ; 2 uses
  %i.cru = getelementptr inbounds [36 x i8], ptr %i.crs, i64 %i.crt ; 2 uses
  %i.crv = load float, ptr %i.cru, align 4, !tbaa !87 ; 3 uses
  %i.crw = call float @llvm.fmuladd.f32(float %i.cpp, float %i.crv, float %.1245.2.i)
  %i.crx = call float @llvm.fmuladd.f32(float %i.cpn, float %i.crv, float %.1247.2.i)
  %i.cry = fadd float %.1243.2.i, %i.crv
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.cru, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.crz = getelementptr inbounds [12 x i8], ptr %i.vz, i64 %i.crt
  store i64 4294967364, ptr %i.crz, align 4
  %i.csa = add nuw nsw i32 %.1250.2.i, 1
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %.1250.3.i = phi i32 [ %i.csa, %bb.ot ], [ %.1250.2.i, %bb.os ] ; 2 uses
  %.1247.3.i = phi float [ %i.crx, %bb.ot ], [ %.1247.2.i, %bb.os ] ; 2 uses
  %.1245.3.i = phi float [ %i.crw, %bb.ot ], [ %.1245.2.i, %bb.os ] ; 2 uses
  %.1243.3.i = phi float [ %i.cry, %bb.ot ], [ %.1243.2.i, %bb.os ] ; 2 uses
  br i1 %.not313.i, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.csb = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.csc = sext i32 %i.chp to i64                 ; 2 uses
  %i.csd = getelementptr inbounds [36 x i8], ptr %i.csb, i64 %i.csc ; 2 uses
  %i.cse = load float, ptr %i.csd, align 4, !tbaa !87 ; 3 uses
  %i.csf = call float @llvm.fmuladd.f32(float %.sroa.12.0.i, float %i.cse, float %.1245.3.i)
  %i.csg = call float @llvm.fmuladd.f32(float %.sroa.12116.0.i, float %i.cse, float %.1247.3.i)
  %i.csh = fadd float %.1243.3.i, %i.cse
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.csd, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.csi = getelementptr inbounds [12 x i8], ptr %i.vz, i64 %i.csc
  store i64 4294967364, ptr %i.csi, align 4
  %i.csj = add nuw nsw i32 %.1250.3.i, 1
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %.1250.4.i = phi i32 [ %i.csj, %bb.ov ], [ %.1250.3.i, %bb.ou ] ; 2 uses
  %.1247.4.i = phi float [ %i.csg, %bb.ov ], [ %.1247.3.i, %bb.ou ] ; 2 uses
  %.1245.4.i = phi float [ %i.csf, %bb.ov ], [ %.1245.3.i, %bb.ou ] ; 2 uses
  %.1243.4.i = phi float [ %i.csh, %bb.ov ], [ %.1243.3.i, %bb.ou ] ; 2 uses
  %.not345.5.i = icmp eq i32 %i.cor, -409203
  br i1 %.not345.5.i, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.csk = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.csl = sext i32 %i.cor to i64
  %i.csm = getelementptr inbounds [36 x i8], ptr %i.csk, i64 %i.csl
  %i.csn = load float, ptr %i.csm, align 4, !tbaa !87 ; 3 uses
  %i.cso = fadd float %.1243.4.i, %i.csn
  %i.csp = call float @llvm.fmuladd.f32(float %i.csn, float 0.000000e+00, float %.1247.4.i)
  %i.csq = call float @llvm.fmuladd.f32(float %i.cpb, float %i.csn, float %.1245.4.i)
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %.1247.5.i = phi float [ %.1247.4.i, %bb.ow ], [ %i.csp, %bb.ox ] ; 2 uses
  %.1245.5.i = phi float [ %.1245.4.i, %bb.ow ], [ %i.csq, %bb.ox ] ; 2 uses
  %.1243.5.i = phi float [ %.1243.4.i, %bb.ow ], [ %i.cso, %bb.ox ] ; 2 uses
  br i1 %.not323.i, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.csr = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.css = sext i32 %i.cku to i64                 ; 2 uses
  %i.cst = getelementptr inbounds [36 x i8], ptr %i.csr, i64 %i.css ; 2 uses
  %i.csu = load float, ptr %i.cst, align 4, !tbaa !87 ; 3 uses
  %i.csv = call float @llvm.fmuladd.f32(float %.sroa.17.0.i, float %i.csu, float %.1245.5.i)
  %i.csw = call float @llvm.fmuladd.f32(float %.sroa.17118.0.i, float %i.csu, float %.1247.5.i)
  %i.csx = fadd float %.1243.5.i, %i.csu
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.cst, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.csy = getelementptr inbounds [12 x i8], ptr %i.vz, i64 %i.css
  store i64 4294967364, ptr %i.csy, align 4
  %i.csz = add nuw nsw i32 %.1250.4.i, 1
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %.1250.6.i = phi i32 [ %i.csz, %bb.oz ], [ %.1250.4.i, %bb.oy ] ; 2 uses
  %.1247.6.i = phi float [ %i.csw, %bb.oz ], [ %.1247.5.i, %bb.oy ] ; 2 uses
  %.1245.6.i = phi float [ %i.csv, %bb.oz ], [ %.1245.5.i, %bb.oy ] ; 2 uses
  %.1243.6.i = phi float [ %i.csx, %bb.oz ], [ %.1243.5.i, %bb.oy ] ; 2 uses
  %.not345.7.i = icmp eq i32 %i.cos, -409203
  br i1 %.not345.7.i, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.cta = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.ctb = sext i32 %i.cos to i64
  %i.ctc = getelementptr inbounds [36 x i8], ptr %i.cta, i64 %i.ctb
  %i.ctd = load float, ptr %i.ctc, align 4, !tbaa !87 ; 3 uses
  %i.cte = fadd float %.1243.6.i, %i.ctd
  %i.ctf = call float @llvm.fmuladd.f32(float %i.ctd, float 0.000000e+00, float %.1247.6.i)
  %i.ctg = call float @llvm.fmuladd.f32(float %i.cpc, float %i.ctd, float %.1245.6.i)
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa
  %.1247.7.i = phi float [ %.1247.6.i, %bb.pa ], [ %i.ctf, %bb.pb ] ; 2 uses
  %.1245.7.i = phi float [ %.1245.6.i, %bb.pa ], [ %i.ctg, %bb.pb ] ; 2 uses
  %.1243.7.i = phi float [ %.1243.6.i, %bb.pa ], [ %i.cte, %bb.pb ] ; 2 uses
  br i1 %.not303.i, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.cth = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.cti = sext i32 %i.cen to i64                 ; 2 uses
  %i.ctj = getelementptr inbounds [36 x i8], ptr %i.cth, i64 %i.cti ; 2 uses
  %i.ctk = load float, ptr %i.ctj, align 4, !tbaa !87 ; 3 uses
  %i.ctl = call float @llvm.fmuladd.f32(float %.sroa.22.0.i, float %i.ctk, float %.1245.7.i)
  %i.ctm = call float @llvm.fmuladd.f32(float %.sroa.22120.0.i, float %i.ctk, float %.1247.7.i)
  %i.ctn = fadd float %.1243.7.i, %i.ctk
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.ctj, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.cto = getelementptr inbounds [12 x i8], ptr %i.vz, i64 %i.cti
  store i64 4294967364, ptr %i.cto, align 4
  %i.ctp = add nuw nsw i32 %.1250.6.i, 1
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc
  %.1250.8.i = phi i32 [ %i.ctp, %bb.pd ], [ %.1250.6.i, %bb.pc ] ; 2 uses
  %.1247.8.i = phi float [ %i.ctm, %bb.pd ], [ %.1247.7.i, %bb.pc ]
  %.1245.8.i = phi float [ %i.ctl, %bb.pd ], [ %.1245.7.i, %bb.pc ]
  %.1243.8.i = phi float [ %i.ctn, %bb.pd ], [ %.1243.7.i, %bb.pc ] ; 4 uses
  %i.ctq = add nuw nsw i32 %.1250.8.i, 3
  %.not337.i = icmp eq i32 %i.ctq, %.2577.lcssa
  br i1 %.not337.i, label %bb.pn, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %87)
          to label %bb.pg unwind label %bb.pj

bb.pg:                                            ; preds = %bb.pf
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %88, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %bb.ph unwind label %bb.pk

bb.ph:                                            ; preds = %bb.pg
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.100, ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull align 8 dereferenceable(40) %88, i32 noundef 1596) #27
          to label %bb.pi unwind label %bb.pl

bb.pi:                                            ; preds = %bb.ph
  unreachable

bb.pj:                                            ; preds = %bb.pf
  %i.ctr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.i

bb.pk:                                            ; preds = %bb.pg
  %i.cts = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.pl:                                            ; preds = %bb.ph
  %i.ctt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %88) #26
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %.pn342.i = phi { ptr, i32 } [ %i.ctt, %bb.pl ], [ %i.cts, %bb.pk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #26
  %i.ctu = load ptr, ptr %86, align 8, !tbaa !31  ; 2 uses
  %i.ctv = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.ctw = icmp eq ptr %i.ctu, %i.ctv
  br i1 %i.ctw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936.i: ; preds = %bb.pm
  %i.ctx = load i64, ptr %i.ctv, align 8, !tbaa !25
  %i.cty = add i64 %i.ctx, 1
  call void @_ZdlPvm(ptr noundef %i.ctu, i64 noundef %i.cty) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.i: ; preds = %bb.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936.i, %bb.pj
  %.pn342.pn.i = phi { ptr, i32 } [ %i.ctr, %bb.pj ], [ %.pn342.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936.i ], [ %.pn342.i, %bb.pm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  br label %bb.ps

bb.pn:                                            ; preds = %bb.pe
  %i.ctz = fdiv float %.1247.8.i, %.1243.8.i
  %i.cua = fdiv float %.1245.8.i, %.1243.8.i
  %i.cub = fmul float %.1243.8.i, %i.ctz
  %i.cuc = fdiv float %i.cub, %i.cph              ; 3 uses
  %i.cud = fsub float %.1243.8.i, %i.cuc          ; 2 uses
  %i.cue = fsub float %i.cua, %i.cpc
  %i.cuf = fmul float %i.cue, %i.cud
  %i.cug = fsub float %i.cpb, %i.cpc              ; 6 uses
  %i.cuh = fdiv float %i.cuf, %i.cug              ; 3 uses
  %i.cui = fsub float %i.cud, %i.cuh              ; 2 uses
  %i.cuj = load ptr, ptr %i.wd, align 8, !tbaa !70 ; 3 uses
  %i.cuk = sext i32 %i.coq to i64
  %i.cul = getelementptr inbounds [36 x i8], ptr %i.cuj, i64 %i.cuk ; 2 uses
  %i.cum = getelementptr inbounds nuw i8, ptr %i.cul, i64 8
  store float %i.cuc, ptr %i.cum, align 4, !tbaa !89
  store float %i.cuc, ptr %i.cul, align 4, !tbaa !87
  %i.cun = sext i32 %i.cor to i64
  %i.cuo = getelementptr inbounds [36 x i8], ptr %i.cuj, i64 %i.cun ; 2 uses
  %i.cup = getelementptr inbounds nuw i8, ptr %i.cuo, i64 8
  store float %i.cuh, ptr %i.cup, align 4, !tbaa !89
  store float %i.cuh, ptr %i.cuo, align 4, !tbaa !87
  %i.cuq = sext i32 %i.cos to i64
  %i.cur = getelementptr inbounds [36 x i8], ptr %i.cuj, i64 %i.cuq ; 2 uses
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cur, i64 8
  store float %i.cui, ptr %i.cus, align 4, !tbaa !89
  store float %i.cui, ptr %i.cur, align 4, !tbaa !87
  br i1 %.not323.i, label %.noexc880, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.cut = fsub float %i.cpc, %i.cpb              ; 2 uses
  %i.cuu = fsub float 0.000000e+00, %i.cpb        ; 3 uses
  %i.cuv = fsub float %.sroa.17.0.i, %i.cpb       ; 2 uses
  %i.cuw = fneg float %i.cuv
  %i.cux = fmul float %i.cph, %i.cuw
  %i.cuy = call float @llvm.fmuladd.f32(float %.sroa.17118.0.i, float %i.cuu, float %i.cux)
  %i.cuz = fneg float %i.cut
  %i.cva = fmul float %i.cph, %i.cuz
  %i.cvb = call float @llvm.fmuladd.f32(float %i.cuu, float 0.000000e+00, float %i.cva)
  %i.cvc = fdiv float %i.cuy, %i.cvb              ; 2 uses
  %i.cvd = fneg float %i.cvc
  %i.cve = call float @llvm.fmuladd.f32(float %i.cvd, float %i.cut, float %i.cuv)
  %i.cvf = fdiv float %i.cve, %i.cuu
  invoke void @_Z16add_vsite3_paramP18InteractionsOfTypeiiiiff(ptr noundef nonnull %i.adk, i32 noundef %i.cku, i32 noundef %i.cor, i32 noundef %i.cos, i32 noundef %i.coq, float noundef %i.cvc, float noundef %i.cvf)
          to label %.noexc880 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

.noexc880:                                        ; preds = %bb.po, %bb.pn
  %.pre135.i = fsub float 0.000000e+00, %i.cpc    ; 8 uses
  br i1 %.not303.i, label %._crit_edge134.i, label %bb.pp

._crit_edge134.i:                                 ; preds = %.noexc880
  %.pre136.i = fneg float %i.cug
  %.pre138.i = fmul float %i.cph, %.pre136.i
  %.pre140.i = call float @llvm.fmuladd.f32(float %.pre135.i, float 0.000000e+00, float %.pre138.i)
  br label %.noexc881

bb.pp:                                            ; preds = %.noexc880
  %i.cvg = fsub float %.sroa.22.0.i, %i.cpc       ; 2 uses
  %i.cvh = fneg float %i.cvg
  %i.cvi = fmul float %i.cph, %i.cvh
  %i.cvj = call float @llvm.fmuladd.f32(float %.sroa.22120.0.i, float %.pre135.i, float %i.cvi)
  %i.cvk = fneg float %i.cug
  %i.cvl = fmul float %i.cph, %i.cvk
  %i.cvm = call float @llvm.fmuladd.f32(float %.pre135.i, float 0.000000e+00, float %i.cvl) ; 2 uses
  %i.cvn = fdiv float %i.cvj, %i.cvm              ; 2 uses
  %i.cvo = fneg float %i.cvn
  %i.cvp = call float @llvm.fmuladd.f32(float %i.cvo, float %i.cug, float %i.cvg)
  %i.cvq = fdiv float %i.cvp, %.pre135.i
  invoke void @_Z16add_vsite3_paramP18InteractionsOfTypeiiiiff(ptr noundef nonnull %i.adk, i32 noundef %i.cen, i32 noundef %i.cos, i32 noundef %i.cor, i32 noundef %i.coq, float noundef %i.cvn, float noundef %i.cvq)
          to label %.noexc881 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

.noexc881:                                        ; preds = %bb.pp, %._crit_edge134.i
  %.pre-phi141.i = phi float [ %.pre140.i, %._crit_edge134.i ], [ %i.cvm, %bb.pp ] ; 2 uses
  %i.cvr = fsub float %i.cpl, %i.cpc              ; 2 uses
  %i.cvs = fneg float %i.cvr
  %i.cvt = fmul float %i.cph, %i.cvs
  %i.cvu = call float @llvm.fmuladd.f32(float %i.cpj, float %.pre135.i, float %i.cvt)
  %i.cvv = fdiv float %i.cvu, %.pre-phi141.i      ; 2 uses
  %i.cvw = fneg float %i.cvv
  %i.cvx = call float @llvm.fmuladd.f32(float %i.cvw, float %i.cug, float %i.cvr)
  %i.cvy = fdiv float %i.cvx, %.pre135.i
  invoke void @_Z16add_vsite3_paramP18InteractionsOfTypeiiiiff(ptr noundef nonnull %i.adk, i32 noundef %i.cqz, i32 noundef %i.cos, i32 noundef %i.cor, i32 noundef %i.coq, float noundef %i.cvv, float noundef %i.cvy)
          to label %.noexc882 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

.noexc882:                                        ; preds = %.noexc881
  %i.cvz = fsub float %i.cpc, %i.cpb              ; 3 uses
  %i.cwa = fsub float 0.000000e+00, %i.cpb        ; 5 uses
  %i.cwb = fsub float %i.cpp, %i.cpb              ; 2 uses
  %i.cwc = fneg float %i.cwb
  %i.cwd = fmul float %i.cph, %i.cwc
  %i.cwe = call float @llvm.fmuladd.f32(float %i.cpn, float %i.cwa, float %i.cwd)
  %i.cwf = fneg float %i.cvz
  %i.cwg = fmul float %i.cph, %i.cwf
  %i.cwh = call float @llvm.fmuladd.f32(float %i.cwa, float 0.000000e+00, float %i.cwg) ; 2 uses
  %i.cwi = fdiv float %i.cwe, %i.cwh              ; 2 uses
  %i.cwj = fneg float %i.cwi
  %i.cwk = call float @llvm.fmuladd.f32(float %i.cwj, float %i.cvz, float %i.cwb)
  %i.cwl = fdiv float %i.cwk, %i.cwa
  invoke void @_Z16add_vsite3_paramP18InteractionsOfTypeiiiiff(ptr noundef nonnull %i.adk, i32 noundef %i.crr, i32 noundef %i.cor, i32 noundef %i.cos, i32 noundef %i.coq, float noundef %i.cwi, float noundef %i.cwl)
          to label %.noexc883 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

.noexc883:                                        ; preds = %.noexc882
  br i1 %.not335.i, label %.noexc884, label %bb.pq

bb.pq:                                            ; preds = %.noexc883
  %i.cwm = fsub float %.sroa.7.0.i, %i.cpc        ; 2 uses
  %i.cwn = fneg float %i.cwm
  %i.cwo = fmul float %i.cph, %i.cwn
  %i.cwp = call float @llvm.fmuladd.f32(float %.sroa.7114.0.i, float %.pre135.i, float %i.cwo)
  %i.cwq = fdiv float %i.cwp, %.pre-phi141.i      ; 2 uses
  %i.cwr = fneg float %i.cwq
  %i.cws = call float @llvm.fmuladd.f32(float %i.cwr, float %i.cug, float %i.cwm)
  %i.cwt = fdiv float %i.cws, %.pre135.i
  invoke void @_Z16add_vsite3_paramP18InteractionsOfTypeiiiiff(ptr noundef nonnull %i.adk, i32 noundef %i.cqe, i32 noundef %i.cos, i32 noundef %i.cor, i32 noundef %i.coq, float noundef %i.cwq, float noundef %i.cwt)
          to label %.noexc884 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

.noexc884:                                        ; preds = %bb.pq, %.noexc883
  br i1 %.not313.i, label %bb.pt, label %bb.pr

bb.pr:                                            ; preds = %.noexc884
  %i.cwu = fsub float %.sroa.12.0.i, %i.cpb       ; 2 uses
  %i.cwv = fneg float %i.cwu
  %i.cww = fmul float %i.cph, %i.cwv
  %i.cwx = call float @llvm.fmuladd.f32(float %.sroa.12116.0.i, float %i.cwa, float %i.cww)
  %i.cwy = fdiv float %i.cwx, %i.cwh              ; 2 uses
  %i.cwz = fneg float %i.cwy
  %i.cxa = call float @llvm.fmuladd.f32(float %i.cwz, float %i.cvz, float %i.cwu)
  %i.cxb = fdiv float %i.cxa, %i.cwa
  invoke void @_Z16add_vsite3_paramP18InteractionsOfTypeiiiiff(ptr noundef nonnull %i.adk, i32 noundef %i.chp, i32 noundef %i.cor, i32 noundef %i.cos, i32 noundef %i.coq, float noundef %i.cwy, float noundef %i.cxb)
          to label %bb.pt unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

bb.ps:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit935.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i875
  %.pn346.pn.pn.i = phi { ptr, i32 } [ %.pn346.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i875 ], [ %.pn342.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.i ], [ %.pn328.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit935.i ], [ %.pn324.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923.i ], [ %.pn318.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865.i ], [ %.pn314.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853.i ], [ %.pn308.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795.i ], [ %.pn304.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783.i ], [ %.pn298.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725.i ], [ %.pn294.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713.i ], [ %.pn288.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704.i ], [ %.pn283.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692.i ], [ %.pn278.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680.i ], [ %.pn273.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668.i ], [ %.pn269.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656.i ], [ %.pn265.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647.i ], [ %.pn261.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638.i ], [ %.pn257.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629.i ], [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  br label %.body844

bb.pt:                                            ; preds = %.noexc884, %bb.pr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  %i.cxc = add nsw i32 %.1250.8.i, %.05835136
  br label %bb.qa

bb.pu:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %149, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %bb.pv unwind label %bb.px

bb.pv:                                            ; preds = %bb.pu
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %149, i32 noundef 1957, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.41, i32 noundef 1957) #27
          to label %bb.pw unwind label %bb.py

bb.pw:                                            ; preds = %bb.pv
  unreachable

bb.px:                                            ; preds = %bb.pu
  %i.cxd = landingpad { ptr, i32 }
          cleanup
  br label %bb.pz

bb.py:                                            ; preds = %bb.pv
  %i.cxe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %149) #26
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %.pn665 = phi { ptr, i32 } [ %i.cxe, %bb.py ], [ %i.cxd, %bb.px ]
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #26
  br label %.body844

bb.qa:                                            ; preds = %bb.id, %bb.pt, %bb.jy, %bb.io, %_ZL14gen_vsites_pheP7t_atomsN3gmx8ArrayRefI16VsiteTypeAndSignEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS6_95EEEiPiNS2_IK19VirtualSiteTopologyEE.exit
  %.263556361 = phi i32 [ %160, %_ZL14gen_vsites_pheP7t_atomsN3gmx8ArrayRefI16VsiteTypeAndSignEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS6_95EEEiPiNS2_IK19VirtualSiteTopologyEE.exit ], [ %160, %bb.io ], [ %160, %bb.jy ], [ %160, %bb.pt ], [ %.05145140, %bb.id ] ; 3 uses
  %.1584 = phi i32 [ %i.awc, %_ZL14gen_vsites_pheP7t_atomsN3gmx8ArrayRefI16VsiteTypeAndSignEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS6_95EEEiPiNS2_IK19VirtualSiteTopologyEE.exit ], [ %i.awu, %bb.io ], [ %i.bni, %bb.jy ], [ %i.cxc, %bb.pt ], [ %.05835136, %bb.id ] ; 3 uses
  %i.cxf = icmp sgt i32 %.263556361, 0
  br i1 %i.cxf, label %.lr.ph5095, label %.critedge2

.lr.ph5095:                                       ; preds = %bb.qa
  %i.cxg = load ptr, ptr %i.wd, align 8, !tbaa !70
  %i.cxh = zext nneg i32 %.263556361 to i64
  br label %bb.qb

bb.qb:                                            ; preds = %.lr.ph5095, %bb.qc
  %indvars.iv5619 = phi i64 [ %i.cxh, %.lr.ph5095 ], [ %indvars.iv.next5620, %bb.qc ] ; 4 uses
  %i.cxi = getelementptr [36 x i8], ptr %i.cxg, i64 %indvars.iv5619
  %i.cxj = getelementptr i8, ptr %i.cxi, i64 -12
  %i.cxk = load i32, ptr %i.cxj, align 4, !tbaa !74
  %i.cxl = icmp eq i32 %i.cxk, %i.ahj
  br i1 %i.cxl, label %bb.qc, label %.critedge2.loopexit.split.loop.exit

bb.qc:                                            ; preds = %bb.qb
  %indvars.iv.next5620 = add nsw i64 %indvars.iv5619, -1
  %i.cxm = icmp sgt i64 %indvars.iv5619, 1
  br i1 %i.cxm, label %bb.qb, label %.critedge2, !llvm.loop !131

.critedge2.loopexit.split.loop.exit:              ; preds = %bb.qb
  %i.cxn = trunc nuw nsw i64 %indvars.iv5619 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.qc, %.critedge2.loopexit.split.loop.exit, %sub_1, %sub_0, %bb.qa, %bb.gc, %.tail, %bb.gb, %.critedge699
  %.2585 = phi i32 [ %.05835136, %.tail ], [ %.05835136, %bb.gc ], [ %.05835136, %.critedge699 ], [ %.05835136, %bb.gb ], [ %.1584, %bb.qa ], [ %.05835136, %sub_0 ], [ %.05835136, %sub_1 ], [ %.1584, %.critedge2.loopexit.split.loop.exit ], [ %.1584, %bb.qc ] ; 3 uses
  %.4 = phi i32 [ %.05145140, %.tail ], [ %.05145140, %bb.gc ], [ %.05145140, %.critedge699 ], [ %.05145140, %bb.gb ], [ %.263556361, %bb.qa ], [ %.05145140, %sub_0 ], [ %.05145140, %sub_1 ], [ %i.cxn, %.critedge2.loopexit.split.loop.exit ], [ 0, %bb.qc ] ; 7 uses
  %i.cxo = sext i32 %.4 to i64                    ; 4 uses
  %i.cxp = getelementptr inbounds [12 x i8], ptr %i.vz, i64 %i.cxo ; 5 uses
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxp, i64 4
  %i.cxr = load i8, ptr %i.cxq, align 4, !tbaa !97, !range !82, !noundef !83
  %i.cxs = trunc nuw i8 %i.cxr to i1
  br i1 %i.cxs, label %bb.vm, label %bb.qd

bb.qd:                                            ; preds = %.critedge2
  %i.cxt = load ptr, ptr %i.wf, align 8, !tbaa !80
  %i.cxu = getelementptr inbounds [8 x i8], ptr %i.cxt, i64 %i.cxo
  %i.cxv = load ptr, ptr %i.cxu, align 8, !tbaa !81
  %i.cxw = load ptr, ptr %i.cxv, align 8, !tbaa !79
  %i.cxx = invoke noundef zeroext i1 @_Z11is_hydrogenPKc(ptr noundef %i.cxw)
          to label %bb.qe unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

bb.qe:                                            ; preds = %bb.qd
  br i1 %i.cxx, label %bb.qf, label %bb.vm

bb.qf:                                            ; preds = %bb.qe
  %i.cxy = load ptr, ptr %i.wf, align 8, !tbaa !80
  %i.cxz = load ptr, ptr %6, align 8, !tbaa !99   ; 2 uses
  %i.cya = load ptr, ptr %i.agd, align 8, !tbaa !99
  %.not76.i = icmp eq ptr %i.cxz, %i.cya
  br i1 %.not76.i, label %.critedge.i892, label %.lr.ph.i888

._crit_edge.i890:                                 ; preds = %bb.qi
  br i1 %i.cym, label %.critedge.i892, label %bb.ql

.lr.ph.i888:                                      ; preds = %bb.qf, %bb.qi
  %.sroa.052.062.i = phi ptr [ %i.cyj, %bb.qi ], [ %i.cxz, %bb.qf ] ; 4 uses
  %i.cyb = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.052.062.i)
          to label %.noexc893 unwind label %.loopexit.split-lp1602.loopexit

.noexc893:                                        ; preds = %.lr.ph.i888
  %i.cyc = load i32, ptr %i.cyb, align 4, !tbaa !15
  %i.cyd = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.052.062.i)
          to label %.noexc894 unwind label %.loopexit.split-lp1602.loopexit

.noexc894:                                        ; preds = %.noexc893
  %i.cye = icmp eq i32 %i.cyc, %.4
  %i.cyf = load i32, ptr %i.cyd, align 4, !tbaa !15 ; 2 uses
  br i1 %i.cye, label %bb.qi, label %bb.qg

bb.qg:                                            ; preds = %.noexc894
  %i.cyg = icmp eq i32 %i.cyf, %.4
  br i1 %i.cyg, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  %i.cyh = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.052.062.i)
          to label %.noexc895 unwind label %.loopexit.split-lp1602.loopexit

.noexc895:                                        ; preds = %bb.qh
  %i.cyi = load i32, ptr %i.cyh, align 4, !tbaa !15
  br label %bb.qi

bb.qi:                                            ; preds = %.noexc895, %bb.qg, %.noexc894
  %.1.i889 = phi i32 [ -409203, %bb.qg ], [ %i.cyi, %.noexc895 ], [ %i.cyf, %.noexc894 ] ; 19 uses
  %i.cyj = getelementptr inbounds nuw i8, ptr %.sroa.052.062.i, i64 112 ; 2 uses
  %i.cyk = load ptr, ptr %i.agd, align 8, !tbaa !99 ; 3 uses
  %i.cyl = icmp ne ptr %i.cyj, %i.cyk
  %i.cym = icmp eq i32 %.1.i889, -409203          ; 2 uses
  %i.cyn = select i1 %i.cyl, i1 %i.cym, i1 false
  br i1 %i.cyn, label %.lr.ph.i888, label %._crit_edge.i890, !llvm.loop !132

.critedge.i892:                                   ; preds = %._crit_edge.i890, %bb.qf
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %.noexc896 unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit.split-lp

.noexc896:                                        ; preds = %.critedge.i892
  %i.cyo = add nsw i32 %.4, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef 543, ptr noundef nonnull @.str.112, i32 noundef %i.cyo) #27
          to label %bb.qj unwind label %bb.qk

bb.qj:                                            ; preds = %.noexc896
  unreachable

bb.qk:                                            ; preds = %.noexc896
  %i.cyp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %.body844

bb.ql:                                            ; preds = %._crit_edge.i890
  %i.cyq = load ptr, ptr %6, align 8, !tbaa !99   ; 2 uses
  %.not6065.i = icmp eq ptr %i.cyq, %i.cyk
  br i1 %.not6065.i, label %.loopexit1606, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %bb.ql, %.thread.i
  %.03969.i = phi i32 [ %.140.i, %.thread.i ], [ 0, %bb.ql ] ; 3 uses
  %.04168.i = phi i32 [ %.243.i, %.thread.i ], [ 0, %bb.ql ] ; 5 uses
  %.04467.i = phi i32 [ %.246.i, %.thread.i ], [ 0, %bb.ql ] ; 5 uses
  %.sroa.048.066.i = phi ptr [ %i.czk, %.thread.i ], [ %i.cyq, %bb.ql ] ; 4 uses
  %i.cyr = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.048.066.i)
          to label %.noexc899 unwind label %.loopexit1601

.noexc899:                                        ; preds = %.lr.ph71.i
  %i.cys = load i32, ptr %i.cyr, align 4, !tbaa !15
  %i.cyt = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.048.066.i)
          to label %.noexc900 unwind label %.loopexit1601 ; 2 uses

.noexc900:                                        ; preds = %.noexc899
  %i.cyu = icmp eq i32 %i.cys, %.1.i889
  br i1 %i.cyu, label %.noexc901, label %bb.qm

bb.qm:                                            ; preds = %.noexc900
  %i.cyv = load i32, ptr %i.cyt, align 4, !tbaa !15
  %i.cyw = icmp eq i32 %i.cyv, %.1.i889
  br i1 %i.cyw, label %bb.qn, label %.thread.i

bb.qn:                                            ; preds = %bb.qm
  %i.cyx = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.048.066.i)
          to label %.noexc901 unwind label %.loopexit1601

.noexc901:                                        ; preds = %bb.qn, %.noexc900
  %.138.in.i = phi ptr [ %i.cyt, %.noexc900 ], [ %i.cyx, %bb.qn ]
  %.138.i = load i32, ptr %.138.in.i, align 4, !tbaa !15 ; 4 uses
  %.not.i891 = icmp eq i32 %.138.i, -409203
  br i1 %.not.i891, label %.thread.i, label %bb.qo

bb.qo:                                            ; preds = %.noexc901
  %i.cyy = add nsw i32 %.03969.i, 1               ; 2 uses
  %i.cyz = sext i32 %.138.i to i64
  %i.cza = getelementptr inbounds [8 x i8], ptr %i.cxy, i64 %i.cyz
  %i.czb = load ptr, ptr %i.cza, align 8, !tbaa !81
  %i.czc = load ptr, ptr %i.czb, align 8, !tbaa !79
  %i.czd = invoke noundef zeroext i1 @_Z11is_hydrogenPKc(ptr noundef %i.czc)
          to label %.noexc902 unwind label %.loopexit1601

.noexc902:                                        ; preds = %bb.qo
  br i1 %i.czd, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %.noexc902
  %i.cze = sext i32 %.04467.i to i64
  %i.czf = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.cze
  store i32 %.138.i, ptr %i.czf, align 4, !tbaa !15
  %i.czg = add nsw i32 %.04467.i, 1
  br label %.thread.i

bb.qq:                                            ; preds = %.noexc902
  %i.czh = sext i32 %.04168.i to i64
  %i.czi = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.czh
  store i32 %.138.i, ptr %i.czi, align 4, !tbaa !15
  %i.czj = add nsw i32 %.04168.i, 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.qq, %bb.qp, %.noexc901, %bb.qm
  %.246.i = phi i32 [ %.04467.i, %.noexc901 ], [ %i.czg, %bb.qp ], [ %.04467.i, %bb.qq ], [ %.04467.i, %bb.qm ] ; 2 uses
  %.243.i = phi i32 [ %.04168.i, %.noexc901 ], [ %.04168.i, %bb.qp ], [ %i.czj, %bb.qq ], [ %.04168.i, %bb.qm ] ; 2 uses
  %.140.i = phi i32 [ %.03969.i, %.noexc901 ], [ %i.cyy, %bb.qp ], [ %i.cyy, %bb.qq ], [ %.03969.i, %bb.qm ] ; 2 uses
  %i.czk = getelementptr inbounds nuw i8, ptr %.sroa.048.066.i, i64 112 ; 2 uses
  %.not60.i = icmp eq ptr %i.czk, %i.cyk
  br i1 %.not60.i, label %.loopexit1606, label %.lr.ph71.i

.loopexit1606:                                    ; preds = %.thread.i, %bb.ql
  %.044.lcssa.i = phi i32 [ 0, %bb.ql ], [ %.246.i, %.thread.i ] ; 17 uses
  %.041.lcssa.i = phi i32 [ 0, %bb.ql ], [ %.243.i, %.thread.i ] ; 11 uses
  %.039.lcssa.i = phi i32 [ 0, %bb.ql ], [ %.140.i, %.thread.i ] ; 5 uses
  %i.czl = invoke fastcc noundef i32 @_ZL9get_atypeiP7t_atomsN3gmx8ArrayRefIK17PreprocessResidueEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_St4hashISC_ENS1_20EqualCaseInsensitiveESaISt4pairIKSC_SC_EEE(i32 noundef %.1.i889, ptr noundef nonnull %3, ptr %0, ptr %i.agh, ptr noundef nonnull align 8 dereferenceable(56) %138)
          to label %bb.qr unwind label %.loopexit.split-lp1602.loopexit.split-lp.loopexit

bb.qr:                                            ; preds = %.loopexit1606
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #26
  invoke void @_ZNK22PreprocessingAtomTypes20atomNameFromAtomTypeB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.83") align 8 %150, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.czl)
          to label %bb.qs unwind label %bb.qu

bb.qs:                                            ; preds = %bb.qr
  %i.czm = icmp ne i32 %.044.lcssa.i, 1           ; 2 uses
  br i1 %i.czm, label %bb.rb, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  switch i32 %.039.lcssa.i, label %bb.ty [
    i32 2, label %bb.qv
    i32 3, label %bb.qw
    i32 4, label %bb.qz
  ]

bb.qu:                                            ; preds = %bb.qr
  %i.czn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1015

bb.qv:                                            ; preds = %bb.qt
  store i64 4294967296, ptr %i.cxp, align 4
  br label %.lr.ph98.i

bb.qw:                                            ; preds = %bb.qt
  %i.czo = load i32, ptr %i.bb, align 16, !tbaa !15
  %i.czp = icmp eq i32 %.041.lcssa.i, 3
  %i.czq = load i32, ptr %i.agr, align 4
  %i.czr = load i32, ptr %i.ba, align 16
  %.0582 = select i1 %i.czp, i32 %i.czq, i32 %i.czr
  %i.czs = sext i32 %i.czo to i64
  %i.czt = load ptr, ptr %5, align 8, !tbaa !58   ; 3 uses
  %i.czu = getelementptr inbounds nuw [12 x i8], ptr %i.czt, i64 %i.czs ; 3 uses
  %i.czv = sext i32 %.1.i889 to i64
  %i.czw = getelementptr inbounds nuw [12 x i8], ptr %i.czt, i64 %i.czv ; 3 uses
  %i.czx = load float, ptr %i.czu, align 4, !tbaa !88
  %i.czy = load float, ptr %i.czw, align 4, !tbaa !88 ; 2 uses
end_hunk_2
