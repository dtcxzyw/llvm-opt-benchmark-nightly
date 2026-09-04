Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/sim_util?download=true
inline.NumInlined: 1232
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmx8do_forceEP8_IO_FILEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_3AwhEP10gmx_enfrotPNS_10ImdSessionEP6pull_tlP6t_nrnbP13gmx_wallcyclePK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISV_EEPK9history_tPNS_16ForceBuffersViewEPA3_fPK9t_mdatomsP14gmx_enerdata_tNSX_ISQ_EEP10t_forcerecRKNS_21MdrunScheduleWorkloadEPNS_19VirtualSitesHandlerEPfdP9gmx_edsamP24CpuPpLongRangeNonbondedsRK22DDBalanceRegionHandler:bb.a
  %i.bcc = load i8, ptr %i.ami, align 1, !tbaa !312, !range !141, !noundef !142
  %i.bcd = trunc nuw i8 %i.bcc to i1
  %.val829 = load i8, ptr %i.bbo, align 1
  call fastcc void @_ZN3gmxL17setupForceOutputsEP18ForceHelperBuffersNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEERKNS_22DomainLifetimeWorkloadERKNS_12StepWorkloadEbP13gmx_wallcycle(ptr dead_on_unwind noalias writable align 8 %55, ptr noundef %i.bbw, ptr noundef align 8 dead_on_return %56, i8 %.val829, ptr noundef nonnull align 1 dereferenceable(19) %i.p, i1 noundef zeroext %i.bcd)
  %i.bce = load <2 x ptr>, ptr %55, align 16, !tbaa !19
  store <2 x ptr> %i.bce, ptr %54, align 16, !tbaa !19
  %i.bcf = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.bcg = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.bch = load ptr, ptr %i.bcg, align 16, !tbaa !19
  store ptr %i.bch, ptr %i.bcf, align 16, !tbaa !477
  %i.bci = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.bcj = getelementptr inbounds nuw i8, ptr %55, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bci, ptr noundef nonnull align 8 dereferenceable(25) %i.bcj, i64 25, i1 false)
  %i.bck = getelementptr inbounds nuw i8, ptr %54, i64 56
  %i.bcl = getelementptr inbounds nuw i8, ptr %55, i64 56
  %i.bcm = load i8, ptr %i.bcl, align 8, !tbaa !221, !range !141, !noundef !142
  store i8 %i.bcm, ptr %i.bck, align 8, !tbaa !221
  %i.bcn = getelementptr inbounds nuw i8, ptr %55, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.gep1123, ptr noundef nonnull align 16 dereferenceable(56) %i.bcn, i64 56, i1 false)
  %i.bco = getelementptr inbounds nuw i8, ptr %54, i64 120
  store i8 1, ptr %i.bco, align 8, !tbaa !479
  %.pre1304 = load i8, ptr %i.bbp, align 1, !tbaa !475, !range !141
  br label %bb.iw

bb.iv:                                            ; preds = %bb.it, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit897
  %i.bcp = getelementptr inbounds nuw i8, ptr %54, i64 120
  store i8 0, ptr %i.bcp, align 8, !tbaa !479
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.bcq = phi i1 [ false, %bb.iv ], [ true, %bb.iu ]
  %i.bcr = phi i8 [ %i.bbq, %bb.iv ], [ %.pre1304, %bb.iu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #16
  %i.bcs = trunc nuw i8 %i.bcr to i1
  br i1 %i.bcs, label %bb.ix, label %_ZNRSt8optionalIN3gmx12ForceOutputsEE5valueEv.exit

bb.ix:                                            ; preds = %bb.iw
  %i.bct = getelementptr inbounds nuw i8, ptr %22, i64 41
  %i.bcu = load i8, ptr %i.bct, align 1, !tbaa !381, !range !141, !noundef !142
  %i.bcv = trunc nuw i8 %i.bcu to i1
  br i1 %i.bcv, label %bb.iy, label %_ZNRSt8optionalIN3gmx12ForceOutputsEE5valueEv.exit

bb.iy:                                            ; preds = %bb.ix
  br i1 %i.bcq, label %_ZNRSt8optionalIN3gmx12ForceOutputsEE5valueEv.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN3gmx12ForceOutputsEE5valueEv.exit: ; preds = %bb.iy, %bb.iw, %bb.ix
  %.sroa.phi = phi ptr [ inttoptr (i64 64 to ptr), %bb.ix ], [ %.sroa.gep1124, %bb.iw ], [ %.sroa.gep1123, %bb.iy ] ; 5 uses
  %.sroa.phi1143 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ix ], [ %.sroa.gep1145, %bb.iw ], [ %.sroa.gep1144, %bb.iy ] ; 5 uses
  %.sroa.phi1146 = phi ptr [ inttoptr (i64 32 to ptr), %bb.ix ], [ %.sroa.gep1147, %bb.iw ], [ %.sroa.gep, %bb.iy ] ; 2 uses
  %.sroa.phi1148 = phi ptr [ inttoptr (i64 40 to ptr), %bb.ix ], [ %.sroa.gep1150, %bb.iw ], [ %.sroa.gep1149, %bb.iy ] ; 2 uses
  %i.bcw = phi ptr [ null, %bb.ix ], [ %52, %bb.iw ], [ %54, %bb.iy ] ; 6 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %22, i64 1
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !480, !range !141, !noundef !142
  %i.bcz = trunc nuw i8 %i.bcy to i1              ; 10 uses
  %i.bda = select i1 %i.bcz, ptr %i.bcw, ptr %52  ; 6 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %2, i64 592 ; 2 uses
  %i.bdc = load i8, ptr %i.bdb, align 8, !tbaa !481, !range !141, !noundef !142
  %i.bdd = trunc nuw i8 %i.bdc to i1
  br i1 %i.bdd, label %bb.ja, label %bb.jc

