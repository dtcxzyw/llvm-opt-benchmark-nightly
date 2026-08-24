Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tune_pme?download=true
inline.NumInlined: 457
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z12gmx_tune_pmeiPPc:bb.a

bb.gt:                                            ; preds = %bb.gr
  %i.abs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  br label %bb.he

bb.gu:                                            ; preds = %._crit_edge.i146
  %.not.i147 = xor i1 %.235.i, true
  %or.cond.i148 = select i1 %.not.i147, i1 true, i1 %.2.i
  br i1 %or.cond.i148, label %._crit_edge57.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 1 dereferenceable(63) @.str.205, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %45, i32 noundef 770, ptr noundef nonnull @.str.306, ptr noundef %i.yu) #26
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  unreachable

bb.gx:                                            ; preds = %bb.gv
  %i.abt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %45) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %bb.he

._crit_edge57.i:                                  ; preds = %bb.gu, %bb.gq
  br i1 %.235.i, label %bb.ha, label %._crit_edge57.thread.i

._crit_edge57.thread.i:                           ; preds = %._crit_edge57.i, %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef nonnull align 1 dereferenceable(63) @.str.205, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %46, i32 noundef 780, ptr noundef nonnull @.str.307, ptr noundef nonnull %i.aj) #26
          to label %bb.gy unwind label %bb.gz

bb.gy:                                            ; preds = %._crit_edge57.thread.i
  unreachable

bb.gz:                                            ; preds = %._crit_edge57.thread.i
  %i.abu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %46) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  br label %bb.he

bb.ha:                                            ; preds = %._crit_edge57.i
  %or.cond4.i = select i1 %.not, i1 true, i1 %.1.i
  br i1 %or.cond4.i, label %_ZL17check_mdrun_worksbPKcS0_S0_b.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 1 dereferenceable(63) @.str.205, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %47, i32 noundef 785, ptr noundef nonnull @.str.308) #26
          to label %bb.hc unwind label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  unreachable

bb.hd:                                            ; preds = %bb.hb
  %i.abv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %47) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.gz, %bb.gx, %bb.gt, %bb.gm, %bb.gl, %bb.gk
  %.pn.i140 = phi { ptr, i32 } [ %i.aaj, %bb.gm ], [ %i.abs, %bb.gt ], [ %i.abv, %bb.hd ], [ %i.abu, %bb.gz ], [ %i.abt, %bb.gx ], [ %i.aai, %bb.gl ], [ %i.aah, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #25
  br label %common.resume

_ZL17check_mdrun_worksbPKcS0_S0_b.exit:           ; preds = %bb.ha
  %i.abw = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.abx = call i64 @fwrite(ptr nonnull @.str.309, i64 8, i64 1, ptr %i.abw) ; 0 uses
  %i.aby = call i32 @remove(ptr noundef nonnull %i.aj) #25 ; 0 uses
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.205, i32 noundef 792, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #25
  br label %bb.hf

bb.hf:                                            ; preds = %_ZL17check_mdrun_worksbPKcS0_S0_b.exit, %_ZL17get_program_pathsbPPcS0_.exit
  %i.abz = call i64 @fwrite(ptr nonnull @.str.310, i64 62, i64 1, ptr %i.qz) ; 0 uses
  %i.aca = call i64 @fwrite(ptr nonnull @.str.216, i64 45, i64 1, ptr %i.qz) ; 0 uses
  %i.acb = call i64 @fwrite(ptr nonnull @.str.310, i64 62, i64 1, ptr %i.qz) ; 0 uses
  %i.acc = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.acd = call noundef ptr @_Z35output_env_get_program_display_namePK16gmx_output_env_t(ptr noundef %i.acc)
  %i.ace = call noundef ptr @_Z11gmx_versionv()
  %i.acf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.217, ptr noundef %i.acd, ptr noundef %i.ace) #25 ; 0 uses
  %i.acg = load i32, ptr %i.as, align 4, !tbaa !9 ; 2 uses
  br i1 %i.hl, label %bb.hj, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ach = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.218, i32 noundef %i.acg) #25 ; 0 uses
  %i.aci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.219, ptr noundef %i.yo) #25 ; 0 uses
  %i.acj = load ptr, ptr %i.bl, align 16, !tbaa !16 ; 2 uses
  %i.ack = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.acj, ptr noundef nonnull dereferenceable(5) @.str.152) #27
  %.not100 = icmp eq i32 %i.ack, 0
  br i1 %.not100, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.acl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.220, ptr noundef nonnull %i.acj) #25 ; 0 uses
  br label %bb.hk

bb.hi:                                            ; preds = %bb.hg
  %i.acm = call i64 @fwrite(ptr nonnull @.str.221, i64 43, i64 1, ptr %i.qz) ; 0 uses
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hf
  %i.acn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.222, i32 noundef %i.acg) #25 ; 0 uses
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hh, %bb.hi, %bb.hj
  %i.aco = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.acp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.223, ptr noundef %i.aco) #25 ; 0 uses
  %i.acq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.qa) #25 ; 0 uses
  %i.acr = call i64 @fwrite(ptr nonnull @.str.225, i64 26, i64 1, ptr %i.qz) ; 0 uses
  %i.acs = load i64, ptr %i.bb, align 8, !tbaa !14
  %i.act = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.226, i64 noundef %i.acs) #25 ; 0 uses
  %fputc = call i32 @fputc(i32 10, ptr %i.qz)     ; 0 uses
  %i.acu = load i32, ptr %i.be, align 4, !tbaa !9
  %i.acv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.228, i32 noundef %i.acu) #25 ; 0 uses
  br i1 %.083, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.acw = call i64 @fwrite(ptr nonnull @.str.229, i64 26, i64 1, ptr %i.qz) ; 0 uses
  %i.acx = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.acy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.226, i64 noundef %i.acx) #25 ; 0 uses
  %fputc101 = call i32 @fputc(i32 10, ptr %i.qz)  ; 0 uses
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.acz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.230, ptr noundef nonnull %i.qh) #25 ; 0 uses
  %i.ada = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.adb = icmp sgt i64 %i.ada, -1                ; 3 uses
  br i1 %i.adb, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.adc = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.add = call noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.64, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
  %i.ade = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adc, ptr noundef nonnull @.str.231, ptr noundef %i.add) #30 ; 0 uses
  %i.adf = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.adg = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.adh = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.adi = add nsw i64 %i.adh, %i.adg
  %i.adj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adf, ptr noundef nonnull @.str.226, i64 noundef %i.adi) #30 ; 0 uses
  %i.adk = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.adl = call i64 @fwrite(ptr nonnull @.str.232, i64 8, i64 1, ptr %i.adk) #28 ; 0 uses
  %i.adm = call i64 @fwrite(ptr nonnull @.str.233, i64 26, i64 1, ptr %i.qz) ; 0 uses
  %i.adn = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.ado = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.226, i64 noundef %i.adn) #25 ; 0 uses
  %fputc102 = call i32 @fputc(i32 10, ptr %i.qz)  ; 0 uses
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.adp = load i32, ptr %i.at, align 4, !tbaa !9 ; 2 uses
  %i.adq = icmp sgt i32 %i.adp, 1
  br i1 %i.adq, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.adr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.234, i32 noundef %i.adp) #25 ; 0 uses
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.ads = load i32, ptr %i.aw, align 4, !tbaa !9 ; 2 uses
  %i.adt = icmp sgt i32 %i.ads, -2
  br i1 %i.adt, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.adu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.235, i32 noundef %i.ads) #25 ; 0 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.adv = call noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.66, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
  %i.adw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.236, ptr noundef %i.adv) #25 ; 0 uses
  %i.adx = fpext float %i.lf to double
  %i.ady = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.237, double noundef %i.adx) #25 ; 0 uses
  %i.adz = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.205, i32 noundef 2670, i64 noundef 1, i64 noundef 96) ; 32 uses
  %i.aea = load i32, ptr %i.ax, align 4, !tbaa !9 ; 4 uses
  store i32 %i.aea, ptr %i.adz, align 8, !tbaa !157
  %i.aeb = icmp sgt i32 %i.aea, 0
  br i1 %i.aeb, label %.lr.ph863, label %._crit_edge864

.lr.ph863:                                        ; preds = %bb.hs
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 40
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adz, i64 48
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adz, i64 56
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adz, i64 64
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adz, i64 72
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adz, i64 80
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adz, i64 88
  br label %bb.ht

bb.ht:                                            ; preds = %.lr.ph863, %bb.ht
  %i.ael = phi i32 [ %i.aea, %.lr.ph863 ], [ %i.afm, %bb.ht ]
  %.182861 = phi i32 [ 0, %.lr.ph863 ], [ %i.afl, %bb.ht ]
  %71 = sext i32 %i.ael to i64
  %i.aem = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.205, i32 noundef 2674, i64 noundef range(i64 -2147483648, 2147483648) %71, i64 noundef 4)
  store ptr %i.aem, ptr %i.aec, align 8, !tbaa !159
  %i.aen = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.205, i32 noundef 2675, i64 noundef range(i64 -2147483648, 2147483648) %i.aeo, i64 noundef 4)
  store ptr %i.aep, ptr %i.aed, align 8, !tbaa !159
  %i.aeq = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.205, i32 noundef 2676, i64 noundef range(i64 -2147483648, 2147483648) %i.aer, i64 noundef 4)
  store ptr %i.aes, ptr %i.aee, align 8, !tbaa !159
  %i.aet = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.205, i32 noundef 2677, i64 noundef range(i64 -2147483648, 2147483648) %i.aeu, i64 noundef 4)
  store ptr %i.aev, ptr %i.aef, align 8, !tbaa !160
  %i.aew = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.aex = sext i32 %i.aew to i64
  %i.aey = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.205, i32 noundef 2678, i64 noundef range(i64 -2147483648, 2147483648) %i.aex, i64 noundef 4)
  store ptr %i.aey, ptr %i.aeg, align 8, !tbaa !160
  %i.aez = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.afa = sext i32 %i.aez to i64
  %i.afb = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.205, i32 noundef 2679, i64 noundef range(i64 -2147483648, 2147483648) %i.afa, i64 noundef 4)
  store ptr %i.afb, ptr %i.aeh, align 8, !tbaa !160
  %i.afc = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.afd = sext i32 %i.afc to i64
  %i.afe = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.205, i32 noundef 2680, i64 noundef range(i64 -2147483648, 2147483648) %i.afd, i64 noundef 4)
  store ptr %i.afe, ptr %i.aei, align 8, !tbaa !159
  %i.aff = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.afg = sext i32 %i.aff to i64
  %i.afh = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.205, i32 noundef 2681, i64 noundef range(i64 -2147483648, 2147483648) %i.afg, i64 noundef 4)
  store ptr %i.afh, ptr %i.aej, align 8, !tbaa !159
  %i.afi = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.afj = sext i32 %i.afi to i64
  %i.afk = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.205, i32 noundef 2682, i64 noundef range(i64 -2147483648, 2147483648) %i.afj, i64 noundef 4)
  store ptr %i.afk, ptr %i.aek, align 8, !tbaa !159
  %i.afl = add nuw nsw i32 %.182861, 1            ; 2 uses
  %i.afm = load i32, ptr %i.ax, align 4, !tbaa !9 ; 3 uses
  %i.afn = icmp slt i32 %i.afl, %i.afm
  br i1 %i.afn, label %bb.ht, label %._crit_edge864, !llvm.loop !161

