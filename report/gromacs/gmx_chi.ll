Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_chi?download=true
inline.NumInlined: 1583
inline.NumDeleted: 676
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z7gmx_chiiPPc:bb.a
  %.pre422.pre427 = load ptr, ptr %i.fi, align 8, !tbaa !50 ; 3 uses
  br i1 %i.azj, label %bb.gm, label %bb.hs

bb.gm:                                            ; preds = %.loopexit338
  %i.azk = load i8, ptr @_ZZ7gmx_chiiPPcE5bViol, align 1, !tbaa !174, !range !175, !noundef !176
  %i.azl = trunc nuw i8 %i.azk to i1              ; 3 uses
  %i.azm = load i8, ptr @_ZZ7gmx_chiiPPcE9bRamOmega, align 1, !tbaa !174, !range !175, !noundef !176
  %i.azn = trunc nuw i8 %i.azm to i1
  %i.azo = load ptr, ptr %i.v, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %.not223.i = icmp eq ptr %.pre420.pre425, %.pre422.pre427
  br i1 %.not223.i, label %_ZL7do_ramaiN3gmx8ArrayRefIK7t_dlistEEPPfbbPK16gmx_output_env_t.exit, label %.lr.ph229.i

.lr.ph229.i:                                      ; preds = %bb.gm
  %i.azp = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.azr = icmp sgt i32 %.pre418.pre423, 0        ; 2 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.azu = sitofp i32 %.pre418.pre423 to float    ; 5 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.azx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.azz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bab = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  %wide.trip.count.i144 = zext nneg i32 %.pre418.pre423 to i64 ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %9, i64 19
  %i.bae = getelementptr inbounds nuw i8, ptr %10, i64 19
  %i.baf = getelementptr inbounds nuw i8, ptr %11, i64 19
  br label %bb.gn

bb.gn:                                            ; preds = %.noexc178, %.lr.ph229.i
  %.0114227.i = phi ptr [ null, %.lr.ph229.i ], [ %.2116.i, %.noexc178 ] ; 3 uses
  %.0117226.i = phi i32 [ 0, %.lr.ph229.i ], [ %.2119.i, %.noexc178 ] ; 4 uses
  %.0192225.i = phi ptr [ null, %.lr.ph229.i ], [ %.2.i145, %.noexc178 ] ; 4 uses
  %.sroa.0169.0224.i = phi ptr [ %.pre420.pre425, %.lr.ph229.i ], [ %i.bjk, %.noexc178 ] ; 16 uses
  %i.bag = invoke noundef zeroext i1 @_Z12has_dihedraliRK7t_dlist(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.0169.0224.i)
          to label %.noexc162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc162:                                        ; preds = %bb.gn
  br i1 %i.bag, label %bb.go, label %.noexc173

bb.go:                                            ; preds = %.noexc162
  %i.bah = invoke noundef zeroext i1 @_Z12has_dihedraliRK7t_dlist(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.0169.0224.i)
          to label %.noexc163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc163:                                        ; preds = %bb.go
  br i1 %i.bah, label %bb.gp, label %.noexc173

bb.gp:                                            ; preds = %.noexc163
  %i.bai = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.256, ptr noundef nonnull %.sroa.0169.0224.i) #24 ; 0 uses
  %i.baj = invoke fastcc noundef ptr @_ZL9rama_filePKcS0_S0_S0_PK16gmx_output_env_t(ptr noundef %i.e, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.259, ptr noundef %i.azo)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc164:                                        ; preds = %bb.gp
  br i1 %i.azn, label %bb.gq, label %.thread.i

bb.gq:                                            ; preds = %.noexc164
  %i.bak = invoke noundef zeroext i1 @_Z12has_dihedraliRK7t_dlist(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.0169.0224.i)
          to label %.noexc165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc165:                                        ; preds = %bb.gq
  br i1 %i.bak, label %bb.gr, label %.thread.i

