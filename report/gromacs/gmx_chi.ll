Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_chi?download=true
inline.NumInlined: 1583
inline.NumDeleted: 676
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z7gmx_chiiPPc:bb.a
  %.pre424.pre429 = load ptr, ptr %i.fg, align 8, !tbaa !50 ; 3 uses
  br i1 %i.aza, label %bb.gm, label %bb.hs

bb.gm:                                            ; preds = %.loopexit340
  %i.azb = load i8, ptr @_ZZ7gmx_chiiPPcE5bViol, align 1, !tbaa !174, !range !175, !noundef !176
  %i.azc = trunc nuw i8 %i.azb to i1              ; 3 uses
  %i.azd = load i8, ptr @_ZZ7gmx_chiiPPcE9bRamOmega, align 1, !tbaa !174, !range !175, !noundef !176
  %i.aze = trunc nuw i8 %i.azd to i1
  %i.azf = load ptr, ptr %i.v, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %.not223.i = icmp eq ptr %.pre422.pre427, %.pre424.pre429
  br i1 %.not223.i, label %_ZL7do_ramaiN3gmx8ArrayRefIK7t_dlistEEPPfbbPK16gmx_output_env_t.exit, label %.lr.ph229.i

.lr.ph229.i:                                      ; preds = %bb.gm
  %i.azg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.azi = icmp sgt i32 %.pre420.pre425, 0        ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.azl = sitofp i32 %.pre420.pre425 to float    ; 5 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.azo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.azq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.azs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  %wide.trip.count.i146 = zext nneg i32 %.pre420.pre425 to i64 ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %9, i64 19
  %i.azv = getelementptr inbounds nuw i8, ptr %10, i64 19
  %i.azw = getelementptr inbounds nuw i8, ptr %11, i64 19
  br label %bb.gn

bb.gn:                                            ; preds = %.noexc180, %.lr.ph229.i
  %.0114227.i = phi ptr [ null, %.lr.ph229.i ], [ %.2116.i, %.noexc180 ] ; 3 uses
  %.0117226.i = phi i32 [ 0, %.lr.ph229.i ], [ %.2119.i, %.noexc180 ] ; 4 uses
  %.0192225.i = phi ptr [ null, %.lr.ph229.i ], [ %.2.i147, %.noexc180 ] ; 4 uses
  %.sroa.0169.0224.i = phi ptr [ %.pre422.pre427, %.lr.ph229.i ], [ %i.bjb, %.noexc180 ] ; 16 uses
  %i.azx = invoke noundef zeroext i1 @_Z12has_dihedraliRK7t_dlist(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.0169.0224.i)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc164:                                        ; preds = %bb.gn
  br i1 %i.azx, label %bb.go, label %.noexc175

bb.go:                                            ; preds = %.noexc164
  %i.azy = invoke noundef zeroext i1 @_Z12has_dihedraliRK7t_dlist(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.0169.0224.i)
          to label %.noexc165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc165:                                        ; preds = %bb.go
  br i1 %i.azy, label %bb.gp, label %.noexc175

bb.gp:                                            ; preds = %.noexc165
  %i.azz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.256, ptr noundef nonnull %.sroa.0169.0224.i) #24 ; 0 uses
  %i.baa = invoke fastcc noundef ptr @_ZL9rama_filePKcS0_S0_S0_PK16gmx_output_env_t(ptr noundef %i.e, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.259, ptr noundef %i.azf)
          to label %.noexc166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc166:                                        ; preds = %bb.gp
  br i1 %i.aze, label %bb.gq, label %.thread.i

bb.gq:                                            ; preds = %.noexc166
  %i.bab = invoke noundef zeroext i1 @_Z12has_dihedraliRK7t_dlist(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.0169.0224.i)
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc167:                                        ; preds = %bb.gq
  br i1 %i.bab, label %bb.gr, label %.thread.i