._crit_edge864:                                   ; preds = %bb.ht, %bb.hs
  %.lcssa858 = phi i32 [ %i.aea, %bb.hs ], [ %i.afm, %bb.ht ]
  %i.afo = sext i32 %.lcssa858 to i64
  %i.afp = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.205, i32 noundef 2685, i64 noundef range(i64 -2147483648, 2147483648) %i.afo, i64 noundef 8) ; 6 uses
  %i.afq = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.afr = icmp sgt i32 %i.afq, 0
  br i1 %i.afr, label %.lr.ph868, label %._crit_edge869

.lr.ph868:                                        ; preds = %._crit_edge864, %.lr.ph868
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %.lr.ph868 ], [ 0, %._crit_edge864 ] ; 2 uses
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %indvars.iv1046
  %i.aft = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.205, i32 noundef 2688, i64 noundef 4096, i64 noundef 1)
  store ptr %i.aft, ptr %i.afs, align 8, !tbaa !16
  %indvars.iv.next1047 = add nuw nsw i64 %indvars.iv1046, 1 ; 2 uses
  %i.afu = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.afv = sext i32 %i.afu to i64
  %i.afw = icmp slt i64 %indvars.iv.next1047, %i.afv
  br i1 %i.afw, label %.lr.ph868, label %._crit_edge869, !llvm.loop !162

._crit_edge869:                                   ; preds = %.lr.ph868, %._crit_edge864
  %i.afx = call noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.66, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
  %i.afy = load i64, ptr %i.bb, align 8, !tbaa !14
  %i.afz = load i32, ptr %i.be, align 4, !tbaa !9
  %i.aga = sext i32 %i.afz to i64
  %i.agb = add nsw i64 %i.afy, %i.aga             ; 4 uses
  %i.agc = load i64, ptr %i.bd, align 8, !tbaa !14 ; 3 uses
  %i.agd = load float, ptr %i.ay, align 4, !tbaa !10 ; 5 uses
  %i.age = load float, ptr %i.az, align 4, !tbaa !10 ; 2 uses
  %i.agf = load i8, ptr %i.ba, align 1, !tbaa !12, !range !150, !noundef !151
  %i.agg = trunc nuw i8 %i.agf to i1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  store ptr %i.afx, ptr %i.ag, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @_ZN7t_stateC1Ev(ptr noundef nonnull align 8 dereferenceable(840) %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  invoke void @_ZN10gmx_mtop_tC1Ev(ptr noundef nonnull align 8 dereferenceable(768) %29)
          to label %bb.hu unwind label %bb.hw

bb.hu:                                            ; preds = %._crit_edge869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #25
  %i.agh = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.agi = icmp sgt i32 %i.agh, 1
  %i.agj = select i1 %i.agi, ptr @.str.275, ptr @.str.274
  %i.agk = icmp sgt i64 %i.agb, 1
  %i.agl = select i1 %i.agk, ptr @.str.275, ptr @.str.274
  %i.agm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.311, ptr noundef nonnull %i.agj, ptr noundef nonnull @.str.226, ptr noundef nonnull %i.agl) #25 ; 0 uses
  %i.agn = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.ago = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agn, ptr noundef nonnull %i.ah, i64 noundef %i.agb) #25 ; 0 uses
  %i.agp = icmp sgt i64 %i.agc, 0
  br i1 %i.agp, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  %i.agq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.312, ptr noundef nonnull @.str.226) #25 ; 0 uses
  %i.agr = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.ags = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agr, ptr noundef nonnull %i.ah, i64 noundef %i.agc) #25 ; 0 uses
  %i.agt = add nsw i64 %i.agb, %i.agc
  br label %bb.hx

bb.hw:                                            ; preds = %._crit_edge869
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %bb.lu

bb.hx:                                            ; preds = %bb.hv, %bb.hu
  %.0231.i = phi i64 [ %i.agt, %bb.hv ], [ %i.agb, %bb.hu ]
  %i.agv = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.agw = call i64 @fwrite(ptr nonnull @.str.313, i64 2, i64 1, ptr %i.agv) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZN10t_inputrecC1Ev(ptr noundef nonnull align 8 dereferenceable(888) %30)
          to label %bb.hy unwind label %bb.ig

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i8 noundef zeroext 2)
          to label %bb.hz unwind label %bb.ih

bb.hz:                                            ; preds = %bb.hy
  invoke void @_Z14read_tpx_stateRKNSt10filesystem7__cxx114pathEP10t_inputrecP7t_stateP10gmx_mtop_t(ptr dead_on_unwind nonnull writable sret(%struct.PartialDeserializedTprFile) align 8 %31, ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull %30, ptr noundef nonnull %28, ptr noundef nonnull %29)
          to label %bb.ia unwind label %bb.ii

bb.ia:                                            ; preds = %bb.hz
  %i.agx = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i.i151 = icmp eq ptr %i.agy, null
  br i1 %.not.i.i.i.i.i151, label %_ZN26PartialDeserializedTprFileD2Ev.exit.i152, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.agz = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !44
  %i.ahb = ptrtoint ptr %i.aha to i64
  %i.ahc = ptrtoint ptr %i.agy to i64
  %i.ahd = sub i64 %i.ahb, %i.ahc
  call void @_ZdlPvm(ptr noundef nonnull %i.agy, i64 noundef %i.ahd) #29
  br label %_ZN26PartialDeserializedTprFileD2Ev.exit.i152

_ZN26PartialDeserializedTprFileD2Ev.exit.i152:    ; preds = %bb.ib, %bb.ia
  %i.ahe = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 2 uses
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i153 = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i.i.i153, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i154, label %bb.ic

bb.ic:                                            ; preds = %_ZN26PartialDeserializedTprFileD2Ev.exit.i152
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ahe, ptr noundef nonnull %i.ahf) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i154

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i154: ; preds = %bb.ic, %_ZN26PartialDeserializedTprFileD2Ev.exit.i152
  %i.ahg = load ptr, ptr %32, align 8, !tbaa !47  ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ahi = icmp eq ptr %i.ahg, %i.ahh
  br i1 %i.ahi, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i154
  %i.ahj = load i64, ptr %i.ahh, align 8, !tbaa !36
  %i.ahk = add i64 %i.ahj, 1
  call void @_ZdlPvm(ptr noundef %i.ahg, i64 noundef %i.ahk) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i156

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i156:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.ahl = getelementptr inbounds nuw i8, ptr %30, i64 364 ; 7 uses
  %.val.i = load i32, ptr %i.ahl, align 4, !tbaa !163 ; 2 uses
  switch i32 %.val.i, label %_ZL8usingPmeRK22CoulombInteractionType.exit.i [
    i32 3, label %bb.in
    i32 14, label %bb.in
    i32 13, label %bb.in
    i32 15, label %bb.in
    i32 5, label %bb.in
  ]

_ZL8usingPmeRK22CoulombInteractionType.exit.i:    ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i156
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 1 dereferenceable(63) @.str.205, i8 noundef zeroext 2)
          to label %bb.id unwind label %bb.ik

bb.id:                                            ; preds = %_ZL8usingPmeRK22CoulombInteractionType.exit.i
  %i.ahm = invoke noundef ptr @_Z17enumValueToString22CoulombInteractionType(i32 noundef 3)
          to label %bb.ie unwind label %bb.il

bb.ie:                                            ; preds = %bb.id
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 953, ptr noundef nonnull @.str.314, ptr noundef %i.ahm) #26
          to label %bb.if unwind label %bb.il

bb.if:                                            ; preds = %bb.ie
  unreachable

bb.ig:                                            ; preds = %bb.hx
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.ih:                                            ; preds = %bb.hy
  %i.aho = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

bb.ii:                                            ; preds = %bb.hz
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %32) #25
  br label %bb.ij
end_hunk_0
begin_hunk_1_@_Z12gmx_tune_pmeiPPc:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.i: ; preds = %bb.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289.i, %bb.kx
  %.pn247.pn.pn.i = phi { ptr, i32 } [ %i.asu, %bb.kx ], [ %.pn247.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289.i ], [ %.pn247.pn.i, %bb.la ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %38) #25
  br label %bb.lb

bb.lb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.i, %bb.kw
  %.pn247.pn.pn.pn.i = phi { ptr, i32 } [ %.pn247.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.i ], [ %i.ast, %bb.kw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.ls

bb.lc:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit285.i
  %i.atf = call i64 @fwrite(ptr nonnull @.str.335, i64 22, i64 1, ptr %i.asq) ; 0 uses
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 8 dereferenceable(8) %i.arr, i8 noundef zeroext 2)
          to label %bb.le unwind label %bb.li

bb.le:                                            ; preds = %bb.ld
  invoke void @_Z15write_tpx_stateRKNSt10filesystem7__cxx114pathEPK10t_inputrecPK7t_stateRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull %30, ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(768) %29)
          to label %bb.lf unwind label %bb.lj

bb.lf:                                            ; preds = %bb.le
  %i.atg = load ptr, ptr %i.aoi, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i292.i = icmp eq ptr %i.atg, null
  br i1 %.not.i.i.i292.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i293.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aoi, ptr noundef nonnull %i.atg) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i293.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i293.i: ; preds = %bb.lg, %bb.lf
  %i.ath = load ptr, ptr %40, align 8, !tbaa !47  ; 2 uses
  %i.ati = icmp eq ptr %i.ath, %i.aoj
  br i1 %i.ati, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit296.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i293.i
  %i.atj = load i64, ptr %i.aoj, align 8, !tbaa !36
  %i.atk = add i64 %i.atj, 1
  call void @_ZdlPvm(ptr noundef %i.ath, i64 noundef %i.atk) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit296.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit296.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i293.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  %i.atl = fpext float %.1.i163 to double
  %i.atm = load float, ptr %i.ahv, align 8, !tbaa !153
  %i.atn = fpext float %i.atm to double
  %i.ato = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.336, i32 noundef %i.arc, double noundef %i.atl, double noundef %i.atn) #25 ; 0 uses
  %i.atp = load i32, ptr %i.aly, align 4, !tbaa !174
  %i.atq = load i32, ptr %i.amd, align 8, !tbaa !175
  %i.atr = load i32, ptr %i.ame, align 4, !tbaa !176
  %i.ats = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.337, i32 noundef %i.atp, i32 noundef %i.atq, i32 noundef %i.atr) #25 ; 0 uses
  %i.att = load ptr, ptr %i.any, align 8, !tbaa !172
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %indvars.iv.i161
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !10
  %i.atw = fpext float %i.atv to double
  %i.atx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.338, double noundef %i.atw) #25 ; 0 uses
  %i.aty = load i32, ptr %i.amo, align 8, !tbaa !234
  switch i32 %i.aty, label %bb.ll [
    i32 5, label %bb.lh
    i32 0, label %bb.lh
  ]