bb.gr:                                            ; preds = %.noexc165
  %i.bal = getelementptr inbounds nuw i8, ptr %.sroa.0169.0224.i, i64 56
  %i.bam = load i32, ptr %i.bal, align 8, !tbaa !13
  %i.ban = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.132, i32 noundef 929, i64 noundef 120, i64 noundef 8)
          to label %.noexc166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc166:                                        ; preds = %bb.gr, %.noexc167
  %indvars.iv.i159 = phi i64 [ %indvars.iv.next.i160, %.noexc167 ], [ 0, %bb.gr ] ; 4 uses
  %i.bao = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.132, i32 noundef 932, i64 noundef 120, i64 noundef 4)
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc167:                                        ; preds = %.noexc166
  %i.bap = getelementptr inbounds nuw [8 x i8], ptr %i.ban, i64 %indvars.iv.i159
  store ptr %i.bao, ptr %i.bap, align 8, !tbaa !37
  %i.baq = trunc i64 %indvars.iv.i159 to i32
  %i.bar = mul i32 %i.baq, 3
  %i.bas = add i32 %i.bar, -180
  %i.bat = sitofp i32 %i.bas to float
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i159
  store float %i.bat, ptr %i.bau, align 4, !tbaa !33
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, 120
  br i1 %exitcond.not.i161, label %.thread.i, label %.noexc166, !llvm.loop !153

.thread.i:                                        ; preds = %.noexc167, %.noexc165, %.noexc164
  %i.bav = phi i1 [ false, %.noexc164 ], [ false, %.noexc165 ], [ true, %.noexc167 ] ; 2 uses
  %.1.i = phi ptr [ %.0192225.i, %.noexc164 ], [ %.0192225.i, %.noexc165 ], [ %i.ban, %.noexc167 ] ; 8 uses
  %.1118.i = phi i32 [ %.0117226.i, %.noexc164 ], [ %.0117226.i, %.noexc165 ], [ %i.bam, %.noexc167 ] ; 3 uses
  br i1 %i.azl, label %bb.gs, label %bb.gw

bb.gs:                                            ; preds = %.thread.i
  %i.baw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.262, ptr noundef nonnull %.sroa.0169.0224.i) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA256_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(256) %i.e, i8 noundef zeroext 2)
          to label %.noexc168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc168:                                        ; preds = %bb.gs
  %i.bax = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull @.str.126)
          to label %bb.gt unwind label %bb.gv

bb.gt:                                            ; preds = %.noexc168
  %i.bay = load ptr, ptr %i.azp, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i.i155 = icmp eq ptr %i.bay, null
  br i1 %.not.i.i.i.i155, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i156, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.azp, ptr noundef nonnull %i.bay) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i156

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i156: ; preds = %bb.gu, %bb.gt
  %i.baz = load ptr, ptr %6, align 8, !tbaa !27   ; 2 uses
  %i.bba = icmp eq ptr %i.baz, %i.azq
  br i1 %i.bba, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i156
  %i.bbb = load i64, ptr %i.azq, align 8, !tbaa !28
  %i.bbc = add i64 %i.bbb, 1
  call void @_ZdlPvm(ptr noundef %i.baz, i64 noundef %i.bbc) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.gw

bb.gv:                                            ; preds = %.noexc168
  %i.bbd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.hr

bb.gw:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, %.thread.i
  %.1115.i = phi ptr [ %i.bax, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i ], [ %.0114227.i, %.thread.i ] ; 4 uses
  br i1 %i.azr, label %.lr.ph.i154, label %._crit_edge.i147

.lr.ph.i154:                                      ; preds = %bb.gw
  %i.bbe = getelementptr inbounds nuw i8, ptr %.sroa.0169.0224.i, i64 52
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !13
  %i.bbg = getelementptr inbounds nuw i8, ptr %.sroa.0169.0224.i, i64 48
  %i.bbh = load i32, ptr %i.bbg, align 8, !tbaa !13
  %i.bbi = sext i32 %i.bbh to i64
  %i.bbj = getelementptr inbounds [8 x i8], ptr %i.nm, i64 %i.bbi ; 2 uses
  %i.bbk = sext i32 %i.bbf to i64
  %i.bbl = getelementptr inbounds [8 x i8], ptr %i.nm, i64 %i.bbk ; 2 uses
  %i.bbm = sext i32 %.1118.i to i64
  %i.bbn = getelementptr inbounds [8 x i8], ptr %i.nm, i64 %i.bbm
  br label %bb.gx

