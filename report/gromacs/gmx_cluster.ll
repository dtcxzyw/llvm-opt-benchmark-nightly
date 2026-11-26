Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_cluster?download=true
inline.NumInlined: 443
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z11gmx_clusteriPPc:bb.a
  store <24 x float> %wide.vec, ptr %i.aca, align 4, !tbaa !27, !alias.scope !201, !noalias !200
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.acb = icmp eq i64 %index.next, %n.vec
  br i1 %i.acb, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader731.us, %middle.block
  %indvars.iv884.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader731.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod1361.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv884.prol = phi i64 [ %indvars.iv.next885.prol, %scalar.ph.prol ], [ %indvars.iv884.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.acc = getelementptr inbounds nuw [12 x i8], ptr %i.abx, i64 %indvars.iv884.prol ; 3 uses
  %i.acd = getelementptr inbounds nuw [12 x i8], ptr %i.abq, i64 %indvars.iv884.prol ; 3 uses
  %i.ace = load float, ptr %i.acc, align 4, !tbaa !27
  store float %i.ace, ptr %i.acd, align 4, !tbaa !27
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !27
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 4
  store float %i.acg, ptr %i.ach, align 4, !tbaa !27
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !27
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  store float %i.acj, ptr %i.ack, align 4, !tbaa !27
  %indvars.iv.next885.prol = add nuw nsw i64 %indvars.iv884.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1360
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !74

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv884.unr = phi i64 [ %indvars.iv884.ph, %scalar.ph.preheader ], [ %indvars.iv.next885.prol, %scalar.ph.prol ]
  %i.acl = sub nsw i64 %indvars.iv884.ph, %wide.trip.count887
  %i.acm = icmp ugt i64 %i.acl, -4
  br i1 %i.acm, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv884 = phi i64 [ %indvars.iv.next885.3, %scalar.ph ], [ %indvars.iv884.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.acn = getelementptr inbounds nuw [12 x i8], ptr %i.abx, i64 %indvars.iv884 ; 3 uses
  %i.aco = getelementptr inbounds nuw [12 x i8], ptr %i.abq, i64 %indvars.iv884 ; 3 uses
  %i.acp = load float, ptr %i.acn, align 4, !tbaa !27
  store float %i.acp, ptr %i.aco, align 4, !tbaa !27
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 4
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !27
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  store float %i.acr, ptr %i.acs, align 4, !tbaa !27
  %i.act = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acu = load float, ptr %i.act, align 4, !tbaa !27
  %i.acv = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store float %i.acu, ptr %i.acv, align 4, !tbaa !27
  %indvars.iv.next885 = add nuw nsw i64 %indvars.iv884, 1 ; 2 uses
  %i.acw = getelementptr inbounds nuw [12 x i8], ptr %i.abx, i64 %indvars.iv.next885 ; 3 uses
  %i.acx = getelementptr inbounds nuw [12 x i8], ptr %i.abq, i64 %indvars.iv.next885 ; 3 uses
  %i.acy = load float, ptr %i.acw, align 4, !tbaa !27
  store float %i.acy, ptr %i.acx, align 4, !tbaa !27
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !27
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  store float %i.ada, ptr %i.adb, align 4, !tbaa !27
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.add = load float, ptr %i.adc, align 4, !tbaa !27
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  store float %i.add, ptr %i.ade, align 4, !tbaa !27
  %indvars.iv.next885.1 = add nuw nsw i64 %indvars.iv884, 2 ; 2 uses
  %i.adf = getelementptr inbounds nuw [12 x i8], ptr %i.abx, i64 %indvars.iv.next885.1 ; 3 uses
  %i.adg = getelementptr inbounds nuw [12 x i8], ptr %i.abq, i64 %indvars.iv.next885.1 ; 3 uses
  %i.adh = load float, ptr %i.adf, align 4, !tbaa !27
  store float %i.adh, ptr %i.adg, align 4, !tbaa !27
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !27
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  store float %i.adj, ptr %i.adk, align 4, !tbaa !27
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !27
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  store float %i.adm, ptr %i.adn, align 4, !tbaa !27
  %indvars.iv.next885.2 = add nuw nsw i64 %indvars.iv884, 3 ; 2 uses
  %i.ado = getelementptr inbounds nuw [12 x i8], ptr %i.abx, i64 %indvars.iv.next885.2 ; 3 uses
  %i.adp = getelementptr inbounds nuw [12 x i8], ptr %i.abq, i64 %indvars.iv.next885.2 ; 3 uses
  %i.adq = load float, ptr %i.ado, align 4, !tbaa !27
  store float %i.adq, ptr %i.adp, align 4, !tbaa !27
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 4
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !27
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adp, i64 4
  store float %i.ads, ptr %i.adt, align 4, !tbaa !27
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !27
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  store float %i.adv, ptr %i.adw, align 4, !tbaa !27
  %indvars.iv.next885.3 = add nuw nsw i64 %indvars.iv884, 4 ; 2 uses
  %exitcond888.not.3 = icmp eq i64 %indvars.iv.next885.3, %wide.trip.count887
  br i1 %exitcond888.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !75

bb.ei:                                            ; preds = %._crit_edge.us
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv889
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !32
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %.2301709, ptr noundef %.1684, ptr noundef %i.ady, ptr noundef nonnull %i.abq)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ej:                                            ; preds = %bb.ei, %._crit_edge.us
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv889
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !32
  %i.aeb = invoke noundef float @_Z6rmsdeviPfPA3_fS1_(i32 noundef %.2301709, ptr noundef %.1684, ptr noundef %i.aea, ptr noundef nonnull %i.abq)
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ek:                                            ; preds = %bb.ej
  %i.aec = trunc nuw nsw i64 %indvars.iv889 to i32
  invoke void @_Z13set_mat_entryP5t_matiif(ptr noundef %i.abf, i32 noundef %i.abw, i32 noundef %i.aec, float noundef %i.aeb)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.el:                                            ; preds = %bb.ek
  %indvars.iv.next890 = add nuw nsw i64 %indvars.iv889, 1 ; 2 uses
  %exitcond893.not = icmp eq i64 %indvars.iv.next890, %wide.trip.count897
  br i1 %exitcond893.not, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, label %.preheader731.us, !llvm.loop !76

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aed = load i8, ptr %i.x, align 1, !tbaa !14, !range !28, !noundef !29
  %i.aee = trunc nuw i8 %i.aed to i1
  br i1 %i.aee, label %bb.ei, label %bb.ej

.preheader731:                                    ; preds = %.preheader731.lr.ph, %bb.ep
  %indvars.iv879 = phi i64 [ %indvars.iv.next880, %bb.ep ], [ %indvars.iv877, %.preheader731.lr.ph ] ; 4 uses
  %i.aef = load i8, ptr %i.x, align 1, !tbaa !14, !range !28, !noundef !29
  %i.aeg = trunc nuw i8 %i.aef to i1
  br i1 %i.aeg, label %bb.em, label %bb.en

bb.em:                                            ; preds = %.preheader731
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv879
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !32
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %.2301709, ptr noundef %.1684, ptr noundef %i.aei, ptr noundef %i.abq)
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.en:                                            ; preds = %bb.em, %.preheader731
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv879
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !32
  %i.ael = invoke noundef float @_Z6rmsdeviPfPA3_fS1_(i32 noundef %.2301709, ptr noundef %.1684, ptr noundef %i.aek, ptr noundef %i.abq)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eo:                                            ; preds = %bb.en
  %i.aem = trunc nuw nsw i64 %indvars.iv879 to i32
  invoke void @_Z13set_mat_entryP5t_matiif(ptr noundef %i.abf, i32 noundef %i.abw, i32 noundef %i.aem, float noundef %i.ael)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ep:                                            ; preds = %bb.eo
  %indvars.iv.next880 = add nuw nsw i64 %indvars.iv879, 1 ; 2 uses
  %exitcond883.not = icmp eq i64 %indvars.iv.next880, %wide.trip.count897
  br i1 %exitcond883.not, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, label %.preheader731, !llvm.loop !76

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %bb.ep, %bb.el, %bb.eh
  %i.aen = xor i64 %indvars.iv894, -1
  %i.aeo = add nsw i64 %i.abg, %i.aen
  %i.aep = sub nsw i64 %.0305785, %i.aeo          ; 2 uses
  %i.aeq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aer = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aeq, ptr noundef nonnull @.str.163, i64 noundef %i.aep) #19 ; 0 uses
  %i.aes = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aet = call i32 @fflush(ptr noundef %i.aes)   ; 0 uses
  %indvars.iv.next878 = add nuw nsw i64 %indvars.iv877, 1
  %exitcond898.not = icmp eq i64 %indvars.iv.next895, %wide.trip.count897
  br i1 %exitcond898.not, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit._crit_edge.invoke, label %bb.eh, !llvm.loop !77

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit._crit_edge.invoke: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, %._crit_edge798, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit.preheader
  %i.aeu = phi ptr [ @.str.162, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit.preheader ], [ @.str.166, %._crit_edge798 ], [ @.str.162, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit ]
  %i.aev = phi i32 [ 1283, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit.preheader ], [ 1319, %._crit_edge798 ], [ 1283, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit ]
  %i.aew = phi ptr [ %i.abq, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit.preheader ], [ %i.aez, %._crit_edge798 ], [ %i.abq, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit ]
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull %i.aeu, ptr noundef nonnull @.str.138, i32 noundef %i.aev, ptr noundef %i.aew)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eq:                                            ; preds = %bb.ef
  %i.aex = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abn, ptr noundef nonnull @.str.164, i32 noundef %.0, i32 noundef %.0) #19 ; 0 uses
  %i.aey = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.138, i32 noundef 1290, i64 noundef range(i64 -2147483648, 2147483648) %i.abo, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit:         ; preds = %bb.eq
  %i.aez = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.138, i32 noundef 1291, i64 noundef range(i64 -2147483648, 2147483648) %i.abo, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427.preheader: ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %i.afa = icmp sgt i32 %.2301709, 0              ; 2 uses
  br i1 %i.afa, label %.lr.ph788.preheader, label %.preheader728

