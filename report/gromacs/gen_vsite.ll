Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gen_vsite?download=true
inline.NumInlined: 2920
inline.NumDeleted: 809
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z9do_vsitesN3gmx8ArrayRefIK17PreprocessResidueEEP22PreprocessingAtomTypesP7t_atomsP8t_symtabPSt6vectorINS_11BasicVectorIfEESaISC_EERNS_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSH_95EEEPSA_I16VsiteTypeAndSignSaISL_EEfbRKNSt10filesystem7__cxx114pathE:bb.a
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dce, i64 4
  %i.dcl = load float, ptr %i.dck, align 4, !tbaa !88
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcg, i64 4
  %i.dcn = load float, ptr %i.dcm, align 4, !tbaa !88 ; 2 uses
  %i.dco = fsub float %i.dcl, %i.dcn              ; 3 uses
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dce, i64 8
  %i.dcq = load float, ptr %i.dcp, align 4, !tbaa !88
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dcg, i64 8
  %i.dcs = load float, ptr %i.dcr, align 4, !tbaa !88 ; 2 uses
  %i.dct = fsub float %i.dcq, %i.dcs              ; 3 uses
  %i.dcu = sext i32 %.0582 to i64
  %i.dcv = getelementptr inbounds nuw [12 x i8], ptr %i.dcd, i64 %i.dcu ; 3 uses
  %i.dcw = load float, ptr %i.dcv, align 4, !tbaa !88
  %i.dcx = fsub float %i.dcw, %i.dci              ; 3 uses
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcv, i64 4
  %i.dcz = load float, ptr %i.dcy, align 4, !tbaa !88
  %i.dda = fsub float %i.dcz, %i.dcn              ; 3 uses
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dcv, i64 8
  %i.ddc = load float, ptr %i.ddb, align 4, !tbaa !88
  %i.ddd = fsub float %i.ddc, %i.dcs              ; 3 uses
  %i.dde = fneg float %i.dda
  %i.ddf = fmul float %i.dct, %i.dde
  %i.ddg = call float @llvm.fmuladd.f32(float %i.dco, float %i.ddd, float %i.ddf) ; 2 uses
  %i.ddh = fneg float %i.ddd
  %i.ddi = fmul float %i.dcj, %i.ddh
  %i.ddj = call float @llvm.fmuladd.f32(float %i.dct, float %i.dcx, float %i.ddi) ; 2 uses
  %i.ddk = fneg float %i.dcx
  %i.ddl = fmul float %i.dco, %i.ddk
  %i.ddm = call float @llvm.fmuladd.f32(float %i.dcj, float %i.dda, float %i.ddl) ; 2 uses
  %i.ddn = fmul float %i.ddj, %i.ddj
  %i.ddo = call float @llvm.fmuladd.f32(float %i.ddg, float %i.ddg, float %i.ddn)
  %i.ddp = call noundef float @llvm.fmuladd.f32(float %i.ddm, float %i.ddm, float %i.ddo)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ddp)
  %i.ddq = fmul float %i.dco, %i.dda
  %i.ddr = call float @llvm.fmuladd.f32(float %i.dcj, float %i.dcx, float %i.ddq)
  %i.dds = call noundef float @llvm.fmuladd.f32(float %i.dct, float %i.ddd, float %i.ddr)
  %i.ddt = call noundef float @atan2f(float noundef %sqrt.i.i, float noundef %i.dds) #26
  %i.ddu = fpext float %i.ddt to double
  %i.ddv = fmul double %i.ddu, f0x404CA5DC1A63C1F8
  %i.ddw = fcmp olt double %i.ddv, f0x405BBFFFF0000000
  br i1 %i.ddw, label %bb.rb, label %bb.rc

bb.rb:                                            ; preds = %bb.ra
  store i64 4294967367, ptr %i.czz, align 4
  br label %.lr.ph98.i

.loopexit1570:                                    ; preds = %.lr.ph.i976, %.noexc987, %bb.ux
  %lpad.loopexit1572 = landingpad { ptr, i32 }
          cleanup
  br label %.body995

.loopexit.split-lp1571.loopexit:                  ; preds = %._crit_edge._crit_edge.i.invoke, %bb.vf, %bb.uo
  %lpad.loopexit1576 = landingpad { ptr, i32 }
          cleanup
  br label %.body995

.loopexit.split-lp1571.loopexit.split-lp:         ; preds = %bb.vg, %bb.vc, %.critedge.i980, %bb.uq, %bb.ul, %bb.uj
  %lpad.loopexit.split-lp1577 = landingpad { ptr, i32 }
          cleanup
  br label %.body995

bb.rc:                                            ; preds = %bb.ra
  store i64 4294967365, ptr %i.czz, align 4
  br label %.lr.ph98.i