bb.gr:                                            ; preds = %.noexc167
  %i.bac = getelementptr inbounds nuw i8, ptr %.sroa.0169.0224.i, i64 56
  %i.bad = load i32, ptr %i.bac, align 8, !tbaa !13
  %i.bae = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.132, i32 noundef 929, i64 noundef 120, i64 noundef 8)
          to label %.noexc168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc168:                                        ; preds = %bb.gr, %.noexc169
  %indvars.iv.i161 = phi i64 [ %indvars.iv.next.i162, %.noexc169 ], [ 0, %bb.gr ] ; 4 uses
  %i.baf = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.132, i32 noundef 932, i64 noundef 120, i64 noundef 4)
          to label %.noexc169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc169:                                        ; preds = %.noexc168
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr %i.bae, i64 %indvars.iv.i161
  store ptr %i.baf, ptr %i.bag, align 8, !tbaa !37
  %i.bah = trunc i64 %indvars.iv.i161 to i32
  %i.bai = mul i32 %i.bah, 3
  %i.baj = add i32 %i.bai, -180
  %i.bak = sitofp i32 %i.baj to float
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i161
  store float %i.bak, ptr %i.bal, align 4, !tbaa !33
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, 120
  br i1 %exitcond.not.i163, label %.thread.i, label %.noexc168, !llvm.loop !153

.thread.i:                                        ; preds = %.noexc169, %.noexc167, %.noexc166
  %i.bam = phi i1 [ false, %.noexc166 ], [ false, %.noexc167 ], [ true, %.noexc169 ] ; 2 uses
  %.1.i = phi ptr [ %.0192225.i, %.noexc166 ], [ %.0192225.i, %.noexc167 ], [ %i.bae, %.noexc169 ] ; 8 uses
  %.1118.i = phi i32 [ %.0117226.i, %.noexc166 ], [ %.0117226.i, %.noexc167 ], [ %i.bad, %.noexc169 ] ; 3 uses
  br i1 %i.azc, label %bb.gs, label %bb.gw

bb.gs:                                            ; preds = %.thread.i
  %i.ban = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.262, ptr noundef nonnull %.sroa.0169.0224.i) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA256_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(256) %i.e, i8 noundef zeroext 2)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc170:                                        ; preds = %bb.gs
  %i.bao = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull @.str.126)
          to label %bb.gt unwind label %bb.gv

bb.gt:                                            ; preds = %.noexc170
  %i.bap = load ptr, ptr %i.azg, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i.i157 = icmp eq ptr %i.bap, null
  br i1 %.not.i.i.i.i157, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i158, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.azg, ptr noundef nonnull %i.bap) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i158

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i158: ; preds = %bb.gu, %bb.gt
  %i.baq = load ptr, ptr %6, align 8, !tbaa !27   ; 2 uses
  %i.bar = icmp eq ptr %i.baq, %i.azh
  br i1 %i.bar, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i158
  %i.bas = load i64, ptr %i.azh, align 8, !tbaa !28
  %i.bat = add i64 %i.bas, 1
  call void @_ZdlPvm(ptr noundef %i.baq, i64 noundef %i.bat) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.gw

bb.gv:                                            ; preds = %.noexc170
  %i.bau = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.hr

bb.gw:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, %.thread.i
  %.1115.i = phi ptr [ %i.bao, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i ], [ %.0114227.i, %.thread.i ] ; 4 uses
  br i1 %i.azi, label %.lr.ph.i156, label %._crit_edge.i149

.lr.ph.i156:                                      ; preds = %bb.gw
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.0169.0224.i, i64 52
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !13
  %i.bax = getelementptr inbounds nuw i8, ptr %.sroa.0169.0224.i, i64 48
  %i.bay = load i32, ptr %i.bax, align 8, !tbaa !13
  %i.baz = sext i32 %i.bay to i64
  %i.bba = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.baz ; 2 uses
  %i.bbb = sext i32 %i.baw to i64
  %i.bbc = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.bbb ; 2 uses
  %i.bbd = sext i32 %.1118.i to i64
  %i.bbe = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.bbd
  br label %bb.gx

