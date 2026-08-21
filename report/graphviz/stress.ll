inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@stress_majorization_kD_mkernel:bb.a

scalar.ph864:                                     ; preds = %scalar.ph864.preheader, %scalar.ph864
  %indvars.iv607 = phi i64 [ %indvars.iv.next608, %scalar.ph864 ], [ %indvars.iv607.ph, %scalar.ph864.preheader ] ; 2 uses
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %indvars.iv607 ; 2 uses
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !34
  %i.aan = fdiv double %i.aam, %.1344.lcssa
  store double %i.aan, ptr %i.aal, align 8, !tbaa !34
  %indvars.iv.next608 = add nuw nsw i64 %indvars.iv607, 1 ; 2 uses
  %exitcond611.not = icmp eq i64 %indvars.iv.next608, %i.ce
  br i1 %exitcond611.not, label %.lr.ph501, label %scalar.ph864, !llvm.loop !119

bb.cp:                                            ; preds = %.lr.ph501, %bb.cp
  %indvars.iv612 = phi i64 [ 0, %.lr.ph501 ], [ %indvars.iv.next613, %bb.cp ] ; 2 uses
  %i.aao = call double @drand48() #15
  %i.aap = fadd double %i.aao, -5.000000e-01
  %i.aaq = load ptr, ptr %i.aak, align 8, !tbaa !8 ; 2 uses
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %indvars.iv612 ; 2 uses
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !34
  %i.aat = call double @llvm.fmuladd.f64(double %i.aap, double f0x3EB0C6F7A0B5ED8D, double %i.aas)
  store double %i.aat, ptr %i.aar, align 8, !tbaa !34
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %exitcond616.not = icmp eq i64 %indvars.iv.next613, %i.ce
  br i1 %exitcond616.not, label %._crit_edge, label %bb.cp, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.cp
  call void @orthog1(i32 noundef %1, ptr noundef nonnull %i.aaq) #15
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 2 uses
  %exitcond621.not = icmp eq i64 %indvars.iv.next618, %wide.trip.count809.i
  br i1 %exitcond621.not, label %.loopexit491, label %.lr.ph, !llvm.loop !121

bb.cq:                                            ; preds = %bb.x
  %i.aau = tail call i32 @initLayout(i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3)
  %i.aav = icmp eq i32 %i.aau, 0
  br label %.loopexit491

.loopexit491:                                     ; preds = %._crit_edge, %.preheader490, %bb.cq
  %.0346 = phi i1 [ %i.aav, %bb.cq ], [ true, %.preheader490 ], [ true, %._crit_edge ]
  %i.aaw = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not412 = icmp eq i8 %i.aaw, 0
  br i1 %.not412, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.loopexit491
  %i.aax = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aay = call double @elapsed_sec() #15
  %i.aaz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aax, ptr noundef nonnull @.str.8, double noundef %i.aay) #17 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.loopexit491
  %i.aba = icmp eq i32 %1, 1
  %i.abb = icmp eq i32 %7, 0
  %or.cond3 = or i1 %i.aba, %i.abb
  br i1 %or.cond3, label %.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.abc = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not413 = icmp eq i8 %i.abc, 0
  br i1 %.not413, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.abd = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abe = call double @elapsed_sec() #15
  %i.abf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abd, ptr noundef nonnull @.str.6, double noundef %i.abe) #17 ; 0 uses
  %i.abg = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abh = call i64 @fwrite(ptr nonnull @.str.9, i64 26, i64 1, ptr %i.abg) #19 ; 0 uses
  call void @start_timer() #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.abi = sext i32 %4 to i64                     ; 6 uses
  %.not.i431 = icmp eq i32 %4, 0                  ; 2 uses
  br i1 %.not.i431, label %.thread.i, label %bb.cw

.thread.i:                                        ; preds = %bb.cv
  %i.abj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  br label %gv_calloc.exit

bb.cw:                                            ; preds = %bb.cv
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.abk = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abk, ptr noundef nonnull @.str.14, i64 noundef %i.abi, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.abm = call noalias ptr @calloc(i64 noundef %i.abi, i64 noundef 8) #16 ; 2 uses
  %i.abn = icmp eq ptr %i.abm, null
  br i1 %i.abn, label %bb.cz, label %gv_calloc.exit

bb.cz:                                            ; preds = %bb.cy
  %i.abo = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abp = shl nuw nsw i64 %i.abi, 3
  %i.abq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abo, ptr noundef nonnull @.str.15, i64 noundef %i.abp) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.cy
  %i.abr = phi ptr [ %i.abj, %.thread.i ], [ %i.abm, %bb.cy ] ; 13 uses
  %i.abs = mul nsw i32 %4, %1                     ; 4 uses
  %i.abt = sext i32 %i.abs to i64                 ; 6 uses
  %.not.i432 = icmp eq i32 %i.abs, 0              ; 2 uses
  br i1 %.not.i432, label %.thread.i435, label %bb.da

.thread.i435:                                     ; preds = %gv_calloc.exit
  %i.abu = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit436

bb.da:                                            ; preds = %gv_calloc.exit
  %mul.ov.i434 = icmp slt i32 %i.abs, 0
  br i1 %mul.ov.i434, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abv = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abv, ptr noundef nonnull @.str.14, i64 noundef %i.abt, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.abx = call noalias ptr @calloc(i64 noundef %i.abt, i64 noundef 4) #16 ; 2 uses
  %i.aby = icmp eq ptr %i.abx, null
  br i1 %i.aby, label %bb.dd, label %gv_calloc.exit436

bb.dd:                                            ; preds = %bb.dc
  %i.abz = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aca = shl nuw nsw i64 %i.abt, 2
  %i.acb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abz, ptr noundef nonnull @.str.15, i64 noundef %i.aca) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit436:                                ; preds = %.thread.i435, %bb.dc
  %i.acc = phi ptr [ %i.abu, %.thread.i435 ], [ %i.abx, %bb.dc ] ; 5 uses
  %i.acd = icmp ne i32 %4, 0                      ; 5 uses
  br i1 %i.acd, label %.lr.ph508, label %._crit_edge509

.lr.ph508:                                        ; preds = %gv_calloc.exit436
  %i.ace = icmp sgt i32 %1, 0
  %i.acf = sext i32 %1 to i64
  %wide.trip.count630 = zext nneg i32 %4 to i64
  %wide.trip.count625 = zext i32 %1 to i64        ; 3 uses
  %min.iters.check878 = icmp ult i32 %1, 4
  %n.vec880 = and i64 %wide.trip.count625, 2147483644 ; 3 uses
  %cmp.n887 = icmp eq i64 %n.vec880, %wide.trip.count625
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph508, %._crit_edge506
  %indvars.iv627 = phi i64 [ 0, %.lr.ph508 ], [ %indvars.iv.next628, %._crit_edge506 ] ; 4 uses
  %i.acg = mul nsw i64 %indvars.iv627, %i.acf
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.acg ; 3 uses
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv627
  store ptr %i.ach, ptr %i.aci, align 8, !tbaa !109
  br i1 %i.ace, label %.lr.ph505, label %._crit_edge506

.lr.ph505:                                        ; preds = %bb.de
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv627
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !8 ; 2 uses
  br i1 %min.iters.check878, label %scalar.ph877.preheader, label %vector.body881

vector.body881:                                   ; preds = %.lr.ph505, %vector.body881
  %index882 = phi i64 [ %index.next885, %vector.body881 ], [ 0, %.lr.ph505 ] ; 3 uses
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %index882 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  %wide.load883 = load <2 x double>, ptr %i.acl, align 8, !tbaa !34
  %wide.load884 = load <2 x double>, ptr %i.acm, align 8, !tbaa !34
  %i.acn = fptrunc <2 x double> %wide.load883 to <2 x float>
  %i.aco = fptrunc <2 x double> %wide.load884 to <2 x float>
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %index882 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  store <2 x float> %i.acn, ptr %i.acp, align 4, !tbaa !51
  store <2 x float> %i.aco, ptr %i.acq, align 4, !tbaa !51
  %index.next885 = add nuw i64 %index882, 4       ; 2 uses
  %i.acr = icmp eq i64 %index.next885, %n.vec880
  br i1 %i.acr, label %middle.block886, label %vector.body881, !llvm.loop !122

middle.block886:                                  ; preds = %vector.body881
  br i1 %cmp.n887, label %._crit_edge506, label %scalar.ph877.preheader

scalar.ph877.preheader:                           ; preds = %.lr.ph505, %middle.block886
  %indvars.iv622.ph = phi i64 [ 0, %.lr.ph505 ], [ %n.vec880, %middle.block886 ]
  br label %scalar.ph877

scalar.ph877:                                     ; preds = %scalar.ph877.preheader, %scalar.ph877
  %indvars.iv622 = phi i64 [ %indvars.iv.next623, %scalar.ph877 ], [ %indvars.iv622.ph, %scalar.ph877.preheader ] ; 3 uses
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %indvars.iv622
  %i.act = load double, ptr %i.acs, align 8, !tbaa !34
  %i.acu = fptrunc double %i.act to float
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv622
  store float %i.acu, ptr %i.acv, align 4, !tbaa !51
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %exitcond626.not = icmp eq i64 %indvars.iv.next623, %wide.trip.count625
  br i1 %exitcond626.not, label %._crit_edge506, label %scalar.ph877, !llvm.loop !123

._crit_edge506:                                   ; preds = %scalar.ph877, %middle.block886, %bb.de
  %indvars.iv.next628 = add nuw nsw i64 %indvars.iv627, 1 ; 2 uses
  %exitcond631.not = icmp eq i64 %indvars.iv.next628, %wide.trip.count630
  br i1 %exitcond631.not, label %._crit_edge509, label %bb.de, !llvm.loop !124