bb.rd:                                            ; preds = %bb.qx
  store i64 4294967369, ptr %i.czz, align 4
  %i.ddx = load i32, ptr %i.bb, align 16, !tbaa !15 ; 2 uses
  %i.ddy = load i32, ptr %i.ags, align 4, !tbaa !15 ; 2 uses
  %i.ddz = load i32, ptr %i.agt, align 8, !tbaa !15
  %i.dea = sext i32 %i.ddx to i64
  %i.deb = load ptr, ptr %5, align 8, !tbaa !58   ; 4 uses
  %i.dec = getelementptr inbounds nuw [12 x i8], ptr %i.deb, i64 %i.dea ; 3 uses
  %i.ded = sext i32 %.1.i884 to i64
  %i.dee = getelementptr inbounds nuw [12 x i8], ptr %i.deb, i64 %i.ded ; 3 uses
  %i.def = load float, ptr %i.dec, align 4, !tbaa !88
  %i.deg = load float, ptr %i.dee, align 4, !tbaa !88 ; 3 uses
  %i.deh = fsub float %i.def, %i.deg
  %i.dei = getelementptr inbounds nuw i8, ptr %i.dec, i64 4
  %i.dej = load float, ptr %i.dei, align 4, !tbaa !88
  %i.dek = getelementptr inbounds nuw i8, ptr %i.dee, i64 4
  %i.del = load float, ptr %i.dek, align 4, !tbaa !88 ; 3 uses
  %i.dem = fsub float %i.dej, %i.del              ; 2 uses
  %i.den = getelementptr inbounds nuw i8, ptr %i.dec, i64 8
  %i.deo = load float, ptr %i.den, align 4, !tbaa !88
  %i.dep = getelementptr inbounds nuw i8, ptr %i.dee, i64 8
  %i.deq = load float, ptr %i.dep, align 4, !tbaa !88 ; 3 uses
  %i.der = fsub float %i.deo, %i.deq
  %i.des = sext i32 %i.ddy to i64
  %i.det = getelementptr inbounds nuw [12 x i8], ptr %i.deb, i64 %i.des ; 3 uses
  %i.deu = load float, ptr %i.det, align 4, !tbaa !88
  %i.dev = fsub float %i.deu, %i.deg
  %i.dew = getelementptr inbounds nuw i8, ptr %i.det, i64 4
  %i.dex = load float, ptr %i.dew, align 4, !tbaa !88
  %i.dey = fsub float %i.dex, %i.del              ; 2 uses
  %i.dez = getelementptr inbounds nuw i8, ptr %i.det, i64 8
  %i.dfa = load float, ptr %i.dez, align 4, !tbaa !88
  %i.dfb = fsub float %i.dfa, %i.deq              ; 2 uses
  %i.dfc = sext i32 %i.ddz to i64
  %i.dfd = getelementptr inbounds nuw [12 x i8], ptr %i.deb, i64 %i.dfc ; 3 uses
  %i.dfe = load float, ptr %i.dfd, align 4, !tbaa !88
  %i.dff = fsub float %i.dfe, %i.deg
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dfd, i64 4
  %i.dfh = load float, ptr %i.dfg, align 4, !tbaa !88
  %i.dfi = fsub float %i.dfh, %i.del              ; 2 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfd, i64 8
  %i.dfk = load float, ptr %i.dfj, align 4, !tbaa !88
  %i.dfl = fsub float %i.dfk, %i.deq              ; 2 uses
  %i.dfm = fneg float %i.dfb
  %i.dfn = fmul float %i.dfi, %i.dfm
  %i.dfo = call float @llvm.fmuladd.f32(float %i.dey, float %i.dfl, float %i.dfn)
  %i.dfp = fneg float %i.der                      ; 2 uses
  %i.dfq = fmul float %i.dfi, %i.dfp
  %i.dfr = call float @llvm.fmuladd.f32(float %i.dem, float %i.dfl, float %i.dfq)
  %i.dfs = fneg float %i.dfr
  %i.dft = fmul float %i.dev, %i.dfs
  %i.dfu = call float @llvm.fmuladd.f32(float %i.deh, float %i.dfo, float %i.dft)
  %i.dfv = fmul float %i.dey, %i.dfp
  %i.dfw = call float @llvm.fmuladd.f32(float %i.dem, float %i.dfb, float %i.dfv)
  %i.dfx = call noundef float @llvm.fmuladd.f32(float %i.dff, float %i.dfw, float %i.dfu)
  %i.dfy = fcmp ogt float %i.dfx, 0.000000e+00
  br i1 %i.dfy, label %bb.re, label %.lr.ph98.i

bb.re:                                            ; preds = %bb.rd
  store i32 %i.ddx, ptr %i.ags, align 4, !tbaa !15
  store i32 %i.ddy, ptr %i.bb, align 16, !tbaa !15
  br label %.lr.ph98.i

bb.rf:                                            ; preds = %bb.qw
  %i.dfz = icmp eq i32 %.044.lcssa.i, 2           ; 4 uses
  %i.dga = icmp eq i32 %.039.lcssa.i, 2
  %or.cond = select i1 %i.dfz, i1 %i.dga, i1 false
  br i1 %or.cond, label %bb.rg, label %bb.rk

bb.rg:                                            ; preds = %bb.rf
  %i.dgb = load ptr, ptr %i.we, align 8, !tbaa !70
  %i.dgc = sext i32 %.1.i884 to i64               ; 2 uses
  %i.dgd = getelementptr inbounds [36 x i8], ptr %i.dgb, i64 %i.dgc
  %i.dge = getelementptr inbounds nuw i8, ptr %i.dgd, i64 28
  %i.dgf = load i32, ptr %i.dge, align 4, !tbaa !173
  %i.dgg = icmp eq i32 %i.dgf, 8
  br i1 %i.dgg, label %bb.rh, label %.thread1520

bb.rh:                                            ; preds = %bb.rg
  br i1 %.05695133, label %bb.ri, label %.loopexit1575

bb.ri:                                            ; preds = %bb.rh
  %i.dgh = load ptr, ptr @debug, align 8, !tbaa !14 ; 2 uses
  %.not654 = icmp eq ptr %i.dgh, null
  br i1 %.not654, label %.thread1549, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.dgi = call i64 @fwrite(ptr nonnull @.str.53, i64 51, i64 1, ptr nonnull %i.dgh) ; 0 uses
  br label %.loopexit1575

bb.rk:                                            ; preds = %bb.rf
  %i.dgj = icmp eq i32 %.039.lcssa.i, 4           ; 3 uses
  %or.cond5 = select i1 %i.dfz, i1 %i.dgj, i1 false
  br i1 %or.cond5, label %bb.rl, label %bb.rm

bb.rl:                                            ; preds = %bb.rk
  %i.dgk = load i32, ptr %i.ba, align 16, !tbaa !15
  %i.dgl = sext i32 %i.dgk to i64
  %i.dgm = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.dgl ; 3 uses
  store i32 71, ptr %i.dgm, align 4
  %.sroa.41324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dgm, i64 4
  store i8 1, ptr %.sroa.41324.0..sroa_idx, align 4
  %.sroa.51326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dgm, i64 8
  store i8 0, ptr %.sroa.51326.0..sroa_idx, align 4
  %i.dgn = load i32, ptr %i.agj, align 4, !tbaa !15
  %i.dgo = sext i32 %i.dgn to i64
  %i.dgp = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.dgo ; 3 uses
  store i32 71, ptr %i.dgp, align 4
  %.sroa.41318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dgp, i64 4
  store i8 1, ptr %.sroa.41318.0..sroa_idx, align 4
  %.sroa.51320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dgp, i64 8
  store i8 1, ptr %.sroa.51320.0..sroa_idx, align 4
  br label %.lr.ph98.i

