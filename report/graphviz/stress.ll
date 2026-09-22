Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@stress_majorization_kD_mkernel:bb.a
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
  %i.aci = fptrunc <2 x double> %wide.load889 to <2 x float>
  %i.acj = fptrunc <2 x double> %wide.load890 to <2 x float>
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %index888 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  store <2 x float> %i.aci, ptr %i.ack, align 4, !tbaa !48
  store <2 x float> %i.acj, ptr %i.acl, align 4, !tbaa !48
  %index.next891 = add nuw i64 %index888, 4       ; 2 uses
  %i.acm = icmp eq i64 %index.next891, %n.vec886
  br i1 %i.acm, label %middle.block892, label %vector.body887, !llvm.loop !114

middle.block892:                                  ; preds = %vector.body887
  br i1 %cmp.n893, label %._crit_edge512, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %.lr.ph511, %middle.block892
  %indvars.iv628.ph = phi i64 [ 0, %.lr.ph511 ], [ %n.vec886, %middle.block892 ]
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %indvars.iv628 = phi i64 [ %indvars.iv.next629, %scalar.ph883 ], [ %indvars.iv628.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %indvars.iv628
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !35
  %i.acp = fptrunc double %i.aco to float
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %indvars.iv628
  store float %i.acp, ptr %i.acq, align 4, !tbaa !48
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond632.not = icmp eq i64 %indvars.iv.next629, %wide.trip.count631
  br i1 %exitcond632.not, label %._crit_edge512, label %scalar.ph883, !llvm.loop !115

._crit_edge512:                                   ; preds = %scalar.ph883, %middle.block892, %bb.de
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %exitcond637.not = icmp eq i64 %indvars.iv.next634, %wide.trip.count636
  br i1 %exitcond637.not, label %._crit_edge515, label %bb.de, !llvm.loop !116

._crit_edge515:                                   ; preds = %._crit_edge512, %gv_calloc.exit442
  %i.acr = sitofp i32 %1 to float
  %i.acs = add i32 %1, -1                         ; 5 uses
  %i.act = sitofp i32 %i.acs to float
  %i.acu = fmul nnan float %i.acr, %i.act
  %i.acv = fmul nnan float %i.acu, 5.000000e-01
  %i.acw = add nsw i32 %1, 1
  %i.acx = mul nsw i32 %i.acw, %1                 ; 3 uses
  %i.acy = sdiv i32 %i.acx, 2                     ; 4 uses
  %i.acz = icmp eq i32 %i.e, 2                    ; 3 uses
  br i1 %i.acz, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge515
  call void @square_vec(i32 noundef %i.acy, ptr noundef %.1364) #15
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge515
  call void @invert_vec(i32 noundef %i.acy, ptr noundef %.1364) #15
  %i.ada = sext i32 %1 to i64                     ; 18 uses
  %.not.i443 = icmp ne i32 %1, 0                  ; 5 uses
  br i1 %.not.i443, label %bb.dh, label %.preheader491.thread811

.preheader491.thread811:                          ; preds = %bb.dg
  %i.adb = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #16
  br label %._crit_edge530

bb.dh:                                            ; preds = %bb.dg
  %mul.ov.i445 = icmp slt i32 %1, 0
  br i1 %mul.ov.i445, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.adc = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.add = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adc, ptr noundef nonnull @.str.14, i64 noundef %i.ada, i64 noundef 16) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.ade = call noalias ptr @calloc(i64 noundef %i.ada, i64 noundef 16) #16 ; 8 uses
  %i.adf = icmp eq ptr %i.ade, null
  br i1 %i.adf, label %bb.dk, label %gv_calloc.exit447

bb.dk:                                            ; preds = %bb.dj
  %i.adg = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.adh = shl nuw nsw i64 %i.ada, 4
  %i.adi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adg, ptr noundef nonnull @.str.15, i64 noundef %i.adh) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit447:                                ; preds = %bb.dj
  br i1 %i.bk, label %.preheader492.preheader, label %.lr.ph529.preheader

.preheader492.preheader:                          ; preds = %gv_calloc.exit447
  %wide.trip.count652 = zext nneg i32 %i.acs to i64
  br label %.preheader492

.preheader492:                                    ; preds = %.preheader492.preheader, %._crit_edge521
  %indvars.iv649 = phi i64 [ 0, %.preheader492.preheader ], [ %indvars.iv.next650, %._crit_edge521 ] ; 4 uses
  %indvars.iv645 = phi i32 [ %1, %.preheader492.preheader ], [ %indvars.iv.next646, %._crit_edge521 ] ; 3 uses
  %.0365525 = phi i32 [ 0, %.preheader492.preheader ], [ %.1366.lcssa, %._crit_edge521 ]
  %i.adj = zext i32 %indvars.iv645 to i64
  %i.adk = add nsw i64 %i.adj, -1                 ; 3 uses
  %.1366516 = add i32 %.0365525, 1                ; 2 uses
  %8 = trunc i64 %indvars.iv649 to i32
  %9 = sub i32 %1, %8
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %.lr.ph520.preheader, label %._crit_edge521

.lr.ph520.preheader:                              ; preds = %.preheader492
  %i.adl = sext i32 %.1366516 to i64              ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.ade, i64 %indvars.iv649 ; 3 uses
  %xtraiter1029 = and i64 %i.adk, 1
  %i.adm = icmp eq i32 %indvars.iv645, 2
  br i1 %i.adm, label %.lr.ph520.epil.preheader, label %.lr.ph520.preheader.new

.lr.ph520.preheader.new:                          ; preds = %.lr.ph520.preheader
  %unroll_iter1035 = and i64 %i.adk, -2
  br label %.lr.ph520

.lr.ph529.preheader:                              ; preds = %._crit_edge521, %gv_calloc.exit447
  %wide.trip.count661 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter1037 = and i64 %wide.trip.count661, 1
  %unroll_iter1041 = and i64 %wide.trip.count661, 2147483646
  br label %.lr.ph529