._crit_edge509:                                   ; preds = %._crit_edge506, %gv_calloc.exit436
  %i.acw = sitofp i32 %1 to float
  %i.acx = add i32 %1, -1                         ; 5 uses
  %i.acy = sitofp i32 %i.acx to float
  %i.acz = fmul nnan float %i.acw, %i.acy
  %i.ada = fmul nnan float %i.acz, 5.000000e-01
  %i.adb = add nsw i32 %1, 1
  %i.adc = mul nsw i32 %i.adb, %1                 ; 3 uses
  %i.add = sdiv i32 %i.adc, 2                     ; 4 uses
  %i.ade = icmp eq i32 %i.e, 2                    ; 3 uses
  br i1 %i.ade, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge509
  call void @square_vec(i32 noundef %i.add, ptr noundef %.1364) #15
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge509
  call void @invert_vec(i32 noundef %i.add, ptr noundef %.1364) #15
  %i.adf = sext i32 %1 to i64                     ; 19 uses
  %.not.i437 = icmp ne i32 %1, 0                  ; 5 uses
  br i1 %.not.i437, label %bb.dh, label %.preheader485.thread805

.preheader485.thread805:                          ; preds = %bb.dg
  %i.adg = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #16
  br label %._crit_edge524

bb.dh:                                            ; preds = %bb.dg
  %mul.ov.i439 = icmp slt i32 %1, 0
  br i1 %mul.ov.i439, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.adh = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.adi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adh, ptr noundef nonnull @.str.14, i64 noundef %i.adf, i64 noundef 16) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.adj = call noalias ptr @calloc(i64 noundef %i.adf, i64 noundef 16) #16 ; 8 uses
  %i.adk = icmp eq ptr %i.adj, null
  br i1 %i.adk, label %bb.dk, label %gv_calloc.exit441

bb.dk:                                            ; preds = %bb.dj
  %i.adl = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.adm = shl nuw nsw i64 %i.adf, 4
  %i.adn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adl, ptr noundef nonnull @.str.15, i64 noundef %i.adm) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit441:                                ; preds = %bb.dj
  br i1 %i.bo, label %.preheader486.preheader, label %.lr.ph523.preheader

.preheader486.preheader:                          ; preds = %gv_calloc.exit441
  %wide.trip.count646 = zext nneg i32 %i.acx to i64
  %invariant.op = add nsw i64 %i.adf, -1
  br label %.preheader486

.preheader486:                                    ; preds = %.preheader486.preheader, %._crit_edge515
  %indvars.iv643 = phi i64 [ 0, %.preheader486.preheader ], [ %indvars.iv.next644, %._crit_edge515 ] ; 4 uses
  %indvars.iv639 = phi i32 [ %1, %.preheader486.preheader ], [ %indvars.iv.next640, %._crit_edge515 ] ; 3 uses
  %.0365519 = phi i32 [ 0, %.preheader486.preheader ], [ %.1366.lcssa, %._crit_edge515 ]
  %i.ado = zext i32 %indvars.iv639 to i64
  %i.adp = add nsw i64 %i.ado, -1                 ; 3 uses
  %.1366510 = add i32 %.0365519, 1                ; 2 uses
  %i.adq = icmp slt i64 %indvars.iv643, %invariant.op
  br i1 %i.adq, label %.lr.ph514.preheader, label %._crit_edge515

.lr.ph514.preheader:                              ; preds = %.preheader486
  %i.adr = sext i32 %.1366510 to i64              ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.adj, i64 %indvars.iv643 ; 3 uses
  %xtraiter1023 = and i64 %i.adp, 1
  %i.ads = icmp eq i32 %indvars.iv639, 2
  br i1 %i.ads, label %.lr.ph514.epil.preheader, label %.lr.ph514.preheader.new

.lr.ph514.preheader.new:                          ; preds = %.lr.ph514.preheader
  %unroll_iter1029 = and i64 %i.adp, -2
  br label %.lr.ph514

.lr.ph523.preheader:                              ; preds = %._crit_edge515, %gv_calloc.exit441
  %wide.trip.count655 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter1031 = and i64 %wide.trip.count655, 1
  %unroll_iter1035 = and i64 %wide.trip.count655, 2147483646
  br label %.lr.ph523

.lr.ph514:                                        ; preds = %.lr.ph514, %.lr.ph514.preheader.new
  %indvars.iv634 = phi i64 [ 1, %.lr.ph514.preheader.new ], [ %indvars.iv.next635.1, %.lr.ph514 ] ; 3 uses
  %indvars.iv632 = phi i64 [ %i.adr, %.lr.ph514.preheader.new ], [ %indvars.iv.next633.1, %.lr.ph514 ] ; 3 uses
  %.0359512 = phi x86_fp80 [ 0.000000e+00, %.lr.ph514.preheader.new ], [ %i.aed, %.lr.ph514 ]
  %niter1030 = phi i64 [ 0, %.lr.ph514.preheader.new ], [ %niter1030.next.1, %.lr.ph514 ]
  %i.adt = getelementptr inbounds [4 x i8], ptr %.1364, i64 %indvars.iv632
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !51
  %i.adv = fpext float %i.adu to x86_fp80         ; 2 uses
  %i.adw = fadd x86_fp80 %.0359512, %i.adv
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv634 ; 2 uses
  %i.adx = load x86_fp80, ptr %gep, align 16, !tbaa !125
  %i.ady = fsub x86_fp80 %i.adx, %i.adv
  store x86_fp80 %i.ady, ptr %gep, align 16, !tbaa !125
  %i.adz = getelementptr [4 x i8], ptr %.1364, i64 %indvars.iv632
  %i.aea = getelementptr i8, ptr %i.adz, i64 4
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !51
  %i.aec = fpext float %i.aeb to x86_fp80         ; 2 uses
  %i.aed = fadd x86_fp80 %i.adw, %i.aec           ; 3 uses
  %i.aee = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv634
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 2 uses
  %i.aef = load x86_fp80, ptr %gep.1, align 16, !tbaa !125
  %i.aeg = fsub x86_fp80 %i.aef, %i.aec
  store x86_fp80 %i.aeg, ptr %gep.1, align 16, !tbaa !125
  %indvars.iv.next635.1 = add nuw nsw i64 %indvars.iv634, 2 ; 2 uses
  %indvars.iv.next633.1 = add nsw i64 %indvars.iv632, 2 ; 3 uses
  %niter1030.next.1 = add nuw i64 %niter1030, 2   ; 2 uses
  %niter1030.ncmp.1 = icmp eq i64 %niter1030.next.1, %unroll_iter1029
  br i1 %niter1030.ncmp.1, label %._crit_edge515.loopexit.unr-lcssa, label %.lr.ph514, !llvm.loop !127

._crit_edge515.loopexit.unr-lcssa:                ; preds = %.lr.ph514
  %lcmp.mod1025.not = icmp eq i64 %xtraiter1023, 0
  br i1 %lcmp.mod1025.not, label %._crit_edge515.loopexit, label %.lr.ph514.epil.preheader

.lr.ph514.epil.preheader:                         ; preds = %._crit_edge515.loopexit.unr-lcssa, %.lr.ph514.preheader
  %indvars.iv634.epil.init = phi i64 [ 1, %.lr.ph514.preheader ], [ %indvars.iv.next635.1, %._crit_edge515.loopexit.unr-lcssa ]
  %indvars.iv632.epil.init = phi i64 [ %i.adr, %.lr.ph514.preheader ], [ %indvars.iv.next633.1, %._crit_edge515.loopexit.unr-lcssa ] ; 2 uses
  %.0359512.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph514.preheader ], [ %i.aed, %._crit_edge515.loopexit.unr-lcssa ]
  %lcmp.mod1028 = trunc i64 %i.adp to i1
  call void @llvm.assume(i1 %lcmp.mod1028)
  %i.aeh = getelementptr inbounds [4 x i8], ptr %.1364, i64 %indvars.iv632.epil.init
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !51
  %i.aej = fpext float %i.aei to x86_fp80         ; 2 uses
  %i.aek = fadd x86_fp80 %.0359512.epil.init, %i.aej
  %gep.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv634.epil.init ; 2 uses
  %i.ael = load x86_fp80, ptr %gep.epil, align 16, !tbaa !125
  %i.aem = fsub x86_fp80 %i.ael, %i.aej
  store x86_fp80 %i.aem, ptr %gep.epil, align 16, !tbaa !125
  %indvars.iv.next633.epil = add nsw i64 %indvars.iv632.epil.init, 1
  br label %._crit_edge515.loopexit

._crit_edge515.loopexit:                          ; preds = %._crit_edge515.loopexit.unr-lcssa, %.lr.ph514.epil.preheader
  %.lcssa959 = phi x86_fp80 [ %i.aed, %._crit_edge515.loopexit.unr-lcssa ], [ %i.aek, %.lr.ph514.epil.preheader ]
  %indvars.iv.next633.lcssa = phi i64 [ %indvars.iv.next633.1, %._crit_edge515.loopexit.unr-lcssa ], [ %indvars.iv.next633.epil, %.lr.ph514.epil.preheader ]
  %i.aen = trunc nsw i64 %indvars.iv.next633.lcssa to i32
  br label %._crit_edge515