bb.lh:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit296.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit296.i
  %i.atz = load float, ptr %i.aiq, align 4, !tbaa !238
  %i.aua = fpext float %i.atz to double
  %i.aub = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.339, double noundef %i.aua) #25 ; 0 uses
  br label %bb.ll

bb.li:                                            ; preds = %bb.ld
  %i.auc = landingpad { ptr, i32 }
          cleanup
  br label %bb.lk

bb.lj:                                            ; preds = %bb.le
  %i.aud = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %40) #25
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %.pn253.i = phi { ptr, i32 } [ %i.aud, %bb.lj ], [ %i.auc, %bb.li ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %bb.ls

bb.ll:                                            ; preds = %bb.lh, %_ZNSt10filesystem7__cxx114pathD2Ev.exit296.i
  %i.aue = load i32, ptr %i.ahl, align 4, !tbaa !166
  %i.auf = and i32 %i.aue, -2
  %switch269.i = icmp eq i32 %i.auf, 14
  br i1 %switch269.i, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.aug = load float, ptr %i.ahx, align 4, !tbaa !165
  %i.auh = fpext float %i.aug to double
  %i.aui = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.339, double noundef %i.auh) #25 ; 0 uses
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %i.auj = load ptr, ptr %i.arr, align 8, !tbaa !16
  %i.auk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.340, ptr noundef %i.auj) #25 ; 0 uses
  %i.aul = load float, ptr %i.aiq, align 4, !tbaa !238
  %i.aum = fpext float %i.aul to double
  %i.aun = load ptr, ptr %i.ant, align 8, !tbaa !239
  %i.auo = load float, ptr %i.aun, align 4, !tbaa !10
  %i.aup = fpext float %i.auo to double
  %i.auq = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.aum, double noundef %i.aup, double noundef f0x3E80000000000000)
          to label %bb.lo unwind label %.loopexit.i

bb.lo:                                            ; preds = %bb.ln
  br i1 %i.auq, label %bb.lp, label %.thread.i

bb.lp:                                            ; preds = %bb.lo
  %i.aur = load float, ptr %i.ahx, align 4, !tbaa !165
  %i.aus = fpext float %i.aur to double
  %i.aut = load ptr, ptr %i.anx, align 8, !tbaa !243
  %i.auu = load float, ptr %i.aut, align 4, !tbaa !10
  %i.auv = fpext float %i.auu to double
  %i.auw = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.aus, double noundef %i.auv, double noundef f0x3E80000000000000)
          to label %bb.lq unwind label %.loopexit.i

bb.lq:                                            ; preds = %bb.lp
  br i1 %i.auw, label %bb.lr, label %.thread.i

bb.lr:                                            ; preds = %bb.lq
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %i.aux = load i32, ptr %i.ax, align 4, !tbaa !9 ; 2 uses
  %i.auy = sext i32 %i.aux to i64
  %i.auz = icmp slt i64 %indvars.iv.next.i166, %i.auy
  br i1 %i.auz, label %bb.jv, label %._crit_edge.i167, !llvm.loop !253

.thread.i:                                        ; preds = %bb.lq, %bb.lo
  %indvars.iv.next371.i = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %i.ava = load i32, ptr %i.ax, align 4, !tbaa !9 ; 2 uses
  %i.avb = sext i32 %i.ava to i64
  %i.avc = icmp slt i64 %indvars.iv.next371.i, %i.avb
  br i1 %i.avc, label %.outer.i, label %._crit_edge.thread.i165, !llvm.loop !253

._crit_edge.i167:                                 ; preds = %bb.lr
  br i1 %.0212326.ph.i, label %._crit_edge.thread.i165, label %_ZL19make_benchmark_tprsPKcPPcllffbPKiP13PmeTuneInputsP8_IO_FILE.exit

._crit_edge.thread.i165:                          ; preds = %.thread.i, %._crit_edge.i167
  %i.avd = call i64 @fwrite(ptr nonnull @.str.341, i64 179, i64 1, ptr %i.qz) ; 0 uses
  br label %_ZL19make_benchmark_tprsPKcPPcllffbPKiP13PmeTuneInputsP8_IO_FILE.exit

bb.ls:                                            ; preds = %bb.lk, %bb.lb, %bb.jb, %bb.iu, %bb.im, %.loopexit.split-lp.i, %.loopexit.i, %bb.ij
  %.pn255.pn.i = phi { ptr, i32 } [ %.pn255.i, %bb.jb ], [ %.pn.i150, %bb.ij ], [ %.pn253.i, %bb.lk ], [ %.pn247.pn.pn.pn.i, %bb.lb ], [ %.pn244.i, %bb.iu ], [ %.pn242.i, %bb.im ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN10t_inputrecD1Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888) %30) #25
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.ig
  %.pn255.pn.pn.i = phi { ptr, i32 } [ %.pn255.pn.i, %bb.ls ], [ %i.ahn, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #25
  call void @_ZN10gmx_mtop_tD1Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %29) #25
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.hw
  %.pn255.pn.pn.pn.i = phi { ptr, i32 } [ %.pn255.pn.pn.i, %bb.lt ], [ %i.agu, %bb.hw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(840) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %common.resume

_ZL19make_benchmark_tprsPKcPPcllffbPKiP13PmeTuneInputsP8_IO_FILE.exit: ; preds = %bb.ju, %._crit_edge.i167, %._crit_edge.thread.i165
  %i.ave = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.avf = call i32 @fflush(ptr noundef %i.ave)   ; 0 uses
  %i.avg = call i32 @fflush(ptr noundef %i.qz)    ; 0 uses
  call void @_ZN10t_inputrecD1Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888) %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #25
  call void @_ZN10gmx_mtop_tD1Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(840) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  %i.avh = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.avi = sext i32 %i.avh to i64
  %i.avj = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.205, i32 noundef 2707, i64 noundef range(i64 -2147483648, 2147483648) %i.avi, i64 noundef 8) ; 7 uses
  %i.avk = load i8, ptr %i.bq, align 1, !tbaa !12, !range !150, !noundef !151
  %i.avl = trunc nuw i8 %i.avk to i1
  br i1 %i.avl, label %bb.lv, label %bb.aaa

bb.lv:                                            ; preds = %_ZL19make_benchmark_tprsPKcPPcllffbPKiP13PmeTuneInputsP8_IO_FILE.exit
  %i.avm = load ptr, ptr %i.bm, align 16, !tbaa !16 ; 3 uses
  %.not103 = icmp eq ptr %i.avm, null
  br i1 %.not103, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.343, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ12gmx_tune_pmeiPPcENK3$_0clEv", ptr noundef nonnull @.str.205, i32 noundef 2711) #26
  unreachable

bb.lx:                                            ; preds = %bb.lv
  %i.avn = load i32, ptr %i.aw, align 4, !tbaa !9 ; 3 uses
  %i.avo = load i32, ptr %i.at, align 4, !tbaa !9 ; 10 uses
  %i.avp = load i32, ptr %i.as, align 4, !tbaa !9 ; 8 uses
  %i.avq = load i32, ptr %i.ax, align 4, !tbaa !9 ; 5 uses
  %i.avr = load ptr, ptr %i.bi, align 8, !tbaa !16 ; 3 uses
  %i.avs = load i32, ptr %i.be, align 4, !tbaa !9 ; 4 uses
  %i.avt = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.avu = load i8, ptr %i.br, align 1, !tbaa !12, !range !150, !noundef !151
  %i.avv = trunc nuw i8 %i.avu to i1
  %i.avw = load ptr, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #25
  %i.avx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.yo) #27
  %i.avy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #27
  %i.avz = add i64 %i.avy, %i.avx
  %i.awa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.avr) #27
  %i.awb = add i64 %i.avz, %i.awa
  %i.awc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qa) #27
  %i.awd = add i64 %i.awb, %i.awc
  %i.awe = load ptr, ptr %i.afp, align 8, !tbaa !16
  %i.awf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.awe) #27
  %i.awg = add i64 %i.awd, %i.awf
  %i.awh = shl i64 %i.awg, 32                     ; 3 uses
  %sext24.i = add i64 %i.awh, 429496729600
  %i.awi = ashr exact i64 %sext24.i, 32           ; 4 uses
  %i.awj = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.205, i32 noundef 1497, i64 noundef %i.awi, i64 noundef 1) ; 3 uses
  %i.awk = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.205, i32 noundef 1498, i64 noundef %i.awi, i64 noundef 1) ; 5 uses
  br i1 %i.hl, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  %i.awl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awk, ptr noundef nonnull dereferenceable(1) @.str.356, ptr noundef nonnull %i.avr, ptr noundef nonnull %i.bh) #25 ; 0 uses
  br label %bb.ma

bb.lz:                                            ; preds = %bb.lx
  %i.awm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awk, ptr noundef nonnull dereferenceable(1) @.str.357, ptr noundef nonnull %i.yo, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.avr) #25 ; 0 uses
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.ly
  %i.awn = icmp slt i32 %i.avn, -1
  br i1 %i.awn, label %bb.mb, label %bb.ml

bb.mb:                                            ; preds = %bb.ma
  %i.awo = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.avm, ptr noundef nonnull dereferenceable(4) @.str.154) #27
  %.not.i.i199 = icmp eq i32 %i.awo, 0
  br i1 %.not.i.i199, label %bb.me, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.awp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.avm, ptr noundef nonnull dereferenceable(7) @.str.155) #27
  %.not49.i.i = icmp eq i32 %i.awp, 0
  br i1 %.not49.i.i, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.awq = icmp slt i32 %i.avp, 65
  br i1 %i.awq, label %bb.me, label %.thread.i.i200

.thread.i.i200:                                   ; preds = %bb.md
  %i.awr = icmp samesign ult i32 %i.avp, 128
  %spec.select = select i1 %i.awr, i32 2, i32 3
  br label %spec.select70.i.si.unfold.false.i

bb.me:                                            ; preds = %bb.md, %bb.mc, %bb.mb
  %.042.i.i = phi i32 [ 3, %bb.mc ], [ 1, %bb.mb ], [ 1, %bb.md ]
  %i.aws = icmp sgt i32 %i.avp, 2
  br i1 %i.aws, label %spec.select70.i.si.unfold.false.i, label %.thread.i208

.thread.i208:                                     ; preds = %bb.me
  %i.awt = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.382, ptr noundef nonnull @.str.205, i32 noundef 1336, i64 noundef range(i64 -2147483648, 2147483648) 1, i64 noundef 4)
  br label %._crit_edge.i.i