.lr.ph520:                                        ; preds = %.lr.ph520, %.lr.ph520.preheader.new
  %indvars.iv640 = phi i64 [ 1, %.lr.ph520.preheader.new ], [ %indvars.iv.next641.1, %.lr.ph520 ] ; 3 uses
  %indvars.iv638 = phi i64 [ %i.adl, %.lr.ph520.preheader.new ], [ %indvars.iv.next639.1, %.lr.ph520 ] ; 3 uses
  %.0359518 = phi x86_fp80 [ 0.000000e+00, %.lr.ph520.preheader.new ], [ %i.adx, %.lr.ph520 ]
  %niter1036 = phi i64 [ 0, %.lr.ph520.preheader.new ], [ %niter1036.next.1, %.lr.ph520 ]
  %i.adn = getelementptr inbounds [4 x i8], ptr %.1364, i64 %indvars.iv638
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !48
  %i.adp = fpext float %i.ado to x86_fp80         ; 2 uses
  %i.adq = fadd x86_fp80 %.0359518, %i.adp
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv640 ; 2 uses
  %i.adr = load x86_fp80, ptr %gep, align 16, !tbaa !153
  %i.ads = fsub x86_fp80 %i.adr, %i.adp
  store x86_fp80 %i.ads, ptr %gep, align 16, !tbaa !153
  %i.adt = getelementptr [4 x i8], ptr %.1364, i64 %indvars.iv638
  %i.adu = getelementptr i8, ptr %i.adt, i64 4
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !48
  %i.adw = fpext float %i.adv to x86_fp80         ; 2 uses
  %i.adx = fadd x86_fp80 %i.adq, %i.adw           ; 3 uses
  %i.ady = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv640
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ady, i64 16 ; 2 uses
  %i.adz = load x86_fp80, ptr %gep.1, align 16, !tbaa !153
  %i.aea = fsub x86_fp80 %i.adz, %i.adw
  store x86_fp80 %i.aea, ptr %gep.1, align 16, !tbaa !153
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
  %indvars.iv638.epil.init = phi i64 [ %i.adl, %.lr.ph520.preheader ], [ %indvars.iv.next639.1, %._crit_edge521.loopexit.unr-lcssa ] ; 2 uses
  %.0359518.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph520.preheader ], [ %i.adx, %._crit_edge521.loopexit.unr-lcssa ]
  %lcmp.mod1034 = trunc i64 %i.adk to i1
  call void @llvm.assume(i1 %lcmp.mod1034)
  %i.aeb = getelementptr inbounds [4 x i8], ptr %.1364, i64 %indvars.iv638.epil.init
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !48
  %i.aed = fpext float %i.aec to x86_fp80         ; 2 uses
  %i.aee = fadd x86_fp80 %.0359518.epil.init, %i.aed
  %gep.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv640.epil.init ; 2 uses
  %i.aef = load x86_fp80, ptr %gep.epil, align 16, !tbaa !153
  %i.aeg = fsub x86_fp80 %i.aef, %i.aed
  store x86_fp80 %i.aeg, ptr %gep.epil, align 16, !tbaa !153
  %indvars.iv.next639.epil = add nsw i64 %indvars.iv638.epil.init, 1
  br label %._crit_edge521.loopexit

._crit_edge521.loopexit:                          ; preds = %._crit_edge521.loopexit.unr-lcssa, %.lr.ph520.epil.preheader
  %.lcssa965 = phi x86_fp80 [ %i.adx, %._crit_edge521.loopexit.unr-lcssa ], [ %i.aee, %.lr.ph520.epil.preheader ]
  %indvars.iv.next639.lcssa = phi i64 [ %indvars.iv.next639.1, %._crit_edge521.loopexit.unr-lcssa ], [ %indvars.iv.next639.epil, %.lr.ph520.epil.preheader ]
  %i.aeh = trunc nsw i64 %indvars.iv.next639.lcssa to i32
  br label %._crit_edge521

._crit_edge521:                                   ; preds = %._crit_edge521.loopexit, %.preheader492
  %.0359.lcssa = phi x86_fp80 [ 0.000000e+00, %.preheader492 ], [ %.lcssa965, %._crit_edge521.loopexit ]
  %.1366.lcssa = phi i32 [ %.1366516, %.preheader492 ], [ %i.aeh, %._crit_edge521.loopexit ]
  %i.aei = getelementptr inbounds nuw [16 x i8], ptr %i.ade, i64 %indvars.iv649 ; 2 uses
  %i.aej = load x86_fp80, ptr %i.aei, align 16, !tbaa !153
  %i.aek = fsub x86_fp80 %i.aej, %.0359.lcssa
  store x86_fp80 %i.aek, ptr %i.aei, align 16, !tbaa !153
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %indvars.iv.next646 = add i32 %indvars.iv645, -1
  %exitcond653.not = icmp eq i64 %indvars.iv.next650, %wide.trip.count652
  br i1 %exitcond653.not, label %.lr.ph529.preheader, label %.preheader492, !llvm.loop !118

.lr.ph529:                                        ; preds = %.lr.ph529, %.lr.ph529.preheader
  %indvars.iv656 = phi i64 [ 0, %.lr.ph529.preheader ], [ %indvars.iv.next657.1, %.lr.ph529 ] ; 3 uses
  %indvars.iv654 = phi i64 [ %i.ada, %.lr.ph529.preheader ], [ %indvars.iv.next655.1, %.lr.ph529 ] ; 3 uses
  %.2367527 = phi i32 [ 0, %.lr.ph529.preheader ], [ %i.afa, %.lr.ph529 ] ; 2 uses
  %niter1042 = phi i64 [ 0, %.lr.ph529.preheader ], [ %niter1042.next.1, %.lr.ph529 ]
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.ade, i64 %indvars.iv656
  %i.aem = load x86_fp80, ptr %i.ael, align 16, !tbaa !153
  %i.aen = fptrunc x86_fp80 %i.aem to float
  %i.aeo = sext i32 %.2367527 to i64
  %i.aep = getelementptr inbounds [4 x i8], ptr %.1364, i64 %i.aeo
  store float %i.aen, ptr %i.aep, align 4, !tbaa !48
  %i.aeq = trunc nsw i64 %indvars.iv654 to i32
  %i.aer = add nsw i32 %.2367527, %i.aeq          ; 2 uses
  %i.aes = getelementptr inbounds nuw [16 x i8], ptr %i.ade, i64 %indvars.iv656
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  %i.aeu = load x86_fp80, ptr %i.aet, align 16, !tbaa !153
  %i.aev = fptrunc x86_fp80 %i.aeu to float
  %i.aew = sext i32 %i.aer to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %.1364, i64 %i.aew
  store float %i.aev, ptr %i.aex, align 4, !tbaa !48
  %indvars.iv.next657.1 = add nuw nsw i64 %indvars.iv656, 2 ; 2 uses
  %i.aey = trunc i64 %indvars.iv654 to i32
  %i.aez = add i32 %i.aey, -1
  %i.afa = add nsw i32 %i.aer, %i.aez             ; 2 uses
  %indvars.iv.next655.1 = add nsw i64 %indvars.iv654, -2
  %niter1042.next.1 = add i64 %niter1042, 2       ; 2 uses
  %niter1042.ncmp.1 = icmp eq i64 %niter1042.next.1, %unroll_iter1041
  br i1 %niter1042.ncmp.1, label %._crit_edge530.loopexit.unr-lcssa, label %.lr.ph529, !llvm.loop !119

._crit_edge530.loopexit.unr-lcssa:                ; preds = %.lr.ph529
  %lcmp.mod1039.not = icmp eq i64 %xtraiter1037, 0
  br i1 %lcmp.mod1039.not, label %._crit_edge530, label %.lr.ph529.epil.preheader