bb.ja:                                            ; preds = %_ZNRSt8optionalIN3gmx12ForceOutputsEE5valueEv.exit
  %i.bde = call noundef zeroext i1 @_Z20pull_have_constraintRK6pull_t(ptr noundef nonnull align 1 %7)
  br i1 %i.bde, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  call void @_Z17clear_pull_forcesP6pull_t(ptr noundef nonnull %7)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %_ZNRSt8optionalIN3gmx12ForceOutputsEE5valueEv.exit
  br i1 %i.bad, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit901, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %10)
  %i.bdf = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !182 ; 2 uses
  %i.bdg = extractvalue { i32, i32 } %i.bdf, 0
  %i.bdh = extractvalue { i32, i32 } %i.bdf, 1
  %i.bdi = zext i32 %i.bdg to i64
  %i.bdj = zext i32 %i.bdh to i64
  %i.bdk = shl nuw i64 %i.bdj, 32
  %i.bdl = or disjoint i64 %i.bdk, %i.bdi         ; 3 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %10, i64 264 ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %10, i64 280
  %i.bdo = load i64, ptr %i.bdn, align 8, !tbaa !185 ; 2 uses
  %.not.i898 = icmp ult i64 %i.bdl, %i.bdo
  br i1 %.not.i898, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bdp = sub nuw i64 %i.bdl, %i.bdo
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd
  %i.bdq = getelementptr inbounds nuw i8, ptr %10, i64 2624
  store i8 1, ptr %i.bdq, align 8, !tbaa !210
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %.0.i899 = phi i64 [ %i.bdp, %bb.je ], [ 0, %bb.jf ]
  %i.bdr = getelementptr inbounds nuw i8, ptr %10, i64 272 ; 2 uses
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !208
  %i.bdt = add i64 %i.bds, %.0.i899
  store i64 %i.bdt, ptr %i.bdr, align 8, !tbaa !208
  %i.bdu = load i32, ptr %i.bdm, align 8, !tbaa !206
  %i.bdv = add nsw i32 %i.bdu, 1
  store i32 %i.bdv, ptr %i.bdm, align 8, !tbaa !206
  %i.bdw = getelementptr inbounds nuw i8, ptr %10, i64 2584
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !187
  %i.bdy = getelementptr inbounds nuw i8, ptr %10, i64 2592
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !187
  %i.bea = icmp eq ptr %i.bdx, %i.bdz
  br i1 %i.bea, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit901, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.beb = getelementptr inbounds nuw i8, ptr %10, i64 2608 ; 2 uses
  %i.bec = load i32, ptr %i.beb, align 8, !tbaa !204
  %i.bed = add nsw i32 %i.bec, -1                 ; 2 uses
  store i32 %i.bed, ptr %i.beb, align 8, !tbaa !204
  %i.bee = icmp eq i32 %i.bed, 2
  br i1 %i.bee, label %bb.ji, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit901

bb.ji:                                            ; preds = %bb.jh
  %i.bef = getelementptr inbounds nuw i8, ptr %10, i64 2612
  store i32 11, ptr %i.bef, align 4, !tbaa !205
  %i.beg = getelementptr inbounds nuw i8, ptr %10, i64 2616
  store i64 %i.bdl, ptr %i.beg, align 8, !tbaa !207
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit901

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit901: ; preds = %bb.jg, %bb.jh, %bb.ji, %bb.jc
  %i.beh = load i8, ptr %i.xa, align 1, !tbaa !374, !range !141, !noundef !142
  %i.bei = trunc nuw i8 %i.beh to i1
  br i1 %i.bei, label %bb.jj, label %.thread1239

bb.jj:                                            ; preds = %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit901
  %i.bej = load i8, ptr %i.bh, align 1, !tbaa !303, !range !141, !noundef !142
  %i.bek = trunc nuw i8 %i.bej to i1
  br i1 %i.bek, label %.thread1239, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.bel = load i8, ptr %i.bbo, align 1, !tbaa !215, !range !141, !noundef !142
  %i.bem = trunc nuw i8 %i.bel to i1
  br i1 %i.bem, label %bb.jn, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.ben = getelementptr inbounds nuw i8, ptr %22, i64 42
  %i.beo = load i8, ptr %i.ben, align 1, !tbaa !145, !range !141, !noundef !142
  %i.bep = trunc nuw i8 %i.beo to i1
  br i1 %i.bep, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.beq = getelementptr inbounds nuw i8, ptr %22, i64 2
  %i.ber = load i8, ptr %i.beq, align 1, !tbaa !380, !range !141, !noundef !142
  %i.bes = trunc nuw i8 %i.ber to i1
  %i.bet = xor i1 %i.bes, true
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl, %bb.jk
  %.not = phi i1 [ false, %bb.jl ], [ false, %bb.jk ], [ %i.bet, %bb.jm ]
  %i.beu = getelementptr inbounds nuw i8, ptr %22, i64 18
  %i.bev = load i8, ptr %i.beu, align 1, !tbaa !379, !range !141, !noundef !142
  %i.bew = trunc nuw i8 %i.bev to i1
  br i1 %i.bew, label %.thread1239, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bex = load i8, ptr %i.z, align 1, !tbaa !304, !range !141, !noundef !142
  %i.bey = trunc nuw i8 %i.bex to i1
  %i.bez = xor i1 %i.x, true
  %i.bfa = select i1 %i.bey, i1 %i.bez, i1 false
  %or.cond5 = select i1 %.not, i1 true, i1 %i.bfa
  br i1 %or.cond5, label %.thread1239, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  call void @_ZN3gmx22StatePropagatorDataGpu26waitCoordinatesReadyOnHostENS_12AtomLocalityE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 0)
  br label %.thread1239