spec.select70.i.si.unfold.false.i:                ; preds = %.thread.i.i200, %bb.me
  %.04253.i.i = phi i32 [ %spec.select, %.thread.i.i200 ], [ %.042.i.i, %bb.me ] ; 2 uses
  %i.awu = sub i32 %.0482, %.086
  %i.awv = icmp eq i32 %.086, 0
  %spec.select.v.i.i = select i1 %i.awv, i32 2, i32 3
  %spec.select.i.i202 = add nsw i32 %spec.select.v.i.i, %i.awu ; 3 uses
  %i.aww = sext i32 %spec.select.i.i202 to i64
  %i.awx = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.382, ptr noundef nonnull @.str.205, i32 noundef 1336, i64 noundef range(i64 -2147483648, 2147483648) %i.aww, i64 noundef 4) ; 3 uses
  %i.awy = icmp sgt i32 %spec.select.i.i202, 2
  br i1 %i.awy, label %.lr.ph.preheader.i.i205, label %._crit_edge.i.i

.lr.ph.preheader.i.i205:                          ; preds = %spec.select70.i.si.unfold.false.i
  %i.awz = add nsw i32 %spec.select.i.i202, -3
  %i.axa = icmp eq i32 %.04253.i.i, 3
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %bb.mk, %.lr.ph.preheader.i.i205
  %.056.i.i = phi i32 [ %i.axw, %bb.mk ], [ 0, %.lr.ph.preheader.i.i205 ] ; 4 uses
  %.04355.i.i = phi i32 [ %.144.i.i, %bb.mk ], [ 0, %.lr.ph.preheader.i.i205 ] ; 3 uses
  %i.axb = sub nsw i32 %.0482, %.056.i.i          ; 5 uses
  %i.axc = sub nsw i32 %i.avp, %i.axb             ; 3 uses
  br i1 %i.axa, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %.lr.ph.i.i206
  %i.axd = sitofp i32 %i.axc to double
  %i.axe = call noundef double @cbrt(double noundef %i.axd) #31
  %i.axf = fptosi double %i.axe to i32
  br label %bb.mg

bb.mg:                                            ; preds = %.lr.ph.i.i206, %bb.mf
  %.046.i.i = phi i32 [ %i.axf, %bb.mf ], [ %.04253.i.i, %.lr.ph.i.i206 ]
  %.0.i.i.i.i = call noundef i32 @llvm.abs.i32(i32 %i.axc, i1 true) ; 2 uses
  %.0.i4.i.i.i = call noundef i32 @llvm.abs.i32(i32 %i.axb, i1 true) ; 2 uses
  %i.axg = icmp eq i32 %i.avp, %i.axb
  br i1 %i.axg, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.i.i, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.axh = icmp eq i32 %.0482, %.056.i.i
  br i1 %i.axh, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.i.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.axi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.axc, i1 true) ; 2 uses
  %i.axj = lshr exact i32 %.0.i.i.i.i, %i.axi     ; 3 uses
  %i.axk = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.axb, i1 true) ; 2 uses
  %i.axl = lshr exact i32 %.0.i4.i.i.i, %i.axk    ; 3 uses
  %i.axm = call i32 @llvm.umin.i32(i32 %i.axi, i32 %i.axk)
  %spec.select34.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.axj, i32 %i.axl) ; 2 uses
  %i.axn = icmp eq i32 %i.axj, %i.axl
  br i1 %i.axn, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.mi
  %spec.select.lcssa.i.i.i.i = phi i32 [ %spec.select34.i.i.i.i, %bb.mi ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.axo = shl i32 %spec.select.lcssa.i.i.i.i, %i.axm
  br label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.mi, %.lr.ph.i.i.i.i
  %spec.select37.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select34.i.i.i.i, %bb.mi ] ; 4 uses
  %.02736.i.i.i.i = phi i32 [ %i.axr, %.lr.ph.i.i.i.i ], [ %i.axl, %bb.mi ]
  %.02835.i.i.i.i = phi i32 [ %spec.select37.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.axj, %bb.mi ]
  %spec.select33.i.i.i.i = call i32 @llvm.umax.i32(i32 %.02835.i.i.i.i, i32 %.02736.i.i.i.i)
  %i.axp = sub i32 %spec.select33.i.i.i.i, %spec.select37.i.i.i.i ; 2 uses
  %i.axq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.axp, i1 true)
  %i.axr = lshr exact i32 %i.axp, %i.axq          ; 3 uses
  %spec.select.i.i.i.i = call i32 @llvm.umin.i32(i32 %spec.select37.i.i.i.i, i32 %i.axr) ; 2 uses
  %i.axs = icmp eq i32 %spec.select37.i.i.i.i, %i.axr
  br i1 %i.axs, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !254

_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.mh, %bb.mg
  %.0.i5.i.i.i = phi i32 [ %i.axo, %._crit_edge.i.i.i.i ], [ %.0.i4.i.i.i, %bb.mg ], [ %.0.i.i.i.i, %bb.mh ]
  %.not50.i.i = icmp slt i32 %.0.i5.i.i.i, %.046.i.i
  br i1 %.not50.i.i, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.i.i
  %i.axt = sext i32 %.04355.i.i to i64
  %i.axu = getelementptr inbounds [4 x i8], ptr %i.awx, i64 %i.axt
  store i32 %i.axb, ptr %i.axu, align 4, !tbaa !9
  %i.axv = add nsw i32 %.04355.i.i, 1
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.i.i
  %.144.i.i = phi i32 [ %i.axv, %bb.mj ], [ %.04355.i.i, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit.i.i ] ; 2 uses
  %i.axw = add nuw nsw i32 %.056.i.i, 1
  %exitcond.not.i.i207 = icmp eq i32 %.056.i.i, %i.awz
  br i1 %exitcond.not.i.i207, label %._crit_edge.i.i, label %.lr.ph.i.i206, !llvm.loop !255

._crit_edge.i.i:                                  ; preds = %bb.mk, %spec.select70.i.si.unfold.false.i, %.thread.i208
  %i.axx = phi ptr [ %i.awx, %spec.select70.i.si.unfold.false.i ], [ %i.awt, %.thread.i208 ], [ %i.awx, %bb.mk ] ; 4 uses
  %.043.lcssa.i.i = phi i32 [ 0, %spec.select70.i.si.unfold.false.i ], [ 0, %.thread.i208 ], [ %.144.i.i, %bb.mk ] ; 4 uses
  %i.axy = add nsw i32 %.043.lcssa.i.i, 2         ; 2 uses
  %i.axz = sext i32 %.043.lcssa.i.i to i64
  %i.aya = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.axz ; 2 uses
  store i32 0, ptr %i.aya, align 4, !tbaa !9
  %i.ayb = getelementptr i8, ptr %i.aya, i64 4
  store i32 -1, ptr %i.ayb, align 4, !tbaa !9
  %i.ayc = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.ayd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ayc, ptr noundef nonnull @.str.384, i32 noundef %i.axy) #30 ; 0 uses
  %i.aye = icmp sgt i32 %.043.lcssa.i.i, -1
  %i.ayf = add i32 %.043.lcssa.i.i, 1             ; 2 uses
  br i1 %i.aye, label %.lr.ph59.i.i.preheader, label %._crit_edge.._crit_edge60_crit_edge.i.i

.lr.ph59.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.ayg = zext i32 %i.ayf to i64                 ; 2 uses
  br label %.lr.ph59.i.i

._crit_edge.._crit_edge60_crit_edge.i.i:          ; preds = %._crit_edge.i.i
  %.pre.i.i = sext i32 %i.ayf to i64
  br label %_ZL14make_npme_listPKcPiPS1_iii.exit.i

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.preheader, %.lr.ph59.i.i
  %indvars.iv.i.i203 = phi i64 [ %indvars.iv.next.i.i204, %.lr.ph59.i.i ], [ 0, %.lr.ph59.i.i.preheader ] ; 2 uses
  %i.ayh = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %indvars.iv.i.i203
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !9
  %i.ayk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ayh, ptr noundef nonnull @.str.385, i32 noundef %i.ayj) #30 ; 0 uses
  %indvars.iv.next.i.i204 = add nuw nsw i64 %indvars.iv.i.i203, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i204, %i.ayg
  br i1 %exitcond.not, label %_ZL14make_npme_listPKcPiPS1_iii.exit.i, label %.lr.ph59.i.i, !llvm.loop !256

_ZL14make_npme_listPKcPiPS1_iii.exit.i:           ; preds = %.lr.ph59.i.i, %._crit_edge.._crit_edge60_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge.._crit_edge60_crit_edge.i.i ], [ %i.ayg, %.lr.ph59.i.i ]
  %i.ayl = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.aym = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %.pre-phi.i.i
  %i.ayn = load i32, ptr %i.aym, align 4, !tbaa !9
  %i.ayo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ayl, ptr noundef nonnull @.str.386, i32 noundef %i.ayn) #30 ; 0 uses
  br label %bb.mm

bb.ml:                                            ; preds = %bb.ma
  %i.ayp = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.205, i32 noundef 1518, i64 noundef 1, i64 noundef 4) ; 2 uses
  store i32 %i.avn, ptr %i.ayp, align 4, !tbaa !9
  %i.ayq = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.ayr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ayq, ptr noundef nonnull @.str.359, i32 noundef %i.avn) #30 ; 0 uses
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %_ZL14make_npme_listPKcPiPS1_iii.exit.i
  %.0483 = phi i32 [ %i.axy, %_ZL14make_npme_listPKcPiPS1_iii.exit.i ], [ 1, %bb.ml ] ; 8 uses
  %.0.i170 = phi ptr [ %i.axx, %_ZL14make_npme_listPKcPiPS1_iii.exit.i ], [ %i.ayp, %bb.ml ]
  %i.ays = icmp eq i32 %i.avo, 0
  br i1 %i.ays, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.ayt = call i64 @fwrite(ptr nonnull @.str.360, i64 55, i64 1, ptr %i.qz) ; 0 uses
  %i.ayu = call noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.qz) ; 0 uses
  %i.ayv = call noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.60, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
  call fastcc void @_ZL8finalizePKc(ptr noundef %i.ayv)
  call void @exit(i32 noundef 0) #32
  unreachable

bb.mo:                                            ; preds = %bb.mm
  %i.ayw = icmp sgt i32 %i.avq, 0
  br i1 %i.ayw, label %.lr.ph.i166.i, label %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit

.lr.ph.i166.i:                                    ; preds = %bb.mo
  %i.ayx = sext i32 %.0483 to i64                 ; 4 uses
  %i.ayy = icmp sgt i32 %.0483, 0                 ; 2 uses
  %72 = sext i32 %i.avo to i64                    ; 3 uses
  br i1 %i.ayy, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i166.i
  %wide.trip.count.i.i = zext nneg i32 %i.avq to i64 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i166.i
  %i.ayz = icmp sgt i32 %i.avo, 0
  %wide.trip.count49.i.i = zext nneg i32 %i.avq to i64 ; 4 uses
  br i1 %i.ayz, label %.preheader.lr.ph.us.us.preheader.i.i, label %.preheader.lr.ph.us.i.i

