Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@stress_majorization_kD_mkernel:bb.a
  store <2 x double> %i.zv, ptr %i.zu, align 8, !tbaa !35
  %index.next879 = add nuw i64 %index877, 2       ; 2 uses
  %i.zw = icmp eq i64 %index.next879, %n.vec873
  br i1 %i.zw, label %middle.block880, label %vector.body876, !llvm.loop !109

middle.block880:                                  ; preds = %vector.body876
  br i1 %cmp.n881, label %.lr.ph507, label %scalar.ph870.preheader

scalar.ph870.preheader:                           ; preds = %.lr.ph505, %middle.block880
  %indvars.iv613.ph = phi i64 [ 0, %.lr.ph505 ], [ %n.vec873, %middle.block880 ]
  br label %scalar.ph870

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.0343503 = phi double [ %.1344.1, %.lr.ph.new ], [ 1.000000e+00, %.lr.ph ] ; 2 uses
  %niter1028 = phi i64 [ %niter1028.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %indvars.iv
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !35
  %i.zz = call double @llvm.fabs.f64(double %i.zy) ; 2 uses
  %i.aaa = fcmp ogt double %i.zz, %.0343503
  %.1344 = select i1 %i.aaa, double %i.zz, double %.0343503 ; 2 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %indvars.iv
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aad = load double, ptr %i.aac, align 8, !tbaa !35
  %i.aae = call double @llvm.fabs.f64(double %i.aad) ; 2 uses
  %i.aaf = fcmp ogt double %i.aae, %.1344
  %.1344.1 = select i1 %i.aaf, double %i.aae, double %.1344 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter1028.next.1 = add i64 %niter1028, 2       ; 2 uses
  %niter1028.ncmp.1 = icmp eq i64 %niter1028.next.1, %unroll_iter1027
  br i1 %niter1028.ncmp.1, label %.lr.ph505.unr-lcssa, label %.lr.ph.new, !llvm.loop !110

.lr.ph507:                                        ; preds = %scalar.ph870, %middle.block880
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv623
  br label %bb.cp

scalar.ph870:                                     ; preds = %scalar.ph870.preheader, %scalar.ph870
  %indvars.iv613 = phi i64 [ %indvars.iv.next614, %scalar.ph870 ], [ %indvars.iv613.ph, %scalar.ph870.preheader ] ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv613 ; 2 uses
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !35
  %i.aaj = fdiv double %i.aai, %.1344.lcssa
  store double %i.aaj, ptr %i.aah, align 8, !tbaa !35
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %i.ca
  br i1 %exitcond617.not, label %.lr.ph507, label %scalar.ph870, !llvm.loop !111

bb.cp:                                            ; preds = %.lr.ph507, %bb.cp
  %indvars.iv618 = phi i64 [ 0, %.lr.ph507 ], [ %indvars.iv.next619, %bb.cp ] ; 2 uses
  %i.aak = call double @drand48() #15
  %i.aal = fadd double %i.aak, -5.000000e-01
  %i.aam = load ptr, ptr %i.aag, align 8, !tbaa !12 ; 2 uses
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %indvars.iv618 ; 2 uses
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !35
  %i.aap = call double @llvm.fmuladd.f64(double %i.aal, double f0x3EB0C6F7A0B5ED8D, double %i.aao)
  store double %i.aap, ptr %i.aan, align 8, !tbaa !35
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next619, %i.ca
  br i1 %exitcond622.not, label %._crit_edge, label %bb.cp, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.cp
  call void @orthog1(i32 noundef %1, ptr noundef nonnull %i.aam) #15
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond627.not = icmp eq i64 %indvars.iv.next624, %wide.trip.count809.i
  br i1 %exitcond627.not, label %.loopexit497, label %.lr.ph, !llvm.loop !113

bb.cq:                                            ; preds = %bb.x
  %i.aaq = tail call i32 @initLayout(i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3)
  %i.aar = icmp eq i32 %i.aaq, 0
  br label %.loopexit497

.loopexit497:                                     ; preds = %._crit_edge, %.preheader496, %bb.cq
  %.0346 = phi i1 [ %i.aar, %bb.cq ], [ true, %.preheader496 ], [ true, %._crit_edge ]
  %i.aas = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not415 = icmp eq i8 %i.aas, 0
  br i1 %.not415, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.loopexit497
  %i.aat = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aau = call double @elapsed_sec() #15
  %i.aav = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aat, ptr noundef nonnull @.str.8, double noundef %i.aau) #17 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.loopexit497
  %i.aaw = icmp eq i32 %1, 1
  %i.aax = icmp eq i32 %7, 0
  %or.cond3 = or i1 %i.aaw, %i.aax
  br i1 %or.cond3, label %.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aay = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not416 = icmp eq i8 %i.aay, 0
  br i1 %.not416, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aaz = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aba = call double @elapsed_sec() #15
  %i.abb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aaz, ptr noundef nonnull @.str.6, double noundef %i.aba) #17 ; 0 uses
  %i.abc = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite417 = call i64 @fwrite(ptr nonnull @.str.9, i64 26, i64 1, ptr %i.abc) #19 ; 0 uses
  call void @start_timer() #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.abd = sext i32 %4 to i64                     ; 6 uses
  %.not.i437 = icmp eq i32 %4, 0                  ; 2 uses
  br i1 %.not.i437, label %.thread.i, label %bb.cw