.thread1239:                                      ; preds = %bb.jn, %bb.jo, %bb.jp, %bb.jj, %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit901
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #16
  %i.bfb = getelementptr inbounds nuw i8, ptr %57, i64 48 ; 3 uses
  store <2 x float> zeroinitializer, ptr %i.bfb, align 16, !tbaa !144
  %i.bfc = getelementptr inbounds nuw i8, ptr %57, i64 56 ; 2 uses
  store float 0.000000e+00, ptr %i.bfc, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %57, i8 0, i64 24, i1 false)
  %i.bfd = getelementptr inbounds nuw i8, ptr %22, i64 2
  %i.bfe = load i8, ptr %i.bfd, align 1, !tbaa !380, !range !141, !noundef !142
  %i.bff = trunc nuw i8 %i.bfe to i1
  br i1 %i.bff, label %bb.jq, label %bb.jw

bb.jq:                                            ; preds = %.thread1239
  %i.bfg = icmp eq ptr %.sroa.01182.0, %.sroa.71184.0
  br i1 %i.bfg, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.bfh = load ptr, ptr %13, align 8, !tbaa !18
  %i.bfi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !20
  br label %bb.js

bb.js:                                            ; preds = %bb.jq, %bb.jr
  %.sroa.01087.0 = phi ptr [ %i.bfj, %bb.jr ], [ %.sroa.71184.0, %bb.jq ]
  %.sroa.51088.0.in = phi ptr [ %i.bfh, %bb.jr ], [ %.sroa.01182.0, %bb.jq ] ; 3 uses
  %.sroa.51088.0 = ptrtoint ptr %.sroa.51088.0.in to i64
  %i.bfk = getelementptr inbounds nuw i8, ptr %18, i64 640
  %i.bfl = load i32, ptr %i.bfk, align 8, !tbaa !172
  %i.bfm = ptrtoint ptr %.sroa.01087.0 to i64
  %i.bfn = sub i64 %i.bfm, %.sroa.51088.0
  %i.bfo = getelementptr inbounds nuw i8, ptr %.sroa.51088.0.in, i64 %i.bfn
  %i.bfp = getelementptr inbounds nuw i8, ptr %18, i64 176
  %i.bfq = load ptr, ptr %i.bfp, align 8, !tbaa !209 ; 3 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %18, i64 184
  %i.bfs = load ptr, ptr %i.bfr, align 8, !tbaa !209
  %i.bft = ptrtoint ptr %i.bfs to i64
  %i.bfu = ptrtoint ptr %i.bfq to i64
  %i.bfv = sub i64 %i.bft, %i.bfu
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfq, i64 %i.bfv
  %i.bfx = getelementptr inbounds nuw i8, ptr %18, i64 192
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !209 ; 3 uses
  store ptr %i.bfy, ptr %58, align 8, !tbaa !349
  %i.bfz = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bga = getelementptr inbounds nuw i8, ptr %18, i64 200
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !209
  %i.bgc = ptrtoint ptr %i.bgb to i64
  %i.bgd = ptrtoint ptr %i.bfy to i64
  %i.bge = sub i64 %i.bgc, %i.bgd
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bfy, i64 %i.bge
  store ptr %i.bgf, ptr %i.bfz, align 8, !tbaa !349
  %i.bgg = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bgh = load i32, ptr %i.bgg, align 8, !tbaa !482
  %i.bgi = icmp ne i32 %i.bgh, 0
  %i.bgj = getelementptr inbounds nuw i8, ptr %57, i64 24
  call void @_Z7calc_muiiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEENS0_IKfEES6_bPdS7_(i32 noundef 0, i32 noundef %i.bfl, ptr %.sroa.51088.0.in, ptr %i.bfo, ptr %i.bfq, ptr %i.bfw, ptr noundef nonnull byval(%"class.gmx::ArrayRef.0") align 8 %58, i1 noundef zeroext %i.bgi, ptr noundef nonnull %57, ptr noundef nonnull %i.bgj)
  %i.bgk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !483, !nonnull !142, !align !314 ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %21, i64 168
  %i.bgn = load i32, ptr %i.bgm, align 8, !tbaa !484
  %.not1256 = icmp eq i32 %i.bgn, 0
  %i.bgo = load ptr, ptr %20, align 8, !tbaa !349
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgl, i64 8
  %i.bgq = load i32, ptr %i.bgp, align 8, !tbaa !485
  %i.bgr = icmp sgt i32 %i.bgq, 1
  br i1 %i.bgr, label %bb.jt, label %_ZNK22DDBalanceRegionHandler15reopenRegionCpuEv.exit.i

bb.jt:                                            ; preds = %bb.js
  call void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %i.bgl, i64 noundef 6, ptr noundef nonnull %57)
  %i.bgs = load i8, ptr %28, align 8, !tbaa !371, !range !141, !noundef !142
  %i.bgt = trunc nuw i8 %i.bgs to i1
  br i1 %i.bgt, label %bb.ju, label %_ZNK22DDBalanceRegionHandler15reopenRegionCpuEv.exit.i

bb.ju:                                            ; preds = %bb.jt
  %i.bgu = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !486
  call void @_Z24ddReopenBalanceRegionCpuPK12gmx_domdec_t(ptr noundef %i.bgv)
  br label %_ZNK22DDBalanceRegionHandler15reopenRegionCpuEv.exit.i