.preheader.lr.ph.us.us.preheader.i.i:             ; preds = %.lr.ph.split.us.i.i
  %wide.trip.count44.i.i = zext nneg i32 %.0483 to i64
  br label %.preheader.lr.ph.us.us.i.i

.preheader.lr.ph.us.us.i.i:                       ; preds = %._crit_edge28.us.us.i.i, %.preheader.lr.ph.us.us.preheader.i.i
  %indvars.iv46.i.i = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader.i.i ], [ %indvars.iv.next47.i.i, %._crit_edge28.us.us.i.i ] ; 2 uses
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %indvars.iv46.i.i ; 4 uses
  %i.azb = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.205, i32 noundef 1381, i64 noundef range(i64 -2147483648, 2147483648) %i.ayx, i64 noundef 80)
  store ptr %i.azb, ptr %i.aza, align 8, !tbaa !257
  br label %.preheader.us.us.i.i

bb.mp:                                            ; preds = %.preheader.us.us.i.i, %bb.mp
  %.02326.us.us.i.i = phi i32 [ 0, %.preheader.us.us.i.i ], [ %i.azo, %bb.mp ]
  %i.azc = load ptr, ptr %i.aza, align 8, !tbaa !257
  %i.azd = getelementptr inbounds nuw [80 x i8], ptr %i.azc, i64 %indvars.iv41.i.i
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 24
  %i.azf = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.388, ptr noundef nonnull @.str.205, i32 noundef 1386, i64 noundef range(i64 -2147483648, 2147483648) %72, i64 noundef 8)
  store ptr %i.azf, ptr %i.aze, align 8, !tbaa !258
  %i.azg = load ptr, ptr %i.aza, align 8, !tbaa !257
  %i.azh = getelementptr inbounds nuw [80 x i8], ptr %i.azg, i64 %indvars.iv41.i.i
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 40
  %i.azj = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.205, i32 noundef 1387, i64 noundef range(i64 -2147483648, 2147483648) %72, i64 noundef 4)
  store ptr %i.azj, ptr %i.azi, align 8, !tbaa !159
  %i.azk = load ptr, ptr %i.aza, align 8, !tbaa !257
  %i.azl = getelementptr inbounds nuw [80 x i8], ptr %i.azk, i64 %indvars.iv41.i.i
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 56
  %i.azn = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.390, ptr noundef nonnull @.str.205, i32 noundef 1388, i64 noundef range(i64 -2147483648, 2147483648) %72, i64 noundef 4)
  store ptr %i.azn, ptr %i.azm, align 8, !tbaa !159
  %i.azo = add nuw nsw i32 %.02326.us.us.i.i, 1   ; 2 uses
  %exitcond40.not.i.i = icmp eq i32 %i.azo, %i.avo
  br i1 %exitcond40.not.i.i, label %._crit_edge.us.us.i.i, label %bb.mp, !llvm.loop !260

.preheader.us.us.i.i:                             ; preds = %._crit_edge.us.us.i.i, %.preheader.lr.ph.us.us.i.i
  %indvars.iv41.i.i = phi i64 [ 0, %.preheader.lr.ph.us.us.i.i ], [ %indvars.iv.next42.i.i, %._crit_edge.us.us.i.i ] ; 4 uses
  br label %bb.mp

._crit_edge.us.us.i.i:                            ; preds = %bb.mp
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %indvars.iv.next42.i.i, %wide.trip.count44.i.i
  br i1 %exitcond45.not.i.i, label %._crit_edge28.us.us.i.i, label %.preheader.us.us.i.i, !llvm.loop !261

._crit_edge28.us.us.i.i:                          ; preds = %._crit_edge.us.us.i.i
  %indvars.iv.next47.i.i = add nuw nsw i64 %indvars.iv46.i.i, 1 ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %indvars.iv.next47.i.i, %wide.trip.count49.i.i
  br i1 %exitcond50.not.i.i, label %.lr.ph897.i, label %.preheader.lr.ph.us.us.i.i, !llvm.loop !262

.preheader.lr.ph.us.i.i:                          ; preds = %.lr.ph.split.us.i.i, %.preheader.lr.ph.us.i.i
  %indvars.iv35.i.i = phi i64 [ %indvars.iv.next36.i.i, %.preheader.lr.ph.us.i.i ], [ 0, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.azp = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %indvars.iv35.i.i
  %i.azq = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.205, i32 noundef 1381, i64 noundef range(i64 -2147483648, 2147483648) %i.ayx, i64 noundef 80)
  store ptr %i.azq, ptr %i.azp, align 8, !tbaa !257
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %exitcond39.not.i.i = icmp eq i64 %indvars.iv.next36.i.i, %wide.trip.count49.i.i
  br i1 %exitcond39.not.i.i, label %.lr.ph897.i, label %.preheader.lr.ph.us.i.i, !llvm.loop !262

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.split.preheader.i.i
  %indvars.iv.i167.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i168.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.azr = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %indvars.iv.i167.i
  %i.azs = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.205, i32 noundef 1381, i64 noundef range(i64 -2147483648, 2147483648) %i.ayx, i64 noundef 80)
  store ptr %i.azs, ptr %i.azr, align 8, !tbaa !257
  %indvars.iv.next.i168.i = add nuw nsw i64 %indvars.iv.i167.i, 1 ; 2 uses
  %exitcond.not.i169.i = icmp eq i64 %indvars.iv.next.i168.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i169.i, label %.lr.ph897.i, label %.lr.ph.split.i.i, !llvm.loop !262

.lr.ph897.i:                                      ; preds = %.lr.ph.split.i.i, %.preheader.lr.ph.us.i.i, %._crit_edge28.us.us.i.i
  %wide.trip.count988.i.pre-phi = phi i64 [ %wide.trip.count49.i.i, %.preheader.lr.ph.us.i.i ], [ %wide.trip.count49.i.i, %._crit_edge28.us.us.i.i ], [ %wide.trip.count.i.i, %.lr.ph.split.i.i ]
  %i.azt = mul i32 %i.avq, %i.avo
  %i.azu = mul i32 %i.azt, %.0483
  %.not.i170.i = icmp eq ptr %i.avw, null
  %i.azv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.azx = icmp sgt i32 %i.avo, 0
  %sext.i171 = add i64 %i.awh, 493921239040
  %i.azy = ashr exact i64 %sext.i171, 32
  %sext25.i = add i64 %i.awh, 2576980377600
  %i.azz = ashr exact i64 %sext25.i, 32
  %i.baa = icmp sgt i32 %i.avo, 1                 ; 2 uses
  %i.bab = sitofp i32 %i.azu to double
  %i.bac = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bae = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 5 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bah = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 5 uses
  %.not.i198.i = icmp eq i32 %i.avp, 1
  %i.bai = icmp slt i32 %i.avs, 1                 ; 5 uses
  %i.baj = zext nneg i32 %i.avs to i64
  %i.bak = add nsw i64 %i.avt, %i.baj             ; 10 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.bam = icmp eq i32 %i.avs, 0
  %i.ban = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bap = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 5 uses
  %i.baq = icmp sgt i32 %i.avs, 0
  %i.bar = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 7 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 9 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bau = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 5 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bax = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.baz = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 7 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bbc = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 7 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 9 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bbf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %17, i64 8
  %wide.trip.count.i = zext nneg i32 %i.avo to i64
  %i.bbh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bbj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bbm = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bbp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bbs = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bbv = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bby = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bcb = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  br label %bb.mq

bb.mq:                                            ; preds = %._crit_edge.i173, %.lr.ph897.i
  %indvars.iv986.i = phi i64 [ 0, %.lr.ph897.i ], [ %indvars.iv.next987.pre-phi.i, %._crit_edge.i173 ] ; 5 uses
  %.0145896.i = phi i1 [ true, %.lr.ph897.i ], [ %.1146.lcssa.i, %._crit_edge.i173 ] ; 2 uses
  %.0147895.i = phi i1 [ false, %.lr.ph897.i ], [ %.1148.lcssa.i, %._crit_edge.i173 ] ; 2 uses
  %.0151894.i = phi i32 [ 0, %.lr.ph897.i ], [ %.1152.lcssa.i, %._crit_edge.i173 ] ; 2 uses
  %i.bcc = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %indvars.iv986.i ; 3 uses
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !16
  %i.bce = trunc nuw nsw i64 %indvars.iv986.i to i32 ; 3 uses
  %i.bcf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.361, i32 noundef %i.bce, ptr noundef %i.bcd) #25 ; 0 uses
  %i.bcg = call i64 @fwrite(ptr nonnull @.str.362, i64 59, i64 1, ptr %i.qz) ; 0 uses
  br i1 %i.ayy, label %.lr.ph889.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.mq
  %.pre.i172 = add nuw nsw i64 %indvars.iv986.i, 1
  br label %._crit_edge.i173

.lr.ph889.i:                                      ; preds = %bb.mq
  %i.bch = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %indvars.iv986.i
  %i.bci = add nuw nsw i64 %indvars.iv986.i, 1    ; 2 uses
  %i.bcj = trunc nuw nsw i64 %i.bci to i32
  br label %bb.mr

bb.mr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175, %.lr.ph889.i
  %indvars.iv984.i = phi i64 [ 0, %.lr.ph889.i ], [ %indvars.iv.next985.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ] ; 4 uses
  %.1146888.i = phi i1 [ %.0145896.i, %.lr.ph889.i ], [ %.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ] ; 2 uses
  %.1148887.i = phi i1 [ %.0147895.i, %.lr.ph889.i ], [ %.4.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ] ; 2 uses
  %.1152886.i = phi i32 [ %.0151894.i, %.lr.ph889.i ], [ %.3154.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ] ; 2 uses
  %i.bck = load ptr, ptr %i.bch, align 8, !tbaa !257
  %i.bcl = getelementptr inbounds nuw [80 x i8], ptr %i.bck, i64 %indvars.iv984.i ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  br i1 %.not.i170.i, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull @.str.391, ptr noundef nonnull %i.avw)
  br label %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i

bb.mt:                                            ; preds = %bb.mr
  store ptr %i.azv, ptr %26, align 8, !tbaa !252, !alias.scope !263
  store i64 0, ptr %i.azw, align 8, !tbaa !251, !alias.scope !263
  store i8 0, ptr %i.azv, align 8, !tbaa !36, !alias.scope !263
  br label %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i

_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i:   ; preds = %bb.mt, %bb.ms
  br i1 %i.azx, label %.lr.ph880.i, label %.loopexit49.i