._crit_edge515:                                   ; preds = %._crit_edge515.loopexit, %.preheader486
  %.0359.lcssa = phi x86_fp80 [ 0.000000e+00, %.preheader486 ], [ %.lcssa959, %._crit_edge515.loopexit ]
  %.1366.lcssa = phi i32 [ %.1366510, %.preheader486 ], [ %i.aen, %._crit_edge515.loopexit ]
  %i.aeo = getelementptr inbounds nuw [16 x i8], ptr %i.adj, i64 %indvars.iv643 ; 2 uses
  %i.aep = load x86_fp80, ptr %i.aeo, align 16, !tbaa !125
  %i.aeq = fsub x86_fp80 %i.aep, %.0359.lcssa
  store x86_fp80 %i.aeq, ptr %i.aeo, align 16, !tbaa !125
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %indvars.iv.next640 = add i32 %indvars.iv639, -1
  %exitcond647.not = icmp eq i64 %indvars.iv.next644, %wide.trip.count646
  br i1 %exitcond647.not, label %.lr.ph523.preheader, label %.preheader486, !llvm.loop !128

.lr.ph523:                                        ; preds = %.lr.ph523, %.lr.ph523.preheader
  %indvars.iv650 = phi i64 [ 0, %.lr.ph523.preheader ], [ %indvars.iv.next651.1, %.lr.ph523 ] ; 3 uses
  %indvars.iv648 = phi i64 [ %i.adf, %.lr.ph523.preheader ], [ %indvars.iv.next649.1, %.lr.ph523 ] ; 3 uses
  %.2367521 = phi i32 [ 0, %.lr.ph523.preheader ], [ %i.afg, %.lr.ph523 ] ; 2 uses
  %niter1036 = phi i64 [ 0, %.lr.ph523.preheader ], [ %niter1036.next.1, %.lr.ph523 ]
  %i.aer = getelementptr inbounds nuw [16 x i8], ptr %i.adj, i64 %indvars.iv650
  %i.aes = load x86_fp80, ptr %i.aer, align 16, !tbaa !125
  %i.aet = fptrunc x86_fp80 %i.aes to float
  %i.aeu = sext i32 %.2367521 to i64
  %i.aev = getelementptr inbounds [4 x i8], ptr %.1364, i64 %i.aeu
  store float %i.aet, ptr %i.aev, align 4, !tbaa !51
  %i.aew = trunc nsw i64 %indvars.iv648 to i32
  %i.aex = add nsw i32 %.2367521, %i.aew          ; 2 uses
  %i.aey = getelementptr inbounds nuw [16 x i8], ptr %i.adj, i64 %indvars.iv650
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afa = load x86_fp80, ptr %i.aez, align 16, !tbaa !125
  %i.afb = fptrunc x86_fp80 %i.afa to float
  %i.afc = sext i32 %i.aex to i64
  %i.afd = getelementptr inbounds [4 x i8], ptr %.1364, i64 %i.afc
  store float %i.afb, ptr %i.afd, align 4, !tbaa !51
  %indvars.iv.next651.1 = add nuw nsw i64 %indvars.iv650, 2 ; 2 uses
  %i.afe = trunc i64 %indvars.iv648 to i32
  %i.aff = add i32 %i.afe, -1
  %i.afg = add nsw i32 %i.aex, %i.aff             ; 2 uses
  %indvars.iv.next649.1 = add nsw i64 %indvars.iv648, -2
  %niter1036.next.1 = add i64 %niter1036, 2       ; 2 uses
  %niter1036.ncmp.1 = icmp eq i64 %niter1036.next.1, %unroll_iter1035
  br i1 %niter1036.ncmp.1, label %._crit_edge524.loopexit.unr-lcssa, label %.lr.ph523, !llvm.loop !129

._crit_edge524.loopexit.unr-lcssa:                ; preds = %.lr.ph523
  %lcmp.mod1033.not = icmp eq i64 %xtraiter1031, 0
  br i1 %lcmp.mod1033.not, label %._crit_edge524, label %.lr.ph523.epil.preheader

.lr.ph523.epil.preheader:                         ; preds = %._crit_edge524.loopexit.unr-lcssa
  %lcmp.mod1034 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod1034)
  %i.afh = getelementptr inbounds nuw [16 x i8], ptr %i.adj, i64 %indvars.iv.next651.1
  %i.afi = load x86_fp80, ptr %i.afh, align 16, !tbaa !125
  %i.afj = fptrunc x86_fp80 %i.afi to float
  %i.afk = sext i32 %i.afg to i64
  %i.afl = getelementptr inbounds [4 x i8], ptr %.1364, i64 %i.afk
  store float %i.afj, ptr %i.afl, align 4, !tbaa !51
  br label %._crit_edge524

._crit_edge524:                                   ; preds = %.lr.ph523.epil.preheader, %._crit_edge524.loopexit.unr-lcssa, %.preheader485.thread805
  %i.afm = phi ptr [ %i.adg, %.preheader485.thread805 ], [ %i.adj, %._crit_edge524.loopexit.unr-lcssa ], [ %i.adj, %.lr.ph523.epil.preheader ] ; 11 uses
  br i1 %.not.i431, label %gv_calloc.exit446.thread, label %bb.dl

gv_calloc.exit446.thread:                         ; preds = %._crit_edge524
  %i.afn = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  br label %.thread.i450

bb.dl:                                            ; preds = %._crit_edge524
  %mul.ov.i444 = icmp slt i32 %4, 0
  br i1 %mul.ov.i444, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.afo = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.afp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afo, ptr noundef nonnull @.str.14, i64 noundef %i.abi, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.afq = call noalias ptr @calloc(i64 noundef %i.abi, i64 noundef 8) #16 ; 3 uses
  %i.afr = icmp eq ptr %i.afq, null
  br i1 %i.afr, label %bb.do, label %gv_calloc.exit446

bb.do:                                            ; preds = %bb.dn
end_hunk_0
begin_hunk_1_@stress_majorization_kD_mkernel:bb.a
  br i1 %i.agg, label %.lr.ph526.preheader, label %._crit_edge527

.lr.ph526.preheader:                              ; preds = %gv_calloc.exit451
  %wide.trip.count660 = zext nneg i32 %4 to i64
  %i.agh = add nsw i64 %wide.trip.count660, -1    ; 2 uses
  %xtraiter1037 = and i64 %i.agh, 3               ; 3 uses
  %i.agi = add i32 %4, -2
  %i.agj = icmp ult i32 %i.agi, 3
  br i1 %i.agj, label %.lr.ph526.epil.preheader, label %.lr.ph526.preheader.new

.lr.ph526.preheader.new:                          ; preds = %.lr.ph526.preheader
  %unroll_iter1041 = and i64 %i.agh, -4
  br label %.lr.ph526

.lr.ph526:                                        ; preds = %.lr.ph526, %.lr.ph526.preheader.new
  %indvars.iv657 = phi i64 [ 1, %.lr.ph526.preheader.new ], [ %indvars.iv.next658.3, %.lr.ph526 ] ; 6 uses
  %niter1042 = phi i64 [ 0, %.lr.ph526.preheader.new ], [ %niter1042.next.3, %.lr.ph526 ]
  %i.agk = mul nsw i64 %indvars.iv657, %i.adf
  %i.agl = getelementptr inbounds [4 x i8], ptr %i.agf, i64 %i.agk
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv657
  store ptr %i.agl, ptr %i.agm, align 8, !tbaa !109
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1 ; 2 uses
  %i.agn = mul nsw i64 %indvars.iv.next658, %i.adf
  %i.ago = getelementptr inbounds [4 x i8], ptr %i.agf, i64 %i.agn
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv.next658
  store ptr %i.ago, ptr %i.agp, align 8, !tbaa !109
  %indvars.iv.next658.1 = add nuw nsw i64 %indvars.iv657, 2 ; 2 uses
  %i.agq = mul nsw i64 %indvars.iv.next658.1, %i.adf
  %i.agr = getelementptr inbounds [4 x i8], ptr %i.agf, i64 %i.agq
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv.next658.1
  store ptr %i.agr, ptr %i.ags, align 8, !tbaa !109
  %indvars.iv.next658.2 = add nuw nsw i64 %indvars.iv657, 3 ; 2 uses
  %i.agt = mul nsw i64 %indvars.iv.next658.2, %i.adf
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.agf, i64 %i.agt
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv.next658.2
  store ptr %i.agu, ptr %i.agv, align 8, !tbaa !109
  %indvars.iv.next658.3 = add nuw nsw i64 %indvars.iv657, 4 ; 2 uses
  %niter1042.next.3 = add nuw i64 %niter1042, 4   ; 2 uses
  %niter1042.ncmp.3 = icmp eq i64 %niter1042.next.3, %unroll_iter1041
  br i1 %niter1042.ncmp.3, label %._crit_edge527.loopexit.unr-lcssa, label %.lr.ph526, !llvm.loop !130

._crit_edge527.loopexit.unr-lcssa:                ; preds = %.lr.ph526
  %lcmp.mod1039.not = icmp eq i64 %xtraiter1037, 0
  br i1 %lcmp.mod1039.not, label %._crit_edge527, label %.lr.ph526.epil.preheader

.lr.ph526.epil.preheader:                         ; preds = %._crit_edge527.loopexit.unr-lcssa, %.lr.ph526.preheader
  %indvars.iv657.epil.init = phi i64 [ 1, %.lr.ph526.preheader ], [ %indvars.iv.next658.3, %._crit_edge527.loopexit.unr-lcssa ]
  %lcmp.mod1040 = icmp ne i64 %xtraiter1037, 0
  call void @llvm.assume(i1 %lcmp.mod1040)
  br label %.lr.ph526.epil