bb.rm:                                            ; preds = %bb.rk
  br i1 %i.dfz, label %..thread1520_crit_edge, label %.thread1530

..thread1520_crit_edge:                           ; preds = %bb.rm
  %.pre5691 = sext i32 %.1.i884 to i64
  br label %.thread1520

.thread1520:                                      ; preds = %..thread1520_crit_edge, %bb.rg
  %.pre-phi5692 = phi i64 [ %.pre5691, %..thread1520_crit_edge ], [ %i.dgc, %bb.rg ]
  %i.dgq = phi i1 [ %i.dgj, %..thread1520_crit_edge ], [ false, %bb.rg ]
  %i.dgr = load ptr, ptr %i.wg, align 8, !tbaa !80
  %i.dgs = getelementptr inbounds [8 x i8], ptr %i.dgr, i64 %.pre-phi5692
  %i.dgt = load ptr, ptr %i.dgs, align 8, !tbaa !81
  %i.dgu = load ptr, ptr %i.dgt, align 8, !tbaa !79
  %i.dgv = load i8, ptr %i.dgu, align 1, !tbaa !25
  %i.dgw = icmp ne i8 %i.dgv, 78                  ; 3 uses
  br i1 %i.dgw, label %bb.rw, label %bb.rn

bb.rn:                                            ; preds = %.thread1520
  %i.dgx = load ptr, ptr %134, align 8, !tbaa !100 ; 3 uses
  %i.dgy = load ptr, ptr %i.agk, align 8, !tbaa !37 ; 2 uses
  %i.dgz = ptrtoint ptr %i.dgy to i64             ; 2 uses
  %i.dha = ptrtoint ptr %i.dgx to i64
  %i.dhb = sub i64 %i.dgz, %i.dha                 ; 2 uses
  %i.dhc = sdiv exact i64 %i.dhb, 104
  %i.dhd = ashr i64 %i.dhc, 2                     ; 2 uses
  %i.dhe = icmp sgt i64 %i.dhd, 0
  br i1 %i.dhe, label %.lr.ph.i.i.i.i901, label %._crit_edge.i.i.i.i898

.lr.ph.i.i.i.i901:                                ; preds = %bb.rn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.thread.i.i.i.i"
  %.042.i.i.i.i = phi i64 [ %i.dhz, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.thread.i.i.i.i" ], [ %i.dhd, %bb.rn ] ; 2 uses
  %.sroa.033.041.i.i.i.i = phi ptr [ %i.dhy, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.thread.i.i.i.i" ], [ %i.dgx, %bb.rn ] ; 10 uses
  %i.dhf = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.033.041.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %150)
          to label %.noexc904 unwind label %.loopexit1591

.noexc904:                                        ; preds = %.lr.ph.i.i.i.i901
  br i1 %i.dhf, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i": ; preds = %.noexc904
  %i.dhg = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i.i, i64 36
  %i.dhh = load i32, ptr %i.dhg, align 4, !tbaa !40
  %i.dhi = icmp eq i32 %i.dhh, 2
  br i1 %i.dhi, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i", %.noexc904
  %i.dhj = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i.i, i64 104 ; 2 uses
  %i.dhk = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(104) %i.dhj, ptr noundef nonnull align 8 dereferenceable(32) %150)
          to label %.noexc905 unwind label %.loopexit1591

.noexc905:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i"
  br i1 %i.dhk, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i.i": ; preds = %.noexc905
  %i.dhl = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i.i, i64 140
  %i.dhm = load i32, ptr %i.dhl, align 4, !tbaa !40
  %i.dhn = icmp eq i32 %i.dhm, 2
  br i1 %i.dhn, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i.i", %.noexc905
  %i.dho = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i.i, i64 208 ; 2 uses
  %i.dhp = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(104) %i.dho, ptr noundef nonnull align 8 dereferenceable(32) %150)
          to label %.noexc906 unwind label %.loopexit1591

.noexc906:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.thread.i.i.i.i"
  br i1 %i.dhp, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i.i": ; preds = %.noexc906
  %i.dhq = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i.i, i64 244
  %i.dhr = load i32, ptr %i.dhq, align 4, !tbaa !40
  %i.dhs = icmp eq i32 %i.dhr, 2
  br i1 %i.dhs, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i.i", %.noexc906
  %i.dht = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i.i, i64 312 ; 2 uses
  %i.dhu = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(104) %i.dht, ptr noundef nonnull align 8 dereferenceable(32) %150)
          to label %.noexc907 unwind label %.loopexit1591

.noexc907:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.thread.i.i.i.i"
  br i1 %i.dhu, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i.i": ; preds = %.noexc907
  %i.dhv = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i.i, i64 348
  %i.dhw = load i32, ptr %i.dhv, align 4, !tbaa !40
  %i.dhx = icmp eq i32 %i.dhw, 2
  br i1 %i.dhx, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i.i", %.noexc907
  %i.dhy = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i.i, i64 416 ; 3 uses
  %i.dhz = add nsw i64 %.042.i.i.i.i, -1
  %i.dia = icmp sgt i64 %.042.i.i.i.i, 1
  br i1 %i.dia, label %.lr.ph.i.i.i.i901, label %._crit_edge.loopexit.i.i.i.i902, !llvm.loop !133

._crit_edge.loopexit.i.i.i.i902:                  ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.thread.i.i.i.i"
  %.pre.i.i.i.i903 = ptrtoint ptr %i.dhy to i64
  %.pre43.i.i.i.i = sub i64 %i.dgz, %.pre.i.i.i.i903
  br label %._crit_edge.i.i.i.i898

