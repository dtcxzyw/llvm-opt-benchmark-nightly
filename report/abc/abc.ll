Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_PrintTime:bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.1215, double noundef %i.b)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @Abc_Clock() unnamed_addr #9 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #37
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !256
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !258
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #21

declare void @Acb_NtkRunEco(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Acb_NtkRunGen(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @Cmd_CommandExecute(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Abc_FrameGetGlobalFrame(...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #22

declare void @Acb_NtkRunTest(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkRmInverter(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Rwr_Precompute(...) local_unnamed_addr #10

declare i32 @Abc_NtkGetChoiceNum(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkOrchLocal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkOrchRand(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkRewrite(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkRefactor(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkResubstitute(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Gia_ManResubUnateOne(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Gia_ManToAig(ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkFromAigPhase(ptr noundef) local_unnamed_addr #10

declare ptr @Supp_ManSolveOne(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare void @Res6_ManResubCheckPla(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Res6_ManResubCheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkCascade(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkLutCascadeFile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkLutCascadeGen(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkLutCascadeOne(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #21

declare ptr @Abc_NtkLutCascadeMap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #23

declare void @Abc_BSEvalBestGen(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_BSEvalBestTest(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_BSEvalOneTest(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkShareXor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_SuppReadMinTest(ptr noundef) local_unnamed_addr #10

declare void @Abc_SuppTest(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Extra_FileNameGenericAppend(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkGenFaultList(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkDetectClassesTest(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_ExactTest(i32 noundef) local_unnamed_addr #10

declare void @Abc_ExactStoreTest(i32 noundef) local_unnamed_addr #10

declare ptr @Gia_ManFindExact(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkFindExact(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_FrameClearVerifStatus(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_ExactIsRunning(...) local_unnamed_addr #10

declare void @Abc_ExactStart(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @Abc_ExactStop(ptr noundef) local_unnamed_addr #10

declare void @Abc_ExactStats(...) local_unnamed_addr #10

declare i32 @Maj_ManExactSynthesis(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Maj_ManExactSynthesis2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Exa_ManExactSynthesis6(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @Abc_Random(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @Abc_TwoExactCofactorSeeds(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 5 uses
  %i.b = alloca [64 x i64], align 16              ; 5 uses
  %i.c = alloca [16 x [16 x i32]], align 16       ; 6 uses
  %2 = alloca %struct.Bmc_EsPar_t_, align 8       ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !46
  store i32 16, ptr %i.d, align 8, !tbaa !45
  %i.f = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.h = load i32, ptr %0, align 8, !tbaa !293    ; 3 uses
  %i.i = icmp sgt i32 %i.h, 16
  br i1 %i.i, label %.loopexit148, label %.preheader151

.preheader151:                                    ; preds = %bb.a
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %.preheader150.lr.ph, label %._crit_edge

.preheader150.lr.ph:                              ; preds = %.preheader151
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.lr.ph, %bb.t
  %.0117156 = phi i32 [ 0, %.preheader150.lr.ph ], [ %i.ab, %bb.t ] ; 7 uses
  %notmask.i = shl nsw i32 -1, %.0117156
  %i.aa = xor i32 %notmask.i, -1
  %i.ab = add nuw nsw i32 %.0117156, 1            ; 3 uses
  %i.ac = add nuw nsw i32 %.0117156, 97           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader150, %bb.s
  %i.ad = phi i1 [ true, %.preheader150 ], [ false, %bb.s ]
  %.0116154 = phi i32 [ 0, %.preheader150 ], [ 1, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !305
  %i.af = load i32, ptr %0, align 8, !tbaa !293   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.ag = add i32 %i.af, -1                       ; 3 uses
  %i.ah = icmp sgt i32 %i.af, 2
  %i.ai = add nsw i32 %i.af, -3
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = add nuw nsw i32 %i.aj, 10
  %i.al = select i1 %i.ah, i32 %i.ak, i32 11
  %i.am = sext i32 %i.al to i64
  %i.an = call noalias ptr @malloc(i64 noundef %i.am) #38 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %i.ao = call fastcc i32 @Abc_TtReadHex(ptr noundef nonnull %i.a, ptr noundef readonly %i.ae) ; 0 uses
  %.not22.i = icmp eq i32 %i.ag, 31
  br i1 %.not22.i, label %Abc_TwoExactCofactorHex.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ap = shl nuw nsw i32 1, %i.ag
  %i.aq = shl nuw i32 %.0116154, %.0117156
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bm, %bb.e ] ; 5 uses
  %i.ar = and i32 %.021.i, %i.aa
  %i.as = lshr i32 %.021.i, %.0117156
  %i.at = or i32 %i.ar, %i.aq
  %i.au = shl i32 %i.as, %i.ab
  %i.av = or i32 %i.at, %i.au                     ; 2 uses
  %i.aw = ashr i32 %i.av, 6
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !123
  %i.ba = and i32 %i.av, 63
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = and i64 %i.bc, %i.az
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = and i32 %.021.i, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = lshr i32 %.021.i, 6
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !123
  %i.bl = or i64 %i.bk, %i.bg
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !123
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bm, %i.ap
  br i1 %exitcond.not.i, label %Abc_TwoExactCofactorHex.exit, label %bb.c, !llvm.loop !1566

Abc_TwoExactCofactorHex.exit:                     ; preds = %bb.e, %bb.b
  call void @Extra_PrintHexadecimalString(ptr noundef %i.an, ptr noundef nonnull %i.b, i32 noundef %i.ag) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.z, i8 0, i64 144, i1 false)
  store i32 2, ptr %i.l, align 8, !tbaa !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.m, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.o, align 8, !tbaa !292
  %i.bn = load i32, ptr %0, align 8, !tbaa !293   ; 4 uses
  %i.bo = add nsw i32 %i.bn, -1                   ; 3 uses
  store i32 %i.bo, ptr %2, align 8, !tbaa !293
  store i32 %1, ptr %i.p, align 4, !tbaa !294
  store ptr %i.an, ptr %i.q, align 8, !tbaa !305
  %i.bp = load i32, ptr %i.r, align 8, !tbaa !299
  store i32 %i.bp, ptr %i.s, align 8, !tbaa !299
  %i.bq = load i32, ptr %i.t, align 4, !tbaa !309
  store i32 %i.bq, ptr %i.u, align 4, !tbaa !309
  %i.br = load i32, ptr %i.v, align 8, !tbaa !295
  %spec.select = call i32 @llvm.umax.i32(i32 %i.br, i32 1)
  store i32 %spec.select, ptr %i.w, align 8, !tbaa !295
  store i32 1, ptr %i.x, align 8, !tbaa !307
  %smax.i140 = call i32 @llvm.smax.i32(i32 %i.bo, i32 %1)
  %exitcond.not.i141245.not.not = icmp sgt i32 %i.bn, %1
  br i1 %exitcond.not.i141245.not.not, label %Abc_TwoExactRunMin.exit.thread, label %.lr.ph249

bb.f:                                             ; preds = %Abc_TwoExactRun.exit.i
  %indvars.iv.next195 = add i32 %indvars.iv194246, 1
  %.0.i = add i32 %.0.i248, 1
  %exitcond.not.i141 = icmp eq i32 %.0.i248, %smax.i140
  br i1 %exitcond.not.i141, label %Abc_TwoExactRunMin.exit.thread, label %.lr.ph249, !llvm.loop !1567

.lr.ph249:                                        ; preds = %Abc_TwoExactCofactorHex.exit, %bb.f
  %.0.i248 = phi i32 [ %.0.i, %bb.f ], [ %i.bn, %Abc_TwoExactCofactorHex.exit ] ; 7 uses
  %.0.in.i247 = phi i32 [ %.0.i248, %bb.f ], [ %i.bo, %Abc_TwoExactCofactorHex.exit ]
  %indvars.iv194246 = phi i32 [ %indvars.iv.next195, %bb.f ], [ %i.bn, %Abc_TwoExactCofactorHex.exit ] ; 2 uses
  %i.bs = load i32, ptr %i.x, align 8, !tbaa !307
  %.not.i142 = icmp eq i32 %i.bs, 0
  br i1 %.not.i142, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph249
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1545, i32 noundef %.0.i248) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph249
  store i32 %.0.i248, ptr %i.p, align 4, !tbaa !294
  %i.bu = load ptr, ptr %i.y, align 8, !tbaa !311 ; 2 uses
  %.not17.i = icmp eq ptr %i.bu, null
  br i1 %.not17.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.bu) #37
  store ptr null, ptr %i.y, align 8, !tbaa !311
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !309
  %.not.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = call i32 @Exa_ManExactSynthesis(ptr noundef nonnull %2) #37
  br label %Abc_TwoExactRun.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bx = call i32 @Exa_ManExactSynthesis2(ptr noundef nonnull %2) #37
  br label %Abc_TwoExactRun.exit.i

Abc_TwoExactRun.exit.i:                           ; preds = %bb.l, %bb.k
  %i.by = phi i32 [ %i.bw, %bb.k ], [ %i.bx, %bb.l ]
  %.not18.i = icmp eq i32 %i.by, 0
  br i1 %.not18.i, label %bb.f, label %Abc_TwoExactRunMin.exit, !llvm.loop !1567

Abc_TwoExactRunMin.exit:                          ; preds = %Abc_TwoExactRun.exit.i
  %.not133 = icmp eq i32 %.0.i248, 0
  br i1 %.not133, label %Abc_TwoExactRunMin.exit.thread, label %bb.m

bb.m:                                             ; preds = %Abc_TwoExactRunMin.exit
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1539, i32 noundef %i.ac, i32 noundef %.0116154, i32 noundef %.0.i248, ptr noundef %i.an) ; 0 uses
  %i.ca = icmp ult i32 %.0.in.i247, 2147483647
  %.pre214 = load ptr, ptr %i.y, align 8, !tbaa !311 ; 3 uses
  br i1 %i.ca, label %.lr.ph, label %.loopexit149

.lr.ph:                                           ; preds = %bb.m
  %i.cb = load i32, ptr %2, align 8, !tbaa !293   ; 2 uses
  %wide.trip.count = zext i32 %indvars.iv194246 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre214, i64 %.idx ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !47 ; 3 uses
  %.not136 = icmp slt i32 %i.cd, %i.cb
  %.not137 = icmp slt i32 %i.cf, %i.cb
  %or.cond = select i1 %.not136, i1 %.not137, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = icmp sge i32 %i.cd, %.0117156
  %i.ch = zext i1 %i.cg to i32
  %i.ci = add nsw i32 %i.cd, %i.ch                ; 2 uses
  %i.cj = icmp sge i32 %i.cf, %.0117156
  %i.ck = zext i1 %i.cj to i32
  %i.cl = add nsw i32 %i.cf, %i.ck                ; 2 uses
  %spec.select138 = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cl)
  %spec.select139 = call i32 @llvm.smax.i32(i32 %i.ci, i32 %i.cl)
  %i.cm = sext i32 %spec.select138 to i64
  %i.cn = getelementptr inbounds [64 x i8], ptr %i.c, i64 %i.cm
  %i.co = sext i32 %spec.select139 to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !47
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit149.thread, label %bb.n, !llvm.loop !1568

Abc_TwoExactRunMin.exit.thread:                   ; preds = %bb.f, %Abc_TwoExactCofactorHex.exit, %Abc_TwoExactRunMin.exit
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1540, i32 noundef %i.ac, i32 noundef %.0116154, i32 noundef %1, ptr noundef %i.an) ; 0 uses
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !311
  br label %.loopexit149

.loopexit149:                                     ; preds = %bb.m, %Abc_TwoExactRunMin.exit.thread
  %i.ct = phi ptr [ %.pre, %Abc_TwoExactRunMin.exit.thread ], [ %.pre214, %bb.m ] ; 2 uses
  %.not134 = icmp eq ptr %i.ct, null
  br i1 %.not134, label %bb.q, label %.loopexit149.thread

.loopexit149.thread:                              ; preds = %bb.p, %.loopexit149
  %i.cu = phi ptr [ %i.ct, %.loopexit149 ], [ %.pre214, %bb.p ]
  call void @free(ptr noundef nonnull %i.cu) #37
  br label %bb.q

bb.q:                                             ; preds = %.loopexit149, %.loopexit149.thread
  %.not135 = icmp eq ptr %i.an, null
  br i1 %.not135, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.an) #37
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %i.ad, label %bb.b, label %bb.t, !llvm.loop !1569

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %0, align 8, !tbaa !293   ; 2 uses
  %i.cw = icmp slt i32 %i.ab, %i.cv
  br i1 %i.cw, label %.preheader150, label %._crit_edge, !llvm.loop !1570

._crit_edge:                                      ; preds = %bb.t, %.preheader151
  %.lcssa = phi i32 [ %i.h, %.preheader151 ], [ %i.cv, %bb.t ] ; 3 uses
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %.loopexit148, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %i.cx = mul i32 %.lcssa, %.lcssa
  %i.cy = call i32 @llvm.smax.i32(i32 %i.cx, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.ad
  %.promoted183 = phi ptr [ %storemerge185, %bb.ad ], [ %i.f, %.preheader.preheader ]
  %.promoted180 = phi i32 [ %spec.select.sink.i181, %bb.ad ], [ 16, %.preheader.preheader ]
  %.promoted = phi i64 [ %indvars.iv.next210, %bb.ad ], [ 0, %.preheader.preheader ]
  %.0111187 = phi i32 [ %i.dx, %bb.ad ], [ 0, %.preheader.preheader ]
  %i.cz = load i32, ptr %0, align 8, !tbaa !293   ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph170.preheader, label %.loopexit148

.lr.ph170.preheader:                              ; preds = %.preheader
  %i.db = zext nneg i32 %i.cz to i64              ; 3 uses
  %wide.trip.count207 = zext nneg i32 %i.cz to i64 ; 2 uses
  %i.dc = add nsw i64 %i.db, -2
  br label %.lr.ph170

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph162.new, %.lr.ph170
  %.1105.lcssa = phi i32 [ %.0104167, %.lr.ph170 ], [ %.2106.lcssa.unr, %.prol.loopexit ], [ %.2106.1, %.lr.ph162.new ] ; 4 uses
  %.1102.lcssa = phi i32 [ %.0101168, %.lr.ph170 ], [ %.2103.lcssa.unr, %.prol.loopexit ], [ %.2103.1, %.lr.ph162.new ] ; 4 uses
  %.1.lcssa = phi i32 [ %.0169, %.lr.ph170 ], [ %.2.lcssa.unr, %.prol.loopexit ], [ %.2.1, %.lr.ph162.new ] ; 5 uses
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !1571

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %.loopexit
  %indvars.iv204 = phi i64 [ 0, %.lr.ph170.preheader ], [ %indvars.iv.next205, %.loopexit ] ; 5 uses
  %indvars.iv197 = phi i64 [ 1, %.lr.ph170.preheader ], [ %indvars.iv.next198, %.loopexit ] ; 5 uses
  %.0169 = phi i32 [ 0, %.lr.ph170.preheader ], [ %.1.lcssa, %.loopexit ] ; 4 uses
  %.0101168 = phi i32 [ -1, %.lr.ph170.preheader ], [ %.1102.lcssa, %.loopexit ] ; 3 uses
  %.0104167 = phi i32 [ -1, %.lr.ph170.preheader ], [ %.1105.lcssa, %.loopexit ] ; 3 uses
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 3 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next205, %i.db
  br i1 %i.dd, label %.lr.ph162, label %.loopexit

end_hunk_0
begin_hunk_1_@Gia_ManDupCofactorVar

declare ptr @Gia_ManComputeCofs(ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupCofAll(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupCof(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_IntStartNatural(i32 noundef range(i32 0, -2147483648) %0) unnamed_addr #28 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.b = add nsw i32 %0, -1
  %or.cond.i = icmp ult i32 %i.b, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %0 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %spec.store.select.i, ptr %i.a, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %spec.store.select.i to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #38
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !42
  store i32 %0, ptr %i.c, align 4, !tbaa !46
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %Vec_IntAlloc.exit
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp samesign ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %vec.ind, ptr %i.i, align 4, !tbaa !47
  store <4 x i32> %step.add, ptr %i.j, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1605

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader11 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.m, ptr %i.l, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1606

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %Vec_IntAlloc.exit
  ret ptr %i.a
}

declare ptr @Gia_ManDupUnCofs(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupCofs(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupTrimmed2(ptr noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupTrimmed3(ptr noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupChoices(ptr noundef) local_unnamed_addr #10

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupLevelized(ptr noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupOrderAiger(ptr noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupOrderDfsReverse(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Gia_ManSimSetDefaultParams(ptr noundef) local_unnamed_addr #10

declare ptr @Extra_FileNameGeneric(ptr noundef) local_unnamed_addr #10

declare ptr @Extra_FileNameExtension(ptr noundef) local_unnamed_addr #10

declare void @Gia_ManSimSimulatePattern(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @Gia_ManSimSimulate(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @Gia_ManSimTwo(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Ssw_RarSimulateGia(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_WrdFreeP(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !958    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !959  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #37
  %i.e = load ptr, ptr %0, align 8, !tbaa !958    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !959
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi ptr [ %i.e, %.thread ], [ %i.a, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.g) #37
  store ptr null, ptr %0, align 8, !tbaa !958
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

declare void @Gia_ManDumpFiles(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @Gia_ManDumpPlaFiles(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @Gia_ManTestOneFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @Gia_ManTestWordFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_WrdStartTruthTablesRev(i32 noundef %0) unnamed_addr #28 {
bb.a:
  %i.a = icmp slt i32 %0, 7                       ; 2 uses
  %i.b = add nsw i32 %0, -6                       ; 2 uses
  %i.c = shl nuw i32 1, %i.b
  %.fr = freeze i32 %i.c
  %i.d = select i1 %i.a, i32 1, i32 %.fr          ; 2 uses
  %i.e = select i1 %i.a, i32 0, i32 %i.b          ; 2 uses
  %i.f = shl i32 %0, %i.e                         ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.h = add i32 %i.f, -1
  %or.cond.i.i = icmp ult i32 %i.h, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.f ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !1268
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #38
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !959
  store i32 %i.f, ptr %i.m, align 4, !tbaa !967
  %i.o = sext i32 %i.f to i64
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.p, i1 false)
  %i.q = icmp sgt i32 %0, 0
  %i.r = icmp sgt i32 %i.d, 0
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %.lr.ph36.split.us.split.us.preheader, label %._crit_edge

.lr.ph36.split.us.split.us.preheader:             ; preds = %Vec_WrdStart.exit
  %i.s = shl nuw i32 %i.d, 1                      ; 3 uses
  %smax66 = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1) ; 2 uses
  %wide.trip.count78 = zext nneg i32 %0 to i64
  %wide.trip.count67 = zext nneg i32 %smax66 to i64 ; 5 uses
  %wide.trip.count73 = zext nneg i32 %smax66 to i64
  %min.iters.check85 = icmp slt i32 %i.s, 8
  %n.vec87 = and i64 %wide.trip.count67, 2147483640 ; 3 uses
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count67
  %min.iters.check = icmp slt i32 %i.s, 8
  %n.vec = and i64 %wide.trip.count67, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  br label %.lr.ph36.split.us.split.us

.lr.ph36.split.us.split.us:                       ; preds = %.lr.ph36.split.us.split.us.preheader, %..loopexit30_crit_edge.us.us
  %indvars.iv75 = phi i64 [ 0, %.lr.ph36.split.us.split.us.preheader ], [ %indvars.iv.next76, %..loopexit30_crit_edge.us.us ] ; 5 uses
  %i.t = trunc i64 %indvars.iv75 to i32
  %i.u = xor i32 %i.t, -1
  %i.v = add i32 %0, %i.u
  %i.w = shl i32 %i.v, %i.e
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.x ; 4 uses
  %i.z = icmp samesign ult i64 %indvars.iv75, 5
  br i1 %i.z, label %.preheader.us.us, label %.preheader29.us.us

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %scalar.ph84
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %scalar.ph84 ], [ %indvars.iv63.ph, %scalar.ph84.preheader ] ; 3 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv63 to i32
  %i.ab = and i32 %i.al, %i.aa
  %.not.us.us = icmp ne i32 %i.ab, 0
  %spec.select = sext i1 %.not.us.us to i32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv63
  store i32 %spec.select, ptr %i.ac, align 4, !tbaa !47
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count67
  br i1 %exitcond68.not, label %..loopexit30_crit_edge.us.us, label %scalar.ph84, !llvm.loop !1607

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %scalar.ph ], [ %indvars.iv69.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv69
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !47
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count73
  br i1 %exitcond74.not, label %..loopexit30_crit_edge.us.us, label %scalar.ph, !llvm.loop !1608

..loopexit30_crit_edge.us.us:                     ; preds = %scalar.ph84, %scalar.ph, %middle.block93, %middle.block
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %._crit_edge, label %.lr.ph36.split.us.split.us, !llvm.loop !1609

.preheader.us.us:                                 ; preds = %.lr.ph36.split.us.split.us
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @__const.Vec_WrdStartTruthTables.Masks, i64 %indvars.iv75
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !47
  store <4 x i32> %broadcast.splat, ptr %i.ah, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1610

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit30_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv69.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader29.us.us:                               ; preds = %.lr.ph36.split.us.split.us
  %i.aj = trunc i64 %indvars.iv75 to i32
  %i.ak = add i32 %i.aj, -5
  %i.al = shl nuw i32 1, %i.ak                    ; 2 uses
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %.preheader29.us.us
  %broadcast.splatinsert88 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat89 = shufflevector <4 x i32> %broadcast.splatinsert88, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph86
  %index91 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body90 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph86 ], [ %vec.ind.next, %vector.body90 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.am = and <4 x i32> %broadcast.splat89, %vec.ind
  %i.an = and <4 x i32> %broadcast.splat89, %step.add
  %i.ao = icmp ne <4 x i32> %i.am, zeroinitializer
  %i.ap = icmp ne <4 x i32> %i.an, zeroinitializer
  %i.aq = sext <4 x i1> %i.ao to <4 x i32>
  %i.ar = sext <4 x i1> %i.ap to <4 x i32>
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index91 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %i.aq, ptr %i.as, align 4, !tbaa !47
  store <4 x i32> %i.ar, ptr %i.at, align 4, !tbaa !47
  %index.next92 = add nuw i64 %index91, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.au = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.au, label %middle.block93, label %vector.body90, !llvm.loop !1611

middle.block93:                                   ; preds = %vector.body90
  br i1 %cmp.n94, label %..loopexit30_crit_edge.us.us, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %.preheader29.us.us, %middle.block93
  %indvars.iv63.ph = phi i64 [ 0, %.preheader29.us.us ], [ %n.vec87, %middle.block93 ]
  br label %scalar.ph84

._crit_edge:                                      ; preds = %..loopexit30_crit_edge.us.us, %Vec_WrdStart.exit
  ret ptr %i.g
}

; Function Attrs: inlinehint nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_WrdStartTruthTables(i32 noundef %0) unnamed_addr #28 {
bb.a:
  %i.a = icmp slt i32 %0, 7                       ; 2 uses
  %i.b = add nsw i32 %0, -6                       ; 2 uses
  %i.c = shl nuw i32 1, %i.b
  %.fr = freeze i32 %i.c
  %i.d = select i1 %i.a, i32 1, i32 %.fr          ; 2 uses
  %i.e = select i1 %i.a, i32 0, i32 %i.b          ; 2 uses
  %i.f = shl i32 %0, %i.e                         ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.h = add i32 %i.f, -1
  %or.cond.i.i = icmp ult i32 %i.h, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.f ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !1268
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #38
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !959
  store i32 %i.f, ptr %i.m, align 4, !tbaa !967
  %i.o = sext i32 %i.f to i64
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.p, i1 false)
  %i.q = icmp sgt i32 %0, 0
  %i.r = icmp sgt i32 %i.d, 0
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %.lr.ph34.split.us.split.us.preheader, label %._crit_edge

.lr.ph34.split.us.split.us.preheader:             ; preds = %Vec_WrdStart.exit
  %i.s = shl nuw i32 %i.d, 1                      ; 3 uses
  %smax64 = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1) ; 2 uses
  %wide.trip.count76 = zext nneg i32 %0 to i64
  %wide.trip.count65 = zext nneg i32 %smax64 to i64 ; 5 uses
  %wide.trip.count71 = zext nneg i32 %smax64 to i64
  %min.iters.check83 = icmp slt i32 %i.s, 8
  %n.vec85 = and i64 %wide.trip.count65, 2147483640 ; 3 uses
  %cmp.n92 = icmp eq i64 %n.vec85, %wide.trip.count65
  %min.iters.check = icmp slt i32 %i.s, 8
  %n.vec = and i64 %wide.trip.count65, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65
  br label %.lr.ph34.split.us.split.us

.lr.ph34.split.us.split.us:                       ; preds = %.lr.ph34.split.us.split.us.preheader, %..loopexit28_crit_edge.us.us
  %indvars.iv73 = phi i64 [ 0, %.lr.ph34.split.us.split.us.preheader ], [ %indvars.iv.next74, %..loopexit28_crit_edge.us.us ] ; 5 uses
  %i.t = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.u = shl i32 %i.t, %i.e
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.v ; 4 uses
  %i.x = icmp samesign ult i64 %indvars.iv73, 5
  br i1 %i.x, label %.preheader.us.us, label %.preheader27.us.us

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %scalar.ph82 ], [ %indvars.iv61.ph, %scalar.ph82.preheader ] ; 3 uses
  %i.y = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.z = and i32 %i.aj, %i.y
  %.not.us.us = icmp ne i32 %i.z, 0
  %spec.select = sext i1 %.not.us.us to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv61
  store i32 %spec.select, ptr %i.aa, align 4, !tbaa !47
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count65
  br i1 %exitcond66.not, label %..loopexit28_crit_edge.us.us, label %scalar.ph82, !llvm.loop !1612

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %scalar.ph ], [ %indvars.iv67.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv67
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !47
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count71
  br i1 %exitcond72.not, label %..loopexit28_crit_edge.us.us, label %scalar.ph, !llvm.loop !1613

..loopexit28_crit_edge.us.us:                     ; preds = %scalar.ph82, %scalar.ph, %middle.block91, %middle.block
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge, label %.lr.ph34.split.us.split.us, !llvm.loop !1614

.preheader.us.us:                                 ; preds = %.lr.ph34.split.us.split.us
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @__const.Vec_WrdStartTruthTables.Masks, i64 %indvars.iv73
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !47
end_hunk_1