._crit_edge.i147:                                 ; preds = %bb.hb, %bb.gw
  br i1 %i.azl, label %bb.hc, label %.noexc169

bb.gx:                                            ; preds = %bb.hb, %.lr.ph.i154
  %indvars.iv233.i = phi i64 [ 0, %.lr.ph.i154 ], [ %indvars.iv.next234.i, %bb.hb ] ; 6 uses
  %i.bbo = load ptr, ptr %i.bbj, align 8, !tbaa !37
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.bbo, i64 %indvars.iv233.i
  %i.bbq = load float, ptr %i.bbp, align 4, !tbaa !33
  %i.bbr = load ptr, ptr %i.bbl, align 8, !tbaa !37
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %i.bbr, i64 %indvars.iv233.i
  %i.bbt = load float, ptr %i.bbs, align 4, !tbaa !33
  %i.bbu = insertelement <2 x float> poison, float %i.bbq, i64 0
  %i.bbv = insertelement <2 x float> %i.bbu, float %i.bbt, i64 1
  %i.bbw = fpext <2 x float> %i.bbv to <2 x double>
  %i.bbx = fmul <2 x double> %i.bbw, splat (double f0x404CA5DC1A63C1F8)
  %i.bby = fptrunc <2 x double> %i.bbx to <2 x float> ; 2 uses
  %i.bbz = fpext <2 x float> %i.bby to <2 x double> ; 2 uses
  %i.bca = extractelement <2 x double> %i.bbz, i64 0
  %i.bcb = extractelement <2 x double> %i.bbz, i64 1
  %i.bcc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.baj, ptr noundef nonnull @.str.263, double noundef %i.bca, double noundef %i.bcb) #24 ; 0 uses
  br i1 %i.azl, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.bcd = load ptr, ptr %i.bbj, align 8, !tbaa !37
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %i.bcd, i64 %indvars.iv233.i
  %i.bcf = load float, ptr %i.bce, align 4, !tbaa !33
  %i.bcg = load ptr, ptr %i.bbl, align 8, !tbaa !37
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %indvars.iv233.i
  %i.bci = load float, ptr %i.bch, align 4, !tbaa !33
  %i.bcj = fpext float %i.bci to double
  %i.bck = fmul double %i.bcj, f0x404CA5DC1A63C1F8
  %i.bcl = fptrunc double %i.bck to float
  %i.bcm = insertelement <2 x float> poison, float %i.bcf, i64 0
  %i.bcn = insertelement <2 x float> %i.bcm, float %i.bcl, i64 1
  %i.bco = fpext <2 x float> %i.bcn to <2 x double>
  %i.bcp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bco, <2 x double> splat (double f0x404CA5DC1A63C1F8), <2 x double> splat (double 3.600000e+02))
  %i.bcq = fptosi <2 x double> %i.bcp to <2 x i32>
  %i.bcr = srem <2 x i32> %i.bcq, splat (i32 360)
  %41 = trunc nsw <2 x i32> %i.bcr to <2 x i16>
  %42 = sdiv <2 x i16> %41, splat (i16 6)         ; 2 uses
  %.lhs.trunc3.i.i = extractelement <2 x i16> %42, i64 0
  %i.bcs = sext i16 %.lhs.trunc3.i.i to i64
  %i.bct = getelementptr inbounds [8 x i8], ptr @_ZZL8bAllowedffE3map, i64 %i.bcs
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !22
  %43 = extractelement <2 x i16> %42, i64 1
  %i.bcv = sext i16 %43 to i64
  %i.bcw = getelementptr inbounds i8, ptr %i.bcu, i64 %i.bcv
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !28
  %i.bcy = icmp ne i8 %i.bcx, 49
  %i.bcz = zext i1 %i.bcy to i32
  %i.bda = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.1115.i, ptr noundef nonnull @.str.264, i32 noundef %i.bcz) #24 ; 0 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  br i1 %i.bav, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.bdb = load ptr, ptr %i.bbn, align 8, !tbaa !37
  %i.bdc = getelementptr inbounds nuw [4 x i8], ptr %i.bdb, i64 %indvars.iv233.i
  %i.bdd = load float, ptr %i.bdc, align 4, !tbaa !33
  %i.bde = fpext float %i.bdd to double
  %i.bdf = fmul double %i.bde, f0x404CA5DC1A63C1F8
  %i.bdg = fptrunc double %i.bdf to float
  %i.bdh = fmul <2 x float> %i.bby, splat (float 1.200000e+02)
  %i.bdi = fdiv <2 x float> %i.bdh, splat (float 3.600000e+02) ; 2 uses
  %i.bdj = extractelement <2 x float> %i.bdi, i64 0
  %i.bdk = fadd float %i.bdj, 6.000000e+01
  %i.bdl = fptosi float %i.bdk to i32
  %i.bdm = sext i32 %i.bdl to i64
  %i.bdn = getelementptr inbounds [8 x i8], ptr %.1.i, i64 %i.bdm
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !37
  %i.bdp = extractelement <2 x float> %i.bdi, i64 1
  %i.bdq = fadd float %i.bdp, 6.000000e+01
  %i.bdr = fptosi float %i.bdq to i32
  %i.bds = sext i32 %i.bdr to i64
  %i.bdt = getelementptr inbounds [4 x i8], ptr %i.bdo, i64 %i.bds ; 2 uses
  %i.bdu = load float, ptr %i.bdt, align 4, !tbaa !33
  %i.bdv = fadd float %i.bdu, %i.bdg
  store float %i.bdv, ptr %i.bdt, align 4, !tbaa !33
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count.i144
  br i1 %exitcond236.not.i, label %._crit_edge.i147, label %bb.gx, !llvm.loop !154