._crit_edge.i.i.i.i898:                           ; preds = %._crit_edge.loopexit.i.i.i.i902, %bb.rn
  %.pre-phi44.i.i.i.i = phi i64 [ %.pre43.i.i.i.i, %._crit_edge.loopexit.i.i.i.i902 ], [ %i.dhb, %bb.rn ]
  %.sroa.033.0.lcssa.i.i.i.i = phi ptr [ %i.dhy, %._crit_edge.loopexit.i.i.i.i902 ], [ %i.dgx, %bb.rn ] ; 6 uses
  %i.dib = sdiv exact i64 %.pre-phi44.i.i.i.i, 104
  switch i64 %i.dib, label %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i64 3, label %bb.ro
    i64 2, label %bb.rp
    i64 1, label %bb.rq
  ]

bb.ro:                                            ; preds = %._crit_edge.i.i.i.i898
  %i.dic = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.033.0.lcssa.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %150)
          to label %.noexc908 unwind label %.loopexit.split-lp1592

.noexc908:                                        ; preds = %bb.ro
  br i1 %i.dic, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i.i": ; preds = %.noexc908
  %i.did = getelementptr inbounds nuw i8, ptr %.sroa.033.0.lcssa.i.i.i.i, i64 36
  %i.die = load i32, ptr %i.did, align 4, !tbaa !40
  %i.dif = icmp eq i32 %i.die, 2
  br i1 %i.dif, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i.i", %.noexc908
  %i.dig = getelementptr inbounds nuw i8, ptr %.sroa.033.0.lcssa.i.i.i.i, i64 104
  br label %bb.rp

bb.rp:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.thread.i.i.i.i", %._crit_edge.i.i.i.i898
  %.sroa.033.1.i.i.i.i = phi ptr [ %i.dig, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.thread.i.i.i.i" ], [ %.sroa.033.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i898 ] ; 4 uses
  %i.dih = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.033.1.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %150)
          to label %.noexc909 unwind label %.loopexit.split-lp1592

.noexc909:                                        ; preds = %bb.rp
  br i1 %i.dih, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i": ; preds = %.noexc909
  %i.dii = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i.i.i.i, i64 36
  %i.dij = load i32, ptr %i.dii, align 4, !tbaa !40
  %i.dik = icmp eq i32 %i.dij, 2
  br i1 %i.dik, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i", %.noexc909
  %i.dil = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i.i.i.i, i64 104
  br label %bb.rq

bb.rq:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.thread.i.i.i.i", %._crit_edge.i.i.i.i898
  %.sroa.033.2.i.i.i.i = phi ptr [ %i.dil, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.thread.i.i.i.i" ], [ %.sroa.033.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i898 ] ; 3 uses
  %i.dim = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.033.2.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %150)
          to label %.noexc910 unwind label %.loopexit.split-lp1592

.noexc910:                                        ; preds = %bb.rq
  br i1 %i.dim, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i.i", label %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i.i": ; preds = %.noexc910
  %i.din = getelementptr inbounds nuw i8, ptr %.sroa.033.2.i.i.i.i, i64 36
  %i.dio = load i32, ptr %i.din, align 4, !tbaa !40
  %i.dip = icmp eq i32 %i.dio, 2
  br i1 %i.dip, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i", label %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i.i"
  %.sroa.010.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.033.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i" ], [ %.sroa.033.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i.i" ], [ %.sroa.033.0.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i.i" ], [ %i.dhj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i.i" ], [ %.sroa.033.041.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i" ], [ %i.dht, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i.i" ], [ %i.dho, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i.i" ] ; 2 uses
  %.not.i900 = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i, %i.dgy
  br i1 %.not.i900, label %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i"
  %i.diq = getelementptr inbounds nuw i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i, i64 32
  %i.dir = load i8, ptr %i.diq, align 8, !tbaa !101, !range !82, !noundef !83
  %i.dis = icmp ne i8 %i.dir, 0
  br label %bb.rw

_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %.noexc910, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i.i", %._crit_edge.i.i.i.i898, %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18nitrogen_is_planarNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SG_SG_T0_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %151, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %bb.rr unwind label %bb.rt

bb.rr:                                            ; preds = %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.dit = load ptr, ptr %150, align 8, !tbaa !31
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %151, i32 noundef 2081, ptr noundef nonnull @.str.54, ptr noundef %i.dit) #27
          to label %bb.rs unwind label %bb.ru

bb.rs:                                            ; preds = %bb.rr
  unreachable

.loopexit1591:                                    ; preds = %.lr.ph.i.i.i.i901, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.thread.i.i.i.i"
  %lpad.loopexit1593 = landingpad { ptr, i32 }
          cleanup
  br label %.body995

.loopexit.split-lp1592:                           ; preds = %bb.ro, %bb.rp, %bb.rq
  %lpad.loopexit.split-lp1594 = landingpad { ptr, i32 }
          cleanup
  br label %.body995

bb.rt:                                            ; preds = %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.diu = landingpad { ptr, i32 }
          cleanup
  br label %bb.rv