.thread.i:                                        ; preds = %bb.cv
  %i.abe = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  br label %gv_calloc.exit

bb.cw:                                            ; preds = %bb.cv
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.abf = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abf, ptr noundef nonnull @.str.14, i64 noundef %i.abd, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.abh = call noalias ptr @calloc(i64 noundef %i.abd, i64 noundef 8) #16 ; 2 uses
  %i.abi = icmp eq ptr %i.abh, null
  br i1 %i.abi, label %bb.cz, label %gv_calloc.exit

bb.cz:                                            ; preds = %bb.cy
  %i.abj = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abk = shl nuw nsw i64 %i.abd, 3
  %i.abl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abj, ptr noundef nonnull @.str.15, i64 noundef %i.abk) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.cy
  %i.abm = phi ptr [ %i.abe, %.thread.i ], [ %i.abh, %bb.cy ] ; 13 uses
  %i.abn = mul nsw i32 %4, %1                     ; 4 uses
  %i.abo = sext i32 %i.abn to i64                 ; 6 uses
  %.not.i438 = icmp eq i32 %i.abn, 0              ; 2 uses
  br i1 %.not.i438, label %.thread.i441, label %bb.da

.thread.i441:                                     ; preds = %gv_calloc.exit
  %i.abp = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit442

bb.da:                                            ; preds = %gv_calloc.exit
  %mul.ov.i440 = icmp slt i32 %i.abn, 0
  br i1 %mul.ov.i440, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abq = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abq, ptr noundef nonnull @.str.14, i64 noundef %i.abo, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.abs = call noalias ptr @calloc(i64 noundef %i.abo, i64 noundef 4) #16 ; 2 uses
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %bb.dd, label %gv_calloc.exit442

bb.dd:                                            ; preds = %bb.dc
  %i.abu = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abv = shl nuw nsw i64 %i.abo, 2
  %i.abw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.15, i64 noundef %i.abv) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit442:                                ; preds = %.thread.i441, %bb.dc
  %i.abx = phi ptr [ %i.abp, %.thread.i441 ], [ %i.abs, %bb.dc ] ; 5 uses
  %i.aby = icmp ne i32 %4, 0                      ; 5 uses
  br i1 %i.aby, label %.lr.ph514, label %._crit_edge515