bb.hc:                                            ; preds = %._crit_edge.i147
  %i.bdw = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %.1115.i)
          to label %.noexc169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc169:                                        ; preds = %bb.hc, %._crit_edge.i147
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.baj)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc170:                                        ; preds = %.noexc169
  br i1 %i.bav, label %bb.hd, label %.noexc173

bb.hd:                                            ; preds = %.noexc170
  %i.bdx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.265, ptr noundef nonnull %.sroa.0169.0224.i) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA256_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(256) %i.e, i8 noundef zeroext 2)
          to label %.noexc171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc171:                                        ; preds = %bb.hd
  %i.bdy = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull @.str.126)
          to label %bb.he unwind label %bb.hg     ; 2 uses

bb.he:                                            ; preds = %.noexc171
  %i.bdz = load ptr, ptr %i.azs, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i127.i = icmp eq ptr %i.bdz, null
  br i1 %.not.i.i.i127.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.azs, ptr noundef nonnull %i.bdz) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i: ; preds = %bb.hf, %bb.he
  %i.bea = load ptr, ptr %7, align 8, !tbaa !27   ; 2 uses
  %i.beb = icmp eq ptr %i.bea, %i.azt
  br i1 %i.beb, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i
  %i.bec = load i64, ptr %i.azt, align 8, !tbaa !28
  %i.bed = add i64 %i.bec, 1
  call void @_ZdlPvm(ptr noundef %i.bea, i64 noundef %i.bed) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.preheader199.i

.preheader199.i:                                  ; preds = %bb.hh, %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i
  %indvars.iv241.i = phi i64 [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i ], [ %indvars.iv.next242.i, %bb.hh ] ; 2 uses
  %.0193214.i = phi float [ 0.000000e+00, %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i ], [ %.sroa.speculated180.i.4, %bb.hh ]
  %.0196213.i = phi float [ 0.000000e+00, %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i ], [ %.sroa.speculated.i148.4, %bb.hh ]
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv241.i
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !37 ; 5 uses
  br label %bb.hi

bb.hg:                                            ; preds = %.noexc171
  %i.beg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.hr