.lr.ph788.preheader:                              ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427.preheader
  %wide.trip.count902 = zext nneg i32 %.2301709 to i64
  br label %.lr.ph788

.preheader728:                                    ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427.preheader
  %i.afb = icmp sgt i32 %.0, 0
  br i1 %i.afb, label %.lr.ph795, label %.preheader722

.lr.ph795:                                        ; preds = %.preheader728
  %i.afc = icmp sgt i32 %.2301709, 1
  %i.afd = add i32 %.2301709, -1                  ; 2 uses
  %wide.trip.count24.i = zext i32 %i.afd to i64   ; 4 uses
  %wide.trip.count.i433 = zext i32 %.2301709 to i64 ; 12 uses
  %i.afe = mul nsw i32 %i.afd, %.2301709
  %i.aff = sdiv i32 %i.afe, 2
  %i.afg = sitofp i32 %i.aff to float             ; 2 uses
  %i.afh = fdiv float 0.000000e+00, %i.afg
  %wide.trip.count915 = zext nneg i32 %.0 to i64  ; 2 uses
  %i.afi = mul nuw nsw i64 %wide.trip.count24.i, 12 ; 2 uses
  %i.afj = mul nuw nsw i64 %wide.trip.count.i433, 12 ; 2 uses
  %i.afk = shl nuw nsw i64 %wide.trip.count.i433, 2 ; 2 uses
  %i.afl = add nsw i64 %wide.trip.count.i433, -1  ; 2 uses
  %i.afm = add nsw i64 %wide.trip.count.i433, -2
  %i.afn = add nsw i64 %wide.trip.count.i433, -1
  br label %bb.es

.lr.ph788:                                        ; preds = %.lr.ph788.preheader, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427
  %indvars.iv899 = phi i64 [ 0, %.lr.ph788.preheader ], [ %indvars.iv.next900, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427 ] ; 3 uses
  %i.afo = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.138, i32 noundef 1294, i64 noundef range(i64 -2147483648, 2147483648) %i.abo, i64 noundef 4)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.er:                                            ; preds = %.lr.ph788
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %indvars.iv899
  store ptr %i.afo, ptr %i.afp, align 8, !tbaa !32
  %i.afq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.138, i32 noundef 1295, i64 noundef range(i64 -2147483648, 2147483648) %i.abo, i64 noundef 4)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit427:      ; preds = %bb.er
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv899
  store ptr %i.afq, ptr %i.afr, align 8, !tbaa !32
  %indvars.iv.next900 = add nuw nsw i64 %indvars.iv899, 1 ; 2 uses
  %exitcond903.not = icmp eq i64 %indvars.iv.next900, %wide.trip.count902
  br i1 %exitcond903.not, label %.preheader728, label %.lr.ph788, !llvm.loop !78

.preheader722:                                    ; preds = %._crit_edge, %.preheader728
  br i1 %i.afa, label %.lr.ph797.preheader, label %._crit_edge798

.lr.ph797.preheader:                              ; preds = %.preheader722
  %wide.trip.count920 = zext nneg i32 %.2301709 to i64
  br label %.lr.ph797

bb.es:                                            ; preds = %.lr.ph795, %._crit_edge
  %indvars.iv912 = phi i64 [ 0, %.lr.ph795 ], [ %indvars.iv.next9131056, %._crit_edge ] ; 6 uses
  %indvars.iv905 = phi i64 [ 1, %.lr.ph795 ], [ %indvars.iv.next906, %._crit_edge ] ; 2 uses
  %.1306794 = phi i64 [ %i.abk, %.lr.ph795 ], [ %i.aot, %._crit_edge ]
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv912
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !32 ; 9 uses
  br i1 %i.afc, label %.lr.ph.i434.preheader, label %_ZL9calc_distiPA3_fPPf.exit.thread

.lr.ph.i434.preheader:                            ; preds = %bb.es
  %scevgep1150 = getelementptr i8, ptr %i.aft, i64 %i.afi
  %scevgep1151 = getelementptr i8, ptr %i.aft, i64 %i.afj
  br label %.lr.ph.i434