.lr.ph526.epil:                                   ; preds = %.lr.ph526.epil, %.lr.ph526.epil.preheader
  %indvars.iv657.epil = phi i64 [ %indvars.iv657.epil.init, %.lr.ph526.epil.preheader ], [ %indvars.iv.next658.epil, %.lr.ph526.epil ] ; 3 uses
  %epil.iter1038 = phi i64 [ 0, %.lr.ph526.epil.preheader ], [ %epil.iter1038.next, %.lr.ph526.epil ]
  %i.agw = mul nsw i64 %indvars.iv657.epil, %i.adf
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.agf, i64 %i.agw
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv657.epil
  store ptr %i.agx, ptr %i.agy, align 8, !tbaa !109
  %indvars.iv.next658.epil = add nuw nsw i64 %indvars.iv657.epil, 1
  %epil.iter1038.next = add i64 %epil.iter1038, 1 ; 2 uses
  %epil.iter1038.cmp.not = icmp eq i64 %epil.iter1038.next, %xtraiter1037
  br i1 %epil.iter1038.cmp.not, label %._crit_edge527, label %.lr.ph526.epil, !llvm.loop !131

._crit_edge527:                                   ; preds = %._crit_edge527.loopexit.unr-lcssa, %.lr.ph526.epil, %gv_calloc.exit451
  br i1 %.not.i437, label %bb.dt, label %.thread.i460

bb.dt:                                            ; preds = %._crit_edge527
  %mul.ov.i454 = icmp slt i32 %1, 0
  br i1 %mul.ov.i454, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.agz = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aha = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agz, ptr noundef nonnull @.str.14, i64 noundef %i.adf, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.ahb = call noalias ptr @calloc(i64 noundef %i.adf, i64 noundef 4) #16 ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, null
  br i1 %i.ahc, label %bb.dw, label %gv_calloc.exit456

bb.dw:                                            ; preds = %bb.dv
  %i.ahd = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ahe = shl nuw nsw i64 %i.adf, 2
  %i.ahf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahd, ptr noundef nonnull @.str.15, i64 noundef %i.ahe) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

.thread.i460:                                     ; preds = %._crit_edge527
  %i.ahg = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  %i.ahh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit461

gv_calloc.exit456:                                ; preds = %bb.dv
  %i.ahi = call noalias ptr @calloc(i64 noundef %i.adf, i64 noundef 4) #16 ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.dx, label %gv_calloc.exit461

bb.dx:                                            ; preds = %gv_calloc.exit456
  %i.ahk = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ahl = shl nuw nsw i64 %i.adf, 2
  %i.ahm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahk, ptr noundef nonnull @.str.15, i64 noundef %i.ahl) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit461:                                ; preds = %.thread.i460, %gv_calloc.exit456
  %i.ahn = phi ptr [ %i.ahg, %.thread.i460 ], [ %i.ahb, %gv_calloc.exit456 ] ; 11 uses
  %i.aho = phi ptr [ %i.ahh, %.thread.i460 ], [ %i.ahi, %gv_calloc.exit456 ] ; 30 uses
  %i.ahp = sext i32 %i.add to i64                 ; 3 uses
  %.off = add i32 %i.adc, 1
  %.not.i462 = icmp ult i32 %.off, 3
  br i1 %.not.i462, label %.thread.i465, label %bb.dy

.thread.i465:                                     ; preds = %gv_calloc.exit461
  %i.ahq = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit466

bb.dy:                                            ; preds = %gv_calloc.exit461
  %mul.ov.i464 = icmp slt i32 %i.adc, -1
  br i1 %mul.ov.i464, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ahr = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ahs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahr, ptr noundef nonnull @.str.14, i64 noundef %i.ahp, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.aht = call noalias ptr @calloc(i64 noundef %i.ahp, i64 noundef 4) #16 ; 2 uses
  %i.ahu = icmp eq ptr %i.aht, null
  br i1 %i.ahu, label %bb.eb, label %gv_calloc.exit466

bb.eb:                                            ; preds = %bb.ea
  %i.ahv = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ahw = shl nuw nsw i64 %i.ahp, 2
  %i.ahx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahv, ptr noundef nonnull @.str.15, i64 noundef %i.ahw) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit466:                                ; preds = %.thread.i465, %bb.ea
  %i.ahy = phi ptr [ %i.ahq, %.thread.i465 ], [ %i.aht, %bb.ea ] ; 13 uses
  %i.ahz = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not414 = icmp eq i8 %i.ahz, 0
  br i1 %.not414, label %.lr.ph579, label %bb.ec

bb.ec:                                            ; preds = %gv_calloc.exit466
  %i.aia = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aib = call double @elapsed_sec() #15
  %i.aic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aia, ptr noundef nonnull @.str.6, double noundef %i.aib) #17 ; 0 uses
  %i.aid = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aie = call i64 @fwrite(ptr nonnull @.str.10, i64 15, i64 1, ptr %i.aid) #19 ; 0 uses
  call void @start_timer() #15
  br label %.lr.ph579

.lr.ph579:                                        ; preds = %gv_calloc.exit466, %bb.ec
  %i.aif = shl nuw nsw i64 %i.adf, 4
  %i.aig = fpext float %i.ada to double           ; 2 uses
  %i.aih = add nsw i32 %1, -2
  %wide.trip.count702 = zext i32 %i.acx to i64
  %wide.trip.count668 = zext nneg i32 %4 to i64
  %wide.trip.count711 = zext i32 %1 to i64        ; 7 uses
  %i.aii = fadd double %i.aig, 0.000000e+00
  %wide.trip.count716 = zext nneg i32 %4 to i64
  %wide.trip.count721 = zext nneg i32 %4 to i64
  %wide.trip.count726 = zext nneg i32 %4 to i64
  %wide.trip.count736 = zext nneg i32 %4 to i64
  %wide.trip.count741 = zext nneg i32 %4 to i64
  %i.aij = add nsw i64 %wide.trip.count711, -1    ; 2 uses
  %xtraiter1062 = and i64 %wide.trip.count711, 1
  %i.aik = icmp eq i64 %i.aij, 0
  %unroll_iter1066 = and i64 %wide.trip.count711, 4294967294
  %lcmp.mod1064.not = icmp eq i64 %xtraiter1062, 0
  %lcmp.mod1065 = trunc i32 %1 to i1
  %xtraiter1068 = and i64 %wide.trip.count711, 1
  %i.ail = icmp eq i64 %i.aij, 0
  %unroll_iter1072 = and i64 %wide.trip.count711, 4294967294
  %lcmp.mod1070.not = icmp eq i64 %xtraiter1068, 0
  %lcmp.mod1071 = trunc i32 %1 to i1
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph579, %bb.ep
  %.0341577 = phi i32 [ 0, %.lr.ph579 ], [ %i.ash, %bb.ep ] ; 3 uses
  %.0354576 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph579 ], [ %.1353.lcssa, %bb.ep ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.afm, i8 0, i64 %i.aif, i1 false)
  br i1 %i.ade, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @sqrt_vecf(i32 noundef %i.add, ptr noundef %.1364, ptr noundef %i.ahy) #15
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  br i1 %i.bo, label %.lr.ph552, label %.preheader484

.preheader484:                                    ; preds = %.loopexit478, %bb.ef
  br i1 %.not.i437, label %.lr.ph556.preheader, label %.preheader483

.lr.ph556.preheader:                              ; preds = %.preheader484
  br i1 %i.aik, label %.lr.ph556.epil.preheader, label %.lr.ph556

.lr.ph552:                                        ; preds = %bb.ef, %.loopexit478
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %.loopexit478 ], [ 0, %bb.ef ] ; 10 uses
  %indvars.iv681 = phi i32 [ %indvars.iv.next682, %.loopexit478 ], [ %i.aih, %bb.ef ] ; 2 uses
  %indvars.iv662.in = phi i64 [ %indvars.iv662, %.loopexit478 ], [ %i.adf, %bb.ef ]
  %.3368550 = phi i32 [ %.6, %.loopexit478 ], [ 0, %bb.ef ] ; 3 uses
  %i.aim = trunc i64 %indvars.iv697 to i32
  %i.ain = sub i32 %i.acx, %i.aim                 ; 2 uses
  %i.aio = zext i32 %i.ain to i64                 ; 3 uses
  %i.aip = add nsw i64 %i.aio, -1                 ; 2 uses
  %i.aiq = xor i64 %indvars.iv697, -1
  %i.air = add nsw i64 %i.aiq, %i.adf
  %umax916 = call i64 @llvm.umax.i64(i64 %i.air, i64 1)
  %i.ais = shl i64 %umax916, 2                    ; 2 uses
  %scevgep917 = getelementptr i8, ptr %i.aho, i64 %i.ais ; 2 uses
  %i.ait = shl nuw nsw i64 %indvars.iv697, 2
  %indvars.iv662 = add nsw i64 %indvars.iv662.in, -1 ; 10 uses
  %i.aiu = trunc i64 %indvars.iv697 to i32
  %i.aiv = sub i32 %i.acx, %i.aiu
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = shl nuw nsw i64 %i.aiw, 2
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv662, i64 1) ; 3 uses
  %i.aiy = trunc nuw nsw i64 %indvars.iv697 to i32
  %i.aiz = xor i32 %i.aiy, -1
  %i.aja = add nsw i32 %1, %i.aiz                 ; 5 uses
  call void @set_vector_valf(i32 noundef %i.aja, float noundef 0.000000e+00, ptr noundef %i.aho) #15
  br i1 %i.acd, label %.preheader475.lr.ph, label %._crit_edge532.split

.preheader475.lr.ph:                              ; preds = %.lr.ph552
  %.not587 = icmp eq i32 %i.aja, 0
  br i1 %.not587, label %._crit_edge536.thread, label %.preheader475.preheader