_ZNK22DDBalanceRegionHandler15reopenRegionCpuEv.exit.i: ; preds = %bb.ju, %bb.jt, %bb.js
  %i.bgw = load <2 x double>, ptr %57, align 16, !tbaa !179
  %i.bgx = fptrunc <2 x double> %i.bgw to <2 x float> ; 4 uses
  store <2 x float> %i.bgx, ptr %i.bfb, align 16, !tbaa !144
  %i.bgy = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.bgz = load <4 x double>, ptr %i.bgy, align 16, !tbaa !179
  %i.bha = fptrunc <4 x double> %i.bgz to <4 x float> ; 6 uses
  store <4 x float> %i.bha, ptr %i.bfc, align 8, !tbaa !144
  br i1 %.not1256, label %bb.jv, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK22DDBalanceRegionHandler15reopenRegionCpuEv.exit.i
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgo, i64 8 ; 3 uses
  %i.bhc = load float, ptr %i.bhb, align 4, !tbaa !144 ; 2 uses
  %i.bhd = fpext float %i.bhc to double
  %i.bhe = fsub double 1.000000e+00, %i.bhd
  %i.bhf = extractelement <2 x float> %i.bgx, i64 0
  %i.bhg = fpext float %i.bhf to double
  %i.bhh = extractelement <4 x float> %i.bha, i64 1
  %i.bhi = fmul float %i.bhc, %i.bhh
  %i.bhj = fpext float %i.bhi to double
  %i.bhk = call double @llvm.fmuladd.f64(double %i.bhe, double %i.bhg, double %i.bhj)
  %i.bhl = fptrunc double %i.bhk to float
  store float %i.bhl, ptr %24, align 4, !tbaa !144
  %i.bhm = load float, ptr %i.bhb, align 4, !tbaa !144 ; 2 uses
  %i.bhn = fpext float %i.bhm to double
  %i.bho = fsub double 1.000000e+00, %i.bhn
  %i.bhp = extractelement <2 x float> %i.bgx, i64 1
  %i.bhq = fpext float %i.bhp to double
  %i.bhr = extractelement <4 x float> %i.bha, i64 2
  %i.bhs = fmul float %i.bhm, %i.bhr
  %i.bht = fpext float %i.bhs to double
  %i.bhu = call double @llvm.fmuladd.f64(double %i.bho, double %i.bhq, double %i.bht)
  %i.bhv = fptrunc double %i.bhu to float
  %i.bhw = getelementptr inbounds nuw i8, ptr %24, i64 4
  store float %i.bhv, ptr %i.bhw, align 4, !tbaa !144
  %i.bhx = load float, ptr %i.bhb, align 4, !tbaa !144 ; 2 uses
  %i.bhy = fpext float %i.bhx to double
  %i.bhz = fsub double 1.000000e+00, %i.bhy
  %i.bia = extractelement <4 x float> %i.bha, i64 0
  %i.bib = fpext float %i.bia to double
  %i.bic = extractelement <4 x float> %i.bha, i64 3
  %i.bid = fmul float %i.bhx, %i.bic
  %i.bie = fpext float %i.bid to double
  %i.bif = call double @llvm.fmuladd.f64(double %i.bhz, double %i.bib, double %i.bie)
  %i.big = fptrunc double %i.bif to float
  br label %_ZN3gmxL20reduceAndUpdateMuTotEPNS_10DipoleDataERKNS_7MpiCommEbNS_8ArrayRefIKfEEPfRK22DDBalanceRegionHandler.exit

bb.jv:                                            ; preds = %_ZNK22DDBalanceRegionHandler15reopenRegionCpuEv.exit.i
  store <2 x float> %i.bgx, ptr %24, align 4, !tbaa !144
  %i.bih = extractelement <4 x float> %i.bha, i64 0
  br label %_ZN3gmxL20reduceAndUpdateMuTotEPNS_10DipoleDataERKNS_7MpiCommEbNS_8ArrayRefIKfEEPfRK22DDBalanceRegionHandler.exit

_ZN3gmxL20reduceAndUpdateMuTotEPNS_10DipoleDataERKNS_7MpiCommEbNS_8ArrayRefIKfEEPfRK22DDBalanceRegionHandler.exit: ; preds = %.preheader.i, %bb.jv
  %.sink.i = phi float [ %i.big, %.preheader.i ], [ %i.bih, %bb.jv ]
  %i.bii = getelementptr inbounds nuw i8, ptr %24, i64 8
  store float %.sink.i, ptr %i.bii, align 4, !tbaa !144
  br label %bb.jw

bb.jw:                                            ; preds = %_ZN3gmxL20reduceAndUpdateMuTotEPNS_10DipoleDataERKNS_7MpiCommEbNS_8ArrayRefIKfEEPfRK22DDBalanceRegionHandler.exit, %.thread1239
  call void @_Z14reset_enerdataP14gmx_enerdata_t(ptr noundef %19)
  %i.bij = getelementptr i8, ptr %1, i64 16       ; 20 uses
  %.val825 = load ptr, ptr %i.bij, align 8, !tbaa !308
  %.not1257 = icmp eq ptr %.val825, null
  br i1 %.not1257, label %bb.kc, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.bik = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.bil = load i8, ptr %i.bik, align 1, !tbaa !487, !range !141, !noundef !142
  %i.bim = trunc nuw i8 %i.bil to i1
  br i1 %i.bim, label %bb.jy, label %bb.kc

bb.jy:                                            ; preds = %bb.jx
  br i1 %i.bad, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit904, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %10)
  %i.bin = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !182 ; 2 uses
  %i.bio = extractvalue { i32, i32 } %i.bin, 0
  %i.bip = extractvalue { i32, i32 } %i.bin, 1
  %i.biq = zext i32 %i.bio to i64
  %i.bir = zext i32 %i.bip to i64
  %i.bis = shl nuw i64 %i.bir, 32
  %i.bit = or disjoint i64 %i.bis, %i.biq         ; 2 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i64 %i.bit, ptr %i.biu, align 8, !tbaa !185
  %i.biv = getelementptr inbounds nuw i8, ptr %10, i64 2584
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !187 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %10, i64 2592
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !187
  %i.biz = icmp eq ptr %i.biw, %i.biy
  br i1 %i.biz, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit904, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bja = getelementptr inbounds nuw i8, ptr %10, i64 2608 ; 2 uses
  %i.bjb = load i32, ptr %i.bja, align 8, !tbaa !204
  %i.bjc = add nsw i32 %i.bjb, 1                  ; 2 uses
  store i32 %i.bjc, ptr %i.bja, align 8, !tbaa !204
  %i.bjd = icmp eq i32 %i.bjc, 3
  br i1 %i.bjd, label %bb.kb, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit904