.lr.ph529.epil.preheader:                         ; preds = %._crit_edge530.loopexit.unr-lcssa
  %lcmp.mod1040 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod1040)
  %i.afb = getelementptr inbounds nuw [16 x i8], ptr %i.ade, i64 %indvars.iv.next657.1
  %i.afc = load x86_fp80, ptr %i.afb, align 16, !tbaa !153
  %i.afd = fptrunc x86_fp80 %i.afc to float
  %i.afe = sext i32 %i.afa to i64
  %i.aff = getelementptr inbounds [4 x i8], ptr %.1364, i64 %i.afe
  store float %i.afd, ptr %i.aff, align 4, !tbaa !48
  br label %._crit_edge530

._crit_edge530:                                   ; preds = %.lr.ph529.epil.preheader, %._crit_edge530.loopexit.unr-lcssa, %.preheader491.thread811
  %i.afg = phi ptr [ %i.adb, %.preheader491.thread811 ], [ %i.ade, %._crit_edge530.loopexit.unr-lcssa ], [ %i.ade, %.lr.ph529.epil.preheader ] ; 11 uses
  br i1 %.not.i437, label %gv_calloc.exit452.thread, label %bb.dl

gv_calloc.exit452.thread:                         ; preds = %._crit_edge530
  %i.afh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  br label %.thread.i456

bb.dl:                                            ; preds = %._crit_edge530
  %mul.ov.i450 = icmp slt i32 %4, 0
  br i1 %mul.ov.i450, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.afi = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.afj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afi, ptr noundef nonnull @.str.14, i64 noundef %i.abd, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.afk = call noalias ptr @calloc(i64 noundef %i.abd, i64 noundef 8) #16 ; 3 uses
  %i.afl = icmp eq ptr %i.afk, null
  br i1 %i.afl, label %bb.do, label %gv_calloc.exit452

bb.do:                                            ; preds = %bb.dn
  %i.afm = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.afn = shl nuw nsw i64 %i.abd, 3
  %i.afo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afm, ptr noundef nonnull @.str.15, i64 noundef %i.afn) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit452:                                ; preds = %bb.dn
  br i1 %.not.i438, label %.thread.i456, label %bb.dp

.thread.i456:                                     ; preds = %gv_calloc.exit452.thread, %gv_calloc.exit452
  %i.afp = phi ptr [ %i.afh, %gv_calloc.exit452.thread ], [ %i.afk, %gv_calloc.exit452 ]
  %i.afq = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit457

bb.dp:                                            ; preds = %gv_calloc.exit452
  %mul.ov.i455 = icmp slt i32 %i.abn, 0
  br i1 %mul.ov.i455, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.afr = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.afs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afr, ptr noundef nonnull @.str.14, i64 noundef %i.abo, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.aft = call noalias ptr @calloc(i64 noundef %i.abo, i64 noundef 4) #16 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %bb.ds, label %gv_calloc.exit457

bb.ds:                                            ; preds = %bb.dr
  %i.afv = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.afw = shl nuw nsw i64 %i.abo, 2
  %i.afx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afv, ptr noundef nonnull @.str.15, i64 noundef %i.afw) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit457:                                ; preds = %.thread.i456, %bb.dr
  %i.afy = phi ptr [ %i.afp, %.thread.i456 ], [ %i.afk, %bb.dr ] ; 14 uses
  %i.afz = phi ptr [ %i.afq, %.thread.i456 ], [ %i.aft, %bb.dr ] ; 6 uses
  store ptr %i.afz, ptr %i.afy, align 8, !tbaa !56
  %i.aga = icmp samesign ugt i32 %4, 1
  br i1 %i.aga, label %.lr.ph532.preheader, label %._crit_edge533

.lr.ph532.preheader:                              ; preds = %gv_calloc.exit457
  %wide.trip.count666 = zext nneg i32 %4 to i64
  %i.agb = add nsw i64 %wide.trip.count666, -1    ; 2 uses
end_hunk_0
begin_hunk_1_@stress_majorization_kD_mkernel:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.em, %.lr.ph577.epil.preheader, %.preheader482
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next740, %wide.trip.count742
  br i1 %exitcond743.not, label %._crit_edge581, label %.lr.ph580.split, !llvm.loop !138

._crit_edge581:                                   ; preds = %.loopexit, %bb.ei, %._crit_edge574
  %i.arr = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not423 = icmp ne i8 %i.arr, 0
  %i.ars = urem i32 %.0341583, 5
  %i.art = icmp eq i32 %i.ars, 0
  %or.cond429 = and i1 %i.art, %.not423
  br i1 %or.cond429, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %._crit_edge581
  %i.aru = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.arv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aru, ptr noundef nonnull @.str.11, double noundef %.1353.lcssa) #17 ; 0 uses
  %i.arw = add nuw nsw i32 %.0341583, 5
  %i.arx = urem i32 %i.arw, 50
  %i.ary = icmp eq i32 %i.arx, 0
  br i1 %i.ary, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.arz = load ptr, ptr @stderr, align 8, !tbaa !39
  %fputc = call i32 @fputc(i32 10, ptr %i.arz)    ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %._crit_edge581, %bb.eo, %bb.en
  %i.asa = add nuw nsw i32 %.0341583, 1           ; 5 uses
  %i.asb = icmp sge i32 %i.asa, %7
  %i.asc = select i1 %i.asb, i1 true, i1 %i.apw
  %.not421 = select i1 %i.asc, i1 true, i1 %i.apx
  br i1 %.not421, label %._crit_edge586, label %bb.ed, !llvm.loop !140

._crit_edge586:                                   ; preds = %bb.ep
  %i.asd = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not422 = icmp eq i8 %i.asd, 0
  br i1 %.not422, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %._crit_edge586
  %i.ase = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.asf = call fastcc double @compute_stressf(ptr noundef %i.abm, ptr noundef %.1364, i32 noundef %4, i32 noundef %1, i32 noundef %i.e)
  %i.asg = call double @elapsed_sec() #15
  %i.ash = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ase, ptr noundef nonnull @.str.13, double noundef %i.asf, i32 noundef %i.asa, double noundef %i.asg) #17 ; 0 uses
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %._crit_edge586
  %or.cond592 = and i1 %i.aby, %.not.i443
  br i1 %or.cond592, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.er
  %wide.trip.count757 = zext nneg i32 %4 to i64
  %wide.trip.count752 = zext nneg i32 %1 to i64
  %min.iters.check946 = icmp ult i32 %1, 4
  %n.vec948 = and i64 %wide.trip.count717, 4294967292 ; 3 uses
  %cmp.n955 = icmp eq i64 %n.vec948, %wide.trip.count717
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge590
  %indvars.iv754 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next755, %._crit_edge590 ] ; 3 uses
  %i.asi = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv754
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !56 ; 2 uses
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv754
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check946, label %scalar.ph945.preheader, label %vector.body949