bb.ru:                                            ; preds = %bb.rr
  %i.div = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %151) #26
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rt
  %.pn651 = phi { ptr, i32 } [ %i.div, %bb.ru ], [ %i.diu, %bb.rt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #26
  br label %.body995

bb.rw:                                            ; preds = %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.thread1520
  %.0565 = phi i1 [ %i.dis, %_ZL18nitrogen_is_planarN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %.thread1520 ] ; 2 uses
  %i.diw = icmp eq i32 %.039.lcssa.i, 3
  %or.cond7 = select i1 %i.dfz, i1 %i.diw, i1 false
  %or.cond9 = or i1 %i.dgw, %.0565
  %or.cond711 = and i1 %or.cond7, %or.cond9
  br i1 %or.cond711, label %bb.rx, label %bb.ry

bb.rx:                                            ; preds = %bb.rw
  %i.dix = load i32, ptr %i.ba, align 16, !tbaa !15
  %i.diy = sext i32 %i.dix to i64
  %i.diz = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.diy ; 3 uses
  store i32 70, ptr %i.diz, align 4
  %.sroa.41310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.diz, i64 4
  store i8 1, ptr %.sroa.41310.0..sroa_idx, align 4
  %.sroa.51312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.diz, i64 8
  store i8 0, ptr %.sroa.51312.0..sroa_idx, align 4
  %i.dja = load i32, ptr %i.agj, align 4, !tbaa !15
  %i.djb = sext i32 %i.dja to i64
  %i.djc = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.djb ; 3 uses
  store i32 70, ptr %i.djc, align 4
  %.sroa.41305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.djc, i64 4
  store i8 1, ptr %.sroa.41305.0..sroa_idx, align 4
  %.sroa.51307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.djc, i64 8
  store i8 1, ptr %.sroa.51307.0..sroa_idx, align 4
  br label %.lr.ph98.i

bb.ry:                                            ; preds = %bb.rw
  %i.djd = icmp ne i32 %.044.lcssa.i, 2
  %i.dje = icmp ne i32 %.039.lcssa.i, 3
  %or.cond11.not641 = select i1 %i.djd, i1 true, i1 %i.dje
  %or.cond13.not638 = or i1 %or.cond11.not641, %i.dgw
  %or.cond15 = or i1 %or.cond13.not638, %.0565
  br i1 %or.cond15, label %.thread1530, label %bb.rz

.thread1530:                                      ; preds = %bb.rm, %bb.ry
  %i.djf = phi i1 [ %i.dgq, %bb.ry ], [ %i.dgj, %bb.rm ]
  %i.djg = icmp eq i32 %.044.lcssa.i, 3
  %or.cond17 = select i1 %i.djg, i1 %i.djf, i1 false
  br i1 %or.cond17, label %bb.rz, label %bb.uc

bb.rz:                                            ; preds = %.thread1530, %bb.ry
  %i.djh = invoke noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #28
          to label %bb.sa unwind label %_ZNSt12_Vector_baseI16VsiteTypeAndSignSaIS0_EED2Ev.exit.i ; 8 uses

_ZNSt12_Vector_baseI16VsiteTypeAndSignSaIS0_EED2Ev.exit.i: ; preds = %bb.rz
  %i.dji = landingpad { ptr, i32 }
          cleanup
  br label %.body995

bb.sa:                                            ; preds = %bb.rz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.djh, ptr noundef nonnull align 4 dereferenceable(36) @constinit, i64 36, i1 false)
  %i.djj = load ptr, ptr @debug, align 8, !tbaa !14
  %.not = icmp eq ptr %i.djj, null
  br i1 %.not, label %.lr.ph5096.preheader, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.djk = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.djl = add nsw i32 %.4, 1
  %i.djm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.djk, ptr noundef nonnull @.str.55, i32 noundef %i.djl) #31 ; 0 uses
  br label %.lr.ph5096.preheader

.lr.ph5096.preheader:                             ; preds = %bb.sa, %bb.sb
  %i.djn = sext i32 %.1.i884 to i64               ; 11 uses
  %i.djo = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.djn ; 3 uses
  store i64 4294967364, ptr %i.djo, align 4
  %wide.trip.count = zext nneg i32 %.044.lcssa.i to i64 ; 5 uses
  %i.djp = add nsw i64 %wide.trip.count, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.djq = icmp ult i64 %i.djp, 3
  br i1 %i.djq, label %.lr.ph5096.epil.preheader, label %.lr.ph5096.preheader.new

.lr.ph5096.preheader.new:                         ; preds = %.lr.ph5096.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph5096

.lr.ph5096:                                       ; preds = %.lr.ph5096, %.lr.ph5096.preheader.new
  %indvars.iv5617 = phi i64 [ 0, %.lr.ph5096.preheader.new ], [ %indvars.iv.next5618.3, %.lr.ph5096 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5096.preheader.new ], [ %niter.next.3, %.lr.ph5096 ]
  %i.djr = getelementptr inbounds nuw [12 x i8], ptr %i.djh, i64 %indvars.iv5617
  %i.djs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv5617
  %i.djt = load i32, ptr %i.djs, align 16, !tbaa !15
  %i.dju = sext i32 %i.djt to i64
  %i.djv = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.dju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.djv, ptr noundef nonnull align 4 dereferenceable(9) %i.djr, i64 9, i1 false)
  %indvars.iv.next5618 = or disjoint i64 %indvars.iv5617, 1 ; 2 uses
  %i.djw = getelementptr inbounds nuw [12 x i8], ptr %i.djh, i64 %indvars.iv.next5618
  %i.djx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next5618
  %i.djy = load i32, ptr %i.djx, align 4, !tbaa !15
  %i.djz = sext i32 %i.djy to i64
  %i.dka = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.djz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.dka, ptr noundef nonnull align 4 dereferenceable(9) %i.djw, i64 9, i1 false)
  %indvars.iv.next5618.1 = or disjoint i64 %indvars.iv5617, 2 ; 2 uses
  %i.dkb = getelementptr inbounds nuw [12 x i8], ptr %i.djh, i64 %indvars.iv.next5618.1
  %i.dkc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next5618.1
  %i.dkd = load i32, ptr %i.dkc, align 8, !tbaa !15
  %i.dke = sext i32 %i.dkd to i64
  %i.dkf = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.dke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.dkf, ptr noundef nonnull align 4 dereferenceable(9) %i.dkb, i64 9, i1 false)
  %indvars.iv.next5618.2 = or disjoint i64 %indvars.iv5617, 3 ; 2 uses
  %i.dkg = getelementptr inbounds nuw [12 x i8], ptr %i.djh, i64 %indvars.iv.next5618.2
  %i.dkh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next5618.2
  %i.dki = load i32, ptr %i.dkh, align 4, !tbaa !15
  %i.dkj = sext i32 %i.dki to i64
  %i.dkk = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.dkj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.dkk, ptr noundef nonnull align 4 dereferenceable(9) %i.dkg, i64 9, i1 false)
  %indvars.iv.next5618.3 = add nuw nsw i64 %indvars.iv5617, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge5097.unr-lcssa, label %.lr.ph5096, !llvm.loop !134

._crit_edge5097.unr-lcssa:                        ; preds = %.lr.ph5096
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge5097, label %.lr.ph5096.epil.preheader