bb.hh:                                            ; preds = %bb.hi
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %exitcond244.not.i = icmp eq i64 %indvars.iv.next242.i, 120
  br i1 %exitcond244.not.i, label %iter.check882, label %.preheader199.i, !llvm.loop !155

bb.hi:                                            ; preds = %bb.hi, %.preheader199.i
  %indvars.iv237.i = phi i64 [ 0, %.preheader199.i ], [ %indvars.iv.next238.i.4, %bb.hi ] ; 6 uses
  %.1194211.i = phi float [ %.0193214.i, %.preheader199.i ], [ %.sroa.speculated180.i.4, %bb.hi ] ; 2 uses
  %.1197210.i = phi float [ %.0196213.i, %.preheader199.i ], [ %.sroa.speculated.i148.4, %bb.hi ] ; 2 uses
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.bef, i64 %indvars.iv237.i ; 2 uses
  %i.bei = load float, ptr %i.beh, align 4, !tbaa !33
  %i.bej = fdiv float %i.bei, %i.azu              ; 5 uses
  store float %i.bej, ptr %i.beh, align 4, !tbaa !33
  %i.bek = fcmp olt float %.1194211.i, %i.bej
  %.sroa.speculated180.i = select i1 %i.bek, float %.1194211.i, float %i.bej ; 2 uses
  %i.bel = fcmp olt float %i.bej, %.1197210.i
  %.sroa.speculated.i148 = select i1 %i.bel, float %.1197210.i, float %i.bej ; 2 uses
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %i.bef, i64 %indvars.iv237.i
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 4 ; 2 uses
  %i.beo = load float, ptr %i.ben, align 4, !tbaa !33
  %i.bep = fdiv float %i.beo, %i.azu              ; 5 uses
  store float %i.bep, ptr %i.ben, align 4, !tbaa !33
  %i.beq = fcmp olt float %.sroa.speculated180.i, %i.bep
  %.sroa.speculated180.i.1 = select i1 %i.beq, float %.sroa.speculated180.i, float %i.bep ; 2 uses
  %i.ber = fcmp olt float %i.bep, %.sroa.speculated.i148
  %.sroa.speculated.i148.1 = select i1 %i.ber, float %.sroa.speculated.i148, float %i.bep ; 2 uses
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.bef, i64 %indvars.iv237.i
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 8 ; 2 uses
  %i.beu = load float, ptr %i.bet, align 4, !tbaa !33
  %i.bev = fdiv float %i.beu, %i.azu              ; 5 uses
  store float %i.bev, ptr %i.bet, align 4, !tbaa !33
  %i.bew = fcmp olt float %.sroa.speculated180.i.1, %i.bev
  %.sroa.speculated180.i.2 = select i1 %i.bew, float %.sroa.speculated180.i.1, float %i.bev ; 2 uses
  %i.bex = fcmp olt float %i.bev, %.sroa.speculated.i148.1
  %.sroa.speculated.i148.2 = select i1 %i.bex, float %.sroa.speculated.i148.1, float %i.bev ; 2 uses
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %i.bef, i64 %indvars.iv237.i
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 12 ; 2 uses
  %i.bfa = load float, ptr %i.bez, align 4, !tbaa !33
  %i.bfb = fdiv float %i.bfa, %i.azu              ; 5 uses
  store float %i.bfb, ptr %i.bez, align 4, !tbaa !33
  %i.bfc = fcmp olt float %.sroa.speculated180.i.2, %i.bfb
  %.sroa.speculated180.i.3 = select i1 %i.bfc, float %.sroa.speculated180.i.2, float %i.bfb ; 2 uses
  %i.bfd = fcmp olt float %i.bfb, %.sroa.speculated.i148.2
  %.sroa.speculated.i148.3 = select i1 %i.bfd, float %.sroa.speculated.i148.2, float %i.bfb ; 2 uses
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr %i.bef, i64 %indvars.iv237.i
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 16 ; 2 uses
  %i.bfg = load float, ptr %i.bff, align 4, !tbaa !33
  %i.bfh = fdiv float %i.bfg, %i.azu              ; 5 uses
  store float %i.bfh, ptr %i.bff, align 4, !tbaa !33
  %i.bfi = fcmp olt float %.sroa.speculated180.i.3, %i.bfh
  %.sroa.speculated180.i.4 = select i1 %i.bfi, float %.sroa.speculated180.i.3, float %i.bfh ; 5 uses
  %i.bfj = fcmp olt float %i.bfh, %.sroa.speculated.i148.3
  %.sroa.speculated.i148.4 = select i1 %i.bfj, float %.sroa.speculated.i148.3, float %i.bfh ; 5 uses
  %indvars.iv.next238.i.4 = add nuw nsw i64 %indvars.iv237.i, 5 ; 2 uses
  %exitcond240.not.i.4 = icmp eq i64 %indvars.iv.next238.i.4, 120
  br i1 %exitcond240.not.i.4, label %bb.hh, label %bb.hi, !llvm.loop !156