.lr.ph880.i:                                      ; preds = %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %.0.i170, i64 %indvars.iv984.i
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcl, i64 72 ; 3 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcl, i64 24 ; 8 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcl, i64 40 ; 7 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcl, i64 56 ; 8 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcl, i64 16 ; 4 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcl, i64 4
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcl, i64 12
  %i.bcv = and i1 %.1146888.i, %i.avv
  %i.bcw = trunc i64 %indvars.iv984.i to i32
  %i.bcx = add i32 %i.bcw, 1
  br label %bb.mu

bb.mu:                                            ; preds = %bb.wz, %.lr.ph880.i
  %indvars.iv.i177 = phi i64 [ 0, %.lr.ph880.i ], [ %indvars.iv.next.i187, %bb.wz ] ; 26 uses
  %.2879.i = phi i1 [ %i.bcv, %.lr.ph880.i ], [ false, %bb.wz ]
  %.2149878.i = phi i1 [ %.1148887.i, %.lr.ph880.i ], [ %spec.select1076.i, %bb.wz ] ; 2 uses
  %.2153877.i = phi i32 [ %.1152886.i, %.lr.ph880.i ], [ %i.bxx, %bb.wz ] ; 2 uses
  %i.bcy = load i32, ptr %i.bcm, align 4, !tbaa !9
  store i32 %i.bcy, ptr %i.bcl, align 8, !tbaa !266
  %i.bcz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.205, i32 noundef 1557, i64 noundef %i.awi, i64 noundef 1)
          to label %bb.mv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

bb.mv:                                            ; preds = %bb.mu
  store ptr %i.bcz, ptr %i.bcn, align 8, !tbaa !16
  %i.bda = load i32, ptr %i.bcl, align 8, !tbaa !266
  %i.bdb = load ptr, ptr %i.bcc, align 8, !tbaa !16
  %i.bdc = load ptr, ptr %26, align 8, !tbaa !47
  %i.bdd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bcz, ptr noundef nonnull dereferenceable(1) @.str.364, ptr noundef %i.awk, i32 noundef %i.bda, ptr noundef %i.bdb, ptr noundef nonnull %i.qa, ptr noundef %i.bdc) #25 ; 0 uses
  br i1 %.2879.i, label %bb.mw, label %_ZL17make_sure_it_runsPKciP8_IO_FILEPK8t_filenmi.exit.i

bb.mw:                                            ; preds = %bb.mv
  %i.bde = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.365, ptr noundef nonnull @.str.205, i32 noundef 1580, i64 noundef %i.awi, i64 noundef 1)
          to label %_ZL13gmx_snew_implIcEvPKcS1_iRPT_m.exit171.i unwind label %bb.pn ; 2 uses

_ZL13gmx_snew_implIcEvPKcS1_iRPT_m.exit171.i:     ; preds = %bb.mw
  %i.bdf = load ptr, ptr %i.bcc, align 8, !tbaa !16
  %i.bdg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bde, ptr noundef nonnull dereferenceable(1) @.str.366, ptr noundef %i.awk, ptr noundef %i.bdf, ptr noundef nonnull %i.qa) #25 ; 0 uses
  %i.bdh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.205, i32 noundef 1401, i64 noundef %i.azy, i64 noundef 1)
          to label %.noexc.i198 unwind label %bb.pn ; 5 uses

.noexc.i198:                                      ; preds = %_ZL13gmx_snew_implIcEvPKcS1_iRPT_m.exit171.i
  %i.bdi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.392, ptr noundef nonnull @.str.205, i32 noundef 1402, i64 noundef %i.azz, i64 noundef 1)
          to label %.noexc173.i unwind label %bb.pn ; 4 uses

.noexc173.i:                                      ; preds = %.noexc.i198
  %i.bdj = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.bdk = call i64 @fwrite(ptr nonnull @.str.393, i64 69, i64 1, ptr %i.bdj) ; 0 uses
  %i.bdl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bdh, ptr noundef nonnull dereferenceable(1) @.str.394, ptr noundef nonnull %i.bde) #25 ; 0 uses
  %i.bdm = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.bdn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bdm, ptr noundef nonnull @.str.395, ptr noundef nonnull %i.bdh) #25 ; 0 uses
  %i.bdo = invoke noundef i32 @system(ptr noundef nonnull readonly %i.bdh)
          to label %.noexc174.i unwind label %bb.pn ; 2 uses

.noexc174.i:                                      ; preds = %.noexc173.i
  %.not.i172.i = icmp eq i32 %i.bdo, 0
  br i1 %.not.i172.i, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %.noexc174.i
  %i.bdp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bdi, ptr noundef nonnull dereferenceable(1) @.str.396, ptr noundef nonnull %i.bdh) #25 ; 0 uses
  %i.bdq = load ptr, ptr @stderr, align 8, !tbaa !40
  %fputs.i.i = call i32 @fputs(ptr nonnull %i.bdi, ptr %i.bdq) #28 ; 0 uses
  call fastcc void @_ZL8sep_lineP8_IO_FILE(ptr noundef %i.qz)
  %fputs18.i.i = call i32 @fputs(ptr nonnull %i.bdi, ptr %i.qz) ; 0 uses
  call void @exit(i32 noundef %i.bdo) #32
  unreachable

bb.my:                                            ; preds = %.noexc174.i
  %i.bdr = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.bds = call i64 @fwrite(ptr nonnull @.str.397, i64 28, i64 1, ptr %i.bdr) ; 0 uses
  %i.bdt = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.bdu = call i64 @fwrite(ptr nonnull @.str.398, i64 16, i64 1, ptr %i.bdt) ; 0 uses
  %i.bdv = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.116, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
          to label %.noexc175.i unwind label %bb.pn ; 5 uses

.noexc175.i:                                      ; preds = %bb.my
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bdw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bdv) #25 ; 4 uses
  store ptr %i.bbh, ptr %2, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.bdw, ptr %i.a, align 8, !tbaa !14
  %i.bdx = icmp ugt i64 %i.bdw, 15
  br i1 %i.bdx, label %.noexc.i.i.i.i380, label %._crit_edge.i.i.i.i.i373

.noexc.i.i.i.i380:                                ; preds = %.noexc175.i
  %i.bdy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc381 unwind label %bb.pn ; 2 uses

.noexc381:                                        ; preds = %.noexc.i.i.i.i380
  store ptr %i.bdy, ptr %2, align 8, !tbaa !47
  %i.bdz = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.bdz, ptr %i.bbh, align 8, !tbaa !36
  br label %._crit_edge.i.i.i.i.i373

._crit_edge.i.i.i.i.i373:                         ; preds = %.noexc381, %.noexc175.i
  %i.bea = phi ptr [ %i.bdy, %.noexc381 ], [ %i.bbh, %.noexc175.i ] ; 2 uses
  switch i64 %i.bdw, label %bb.na [
    i64 1, label %bb.mz
    i64 0, label %bb.nb
  ]

bb.mz:                                            ; preds = %._crit_edge.i.i.i.i.i373
  %i.beb = load i8, ptr %i.bdv, align 1, !tbaa !36
  store i8 %i.beb, ptr %i.bea, align 1, !tbaa !36
  br label %bb.nb

bb.na:                                            ; preds = %._crit_edge.i.i.i.i.i373
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bea, ptr nonnull align 1 %i.bdv, i64 %i.bdw, i1 false)
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz, %._crit_edge.i.i.i.i.i373
  %i.bec = load i64, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  store i64 %i.bec, ptr %i.bbi, align 8, !tbaa !251
  %i.bed = load ptr, ptr %2, align 8, !tbaa !47
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 %i.bec
  store i8 0, ptr %i.bee, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bbj)
          to label %bb.nc unwind label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc297 unwind label %bb.ne

bb.nd:                                            ; preds = %bb.nb
  %i.bef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i374

bb.ne:                                            ; preds = %bb.nc
end_hunk_1
begin_hunk_2_@_Z12gmx_tune_pmeiPPc:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i: ; preds = %bb.wh
  %i.ceb = load i64, ptr %i.bax, align 8, !tbaa !36
  %i.cec = add i64 %i.ceb, 1
  call void @_ZdlPvm(ptr noundef %i.cdz, i64 noundef %i.cec) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i: ; preds = %bb.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.tail1.thread.i.i

bb.wi:                                            ; preds = %.body279.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit268.i
  %.pn50.pn.i.i = phi { ptr, i32 } [ %.pn50.i.i, %.body279.i ], [ %.pn.i216.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit268.i ]
  %i.ced = load ptr, ptr %20, align 8, !tbaa !47  ; 2 uses
  %i.cee = icmp eq ptr %i.ced, %i.bax
  br i1 %i.cee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i: ; preds = %bb.wi
  %i.cef = load i64, ptr %i.bax, align 8, !tbaa !36
  %i.ceg = add i64 %i.cef, 1
  call void @_ZdlPvm(ptr noundef %i.ced, i64 noundef %i.ceg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i: ; preds = %bb.wi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.wx

sub_02.i.i:                                       ; preds = %bb.vd
  br i1 %.not.i213.i, label %.tail1.i.i, label %.tail1.thread.i.i

.tail1.i.i:                                       ; preds = %sub_02.i.i
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.bye, i64 1
  %i.cei = load i8, ptr %i.ceh, align 1
  %i.cej = icmp eq i8 %i.cei, 98
  br i1 %i.cej, label %bb.wj, label %.tail1.thread.i.i

bb.wj:                                            ; preds = %.tail1.i.i
  %i.cek = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull %i.bye, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
          to label %.noexc230.i unwind label %.loopexit.i189

.noexc230.i:                                      ; preds = %bb.wj
  br i1 %i.cek, label %bb.wl, label %bb.wk

bb.wk:                                            ; preds = %.noexc230.i
  %i.cel = invoke noundef zeroext i1 @_Z11is_optionalPK8t_filenm(ptr noundef nonnull %i.byc)
          to label %.noexc231.i unwind label %.loopexit.i189

.noexc231.i:                                      ; preds = %bb.wk
  br i1 %i.cel, label %.tail1.thread.i.i, label %bb.wl

bb.wl:                                            ; preds = %.noexc231.i, %.noexc230.i
  %i.cem = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull %i.bye, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
          to label %.noexc232.i unwind label %.loopexit.i189 ; 5 uses

.noexc232.i:                                      ; preds = %bb.wl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cen = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cem) #25 ; 4 uses
  store ptr %i.bbz, ptr %8, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i64 %i.cen, ptr %i.g, align 8, !tbaa !14
  %i.ceo = icmp ugt i64 %i.cen, 15
  br i1 %i.ceo, label %.noexc.i.i.i.i308, label %._crit_edge.i.i.i.i.i301

.noexc.i.i.i.i308:                                ; preds = %.noexc232.i
  %i.cep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc309 unwind label %.loopexit.i189 ; 2 uses

.noexc309:                                        ; preds = %.noexc.i.i.i.i308
  store ptr %i.cep, ptr %8, align 8, !tbaa !47
  %i.ceq = load i64, ptr %i.g, align 8, !tbaa !14
  store i64 %i.ceq, ptr %i.bbz, align 8, !tbaa !36
  br label %._crit_edge.i.i.i.i.i301