.loopexit.i437:                                   ; preds = %scalar.ph1152.prol.loopexit, %scalar.ph1152, %middle.block1177
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %indvars.iv.next.i438 = add nuw nsw i64 %indvars.iv.i435, 1
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %_ZL9calc_distiPA3_fPPf.exit, label %.lr.ph.i434, !llvm.loop !79

.lr.ph.i434:                                      ; preds = %.lr.ph.i434.preheader, %.loopexit.i437
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %.loopexit.i437 ], [ 0, %.lr.ph.i434.preheader ] ; 6 uses
  %indvars.iv.i435 = phi i64 [ %indvars.iv.next.i438, %.loopexit.i437 ], [ 1, %.lr.ph.i434.preheader ] ; 5 uses
  %i.afu = getelementptr inbounds nuw [12 x i8], ptr %i.aft, i64 %indvars.iv21.i ; 6 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 4 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 8 ; 4 uses
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %indvars.iv21.i
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !32 ; 6 uses
  %i.afz = xor i64 %indvars.iv21.i, -1
  %i.aga = add nsw i64 %i.afz, %wide.trip.count.i433 ; 3 uses
  %min.iters.check1153 = icmp ult i64 %i.aga, 8
  br i1 %min.iters.check1153, label %scalar.ph1152.preheader, label %vector.memcheck1154

vector.memcheck1154:                              ; preds = %.lr.ph.i434
  %i.agb = shl nuw nsw i64 %indvars.iv21.i, 2
  %i.agc = getelementptr nuw i8, ptr %i.afy, i64 %i.agb
  %i.agd = getelementptr nuw i8, ptr %i.agc, i64 4 ; 2 uses
  %i.age = getelementptr i8, ptr %i.afy, i64 %i.afk ; 2 uses
  %i.agf = mul nuw nsw i64 %indvars.iv21.i, 12
  %i.agg = getelementptr nuw i8, ptr %i.aft, i64 %i.agf
  %i.agh = getelementptr nuw i8, ptr %i.agg, i64 12
  %bound01155 = icmp ult ptr %i.agd, %scevgep1151
  %bound11156 = icmp ult ptr %i.agh, %i.age
  %found.conflict1157 = and i1 %bound01155, %bound11156
  %bound01158 = icmp ult ptr %i.agd, %scevgep1150
  %bound11159 = icmp ult ptr %i.aft, %i.age
  %found.conflict1160 = and i1 %bound01158, %bound11159
  %conflict.rdx1161 = or i1 %found.conflict1157, %found.conflict1160
  br i1 %conflict.rdx1161, label %scalar.ph1152.preheader, label %vector.ph1162

vector.ph1162:                                    ; preds = %vector.memcheck1154
  %n.vec1163 = and i64 %i.aga, -8                 ; 3 uses
  %i.agi = add i64 %indvars.iv.i435, %n.vec1163
  %i.agj = load float, ptr %i.afu, align 4, !tbaa !27, !alias.scope !202
  %broadcast.splatinsert1170 = insertelement <8 x float> poison, float %i.agj, i64 0
  %broadcast.splat1171 = shufflevector <8 x float> %broadcast.splatinsert1170, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agk = load float, ptr %i.afv, align 4, !tbaa !27, !alias.scope !202
  %broadcast.splatinsert1172 = insertelement <8 x float> poison, float %i.agk, i64 0
  %broadcast.splat1173 = shufflevector <8 x float> %broadcast.splatinsert1172, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agl = load float, ptr %i.afw, align 4, !tbaa !27, !alias.scope !202
  %broadcast.splatinsert1174 = insertelement <8 x float> poison, float %i.agl, i64 0
  %broadcast.splat1175 = shufflevector <8 x float> %broadcast.splatinsert1174, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %vector.ph1162
  %index1165 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1176, %vector.body1164 ] ; 2 uses
  %i.agm = add nuw i64 %indvars.iv.i435, %index1165 ; 2 uses
  %i.agn = getelementptr inbounds nuw [12 x i8], ptr %i.aft, i64 %i.agm
  %wide.vec1166 = load <24 x float>, ptr %i.agn, align 4, !tbaa !27, !alias.scope !203 ; 3 uses
  %strided.vec1167 = shufflevector <24 x float> %wide.vec1166, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1168 = shufflevector <24 x float> %wide.vec1166, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1169 = shufflevector <24 x float> %wide.vec1166, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ago = fsub <8 x float> %broadcast.splat1171, %strided.vec1167 ; 2 uses
  %i.agp = fsub <8 x float> %broadcast.splat1173, %strided.vec1168 ; 2 uses
  %i.agq = fsub <8 x float> %broadcast.splat1175, %strided.vec1169 ; 2 uses
  %i.agr = fmul <8 x float> %i.agp, %i.agp
  %i.ags = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ago, <8 x float> %i.ago, <8 x float> %i.agr)
  %i.agt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.agq, <8 x float> %i.agq, <8 x float> %i.ags)
  %i.agu = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.agt)
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.agm
  store <8 x float> %i.agu, ptr %i.agv, align 4, !tbaa !27, !alias.scope !204, !noalias !205
  %index.next1176 = add nuw i64 %index1165, 8     ; 2 uses
  %i.agw = icmp eq i64 %index.next1176, %n.vec1163
  br i1 %i.agw, label %middle.block1177, label %vector.body1164, !llvm.loop !84

middle.block1177:                                 ; preds = %vector.body1164
  %cmp.n1178 = icmp eq i64 %i.aga, %n.vec1163
  br i1 %cmp.n1178, label %.loopexit.i437, label %scalar.ph1152.preheader

scalar.ph1152.preheader:                          ; preds = %vector.memcheck1154, %.lr.ph.i434, %middle.block1177
  %indvars.iv18.i.ph = phi i64 [ %indvars.iv.i435, %vector.memcheck1154 ], [ %indvars.iv.i435, %.lr.ph.i434 ], [ %i.agi, %middle.block1177 ] ; 6 uses
  %i.agx = sub i64 %wide.trip.count.i433, %indvars.iv18.i.ph
  %xtraiter1362 = and i64 %i.agx, 1
  %lcmp.mod1363.not = icmp eq i64 %xtraiter1362, 0
  br i1 %lcmp.mod1363.not, label %scalar.ph1152.prol.loopexit, label %scalar.ph1152.prol

scalar.ph1152.prol:                               ; preds = %scalar.ph1152.preheader
  %i.agy = getelementptr inbounds nuw [12 x i8], ptr %i.aft, i64 %indvars.iv18.i.ph ; 3 uses
  %i.agz = load float, ptr %i.afu, align 4, !tbaa !27
  %i.aha = load float, ptr %i.agy, align 4, !tbaa !27
  %i.ahb = fsub float %i.agz, %i.aha              ; 2 uses
  %i.ahc = load float, ptr %i.afv, align 4, !tbaa !27
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agy, i64 4
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !27
  %i.ahf = fsub float %i.ahc, %i.ahe              ; 2 uses
  %i.ahg = load float, ptr %i.afw, align 4, !tbaa !27
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !27
  %i.ahj = fsub float %i.ahg, %i.ahi              ; 2 uses
  %i.ahk = fmul float %i.ahf, %i.ahf
  %i.ahl = call float @llvm.fmuladd.f32(float %i.ahb, float %i.ahb, float %i.ahk)
  %i.ahm = call noundef float @llvm.fmuladd.f32(float %i.ahj, float %i.ahj, float %i.ahl)
  %sqrt.i.i.prol = call noundef float @llvm.sqrt.f32(float %i.ahm)
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %indvars.iv18.i.ph
  store float %sqrt.i.i.prol, ptr %i.ahn, align 4, !tbaa !27
  %indvars.iv.next19.i.prol = add nuw nsw i64 %indvars.iv18.i.ph, 1
  br label %scalar.ph1152.prol.loopexit

