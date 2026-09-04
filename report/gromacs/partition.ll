Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val465 = load ptr, ptr %i.aby, align 8
  call fastcc void @_ZL11turn_on_dlbRKN3gmx8MDLoggerEP12gmx_domdec_tl(ptr %.val465, ptr noundef nonnull %3, i64 noundef %2)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di, %bb.dg
  %.1425 = phi i8 [ %.0424, %bb.dg ], [ 1, %bb.di ], [ %.0424, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br label %bb.dk

bb.dk:                                            ; preds = %bb.cx, %bb.cs, %bb.cr, %bb.dj, %bb.cy, %bb.t
  %.2426 = phi i8 [ %.0424, %bb.cx ], [ %.0424, %bb.cs ], [ %.0424, %bb.cr ], [ %.1425, %bb.dj ], [ %.0424, %bb.cy ], [ 0, %bb.t ]
  %.1 = phi i1 [ %.0, %bb.cx ], [ %4, %bb.cs ], [ %4, %bb.cr ], [ %4, %bb.dj ], [ %4, %bb.cy ], [ %4, %bb.t ]
  %i.abz = getelementptr inbounds nuw i8, ptr %i.bz, i64 1660 ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !617
  %i.acb = add nsw i32 %i.aca, 1
  store i32 %i.acb, ptr %i.abz, align 4, !tbaa !617
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.n, %bb.m
  %.3427 = phi i8 [ %.2426, %bb.dk ], [ %.0424, %bb.n ], [ %.0424, %bb.m ] ; 2 uses
  %.2 = phi i1 [ %.1, %bb.dk ], [ %4, %bb.n ], [ %4, %bb.m ] ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %3, i64 920 ; 4 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !369
  call void @_ZN11gmx_ga2la_t5clearEb(ptr noundef nonnull align 8 dereferenceable(48) %i.acd, i1 noundef zeroext true)
  call void @_Z28dd_clear_local_vsite_indicesP12gmx_domdec_t(ptr noundef nonnull %3)
  %i.ace = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !622
  %.not.i483 = icmp eq ptr %i.acf, null
  br i1 %.not.i483, label %_ZL19clearDDStateIndicesP12gmx_domdec_t.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_Z33dd_clear_local_constraint_indicesP12gmx_domdec_t(ptr noundef nonnull %3)
  br label %_ZL19clearDDStateIndicesP12gmx_domdec_t.exit

_ZL19clearDDStateIndicesP12gmx_domdec_t.exit:     ; preds = %bb.dl, %bb.dm
  %i.acg = call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 8 uses
  br i1 %.2, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %_ZL19clearDDStateIndicesP12gmx_domdec_t.exit
  %.not.i484 = icmp eq ptr %5, null
  br i1 %.not.i484, label %_ZL25positionsFromStatePointerPK7t_state.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ach = getelementptr inbounds nuw i8, ptr %5, i64 416
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !370 ; 2 uses
  %i.acj = load i32, ptr %5, align 8, !tbaa !642
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds [12 x i8], ptr %i.aci, i64 %i.ack
  %i.acm = ptrtoint ptr %i.acl to i64
  br label %_ZL25positionsFromStatePointerPK7t_state.exit

_ZL25positionsFromStatePointerPK7t_state.exit:    ; preds = %bb.dn, %bb.do
  %.sroa.3.0.i = phi i64 [ %i.acm, %bb.do ], [ 0, %bb.dn ]
  %.sroa.05.0.i = phi ptr [ %i.aci, %bb.do ], [ null, %bb.dn ] ; 3 uses
  %i.acn = getelementptr i8, ptr %3, i64 20
  %.val = load i32, ptr %i.acn, align 4, !tbaa !337
  %i.aco = icmp eq i32 %.val, 0
  %i.acp = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.acq = select i1 %i.aco, ptr %i.acp, ptr null
  %i.acr = ptrtoint ptr %.sroa.05.0.i to i64
  %i.acs = sub i64 %.sroa.3.0.i, %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.acs
  call void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097) %3, i1 noundef zeroext true, ptr noundef %i.acq, i1 noundef zeroext true, ptr %.sroa.05.0.i, ptr %i.act, ptr noundef nonnull %51)
  call void @_Z15distributeStateRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tP7t_stateRK11gmx_ddbox_tS9_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(768) %6, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(200) %51, ptr noundef %11)
  %i.acu = getelementptr inbounds nuw i8, ptr %3, i64 888 ; 2 uses
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !643
  call void @_Z28dd_resize_atominfo_and_stateP10t_forcerecP7t_statei(ptr noundef %15, ptr noundef %11, i32 noundef %i.acv)
  %i.acw = getelementptr inbounds nuw i8, ptr %i.bz, i64 1020
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !210
  %i.acy = sitofp i32 %i.acx to double
  %i.acz = getelementptr inbounds nuw i8, ptr %18, i64 464 ; 2 uses
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !240
  %i.adb = fadd double %i.ada, %i.acy
  store double %i.adb, ptr %i.acz, align 8, !tbaa !240
  %i.adc = getelementptr inbounds nuw i8, ptr %3, i64 896
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !371 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !372
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  %i.adg = load i32, ptr %i.acu, align 8, !tbaa !643 ; 2 uses
  store i32 0, ptr %55, align 4, !tbaa !374
  %i.adh = getelementptr inbounds nuw i8, ptr %55, i64 4
  store i32 %i.adg, ptr %i.adh, align 4, !tbaa !375
  %.not.i485 = icmp slt i32 %i.adg, 0
  br i1 %.not.i485, label %bb.dp, label %_ZN3gmx5RangeIiEC2Eii.exit

bb.dp:                                            ; preds = %_ZL25positionsFromStatePointerPK7t_state.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

_ZN3gmx5RangeIiEC2Eii.exit:                       ; preds = %_ZL25positionsFromStatePointerPK7t_state.exit
  %i.adi = ptrtoint ptr %i.adf to i64
  %i.adj = ptrtoint ptr %i.add to i64
  %i.adk = sub i64 %i.adi, %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.adk
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  store ptr %i.add, ptr %48, align 8
  %i.adm = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %i.adl, ptr %i.adm, align 8
  %.not.i486 = icmp eq ptr %15, null
  br i1 %.not.i486, label %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN3gmx5RangeIiEC2Eii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  %i.adn = getelementptr inbounds nuw i8, ptr %15, i64 176
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !645 ; 3 uses
  store ptr %i.ado, ptr %49, align 8, !tbaa !378
  %i.adp = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.adq = getelementptr inbounds nuw i8, ptr %15, i64 184
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !646
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = ptrtoint ptr %i.ado to i64
  %i.adu = sub i64 %i.ads, %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.adu
  store ptr %i.adv, ptr %i.adp, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.adw = getelementptr inbounds nuw i8, ptr %15, i64 200
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !379 ; 3 uses
  store ptr %i.adx, ptr %50, align 8, !tbaa !648
  %i.ady = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.adz = getelementptr inbounds nuw i8, ptr %15, i64 208
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !380
  %i.aeb = ptrtoint ptr %i.aea to i64
  %i.aec = ptrtoint ptr %i.adx to i64
  %i.aed = sub i64 %i.aeb, %i.aec
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.aed
  store ptr %i.aee, ptr %i.ady, align 8, !tbaa !648
  %i.aef = call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 1)
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.acg, i32 %i.aef)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.omp_outlined, ptr nonnull align 4 dereferenceable(8) %55, ptr nonnull %48, ptr nonnull %50, ptr nonnull %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  br label %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit

_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit: ; preds = %_ZN3gmx5RangeIiEC2Eii.exit, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  br label %bb.ei

bb.dr:                                            ; preds = %_ZL19clearDDStateIndicesP12gmx_domdec_t.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %11, i64 784 ; 3 uses
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !649 ; 2 uses
  %i.aei = sext i32 %i.aeh to i64                 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %3, i64 960 ; 2 uses
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !368 ; 2 uses
  %.not444 = icmp eq i64 %i.aek, %i.aei
  br i1 %.not444, label %bb.ef, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ael = icmp slt i64 %i.aek, %i.aei
  br i1 %i.ael, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  call void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %56, ptr noundef nonnull align 1 dereferenceable(65) @.str.1, i8 noundef zeroext 2)
  %i.aem = load i32, ptr %i.aeg, align 8, !tbaa !649
  %i.aen = load i64, ptr %i.aej, align 8, !tbaa !368
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef 2853, ptr noundef nonnull @.str.42, i32 noundef %i.aem, i64 noundef %i.aen) #29
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %bb.dt
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  br label %bb.rg

bb.dw:                                            ; preds = %bb.ds
  %i.aep = getelementptr inbounds nuw i8, ptr %11, i64 788 ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !650
  %.not445 = icmp eq i32 %i.aeq, %i.aeh
  br i1 %.not445, label %bb.ea, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  call void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull align 1 dereferenceable(65) @.str.1, i8 noundef zeroext 2)
  %i.aer = load i32, ptr %i.aep, align 4, !tbaa !650
  %i.aes = load i32, ptr %i.aeg, align 8, !tbaa !649
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %57, i32 noundef 2862, ptr noundef nonnull @.str.43, i32 noundef %i.aer, i32 noundef %i.aes) #29
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.aet = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %57) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  br label %bb.rg

bb.ea:                                            ; preds = %bb.dw
  %i.aeu = getelementptr i8, ptr %11, i64 792
  %.val466 = load ptr, ptr %i.aeu, align 8, !tbaa !379 ; 12 uses
  %i.aev = getelementptr i8, ptr %11, i64 800
  %.val467 = load ptr, ptr %i.aev, align 8, !tbaa !380
  %i.aew = ptrtoint ptr %.val466 to i64           ; 2 uses
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 896 ; 3 uses
  %75 = ptrtoint ptr %.val467 to i64
  %76 = sub i64 %75, %i.aew                       ; 2 uses
  %i.aex = ashr exact i64 %76, 2                  ; 12 uses
  call void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %74, i64 noundef %i.aex)
  %i.aey = icmp sgt i64 %i.aex, 0
  br i1 %i.aey, label %iter.check, label %._crit_edge.i487