._crit_edge.i.i.i.i.i301:                         ; preds = %.noexc309, %.noexc232.i
  %i.cer = phi ptr [ %i.cep, %.noexc309 ], [ %i.bbz, %.noexc232.i ] ; 2 uses
  switch i64 %i.cen, label %bb.wn [
    i64 1, label %bb.wm
    i64 0, label %bb.wo
  ]

bb.wm:                                            ; preds = %._crit_edge.i.i.i.i.i301
  %i.ces = load i8, ptr %i.cem, align 1, !tbaa !36
  store i8 %i.ces, ptr %i.cer, align 1, !tbaa !36
  br label %bb.wo

bb.wn:                                            ; preds = %._crit_edge.i.i.i.i.i301
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cer, ptr nonnull align 1 %i.cem, i64 %i.cen, i1 false)
  br label %bb.wo

bb.wo:                                            ; preds = %bb.wn, %bb.wm, %._crit_edge.i.i.i.i.i301
  %i.cet = load i64, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  store i64 %i.cet, ptr %i.bca, align 8, !tbaa !251
  %i.ceu = load ptr, ptr %8, align 8, !tbaa !47
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 %i.cet
  store i8 0, ptr %i.cev, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bcb)
          to label %bb.wp unwind label %bb.wq

bb.wp:                                            ; preds = %bb.wo
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %.noexc unwind label %bb.wr

bb.wq:                                            ; preds = %bb.wo
  %i.cew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i302

bb.wr:                                            ; preds = %bb.wp
  %i.cex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cey = load ptr, ptr %i.bcb, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i307 = icmp eq ptr %i.cey, null
  br i1 %.not.i.i.i307, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i302, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bcb, ptr noundef nonnull %i.cey) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i302

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i302: ; preds = %bb.ws, %bb.wr, %bb.wq
  %.pn.i303 = phi { ptr, i32 } [ %i.cew, %bb.wq ], [ %i.cex, %bb.wr ], [ %i.cex, %bb.ws ] ; 2 uses
  %i.cez = load ptr, ptr %8, align 8, !tbaa !47   ; 2 uses
  %i.cfa = icmp eq ptr %i.cez, %i.bbz
  br i1 %i.cfa, label %.body208.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i302
  %i.cfb = load i64, ptr %i.bbz, align 8, !tbaa !36
  %i.cfc = add i64 %i.cfb, 1
  call void @_ZdlPvm(ptr noundef %i.cez, i64 noundef %i.cfc) #29
  br label %.body208.i

.noexc:                                           ; preds = %bb.wp
  %i.cfd = invoke noundef zeroext i1 @_Z10gmx_fexistRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %bb.wt unwind label %bb.ww

bb.wt:                                            ; preds = %.noexc
  %i.cfe = load ptr, ptr %i.bcb, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i232 = icmp eq ptr %i.cfe, null
  br i1 %.not.i.i.i.i232, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i233, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bcb, ptr noundef nonnull %i.cfe) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i233

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i233: ; preds = %bb.wu, %bb.wt
  %i.cff = load ptr, ptr %8, align 8, !tbaa !47   ; 2 uses
  %i.cfg = icmp eq ptr %i.cff, %i.bbz
  br i1 %i.cfg, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i234: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i233
  %i.cfh = load i64, ptr %i.bbz, align 8, !tbaa !36
  %i.cfi = add i64 %i.cfh, 1
  call void @_ZdlPvm(ptr noundef %i.cff, i64 noundef %i.cfi) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i235

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i235:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.cfd, label %bb.wv, label %.tail1.thread.i.i

bb.wv:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i235
  %i.cfj = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.cfk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cfj, ptr noundef nonnull @.str.399, ptr noundef nonnull %i.cem) #25 ; 0 uses
  %i.cfl = call i32 @remove(ptr noundef nonnull %i.cem) #25 ; 0 uses
  br label %.tail1.thread.i.i

bb.ww:                                            ; preds = %.noexc
  %i.cfm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body208.i

.tail1.thread.i.i:                                ; preds = %bb.wv, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i235, %.noexc231.i, %.tail1.i.i, %sub_02.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i223.i, %.tail.i.i195
  %indvars.iv.next.i214.i = add nuw nsw i64 %indvars.iv.i212.i, 1 ; 2 uses
  %exitcond.not.i215.i = icmp eq i64 %indvars.iv.next.i214.i, 51
  br i1 %exitcond.not.i215.i, label %.loopexit36.i, label %sub_0.i.i186, !llvm.loop !276