scalar.ph1152.prol.loopexit:                      ; preds = %scalar.ph1152.prol, %scalar.ph1152.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph1152.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph1152.prol ]
  %i.aho = icmp eq i64 %i.afl, %indvars.iv18.i.ph
  br i1 %i.aho, label %.loopexit.i437, label %scalar.ph1152

scalar.ph1152:                                    ; preds = %scalar.ph1152.prol.loopexit, %scalar.ph1152
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.1, %scalar.ph1152 ], [ %indvars.iv18.i.unr, %scalar.ph1152.prol.loopexit ] ; 4 uses
  %i.ahp = getelementptr inbounds nuw [12 x i8], ptr %i.aft, i64 %indvars.iv18.i ; 3 uses
  %i.ahq = load float, ptr %i.afu, align 4, !tbaa !27
  %i.ahr = load float, ptr %i.ahp, align 4, !tbaa !27
  %i.ahs = fsub float %i.ahq, %i.ahr              ; 2 uses
  %i.aht = load float, ptr %i.afv, align 4, !tbaa !27
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !27
  %i.ahw = fsub float %i.aht, %i.ahv              ; 2 uses
  %i.ahx = load float, ptr %i.afw, align 4, !tbaa !27
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !27
  %i.aia = fsub float %i.ahx, %i.ahz              ; 2 uses
  %i.aib = fmul float %i.ahw, %i.ahw
  %i.aic = call float @llvm.fmuladd.f32(float %i.ahs, float %i.ahs, float %i.aib)
  %i.aid = call noundef float @llvm.fmuladd.f32(float %i.aia, float %i.aia, float %i.aic)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.aid)
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %indvars.iv18.i
  store float %sqrt.i.i, ptr %i.aie, align 4, !tbaa !27
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.aif = getelementptr inbounds nuw [12 x i8], ptr %i.aft, i64 %indvars.iv.next19.i ; 3 uses
  %i.aig = load float, ptr %i.afu, align 4, !tbaa !27
  %i.aih = load float, ptr %i.aif, align 4, !tbaa !27
  %i.aii = fsub float %i.aig, %i.aih              ; 2 uses
  %i.aij = load float, ptr %i.afv, align 4, !tbaa !27
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aif, i64 4
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !27
  %i.aim = fsub float %i.aij, %i.ail              ; 2 uses
  %i.ain = load float, ptr %i.afw, align 4, !tbaa !27
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !27
  %i.aiq = fsub float %i.ain, %i.aip              ; 2 uses
  %i.air = fmul float %i.aim, %i.aim
  %i.ais = call float @llvm.fmuladd.f32(float %i.aii, float %i.aii, float %i.air)
  %i.ait = call noundef float @llvm.fmuladd.f32(float %i.aiq, float %i.aiq, float %i.ais)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.ait)
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %indvars.iv.next19.i
  store float %sqrt.i.i.1, ptr %i.aiu, align 4, !tbaa !27
  %indvars.iv.next19.i.1 = add nuw nsw i64 %indvars.iv18.i, 2 ; 2 uses
  %exitcond.not.i436.1 = icmp eq i64 %indvars.iv.next19.i.1, %wide.trip.count.i433
  br i1 %exitcond.not.i436.1, label %.loopexit.i437, label %scalar.ph1152, !llvm.loop !85

_ZL9calc_distiPA3_fPPf.exit:                      ; preds = %.loopexit.i437
  %indvars.iv.next913 = add nuw nsw i64 %indvars.iv912, 1 ; 3 uses
  %i.aiv = icmp slt i64 %indvars.iv.next913, %i.abg
  br i1 %i.aiv, label %.lr.ph17.preheader.i440.us.preheader, label %._crit_edge

_ZL9calc_distiPA3_fPPf.exit.thread:               ; preds = %bb.es
  %indvars.iv.next9131055 = add nuw nsw i64 %indvars.iv912, 1 ; 4 uses
  %i.aiw = icmp slt i64 %indvars.iv.next9131055, %i.abg
  br i1 %i.aiw, label %_ZL9calc_distiPA3_fPPf.exit454.thread.preheader, label %._crit_edge

_ZL9calc_distiPA3_fPPf.exit454.thread.preheader:  ; preds = %_ZL9calc_distiPA3_fPPf.exit.thread
  %i.aix = trunc nuw nsw i64 %indvars.iv.next9131055 to i32
  %i.aiy = trunc nuw nsw i64 %indvars.iv912 to i32
  br label %_ZL9calc_distiPA3_fPPf.exit454.thread

.lr.ph17.preheader.i440.us.preheader:             ; preds = %_ZL9calc_distiPA3_fPPf.exit
  %i.aiz = trunc nuw nsw i64 %indvars.iv912 to i32
  br label %.lr.ph17.preheader.i440.us

.lr.ph17.preheader.i440.us:                       ; preds = %.lr.ph17.preheader.i440.us.preheader, %bb.et
  %indvars.iv907 = phi i64 [ %indvars.iv905, %.lr.ph17.preheader.i440.us.preheader ], [ %indvars.iv.next908, %bb.et ] ; 3 uses
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %.0304, i64 %indvars.iv907
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !32 ; 9 uses
  %scevgep1110 = getelementptr i8, ptr %i.ajb, i64 %i.afi
  %scevgep1111 = getelementptr i8, ptr %i.ajb, i64 %i.afj
  br label %.lr.ph.i443.us

.lr.ph.i443.us:                                   ; preds = %.loopexit.i451.us, %.lr.ph17.preheader.i440.us
  %indvars.iv21.i444.us = phi i64 [ 0, %.lr.ph17.preheader.i440.us ], [ %indvars.iv.next22.i446.us, %.loopexit.i451.us ] ; 6 uses
  %indvars.iv.i445.us = phi i64 [ 1, %.lr.ph17.preheader.i440.us ], [ %indvars.iv.next.i452.us, %.loopexit.i451.us ] ; 5 uses
  %i.ajc = getelementptr inbounds nuw [12 x i8], ptr %i.ajb, i64 %indvars.iv21.i444.us ; 6 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 4 ; 4 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8 ; 4 uses
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv21.i444.us
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !32 ; 6 uses
  %i.ajh = xor i64 %indvars.iv21.i444.us, -1
  %i.aji = add nsw i64 %i.ajh, %wide.trip.count.i433 ; 3 uses
  %min.iters.check1113 = icmp ult i64 %i.aji, 8
  br i1 %min.iters.check1113, label %scalar.ph1112.preheader, label %vector.memcheck1114