._crit_edge.i149:                                 ; preds = %bb.hb, %bb.gw
  br i1 %i.azc, label %bb.hc, label %.noexc171

bb.gx:                                            ; preds = %bb.hb, %.lr.ph.i156
  %indvars.iv233.i = phi i64 [ 0, %.lr.ph.i156 ], [ %indvars.iv.next234.i, %bb.hb ] ; 6 uses
  %i.bbf = load ptr, ptr %i.bba, align 8, !tbaa !37
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %indvars.iv233.i
  %i.bbh = load float, ptr %i.bbg, align 4, !tbaa !33
  %i.bbi = load ptr, ptr %i.bbc, align 8, !tbaa !37
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %indvars.iv233.i
  %i.bbk = load float, ptr %i.bbj, align 4, !tbaa !33
  %i.bbl = insertelement <2 x float> poison, float %i.bbh, i64 0
  %i.bbm = insertelement <2 x float> %i.bbl, float %i.bbk, i64 1
  %i.bbn = fpext <2 x float> %i.bbm to <2 x double>
  %i.bbo = fmul <2 x double> %i.bbn, splat (double f0x404CA5DC1A63C1F8)
  %i.bbp = fptrunc <2 x double> %i.bbo to <2 x float> ; 2 uses
  %i.bbq = fpext <2 x float> %i.bbp to <2 x double> ; 2 uses
  %i.bbr = extractelement <2 x double> %i.bbq, i64 0
  %i.bbs = extractelement <2 x double> %i.bbq, i64 1
  %i.bbt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.baa, ptr noundef nonnull @.str.263, double noundef %i.bbr, double noundef %i.bbs) #24 ; 0 uses
  br i1 %i.azc, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.bbu = load ptr, ptr %i.bba, align 8, !tbaa !37
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %i.bbu, i64 %indvars.iv233.i
  %i.bbw = load float, ptr %i.bbv, align 4, !tbaa !33
  %i.bbx = load ptr, ptr %i.bbc, align 8, !tbaa !37
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %i.bbx, i64 %indvars.iv233.i
  %i.bbz = load float, ptr %i.bby, align 4, !tbaa !33
  %i.bca = fpext float %i.bbz to double
  %i.bcb = fmul double %i.bca, f0x404CA5DC1A63C1F8
  %i.bcc = fptrunc double %i.bcb to float
  %i.bcd = insertelement <2 x float> poison, float %i.bbw, i64 0
  %i.bce = insertelement <2 x float> %i.bcd, float %i.bcc, i64 1
  %i.bcf = fpext <2 x float> %i.bce to <2 x double>
  %i.bcg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bcf, <2 x double> splat (double f0x404CA5DC1A63C1F8), <2 x double> splat (double 3.600000e+02))
  %i.bch = fptosi <2 x double> %i.bcg to <2 x i32>
  %i.bci = srem <2 x i32> %i.bch, splat (i32 360)
  %41 = trunc nsw <2 x i32> %i.bci to <2 x i16>
  %42 = sdiv <2 x i16> %41, splat (i16 6)         ; 2 uses
  %.lhs.trunc3.i.i = extractelement <2 x i16> %42, i64 0
  %i.bcj = sext i16 %.lhs.trunc3.i.i to i64
  %i.bck = getelementptr inbounds [8 x i8], ptr @_ZZL8bAllowedffE3map, i64 %i.bcj
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !22
  %43 = extractelement <2 x i16> %42, i64 1
  %i.bcm = sext i16 %43 to i64
  %i.bcn = getelementptr inbounds i8, ptr %i.bcl, i64 %i.bcm
  %i.bco = load i8, ptr %i.bcn, align 1, !tbaa !28
  %i.bcp = icmp ne i8 %i.bco, 49
  %i.bcq = zext i1 %i.bcp to i32
  %i.bcr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.1115.i, ptr noundef nonnull @.str.264, i32 noundef %i.bcq) #24 ; 0 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  br i1 %i.bam, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.bcs = load ptr, ptr %i.bbe, align 8, !tbaa !37
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bcs, i64 %indvars.iv233.i
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !33
  %i.bcv = fpext float %i.bcu to double
  %i.bcw = fmul double %i.bcv, f0x404CA5DC1A63C1F8
  %i.bcx = fptrunc double %i.bcw to float
  %i.bcy = fmul <2 x float> %i.bbp, splat (float 1.200000e+02)
  %i.bcz = fdiv <2 x float> %i.bcy, splat (float 3.600000e+02) ; 2 uses
  %i.bda = extractelement <2 x float> %i.bcz, i64 0
  %i.bdb = fadd float %i.bda, 6.000000e+01
  %i.bdc = fptosi float %i.bdb to i32
  %i.bdd = sext i32 %i.bdc to i64
  %i.bde = getelementptr inbounds [8 x i8], ptr %.1.i, i64 %i.bdd
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !37
  %i.bdg = extractelement <2 x float> %i.bcz, i64 1
  %i.bdh = fadd float %i.bdg, 6.000000e+01
  %i.bdi = fptosi float %i.bdh to i32
  %i.bdj = sext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds [4 x i8], ptr %i.bdf, i64 %i.bdj ; 2 uses
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !33
  %i.bdm = fadd float %i.bdl, %i.bcx
  store float %i.bdm, ptr %i.bdk, align 4, !tbaa !33
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count.i146
  br i1 %exitcond236.not.i, label %._crit_edge.i149, label %bb.gx, !llvm.loop !154