bb.kb:                                            ; preds = %bb.ka
  %i.bje = getelementptr inbounds nuw i8, ptr %10, i64 2612
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !205
  %i.bjg = mul nsw i32 %i.bjf, 60
  %i.bjh = sext i32 %i.bjg to i64
  %i.bji = getelementptr [24 x i8], ptr %i.biw, i64 %i.bjh ; 2 uses
  %i.bjj = getelementptr i8, ptr %i.bji, i64 48   ; 2 uses
  %i.bjk = load i32, ptr %i.bjj, align 8, !tbaa !206
  %i.bjl = add nsw i32 %i.bjk, 1
  store i32 %i.bjl, ptr %i.bjj, align 8, !tbaa !206
  %i.bjm = getelementptr inbounds nuw i8, ptr %10, i64 2616
  %i.bjn = load i64, ptr %i.bjm, align 8, !tbaa !207
  %i.bjo = sub i64 %i.bit, %i.bjn
  %i.bjp = getelementptr i8, ptr %i.bji, i64 56   ; 2 uses
  %i.bjq = load i64, ptr %i.bjp, align 8, !tbaa !208
  %i.bjr = add i64 %i.bjo, %i.bjq
  store i64 %i.bjr, ptr %i.bjp, align 8, !tbaa !208
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit904

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit904: ; preds = %bb.jy, %bb.jz, %bb.ka, %bb.kb
  %i.bjs = load ptr, ptr %i.bij, align 8, !tbaa !308
  call void @_Z19dd_force_flop_startP12gmx_domdec_tP6t_nrnb(ptr noundef %i.bjs, ptr noundef %9)
  br label %bb.kc

bb.kc:                                            ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit904, %bb.jx, %bb.jw
  %i.bjt = getelementptr inbounds nuw i8, ptr %2, i64 624 ; 3 uses
  %i.bju = load i8, ptr %i.bjt, align 8, !tbaa !488, !range !141, !noundef !142
  %i.bjv = trunc nuw i8 %i.bju to i1
  br i1 %i.bjv, label %bb.kd, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit911

bb.kd:                                            ; preds = %bb.kc
  br i1 %i.bad, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit911.critedge, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %10)
  %i.bjw = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !182 ; 2 uses
  %i.bjx = extractvalue { i32, i32 } %i.bjw, 0
  %i.bjy = extractvalue { i32, i32 } %i.bjw, 1
  %i.bjz = zext i32 %i.bjx to i64
  %i.bka = zext i32 %i.bjy to i64
  %i.bkb = shl nuw i64 %i.bka, 32
  %i.bkc = or disjoint i64 %i.bkb, %i.bjz         ; 2 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %10, i64 1312 ; 2 uses
  store i64 %i.bkc, ptr %i.bkd, align 8, !tbaa !185
  %i.bke = getelementptr inbounds nuw i8, ptr %10, i64 2584 ; 2 uses
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !187 ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %10, i64 2592 ; 2 uses
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !187
  %i.bki = icmp eq ptr %i.bkf, %i.bkh
  br i1 %i.bki, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit905, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bkj = getelementptr inbounds nuw i8, ptr %10, i64 2608 ; 2 uses
  %i.bkk = load i32, ptr %i.bkj, align 8, !tbaa !204
  %i.bkl = add nsw i32 %i.bkk, 1                  ; 2 uses
  store i32 %i.bkl, ptr %i.bkj, align 8, !tbaa !204
  %i.bkm = icmp eq i32 %i.bkl, 3
  br i1 %i.bkm, label %bb.kg, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit905

bb.kg:                                            ; preds = %bb.kf
  %i.bkn = getelementptr inbounds nuw i8, ptr %10, i64 2612
  %i.bko = load i32, ptr %i.bkn, align 4, !tbaa !205
  %i.bkp = mul nsw i32 %i.bko, 60
  %i.bkq = sext i32 %i.bkp to i64
  %i.bkr = getelementptr [24 x i8], ptr %i.bkf, i64 %i.bkq ; 2 uses
  %i.bks = getelementptr i8, ptr %i.bkr, i64 1296 ; 2 uses
  %i.bkt = load i32, ptr %i.bks, align 8, !tbaa !206
  %i.bku = add nsw i32 %i.bkt, 1
  store i32 %i.bku, ptr %i.bks, align 8, !tbaa !206
  %i.bkv = getelementptr inbounds nuw i8, ptr %10, i64 2616
  %i.bkw = load i64, ptr %i.bkv, align 8, !tbaa !207
  %i.bkx = sub i64 %i.bkc, %i.bkw
  %i.bky = getelementptr i8, ptr %i.bkr, i64 1304 ; 2 uses
  %i.bkz = load i64, ptr %i.bky, align 8, !tbaa !208
  %i.bla = add i64 %i.bkx, %i.bkz
  store i64 %i.bla, ptr %i.bky, align 8, !tbaa !208
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit905
end_hunk_0
begin_hunk_1_@_ZN3gmxL27setupLocalGpuForceReductionERKNS_21MdrunScheduleWorkloadEPNS_18nonbonded_verlet_tEPNS_22StatePropagatorDataGpuEPNS_17GpuForceReductionEPNS_12PmePpCommGpuEPK9gmx_pme_tPK12gmx_domdec_t:bb.a
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !562
  %i.bd = tail call noundef ptr @_ZN3gmx15GpuHaloExchange27getForcesReadyOnDeviceEventEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi ptr [ %i.az, %bb.n ], [ %i.bd, %bb.o ]
  tail call void @_ZN3gmx17GpuForceReduction13addDependencyEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.sink)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  ret void
}