.lr.ph514:                                        ; preds = %gv_calloc.exit442
  %i.abz = icmp sgt i32 %1, 0
  %i.aca = sext i32 %1 to i64
  %wide.trip.count636 = zext nneg i32 %4 to i64
  %wide.trip.count631 = zext i32 %1 to i64        ; 3 uses
  %min.iters.check884 = icmp ult i32 %1, 4
  %n.vec886 = and i64 %wide.trip.count631, 2147483644 ; 3 uses
  %cmp.n893 = icmp eq i64 %n.vec886, %wide.trip.count631
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph514, %._crit_edge512
  %indvars.iv633 = phi i64 [ 0, %.lr.ph514 ], [ %indvars.iv.next634, %._crit_edge512 ] ; 4 uses
  %i.acb = mul nsw i64 %indvars.iv633, %i.aca
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.abx, i64 %i.acb ; 3 uses
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv633
  store ptr %i.acc, ptr %i.acd, align 8, !tbaa !56
  br i1 %i.abz, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.de
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv633
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check884, label %scalar.ph883.preheader, label %vector.body887

vector.body887:                                   ; preds = %.lr.ph511, %vector.body887
  %index888 = phi i64 [ %index.next891, %vector.body887 ], [ 0, %.lr.ph511 ] ; 3 uses
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %index888 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %wide.load889 = load <2 x double>, ptr %i.acg, align 8, !tbaa !35
  %wide.load890 = load <2 x double>, ptr %i.ach, align 8, !tbaa !35
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %index888
  %8 = shufflevector <2 x double> %wide.load889, <2 x double> %wide.load890, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = fptrunc <4 x double> %8 to <4 x float>
  store <4 x float> %9, ptr %i.aci, align 4, !tbaa !48
  %index.next891 = add nuw i64 %index888, 4       ; 2 uses
  %i.acj = icmp eq i64 %index.next891, %n.vec886
  br i1 %i.acj, label %middle.block892, label %vector.body887, !llvm.loop !114

middle.block892:                                  ; preds = %vector.body887
  br i1 %cmp.n893, label %._crit_edge512, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %.lr.ph511, %middle.block892
  %indvars.iv628.ph = phi i64 [ 0, %.lr.ph511 ], [ %n.vec886, %middle.block892 ]
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %indvars.iv628 = phi i64 [ %indvars.iv.next629, %scalar.ph883 ], [ %indvars.iv628.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %indvars.iv628
  %i.acl = load double, ptr %i.ack, align 8, !tbaa !35
  %i.acm = fptrunc double %i.acl to float
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %indvars.iv628
  store float %i.acm, ptr %i.acn, align 4, !tbaa !48
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond632.not = icmp eq i64 %indvars.iv.next629, %wide.trip.count631
  br i1 %exitcond632.not, label %._crit_edge512, label %scalar.ph883, !llvm.loop !115

._crit_edge512:                                   ; preds = %scalar.ph883, %middle.block892, %bb.de
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %exitcond637.not = icmp eq i64 %indvars.iv.next634, %wide.trip.count636
  br i1 %exitcond637.not, label %._crit_edge515, label %bb.de, !llvm.loop !116

._crit_edge515:                                   ; preds = %._crit_edge512, %gv_calloc.exit442
  %i.aco = sitofp i32 %1 to float
  %i.acp = add i32 %1, -1                         ; 5 uses
  %i.acq = sitofp i32 %i.acp to float
  %i.acr = fmul nnan float %i.aco, %i.acq
  %i.acs = fmul nnan float %i.acr, 5.000000e-01
  %i.act = add nsw i32 %1, 1
  %i.acu = mul nsw i32 %i.act, %1                 ; 3 uses
  %i.acv = sdiv i32 %i.acu, 2                     ; 4 uses
  %i.acw = icmp eq i32 %i.e, 2                    ; 3 uses
  br i1 %i.acw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge515
  call void @square_vec(i32 noundef %i.acv, ptr noundef %.1364) #15
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge515
  call void @invert_vec(i32 noundef %i.acv, ptr noundef %.1364) #15
  %i.acx = sext i32 %1 to i64                     ; 19 uses
  %.not.i443 = icmp ne i32 %1, 0                  ; 5 uses
  br i1 %.not.i443, label %bb.dh, label %.preheader491.thread811

.preheader491.thread811:                          ; preds = %bb.dg
  %i.acy = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #16
  br label %._crit_edge530

bb.dh:                                            ; preds = %bb.dg
  %mul.ov.i445 = icmp slt i32 %1, 0
  br i1 %mul.ov.i445, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.acz = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ada = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.acz, ptr noundef nonnull @.str.14, i64 noundef %i.acx, i64 noundef 16) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.adb = call noalias ptr @calloc(i64 noundef %i.acx, i64 noundef 16) #16 ; 8 uses
  %i.adc = icmp eq ptr %i.adb, null
  br i1 %i.adc, label %bb.dk, label %gv_calloc.exit447