vector.body949:                                   ; preds = %.preheader, %vector.body949
  %index950 = phi i64 [ %index.next953, %vector.body949 ], [ 0, %.preheader ] ; 3 uses
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %index950 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  %wide.load951 = load <2 x float>, ptr %i.asm, align 4, !tbaa !48
  %wide.load952 = load <2 x float>, ptr %i.asn, align 4, !tbaa !48
  %i.aso = fpext <2 x float> %wide.load951 to <2 x double>
  %i.asp = fpext <2 x float> %wide.load952 to <2 x double>
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.asl, i64 %index950 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 16
  store <2 x double> %i.aso, ptr %i.asq, align 8, !tbaa !35
  store <2 x double> %i.asp, ptr %i.asr, align 8, !tbaa !35
  %index.next953 = add nuw i64 %index950, 4       ; 2 uses
  %i.ass = icmp eq i64 %index.next953, %n.vec948
  br i1 %i.ass, label %middle.block954, label %vector.body949, !llvm.loop !141

middle.block954:                                  ; preds = %vector.body949
  br i1 %cmp.n955, label %._crit_edge590, label %scalar.ph945.preheader

scalar.ph945.preheader:                           ; preds = %.preheader, %middle.block954
  %indvars.iv749.ph = phi i64 [ 0, %.preheader ], [ %n.vec948, %middle.block954 ]
  br label %scalar.ph945

scalar.ph945:                                     ; preds = %scalar.ph945.preheader, %scalar.ph945
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %scalar.ph945 ], [ %indvars.iv749.ph, %scalar.ph945.preheader ] ; 3 uses
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %indvars.iv749
  %i.asu = load float, ptr %i.ast, align 4, !tbaa !48
  %i.asv = fpext float %i.asu to double
  %i.asw = getelementptr inbounds nuw [8 x i8], ptr %i.asl, i64 %indvars.iv749
  store double %i.asv, ptr %i.asw, align 8, !tbaa !35
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond753.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count752
  br i1 %exitcond753.not, label %._crit_edge590, label %scalar.ph945, !llvm.loop !142

._crit_edge590:                                   ; preds = %scalar.ph945, %middle.block954
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1 ; 2 uses
  %exitcond758.not = icmp eq i64 %indvars.iv.next755, %wide.trip.count757
  br i1 %exitcond758.not, label %.thread, label %.preheader, !llvm.loop !143

.thread:                                          ; preds = %.lr.ph580.split, %.lr.ph580.split.us, %._crit_edge590, %bb.er, %sparse_stress_subspace_majorization_kD.exit
  %.0370 = phi ptr [ %i.abm, %bb.er ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.abm, %.lr.ph580.split.us ], [ %i.abm, %._crit_edge590 ], [ %i.abm, %.lr.ph580.split ]
  %.0369 = phi ptr [ %i.abx, %bb.er ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.abx, %.lr.ph580.split.us ], [ %i.abx, %._crit_edge590 ], [ %i.abx, %.lr.ph580.split ]
  %.0358 = phi ptr [ %.1364, %bb.er ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %.1364, %.lr.ph580.split.us ], [ %.1364, %._crit_edge590 ], [ %.1364, %.lr.ph580.split ]
  %.0357 = phi ptr [ %i.afg, %bb.er ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.afg, %.lr.ph580.split.us ], [ %i.afg, %._crit_edge590 ], [ %i.afg, %.lr.ph580.split ]
  %.0350 = phi ptr [ %i.afy, %bb.er ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.afy, %.lr.ph580.split.us ], [ %i.afy, %._crit_edge590 ], [ %i.afy, %.lr.ph580.split ] ; 3 uses
  %.0349 = phi ptr [ %i.ahh, %bb.er ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahh, %.lr.ph580.split.us ], [ %i.ahh, %._crit_edge590 ], [ %i.ahh, %.lr.ph580.split ]
  %.0348 = phi ptr [ %i.ahi, %bb.er ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahi, %.lr.ph580.split.us ], [ %i.ahi, %._crit_edge590 ], [ %i.ahi, %.lr.ph580.split ]
  %.0347 = phi ptr [ %i.ahs, %bb.er ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahs, %.lr.ph580.split.us ], [ %i.ahs, %._crit_edge590 ], [ %i.ahs, %.lr.ph580.split ]
  %.3 = phi i32 [ %i.asa, %bb.er ], [ -1, %sparse_stress_subspace_majorization_kD.exit ], [ -1, %.lr.ph580.split.us ], [ %i.asa, %._crit_edge590 ], [ -1, %.lr.ph580.split ]
  call void @free(ptr noundef %.0369) #15
  call void @free(ptr noundef %.0370) #15
  call void @free(ptr noundef %.0358) #15
  %.not426 = icmp eq ptr %.0350, null
  br i1 %.not426, label %bb.et, label %bb.es

bb.es:                                            ; preds = %.thread
  %i.asx = load ptr, ptr %.0350, align 8, !tbaa !56
  call void @free(ptr noundef %i.asx) #15
  call void @free(ptr noundef nonnull %.0350) #15
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.thread
  call void @free(ptr noundef %.0349) #15
  call void @free(ptr noundef %.0348) #15
  call void @free(ptr noundef %.0357) #15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cs, %bb.et
  %.0347.sink = phi ptr [ %.0347, %bb.et ], [ %.1364, %bb.cs ]
  %.0.ph = phi i32 [ %.3, %bb.et ], [ 0, %bb.cs ]
  call void @free(ptr noundef %.0347.sink) #15
  br label %bb.eu