declare void @_ZN3gmx18nonbonded_verlet_t21convertCoordinatesGpuENS_12AtomLocalityEPvP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(65), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3gmx22StatePropagatorDataGpu14getCoordinatesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN3gmx18nonbonded_verlet_t18convertCoordinatesENS_12AtomLocalityENS_8ArrayRefIKNS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(65), i32 noundef, ptr, ptr) local_unnamed_addr #4

declare void @_ZN3gmx15ListedForcesGpu21setPbcAndlaunchKernelE7PbcTypePA3_KfbRKNS_12StepWorkloadE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(19)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL12do_nb_verletEP10t_forcerecPK19interaction_const_tP14gmx_enerdata_tRKNS_12StepWorkloadENS_19InteractionLocalityEilP6t_nrnbP13gmx_wallcycle(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 1 dereferenceable(19) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i64 noundef %6, ptr noundef %7) unnamed_addr #8 {
bb.a:
  %8 = alloca %"class.gmx::ArrayRef.120", align 8 ; 3 uses
  %9 = alloca %"class.gmx::ArrayRef.399", align 8 ; 3 uses
  %10 = alloca %"class.gmx::ArrayRef.399", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.b = load i8, ptr %i.a, align 1, !tbaa !216, !range !141, !noundef !142
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !262
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK3gmx18nonbonded_verlet_t23isDynamicPruningStepCpuEl(ptr noundef nonnull align 8 dereferenceable(65) %i.e, i64 noundef %6)
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !212  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !213
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  tail call void @_ZNK3gmx18nonbonded_verlet_t22dispatchPruneKernelCpuENS_19InteractionLocalityENS_8ArrayRefIKNS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(65) %i.e, i32 noundef %4, ptr %i.k, ptr %i.q)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !212  ; 3 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !181
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  store ptr %i.z, ptr %i.t, align 8, !tbaa !181
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 392 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !563, !range !141, !noundef !142
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i64 2, i64 1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !263 ; 3 uses
  store ptr %i.ag, ptr %9, align 8, !tbaa !209
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !264
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !263 ; 3 uses
  store ptr %i.ao, ptr %10, align 8, !tbaa !209
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !264
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !209
  tail call void @_ZNK3gmx18nonbonded_verlet_t23dispatchNonbondedKernelENS_19InteractionLocalityERK19interaction_const_tRKNS_12StepWorkloadEiNS_8ArrayRefIKNS_11BasicVectorIfEEEENS8_IfEESD_P6t_nrnb(ptr noundef nonnull align 8 dereferenceable(65) %i.e, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 1 dereferenceable(19) %3, i32 noundef %5, ptr noundef nonnull byval(%"class.gmx::ArrayRef.120") align 8 %8, ptr noundef nonnull byval(%"class.gmx::ArrayRef.399") align 8 %9, ptr noundef nonnull byval(%"class.gmx::ArrayRef.399") align 8 %10, ptr noundef %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare void @_ZN3gmx18nonbonded_verlet_t28dispatchFreeEnergyGpuKernelsENS_19InteractionLocalityERKNS_18SimulationWorkloadERKNS_12StepWorkloadE(ptr noundef nonnull align 8 dereferenceable(65), i32 noundef, ptr noundef nonnull align 1 dereferenceable(29), ptr noundef nonnull align 1 dereferenceable(19)) local_unnamed_addr #4

declare noundef ptr @_Z29communicateGpuHaloCoordinatesRK9t_commrecPA3_KfP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx12HaloExchange5moveXEPA3_KfNS_8ArrayRefINS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr, ptr) local_unnamed_addr #4

declare void @_Z9dd_move_xP12gmx_domdec_tPA3_KfN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP13gmx_wallcycle(ptr noundef, ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx15ListedForcesGpu20launchEnergyTransferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, ptr } @_ZN3gmx22WholeMoleculeTransform24wholeMoleculeCoordinatesENS_8ArrayRefIKNS_11BasicVectorIfEEEEPA3_Kf(ptr noundef nonnull align 8 dereferenceable(216), ptr, ptr, ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx22StatePropagatorDataGpu30waitCoordinatesUpdatedOnDeviceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL17setupForceOutputsEP18ForceHelperBuffersNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEERKNS_22DomainLifetimeWorkloadERKNS_12StepWorkloadEbP13gmx_wallcycle(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 25), (32, 49), (56, 57), (64, 120)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %2, i8 %.4.val, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(19) %3, i1 noundef zeroext %4) unnamed_addr #8 {
_ZN3gmx20ForceWithShiftForcesC2ERKNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEEbRKNS_8ArrayRefIS3_EE.exit:
  %5 = alloca %"class.gmx::ArrayRef", align 8     ; 5 uses
  %6 = alloca %"class.gmx::ArrayRef", align 8     ; 5 uses
  %.sroa.8 = alloca [39 x i8], align 1            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !145, !range !141, !noundef !142 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %2, align 8, !tbaa !18     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !19
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !20   ; 3 uses
  %spec.select = select i1 %i.c, ptr %i.e, ptr null ; 4 uses
  %spec.select20 = select i1 %i.c, ptr %i.k, ptr null ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !265, !range !141, !noundef !142
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  br i1 %i.r, label %bb.a, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29