iter.check:                                       ; preds = %bb.ea
  %i.aez = load ptr, ptr %74, align 8, !tbaa !371 ; 12 uses
  %min.iters.check = icmp ult i64 %i.aex, 4
  %i.afa = ptrtoaddr ptr %i.aez to i64
  %i.afb = sub i64 %i.aew, %i.afa
  %diff.check = icmp ugt i64 %i.afb, -128
  %or.cond1643.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1643.a, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1132 = icmp ult i64 %i.aex, 32
  br i1 %min.iters.check1132, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.aex, 9223372036854775776    ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %index ; 4 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 32
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afc, i64 64
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 96
  %wide.load = load <8 x i32>, ptr %i.afc, align 4, !tbaa !210
  %wide.load1133.a = load <8 x i32>, ptr %i.afd, align 4, !tbaa !210
  %wide.load1134.a = load <8 x i32>, ptr %i.afe, align 4, !tbaa !210
  %wide.load1135 = load <8 x i32>, ptr %i.aff, align 4, !tbaa !210
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %index ; 4 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 32
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 96
  store <8 x i32> %wide.load, ptr %i.afg, align 4, !tbaa !210
  store <8 x i32> %wide.load1133.a, ptr %i.afh, align 4, !tbaa !210
  store <8 x i32> %wide.load1134.a, ptr %i.afi, align 4, !tbaa !210
  store <8 x i32> %wide.load1135, ptr %i.afj, align 4, !tbaa !210
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.afk = icmp eq i64 %index.next, %n.vec
  br i1 %i.afk, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aex, %n.vec
  br i1 %cmp.n, label %._crit_edge.i487, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.afl = and i64 %76, 112
  %min.epilog.iters.check = icmp eq i64 %i.afl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !383

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1136 = and i64 %i.aex, 9223372036854775804 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1139, %vec.epilog.vector.body ] ; 3 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %index1137
  %wide.load1138 = load <4 x i32>, ptr %i.afm, align 4, !tbaa !210
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %index1137
  store <4 x i32> %wide.load1138, ptr %i.afn, align 4, !tbaa !210
  %index.next1139 = add nuw i64 %index1137, 4     ; 2 uses
  %i.afo = icmp eq i64 %index.next1139, %n.vec1136
  br i1 %i.afo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !471

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1140 = icmp eq i64 %i.aex, %n.vec1136
  br i1 %cmp.n1140, label %._crit_edge.i487, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1136, %vec.epilog.middle.block ] ; 4 uses
  %i.afp = sub nsw i64 %i.aex, %.04.i.ph
  %xtraiter1733 = and i64 %i.afp, 7               ; 2 uses
  %lcmp.mod1734.not = icmp eq i64 %xtraiter1733, 0
  br i1 %lcmp.mod1734.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.04.i.prol = phi i64 [ %i.aft, %vec.epilog.scalar.ph.prol ], [ %.04.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %.04.i.prol
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !210
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %.04.i.prol
  store i32 %i.afr, ptr %i.afs, align 4, !tbaa !210
  %i.aft = add nuw nsw i64 %.04.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1733
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !472

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.04.i.unr = phi i64 [ %.04.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aft, %vec.epilog.scalar.ph.prol ]
  %i.afu = sub nsw i64 %.04.i.ph, %i.aex
  %i.afv = icmp ugt i64 %i.afu, -8
  br i1 %i.afv, label %._crit_edge.i487, label %vec.epilog.scalar.ph

._crit_edge.i487:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ea
  %i.afw = trunc i64 %i.aex to i32                ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %3, i64 888 ; 7 uses
  store i32 %i.afw, ptr %i.afx, align 8, !tbaa !643
  %i.afy = load ptr, ptr %i.by, align 8, !tbaa !15 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 1020
  %i.aga = insertelement <4 x i32> poison, i32 %i.afw, i64 0
  %i.agb = shufflevector <4 x i32> %i.aga, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.agb, ptr %i.afz, align 4, !tbaa !210
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afy, i64 1036
  store i32 0, ptr %i.agc, align 4, !tbaa !651
  %i.agd = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.age = load i32, ptr %i.agd, align 8, !tbaa !384 ; 3 uses
  %i.agf = icmp sgt i32 %i.age, 0
  br i1 %i.agf, label %.lr.ph.i12.i, label %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit

.lr.ph.i12.i:                                     ; preds = %._crit_edge.i487
  %i.agg = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 5 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %3, i64 388 ; 5 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %3, i64 804 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.age to i64 ; 2 uses
  %xtraiter1735 = and i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.agj = icmp ult i32 %i.age, 4
  br i1 %i.agj, label %.epil.preheader, label %.lr.ph.i12.i.new

.lr.ph.i12.i.new:                                 ; preds = %.lr.ph.i12.i
  %unroll_iter1739 = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.lr.ph.i12.i.new
  %indvars.iv.i13.i = phi i64 [ 0, %.lr.ph.i12.i.new ], [ %indvars.iv.next.i14.i.3, %bb.eb ] ; 7 uses
  %niter1740 = phi i64 [ 0, %.lr.ph.i12.i.new ], [ %niter1740.next.3, %bb.eb ]
  %i.agk = load i32, ptr %i.afx, align 8, !tbaa !643 ; 2 uses
  %i.agl = getelementptr [4 x i8], ptr %i.agg, i64 %indvars.iv.i13.i ; 2 uses
  %i.agm = getelementptr i8, ptr %i.agl, i64 4
  store i32 %i.agk, ptr %i.agm, align 4, !tbaa !210
  %i.agn = load i32, ptr %i.agl, align 4, !tbaa !210
  %i.ago = sub nsw i32 %i.agk, %i.agn
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %indvars.iv.i13.i
  store i32 %i.ago, ptr %i.agp, align 4, !tbaa !210
  %i.agq = trunc nuw nsw i64 %indvars.iv.i13.i to i32
  store i32 %i.agq, ptr %i.agi, align 4, !tbaa !652
  %indvars.iv.next.i14.i = or disjoint i64 %indvars.iv.i13.i, 1 ; 3 uses
  %i.agr = load i32, ptr %i.afx, align 8, !tbaa !643 ; 2 uses
  %i.ags = getelementptr [4 x i8], ptr %i.agg, i64 %indvars.iv.next.i14.i ; 2 uses
  %i.agt = getelementptr i8, ptr %i.ags, i64 4
  store i32 %i.agr, ptr %i.agt, align 4, !tbaa !210
  %i.agu = load i32, ptr %i.ags, align 4, !tbaa !210
  %i.agv = sub nsw i32 %i.agr, %i.agu
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %indvars.iv.next.i14.i
  store i32 %i.agv, ptr %i.agw, align 4, !tbaa !210
  %i.agx = trunc nuw nsw i64 %indvars.iv.next.i14.i to i32
  store i32 %i.agx, ptr %i.agi, align 4, !tbaa !652
  %indvars.iv.next.i14.i.1 = or disjoint i64 %indvars.iv.i13.i, 2 ; 3 uses
  %i.agy = load i32, ptr %i.afx, align 8, !tbaa !643 ; 2 uses
  %i.agz = getelementptr [4 x i8], ptr %i.agg, i64 %indvars.iv.next.i14.i.1 ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agz, i64 4
  store i32 %i.agy, ptr %i.aha, align 4, !tbaa !210
  %i.ahb = load i32, ptr %i.agz, align 4, !tbaa !210
  %i.ahc = sub nsw i32 %i.agy, %i.ahb
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %indvars.iv.next.i14.i.1
  store i32 %i.ahc, ptr %i.ahd, align 4, !tbaa !210
  %i.ahe = trunc nuw nsw i64 %indvars.iv.next.i14.i.1 to i32
  store i32 %i.ahe, ptr %i.agi, align 4, !tbaa !652
  %indvars.iv.next.i14.i.2 = or disjoint i64 %indvars.iv.i13.i, 3 ; 3 uses
  %i.ahf = load i32, ptr %i.afx, align 8, !tbaa !643 ; 2 uses
  %i.ahg = getelementptr [4 x i8], ptr %i.agg, i64 %indvars.iv.next.i14.i.2 ; 2 uses
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 4
  store i32 %i.ahf, ptr %i.ahh, align 4, !tbaa !210
  %i.ahi = load i32, ptr %i.ahg, align 4, !tbaa !210
  %i.ahj = sub nsw i32 %i.ahf, %i.ahi
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %indvars.iv.next.i14.i.2
  store i32 %i.ahj, ptr %i.ahk, align 4, !tbaa !210
  %i.ahl = trunc nuw nsw i64 %indvars.iv.next.i14.i.2 to i32
  store i32 %i.ahl, ptr %i.agi, align 4, !tbaa !652
  %indvars.iv.next.i14.i.3 = add nuw nsw i64 %indvars.iv.i13.i, 4 ; 2 uses
  %niter1740.next.3 = add i64 %niter1740, 4       ; 2 uses
  %niter1740.ncmp.3 = icmp eq i64 %niter1740.next.3, %unroll_iter1739
  br i1 %niter1740.ncmp.3, label %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit.loopexit.unr-lcssa, label %bb.eb, !llvm.loop !473

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.04.i = phi i64 [ %i.air, %vec.epilog.scalar.ph ], [ %.04.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %.04.i
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !210
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %.04.i
  store i32 %i.ahn, ptr %i.aho, align 4, !tbaa !210
  %i.ahp = add nuw nsw i64 %.04.i, 1              ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %i.ahp
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !210
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.ahp
  store i32 %i.ahr, ptr %i.ahs, align 4, !tbaa !210
  %i.aht = add nuw nsw i64 %.04.i, 2              ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %i.aht
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !210
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.aht
  store i32 %i.ahv, ptr %i.ahw, align 4, !tbaa !210
  %i.ahx = add nuw nsw i64 %.04.i, 3              ; 2 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %i.ahx
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !210
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.ahx
  store i32 %i.ahz, ptr %i.aia, align 4, !tbaa !210
  %i.aib = add nuw nsw i64 %.04.i, 4              ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %i.aib
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !210
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.aib
  store i32 %i.aid, ptr %i.aie, align 4, !tbaa !210
  %i.aif = add nuw nsw i64 %.04.i, 5              ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %i.aif
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !210
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.aif
  store i32 %i.aih, ptr %i.aii, align 4, !tbaa !210
  %i.aij = add nuw nsw i64 %.04.i, 6              ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !210
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.aij
  store i32 %i.ail, ptr %i.aim, align 4, !tbaa !210
  %i.ain = add nuw nsw i64 %.04.i, 7              ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %.val466, i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !210
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.ain
  store i32 %i.aip, ptr %i.aiq, align 4, !tbaa !210
  %i.air = add nuw nsw i64 %.04.i, 8              ; 2 uses
  %exitcond.not.i489.7 = icmp eq i64 %i.air, %i.aex
  br i1 %exitcond.not.i489.7, label %._crit_edge.i487, label %vec.epilog.scalar.ph, !llvm.loop !474

_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit.loopexit.unr-lcssa: ; preds = %bb.eb
  %lcmp.mod1737.not = icmp eq i64 %xtraiter1735, 0
  br i1 %lcmp.mod1737.not, label %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit.loopexit.unr-lcssa, %.lr.ph.i12.i
  %indvars.iv.i13.i.epil.init = phi i64 [ 0, %.lr.ph.i12.i ], [ %indvars.iv.next.i14.i.3, %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit.loopexit.unr-lcssa ]
  %lcmp.mod1738 = icmp ne i64 %xtraiter1735, 0
  call void @llvm.assume(i1 %lcmp.mod1738)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.epil.preheader
  %indvars.iv.i13.i.epil = phi i64 [ %indvars.iv.i13.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i14.i.epil, %bb.ec ] ; 4 uses
  %epil.iter1736 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1736.next, %bb.ec ]
  %i.ais = load i32, ptr %i.afx, align 8, !tbaa !643 ; 2 uses
  %i.ait = getelementptr [4 x i8], ptr %i.agg, i64 %indvars.iv.i13.i.epil ; 2 uses
  %i.aiu = getelementptr i8, ptr %i.ait, i64 4
  store i32 %i.ais, ptr %i.aiu, align 4, !tbaa !210
  %i.aiv = load i32, ptr %i.ait, align 4, !tbaa !210
  %i.aiw = sub nsw i32 %i.ais, %i.aiv
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %indvars.iv.i13.i.epil
  store i32 %i.aiw, ptr %i.aix, align 4, !tbaa !210
  %i.aiy = trunc nuw nsw i64 %indvars.iv.i13.i.epil to i32
  store i32 %i.aiy, ptr %i.agi, align 4, !tbaa !652
  %indvars.iv.next.i14.i.epil = add nuw nsw i64 %indvars.iv.i13.i.epil, 1
  %epil.iter1736.next = add i64 %epil.iter1736, 1 ; 2 uses
  %epil.iter1736.cmp.not = icmp eq i64 %epil.iter1736.next, %xtraiter1735
  br i1 %epil.iter1736.cmp.not, label %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit, label %bb.ec, !llvm.loop !475

_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit: ; preds = %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit.loopexit.unr-lcssa, %bb.ec, %._crit_edge.i487
  %i.aiz = call fastcc noundef i32 @_ZL15make_dd_indicesP12gmx_domdec_ti(ptr noundef nonnull %3, i32 noundef 0)
  %i.aja = getelementptr inbounds nuw i8, ptr %i.bz, i64 1040
  store i32 %i.aiz, ptr %i.aja, align 8, !tbaa !653
  %i.ajb = load i32, ptr %i.afx, align 8, !tbaa !643 ; 3 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1020
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !210
  %i.aje = sitofp i32 %i.ajd to double
  %i.ajf = getelementptr inbounds nuw i8, ptr %18, i64 464 ; 2 uses
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !240
  %i.ajh = fadd double %i.ajg, %i.aje
  store double %i.ajh, ptr %i.ajf, align 8, !tbaa !240
  %i.aji = load ptr, ptr %74, align 8, !tbaa !371 ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !372
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  store i32 0, ptr %58, align 4, !tbaa !374
  %i.ajl = getelementptr inbounds nuw i8, ptr %58, i64 4
  store i32 %i.ajb, ptr %i.ajl, align 4, !tbaa !375
  %.not.i490 = icmp slt i32 %i.ajb, 0
  br i1 %.not.i490, label %bb.ed, label %_ZN3gmx5RangeIiEC2Eii.exit491

bb.ed:                                            ; preds = %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

_ZN3gmx5RangeIiEC2Eii.exit491:                    ; preds = %_ZL17restoreAtomGroupsP12gmx_domdec_tPK7t_state.exit
  %i.ajm = ptrtoint ptr %i.ajk to i64
  %i.ajn = ptrtoint ptr %i.aji to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aji, i64 %i.ajo
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  store ptr %i.aji, ptr %45, align 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %i.ajp, ptr %i.ajq, align 8
  %.not.i492 = icmp eq ptr %15, null
  br i1 %.not.i492, label %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit493, label %bb.ee

bb.ee:                                            ; preds = %_ZN3gmx5RangeIiEC2Eii.exit491
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.ajr = getelementptr inbounds nuw i8, ptr %15, i64 176
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !645 ; 3 uses
  store ptr %i.ajs, ptr %46, align 8, !tbaa !378
  %i.ajt = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.aju = getelementptr inbounds nuw i8, ptr %15, i64 184
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !646
  %i.ajw = ptrtoint ptr %i.ajv to i64
  %i.ajx = ptrtoint ptr %i.ajs to i64
  %i.ajy = sub i64 %i.ajw, %i.ajx
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.ajy
  store ptr %i.ajz, ptr %i.ajt, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  %i.aka = getelementptr inbounds nuw i8, ptr %15, i64 200
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !379 ; 3 uses
  store ptr %i.akb, ptr %47, align 8, !tbaa !648
  %i.akc = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.akd = getelementptr inbounds nuw i8, ptr %15, i64 208
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !380
  %i.akf = ptrtoint ptr %i.ake to i64
  %i.akg = ptrtoint ptr %i.akb to i64
  %i.akh = sub i64 %i.akf, %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.akh
  store ptr %i.aki, ptr %i.akc, align 8, !tbaa !648
  %i.akj = call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 1)
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.acg, i32 %i.akj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.omp_outlined, ptr nonnull align 4 dereferenceable(8) %58, ptr nonnull %45, ptr nonnull %47, ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  br label %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit493