.lr.ph5096.epil.preheader:                        ; preds = %._crit_edge5097.unr-lcssa, %.lr.ph5096.preheader
  %indvars.iv5617.epil.init = phi i64 [ 0, %.lr.ph5096.preheader ], [ %indvars.iv.next5618.3, %._crit_edge5097.unr-lcssa ]
  %lcmp.mod7670 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod7670)
  br label %.lr.ph5096.epil

.lr.ph5096.epil:                                  ; preds = %.lr.ph5096.epil, %.lr.ph5096.epil.preheader
  %indvars.iv5617.epil = phi i64 [ %indvars.iv5617.epil.init, %.lr.ph5096.epil.preheader ], [ %indvars.iv.next5618.epil, %.lr.ph5096.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph5096.epil.preheader ], [ %epil.iter.next, %.lr.ph5096.epil ]
  %i.dkl = getelementptr inbounds nuw [12 x i8], ptr %i.djh, i64 %indvars.iv5617.epil
  %i.dkm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv5617.epil
  %i.dkn = load i32, ptr %i.dkm, align 4, !tbaa !15
  %i.dko = sext i32 %i.dkn to i64
  %i.dkp = getelementptr inbounds [12 x i8], ptr %i.wa, i64 %i.dko
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.dkp, ptr noundef nonnull align 4 dereferenceable(9) %i.dkl, i64 9, i1 false)
  %indvars.iv.next5618.epil = add nuw nsw i64 %indvars.iv5617.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge5097, label %.lr.ph5096.epil, !llvm.loop !135

._crit_edge5097:                                  ; preds = %.lr.ph5096.epil, %._crit_edge5097.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #26
  %i.dkq = load i32, ptr %i.bb, align 16, !tbaa !15
  %i.dkr = invoke fastcc noundef i32 @_ZL9get_atypeiP7t_atomsN3gmx8ArrayRefIK17PreprocessResidueEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_St4hashISC_ENS1_20EqualCaseInsensitiveESaISt4pairIKSC_SC_EEE(i32 noundef %i.dkq, ptr noundef nonnull %3, ptr %0, ptr %i.agi, ptr noundef nonnull align 8 dereferenceable(56) %138)
          to label %bb.sc unwind label %bb.sn

bb.sc:                                            ; preds = %._crit_edge5097
  invoke void @_ZNK22PreprocessingAtomTypes20atomNameFromAtomTypeB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.83") align 8 %152, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.dkr)
          to label %bb.sd unwind label %bb.sn

bb.sd:                                            ; preds = %bb.sc
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #26
  %i.dks = load ptr, ptr %134, align 8, !tbaa !100 ; 3 uses
  %i.dkt = load ptr, ptr %i.agk, align 8, !tbaa !37 ; 2 uses
  %i.dku = ptrtoint ptr %i.dkt to i64             ; 2 uses
  %160 = ptrtoint ptr %i.dks to i64
  %161 = sub i64 %i.dku, %160                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.dkv = sdiv exact i64 %161, 104
  %i.dkw = ashr i64 %i.dkv, 2                     ; 2 uses
  %i.dkx = icmp sgt i64 %i.dkw, 0
  br i1 %i.dkx, label %.lr.ph.i.i.i.i918, label %._crit_edge.i.i.i.i913

.lr.ph.i.i.i.i918:                                ; preds = %bb.sd, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.thread.i.i.i.i"
  %.049.i.i.i.i = phi i64 [ %i.dlo, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.thread.i.i.i.i" ], [ %i.dkw, %bb.sd ] ; 2 uses
  %.sroa.040.048.i.i.i.i = phi ptr [ %i.dln, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.thread.i.i.i.i" ], [ %i.dks, %bb.sd ] ; 10 uses
  %i.dky = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.040.048.i.i.i.i)
          to label %.noexc921 unwind label %.loopexit1586

.noexc921:                                        ; preds = %.lr.ph.i.i.i.i918
  br i1 %i.dky, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i": ; preds = %.noexc921
  %i.dkz = getelementptr inbounds nuw i8, ptr %.sroa.040.048.i.i.i.i, i64 40
  %i.dla = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(32) %i.dkz)
          to label %.noexc922 unwind label %.loopexit1586

.noexc922:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i"
  br i1 %i.dla, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i": ; preds = %.noexc922, %.noexc921
  %i.dlb = getelementptr inbounds nuw i8, ptr %.sroa.040.048.i.i.i.i, i64 104 ; 2 uses
  %i.dlc = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(104) %i.dlb)
          to label %.noexc923 unwind label %.loopexit1586

.noexc923:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i"
  br i1 %i.dlc, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.i.i.i.i": ; preds = %.noexc923
  %i.dld = getelementptr inbounds nuw i8, ptr %.sroa.040.048.i.i.i.i, i64 144
  %i.dle = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(32) %i.dld)
          to label %.noexc924 unwind label %.loopexit1586

.noexc924:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.i.i.i.i"
  br i1 %i.dle, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.thread.i.i.i.i": ; preds = %.noexc924, %.noexc923
  %i.dlf = getelementptr inbounds nuw i8, ptr %.sroa.040.048.i.i.i.i, i64 208 ; 2 uses
  %i.dlg = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(104) %i.dlf)
          to label %.noexc925 unwind label %.loopexit1586

.noexc925:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.thread.i.i.i.i"
  br i1 %i.dlg, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.i.i.i.i": ; preds = %.noexc925
  %i.dlh = getelementptr inbounds nuw i8, ptr %.sroa.040.048.i.i.i.i, i64 248
  %i.dli = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(32) %i.dlh)
          to label %.noexc926 unwind label %.loopexit1586

.noexc926:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.i.i.i.i"
  br i1 %i.dli, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.thread.i.i.i.i": ; preds = %.noexc926, %.noexc925
  %i.dlj = getelementptr inbounds nuw i8, ptr %.sroa.040.048.i.i.i.i, i64 312 ; 2 uses
  %i.dlk = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(104) %i.dlj)
          to label %.noexc927 unwind label %.loopexit1586

.noexc927:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.thread.i.i.i.i"
  br i1 %i.dlk, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.i.i.i.i": ; preds = %.noexc927
  %i.dll = getelementptr inbounds nuw i8, ptr %.sroa.040.048.i.i.i.i, i64 352
  %i.dlm = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(32) %i.dll)
          to label %.noexc928 unwind label %.loopexit1586