bb.eu:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare void @start_timer() local_unnamed_addr #3

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @agerr(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare double @elapsed_sec() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare hidden void @square_vec(i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @invert_vec(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare hidden void @sqrt_vecf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @set_vector_valf(i32 noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare hidden void @invert_sqrt_vec(i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @right_mult_with_vector_ff(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden double @vectors_inner_productf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @copy_vectorf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden i32 @conjugate_gradient_mkernel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc double @compute_stressf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 2, 1) %3, i32 noundef range(i32 0, 4) %4) unnamed_addr #8 {
bb.a:
  %i.a = add i32 %3, -1                           ; 6 uses
  %i.b = icmp sgt i32 %3, 1
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  %i.d = icmp eq i32 %4, 2
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph.split

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  br i1 %i.c, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %i.e = add nsw i32 %3, -2
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %wide.trip.count167 = zext nneg i32 %i.a to i64
  %wide.trip.count151 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter213 = and i64 %wide.trip.count151, 1
  %i.f = icmp eq i32 %2, 1
  %unroll_iter217 = and i64 %wide.trip.count151, 2147483646
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  %lcmp.mod216 = trunc i32 %2 to i1
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge60.split.us.split.us.us.us
  %indvars.iv164 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next165, %._crit_edge60.split.us.split.us.us.us ] ; 8 uses
  %indvars.iv160 = phi i32 [ %3, %.preheader.us.us.preheader ], [ %indvars.iv.next161, %._crit_edge60.split.us.split.us.us.us ] ; 2 uses
  %.04784.us.us = phi double [ 0.000000e+00, %.preheader.us.us.preheader ], [ %.1.lcssa.us.us, %._crit_edge60.split.us.split.us.us.us ] ; 2 uses
  %.04883.us.us = phi i32 [ 0, %.preheader.us.us.preheader ], [ %.149.lcssa.us.us, %._crit_edge60.split.us.split.us.us.us ]
  %.14955.us.us = add i32 %.04883.us.us, 1        ; 2 uses
  %5 = trunc i64 %indvars.iv164 to i32
  %6 = sub i32 %3, %5
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %.lr.ph59.us.us, label %._crit_edge60.split.us.split.us.us.us

.lr.ph59.us.us:                                   ; preds = %.preheader.us.us
  %i.g = sext i32 %.14955.us.us to i64
  %wide.trip.count162 = zext i32 %indvars.iv160 to i64
  br label %.lr.ph.us.us.us.us

.lr.ph.us.us.us.us:                               ; preds = %._crit_edge.us.us.us.us, %.lr.ph59.us.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge.us.us.us.us ], [ 1, %.lr.ph59.us.us ] ; 4 uses
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %._crit_edge.us.us.us.us ], [ %i.g, %.lr.ph59.us.us ] ; 2 uses
  %.157.us.us.us.us = phi double [ %i.ax, %._crit_edge.us.us.us.us ], [ %.04784.us.us, %.lr.ph59.us.us ]
  br i1 %i.f, label %.epil.preheader212, label %.lr.ph.us.us.us.us.new

.lr.ph.us.us.us.us.new:                           ; preds = %.lr.ph.us.us.us.us, %.lr.ph.us.us.us.us.new
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.1, %.lr.ph.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us ] ; 3 uses
  %.054.us.us.us.us = phi double [ %i.ad, %.lr.ph.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us ]
  %niter218 = phi i64 [ %niter218.next.1, %.lr.ph.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv148
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv164
  %i.k = load float, ptr %i.j, align 4, !tbaa !48
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv155
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv164
  %i.n = load float, ptr %i.m, align 4, !tbaa !48
  %i.o = fsub float %i.k, %i.n                    ; 2 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = fpext float %i.p to double
  %i.r = fadd double %.054.us.us.us.us, %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv148
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv164
  %i.w = load float, ptr %i.v, align 4, !tbaa !48
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv155
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv164
  %i.z = load float, ptr %i.y, align 4, !tbaa !48
  %i.aa = fsub float %i.w, %i.z                   ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = fpext float %i.ab to double
  %i.ad = fadd double %i.r, %i.ac                 ; 3 uses
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2 ; 2 uses
  %niter218.next.1 = add i64 %niter218, 2         ; 2 uses
  %niter218.ncmp.1 = icmp eq i64 %niter218.next.1, %unroll_iter217
  br i1 %niter218.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.new, !llvm.loop !158

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph.us.us.us.us.new
  br i1 %lcmp.mod214.not, label %._crit_edge.us.us.us.us, label %.epil.preheader212

.epil.preheader212:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us
  %indvars.iv148.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %indvars.iv.next149.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.054.us.us.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us ], [ %i.ad, %._crit_edge.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv148.epil.init
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv164
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !48
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv155
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv164
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !48
  %i.al = fsub float %i.ah, %i.ak                 ; 2 uses
  %i.am = fmul float %i.al, %i.al
  %i.an = fpext float %i.am to double
  %i.ao = fadd double %.054.us.us.us.us.epil.init, %i.an
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader212
  %.lcssa = phi double [ %i.ad, %._crit_edge.us.us.us.us.unr-lcssa ], [ %i.ao, %.epil.preheader212 ]
  %i.ap = tail call double @sqrt(double noundef %.lcssa) #15
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv153
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !48
  %i.as = fpext float %i.ar to double             ; 2 uses
  %i.at = tail call double @sqrt(double noundef %i.as) #15
  %i.au = fdiv double 1.000000e+00, %i.at
  %i.av = fsub double %i.au, %i.ap                ; 2 uses
  %i.aw = fmul double %i.av, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.as, double %.157.us.us.us.us) ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count162
  br i1 %exitcond163.not, label %._crit_edge60.split.us.split.us.us.us.loopexit, label %.lr.ph.us.us.us.us, !llvm.loop !159

._crit_edge60.split.us.split.us.us.us.loopexit:   ; preds = %._crit_edge.us.us.us.us
  %i.ay = trunc nsw i64 %indvars.iv.next154 to i32
  br label %._crit_edge60.split.us.split.us.us.us

._crit_edge60.split.us.split.us.us.us:            ; preds = %._crit_edge60.split.us.split.us.us.us.loopexit, %.preheader.us.us
  %.1.lcssa.us.us = phi double [ %.04784.us.us, %.preheader.us.us ], [ %i.ax, %._crit_edge60.split.us.split.us.us.us.loopexit ] ; 2 uses
  %.149.lcssa.us.us = phi i32 [ %.14955.us.us, %.preheader.us.us ], [ %i.ay, %._crit_edge60.split.us.split.us.us.us.loopexit ]
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %indvars.iv.next161 = add i32 %indvars.iv160, -1
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge, label %.preheader.us.us, !llvm.loop !160

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge60.split.us.split.us90
  %.04784.us = phi double [ %.1.lcssa.us, %._crit_edge60.split.us.split.us90 ], [ 0.000000e+00, %.preheader.us.preheader ] ; 3 uses
  %.04883.us = phi i32 [ %.149.lcssa.us, %._crit_edge60.split.us.split.us90 ], [ 0, %.preheader.us.preheader ]
  %.05280.us = phi i32 [ %i.cb, %._crit_edge60.split.us.split.us90 ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %i.az = sub i32 %i.a, %.05280.us                ; 3 uses
  %i.ba = sub nuw nsw i32 %3, %.05280.us
  %.14955.us = add i32 %.04883.us, 1              ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %.lr.ph59.us.preheader, label %._crit_edge60.split.us.split.us90

.lr.ph59.us.preheader:                            ; preds = %.preheader.us
  %i.bc = sext i32 %.14955.us to i64              ; 2 uses
  %xtraiter205 = and i32 %i.az, 1
  %i.bd = icmp eq i32 %i.e, %.05280.us
  br i1 %i.bd, label %.lr.ph59.us.epil.preheader, label %.lr.ph59.us.preheader.new

.lr.ph59.us.preheader.new:                        ; preds = %.lr.ph59.us.preheader
  %unroll_iter210 = and i32 %i.az, -2
  br label %.lr.ph59.us

.lr.ph59.us:                                      ; preds = %.lr.ph59.us, %.lr.ph59.us.preheader.new
  %indvars.iv141 = phi i64 [ %i.bc, %.lr.ph59.us.preheader.new ], [ %indvars.iv.next142.1, %.lr.ph59.us ] ; 3 uses
  %.157.us.us87 = phi double [ %.04784.us, %.lr.ph59.us.preheader.new ], [ %i.bs, %.lr.ph59.us ]
  %niter211 = phi i32 [ 0, %.lr.ph59.us.preheader.new ], [ %niter211.next.1, %.lr.ph59.us ]
  %i.be = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv141
  %i.bf = load float, ptr %i.be, align 4, !tbaa !48
  %i.bg = fpext float %i.bf to double             ; 2 uses
  %i.bh = tail call double @sqrt(double noundef %i.bg) #15
  %i.bi = fdiv double 1.000000e+00, %i.bh         ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bg, double %.157.us.us87)
  %i.bl = getelementptr [4 x i8], ptr %1, i64 %indvars.iv141
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !48
  %i.bo = fpext float %i.bn to double             ; 2 uses
  %i.bp = tail call double @sqrt(double noundef %i.bo) #15
  %i.bq = fdiv double 1.000000e+00, %i.bp         ; 2 uses
  %i.br = fmul double %i.bq, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bo, double %i.bk) ; 3 uses
  %indvars.iv.next142.1 = add nsw i64 %indvars.iv141, 2 ; 3 uses
  %niter211.next.1 = add i32 %niter211, 2         ; 2 uses
  %niter211.ncmp.1 = icmp eq i32 %niter211.next.1, %unroll_iter210
  br i1 %niter211.ncmp.1, label %._crit_edge60.split.us.split.us90.loopexit.unr-lcssa, label %.lr.ph59.us, !llvm.loop !159