_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit493: ; preds = %_ZN3gmx5RangeIiEC2Eii.exit491, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  %i.akk = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.akl = getelementptr inbounds nuw i8, ptr %11, i64 416
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !370 ; 3 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %11, i64 440
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !385
  %i.akp = ptrtoint ptr %i.ako to i64
  %i.akq = ptrtoint ptr %i.akm to i64
  %i.akr = sub i64 %i.akp, %i.akq
  %i.aks = getelementptr inbounds i8, ptr %i.akm, i64 %i.akr
  call void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097) %3, i1 noundef zeroext false, ptr noundef nonnull %i.akk, i1 noundef zeroext true, ptr %i.akm, ptr %i.aks, ptr noundef nonnull %51)
  %.val460 = load i32, ptr %i.co, align 8, !tbaa !345
  %i.akt = and i32 %.val460, -2
  %spec.select.i494 = icmp eq i32 %i.akt, 4
  br label %bb.ei

bb.ef:                                            ; preds = %bb.dr
  %i.aku = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 1000
  %i.akw = load i32, ptr %i.akv, align 8, !tbaa !582
  %i.akx = sext i32 %i.akw to i64
  %i.aky = srem i64 %2, %i.akx
  %i.akz = icmp eq i64 %i.aky, 0                  ; 2 uses
  br i1 %i.akz, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ala = getelementptr inbounds nuw i8, ptr %i.bz, i64 640
  %i.alb = load <4 x float>, ptr %i.ala, align 4, !tbaa !211
  store <4 x float> %i.alb, ptr %i.ao, align 4, !tbaa !211
  %i.alc = getelementptr inbounds nuw i8, ptr %i.bz, i64 656
  %i.ald = load <2 x float>, ptr %i.alc, align 4, !tbaa !211
  store <2 x float> %i.ald, ptr %i.ap, align 4, !tbaa !211
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ale = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.alf = getelementptr inbounds nuw i8, ptr %11, i64 416
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !370 ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %11, i64 440
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !385
  %i.alj = ptrtoint ptr %i.ali to i64
  %i.alk = ptrtoint ptr %i.alg to i64
  %i.all = sub i64 %i.alj, %i.alk
  %i.alm = getelementptr inbounds i8, ptr %i.alg, i64 %i.all
  call void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097) %3, i1 noundef zeroext false, ptr noundef nonnull %i.ale, i1 noundef zeroext %i.akz, ptr %i.alg, ptr %i.alm, ptr noundef nonnull %51)
  br label %bb.ei