vector.memcheck1114:                              ; preds = %.lr.ph.i443.us
  %i.ajj = shl nuw nsw i64 %indvars.iv21.i444.us, 2
  %i.ajk = getelementptr nuw i8, ptr %i.ajg, i64 %i.ajj
  %i.ajl = getelementptr nuw i8, ptr %i.ajk, i64 4 ; 2 uses
  %i.ajm = getelementptr i8, ptr %i.ajg, i64 %i.afk ; 2 uses
  %i.ajn = mul nuw nsw i64 %indvars.iv21.i444.us, 12
  %i.ajo = getelementptr nuw i8, ptr %i.ajb, i64 %i.ajn
  %i.ajp = getelementptr nuw i8, ptr %i.ajo, i64 12
  %bound01115 = icmp ult ptr %i.ajl, %scevgep1111
  %bound11116 = icmp ult ptr %i.ajp, %i.ajm
  %found.conflict1117 = and i1 %bound01115, %bound11116
  %bound01118 = icmp ult ptr %i.ajl, %scevgep1110
  %bound11119 = icmp ult ptr %i.ajb, %i.ajm
  %found.conflict1120 = and i1 %bound01118, %bound11119
  %conflict.rdx = or i1 %found.conflict1117, %found.conflict1120
  br i1 %conflict.rdx, label %scalar.ph1112.preheader, label %vector.ph1121

vector.ph1121:                                    ; preds = %vector.memcheck1114
  %n.vec1122 = and i64 %i.aji, -8                 ; 3 uses
  %i.ajq = add i64 %indvars.iv.i445.us, %n.vec1122
  %i.ajr = load float, ptr %i.ajc, align 4, !tbaa !27, !alias.scope !206
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ajr, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajs = load float, ptr %i.ajd, align 4, !tbaa !27, !alias.scope !206
  %broadcast.splatinsert1129 = insertelement <8 x float> poison, float %i.ajs, i64 0
  %broadcast.splat1130 = shufflevector <8 x float> %broadcast.splatinsert1129, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajt = load float, ptr %i.aje, align 4, !tbaa !27, !alias.scope !206
  %broadcast.splatinsert1131 = insertelement <8 x float> poison, float %i.ajt, i64 0
  %broadcast.splat1132 = shufflevector <8 x float> %broadcast.splatinsert1131, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %vector.ph1121
  %index1124 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1133, %vector.body1123 ] ; 2 uses
  %i.aju = add nuw i64 %indvars.iv.i445.us, %index1124 ; 2 uses
  %i.ajv = getelementptr inbounds nuw [12 x i8], ptr %i.ajb, i64 %i.aju
  %wide.vec1125 = load <24 x float>, ptr %i.ajv, align 4, !tbaa !27, !alias.scope !207 ; 3 uses
  %strided.vec1126 = shufflevector <24 x float> %wide.vec1125, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1127 = shufflevector <24 x float> %wide.vec1125, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1128 = shufflevector <24 x float> %wide.vec1125, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ajw = fsub <8 x float> %broadcast.splat, %strided.vec1126 ; 2 uses
  %i.ajx = fsub <8 x float> %broadcast.splat1130, %strided.vec1127 ; 2 uses
  %i.ajy = fsub <8 x float> %broadcast.splat1132, %strided.vec1128 ; 2 uses
  %i.ajz = fmul <8 x float> %i.ajx, %i.ajx
  %i.aka = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ajw, <8 x float> %i.ajw, <8 x float> %i.ajz)
  %i.akb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ajy, <8 x float> %i.ajy, <8 x float> %i.aka)
  %i.akc = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.akb)
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.aju
  store <8 x float> %i.akc, ptr %i.akd, align 4, !tbaa !27, !alias.scope !208, !noalias !209
  %index.next1133 = add nuw i64 %index1124, 8     ; 2 uses
  %i.ake = icmp eq i64 %index.next1133, %n.vec1122
  br i1 %i.ake, label %middle.block1134, label %vector.body1123, !llvm.loop !90

middle.block1134:                                 ; preds = %vector.body1123
  %cmp.n1135 = icmp eq i64 %i.aji, %n.vec1122
  br i1 %cmp.n1135, label %.loopexit.i451.us, label %scalar.ph1112.preheader

scalar.ph1112.preheader:                          ; preds = %vector.memcheck1114, %.lr.ph.i443.us, %middle.block1134
  %indvars.iv18.i447.us.ph = phi i64 [ %indvars.iv.i445.us, %vector.memcheck1114 ], [ %indvars.iv.i445.us, %.lr.ph.i443.us ], [ %i.ajq, %middle.block1134 ] ; 6 uses
  %i.akf = sub i64 %wide.trip.count.i433, %indvars.iv18.i447.us.ph
  %xtraiter1365 = and i64 %i.akf, 1
  %lcmp.mod1366.not = icmp eq i64 %xtraiter1365, 0
  br i1 %lcmp.mod1366.not, label %scalar.ph1112.prol.loopexit, label %scalar.ph1112.prol

scalar.ph1112.prol:                               ; preds = %scalar.ph1112.preheader
  %i.akg = getelementptr inbounds nuw [12 x i8], ptr %i.ajb, i64 %indvars.iv18.i447.us.ph ; 3 uses
  %i.akh = load float, ptr %i.ajc, align 4, !tbaa !27
  %i.aki = load float, ptr %i.akg, align 4, !tbaa !27
  %i.akj = fsub float %i.akh, %i.aki              ; 2 uses
  %i.akk = load float, ptr %i.ajd, align 4, !tbaa !27
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akg, i64 4
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !27
  %i.akn = fsub float %i.akk, %i.akm              ; 2 uses
  %i.ako = load float, ptr %i.aje, align 4, !tbaa !27
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !27
  %i.akr = fsub float %i.ako, %i.akq              ; 2 uses
  %i.aks = fmul float %i.akn, %i.akn
  %i.akt = call float @llvm.fmuladd.f32(float %i.akj, float %i.akj, float %i.aks)
  %i.aku = call noundef float @llvm.fmuladd.f32(float %i.akr, float %i.akr, float %i.akt)
  %sqrt.i.i448.us.prol = call noundef float @llvm.sqrt.f32(float %i.aku)
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %indvars.iv18.i447.us.ph
  store float %sqrt.i.i448.us.prol, ptr %i.akv, align 4, !tbaa !27
  %indvars.iv.next19.i449.us.prol = add nuw nsw i64 %indvars.iv18.i447.us.ph, 1
  br label %scalar.ph1112.prol.loopexit

scalar.ph1112.prol.loopexit:                      ; preds = %scalar.ph1112.prol, %scalar.ph1112.preheader
  %indvars.iv18.i447.us.unr = phi i64 [ %indvars.iv18.i447.us.ph, %scalar.ph1112.preheader ], [ %indvars.iv.next19.i449.us.prol, %scalar.ph1112.prol ]
  %i.akw = icmp eq i64 %indvars.iv18.i447.us.ph, %i.afn
  br i1 %i.akw, label %.loopexit.i451.us, label %scalar.ph1112