bb.dk:                                            ; preds = %bb.dj
  %i.add = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ade = shl nuw nsw i64 %i.acx, 4
  %i.adf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.add, ptr noundef nonnull @.str.15, i64 noundef %i.ade) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit447:                                ; preds = %bb.dj
  br i1 %i.bk, label %.preheader492.preheader, label %.lr.ph529.preheader

.preheader492.preheader:                          ; preds = %gv_calloc.exit447
  %wide.trip.count652 = zext nneg i32 %i.acp to i64
  %invariant.op = add nsw i64 %i.acx, -1
  br label %.preheader492

.preheader492:                                    ; preds = %.preheader492.preheader, %._crit_edge521
  %indvars.iv649 = phi i64 [ 0, %.preheader492.preheader ], [ %indvars.iv.next650, %._crit_edge521 ] ; 4 uses
  %indvars.iv645 = phi i32 [ %1, %.preheader492.preheader ], [ %indvars.iv.next646, %._crit_edge521 ] ; 3 uses
  %.0365525 = phi i32 [ 0, %.preheader492.preheader ], [ %.1366.lcssa, %._crit_edge521 ]
  %i.adg = zext i32 %indvars.iv645 to i64
  %i.adh = add nsw i64 %i.adg, -1                 ; 3 uses
  %.1366516 = add i32 %.0365525, 1                ; 2 uses
  %i.adi = icmp slt i64 %indvars.iv649, %invariant.op
  br i1 %i.adi, label %.lr.ph520.preheader, label %._crit_edge521

.lr.ph520.preheader:                              ; preds = %.preheader492
  %i.adj = sext i32 %.1366516 to i64              ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.adb, i64 %indvars.iv649 ; 3 uses
  %xtraiter1029 = and i64 %i.adh, 1
  %i.adk = icmp eq i32 %indvars.iv645, 2
  br i1 %i.adk, label %.lr.ph520.epil.preheader, label %.lr.ph520.preheader.new

.lr.ph520.preheader.new:                          ; preds = %.lr.ph520.preheader
  %unroll_iter1035 = and i64 %i.adh, -2
  br label %.lr.ph520

.lr.ph529.preheader:                              ; preds = %._crit_edge521, %gv_calloc.exit447
  %wide.trip.count661 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter1037 = and i64 %wide.trip.count661, 1
  %unroll_iter1041 = and i64 %wide.trip.count661, 2147483646
  br label %.lr.ph529