bb.ei:                                            ; preds = %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit493, %bb.eh, %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit
  %.0412 = phi i1 [ false, %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit ], [ %spec.select.i494, %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit493 ], [ true, %bb.eh ] ; 5 uses
  %.2411 = phi i8 [ %.1410, %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit ], [ %.1410, %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit493 ], [ 1, %bb.eh ] ; 2 uses
  %.0399 = phi i32 [ 0, %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit ], [ %i.ajb, %_ZL13ddSetAtominfoN3gmx8ArrayRefIKiEERKNS_5RangeIiEEP10t_forcerec.exit493 ], [ 0, %bb.eh ]
  %i.aln = getelementptr inbounds nuw i8, ptr %i.bz, i64 640
  %i.alo = load <4 x float>, ptr %i.ao, align 4, !tbaa !211
  store <4 x float> %i.alo, ptr %i.aln, align 4, !tbaa !211
  %i.alp = getelementptr inbounds nuw i8, ptr %i.bz, i64 656
  %i.alq = load <2 x float>, ptr %i.ap, align 4, !tbaa !211
  store <2 x float> %i.alq, ptr %i.alp, align 4, !tbaa !211
  %i.alr = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.als = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.alt = load i8, ptr %i.als, align 8, !tbaa !654, !range !335, !noundef !336
  %i.alu = trunc nuw i8 %i.alt to i1
  %i.alv = trunc nuw i8 %.3427 to i1
  call void @_Z17set_dd_cell_sizesP12gmx_domdec_tPK11gmx_ddbox_tbbblP13gmx_wallcycle(ptr noundef nonnull %3, ptr noundef nonnull %51, i1 noundef zeroext %i.alu, i1 noundef zeroext %.2, i1 noundef zeroext %i.alv, i64 noundef %2, ptr noundef %19)
  %i.alw = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !655 ; 2 uses
  %i.aly = icmp sgt i32 %i.alx, 0
  br i1 %i.aly, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.alz = zext nneg i32 %i.alx to i64
  %i.ama = srem i64 %2, %i.alz
  %i.amb = icmp eq i64 %i.ama, 0
  br i1 %i.amb, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.amc = getelementptr inbounds nuw i8, ptr %11, i64 52
  call void @_Z17write_dd_grid_pdbPKclP12gmx_domdec_tPA3_fP11gmx_ddbox_t(ptr noundef nonnull @.str.44, i64 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.amc, ptr noundef nonnull %51)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %i.amd = getelementptr inbounds nuw i8, ptr %i.bz, i64 504 ; 3 uses
  %i.ame = load i8, ptr %i.amd, align 8, !tbaa !656, !range !335, !noundef !336
  %i.amf = trunc nuw i8 %i.ame to i1
  br i1 %i.amf, label %bb.em, label %bb.eq

bb.em:                                            ; preds = %bb.el
  br i1 %.0412, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.amg = getelementptr inbounds nuw i8, ptr %i.bz, i64 1016
  %i.amh = load i8, ptr %i.amg, align 8, !tbaa !657, !range !335, !noundef !336
  %i.ami = trunc nuw i8 %i.amh to i1
  br i1 %i.ami, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.amj = getelementptr inbounds nuw i8, ptr %15, i64 256
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !659
  %i.aml = call { ptr, ptr } @_ZNK3gmx18nonbonded_verlet_t29getLocalGridNumAtomsPerColumnEv(ptr noundef nonnull align 8 dereferenceable(65) %i.amk) ; 2 uses
  %i.amm = extractvalue { ptr, ptr } %i.aml, 0
  %i.amn = extractvalue { ptr, ptr } %i.aml, 1
  %i.amo = ptrtoint ptr %i.amn to i64
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %.sroa.5.0 = phi i64 [ %i.amo, %bb.eo ], [ 0, %bb.en ], [ 0, %bb.em ]
  %.sroa.0646.0 = phi ptr [ %i.amm, %bb.eo ], [ null, %bb.en ], [ null, %bb.em ] ; 3 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.bz, i64 376
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !660
  %i.amr = getelementptr inbounds nuw i8, ptr %3, i64 896
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !371 ; 5 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %3, i64 888
  %i.amu = load i32, ptr %i.amt, align 8, !tbaa !643
  %i.amv = sext i32 %i.amu to i64
  %.not.i495 = icmp eq ptr %i.ams, null
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.ams, i64 %i.amv
  %spec.select.i496 = select i1 %.not.i495, ptr null, ptr %i.amw
  %i.amx = ptrtoint ptr %spec.select.i496 to i64
  %i.amy = ptrtoint ptr %i.ams to i64
  %i.amz = sub i64 %i.amx, %i.amy
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %11, i64 416
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !370 ; 3 uses
  %i.and = getelementptr inbounds nuw i8, ptr %11, i64 440
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !385
  %i.anf = ptrtoint ptr %i.ane to i64
  %i.ang = ptrtoint ptr %i.anc to i64
  %i.anh = sub i64 %i.anf, %i.ang
  %i.ani = getelementptr inbounds i8, ptr %i.anc, i64 %i.anh
  store ptr %.sroa.0646.0, ptr %59, align 8, !tbaa !662
  %i.anj = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ank = ptrtoint ptr %.sroa.0646.0 to i64
  %i.anl = sub i64 %.sroa.5.0, %i.ank
  %i.anm = getelementptr inbounds nuw i8, ptr %.sroa.0646.0, i64 %i.anl
  store ptr %i.anm, ptr %i.anj, align 8, !tbaa !662
  call void @_ZN3gmx15UpdateGroupsCog7addCogsENS_8ArrayRefIKiEENS1_IKNS_11BasicVectorIfEEEES3_(ptr noundef nonnull align 8 dereferenceable(160) %i.amq, ptr %i.ams, ptr %i.ana, ptr %i.anc, ptr %i.ani, ptr noundef nonnull byval(%"class.gmx::ArrayRef.326") align 8 %59)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.el
  %i.ann = or i1 %.2, %.0412                      ; 3 uses
  br i1 %.0412, label %bb.er, label %bb.et

end_hunk_0
begin_hunk_1_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
  %i.buq = icmp ugt i64 %.2.i.i523, %i.bup
  br i1 %i.buq, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %._crit_edge.i.i
  %i.bur = sub nuw i64 %.2.i.i523, %i.bup
  call void @_ZNSt6vectorI12gmx_cgsort_tN3gmx30DefaultInitializationAllocatorIS0_SaIS0_EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bsh, i64 noundef %i.bur)
  br label %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit.i

bb.hx:                                            ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.bus = phi i64 [ %i.btj, %._crit_edge.thread.i.i ], [ %i.bup, %._crit_edge.i.i ]
  %i.but = phi ptr [ %i.btf, %._crit_edge.thread.i.i ], [ %i.bul, %._crit_edge.i.i ]
  %i.buu = phi ptr [ %i.bte, %._crit_edge.thread.i.i ], [ %i.buk, %._crit_edge.i.i ]
  %.1.lcssa53.i.i = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %.2.i.i523, %._crit_edge.i.i ] ; 2 uses
  %i.buv = icmp ult i64 %.1.lcssa53.i.i, %i.bus
  br i1 %i.buv, label %bb.hy, label %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit.i

bb.hy:                                            ; preds = %bb.hx
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %.1.lcssa53.i.i ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.buu, %i.buw
  br i1 %.not.i.i23.i.i, label %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  store ptr %i.buw, ptr %i.bsq, align 8, !tbaa !389
  br label %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit.i