scalar.ph1112:                                    ; preds = %scalar.ph1112.prol.loopexit, %scalar.ph1112
  %indvars.iv18.i447.us = phi i64 [ %indvars.iv.next19.i449.us.1, %scalar.ph1112 ], [ %indvars.iv18.i447.us.unr, %scalar.ph1112.prol.loopexit ] ; 4 uses
  %i.akx = getelementptr inbounds nuw [12 x i8], ptr %i.ajb, i64 %indvars.iv18.i447.us ; 3 uses
  %i.aky = load float, ptr %i.ajc, align 4, !tbaa !27
  %i.akz = load float, ptr %i.akx, align 4, !tbaa !27
  %i.ala = fsub float %i.aky, %i.akz              ; 2 uses
  %i.alb = load float, ptr %i.ajd, align 4, !tbaa !27
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !27
  %i.ale = fsub float %i.alb, %i.ald              ; 2 uses
  %i.alf = load float, ptr %i.aje, align 4, !tbaa !27
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !27
  %i.ali = fsub float %i.alf, %i.alh              ; 2 uses
  %i.alj = fmul float %i.ale, %i.ale
  %i.alk = call float @llvm.fmuladd.f32(float %i.ala, float %i.ala, float %i.alj)
  %i.all = call noundef float @llvm.fmuladd.f32(float %i.ali, float %i.ali, float %i.alk)
  %sqrt.i.i448.us = call noundef float @llvm.sqrt.f32(float %i.all)
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %indvars.iv18.i447.us
  store float %sqrt.i.i448.us, ptr %i.alm, align 4, !tbaa !27
  %indvars.iv.next19.i449.us = add nuw nsw i64 %indvars.iv18.i447.us, 1 ; 2 uses
  %i.aln = getelementptr inbounds nuw [12 x i8], ptr %i.ajb, i64 %indvars.iv.next19.i449.us ; 3 uses
  %i.alo = load float, ptr %i.ajc, align 4, !tbaa !27
  %i.alp = load float, ptr %i.aln, align 4, !tbaa !27
  %i.alq = fsub float %i.alo, %i.alp              ; 2 uses
  %i.alr = load float, ptr %i.ajd, align 4, !tbaa !27
  %i.als = getelementptr inbounds nuw i8, ptr %i.aln, i64 4
  %i.alt = load float, ptr %i.als, align 4, !tbaa !27
  %i.alu = fsub float %i.alr, %i.alt              ; 2 uses
  %i.alv = load float, ptr %i.aje, align 4, !tbaa !27
  %i.alw = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !27
  %i.aly = fsub float %i.alv, %i.alx              ; 2 uses
  %i.alz = fmul float %i.alu, %i.alu
  %i.ama = call float @llvm.fmuladd.f32(float %i.alq, float %i.alq, float %i.alz)
  %i.amb = call noundef float @llvm.fmuladd.f32(float %i.aly, float %i.aly, float %i.ama)
  %sqrt.i.i448.us.1 = call noundef float @llvm.sqrt.f32(float %i.amb)
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %indvars.iv.next19.i449.us
  store float %sqrt.i.i448.us.1, ptr %i.amc, align 4, !tbaa !27
  %indvars.iv.next19.i449.us.1 = add nuw nsw i64 %indvars.iv18.i447.us, 2 ; 2 uses
  %exitcond.not.i450.us.1 = icmp eq i64 %indvars.iv.next19.i449.us.1, %wide.trip.count.i433
  br i1 %exitcond.not.i450.us.1, label %.loopexit.i451.us, label %scalar.ph1112, !llvm.loop !91

.loopexit.i451.us:                                ; preds = %scalar.ph1112.prol.loopexit, %scalar.ph1112, %middle.block1134
  %indvars.iv.next22.i446.us = add nuw nsw i64 %indvars.iv21.i444.us, 1 ; 2 uses
  %indvars.iv.next.i452.us = add nuw nsw i64 %indvars.iv.i445.us, 1
  %exitcond25.not.i453.us = icmp eq i64 %indvars.iv.next22.i446.us, %wide.trip.count24.i
  br i1 %exitcond25.not.i453.us, label %.lr.ph.i457.us, label %.lr.ph.i443.us, !llvm.loop !79

.lr.ph.i457.us:                                   ; preds = %.loopexit.i451.us, %.loopexit.i460.us
  %indvars.iv32.i.us = phi i64 [ %indvars.iv.next33.i.us, %.loopexit.i460.us ], [ 0, %.loopexit.i451.us ] ; 5 uses
  %indvars.iv.i458.us = phi i64 [ %indvars.iv.next.i461.us, %.loopexit.i460.us ], [ 1, %.loopexit.i451.us ] ; 3 uses
  %.025.i.us = phi float [ %.lcssa1332, %.loopexit.i460.us ], [ 0.000000e+00, %.loopexit.i451.us ] ; 2 uses
  %i.amd = sub i64 %i.afl, %indvars.iv32.i.us
  %i.ame = sub i64 %i.afm, %indvars.iv32.i.us
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %indvars.iv32.i.us
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !32 ; 9 uses
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv32.i.us
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !32 ; 9 uses
  %xtraiter1368 = and i64 %i.amd, 7               ; 2 uses
  %lcmp.mod1369.not = icmp eq i64 %xtraiter1368, 0
  br i1 %lcmp.mod1369.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i457.us, %.prol.preheader
  %indvars.iv29.i.us.prol = phi i64 [ %indvars.iv.next30.i.us.prol, %.prol.preheader ], [ %indvars.iv.i458.us, %.lr.ph.i457.us ] ; 3 uses
  %.123.i.us.prol = phi float [ %i.amo, %.prol.preheader ], [ %.025.i.us, %.lr.ph.i457.us ]
  %prol.iter1370 = phi i64 [ %prol.iter1370.next, %.prol.preheader ], [ 0, %.lr.ph.i457.us ]
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.amg, i64 %indvars.iv29.i.us.prol
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !27
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %indvars.iv29.i.us.prol
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !27
  %i.amn = fsub float %i.amk, %i.amm              ; 2 uses
  %i.amo = call float @llvm.fmuladd.f32(float %i.amn, float %i.amn, float %.123.i.us.prol) ; 3 uses
  %indvars.iv.next30.i.us.prol = add nuw nsw i64 %indvars.iv29.i.us.prol, 1 ; 2 uses
  %prol.iter1370.next = add i64 %prol.iter1370, 1 ; 2 uses
  %prol.iter1370.cmp.not = icmp eq i64 %prol.iter1370.next, %xtraiter1368
  br i1 %prol.iter1370.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !92

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i457.us
  %.lcssa1332.unr = phi float [ poison, %.lr.ph.i457.us ], [ %i.amo, %.prol.preheader ]
  %indvars.iv29.i.us.unr = phi i64 [ %indvars.iv.i458.us, %.lr.ph.i457.us ], [ %indvars.iv.next30.i.us.prol, %.prol.preheader ]
  %.123.i.us.unr = phi float [ %.025.i.us, %.lr.ph.i457.us ], [ %i.amo, %.prol.preheader ]
  %i.amp = icmp ult i64 %i.ame, 7
  br i1 %i.amp, label %.loopexit.i460.us, label %.lr.ph.i457.us.new