bb.a:                                             ; preds = %_ZN3gmx20ForceWithShiftForcesC2ERKNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEEbRKNS_8ArrayRefIS3_EE.exit
  %i.t = trunc nuw i8 %.4.val to i1
  br i1 %i.t, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !267, !range !141, !noundef !142
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %4, label %bb.d, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.y = load i8, ptr %i.x, align 1, !tbaa !266, !range !141, !noundef !142
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.l, ptr %6, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.o, ptr %i.aa, align 8
  %i.ab = ptrtoint ptr %i.o to i64
  %i.ac = ptrtoint ptr %i.l to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %reass.sub.fr = freeze i64 %i.ad                ; 3 uses
  %i.ae = sdiv exact i64 %reass.sub.fr, 12
  %i.af = trunc i64 %i.ae to i32
  %i.ag = icmp slt i32 %i.af, 2000
  br i1 %i.ag, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i: ; preds = %bb.e
  %i.ah = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %i.ah, 1
  br i1 %.not, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i, label %bb.f

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i, %bb.e
  %.not13.i = icmp eq ptr %i.l, %i.o
  br i1 %.not13.i, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i
  %i.ai = add i64 %reass.sub.fr, -12
  %i.aj = urem i64 %i.ai, 12
  %i.ak = sub i64 %reass.sub.fr, %i.aj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.ak, i1 false), !tbaa !144
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit

bb.f:                                             ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.s, i32 %i.ah)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.omp_outlined, ptr nonnull %6)
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit

_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i, %.lr.ph.preheader.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.al = ptrtoint ptr %spec.select to i64
  %i.am = ptrtoint ptr %spec.select20 to i64
  %i.an = sub i64 %i.am, %i.al
  %reass.sub27.fr = freeze i64 %i.an              ; 3 uses
  %i.ao = sdiv exact i64 %reass.sub27.fr, 12
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp slt i32 %i.ap, 2000
  br i1 %i.aq, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i24

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i24: ; preds = %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit
  %i.ar = call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0) ; 0 uses
  br label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i24, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit
  %.not13.i26 = icmp eq ptr %spec.select, %spec.select20
  br i1 %.not13.i26, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29, label %.lr.ph.preheader.i27

.lr.ph.preheader.i27:                             ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25
  %i.as = add i64 %reass.sub27.fr, -12
  %i.at = urem i64 %i.as, 12
  %i.au = sub i64 %reass.sub27.fr, %i.at
  call void @llvm.memset.p0.i64(ptr align 4 %spec.select, i8 0, i64 %i.au, i1 false), !tbaa !144
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29

_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29: ; preds = %.lr.ph.preheader.i27, %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i25, %bb.d, %bb.c, %_ZN3gmx20ForceWithShiftForcesC2ERKNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEEbRKNS_8ArrayRefIS3_EE.exit
  %i.av = load i8, ptr %i.p, align 1, !tbaa !265, !range !141, !noundef !142
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre.pre = load i8, ptr %i.a, align 1, !tbaa !145, !range !141 ; 2 uses
  %i.ax = trunc nuw i8 %.pre.pre to i1
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  br label %bb.h

bb.g:                                             ; preds = %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit29
  %i.ay = load i8, ptr %1, align 8, !tbaa !565, !range !141, !noundef !142
  %i.az = trunc nuw i8 %i.ay to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  %i.ba = phi i8 [ 1, %bb.g ], [ %.pre.pre, %.thread ]
  %i.bb = load ptr, ptr %2, align 8, !tbaa !18
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !20
  %.sroa.8.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %.sroa.8.3..sroa_idx, i8 0, i64 36, i1 false), !tbaa !144
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !212 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !213 ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %reass.sub28.fr = freeze i64 %i.bj              ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %reass.sub28.fr ; 2 uses
  %.sroa.8.3..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %.sroa.8.3..sroa_idx34, i8 0, i64 36, i1 false), !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.be, ptr %5, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = sdiv exact i64 %reass.sub28.fr, 12
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp slt i32 %i.bn, 2000
  br i1 %i.bo, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i34

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i34: ; preds = %bb.i
  %i.bp = call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0) ; 2 uses
  %.not21 = icmp eq i32 %i.bp, 1
  br i1 %.not21, label %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35, label %bb.j

_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i34, %bb.i
  %.not13.i36 = icmp eq ptr %i.be, %i.bg
  br i1 %.not13.i36, label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39, label %.lr.ph.preheader.i37

.lr.ph.preheader.i37:                             ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35
  %i.bq = add i64 %reass.sub28.fr, -12
  %i.br = urem i64 %i.bq, 12
  %i.bs = sub i64 %reass.sub28.fr, %i.br
  call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 0, i64 %i.bs, i1 false), !tbaa !144
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39

bb.j:                                             ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.i34
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.s, i32 %i.bp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.omp_outlined, ptr nonnull %5)
  br label %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39

_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39: ; preds = %_ZL37gmx_omp_nthreads_get_simple_rvec_task17ModuleMultiThreadi.exit.thread.i35, %.lr.ph.preheader.i37, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39
  %i.bt = phi i8 [ 1, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39 ], [ %i.ba, %bb.h ]
  %.sroa.0.019 = phi ptr [ %i.be, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39 ], [ %i.bb, %bb.h ]
  %.sroa.5.017 = phi ptr [ %i.bk, %_ZN3gmxL10clearRVecsENS_8ArrayRefINS_11BasicVectorIfEEEEb.exit39 ], [ %i.bc, %bb.h ]
  %i.bu = load i8, ptr %1, align 8, !tbaa !565, !range !141, !noundef !142
  store ptr %i.l, ptr %0, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.n, ptr %i.bv, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.b, ptr %i.bw, align 8
  %.sroa.1210.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %spec.select, ptr %.sroa.1210.24..sroa_idx, align 8
  %.sroa.15.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %spec.select20, ptr %.sroa.15.24..sroa_idx, align 8
  %.sroa.17.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %.sroa.17.24..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.bu, ptr %i.bx, align 8, !tbaa !221
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0.019, ptr %i.by, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.5.017, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.bt, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.8, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