.preheader475.preheader:                          ; preds = %.preheader475.lr.ph
  %min.iters.check924 = icmp ult i64 %indvars.iv662, 8
  %n.vec926 = and i64 %umax, -8                   ; 3 uses
  %cmp.n937 = icmp eq i64 %indvars.iv662, %n.vec926
  %xtraiter1044 = and i64 %umax, 1
  %lcmp.mod1045.not = icmp eq i64 %xtraiter1044, 0
  %invariant.op1087 = sub nuw i64 %umax, 1
  br label %.preheader475

.preheader475:                                    ; preds = %.preheader475.preheader, %._crit_edge530
  %indvars.iv665 = phi i64 [ %indvars.iv.next666, %._crit_edge530 ], [ 0, %.preheader475.preheader ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv665
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !109 ; 2 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %indvars.iv697 ; 6 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 4 ; 6 uses
  br i1 %min.iters.check924, label %scalar.ph923.preheader, label %vector.memcheck915

vector.memcheck915:                               ; preds = %.preheader475
  %i.ajf = getelementptr i8, ptr %i.ajc, i64 %i.ait
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 4
  %scevgep918 = getelementptr i8, ptr %i.ajg, i64 %i.ais
  %bound0 = icmp ult ptr %i.aho, %scevgep918
  %bound1 = icmp ult ptr %i.aje, %scevgep917
  %found.conflict = and i1 %bound0, %bound1
  %bound0919 = icmp ult ptr %i.aho, %i.aje
  %bound1920 = icmp ult ptr %i.ajd, %scevgep917
  %found.conflict921 = and i1 %bound0919, %bound1920
  %conflict.rdx922 = or i1 %found.conflict, %found.conflict921
  br i1 %conflict.rdx922, label %scalar.ph923.preheader, label %vector.ph925

vector.ph925:                                     ; preds = %vector.memcheck915
  %i.ajh = load float, ptr %i.ajd, align 4, !tbaa !51, !alias.scope !132
  %broadcast.splatinsert931 = insertelement <4 x float> poison, float %i.ajh, i64 0
  %broadcast.splat932 = shufflevector <4 x float> %broadcast.splatinsert931, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph925
  %index928 = phi i64 [ 0, %vector.ph925 ], [ %index.next935, %vector.body927 ] ; 3 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %index928 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %wide.load929 = load <4 x float>, ptr %i.aji, align 4, !tbaa !51, !alias.scope !135
  %wide.load930 = load <4 x float>, ptr %i.ajj, align 4, !tbaa !51, !alias.scope !135
  %i.ajk = fsub <4 x float> %broadcast.splat932, %wide.load929 ; 2 uses
  %i.ajl = fsub <4 x float> %broadcast.splat932, %wide.load930 ; 2 uses
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index928 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 16 ; 2 uses
  %wide.load933 = load <4 x float>, ptr %i.ajm, align 4, !tbaa !51, !alias.scope !137, !noalias !139
  %wide.load934 = load <4 x float>, ptr %i.ajn, align 4, !tbaa !51, !alias.scope !137, !noalias !139
  %i.ajo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajk, <4 x float> %i.ajk, <4 x float> %wide.load933)
  %i.ajp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajl, <4 x float> %i.ajl, <4 x float> %wide.load934)
  store <4 x float> %i.ajo, ptr %i.ajm, align 4, !tbaa !51, !alias.scope !137, !noalias !139
  store <4 x float> %i.ajp, ptr %i.ajn, align 4, !tbaa !51, !alias.scope !137, !noalias !139
  %index.next935 = add nuw i64 %index928, 8       ; 2 uses
  %i.ajq = icmp eq i64 %index.next935, %n.vec926
  br i1 %i.ajq, label %middle.block936, label %vector.body927, !llvm.loop !140

middle.block936:                                  ; preds = %vector.body927
  br i1 %cmp.n937, label %._crit_edge530, label %scalar.ph923.preheader

scalar.ph923.preheader:                           ; preds = %vector.memcheck915, %.preheader475, %middle.block936
  %.0342528.ph = phi i64 [ 0, %vector.memcheck915 ], [ 0, %.preheader475 ], [ %n.vec926, %middle.block936 ] ; 5 uses
  br i1 %lcmp.mod1045.not, label %scalar.ph923.prol.loopexit, label %scalar.ph923.prol

scalar.ph923.prol:                                ; preds = %scalar.ph923.preheader
  %i.ajr = load float, ptr %i.ajd, align 4, !tbaa !51
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %.0342528.ph
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !51
  %i.aju = fsub float %i.ajr, %i.ajt              ; 2 uses
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %.0342528.ph ; 2 uses
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !51
  %i.ajx = call float @llvm.fmuladd.f32(float %i.aju, float %i.aju, float %i.ajw)
  store float %i.ajx, ptr %i.ajv, align 4, !tbaa !51
  %i.ajy = or disjoint i64 %.0342528.ph, 1
  br label %scalar.ph923.prol.loopexit

scalar.ph923.prol.loopexit:                       ; preds = %scalar.ph923.prol, %scalar.ph923.preheader
  %.0342528.unr = phi i64 [ %.0342528.ph, %scalar.ph923.preheader ], [ %i.ajy, %scalar.ph923.prol ]
  %i.ajz = icmp eq i64 %.0342528.ph, %invariant.op1087
  br i1 %i.ajz, label %._crit_edge530, label %scalar.ph923

scalar.ph923:                                     ; preds = %scalar.ph923.prol.loopexit, %scalar.ph923
  %.0342528 = phi i64 [ %i.akp, %scalar.ph923 ], [ %.0342528.unr, %scalar.ph923.prol.loopexit ] ; 4 uses
  %i.aka = load float, ptr %i.ajd, align 4, !tbaa !51
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %.0342528
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !51
  %i.akd = fsub float %i.aka, %i.akc              ; 2 uses
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %.0342528 ; 2 uses
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !51
  %i.akg = call float @llvm.fmuladd.f32(float %i.akd, float %i.akd, float %i.akf)
  store float %i.akg, ptr %i.ake, align 4, !tbaa !51
  %i.akh = add nuw i64 %.0342528, 1               ; 2 uses
  %i.aki = load float, ptr %i.ajd, align 4, !tbaa !51
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %i.akh
  %i.akk = load float, ptr %i.akj, align 4, !tbaa !51
  %i.akl = fsub float %i.aki, %i.akk              ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.akh ; 2 uses
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !51
  %i.ako = call float @llvm.fmuladd.f32(float %i.akl, float %i.akl, float %i.akn)
  store float %i.ako, ptr %i.akm, align 4, !tbaa !51
  %i.akp = add nuw i64 %.0342528, 2               ; 2 uses
  %exitcond664.not.1 = icmp eq i64 %indvars.iv662, %i.akp
  br i1 %exitcond664.not.1, label %._crit_edge530, label %scalar.ph923, !llvm.loop !141

._crit_edge530:                                   ; preds = %scalar.ph923.prol.loopexit, %scalar.ph923, %middle.block936
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %exitcond669.not = icmp eq i64 %indvars.iv.next666, %wide.trip.count668
  br i1 %exitcond669.not, label %._crit_edge532.split, label %.preheader475, !llvm.loop !142

._crit_edge532.split:                             ; preds = %._crit_edge530, %.lr.ph552
  call void @invert_sqrt_vec(i32 noundef %i.aja, ptr noundef %i.aho) #15
  %i.akq = icmp sgt i32 %i.aja, 0                 ; 3 uses
  br i1 %i.akq, label %.lr.ph535.preheader, label %._crit_edge536

.lr.ph535.preheader:                              ; preds = %._crit_edge532.split
  %wide.trip.count675 = and i64 %indvars.iv662, 4294967295 ; 3 uses
  %min.iters.check890 = icmp samesign ult i64 %wide.trip.count675, 8
  br i1 %min.iters.check890, label %.lr.ph535.preheader951, label %vector.ph891

vector.ph891:                                     ; preds = %.lr.ph535.preheader
  %n.vec892 = and i64 %indvars.iv662, 4294967288  ; 3 uses
  br label %vector.body893

vector.body893:                                   ; preds = %pred.store.continue910, %vector.ph891
  %index894 = phi i64 [ 0, %vector.ph891 ], [ %index.next911, %pred.store.continue910 ] ; 9 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index894 ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 16
  %wide.load895 = load <4 x float>, ptr %i.akr, align 4, !tbaa !51 ; 2 uses
  %wide.load896 = load <4 x float>, ptr %i.aks, align 4, !tbaa !51 ; 2 uses
  %i.akt = fcmp oge <4 x float> %wide.load895, splat (float f0x7F7FFFFF)
  %i.aku = fcmp oge <4 x float> %wide.load896, splat (float f0x7F7FFFFF)
  %i.akv = fcmp olt <4 x float> %wide.load895, zeroinitializer
  %i.akw = fcmp olt <4 x float> %wide.load896, zeroinitializer
  %i.akx = or <4 x i1> %i.akt, %i.akv             ; 4 uses
  %i.aky = or <4 x i1> %i.aku, %i.akw             ; 4 uses
  %i.akz = extractelement <4 x i1> %i.akx, i64 0
  br i1 %i.akz, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body893
  store float 0.000000e+00, ptr %i.akr, align 4, !tbaa !51
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body893
  %i.ala = extractelement <4 x i1> %i.akx, i64 1
  br i1 %i.ala, label %pred.store.if897, label %pred.store.continue898

pred.store.if897:                                 ; preds = %pred.store.continue
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index894
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  store float 0.000000e+00, ptr %i.alc, align 4, !tbaa !51
  br label %pred.store.continue898

pred.store.continue898:                           ; preds = %pred.store.if897, %pred.store.continue
  %i.ald = extractelement <4 x i1> %i.akx, i64 2
  br i1 %i.ald, label %pred.store.if899, label %pred.store.continue900