._crit_edge60.split.us.split.us90.loopexit.unr-lcssa: ; preds = %.lr.ph59.us
  %lcmp.mod206.not = icmp eq i32 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %._crit_edge60.split.us.split.us90.loopexit, label %.lr.ph59.us.epil.preheader

.lr.ph59.us.epil.preheader:                       ; preds = %._crit_edge60.split.us.split.us90.loopexit.unr-lcssa, %.lr.ph59.us.preheader
  %indvars.iv141.epil.init = phi i64 [ %i.bc, %.lr.ph59.us.preheader ], [ %indvars.iv.next142.1, %._crit_edge60.split.us.split.us90.loopexit.unr-lcssa ] ; 2 uses
  %.157.us.us87.epil.init = phi double [ %.04784.us, %.lr.ph59.us.preheader ], [ %i.bs, %._crit_edge60.split.us.split.us90.loopexit.unr-lcssa ]
  %lcmp.mod209 = trunc i32 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %i.bt = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv141.epil.init
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !48
  %i.bv = fpext float %i.bu to double             ; 2 uses
  %i.bw = tail call double @sqrt(double noundef %i.bv) #15
  %i.bx = fdiv double 1.000000e+00, %i.bw         ; 2 uses
  %i.by = fmul double %i.bx, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bv, double %.157.us.us87.epil.init)
  %indvars.iv.next142.epil = add nsw i64 %indvars.iv141.epil.init, 1
  br label %._crit_edge60.split.us.split.us90.loopexit

._crit_edge60.split.us.split.us90.loopexit:       ; preds = %._crit_edge60.split.us.split.us90.loopexit.unr-lcssa, %.lr.ph59.us.epil.preheader
  %.lcssa191 = phi double [ %i.bs, %._crit_edge60.split.us.split.us90.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph59.us.epil.preheader ]
  %indvars.iv.next142.lcssa = phi i64 [ %indvars.iv.next142.1, %._crit_edge60.split.us.split.us90.loopexit.unr-lcssa ], [ %indvars.iv.next142.epil, %.lr.ph59.us.epil.preheader ]
  %i.ca = trunc nsw i64 %indvars.iv.next142.lcssa to i32
  br label %._crit_edge60.split.us.split.us90

._crit_edge60.split.us.split.us90:                ; preds = %._crit_edge60.split.us.split.us90.loopexit, %.preheader.us
  %.1.lcssa.us = phi double [ %.04784.us, %.preheader.us ], [ %.lcssa191, %._crit_edge60.split.us.split.us90.loopexit ] ; 2 uses
  %.149.lcssa.us = phi i32 [ %.14955.us, %.preheader.us ], [ %i.ca, %._crit_edge60.split.us.split.us90.loopexit ]
  %i.cb = add nuw nsw i32 %.05280.us, 1           ; 2 uses
  %exitcond147.not = icmp eq i32 %i.cb, %i.a
  br i1 %exitcond147.not, label %._crit_edge, label %.preheader.us, !llvm.loop !160

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.cc = add nsw i32 %3, -2                      ; 2 uses
  br i1 %i.c, label %.preheader.us94.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.cd = add nsw i32 %3, -2
  br label %.preheader

.preheader.us94.preheader:                        ; preds = %.preheader.lr.ph.split
  %wide.trip.count139 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter199 = and i64 %wide.trip.count, 1
  %i.ce = icmp eq i32 %2, 1
  %unroll_iter203 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  %lcmp.mod202 = trunc i32 %2 to i1
  br label %.preheader.us94

.preheader.us94:                                  ; preds = %.preheader.us94.preheader, %._crit_edge60.split.split.us.us
  %indvars.iv136 = phi i64 [ 0, %.preheader.us94.preheader ], [ %indvars.iv.next137, %._crit_edge60.split.split.us.us ] ; 8 uses
  %indvars.iv132 = phi i32 [ %3, %.preheader.us94.preheader ], [ %indvars.iv.next133, %._crit_edge60.split.split.us.us ] ; 2 uses
  %indvars.iv127 = phi i32 [ %i.cc, %.preheader.us94.preheader ], [ %indvars.iv.next128, %._crit_edge60.split.split.us.us ] ; 2 uses
  %.04784.us95 = phi double [ 0.000000e+00, %.preheader.us94.preheader ], [ %.1.lcssa.us100, %._crit_edge60.split.split.us.us ] ; 2 uses
  %.04883.us96 = phi i32 [ 0, %.preheader.us94.preheader ], [ %.149.lcssa.us101, %._crit_edge60.split.split.us.us ] ; 2 uses
  %.14955.us98 = add i32 %.04883.us96, 1          ; 2 uses
  %8 = trunc i64 %indvars.iv136 to i32
  %9 = sub i32 %3, %8
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %.lr.ph59.us99, label %._crit_edge60.split.split.us.us

.lr.ph59.us99:                                    ; preds = %.preheader.us94
  %i.cf = sext i32 %.14955.us98 to i64
  %wide.trip.count134 = zext i32 %indvars.iv132 to i64
  br label %.lr.ph.us67.us

.lr.ph.us67.us:                                   ; preds = %._crit_edge.us70.us, %.lr.ph59.us99
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %._crit_edge.us70.us ], [ 1, %.lr.ph59.us99 ] ; 4 uses
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %._crit_edge.us70.us ], [ %i.cf, %.lr.ph59.us99 ] ; 2 uses
  %.157.us65.us = phi double [ %i.dv, %._crit_edge.us70.us ], [ %.04784.us95, %.lr.ph59.us99 ]
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.us67.us.new