.lr.ph.i.i522:                                    ; preds = %.preheader32.i.i, %bb.ib
  %.135.i.i = phi i64 [ %.2.i.i523, %bb.ib ], [ 0, %.preheader32.i.i ] ; 3 uses
  %.sroa.0.034.i.i = phi ptr [ %i.bvb, %bb.ib ], [ %i.bsk, %.preheader32.i.i ] ; 2 uses
  %i.bux = load i32, ptr %.sroa.0.034.i.i, align 4, !tbaa !210 ; 2 uses
  %i.buy = icmp sgt i32 %i.bux, -1
  br i1 %i.buy, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %.lr.ph.i.i522
  %i.buz = add i64 %.135.i.i, 1
  %i.bva = getelementptr inbounds [4 x i8], ptr %i.btb, i64 %.135.i.i
  store i32 %i.bux, ptr %i.bva, align 4, !tbaa !392
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.lr.ph.i.i522
  %.2.i.i523 = phi i64 [ %i.buz, %bb.ia ], [ %.135.i.i, %.lr.ph.i.i522 ] ; 4 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 4 ; 2 uses
  %.not.i.i524 = icmp eq ptr %i.bvb, %i.bsl
  br i1 %.not.i.i524, label %._crit_edge.i.i, label %.lr.ph.i.i522

_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit.i: ; preds = %.lr.ph39.i.i, %middle.block1296, %vec.epilog.middle.block1311, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %.preheader.i.i529
  %i.bvc = load ptr, ptr %i.bsh, align 8, !tbaa !390 ; 8 uses
  %i.bvd = load ptr, ptr %i.bsq, align 8, !tbaa !389 ; 3 uses
  %i.bve = ptrtoint ptr %i.bvd to i64
  %i.bvf = ptrtoint ptr %i.bvc to i64
  %i.bvg = sub i64 %i.bve, %i.bvf                 ; 2 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvc, i64 %i.bvg ; 4 uses
  %i.bvi = load ptr, ptr @debug, align 8, !tbaa !121 ; 2 uses
  %.not.i525 = icmp eq ptr %i.bvi, null
  %.pre118.i = ashr exact i64 %i.bvg, 2           ; 7 uses
  br i1 %.not.i525, label %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit._crit_edge.i, label %bb.ic

bb.ic:                                            ; preds = %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit.i
  %i.bvj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bvi, ptr noundef nonnull @.str.136, i64 noundef %.pre118.i) #19 ; 0 uses
  br label %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit._crit_edge.i

_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit._crit_edge.i: ; preds = %bb.ic, %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit.i
  %i.bvk = trunc i64 %.pre118.i to i32            ; 3 uses
  %i.bvl = load i32, ptr %i.aoq, align 8, !tbaa !210
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.bvl, i32 %i.bvk) ; 2 uses
  call void @_ZN7t_state14changeNumAtomsEi(ptr noundef nonnull align 8 dereferenceable(840) %11, i32 noundef %.sroa.speculated.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.bvm = load ptr, ptr %i.by, align 8, !tbaa !15 ; 3 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 1104 ; 4 uses
  %i.bvo = sext i32 %.sroa.speculated.i to i64    ; 7 uses
  store ptr %i.bvn, ptr %36, align 8, !tbaa !684
  %i.bvp = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvm, i64 1128 ; 4 uses
  %i.bvr = load i8, ptr %i.bvq, align 8, !tbaa !395, !range !335, !noundef !336
  %i.bvs = trunc nuw i8 %i.bvr to i1
  br i1 %i.bvs, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit._crit_edge.i
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN8DDBufferIN3gmx11BasicVectorIfEEE7acquireEmENKUlvE_clEv, ptr noundef nonnull @.str.139, i32 noundef 359) #29
  unreachable

bb.ie:                                            ; preds = %_ZL19dd_sort_order_nbnxnRKN3gmx18nonbonded_verlet_tEPSt6vectorI12gmx_cgsort_tNS_30DefaultInitializationAllocatorIS4_SaIS4_EEEE.exit._crit_edge.i
  store i8 1, ptr %i.bvq, align 8, !tbaa !395
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvm, i64 1112
  %i.bvu = load ptr, ptr %i.bvt, align 8, !tbaa !396
  %i.bvv = load ptr, ptr %i.bvn, align 8, !tbaa !397 ; 2 uses
  %i.bvw = ptrtoint ptr %i.bvu to i64
  %i.bvx = ptrtoint ptr %i.bvv to i64
  %i.bvy = sub i64 %i.bvw, %i.bvx
  %i.bvz = sdiv exact i64 %i.bvy, 12
  %i.bwa = icmp ult i64 %i.bvz, %i.bvo
  br i1 %i.bwa, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(25) %i.bvn, i64 noundef %i.bvo)
  %.pre.i.i.i.i = load ptr, ptr %i.bvn, align 8, !tbaa !397
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %i.bwb = phi ptr [ %.pre.i.i.i.i, %bb.if ], [ %i.bvv, %bb.ie ] ; 13 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bwb, null
  %i.bwc = getelementptr inbounds nuw [12 x i8], ptr %i.bwb, i64 %i.bvo
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.bwc ; 3 uses
  store ptr %i.bwb, ptr %i.bvp, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %spec.select.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bwd = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  %i.bwe = load i32, ptr %i.bwd, align 4, !tbaa !685
  %i.bwf = and i32 %i.bwe, 128
  %.not103.i = icmp eq i32 %i.bwf, 0
  br i1 %.not103.i, label %.loopexit.i527, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bwg = load ptr, ptr %i.aos, align 8, !tbaa !370 ; 3 uses
  %.not28.i.i = icmp eq ptr %i.bvc, %i.bvd
  br i1 %.not28.i.i, label %.loopexit.i527, label %.lr.ph.i51.i