pred.store.if899:                                 ; preds = %pred.store.continue898
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index894
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store float 0.000000e+00, ptr %i.alf, align 4, !tbaa !51
  br label %pred.store.continue900

pred.store.continue900:                           ; preds = %pred.store.if899, %pred.store.continue898
  %i.alg = extractelement <4 x i1> %i.akx, i64 3
  br i1 %i.alg, label %pred.store.if901, label %pred.store.continue902

pred.store.if901:                                 ; preds = %pred.store.continue900
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index894
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 12
  store float 0.000000e+00, ptr %i.ali, align 4, !tbaa !51
  br label %pred.store.continue902

pred.store.continue902:                           ; preds = %pred.store.if901, %pred.store.continue900
  %i.alj = extractelement <4 x i1> %i.aky, i64 0
  br i1 %i.alj, label %pred.store.if903, label %pred.store.continue904

pred.store.if903:                                 ; preds = %pred.store.continue902
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index894
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 16
  store float 0.000000e+00, ptr %i.all, align 4, !tbaa !51
  br label %pred.store.continue904

pred.store.continue904:                           ; preds = %pred.store.if903, %pred.store.continue902
  %i.alm = extractelement <4 x i1> %i.aky, i64 1
  br i1 %i.alm, label %pred.store.if905, label %pred.store.continue906

pred.store.if905:                                 ; preds = %pred.store.continue904
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index894
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 20
  store float 0.000000e+00, ptr %i.alo, align 4, !tbaa !51
  br label %pred.store.continue906

pred.store.continue906:                           ; preds = %pred.store.if905, %pred.store.continue904
  %i.alp = extractelement <4 x i1> %i.aky, i64 2
  br i1 %i.alp, label %pred.store.if907, label %pred.store.continue908

pred.store.if907:                                 ; preds = %pred.store.continue906
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index894
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 24
  store float 0.000000e+00, ptr %i.alr, align 4, !tbaa !51
  br label %pred.store.continue908

pred.store.continue908:                           ; preds = %pred.store.if907, %pred.store.continue906
  %i.als = extractelement <4 x i1> %i.aky, i64 3
  br i1 %i.als, label %pred.store.if909, label %pred.store.continue910

pred.store.if909:                                 ; preds = %pred.store.continue908
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %index894
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 28
  store float 0.000000e+00, ptr %i.alu, align 4, !tbaa !51
  br label %pred.store.continue910

pred.store.continue910:                           ; preds = %pred.store.if909, %pred.store.continue908
  %index.next911 = add nuw i64 %index894, 8       ; 2 uses
  %i.alv = icmp eq i64 %index.next911, %n.vec892
  br i1 %i.alv, label %middle.block912, label %vector.body893, !llvm.loop !143

middle.block912:                                  ; preds = %pred.store.continue910
  %cmp.n913 = icmp eq i64 %wide.trip.count675, %n.vec892
  br i1 %cmp.n913, label %._crit_edge536, label %.lr.ph535.preheader951

.lr.ph535.preheader951:                           ; preds = %.lr.ph535.preheader, %middle.block912
  %indvars.iv670.ph = phi i64 [ 0, %.lr.ph535.preheader ], [ %n.vec892, %middle.block912 ]
  br label %.lr.ph535

.lr.ph535:                                        ; preds = %.lr.ph535.preheader951, %bb.eh
  %indvars.iv670 = phi i64 [ %indvars.iv.next671, %bb.eh ], [ %indvars.iv670.ph, %.lr.ph535.preheader951 ] ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv670 ; 2 uses
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !51 ; 2 uses
  %i.aly = fcmp oge float %i.alx, f0x7F7FFFFF
  %i.alz = fcmp olt float %i.alx, 0.000000e+00
  %or.cond421 = or i1 %i.aly, %i.alz
  br i1 %or.cond421, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph535
  store float 0.000000e+00, ptr %i.alw, align 4, !tbaa !51
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph535, %bb.eg
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count675
  br i1 %exitcond676.not, label %._crit_edge536, label %.lr.ph535, !llvm.loop !144

._crit_edge536:                                   ; preds = %bb.eh, %middle.block912, %._crit_edge532.split
  %i.ama = add i32 %.3368550, 1                   ; 4 uses
  br i1 %i.ade, label %.preheader477, label %.preheader479

._crit_edge536.thread:                            ; preds = %.preheader475.lr.ph
  call void @invert_sqrt_vec(i32 noundef %i.aja, ptr noundef %i.aho) #15
  %i.amb = add i32 %.3368550, 1
  br label %.loopexit478

.preheader479:                                    ; preds = %._crit_edge536
  br i1 %i.akq, label %.lr.ph540.preheader, label %.loopexit478

.lr.ph540.preheader:                              ; preds = %.preheader479
  %i.amc = sext i32 %i.ama to i64
  %i.amd = shl nsw i64 %i.amc, 2
  %scevgep = getelementptr i8, ptr %i.ahy, i64 %i.amd
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %i.aho, i64 %i.aix, i1 false), !tbaa !51
  %invariant.gep820 = getelementptr inbounds nuw [16 x i8], ptr %i.afm, i64 %indvars.iv697 ; 3 uses
  %xtraiter1047 = and i64 %indvars.iv662, 1
  %i.ame = icmp eq i64 %i.aip, 0
  br i1 %i.ame, label %.lr.ph540.epil.preheader, label %.lr.ph540.preheader.new

.lr.ph540.preheader.new:                          ; preds = %.lr.ph540.preheader
  %unroll_iter1052 = and i64 %indvars.iv662, 4294967294
  br label %.lr.ph540

.preheader477:                                    ; preds = %._crit_edge536
  br i1 %i.akq, label %.lr.ph546.preheader, label %.loopexit478

.lr.ph546.preheader:                              ; preds = %.preheader477
  %i.amf = sext i32 %i.ama to i64                 ; 2 uses
  %invariant.gep822 = getelementptr inbounds nuw [16 x i8], ptr %i.afm, i64 %indvars.iv697 ; 3 uses
  %xtraiter1054 = and i64 %i.aio, 1
  %i.amg = icmp eq i64 %i.aip, 0
  br i1 %i.amg, label %.lr.ph546.epil.preheader, label %.lr.ph546.preheader.new

.lr.ph546.preheader.new:                          ; preds = %.lr.ph546.preheader
  %unroll_iter1060 = and i64 %i.aio, 4294967294
  br label %.lr.ph546

.lr.ph546:                                        ; preds = %.lr.ph546, %.lr.ph546.preheader.new
  %indvars.iv690 = phi i64 [ 0, %.lr.ph546.preheader.new ], [ %indvars.iv.next691.1, %.lr.ph546 ] ; 4 uses
  %indvars.iv688 = phi i64 [ %i.amf, %.lr.ph546.preheader.new ], [ %indvars.iv.next689.1, %.lr.ph546 ] ; 3 uses
  %.1360545 = phi x86_fp80 [ 0.000000e+00, %.lr.ph546.preheader.new ], [ %i.amy, %.lr.ph546 ]
  %niter1061 = phi i64 [ 0, %.lr.ph546.preheader.new ], [ %niter1061.next.1, %.lr.ph546 ]
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv690
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !51
  %i.amj = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %indvars.iv688 ; 2 uses
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !51
  %i.aml = fmul float %i.ami, %i.amk              ; 2 uses
  store float %i.aml, ptr %i.amj, align 4, !tbaa !51
  %i.amm = fpext float %i.aml to x86_fp80         ; 2 uses
  %i.amn = fadd x86_fp80 %.1360545, %i.amm
  %gep823 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep822, i64 %indvars.iv690
  %i.amo = getelementptr inbounds nuw i8, ptr %gep823, i64 16 ; 2 uses
  %i.amp = load x86_fp80, ptr %i.amo, align 16, !tbaa !125
  %i.amq = fsub x86_fp80 %i.amp, %i.amm
  store x86_fp80 %i.amq, ptr %i.amo, align 16, !tbaa !125
  %indvars.iv.next691 = or disjoint i64 %indvars.iv690, 1 ; 2 uses
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.next691
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !51
  %i.amt = getelementptr [4 x i8], ptr %i.ahy, i64 %indvars.iv688
  %i.amu = getelementptr i8, ptr %i.amt, i64 4    ; 2 uses
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !51
  %i.amw = fmul float %i.ams, %i.amv              ; 2 uses
  store float %i.amw, ptr %i.amu, align 4, !tbaa !51
  %i.amx = fpext float %i.amw to x86_fp80         ; 2 uses
  %i.amy = fadd x86_fp80 %i.amn, %i.amx           ; 3 uses
  %gep823.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep822, i64 %indvars.iv.next691
  %i.amz = getelementptr inbounds nuw i8, ptr %gep823.1, i64 16 ; 2 uses
  %i.ana = load x86_fp80, ptr %i.amz, align 16, !tbaa !125
  %i.anb = fsub x86_fp80 %i.ana, %i.amx
  store x86_fp80 %i.anb, ptr %i.amz, align 16, !tbaa !125
  %indvars.iv.next691.1 = add nuw nsw i64 %indvars.iv690, 2 ; 2 uses
  %indvars.iv.next689.1 = add nsw i64 %indvars.iv688, 2 ; 3 uses
  %niter1061.next.1 = add i64 %niter1061, 2       ; 2 uses
  %niter1061.ncmp.1 = icmp eq i64 %niter1061.next.1, %unroll_iter1060
  br i1 %niter1061.ncmp.1, label %.loopexit478.loopexit.unr-lcssa, label %.lr.ph546, !llvm.loop !145