bb.wx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i
  %.pn57.pn.i.i = phi { ptr, i32 } [ %.pn57.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i ], [ %.pn50.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #25
  br label %.body208.i

.loopexit36.i:                                    ; preds = %.tail1.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #25
  %i.cfn = load ptr, ptr %i.bco, align 8, !tbaa !269
  %i.cfo = load double, ptr %i.cfn, align 8, !tbaa !270
  %i.cfp = fcmp ole double %i.cfo, 0.000000e+00
  %or.cond9.i = and i1 %i.baa, %i.cfp
  br i1 %or.cond9.i, label %bb.wy, label %bb.wz

bb.wy:                                            ; preds = %.loopexit36.i
  %i.cfq = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.cfr = call i64 @fwrite(ptr nonnull @.str.380, i64 77, i64 1, ptr %i.cfq) ; 0 uses
  %.neg.i = xor i32 %i.byb, -1
  %i.cfs = add nsw i32 %i.avo, %.neg.i
  %i.cft = add nsw i32 %i.cfs, %i.bxx
  br label %.loopexit49.i

bb.wz:                                            ; preds = %.loopexit36.i
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i177, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i187, %wide.trip.count.i
  br i1 %exitcond.not.i188, label %.loopexit49.i, label %bb.mu, !llvm.loop !277

.loopexit49.i:                                    ; preds = %bb.wz, %bb.wy, %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i
  %.3154.i = phi i32 [ %i.cft, %bb.wy ], [ %.1152886.i, %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i ], [ %i.bxx, %bb.wz ] ; 2 uses
  %.4.i = phi i1 [ %spec.select1076.i, %bb.wy ], [ %.1148887.i, %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i ], [ %spec.select1076.i, %bb.wz ] ; 2 uses
  %.3.i = phi i1 [ false, %bb.wy ], [ %.1146888.i, %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i ], [ false, %bb.wz ] ; 2 uses
  %i.cfu = load ptr, ptr %26, align 8, !tbaa !47  ; 2 uses
  %i.cfv = icmp eq ptr %i.cfu, %i.azv
  br i1 %i.cfv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174: ; preds = %.loopexit49.i
  %i.cfw = load i64, ptr %i.azv, align 8, !tbaa !36
  %i.cfx = add i64 %i.cfw, 1
  call void @_ZdlPvm(ptr noundef %i.cfu, i64 noundef %i.cfx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175: ; preds = %.loopexit49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %indvars.iv.next985.i = add nuw nsw i64 %indvars.iv984.i, 1 ; 2 uses
  %exitcond1049.not = icmp eq i64 %indvars.iv.next985.i, %i.ayx
  br i1 %exitcond1049.not, label %._crit_edge.i173, label %bb.mr, !llvm.loop !278

.body208.i:                                       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i302, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i240.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i252.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i314, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i326, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i338, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i350, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i362, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304, %bb.pm, %bb.oq, %bb.nu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376, %bb.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328, %bb.nj, %bb.of, %bb.pb, %bb.ww, %.loopexit.i189, %bb.wx, %.body.i, %bb.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i242.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i254.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i
  %.pn164.i = phi { ptr, i32 } [ %.pn.i241.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i240.i ], [ %.pn.i178, %.body.i ], [ %.pn.i196.i, %bb.tf ], [ %.pn57.pn.i.i, %bb.wx ], [ %.pn.i315, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i314 ], [ %.pn.i253.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i252.i ], [ %.pn.i253.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i254.i ], [ %.pn.i241.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i242.i ], [ %lpad.loopexit.split-lp.i197, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit37.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit41.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit45.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit50.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %i.cfm, %bb.ww ], [ %lpad.loopexit.i190, %.loopexit.i189 ], [ %i.bka, %bb.pm ], [ %i.biz, %bb.pb ], [ %i.bhy, %bb.oq ], [ %i.bgx, %bb.of ], [ %i.bfw, %bb.nu ], [ %i.bev, %bb.nj ], [ %.pn.i327, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i326 ], [ %.pn.i315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316 ], [ %.pn.i339, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i338 ], [ %.pn.i327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328 ], [ %.pn.i351, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i350 ], [ %.pn.i339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340 ], [ %.pn.i363, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i362 ], [ %.pn.i351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i352 ], [ %.pn.i375, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i374 ], [ %.pn.i363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364 ], [ %i.bkb, %bb.pn ], [ %.pn.i375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376 ], [ %.pn.i303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304 ], [ %.pn.i303, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i302 ]
  %i.cfy = load ptr, ptr %26, align 8, !tbaa !47  ; 2 uses
  %i.cfz = icmp eq ptr %i.cfy, %i.azv
  br i1 %i.cfz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i: ; preds = %.body208.i
  %i.cga = load i64, ptr %i.azv, align 8, !tbaa !36
  %i.cgb = add i64 %i.cga, 1
  call void @_ZdlPvm(ptr noundef %i.cfy, i64 noundef %i.cgb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i: ; preds = %.body208.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #25
  br label %common.resume

._crit_edge.i173:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175, %.._crit_edge_crit_edge.i
  %indvars.iv.next987.pre-phi.i = phi i64 [ %.pre.i172, %.._crit_edge_crit_edge.i ], [ %i.bci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ] ; 2 uses
  %.1152.lcssa.i = phi i32 [ %.0151894.i, %.._crit_edge_crit_edge.i ], [ %.3154.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ]
  %.1148.lcssa.i = phi i1 [ %.0147895.i, %.._crit_edge_crit_edge.i ], [ %.4.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ] ; 2 uses
  %.1146.lcssa.i = phi i1 [ %.0145896.i, %.._crit_edge_crit_edge.i ], [ %.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ]
  %exitcond989.not.i = icmp eq i64 %indvars.iv.next987.pre-phi.i, %wide.trip.count988.i.pre-phi
  br i1 %exitcond989.not.i, label %._crit_edge898.i, label %bb.mq, !llvm.loop !279

._crit_edge898.i:                                 ; preds = %._crit_edge.i173
  br i1 %.1148.lcssa.i, label %bb.xa, label %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit

bb.xa:                                            ; preds = %._crit_edge898.i
  %i.cgc = call i64 @fwrite(ptr nonnull @.str.310, i64 62, i64 1, ptr %i.qz) ; 0 uses
  %i.cgd = call i64 @fwrite(ptr nonnull @.str.381, i64 71, i64 1, ptr %i.qz) ; 0 uses
  %i.cge = call i64 @fwrite(ptr nonnull @.str.310, i64 62, i64 1, ptr %i.qz) ; 0 uses
  br label %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit

_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit: ; preds = %bb.mo, %._crit_edge898.i, %bb.xa
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.205, i32 noundef 1683, ptr noundef %i.awj)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.205, i32 noundef 1684, ptr noundef %i.awk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #25
  %i.cgf = call noundef double @_Z11gmx_gettimev()
  %i.cgg = fsub double %i.cgf, %i.gp
  %i.cgh = fdiv double %i.cgg, 6.000000e+01
  %i.cgi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.251, double noundef %i.cgh) #25 ; 0 uses
  %i.cgj = call noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.60, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
  %i.cgk = load i32, ptr %i.as, align 4, !tbaa !9 ; 2 uses
  %i.cgl = load i32, ptr %i.ax, align 4, !tbaa !9 ; 3 uses
  %i.cgm = load i32, ptr %i.at, align 4, !tbaa !9 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  %i.cgn = icmp sgt i32 %i.cgm, 1                 ; 3 uses
  br i1 %i.cgn, label %bb.xb, label %bb.xe

bb.xb:                                            ; preds = %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit
  %i.cgo = call i64 @fwrite(ptr nonnull @.str.310, i64 62, i64 1, ptr %i.qz) ; 0 uses
  %i.cgp = call i64 @fwrite(ptr nonnull @.str.424, i64 28, i64 1, ptr %i.qz) ; 0 uses
  %i.cgq = call i64 @fwrite(ptr nonnull @.str.425, i64 70, i64 1, ptr %i.qz) ; 0 uses
  %i.cgr = icmp sgt i32 %i.cgk, 1
  br i1 %i.cgr, label %bb.xc, label %bb.xd

bb.xc:                                            ; preds = %bb.xb
  %i.cgs = call i64 @fwrite(ptr nonnull @.str.426, i64 11, i64 1, ptr %i.qz) ; 0 uses
  br label %bb.xd

bb.xd:                                            ; preds = %bb.xc, %bb.xb
  %fputc.i217 = call i32 @fputc(i32 10, ptr %i.qz) ; 0 uses
  br label %bb.xe

bb.xe:                                            ; preds = %bb.xd, %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit
  %i.cgt = icmp sgt i32 %i.cgl, 0
  br i1 %i.cgt, label %.preheader187.lr.ph.i, label %._crit_edge211.thread.i

.preheader187.lr.ph.i:                            ; preds = %bb.xe
  %i.cgu = icmp sgt i32 %.0483, 0
  %i.cgv = icmp sgt i32 %i.cgm, 0
  %i.cgw = sitofp i32 %i.cgm to double            ; 2 uses
  %i.cgx = sitofp i32 %i.cgm to float             ; 4 uses
  %i.cgy = fneg float %i.cgx                      ; 2 uses
  %i.cgz = add nsw i32 %i.cgm, -1
  %i.cha = uitofp nneg i32 %i.cgz to double
  %i.chb = icmp sgt i32 %i.cgk, 1
  br i1 %i.cgu, label %.preheader187.us.preheader.i, label %._crit_edge211.thread.i

.preheader187.us.preheader.i:                     ; preds = %.preheader187.lr.ph.i
  %wide.trip.count237.i = zext nneg i32 %i.cgl to i64
  %wide.trip.count232.i = zext nneg i32 %.0483 to i64
  %wide.trip.count.i209 = zext i32 %i.cgm to i64  ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i209, 3    ; 3 uses
  %i.chc = icmp ult i32 %i.cgm, 4
  %unroll_iter = and i64 %wide.trip.count.i209, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1789 = icmp ne i64 %xtraiter, 0
  %xtraiter1791 = and i64 %wide.trip.count.i209, 7 ; 3 uses
  %i.chd = icmp ult i32 %i.cgm, 8
  %unroll_iter1796 = and i64 %wide.trip.count.i209, 2147483640
  %lcmp.mod1793.not = icmp eq i64 %xtraiter1791, 0
  %lcmp.mod1795 = icmp ne i64 %xtraiter1791, 0
  br label %.preheader187.us.i

.preheader187.us.i:                               ; preds = %._crit_edge202.us.i, %.preheader187.us.preheader.i
  %indvars.iv234.i = phi i64 [ 0, %.preheader187.us.preheader.i ], [ %indvars.iv.next235.i, %._crit_edge202.us.i ] ; 3 uses
  %.0159210.us.i = phi i32 [ -1, %.preheader187.us.preheader.i ], [ %.3.us.i, %._crit_edge202.us.i ]
  %.0162209.us.i = phi i32 [ -1, %.preheader187.us.preheader.i ], [ %.3165.us.i, %._crit_edge202.us.i ]
  %.0166208.us.i = phi i32 [ -1, %.preheader187.us.preheader.i ], [ %.3169.us.i, %._crit_edge202.us.i ]
  %.0170207.us.i = phi i32 [ 0, %.preheader187.us.preheader.i ], [ %.2172.us.i, %._crit_edge202.us.i ]
  %i.che = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %indvars.iv234.i
  %i.chf = trunc nuw nsw i64 %indvars.iv234.i to i32 ; 2 uses
  br label %bb.xf

bb.xf:                                            ; preds = %bb.xy, %.preheader187.us.i
  %indvars.iv229.i = phi i64 [ 0, %.preheader187.us.i ], [ %indvars.iv.next230.i, %bb.xy ] ; 3 uses
  %.1160198.us.i = phi i32 [ %.0159210.us.i, %.preheader187.us.i ], [ %.3.us.i, %bb.xy ] ; 4 uses
  %.1163197.us.i = phi i32 [ %.0162209.us.i, %.preheader187.us.i ], [ %.3165.us.i, %bb.xy ] ; 5 uses
  %.1167196.us.i = phi i32 [ %.0166208.us.i, %.preheader187.us.i ], [ %.3169.us.i, %bb.xy ] ; 3 uses
  %.1171195.us.i = phi i32 [ %.0170207.us.i, %.preheader187.us.i ], [ %.2172.us.i, %bb.xy ] ; 5 uses
  %i.chg = load ptr, ptr %i.che, align 8, !tbaa !257
  %i.chh = getelementptr inbounds nuw [80 x i8], ptr %i.chg, i64 %indvars.iv229.i ; 13 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chh, i64 32 ; 11 uses
  store double 0.000000e+00, ptr %i.chi, align 8, !tbaa !280
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chh, i64 64 ; 8 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chh, i64 48 ; 7 uses
  call void @llvm.masked.store.v5f32.p0(<5 x float> <float 0.000000e+00, float poison, float poison, float poison, float 0.000000e+00>, ptr align 8 %i.chk, <5 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !10
  %i.chl = load i32, ptr %i.chh, align 8, !tbaa !266
  %i.chm = icmp eq i32 %i.chl, -1
  br i1 %i.chm, label %bb.xh, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @.str.372, i64 6, i1 false)
  br label %bb.xi

bb.xh:                                            ; preds = %bb.xf
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chh, i64 16
  %i.cho = load i32, ptr %i.chn, align 8, !tbaa !273
  %i.chp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) @.str.371, i32 noundef %i.cho) #25 ; 0 uses
  br label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  %.pre.i210 = load double, ptr %i.chi, align 8, !tbaa !280 ; 3 uses
  %.pre239.i = load float, ptr %i.chj, align 8, !tbaa !281 ; 3 uses
  br i1 %i.cgv, label %.lr.ph.us.i, label %._crit_edge.us..loopexit.us_crit_edge.i

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv.i214 = phi i64 [ %indvars.iv.next.i215.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 6 uses
  %i.chq = phi float [ %i.cip, %.lr.ph.us.i.new ], [ %.pre239.i, %.lr.ph.us.i ]
  %i.chr = phi double [ %i.cim, %.lr.ph.us.i.new ], [ %.pre.i210, %.lr.ph.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.chs = getelementptr inbounds nuw [8 x i8], ptr %i.cmi, i64 %indvars.iv.i214
  %i.cht = load double, ptr %i.chs, align 8, !tbaa !270
  %i.chu = fadd double %i.chr, %i.cht             ; 2 uses
  store double %i.chu, ptr %i.chi, align 8, !tbaa !280
  %i.chv = getelementptr inbounds nuw [4 x i8], ptr %i.cmk, i64 %indvars.iv.i214
  %i.chw = load float, ptr %i.chv, align 4, !tbaa !10
  %i.chx = fadd float %i.chq, %i.chw              ; 2 uses
  store float %i.chx, ptr %i.chj, align 8, !tbaa !281
  %indvars.iv.next.i215 = or disjoint i64 %indvars.iv.i214, 1 ; 2 uses
  %i.chy = getelementptr inbounds nuw [8 x i8], ptr %i.cmi, i64 %indvars.iv.next.i215
  %i.chz = load double, ptr %i.chy, align 8, !tbaa !270
  %i.cia = fadd double %i.chu, %i.chz             ; 2 uses
  store double %i.cia, ptr %i.chi, align 8, !tbaa !280
  %i.cib = getelementptr inbounds nuw [4 x i8], ptr %i.cmk, i64 %indvars.iv.next.i215
  %i.cic = load float, ptr %i.cib, align 4, !tbaa !10
  %i.cid = fadd float %i.chx, %i.cic              ; 2 uses
  store float %i.cid, ptr %i.chj, align 8, !tbaa !281
  %indvars.iv.next.i215.1 = or disjoint i64 %indvars.iv.i214, 2 ; 2 uses
  %i.cie = getelementptr inbounds nuw [8 x i8], ptr %i.cmi, i64 %indvars.iv.next.i215.1
  %i.cif = load double, ptr %i.cie, align 8, !tbaa !270
  %i.cig = fadd double %i.cia, %i.cif             ; 2 uses
  store double %i.cig, ptr %i.chi, align 8, !tbaa !280
  %i.cih = getelementptr inbounds nuw [4 x i8], ptr %i.cmk, i64 %indvars.iv.next.i215.1
  %i.cii = load float, ptr %i.cih, align 4, !tbaa !10
  %i.cij = fadd float %i.cid, %i.cii              ; 2 uses
  store float %i.cij, ptr %i.chj, align 8, !tbaa !281
  %indvars.iv.next.i215.2 = or disjoint i64 %indvars.iv.i214, 3 ; 2 uses
  %i.cik = getelementptr inbounds nuw [8 x i8], ptr %i.cmi, i64 %indvars.iv.next.i215.2
  %i.cil = load double, ptr %i.cik, align 8, !tbaa !270
  %i.cim = fadd double %i.cig, %i.cil             ; 4 uses
  store double %i.cim, ptr %i.chi, align 8, !tbaa !280
  %i.cin = getelementptr inbounds nuw [4 x i8], ptr %i.cmk, i64 %indvars.iv.next.i215.2
end_hunk_2