bb.hc:                                            ; preds = %._crit_edge.i149
  %i.bdn = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %.1115.i)
          to label %.noexc171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc171:                                        ; preds = %bb.hc, %._crit_edge.i149
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.baa)
          to label %.noexc172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc172:                                        ; preds = %.noexc171
  br i1 %i.bam, label %bb.hd, label %.noexc175

bb.hd:                                            ; preds = %.noexc172
  %i.bdo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.265, ptr noundef nonnull %.sroa.0169.0224.i) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA256_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(256) %i.e, i8 noundef zeroext 2)
          to label %.noexc173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc173:                                        ; preds = %bb.hd
  %i.bdp = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull @.str.126)
          to label %bb.he unwind label %bb.hg     ; 2 uses

bb.he:                                            ; preds = %.noexc173
  %i.bdq = load ptr, ptr %i.azj, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i127.i = icmp eq ptr %i.bdq, null
  br i1 %.not.i.i.i127.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.azj, ptr noundef nonnull %i.bdq) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i: ; preds = %bb.hf, %bb.he
  %i.bdr = load ptr, ptr %7, align 8, !tbaa !27   ; 2 uses
  %i.bds = icmp eq ptr %i.bdr, %i.azk
  br i1 %i.bds, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i
  %i.bdt = load i64, ptr %i.azk, align 8, !tbaa !28
  %i.bdu = add i64 %i.bdt, 1
  call void @_ZdlPvm(ptr noundef %i.bdr, i64 noundef %i.bdu) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.preheader199.i

.preheader199.i:                                  ; preds = %bb.hh, %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i
  %indvars.iv241.i = phi i64 [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i ], [ %indvars.iv.next242.i, %bb.hh ] ; 2 uses
  %.0193214.i = phi float [ 0.000000e+00, %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i ], [ %.sroa.speculated180.i.4, %bb.hh ]
  %.0196213.i = phi float [ 0.000000e+00, %_ZNSt10filesystem7__cxx114pathD2Ev.exit131.i ], [ %.sroa.speculated.i150.4, %bb.hh ]
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv241.i
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !37 ; 5 uses
  br label %bb.hi

bb.hg:                                            ; preds = %.noexc173
  %i.bdx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.hr

bb.hh:                                            ; preds = %bb.hi
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %exitcond244.not.i = icmp eq i64 %indvars.iv.next242.i, 120
  br i1 %exitcond244.not.i, label %iter.check884, label %.preheader199.i, !llvm.loop !155