.lr.ph540:                                        ; preds = %.lr.ph540, %.lr.ph540.preheader.new
  %indvars.iv679 = phi i64 [ 0, %.lr.ph540.preheader.new ], [ %indvars.iv.next680.1, %.lr.ph540 ] ; 4 uses
  %.2361539 = phi x86_fp80 [ 0.000000e+00, %.lr.ph540.preheader.new ], [ %i.anm, %.lr.ph540 ]
  %niter1053 = phi i64 [ 0, %.lr.ph540.preheader.new ], [ %niter1053.next.1, %.lr.ph540 ]
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv679
  %i.and = load float, ptr %i.anc, align 4, !tbaa !51
  %i.ane = fpext float %i.and to x86_fp80         ; 2 uses
  %i.anf = fadd x86_fp80 %.2361539, %i.ane
  %gep821 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep820, i64 %indvars.iv679
  %i.ang = getelementptr inbounds nuw i8, ptr %gep821, i64 16 ; 2 uses
  %i.anh = load x86_fp80, ptr %i.ang, align 16, !tbaa !125
  %i.ani = fsub x86_fp80 %i.anh, %i.ane
  store x86_fp80 %i.ani, ptr %i.ang, align 16, !tbaa !125
  %indvars.iv.next680 = or disjoint i64 %indvars.iv679, 1 ; 2 uses
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.next680
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !51
  %i.anl = fpext float %i.ank to x86_fp80         ; 2 uses
  %i.anm = fadd x86_fp80 %i.anf, %i.anl           ; 3 uses
  %gep821.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep820, i64 %indvars.iv.next680
  %i.ann = getelementptr inbounds nuw i8, ptr %gep821.1, i64 16 ; 2 uses
  %i.ano = load x86_fp80, ptr %i.ann, align 16, !tbaa !125
  %i.anp = fsub x86_fp80 %i.ano, %i.anl
  store x86_fp80 %i.anp, ptr %i.ann, align 16, !tbaa !125
  %indvars.iv.next680.1 = add nuw nsw i64 %indvars.iv679, 2 ; 2 uses
  %niter1053.next.1 = add i64 %niter1053, 2       ; 2 uses
  %niter1053.ncmp.1 = icmp eq i64 %niter1053.next.1, %unroll_iter1052
  br i1 %niter1053.ncmp.1, label %.loopexit478.loopexit588.unr-lcssa, label %.lr.ph540, !llvm.loop !146

.loopexit478.loopexit.unr-lcssa:                  ; preds = %.lr.ph546
  %lcmp.mod1056.not = icmp eq i64 %xtraiter1054, 0
  br i1 %lcmp.mod1056.not, label %.loopexit478.loopexit, label %.lr.ph546.epil.preheader

.lr.ph546.epil.preheader:                         ; preds = %.loopexit478.loopexit.unr-lcssa, %.lr.ph546.preheader
  %indvars.iv690.epil.init = phi i64 [ 0, %.lr.ph546.preheader ], [ %indvars.iv.next691.1, %.loopexit478.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv688.epil.init = phi i64 [ %i.amf, %.lr.ph546.preheader ], [ %indvars.iv.next689.1, %.loopexit478.loopexit.unr-lcssa ] ; 2 uses
  %.1360545.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph546.preheader ], [ %i.amy, %.loopexit478.loopexit.unr-lcssa ]
  %lcmp.mod1059 = trunc i32 %i.ain to i1
  call void @llvm.assume(i1 %lcmp.mod1059)
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv690.epil.init
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !51
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %indvars.iv688.epil.init ; 2 uses
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !51
  %i.anu = fmul float %i.anr, %i.ant              ; 2 uses
  store float %i.anu, ptr %i.ans, align 4, !tbaa !51
  %i.anv = fpext float %i.anu to x86_fp80         ; 2 uses
  %i.anw = fadd x86_fp80 %.1360545.epil.init, %i.anv
  %gep823.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep822, i64 %indvars.iv690.epil.init
  %i.anx = getelementptr inbounds nuw i8, ptr %gep823.epil, i64 16 ; 2 uses
  %i.any = load x86_fp80, ptr %i.anx, align 16, !tbaa !125
  %i.anz = fsub x86_fp80 %i.any, %i.anv
  store x86_fp80 %i.anz, ptr %i.anx, align 16, !tbaa !125
  %indvars.iv.next689.epil = add nsw i64 %indvars.iv688.epil.init, 1
  br label %.loopexit478.loopexit

.loopexit478.loopexit:                            ; preds = %.loopexit478.loopexit.unr-lcssa, %.lr.ph546.epil.preheader
  %.lcssa955 = phi x86_fp80 [ %i.amy, %.loopexit478.loopexit.unr-lcssa ], [ %i.anw, %.lr.ph546.epil.preheader ]
  %indvars.iv.next689.lcssa = phi i64 [ %indvars.iv.next689.1, %.loopexit478.loopexit.unr-lcssa ], [ %indvars.iv.next689.epil, %.lr.ph546.epil.preheader ]
  %i.aoa = trunc nsw i64 %indvars.iv.next689.lcssa to i32
  br label %.loopexit478

.loopexit478.loopexit588.unr-lcssa:               ; preds = %.lr.ph540
  %lcmp.mod1049.not = icmp eq i64 %xtraiter1047, 0
  br i1 %lcmp.mod1049.not, label %.loopexit478.loopexit588, label %.lr.ph540.epil.preheader

.lr.ph540.epil.preheader:                         ; preds = %.loopexit478.loopexit588.unr-lcssa, %.lr.ph540.preheader
  %indvars.iv679.epil.init = phi i64 [ 0, %.lr.ph540.preheader ], [ %indvars.iv.next680.1, %.loopexit478.loopexit588.unr-lcssa ] ; 2 uses
  %.2361539.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph540.preheader ], [ %i.anm, %.loopexit478.loopexit588.unr-lcssa ]
  %lcmp.mod1051 = trunc i64 %indvars.iv662 to i1
  call void @llvm.assume(i1 %lcmp.mod1051)
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv679.epil.init
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !51
  %i.aod = fpext float %i.aoc to x86_fp80         ; 2 uses
  %i.aoe = fadd x86_fp80 %.2361539.epil.init, %i.aod
  %gep821.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep820, i64 %indvars.iv679.epil.init
  %i.aof = getelementptr inbounds nuw i8, ptr %gep821.epil, i64 16 ; 2 uses
  %i.aog = load x86_fp80, ptr %i.aof, align 16, !tbaa !125
  %i.aoh = fsub x86_fp80 %i.aog, %i.aod
  store x86_fp80 %i.aoh, ptr %i.aof, align 16, !tbaa !125
  br label %.loopexit478.loopexit588

.loopexit478.loopexit588:                         ; preds = %.loopexit478.loopexit588.unr-lcssa, %.lr.ph540.epil.preheader
  %.lcssa = phi x86_fp80 [ %i.anm, %.loopexit478.loopexit588.unr-lcssa ], [ %i.aoe, %.lr.ph540.epil.preheader ]
  %i.aoi = add i32 %.3368550, 2
  %i.aoj = add i32 %i.aoi, %indvars.iv681
  br label %.loopexit478

.loopexit478:                                     ; preds = %._crit_edge536.thread, %.loopexit478.loopexit588, %.loopexit478.loopexit, %.preheader479, %.preheader477
  %.6 = phi i32 [ %i.aoa, %.loopexit478.loopexit ], [ %i.ama, %.preheader477 ], [ %i.ama, %.preheader479 ], [ %i.aoj, %.loopexit478.loopexit588 ], [ %i.amb, %._crit_edge536.thread ]
  %.3362 = phi x86_fp80 [ %.lcssa955, %.loopexit478.loopexit ], [ 0.000000e+00, %.preheader477 ], [ 0.000000e+00, %.preheader479 ], [ %.lcssa, %.loopexit478.loopexit588 ], [ 0.000000e+00, %._crit_edge536.thread ]
  %i.aok = getelementptr inbounds nuw [16 x i8], ptr %i.afm, i64 %indvars.iv697 ; 2 uses
  %i.aol = load x86_fp80, ptr %i.aok, align 16, !tbaa !125
  %i.aom = fsub x86_fp80 %i.aol, %.3362
  store x86_fp80 %i.aom, ptr %i.aok, align 16, !tbaa !125
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 2 uses
  %indvars.iv.next682 = add i32 %indvars.iv681, -1
  %exitcond703.not = icmp eq i64 %indvars.iv.next698, %wide.trip.count702
  br i1 %exitcond703.not, label %.preheader484, label %.lr.ph552, !llvm.loop !147

.preheader483.loopexit.unr-lcssa:                 ; preds = %.lr.ph556
  br i1 %lcmp.mod1064.not, label %.preheader483, label %.lr.ph556.epil.preheader

.lr.ph556.epil.preheader:                         ; preds = %.preheader483.loopexit.unr-lcssa, %.lr.ph556.preheader
  %indvars.iv706.epil.init = phi i64 [ 0, %.lr.ph556.preheader ], [ %indvars.iv.next707.1, %.preheader483.loopexit.unr-lcssa ]
  %.7554.epil.init = phi i32 [ 0, %.lr.ph556.preheader ], [ %i.aph, %.preheader483.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1065)
  %i.aon = getelementptr inbounds nuw [16 x i8], ptr %i.afm, i64 %indvars.iv706.epil.init
  %i.aoo = load x86_fp80, ptr %i.aon, align 16, !tbaa !125
  %i.aop = fptrunc x86_fp80 %i.aoo to float
  %i.aoq = sext i32 %.7554.epil.init to i64
  %i.aor = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.aoq
  store float %i.aop, ptr %i.aor, align 4, !tbaa !51
  br label %.preheader483