.lr.ph.us67.us.new:                               ; preds = %.lr.ph.us67.us, %.lr.ph.us67.us.new
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %.lr.ph.us67.us.new ], [ 0, %.lr.ph.us67.us ] ; 3 uses
  %.054.us68.us = phi double [ %i.dc, %.lr.ph.us67.us.new ], [ 0.000000e+00, %.lr.ph.us67.us ]
  %niter204 = phi i64 [ %niter204.next.1, %.lr.ph.us67.us.new ], [ 0, %.lr.ph.us67.us ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !56 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv136
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !48
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv136
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !48
  %i.cn = fsub float %i.cj, %i.cm                 ; 2 uses
  %i.co = fmul float %i.cn, %i.cn
  %i.cp = fpext float %i.co to double
  %i.cq = fadd double %.054.us68.us, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !56 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv136
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !48
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv125
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv136
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !48
  %i.cz = fsub float %i.cv, %i.cy                 ; 2 uses
  %i.da = fmul float %i.cz, %i.cz
  %i.db = fpext float %i.da to double
  %i.dc = fadd double %i.cq, %i.db                ; 3 uses
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %._crit_edge.us70.us.unr-lcssa, label %.lr.ph.us67.us.new, !llvm.loop !158

._crit_edge.us70.us.unr-lcssa:                    ; preds = %.lr.ph.us67.us.new
  br i1 %lcmp.mod200.not, label %._crit_edge.us70.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us70.us.unr-lcssa, %.lr.ph.us67.us
  %indvars.iv119.epil.init = phi i64 [ 0, %.lr.ph.us67.us ], [ %indvars.iv.next120.1, %._crit_edge.us70.us.unr-lcssa ]
  %.054.us68.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us67.us ], [ %i.dc, %._crit_edge.us70.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119.epil.init
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !56 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv136
  %i.dg = load float, ptr %i.df, align 4, !tbaa !48
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv125
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv136
  %i.dj = load float, ptr %i.di, align 4, !tbaa !48
  %i.dk = fsub float %i.dg, %i.dj                 ; 2 uses
  %i.dl = fmul float %i.dk, %i.dk
  %i.dm = fpext float %i.dl to double
  %i.dn = fadd double %.054.us68.us.epil.init, %i.dm
  br label %._crit_edge.us70.us

._crit_edge.us70.us:                              ; preds = %._crit_edge.us70.us.unr-lcssa, %.epil.preheader
  %.lcssa193 = phi double [ %i.dc, %._crit_edge.us70.us.unr-lcssa ], [ %i.dn, %.epil.preheader ]
  %i.do = tail call double @sqrt(double noundef %.lcssa193) #15
  %i.dp = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv123
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !48
  %i.dr = fpext float %i.dq to double             ; 2 uses
  %i.ds = fdiv double 1.000000e+00, %i.dr
  %i.dt = fsub double %i.ds, %i.do                ; 2 uses
  %i.du = fmul double %i.dt, %i.dt
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %i.dr, double %.157.us65.us) ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge60.split.split.us.us.loopexit, label %.lr.ph.us67.us, !llvm.loop !159

._crit_edge60.split.split.us.us.loopexit:         ; preds = %._crit_edge.us70.us
  %i.dw = add i32 %.04883.us96, 2
  %i.dx = add i32 %i.dw, %indvars.iv127
  br label %._crit_edge60.split.split.us.us

._crit_edge60.split.split.us.us:                  ; preds = %._crit_edge60.split.split.us.us.loopexit, %.preheader.us94
  %.1.lcssa.us100 = phi double [ %.04784.us95, %.preheader.us94 ], [ %i.dv, %._crit_edge60.split.split.us.us.loopexit ] ; 2 uses
  %.149.lcssa.us101 = phi i32 [ %.14955.us98, %.preheader.us94 ], [ %i.dx, %._crit_edge60.split.split.us.us.loopexit ]
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %indvars.iv.next128 = add i32 %indvars.iv127, -1
  %indvars.iv.next133 = add i32 %indvars.iv132, -1
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %._crit_edge, label %.preheader.us94, !llvm.loop !160

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge60.split.split
  %indvars.iv113 = phi i32 [ %indvars.iv.next114, %._crit_edge60.split.split ], [ %i.cc, %.preheader.preheader ] ; 2 uses
  %.04784 = phi double [ %.1.lcssa, %._crit_edge60.split.split ], [ 0.000000e+00, %.preheader.preheader ] ; 3 uses
  %.04883 = phi i32 [ %.149.lcssa, %._crit_edge60.split.split ], [ 0, %.preheader.preheader ] ; 2 uses
  %.05280 = phi i32 [ %i.ey, %._crit_edge60.split.split ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.dy = sub i32 %i.a, %.05280                   ; 3 uses
  %i.dz = sub nuw nsw i32 %3, %.05280
  %.14955 = add i32 %.04883, 1                    ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 1
  br i1 %i.ea, label %.lr.ph59.preheader, label %._crit_edge60.split.split

.lr.ph59.preheader:                               ; preds = %.preheader
  %i.eb = sext i32 %.14955 to i64                 ; 2 uses
  %xtraiter = and i32 %i.dy, 1
  %i.ec = icmp eq i32 %i.cd, %.05280
  br i1 %i.ec, label %.lr.ph59.epil.preheader, label %.lr.ph59.preheader.new

.lr.ph59.preheader.new:                           ; preds = %.lr.ph59.preheader
  %unroll_iter = and i32 %i.dy, -2
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59, %.lr.ph59.preheader.new
  %indvars.iv = phi i64 [ %i.eb, %.lr.ph59.preheader.new ], [ %indvars.iv.next.1, %.lr.ph59 ] ; 3 uses
  %.157 = phi double [ %.04784, %.lr.ph59.preheader.new ], [ %i.ep, %.lr.ph59 ]
  %niter = phi i32 [ 0, %.lr.ph59.preheader.new ], [ %niter.next.1, %.lr.ph59 ]
  %i.ed = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !48
  %i.ef = fpext float %i.ee to double             ; 2 uses
  %i.eg = fdiv double 1.000000e+00, %i.ef         ; 2 uses
  %i.eh = fmul double %i.eg, %i.eg
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ef, double %.157)
  %i.ej = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !48
  %i.em = fpext float %i.el to double             ; 2 uses
  %i.en = fdiv double 1.000000e+00, %i.em         ; 2 uses
  %i.eo = fmul double %i.en, %i.en
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.em, double %i.ei) ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge60.split.split.loopexit.unr-lcssa, label %.lr.ph59, !llvm.loop !159

._crit_edge60.split.split.loopexit.unr-lcssa:     ; preds = %.lr.ph59
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge60.split.split.loopexit, label %.lr.ph59.epil.preheader