bb.hi:                                            ; preds = %bb.hi, %.preheader199.i
  %indvars.iv237.i = phi i64 [ 0, %.preheader199.i ], [ %indvars.iv.next238.i.4, %bb.hi ] ; 6 uses
  %.1194211.i = phi float [ %.0193214.i, %.preheader199.i ], [ %.sroa.speculated180.i.4, %bb.hi ] ; 2 uses
  %.1197210.i = phi float [ %.0196213.i, %.preheader199.i ], [ %.sroa.speculated.i150.4, %bb.hi ] ; 2 uses
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %i.bdw, i64 %indvars.iv237.i ; 2 uses
  %i.bdz = load float, ptr %i.bdy, align 4, !tbaa !33
  %i.bea = fdiv float %i.bdz, %i.azl              ; 5 uses
  store float %i.bea, ptr %i.bdy, align 4, !tbaa !33
  %i.beb = fcmp olt float %.1194211.i, %i.bea
  %.sroa.speculated180.i = select i1 %i.beb, float %.1194211.i, float %i.bea ; 2 uses
  %i.bec = fcmp olt float %i.bea, %.1197210.i
  %.sroa.speculated.i150 = select i1 %i.bec, float %.1197210.i, float %i.bea ; 2 uses
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %i.bdw, i64 %indvars.iv237.i
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 4 ; 2 uses
  %i.bef = load float, ptr %i.bee, align 4, !tbaa !33
  %i.beg = fdiv float %i.bef, %i.azl              ; 5 uses
  store float %i.beg, ptr %i.bee, align 4, !tbaa !33
  %i.beh = fcmp olt float %.sroa.speculated180.i, %i.beg
  %.sroa.speculated180.i.1 = select i1 %i.beh, float %.sroa.speculated180.i, float %i.beg ; 2 uses
  %i.bei = fcmp olt float %i.beg, %.sroa.speculated.i150
  %.sroa.speculated.i150.1 = select i1 %i.bei, float %.sroa.speculated.i150, float %i.beg ; 2 uses
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.bdw, i64 %indvars.iv237.i
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 8 ; 2 uses
  %i.bel = load float, ptr %i.bek, align 4, !tbaa !33
  %i.bem = fdiv float %i.bel, %i.azl              ; 5 uses
  store float %i.bem, ptr %i.bek, align 4, !tbaa !33
  %i.ben = fcmp olt float %.sroa.speculated180.i.1, %i.bem
  %.sroa.speculated180.i.2 = select i1 %i.ben, float %.sroa.speculated180.i.1, float %i.bem ; 2 uses
  %i.beo = fcmp olt float %i.bem, %.sroa.speculated.i150.1
  %.sroa.speculated.i150.2 = select i1 %i.beo, float %.sroa.speculated.i150.1, float %i.bem ; 2 uses
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.bdw, i64 %indvars.iv237.i
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 12 ; 2 uses
  %i.ber = load float, ptr %i.beq, align 4, !tbaa !33
  %i.bes = fdiv float %i.ber, %i.azl              ; 5 uses
  store float %i.bes, ptr %i.beq, align 4, !tbaa !33
  %i.bet = fcmp olt float %.sroa.speculated180.i.2, %i.bes
  %.sroa.speculated180.i.3 = select i1 %i.bet, float %.sroa.speculated180.i.2, float %i.bes ; 2 uses
  %i.beu = fcmp olt float %i.bes, %.sroa.speculated.i150.2
  %.sroa.speculated.i150.3 = select i1 %i.beu, float %.sroa.speculated.i150.2, float %i.bes ; 2 uses
  %i.bev = getelementptr inbounds nuw [4 x i8], ptr %i.bdw, i64 %indvars.iv237.i
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 16 ; 2 uses
  %i.bex = load float, ptr %i.bew, align 4, !tbaa !33
  %i.bey = fdiv float %i.bex, %i.azl              ; 5 uses
  store float %i.bey, ptr %i.bew, align 4, !tbaa !33
  %i.bez = fcmp olt float %.sroa.speculated180.i.3, %i.bey
  %.sroa.speculated180.i.4 = select i1 %i.bez, float %.sroa.speculated180.i.3, float %i.bey ; 5 uses
  %i.bfa = fcmp olt float %i.bey, %.sroa.speculated.i150.3
  %.sroa.speculated.i150.4 = select i1 %i.bfa, float %.sroa.speculated.i150.3, float %i.bey ; 5 uses
  %indvars.iv.next238.i.4 = add nuw nsw i64 %indvars.iv237.i, 5 ; 2 uses
  %exitcond240.not.i.4 = icmp eq i64 %indvars.iv.next238.i.4, 120
  br i1 %exitcond240.not.i.4, label %bb.hh, label %bb.hi, !llvm.loop !156