._crit_edge.i53.i:                                ; preds = %.lr.ph.i51.i
  %i.bwh = icmp sgt i64 %.pre118.i, 0
  br i1 %i.bwh, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.loopexit.i527

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i53.i
  %xtraiter1759 = and i64 %.pre118.i, 7           ; 2 uses
  %lcmp.mod1760.not = icmp eq i64 %xtraiter1759, 0
  br i1 %lcmp.mod1760.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.prol = phi i64 [ %i.bwk, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.pre118.i, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.0.08.i.i.i.i.i.i.i.prol = phi ptr [ %i.bwj, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bwg, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.prol = phi ptr [ %i.bwi, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bwb, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter1761 = phi i64 [ %prol.iter1761.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.08.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.07.i.i.i.i.i.i.i.prol, i64 12, i1 false), !tbaa.struct !398
  %i.bwi = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i.prol, i64 12 ; 2 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.prol, i64 12 ; 2 uses
  %i.bwk = add nsw i64 %.09.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter1761.next = add i64 %prol.iter1761, 1 ; 2 uses
  %prol.iter1761.cmp.not = icmp eq i64 %prol.iter1761.next, %xtraiter1759
  br i1 %prol.iter1761.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !498

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.i.unr = phi i64 [ %.pre118.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bwk, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.0.08.i.i.i.i.i.i.i.unr = phi ptr [ %i.bwg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bwj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.i.i.unr = phi ptr [ %i.bwb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bwi, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bwl = icmp ult i64 %.pre118.i, 8
  br i1 %i.bwl, label %.loopexit.i527, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.bxc, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.bxb, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.05.07.i.i.i.i.i.i.i = phi ptr [ %i.bxa, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.07.i.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !398
  %i.bwm = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i, i64 12
  %i.bwn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bwn, ptr noundef nonnull align 4 dereferenceable(12) %i.bwm, i64 12, i1 false), !tbaa.struct !398
  %i.bwo = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i, i64 24
  %i.bwp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bwp, ptr noundef nonnull align 4 dereferenceable(12) %i.bwo, i64 12, i1 false), !tbaa.struct !398
  %i.bwq = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i, i64 36
  %i.bwr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bwr, ptr noundef nonnull align 4 dereferenceable(12) %i.bwq, i64 12, i1 false), !tbaa.struct !398
  %i.bws = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i, i64 48
  %i.bwt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bwt, ptr noundef nonnull align 4 dereferenceable(12) %i.bws, i64 12, i1 false), !tbaa.struct !398
  %i.bwu = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i, i64 60
  %i.bwv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bwv, ptr noundef nonnull align 4 dereferenceable(12) %i.bwu, i64 12, i1 false), !tbaa.struct !398
  %i.bww = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i, i64 72
  %i.bwx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bwx, ptr noundef nonnull align 4 dereferenceable(12) %i.bww, i64 12, i1 false), !tbaa.struct !398
  %i.bwy = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i, i64 84
  %i.bwz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bwz, ptr noundef nonnull align 4 dereferenceable(12) %i.bwy, i64 12, i1 false), !tbaa.struct !398
  %i.bxa = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i, i64 96
  %i.bxb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 96
  %i.bxc = add nsw i64 %.09.i.i.i.i.i.i.i, -8
  %i.bxd = icmp sgt i64 %.09.i.i.i.i.i.i.i, 8
  br i1 %i.bxd, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i527, !llvm.loop !499

.lr.ph.i51.i:                                     ; preds = %bb.ih, %.lr.ph.i51.i
  %.031.i.i = phi i64 [ %.1.i.i526, %.lr.ph.i51.i ], [ -1, %bb.ih ] ; 2 uses
  %.01330.i.i = phi i64 [ %.114.i.i, %.lr.ph.i51.i ], [ 0, %bb.ih ] ; 3 uses
  %.sroa.020.029.i.i = phi ptr [ %i.bxk, %.lr.ph.i51.i ], [ %i.bvc, %bb.ih ] ; 2 uses
  %i.bxe = load i32, ptr %.sroa.020.029.i.i, align 4, !tbaa !392 ; 2 uses
  %i.bxf = icmp sgt i32 %i.bxe, -1                ; 2 uses
  %i.bxg = getelementptr inbounds [12 x i8], ptr %i.bwb, i64 %.031.i.i
  %i.bxh = zext nneg i32 %i.bxe to i64
  %i.bxi = getelementptr inbounds nuw [12 x i8], ptr %i.bwg, i64 %i.bxh
  %.sink36.i.i = select i1 %i.bxf, ptr %i.bxi, ptr %i.bxg
  %.1.i.i526 = select i1 %i.bxf, i64 %.01330.i.i, i64 %.031.i.i
  %i.bxj = getelementptr inbounds nuw [12 x i8], ptr %i.bwb, i64 %.01330.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bxj, ptr noundef nonnull align 4 dereferenceable(12) %.sink36.i.i, i64 12, i1 false)
  %.114.i.i = add nuw nsw i64 %.01330.i.i, 1
  %i.bxk = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i.i, i64 4 ; 2 uses
  %.not.i52.i = icmp eq ptr %i.bxk, %i.bvd
  br i1 %.not.i52.i, label %._crit_edge.i53.i, label %.lr.ph.i51.i

bb.ii:                                            ; preds = %.lr.ph.i67.i, %bb.jd, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.i, %bb.ja, %bb.im, %bb.il, %bb.ij
  %i.bxl = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

.loopexit.i527:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %._crit_edge.i53.i, %bb.ih, %bb.ig
  %i.bxm = load i32, ptr %i.bwd, align 4, !tbaa !685 ; 2 uses
  %i.bxn = and i32 %i.bxm, 256
  %.not104.i = icmp eq i32 %i.bxn, 0
  br i1 %.not104.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %.loopexit.i527
  %i.bxo = getelementptr inbounds nuw i8, ptr %11, i64 456
  %i.bxp = load ptr, ptr %i.bxo, align 8, !tbaa !370 ; 3 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %11, i64 480
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !385
  %i.bxs = ptrtoint ptr %i.bxr to i64
  %i.bxt = ptrtoint ptr %i.bxp to i64
  %i.bxu = sub i64 %i.bxs, %i.bxt
  %i.bxv = getelementptr inbounds i8, ptr %i.bxp, i64 %i.bxu
  %i.bxw = ptrtoint ptr %spec.select.i.i.i.i.i to i64
  %i.bxx = ptrtoint ptr %i.bwb to i64
  %i.bxy = sub i64 %i.bxw, %i.bxx
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bwb, i64 %i.bxy
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  store ptr %i.bvc, ptr %32, align 8
  %i.bya = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.bvh, ptr %i.bya, align 8
  store ptr %i.bxp, ptr %33, align 8
  %i.byb = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %i.bxv, ptr %i.byb, align 8
  store <2 x float> zeroinitializer, ptr %34, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store ptr %i.bwb, ptr %35, align 8
  %i.byc = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %i.bxz, ptr %i.byc, align 8
  %i.byd = invoke noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 1)
          to label %_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.exit.i unwind label %bb.ii ; 2 uses

_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.exit.i: ; preds = %bb.ij
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.acg, i32 %i.byd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.omp_outlined, ptr nonnull %32, ptr nonnull %35, ptr nonnull %33, ptr nonnull %34)
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.acg, i32 %i.byd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.omp_outlined.140, ptr nonnull %32, ptr nonnull %33, ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  %.pre813 = load i32, ptr %i.bwd, align 4, !tbaa !685
  br label %bb.ik

bb.ik:                                            ; preds = %_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.exit.i, %.loopexit.i527
  %i.bye = phi i32 [ %.pre813, %_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.exit.i ], [ %i.bxm, %.loopexit.i527 ]
  %i.byf = and i32 %i.bye, 1024
  %.not105.i = icmp eq i32 %i.byf, 0
  br i1 %.not105.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.byg = getelementptr inbounds nuw i8, ptr %11, i64 496
  %i.byh = load ptr, ptr %i.byg, align 8, !tbaa !370 ; 3 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %11, i64 520
  %i.byj = load ptr, ptr %i.byi, align 8, !tbaa !385
  %i.byk = ptrtoint ptr %i.byj to i64
  %i.byl = ptrtoint ptr %i.byh to i64
  %i.bym = sub i64 %i.byk, %i.byl
  %i.byn = getelementptr inbounds i8, ptr %i.byh, i64 %i.bym
  %i.byo = ptrtoint ptr %spec.select.i.i.i.i.i to i64
  %i.byp = ptrtoint ptr %i.bwb to i64
  %i.byq = sub i64 %i.byo, %i.byp
  %i.byr = getelementptr inbounds nuw i8, ptr %i.bwb, i64 %i.byq
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  store ptr %i.bvc, ptr %28, align 8
  %i.bys = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.bvh, ptr %i.bys, align 8
  store ptr %i.byh, ptr %29, align 8
  %i.byt = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %i.byn, ptr %i.byt, align 8
  store <2 x float> zeroinitializer, ptr %30, align 8
  %.sroa.2.0..sroa_idx.i58.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx.i58.i, align 8
  store ptr %i.bwb, ptr %31, align 8
  %i.byu = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.byr, ptr %i.byu, align 8
  %i.byv = invoke noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 1)
          to label %_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.exit59.i unwind label %bb.ii ; 2 uses