iter.check882:                                    ; preds = %bb.hh, %iter.check882
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %iter.check882 ], [ 0, %bb.hh ] ; 2 uses
  %i.bfk = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv249.i
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !37 ; 16 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 32 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfl, i64 64 ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfl, i64 96 ; 2 uses
  %wide.load875 = load <8 x float>, ptr %i.bfl, align 4, !tbaa !33
  %wide.load876 = load <8 x float>, ptr %i.bfm, align 4, !tbaa !33
  %wide.load877 = load <8 x float>, ptr %i.bfn, align 4, !tbaa !33
  %wide.load878 = load <8 x float>, ptr %i.bfo, align 4, !tbaa !33
  %i.bfp = fadd <8 x float> %wide.load875, splat (float 1.800000e+02)
  %i.bfq = fadd <8 x float> %wide.load876, splat (float 1.800000e+02)
  %i.bfr = fadd <8 x float> %wide.load877, splat (float 1.800000e+02)
  %i.bfs = fadd <8 x float> %wide.load878, splat (float 1.800000e+02)
  store <8 x float> %i.bfp, ptr %i.bfl, align 4, !tbaa !33
  store <8 x float> %i.bfq, ptr %i.bfm, align 4, !tbaa !33
  store <8 x float> %i.bfr, ptr %i.bfn, align 4, !tbaa !33
  store <8 x float> %i.bfs, ptr %i.bfo, align 4, !tbaa !33
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfl, i64 128 ; 2 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfl, i64 160 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfl, i64 192 ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfl, i64 224 ; 2 uses
  %wide.load875.1 = load <8 x float>, ptr %i.bft, align 4, !tbaa !33
  %wide.load876.1 = load <8 x float>, ptr %i.bfu, align 4, !tbaa !33
  %wide.load877.1 = load <8 x float>, ptr %i.bfv, align 4, !tbaa !33
  %wide.load878.1 = load <8 x float>, ptr %i.bfw, align 4, !tbaa !33
  %i.bfx = fadd <8 x float> %wide.load875.1, splat (float 1.800000e+02)
  %i.bfy = fadd <8 x float> %wide.load876.1, splat (float 1.800000e+02)
  %i.bfz = fadd <8 x float> %wide.load877.1, splat (float 1.800000e+02)
  %i.bga = fadd <8 x float> %wide.load878.1, splat (float 1.800000e+02)
  store <8 x float> %i.bfx, ptr %i.bft, align 4, !tbaa !33
  store <8 x float> %i.bfy, ptr %i.bfu, align 4, !tbaa !33
  store <8 x float> %i.bfz, ptr %i.bfv, align 4, !tbaa !33
  store <8 x float> %i.bga, ptr %i.bfw, align 4, !tbaa !33
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfl, i64 256 ; 2 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfl, i64 288 ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfl, i64 320 ; 2 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfl, i64 352 ; 2 uses
  %wide.load875.2 = load <8 x float>, ptr %i.bgb, align 4, !tbaa !33
  %wide.load876.2 = load <8 x float>, ptr %i.bgc, align 4, !tbaa !33
  %wide.load877.2 = load <8 x float>, ptr %i.bgd, align 4, !tbaa !33
  %wide.load878.2 = load <8 x float>, ptr %i.bge, align 4, !tbaa !33
end_hunk_0