.preheader483:                                    ; preds = %.lr.ph556.epil.preheader, %.preheader483.loopexit.unr-lcssa, %.preheader484
  br i1 %i.acd, label %.lr.ph558, label %._crit_edge568

.lr.ph556:                                        ; preds = %.lr.ph556.preheader, %.lr.ph556
  %indvars.iv706 = phi i64 [ %indvars.iv.next707.1, %.lr.ph556 ], [ 0, %.lr.ph556.preheader ] ; 3 uses
  %indvars.iv704 = phi i64 [ %indvars.iv.next705.1, %.lr.ph556 ], [ %i.adf, %.lr.ph556.preheader ] ; 3 uses
  %.7554 = phi i32 [ %i.aph, %.lr.ph556 ], [ 0, %.lr.ph556.preheader ] ; 2 uses
  %niter1067 = phi i64 [ %niter1067.next.1, %.lr.ph556 ], [ 0, %.lr.ph556.preheader ]
  %i.aos = getelementptr inbounds nuw [16 x i8], ptr %i.afm, i64 %indvars.iv706
  %i.aot = load x86_fp80, ptr %i.aos, align 16, !tbaa !125
  %i.aou = fptrunc x86_fp80 %i.aot to float
  %i.aov = sext i32 %.7554 to i64
  %i.aow = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.aov
  store float %i.aou, ptr %i.aow, align 4, !tbaa !51
  %i.aox = trunc nsw i64 %indvars.iv704 to i32
  %i.aoy = add nsw i32 %.7554, %i.aox             ; 2 uses
  %i.aoz = getelementptr inbounds nuw [16 x i8], ptr %i.afm, i64 %indvars.iv706
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 16
  %i.apb = load x86_fp80, ptr %i.apa, align 16, !tbaa !125
  %i.apc = fptrunc x86_fp80 %i.apb to float
  %i.apd = sext i32 %i.aoy to i64
  %i.ape = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.apd
  store float %i.apc, ptr %i.ape, align 4, !tbaa !51
  %indvars.iv.next707.1 = add nuw nsw i64 %indvars.iv706, 2 ; 2 uses
  %i.apf = trunc i64 %indvars.iv704 to i32
  %i.apg = add i32 %i.apf, -1
  %i.aph = add nsw i32 %i.aoy, %i.apg             ; 2 uses
  %indvars.iv.next705.1 = add nsw i64 %indvars.iv704, -2
  %niter1067.next.1 = add i64 %niter1067, 2       ; 2 uses
  %niter1067.ncmp.1 = icmp eq i64 %niter1067.next.1, %unroll_iter1066
  br i1 %niter1067.ncmp.1, label %.preheader483.loopexit.unr-lcssa, label %.lr.ph556, !llvm.loop !148

.lr.ph558:                                        ; preds = %.preheader483, %.lr.ph558
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %.lr.ph558 ], [ 0, %.preheader483 ] ; 3 uses
  %i.api = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv713
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !109
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv713
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !109
  call void @right_mult_with_vector_ff(ptr noundef %i.ahy, i32 noundef %1, ptr noundef %i.apj, ptr noundef %i.apl) #15
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond717.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count716
  br i1 %exitcond717.not, label %.lr.ph561, label %.lr.ph558, !llvm.loop !149

.lr.ph561:                                        ; preds = %.lr.ph558, %.lr.ph561
  %indvars.iv718 = phi i64 [ %indvars.iv.next719, %.lr.ph561 ], [ 0, %.lr.ph558 ] ; 3 uses
  %.0352560 = phi double [ %i.apr, %.lr.ph561 ], [ 0.000000e+00, %.lr.ph558 ]
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv718
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !109
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv718
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !109
  %i.apq = call double @vectors_inner_productf(i32 noundef %1, ptr noundef %i.apn, ptr noundef %i.app) #15
  %i.apr = fadd double %.0352560, %i.apq          ; 2 uses
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1 ; 2 uses
  %exitcond722.not = icmp eq i64 %indvars.iv.next719, %wide.trip.count721
  br i1 %exitcond722.not, label %.lr.ph567.preheader, label %.lr.ph561, !llvm.loop !150

.lr.ph567.preheader:                              ; preds = %.lr.ph561
  %i.aps = fmul double %i.apr, 2.000000e+00
  %i.apt = fadd double %i.aps, %i.aig
  br label %.lr.ph567

.lr.ph567:                                        ; preds = %.lr.ph567.preheader, %.lr.ph567
  %indvars.iv723 = phi i64 [ 0, %.lr.ph567.preheader ], [ %indvars.iv.next724, %.lr.ph567 ] ; 2 uses
  %.1353565 = phi double [ %i.apt, %.lr.ph567.preheader ], [ %i.apy, %.lr.ph567 ]
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv723 ; 2 uses
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !109
  call void @right_mult_with_vector_ff(ptr noundef %.1364, i32 noundef %1, ptr noundef %i.apv, ptr noundef %i.ahn) #15
  %i.apw = load ptr, ptr %i.apu, align 8, !tbaa !109
  %i.apx = call double @vectors_inner_productf(i32 noundef %1, ptr noundef %i.apw, ptr noundef %i.ahn) #15
  %i.apy = fsub double %.1353565, %i.apx          ; 2 uses
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge568, label %.lr.ph567, !llvm.loop !151

._crit_edge568:                                   ; preds = %.lr.ph567, %.preheader483
  %.1353.lcssa = phi double [ %i.aii, %.preheader483 ], [ %i.apy, %.lr.ph567 ] ; 4 uses
  %i.apz = fsub double %.0354576, %.1353.lcssa
  %i.aqa = call double @llvm.fabs.f64(double %i.apz)
  %i.aqb = fdiv double %i.aqa, %.0354576
  %i.aqc = load double, ptr @Epsilon, align 8, !tbaa !34 ; 2 uses
  %i.aqd = fcmp olt double %i.aqb, %i.aqc
  %i.aqe = fcmp olt double %.1353.lcssa, %i.aqc
  br i1 %i.acd, label %.lr.ph574, label %._crit_edge575

.lr.ph574:                                        ; preds = %._crit_edge568
  br i1 %.0346, label %.lr.ph574.split.us, label %.lr.ph574.split

.lr.ph574.split.us:                               ; preds = %.lr.ph574, %bb.ei
  %indvars.iv738 = phi i64 [ %indvars.iv.next739, %bb.ei ], [ 0, %.lr.ph574 ] ; 3 uses
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv738
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !109
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv738
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !109
  %i.aqj = call i32 @conjugate_gradient_mkernel(ptr noundef %.1364, ptr noundef %i.aqg, ptr noundef %i.aqi, i32 noundef %1, double noundef 1.000000e-03, i32 noundef %1) #15
  %i.aqk = icmp slt i32 %i.aqj, 0
  br i1 %i.aqk, label %.thread, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph574.split.us
  %indvars.iv.next739 = add nuw nsw i64 %indvars.iv738, 1 ; 2 uses
  %exitcond742.not = icmp eq i64 %indvars.iv.next739, %wide.trip.count741
  br i1 %exitcond742.not, label %._crit_edge575, label %.lr.ph574.split.us, !llvm.loop !152

.lr.ph574.split:                                  ; preds = %.lr.ph574, %.loopexit
  %indvars.iv733 = phi i64 [ %indvars.iv.next734, %.loopexit ], [ 0, %.lr.ph574 ] ; 3 uses
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %indvars.iv733 ; 4 uses
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !109
  call void @copy_vectorf(i32 noundef %1, ptr noundef %i.aqm, ptr noundef %i.ahn) #15
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv733
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !109
  %i.aqp = call i32 @conjugate_gradient_mkernel(ptr noundef %.1364, ptr noundef %i.ahn, ptr noundef %i.aqo, i32 noundef %1, double noundef 1.000000e-03, i32 noundef %1) #15
  %i.aqq = icmp slt i32 %i.aqp, 0
  br i1 %i.aqq, label %.thread, label %.preheader476

.preheader476:                                    ; preds = %.lr.ph574.split
  br i1 %.not.i437, label %.lr.ph571.preheader, label %.loopexit

.lr.ph571.preheader:                              ; preds = %.preheader476
  br i1 %i.ail, label %.lr.ph571.epil.preheader, label %.lr.ph571

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %bb.el
  %indvars.iv728 = phi i64 [ %indvars.iv.next729.1, %bb.el ], [ 0, %.lr.ph571.preheader ] ; 5 uses
  %niter1073 = phi i64 [ %niter1073.next.1, %bb.el ], [ 0, %.lr.ph571.preheader ]
  %i.aqr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv728
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !11
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !13
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 163
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !18
  %i.aqx = icmp ugt i8 %i.aqw, 1
  br i1 %i.aqx, label %.lr.ph571.1, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph571
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %indvars.iv728
  %i.aqz = load float, ptr %i.aqy, align 4, !tbaa !51
  %i.ara = load ptr, ptr %i.aql, align 8, !tbaa !109
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %indvars.iv728
  store float %i.aqz, ptr %i.arb, align 4, !tbaa !51
  br label %.lr.ph571.1

.lr.ph571.1:                                      ; preds = %.lr.ph571, %bb.ej
  %indvars.iv.next729 = or disjoint i64 %indvars.iv728, 1 ; 3 uses
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next729
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !11
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 16
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !13
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 163
  %i.arh = load i8, ptr %i.arg, align 1, !tbaa !18
  %i.ari = icmp ugt i8 %i.arh, 1
  br i1 %i.ari, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph571.1
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %indvars.iv.next729
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !51
  %i.arl = load ptr, ptr %i.aql, align 8, !tbaa !109
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.next729
end_hunk_1