.lr.ph520:                                        ; preds = %.lr.ph520, %.lr.ph520.preheader.new
  %indvars.iv640 = phi i64 [ 1, %.lr.ph520.preheader.new ], [ %indvars.iv.next641.1, %.lr.ph520 ] ; 3 uses
  %indvars.iv638 = phi i64 [ %i.adj, %.lr.ph520.preheader.new ], [ %indvars.iv.next639.1, %.lr.ph520 ] ; 3 uses
  %.0359518 = phi x86_fp80 [ 0.000000e+00, %.lr.ph520.preheader.new ], [ %i.adv, %.lr.ph520 ]
  %niter1036 = phi i64 [ 0, %.lr.ph520.preheader.new ], [ %niter1036.next.1, %.lr.ph520 ]
  %i.adl = getelementptr inbounds [4 x i8], ptr %.1364, i64 %indvars.iv638
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !48
  %i.adn = fpext float %i.adm to x86_fp80         ; 2 uses
  %i.ado = fadd x86_fp80 %.0359518, %i.adn
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv640 ; 2 uses
  %i.adp = load x86_fp80, ptr %gep, align 16, !tbaa !153
  %i.adq = fsub x86_fp80 %i.adp, %i.adn
  store x86_fp80 %i.adq, ptr %gep, align 16, !tbaa !153
  %i.adr = getelementptr [4 x i8], ptr %.1364, i64 %indvars.iv638
  %i.ads = getelementptr i8, ptr %i.adr, i64 4
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !48
  %i.adu = fpext float %i.adt to x86_fp80         ; 2 uses
  %i.adv = fadd x86_fp80 %i.ado, %i.adu           ; 3 uses
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv640
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.adw, i64 16 ; 2 uses
  %i.adx = load x86_fp80, ptr %gep.1, align 16, !tbaa !153
  %i.ady = fsub x86_fp80 %i.adx, %i.adu
  store x86_fp80 %i.ady, ptr %gep.1, align 16, !tbaa !153
  %indvars.iv.next641.1 = add nuw nsw i64 %indvars.iv640, 2 ; 2 uses
  %indvars.iv.next639.1 = add nsw i64 %indvars.iv638, 2 ; 3 uses
  %niter1036.next.1 = add nuw i64 %niter1036, 2   ; 2 uses
  %niter1036.ncmp.1 = icmp eq i64 %niter1036.next.1, %unroll_iter1035
  br i1 %niter1036.ncmp.1, label %._crit_edge521.loopexit.unr-lcssa, label %.lr.ph520, !llvm.loop !117

._crit_edge521.loopexit.unr-lcssa:                ; preds = %.lr.ph520
  %lcmp.mod1031.not = icmp eq i64 %xtraiter1029, 0
  br i1 %lcmp.mod1031.not, label %._crit_edge521.loopexit, label %.lr.ph520.epil.preheader

.lr.ph520.epil.preheader:                         ; preds = %._crit_edge521.loopexit.unr-lcssa, %.lr.ph520.preheader
  %indvars.iv640.epil.init = phi i64 [ 1, %.lr.ph520.preheader ], [ %indvars.iv.next641.1, %._crit_edge521.loopexit.unr-lcssa ]
  %indvars.iv638.epil.init = phi i64 [ %i.adj, %.lr.ph520.preheader ], [ %indvars.iv.next639.1, %._crit_edge521.loopexit.unr-lcssa ] ; 2 uses
  %.0359518.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph520.preheader ], [ %i.adv, %._crit_edge521.loopexit.unr-lcssa ]
  %lcmp.mod1034 = trunc i64 %i.adh to i1
  call void @llvm.assume(i1 %lcmp.mod1034)
  %i.adz = getelementptr inbounds [4 x i8], ptr %.1364, i64 %indvars.iv638.epil.init
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !48
  %i.aeb = fpext float %i.aea to x86_fp80         ; 2 uses
  %i.aec = fadd x86_fp80 %.0359518.epil.init, %i.aeb
  %gep.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv640.epil.init ; 2 uses
  %i.aed = load x86_fp80, ptr %gep.epil, align 16, !tbaa !153
  %i.aee = fsub x86_fp80 %i.aed, %i.aeb
  store x86_fp80 %i.aee, ptr %gep.epil, align 16, !tbaa !153
  %indvars.iv.next639.epil = add nsw i64 %indvars.iv638.epil.init, 1
  br label %._crit_edge521.loopexit