iter.check884:                                    ; preds = %bb.hh, %iter.check884
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %iter.check884 ], [ 0, %bb.hh ] ; 2 uses
  %i.bfb = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv249.i
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !37 ; 16 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 32 ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfc, i64 64 ; 2 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfc, i64 96 ; 2 uses
  %wide.load877 = load <8 x float>, ptr %i.bfc, align 4, !tbaa !33
  %wide.load878 = load <8 x float>, ptr %i.bfd, align 4, !tbaa !33
  %wide.load879 = load <8 x float>, ptr %i.bfe, align 4, !tbaa !33
  %wide.load880 = load <8 x float>, ptr %i.bff, align 4, !tbaa !33
  %i.bfg = fadd <8 x float> %wide.load877, splat (float 1.800000e+02)
  %i.bfh = fadd <8 x float> %wide.load878, splat (float 1.800000e+02)
  %i.bfi = fadd <8 x float> %wide.load879, splat (float 1.800000e+02)
  %i.bfj = fadd <8 x float> %wide.load880, splat (float 1.800000e+02)
  store <8 x float> %i.bfg, ptr %i.bfc, align 4, !tbaa !33
  store <8 x float> %i.bfh, ptr %i.bfd, align 4, !tbaa !33
  store <8 x float> %i.bfi, ptr %i.bfe, align 4, !tbaa !33
  store <8 x float> %i.bfj, ptr %i.bff, align 4, !tbaa !33
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfc, i64 128 ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfc, i64 160 ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfc, i64 192 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfc, i64 224 ; 2 uses
  %wide.load877.1 = load <8 x float>, ptr %i.bfk, align 4, !tbaa !33
  %wide.load878.1 = load <8 x float>, ptr %i.bfl, align 4, !tbaa !33
  %wide.load879.1 = load <8 x float>, ptr %i.bfm, align 4, !tbaa !33
  %wide.load880.1 = load <8 x float>, ptr %i.bfn, align 4, !tbaa !33
  %i.bfo = fadd <8 x float> %wide.load877.1, splat (float 1.800000e+02)
  %i.bfp = fadd <8 x float> %wide.load878.1, splat (float 1.800000e+02)
  %i.bfq = fadd <8 x float> %wide.load879.1, splat (float 1.800000e+02)
  %i.bfr = fadd <8 x float> %wide.load880.1, splat (float 1.800000e+02)
  store <8 x float> %i.bfo, ptr %i.bfk, align 4, !tbaa !33
  store <8 x float> %i.bfp, ptr %i.bfl, align 4, !tbaa !33
  store <8 x float> %i.bfq, ptr %i.bfm, align 4, !tbaa !33
  store <8 x float> %i.bfr, ptr %i.bfn, align 4, !tbaa !33
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfc, i64 256 ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfc, i64 288 ; 2 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfc, i64 320 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfc, i64 352 ; 2 uses
  %wide.load877.2 = load <8 x float>, ptr %i.bfs, align 4, !tbaa !33
  %wide.load878.2 = load <8 x float>, ptr %i.bft, align 4, !tbaa !33
  %wide.load879.2 = load <8 x float>, ptr %i.bfu, align 4, !tbaa !33
  %wide.load880.2 = load <8 x float>, ptr %i.bfv, align 4, !tbaa !33
end_hunk_0