.lr.ph.i457.us.new:                               ; preds = %.prol.loopexit, %.lr.ph.i457.us.new
  %indvars.iv29.i.us = phi i64 [ %indvars.iv.next30.i.us.7, %.lr.ph.i457.us.new ], [ %indvars.iv29.i.us.unr, %.prol.loopexit ] ; 10 uses
  %.123.i.us = phi float [ %i.aol, %.lr.ph.i457.us.new ], [ %.123.i.us.unr, %.prol.loopexit ]
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.amg, i64 %indvars.iv29.i.us
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !27
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %indvars.iv29.i.us
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !27
  %i.amu = fsub float %i.amr, %i.amt              ; 2 uses
  %i.amv = call float @llvm.fmuladd.f32(float %i.amu, float %i.amu, float %.123.i.us)
  %indvars.iv.next30.i.us = add nuw nsw i64 %indvars.iv29.i.us, 1 ; 2 uses
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.amg, i64 %indvars.iv.next30.i.us
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !27
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %indvars.iv.next30.i.us
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !27
  %i.ana = fsub float %i.amx, %i.amz              ; 2 uses
  %i.anb = call float @llvm.fmuladd.f32(float %i.ana, float %i.ana, float %i.amv)
  %indvars.iv.next30.i.us.1 = add nuw nsw i64 %indvars.iv29.i.us, 2 ; 2 uses
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.amg, i64 %indvars.iv.next30.i.us.1
  %i.and = load float, ptr %i.anc, align 4, !tbaa !27
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %indvars.iv.next30.i.us.1
  %i.anf = load float, ptr %i.ane, align 4, !tbaa !27
  %i.ang = fsub float %i.and, %i.anf              ; 2 uses
  %i.anh = call float @llvm.fmuladd.f32(float %i.ang, float %i.ang, float %i.anb)
  %indvars.iv.next30.i.us.2 = add nuw nsw i64 %indvars.iv29.i.us, 3 ; 2 uses
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.amg, i64 %indvars.iv.next30.i.us.2
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !27
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %indvars.iv.next30.i.us.2
  %i.anl = load float, ptr %i.ank, align 4, !tbaa !27
  %i.anm = fsub float %i.anj, %i.anl              ; 2 uses
  %i.ann = call float @llvm.fmuladd.f32(float %i.anm, float %i.anm, float %i.anh)
  %indvars.iv.next30.i.us.3 = add nuw nsw i64 %indvars.iv29.i.us, 4 ; 2 uses
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.amg, i64 %indvars.iv.next30.i.us.3
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !27
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %indvars.iv.next30.i.us.3
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !27
  %i.ans = fsub float %i.anp, %i.anr              ; 2 uses
  %i.ant = call float @llvm.fmuladd.f32(float %i.ans, float %i.ans, float %i.ann)
  %indvars.iv.next30.i.us.4 = add nuw nsw i64 %indvars.iv29.i.us, 5 ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.masked.store.v8i32.p0
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !17, i64 8, !6, i64 16}
!22 = !{!21, !15, i64 0}
!23 = !{!15, !15, i64 0}
!24 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"float", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"p1 float", !11, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"p1 _ZTS8t_matrix", !11, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI8t_matrixSaIS0_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 0}
!37 = !{!35, !34, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!39 = !{!"p1 short", !11, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"p1 _ZTS9t_mapping", !11, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseI9t_mappingSaIS0_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!38, !31, i64 0}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"llvm.loop.peeled.count", i32 1}
!47 = !{!42, !41, i64 8}
!48 = !{!42, !41, i64 0}
!49 = !{!"_ZTS10t_clusters", !7, i64 0, !12, i64 8}
!50 = !{!49, !12, i64 8}
!51 = !{!20, !15, i64 0}
!52 = !{!21, !17, i64 8}
!53 = !{!35, !34, i64 8}
!54 = !{!17, !17, i64 0}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30, !44, !45}
!66 = distinct !{!66, !30, !44, !45}
!67 = distinct !{!67, !30, !45, !44}
!68 = distinct !{!68, !30, !46}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !30, !44, !45}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !30, !44}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !30}
!78 = distinct !{!78, !30}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !30, !44, !45}
!85 = distinct !{!85, !30, !44}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !86}
!90 = distinct !{!90, !30, !44, !45}
!91 = distinct !{!91, !30, !44}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !30}
!94 = distinct !{!94, !30}
!95 = distinct !{!95, !30}
!96 = distinct !{!96, !30}
!97 = distinct !{!97, !30}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !30, !44, !45}
!102 = distinct !{!102, !30, !44, !45}
!103 = distinct !{!103, !33}
!104 = distinct !{!104, !30, !44}
!105 = distinct !{!105, !30}
!106 = distinct !{!106, !30}
!107 = distinct !{!107, !30, !44, !45}
!108 = distinct !{!108, !30, !44, !45}
!109 = distinct !{!109, !33}
!110 = distinct !{!110, !30, !44}
!111 = distinct !{!111, !30}
!112 = distinct !{!112, !30}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !30}
!115 = distinct !{!115, !30}
!116 = distinct !{!116, !30, !44, !45}
!117 = distinct !{!117, !30, !44, !45}
!118 = distinct !{!118, !30, !45, !44}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30}
!121 = distinct !{!121, !30}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !30}
!124 = distinct !{!124, !30}
!125 = !{!"p1 _ZTS5t_mat", !11, i64 0}
!126 = !{!125, !125, i64 0}
!127 = !{!12, !12, i64 0}
!128 = !{!"_ZTS7t_pargs", !15, i64 0, !13, i64 8, !7, i64 12, !6, i64 16, !15, i64 24}
!129 = !{!128, !15, i64 0}
!130 = !{!128, !13, i64 8}
!131 = !{!128, !7, i64 12}
!132 = !{!128, !15, i64 24}
!133 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !136, i64 0}
!138 = !{!"_ZTS8t_filenm", !7, i64 0, !15, i64 8, !15, i64 16, !17, i64 24, !137, i64 32}
!139 = !{!138, !7, i64 0}
!140 = !{!138, !15, i64 8}
!141 = !{!138, !15, i64 16}
!142 = !{!138, !17, i64 24}
!143 = !{!"p1 _ZTS16gmx_output_env_t", !11, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"_ZTS7PbcType", !6, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"any p2 pointer", !11, i64 0}
!148 = !{!"p2 omnipotent char", !147, i64 0}
!149 = !{!"p1 _ZTS9t_iparams", !11, i64 0}
!150 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !6, i64 0}
!151 = !{!"_ZTS6t_idef", !7, i64 0, !7, i64 4, !11, i64 8, !149, i64 16, !26, i64 24, !149, i64 32, !149, i64 40, !150, i64 48, !7, i64 2328}
!152 = !{!"p1 _ZTS6t_atom", !11, i64 0}
!153 = !{!"any p3 pointer", !147, i64 0}
!154 = !{!"p3 omnipotent char", !153, i64 0}
!155 = !{!"p1 _ZTS9t_resinfo", !11, i64 0}
!156 = !{!"p1 _ZTS9t_pdbinfo", !11, i64 0}
!157 = !{!"_ZTS7t_atoms", !7, i64 0, !152, i64 8, !154, i64 16, !154, i64 24, !154, i64 32, !7, i64 40, !155, i64 48, !156, i64 56, !13, i64 64, !13, i64 65, !13, i64 66, !13, i64 67, !13, i64 68}
!158 = !{!"_ZTS7t_block", !7, i64 0, !12, i64 8, !7, i64 16}
!159 = !{!"p1 _ZTS8t_symbuf", !11, i64 0}
!160 = !{!"_ZTS8t_symtab", !7, i64 0, !159, i64 8}
!161 = !{!"_ZTS10t_topology", !148, i64 0, !151, i64 8, !157, i64 2344, !158, i64 2416, !13, i64 2440, !160, i64 2448}
!162 = !{!161, !7, i64 2344}
!163 = !{!"p1 _ZTS11t_trxstatus", !11, i64 0}
!164 = !{!163, !163, i64 0}
!165 = !{!161, !152, i64 2352}
!166 = !{!"short", !6, i64 0}
!167 = !{!"_ZTS12ParticleType", !6, i64 0}
!168 = !{!"_ZTS6t_atom", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !166, i64 16, !166, i64 18, !167, i64 20, !7, i64 24, !7, i64 28, !6, i64 32}
!169 = !{!168, !26, i64 0}
!170 = !{!34, !34, i64 0}
!171 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !38, i64 0}
!172 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !171, i64 0}
!173 = !{!"_ZTSSt6vectorIfSaIfEE", !172, i64 0}
!174 = !{!"_ZTSNSt12_Vector_baseIsSaIsEE12_Vector_implE", !40, i64 0}
!175 = !{!"_ZTSSt12_Vector_baseIsSaIsEE", !174, i64 0}
!176 = !{!"_ZTSSt6vectorIsSaIsEE", !175, i64 0}
!177 = !{!"_ZTSN3gmx14accessor_basicIsEE"}
!178 = !{!"_ZTSN3gmx6detail15extents_analyseILi0EJEEE"}
!179 = !{!"_ZTSN3gmx6detail15extents_analyseILi1EJLln1EEEE", !178, i64 0, !17, i64 8}
!180 = !{!"_ZTSN3gmx6detail15extents_analyseILi2EJLln1ELln1EEEE", !179, i64 0, !17, i64 16}
!181 = !{!"_ZTSN3gmx7extentsIJLln1ELln1EEEE", !180, i64 0}
!182 = !{!"_ZTSN3gmx12layout_right7mappingINS_7extentsIJLln1ELln1EEEEEE", !181, i64 0}
!183 = !{!"_ZTSN3gmx12basic_mdspanIsNS_7extentsIJLln1ELln1EEEENS_12layout_rightENS_14accessor_basicIsEEEE", !177, i64 0, !182, i64 8, !39, i64 32}
!184 = !{!"_ZTSN3gmx13MultiDimArrayISt6vectorIsSaIsEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEE", !176, i64 0, !183, i64 24}
!185 = !{!"_ZTSNSt12_Vector_baseI9t_mappingSaIS0_EE12_Vector_implE", !42, i64 0}
!186 = !{!"_ZTSSt12_Vector_baseI9t_mappingSaIS0_EE", !185, i64 0}
!187 = !{!"_ZTSSt6vectorI9t_mappingSaIS0_EE", !186, i64 0}
!188 = !{!"_ZTS8t_matrix", !7, i64 0, !7, i64 4, !7, i64 8, !21, i64 16, !21, i64 48, !21, i64 80, !21, i64 112, !13, i64 144, !173, i64 152, !173, i64 176, !184, i64 200, !187, i64 264}
!189 = !{!188, !7, i64 4}
!190 = !{!188, !7, i64 8}
!191 = !{!"branch_weights", i32 4, i32 28}
!192 = !{!"p2 float", !147, i64 0}
!193 = !{!"_ZTS5t_mat", !7, i64 0, !7, i64 4, !12, i64 8, !13, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !31, i64 32, !192, i64 40}
!194 = !{!193, !7, i64 0}
!195 = !{!193, !192, i64 40}
!196 = !{!193, !26, i64 28}
!197 = !{!193, !26, i64 24}
!198 = !{!193, !26, i64 20}
!199 = !{!193, !7, i64 4}
!200 = !{!71}
!201 = !{!72}
!202 = !{!81}
!203 = !{!82}
!204 = !{!83}
!205 = !{!82, !81}
!206 = !{!87}
!207 = !{!88}
!208 = !{!89}
!209 = !{!88, !87}
!210 = !{!99}
!211 = !{!100}
!212 = !{!"branch_weights", i32 8, i32 24}
!213 = !{!161, !155, i64 2392}
!214 = !{!157, !155, i64 48}
!215 = !{!161, !154, i64 2360}
!216 = !{!157, !154, i64 16}
!217 = !{!157, !152, i64 8}
!218 = !{!148, !148, i64 0}
!219 = !{!168, !7, i64 24}
!220 = !{!157, !7, i64 40}
!221 = !{!157, !7, i64 0}
!222 = !{!134, !133, i64 0}
!223 = !{!134, !133, i64 8}
!224 = !{!134, !133, i64 16}
!225 = distinct !{!225, !30}
!226 = distinct !{!226, !30}
!227 = distinct !{!227, !30}
!228 = distinct !{!228, !30}
!229 = distinct !{!229, !30}
!230 = distinct !{!230, i1 false, !"LVerDomain"}
!231 = distinct !{!231, !230}
!232 = distinct !{!232, !230}
!233 = distinct !{!233, !30, !44, !45}
!234 = distinct !{!234, !33}
!235 = distinct !{!235, !30, !44}
!236 = distinct !{!236, !30}
!237 = distinct !{!237, !30}
!238 = distinct !{!238, !33}
!239 = distinct !{!239, !30}
!240 = distinct !{!240, !30, !46}
!241 = distinct !{!241, !30}
!242 = distinct !{!242, !30}
!243 = distinct !{!243, i1 false, !"LVerDomain"}
!244 = distinct !{!244, !243}
!245 = distinct !{!245, !243}
!246 = distinct !{!246, !30, !44, !45}
!247 = distinct !{!247, !33}
!248 = distinct !{!248, !30, !44, !45}
!249 = distinct !{!249, !30, !45, !44}
!250 = distinct !{!250, !30, !44}
!251 = distinct !{!251, !30}
!252 = !{!49, !7, i64 0}
!253 = !{!231}
!254 = !{!232}
!255 = !{!244}
!256 = !{!245}
!257 = distinct !{!257, !30}
!258 = !{!42, !41, i64 16}
!259 = !{!40, !39, i64 0}
!260 = !{!40, !39, i64 16}
!261 = !{!38, !31, i64 16}
!262 = !{!"vtable pointer", !5, i64 0}
!263 = !{!262, !262, i64 0}
end_hunk_1