.lr.ph59.epil.preheader:                          ; preds = %._crit_edge60.split.split.loopexit.unr-lcssa, %.lr.ph59.preheader
  %indvars.iv.epil.init = phi i64 [ %i.eb, %.lr.ph59.preheader ], [ %indvars.iv.next.1, %._crit_edge60.split.split.loopexit.unr-lcssa ]
  %.157.epil.init = phi double [ %.04784, %.lr.ph59.preheader ], [ %i.ep, %._crit_edge60.split.split.loopexit.unr-lcssa ]
  %lcmp.mod198 = trunc i32 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.eq = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.er = load float, ptr %i.eq, align 4, !tbaa !48
  %i.es = fpext float %i.er to double             ; 2 uses
  %i.et = fdiv double 1.000000e+00, %i.es         ; 2 uses
  %i.eu = fmul double %i.et, %i.et
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.es, double %.157.epil.init)
  br label %._crit_edge60.split.split.loopexit

._crit_edge60.split.split.loopexit:               ; preds = %._crit_edge60.split.split.loopexit.unr-lcssa, %.lr.ph59.epil.preheader
  %.lcssa196 = phi double [ %i.ep, %._crit_edge60.split.split.loopexit.unr-lcssa ], [ %i.ev, %.lr.ph59.epil.preheader ]
  %i.ew = add i32 %.04883, 2
  %i.ex = add i32 %i.ew, %indvars.iv113
  br label %._crit_edge60.split.split

._crit_edge60.split.split:                        ; preds = %._crit_edge60.split.split.loopexit, %.preheader
  %.1.lcssa = phi double [ %.04784, %.preheader ], [ %.lcssa196, %._crit_edge60.split.split.loopexit ] ; 2 uses
  %.149.lcssa = phi i32 [ %.14955, %.preheader ], [ %i.ex, %._crit_edge60.split.split.loopexit ]
  %i.ey = add nuw nsw i32 %.05280, 1              ; 2 uses
  %indvars.iv.next114 = add i32 %indvars.iv113, -1
  %exitcond118.not = icmp eq i32 %i.ey, %i.a
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader, !llvm.loop !160

._crit_edge:                                      ; preds = %._crit_edge60.split.split, %._crit_edge60.split.split.us.us, %._crit_edge60.split.us.split.us90, %._crit_edge60.split.us.split.us.us.us, %bb.a
  %.047.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa.us100, %._crit_edge60.split.split.us.us ], [ %.1.lcssa.us, %._crit_edge60.split.us.split.us90 ], [ %.1.lcssa.us.us, %._crit_edge60.split.us.split.us.us.us ], [ %.1.lcssa, %._crit_edge60.split.split ]
  ret double %.047.lcssa
}

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #9 {
bb.a:
  tail call void @exit(i32 noundef 1) #20
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

declare hidden void @dijkstra_f(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @embed_graph(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @center_coordinate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @PCA_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @compute_new_weights(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

declare hidden void @ngdijkstra(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden zeroext i1 @iterativePCA_1D(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @right_mult_with_vector_transpose(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @mult_sparse_dense_mat_transpose(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @mult_dense_mat(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc double @compute_stress1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 2, -2147483648) %3, i32 noundef range(i32 0, 4) %4) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %4, 2
  %i.b = icmp sgt i32 %2, 0                       ; 2 uses
  %wide.trip.count155 = zext nneg i32 %3 to i64   ; 4 uses
  br i1 %i.a, label %.preheader90, label %.preheader93

.preheader93:                                     ; preds = %bb.a
  br i1 %i.b, label %.preheader92.us.preheader, label %.preheader92

.preheader92.us.preheader:                        ; preds = %.preheader93
  %wide.trip.count132 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter181 = and i64 %wide.trip.count132, 1
  %i.c = icmp eq i32 %2, 1
  %unroll_iter185 = and i64 %wide.trip.count132, 2147483646
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod184 = trunc i32 %2 to i1
  br label %.preheader92.us

.preheader92.us:                                  ; preds = %.preheader92.us.preheader, %._crit_edge100.split.us.us
  %indvars.iv135 = phi i64 [ 0, %.preheader92.us.preheader ], [ %indvars.iv.next136, %._crit_edge100.split.us.us ] ; 6 uses
  %.3104.us = phi double [ 0.000000e+00, %.preheader92.us.preheader ], [ %.4.lcssa.us, %._crit_edge100.split.us.us ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv135 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not120 = icmp eq i64 %i.e, 0
  br i1 %.not120, label %._crit_edge100.split.us.us, label %.lr.ph99.us

.lr.ph99.us:                                      ; preds = %.preheader92.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph99.us
  %.098.us.us = phi i64 [ 0, %.lr.ph99.us ], [ %i.at, %bb.c ] ; 3 uses
  %.497.us.us = phi double [ %.3104.us, %.lr.ph99.us ], [ %.5.us.us, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.098.us.us
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %.not.us.us = icmp slt i64 %indvars.iv135, %i.k
  br i1 %.not.us.us, label %.preheader91.us.us.preheader, label %bb.c

.preheader91.us.us.preheader:                     ; preds = %bb.b
  br i1 %i.c, label %.preheader91.us.us.epil.preheader, label %.preheader91.us.us

.preheader91.us.us:                               ; preds = %.preheader91.us.us.preheader, %.preheader91.us.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %.preheader91.us.us ], [ 0, %.preheader91.us.us.preheader ] ; 3 uses
  %.196.us.us = phi double [ %i.ab, %.preheader91.us.us ], [ 0.000000e+00, %.preheader91.us.us.preheader ]
  %niter186 = phi i64 [ %niter186.next.1, %.preheader91.us.us ], [ 0, %.preheader91.us.us.preheader ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv129
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv135
  %i.o = load double, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.k
  %i.q = load double, ptr %i.p, align 8, !tbaa !35
  %i.r = fsub double %i.o, %i.q                   ; 2 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %.196.us.us)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv129
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv135
  %i.x = load double, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.k
  %i.z = load double, ptr %i.y, align 8, !tbaa !35
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.s) ; 3 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.preheader91.us.us, !llvm.loop !161

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader91.us.us
  br i1 %lcmp.mod182.not, label %._crit_edge.us.us, label %.preheader91.us.us.epil.preheader

.preheader91.us.us.epil.preheader:                ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader91.us.us.preheader
  %indvars.iv129.epil.init = phi i64 [ 0, %.preheader91.us.us.preheader ], [ %indvars.iv.next130.1, %._crit_edge.us.us.unr-lcssa ]
  %.196.us.us.epil.init = phi double [ 0.000000e+00, %.preheader91.us.us.preheader ], [ %i.ab, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv129.epil.init
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv135
  %i.af = load double, ptr %i.ae, align 8, !tbaa !35
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.k
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !35
  %i.ai = fsub double %i.af, %i.ah                ; 2 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %.196.us.us.epil.init)
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader91.us.us.epil.preheader
  %.lcssa177 = phi double [ %i.ab, %._crit_edge.us.us.unr-lcssa ], [ %i.aj, %.preheader91.us.us.epil.preheader ]
  %i.ak = tail call double @sqrt(double noundef %.lcssa177) #15
end_hunk_1