declare noundef zeroext i1 @_Z20pull_have_constraintRK6pull_t(ptr noundef nonnull align 1) local_unnamed_addr #4

declare void @_Z17clear_pull_forcesP6pull_t(ptr noundef) local_unnamed_addr #4

declare void @_Z7calc_muiiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEENS0_IKfEES6_bPdS7_(i32 noundef, i32 noundef, ptr, ptr, ptr, ptr, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z14reset_enerdataP14gmx_enerdata_t(ptr noundef) local_unnamed_addr #4

declare void @_Z19dd_force_flop_startP12gmx_domdec_tP6t_nrnb(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z11do_rotationRKN3gmx7MpiCommEPK12gmx_domdec_tP10gmx_enfrotPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEflb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr, ptr, float noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN3gmx18nonbonded_verlet_t28dispatchFreeEnergyCpuKernelsERKNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEEPNS_20ForceWithShiftForcesEbiRK19interaction_const_tNS_8ArrayRefIS4_EENSD_IKfEESG_SG_SG_NSD_IKiEESI_SG_P14gmx_enerdata_tRKNS_12StepWorkloadEP6t_nrnb(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(137), ptr noundef byval(%"class.gmx::ArrayRef.120") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.649") align 8, ptr noundef byval(%"class.gmx::ArrayRef.649") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef, ptr noundef nonnull align 1 dereferenceable(19), ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx18nonbonded_verlet_t24atomdata_add_nbat_f_to_fENS_12AtomLocalityENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(65), i32 noundef, ptr, ptr) local_unnamed_addr #4

declare void @_ZN3gmx40nbnxn_atomdata_add_nbat_fshift_to_fshiftERKNS_16nbnxn_atomdata_tENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(656), ptr, ptr) local_unnamed_addr #4

declare noundef float @_Z8do_wallsRK10t_inputrecRK10t_forcerecPA3_KfN3gmx8ArrayRefIKiEESB_NS9_IKtEEiiNS9_IKNS8_11BasicVectorIfEEEEPNS8_15ForceWithVirialEfNS9_IfEEP6t_nrnb(ptr noundef nonnull align 8 dereferenceable(888), ptr noundef nonnull align 8 dereferenceable(584), ptr noundef, ptr, ptr, ptr noundef byval(%"class.gmx::ArrayRef.649") align 8, ptr noundef byval(%"class.gmx::ArrayRef.669") align 8, i32 noundef, i32 noundef, ptr noundef byval(%"class.gmx::ArrayRef.120") align 8, ptr noundef, float noundef, ptr noundef byval(%"class.gmx::ArrayRef.399") align 8, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK12ListedForces19haveCpuListedForcesERK8t_fcdata(ptr noundef nonnull align 8 dereferenceable(2880), ptr noundef nonnull align 1) local_unnamed_addr #4

declare noundef ptr @_Z10set_pbc_ddP5t_pbc7PbcTypePKN3gmx11BasicVectorIiEEbPA3_Kf(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare void @_ZN12ListedForces9calculateEP13gmx_wallcyclePA3_KfN3gmx19ArrayRefWithPaddingIKNS5_11BasicVectorIfEEEENS5_8ArrayRefIS9_EEP8t_fcdataPK9history_tPNS5_12ForceOutputsEPK10t_forcerecPK5t_pbcP14gmx_enerdata_tP6t_nrnbNSB_IS2_EESU_SU_NSB_IKbEENSB_IKtEEiPiRKNS5_12StepWorkloadE(ptr noundef nonnull align 8 dereferenceable(2880), ptr noundef, ptr noundef, ptr noundef align 8 dead_on_return, ptr, ptr, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.702") align 8, ptr noundef byval(%"class.gmx::ArrayRef.669") align 8, i32 noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(19)) local_unnamed_addr #4

declare { ptr, ptr } @_ZN3gmx17makeConstArrayRefERKSt6vectorINS_8BoolTypeESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN24CpuPpLongRangeNonbondeds9calculateEP9gmx_pme_tPK9t_commrecN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEPNS5_15ForceWithVirialEP14gmx_enerdata_tPA3_KfNS6_ISF_EESA_RKNS5_12StepWorkloadERK22DDBalanceRegionHandler(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, ptr noundef, ptr, ptr, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"class.gmx::ArrayRef.0") align 8, ptr noundef byval(%"class.gmx::ArrayRef.120") align 8, ptr noundef nonnull align 1 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare { <2 x float>, <2 x float> } @_ZNK20DispersionCorrection9calculateEPA3_Kff(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, float noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK3gmx3Awh21hasFepLambdaDimensionEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmxL19pmeGpuWaitAndReduceEP9gmx_pme_tRKNS_12StepWorkloadEP13gmx_wallcyclePNS_15ForceWithVirialEP14gmx_enerdata_tf(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %0)
  %i.b = tail call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !182 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = extractvalue { i32, i32 } %i.b, 1
  %i.e = zext i32 %i.c to i64
  %i.f = zext i32 %i.d to i64
  %i.g = shl nuw i64 %i.f, 32
  %i.h = or disjoint i64 %i.g, %i.e               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  store i64 %i.h, ptr %i.j, align 8, !tbaa !185
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !187  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !204
  %i.r = add nsw i32 %i.q, 1                      ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !204
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %i.u = load i32, ptr %i.t, align 4, !tbaa !205
  %i.v = mul nsw i32 %i.u, 60
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [24 x i8], ptr %i.l, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 456      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !206
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !206
end_hunk_1