.noexc928:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.i.i.i.i"
  br i1 %i.dlm, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.thread.i.i.i.i": ; preds = %.noexc928, %.noexc927
  %i.dln = getelementptr inbounds nuw i8, ptr %.sroa.040.048.i.i.i.i, i64 416 ; 3 uses
  %i.dlo = add nsw i64 %.049.i.i.i.i, -1
  %i.dlp = icmp sgt i64 %.049.i.i.i.i, 1
  br i1 %i.dlp, label %.lr.ph.i.i.i.i918, label %._crit_edge.loopexit.i.i.i.i919, !llvm.loop !138

._crit_edge.loopexit.i.i.i.i919:                  ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.thread.i.i.i.i"
  %.pre.i.i.i.i920 = ptrtoint ptr %i.dln to i64
  %.pre50.i.i.i.i = sub i64 %i.dku, %.pre.i.i.i.i920
  br label %._crit_edge.i.i.i.i913

._crit_edge.i.i.i.i913:                           ; preds = %._crit_edge.loopexit.i.i.i.i919, %bb.sd
  %.pre-phi51.i.i.i.i = phi i64 [ %.pre50.i.i.i.i, %._crit_edge.loopexit.i.i.i.i919 ], [ %161, %bb.sd ]
  %.sroa.040.0.lcssa.i.i.i.i = phi ptr [ %i.dln, %._crit_edge.loopexit.i.i.i.i919 ], [ %i.dks, %bb.sd ] ; 6 uses
  %i.dlq = sdiv exact i64 %.pre-phi51.i.i.i.i, 104
  switch i64 %i.dlq, label %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread [
    i64 3, label %bb.se
    i64 2, label %bb.sf
    i64 1, label %bb.sg
  ]

bb.se:                                            ; preds = %._crit_edge.i.i.i.i913
  %i.dlr = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.040.0.lcssa.i.i.i.i)
          to label %.noexc929 unwind label %.loopexit.split-lp1587

.noexc929:                                        ; preds = %bb.se
  br i1 %i.dlr, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.i.i.i.i": ; preds = %.noexc929
  %i.dls = getelementptr inbounds nuw i8, ptr %.sroa.040.0.lcssa.i.i.i.i, i64 40
  %i.dlt = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(32) %i.dls)
          to label %.noexc930 unwind label %.loopexit.split-lp1587

.noexc930:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.i.i.i.i"
  br i1 %i.dlt, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.thread.i.i.i.i": ; preds = %.noexc930, %.noexc929
  %i.dlu = getelementptr inbounds nuw i8, ptr %.sroa.040.0.lcssa.i.i.i.i, i64 104
  br label %bb.sf

bb.sf:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.thread.i.i.i.i", %._crit_edge.i.i.i.i913
  %.sroa.040.1.i.i.i.i = phi ptr [ %i.dlu, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.thread.i.i.i.i" ], [ %.sroa.040.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i913 ] ; 4 uses
  %i.dlv = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.040.1.i.i.i.i)
          to label %.noexc931 unwind label %.loopexit.split-lp1587

.noexc931:                                        ; preds = %bb.sf
  br i1 %i.dlv, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.i.i.i.i": ; preds = %.noexc931
  %i.dlw = getelementptr inbounds nuw i8, ptr %.sroa.040.1.i.i.i.i, i64 40
  %i.dlx = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(32) %i.dlw)
          to label %.noexc932 unwind label %.loopexit.split-lp1587

.noexc932:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.i.i.i.i"
  br i1 %i.dlx, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.thread.i.i.i.i": ; preds = %.noexc932, %.noexc931
  %i.dly = getelementptr inbounds nuw i8, ptr %.sroa.040.1.i.i.i.i, i64 104
  br label %bb.sg

bb.sg:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.thread.i.i.i.i", %._crit_edge.i.i.i.i913
  %.sroa.040.2.i.i.i.i = phi ptr [ %i.dly, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.thread.i.i.i.i" ], [ %.sroa.040.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i913 ] ; 3 uses
  %i.dlz = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.040.2.i.i.i.i)
          to label %.noexc933 unwind label %.loopexit.split-lp1587

.noexc933:                                        ; preds = %bb.sg
  br i1 %i.dlz, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit36.i.i.i.i", label %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread

"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit36.i.i.i.i": ; preds = %.noexc933
  %i.dma = getelementptr inbounds nuw i8, ptr %.sroa.040.2.i.i.i.i, i64 40
  %i.dmb = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(32) %i.dma)
          to label %.noexc934 unwind label %.loopexit.split-lp1587

.noexc934:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit36.i.i.i.i"
  br i1 %i.dmb, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i", label %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread

"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i": ; preds = %.noexc928, %.noexc926, %.noexc924, %.noexc922, %.noexc934, %.noexc932, %.noexc930
  %.sroa.010.0.in.sroa.speculated.i.i.i.i914 = phi ptr [ %.sroa.040.1.i.i.i.i, %.noexc932 ], [ %.sroa.040.2.i.i.i.i, %.noexc934 ], [ %.sroa.040.0.lcssa.i.i.i.i, %.noexc930 ], [ %i.dlb, %.noexc924 ], [ %.sroa.040.048.i.i.i.i, %.noexc922 ], [ %i.dlj, %.noexc928 ], [ %i.dlf, %.noexc926 ] ; 3 uses
  %.not.i915 = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i914, %i.dkt
  br i1 %.not.i915, label %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread, label %bb.sh

bb.sh:                                            ; preds = %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i"
  %i.dmc = getelementptr inbounds nuw i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i914, i64 72
  store ptr %i.agl, ptr %153, align 8, !tbaa !32, !alias.scope !175
  %i.dmd = load ptr, ptr %i.dmc, align 8, !tbaa !31, !noalias !175 ; 2 uses
  %i.dme = getelementptr inbounds nuw i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i914, i64 80
  %i.dmf = load i64, ptr %i.dme, align 8, !tbaa !34, !noalias !175 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26, !noalias !175
  store i64 %i.dmf, ptr %i.j, align 8, !tbaa !33, !noalias !175
  %i.dmg = icmp ugt i64 %i.dmf, 15
  br i1 %i.dmg, label %.noexc.i.i917, label %._crit_edge.i.i.i916