_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.exit59.i: ; preds = %bb.il
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.acg, i32 %i.byv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.omp_outlined, ptr nonnull %28, ptr nonnull %31, ptr nonnull %29, ptr nonnull %30)
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.acg, i32 %i.byv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.omp_outlined.140, ptr nonnull %28, ptr nonnull %29, ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  br label %bb.im

bb.im:                                            ; preds = %_ZL11orderVectorIN3gmx11BasicVectorIfEEEvNS0_8ArrayRefIK12gmx_cgsort_tEENS3_IT_EES7_S8_.exit59.i, %bb.ik
  store i32 %i.bvk, ptr %i.aoq, align 8, !tbaa !643
  invoke void @_ZN7t_state14changeNumAtomsEi(ptr noundef nonnull align 8 dereferenceable(840) %11, i32 noundef %i.bvk)
          to label %bb.in unwind label %bb.ii

bb.in:                                            ; preds = %bb.im
  %i.byw = load i32, ptr %i.aoq, align 8, !tbaa !643
  %i.byx = sext i32 %i.byw to i64                 ; 5 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %3, i64 896 ; 6 uses
  %i.byz = getelementptr inbounds nuw i8, ptr %3, i64 904 ; 5 uses
  %i.bza = load ptr, ptr %i.byz, align 8, !tbaa !372 ; 5 uses
  %i.bzb = load ptr, ptr %i.byy, align 8, !tbaa !371 ; 6 uses
  %i.bzc = ptrtoint ptr %i.bza to i64
  %i.bzd = ptrtoint ptr %i.bzb to i64             ; 4 uses
  %i.bze = sub i64 %i.bzc, %i.bzd                 ; 2 uses
  %i.bzf = ashr exact i64 %i.bze, 2               ; 4 uses
  %i.bzg = icmp slt i64 %i.bzf, %i.byx
  br i1 %i.bzg, label %bb.io, label %bb.iu

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #19
  store i32 -1, ptr %i.af, align 4, !tbaa !210
  %i.bzh = icmp ult i64 %i.bzf, %i.byx
  br i1 %i.bzh, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.bzi = sub nuw nsw i64 %i.byx, %i.bzf
  invoke void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS4_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.byy, ptr %i.bza, i64 noundef %i.bzi, ptr noundef nonnull align 4 dereferenceable(4) %i.af)
          to label %._ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit_crit_edge.i unwind label %bb.it

._ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit_crit_edge.i: ; preds = %bb.ip
  %.pre.pre.i = load ptr, ptr %i.byy, align 8, !tbaa !371 ; 2 uses
  %.pre106.pre.i = load ptr, ptr %i.byz, align 8, !tbaa !372
  %.pre120.i = ptrtoint ptr %.pre.pre.i to i64
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit.i

bb.iq:                                            ; preds = %bb.io
  %i.bzj = icmp ugt i64 %i.bzf, %i.byx
  br i1 %i.bzj, label %bb.ir, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit.i

bb.ir:                                            ; preds = %bb.iq
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.bzb, i64 %i.byx ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bza, %i.bzk
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  store ptr %i.bzk, ptr %i.byz, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit.i: ; preds = %bb.is, %bb.ir, %bb.iq, %._ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit_crit_edge.i
  %.pre112.pre-phi.i = phi i64 [ %.pre120.i, %._ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit_crit_edge.i ], [ %i.bzd, %bb.is ], [ %i.bzd, %bb.ir ], [ %i.bzd, %bb.iq ]
  %.pre106.i = phi ptr [ %.pre106.pre.i, %._ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit_crit_edge.i ], [ %i.bzk, %bb.is ], [ %i.bza, %bb.ir ], [ %i.bza, %bb.iq ]
  %.pre.i528 = phi ptr [ %.pre.pre.i, %._ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit_crit_edge.i ], [ %i.bzb, %bb.is ], [ %i.bzb, %bb.ir ], [ %i.bzb, %bb.iq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #19
  %.pre111.i = ptrtoint ptr %.pre106.i to i64
  %.pre114.i = sub i64 %.pre111.i, %.pre112.pre-phi.i
  br label %bb.iu

bb.it:                                            ; preds = %bb.ip
  %i.bzl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #19
  br label %bb.jj

bb.iu:                                            ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit.i, %bb.in
  %.pre-phi115.i = phi i64 [ %i.bze, %bb.in ], [ %.pre114.i, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit.i ]
  %i.bzm = phi ptr [ %i.bzb, %bb.in ], [ %.pre.i528, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit.i ] ; 2 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzm, i64 %.pre-phi115.i
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bsh, i64 48 ; 2 uses
  invoke fastcc void @_ZL11orderVectorIiEvN3gmx8ArrayRefIK12gmx_cgsort_tEENS1_IT_EERKS5_PSt6vectorIS5_NS0_30DefaultInitializationAllocatorIS5_SaIS5_EEEE(ptr %i.bvc, ptr %i.bvh, ptr %i.bzm, ptr %i.bzn, i32 -1, ptr noundef %i.bzo)
          to label %bb.iv unwind label %bb.jh

bb.iv:                                            ; preds = %bb.iu
  %i.bzp = load i32, ptr %i.aoq, align 8, !tbaa !643
  %i.bzq = sext i32 %i.bzp to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #19
  store i32 -1, ptr %i.ag, align 4, !tbaa !210
  %i.bzr = load ptr, ptr %i.byz, align 8, !tbaa !372 ; 3 uses
  %i.bzs = load ptr, ptr %i.byy, align 8, !tbaa !371 ; 2 uses
  %i.bzt = ptrtoint ptr %i.bzr to i64
  %i.bzu = ptrtoint ptr %i.bzs to i64
  %i.bzv = sub i64 %i.bzt, %i.bzu
  %i.bzw = ashr exact i64 %i.bzv, 2               ; 3 uses
  %i.bzx = icmp ult i64 %i.bzw, %i.bzq
  br i1 %i.bzx, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.bzy = sub nuw nsw i64 %i.bzq, %i.bzw
  invoke void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS4_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.byy, ptr %i.bzr, i64 noundef %i.bzy, ptr noundef nonnull align 4 dereferenceable(4) %i.ag)
          to label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit63.i unwind label %bb.ji

bb.ix:                                            ; preds = %bb.iv
  %i.bzz = icmp ugt i64 %i.bzw, %i.bzq
  br i1 %i.bzz, label %bb.iy, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit63.i

bb.iy:                                            ; preds = %bb.ix
  %i.caa = getelementptr inbounds nuw [4 x i8], ptr %i.bzs, i64 %i.bzq ; 2 uses
  %.not.i.i61.i = icmp eq ptr %i.bzr, %i.caa
  br i1 %.not.i.i61.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEmRKi.exit63.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  store ptr %i.caa, ptr %i.byz, align 8, !tbaa !372
end_hunk_1