._crit_edge521.loopexit:                          ; preds = %._crit_edge521.loopexit.unr-lcssa, %.lr.ph520.epil.preheader
  %.lcssa965 = phi x86_fp80 [ %i.adv, %._crit_edge521.loopexit.unr-lcssa ], [ %i.aec, %.lr.ph520.epil.preheader ]
  %indvars.iv.next639.lcssa = phi i64 [ %indvars.iv.next639.1, %._crit_edge521.loopexit.unr-lcssa ], [ %indvars.iv.next639.epil, %.lr.ph520.epil.preheader ]
  %i.aef = trunc nsw i64 %indvars.iv.next639.lcssa to i32
  br label %._crit_edge521

._crit_edge521:                                   ; preds = %._crit_edge521.loopexit, %.preheader492
  %.0359.lcssa = phi x86_fp80 [ 0.000000e+00, %.preheader492 ], [ %.lcssa965, %._crit_edge521.loopexit ]
  %.1366.lcssa = phi i32 [ %.1366516, %.preheader492 ], [ %i.aef, %._crit_edge521.loopexit ]
  %i.aeg = getelementptr inbounds nuw [16 x i8], ptr %i.adb, i64 %indvars.iv649 ; 2 uses
  %i.aeh = load x86_fp80, ptr %i.aeg, align 16, !tbaa !153
  %i.aei = fsub x86_fp80 %i.aeh, %.0359.lcssa
  store x86_fp80 %i.aei, ptr %i.aeg, align 16, !tbaa !153
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %indvars.iv.next646 = add i32 %indvars.iv645, -1
  %exitcond653.not = icmp eq i64 %indvars.iv.next650, %wide.trip.count652
  br i1 %exitcond653.not, label %.lr.ph529.preheader, label %.preheader492, !llvm.loop !118

.lr.ph529:                                        ; preds = %.lr.ph529, %.lr.ph529.preheader
  %indvars.iv656 = phi i64 [ 0, %.lr.ph529.preheader ], [ %indvars.iv.next657.1, %.lr.ph529 ] ; 3 uses
  %indvars.iv654 = phi i64 [ %i.acx, %.lr.ph529.preheader ], [ %indvars.iv.next655.1, %.lr.ph529 ] ; 3 uses
  %.2367527 = phi i32 [ 0, %.lr.ph529.preheader ], [ %i.aey, %.lr.ph529 ] ; 2 uses
  %niter1042 = phi i64 [ 0, %.lr.ph529.preheader ], [ %niter1042.next.1, %.lr.ph529 ]
  %i.aej = getelementptr inbounds nuw [16 x i8], ptr %i.adb, i64 %indvars.iv656
  %i.aek = load x86_fp80, ptr %i.aej, align 16, !tbaa !153
  %i.ael = fptrunc x86_fp80 %i.aek to float
  %i.aem = sext i32 %.2367527 to i64
  %i.aen = getelementptr inbounds [4 x i8], ptr %.1364, i64 %i.aem
  store float %i.ael, ptr %i.aen, align 4, !tbaa !48
  %i.aeo = trunc nsw i64 %indvars.iv654 to i32
  %i.aep = add nsw i32 %.2367527, %i.aeo          ; 2 uses
  %i.aeq = getelementptr inbounds nuw [16 x i8], ptr %i.adb, i64 %indvars.iv656
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  %i.aes = load x86_fp80, ptr %i.aer, align 16, !tbaa !153
  %i.aet = fptrunc x86_fp80 %i.aes to float
  %i.aeu = sext i32 %i.aep to i64
  %i.aev = getelementptr inbounds [4 x i8], ptr %.1364, i64 %i.aeu
  store float %i.aet, ptr %i.aev, align 4, !tbaa !48
  %indvars.iv.next657.1 = add nuw nsw i64 %indvars.iv656, 2 ; 2 uses
  %i.aew = trunc i64 %indvars.iv654 to i32
end_hunk_0