.noexc.i.i917:                                    ; preds = %bb.sh
  %i.dmh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc935 unwind label %.loopexit.split-lp1587 ; 2 uses

.noexc935:                                        ; preds = %.noexc.i.i917
  store ptr %i.dmh, ptr %153, align 8, !tbaa !31, !alias.scope !175
  %i.dmi = load i64, ptr %i.j, align 8, !tbaa !33, !noalias !175
  store i64 %i.dmi, ptr %i.agl, align 8, !tbaa !25, !alias.scope !175
  br label %._crit_edge.i.i.i916

._crit_edge.i.i.i916:                             ; preds = %.noexc935, %bb.sh
  %i.dmj = phi ptr [ %i.dmh, %.noexc935 ], [ %i.agl, %bb.sh ] ; 2 uses
  switch i64 %i.dmf, label %bb.sj [
    i64 1, label %bb.si
    i64 0, label %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit
  ]

bb.si:                                            ; preds = %._crit_edge.i.i.i916
  %i.dmk = load i8, ptr %i.dmd, align 1, !tbaa !25
  store i8 %i.dmk, ptr %i.dmj, align 1, !tbaa !25
  br label %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit

bb.sj:                                            ; preds = %._crit_edge.i.i.i916
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dmj, ptr align 1 %i.dmd, i64 %i.dmf, i1 false)
  br label %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit

_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread: ; preds = %._crit_edge.i.i.i.i913, %.noexc933, %.noexc934, %"_ZSt7find_ifIN3gmx12ArrayRefIterIK24VirtualSiteConfigurationEEZL18get_dummymass_nameNS0_8ArrayRefIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0ET_SG_SG_T0_.exit.i"
  store ptr %i.agl, ptr %153, align 8, !tbaa !32, !alias.scope !175
  store i64 0, ptr %i.agm, align 8, !tbaa !34, !alias.scope !175
  store i8 0, ptr %i.agl, align 8, !tbaa !25, !alias.scope !175
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #26
  store ptr %i.agn, ptr %154, align 8, !tbaa !32
  store i64 0, ptr %i.ago, align 8, !tbaa !34
  store i8 0, ptr %i.agn, align 8, !tbaa !25
  br label %.loopexit6345

_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit: ; preds = %._crit_edge.i.i.i916, %bb.si, %bb.sj
  %i.dml = load i64, ptr %i.j, align 8, !tbaa !33, !noalias !175 ; 2 uses
  store i64 %i.dml, ptr %i.agm, align 8, !tbaa !34, !alias.scope !175
  %i.dmm = load ptr, ptr %153, align 8, !tbaa !31, !alias.scope !175
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmm, i64 %i.dml
  store i8 0, ptr %i.dmn, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !175
  %.pre5676 = load i64, ptr %i.agm, align 8, !tbaa !34
  %i.dmo = icmp eq i64 %.pre5676, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #26
  store ptr %i.agn, ptr %154, align 8, !tbaa !32
  store i64 0, ptr %i.ago, align 8, !tbaa !34
  store i8 0, ptr %i.agn, align 8, !tbaa !25
  br i1 %i.dmo, label %.loopexit6345, label %bb.sx

.loopexit6345:                                    ; preds = %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit, %_ZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread
  %i.dmp = load ptr, ptr %133, align 8, !tbaa !166
  %i.dmq = load ptr, ptr %i.bk, align 8, !tbaa !166
  %i.dmr = icmp eq ptr %i.dmp, %i.dmq
  br i1 %i.dmr, label %bb.sr, label %bb.sk

bb.sk:                                            ; preds = %.loopexit6345
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %155, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %bb.sl unwind label %bb.so

bb.sl:                                            ; preds = %bb.sk
  %i.dms = load ptr, ptr %150, align 8, !tbaa !31
  %i.dmt = load ptr, ptr %152, align 8, !tbaa !31
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %155, i32 noundef 2123, ptr noundef nonnull @.str.56, ptr noundef %i.dms, ptr noundef %i.dmt) #27
          to label %bb.sm unwind label %bb.sp

bb.sm:                                            ; preds = %bb.sl
  unreachable

bb.sn:                                            ; preds = %bb.sc, %._crit_edge5097
  %i.dmu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EED2Ev.exit971

.loopexit1586:                                    ; preds = %.lr.ph.i.i.i.i918, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit31.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit32.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.i.i.i.i"
  %lpad.loopexit1588 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965

.loopexit.split-lp1587:                           ; preds = %bb.se, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit34.i.i.i.i", %bb.sf, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit35.i.i.i.i", %bb.sg, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL18get_dummymass_nameN3gmx8ArrayRefIK24VirtualSiteConfigurationEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_.exit36.i.i.i.i", %.noexc.i.i917
  %lpad.loopexit.split-lp1589 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965

bb.so:                                            ; preds = %bb.sk
  %i.dmv = landingpad { ptr, i32 }
          cleanup
  br label %bb.sq

bb.sp:                                            ; preds = %bb.sl
  %i.dmw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %155) #26
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.pn643 = phi { ptr, i32 } [ %i.dmw, %bb.sp ], [ %i.dmv, %bb.so ]
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #26
  br label %bb.ua

bb.sr:                                            ; preds = %.loopexit6345
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA72_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %156, ptr noundef nonnull align 1 dereferenceable(72) @.str.41, i8 noundef zeroext 2)
          to label %bb.ss unwind label %bb.su

bb.ss:                                            ; preds = %bb.sr
  %i.dmx = load ptr, ptr %150, align 8, !tbaa !31
  %i.dmy = load ptr, ptr %152, align 8, !tbaa !31
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %156, i32 noundef 2131, ptr noundef nonnull @.str.57, ptr noundef %i.dmx, ptr noundef %i.dmy) #27
          to label %bb.st unwind label %bb.sv

bb.st:                                            ; preds = %bb.ss
  unreachable

bb.su:                                            ; preds = %bb.sr
end_hunk_0
