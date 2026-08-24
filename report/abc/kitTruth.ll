Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitTruth?download=true
inline.NumInlined: 125
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 157
begin_hunk_0_@Kit_TruthCountMintermsPrecomp:bb.a
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.am = add nuw nsw i32 %i.ak, 87
  %fputc.i.3 = tail call i32 @fputc(i32 %i.am, ptr %i.u) ; 0 uses
  br label %.lr.ph.i.4

bb.k:                                             ; preds = %.lr.ph.i.3
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str, i32 noundef %i.ak) #13 ; 0 uses
  br label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.k, %bb.j
  %i.ao = lshr i32 %i.i, 12
  %i.ap = and i32 %i.ao, 15                       ; 3 uses
  %i.aq = icmp samesign ult i32 %i.ap, 10
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.4
  %i.ar = add nuw nsw i32 %i.ap, 87
  %fputc.i.4 = tail call i32 @fputc(i32 %i.ar, ptr %i.u) ; 0 uses
  br label %.lr.ph.i.5

bb.m:                                             ; preds = %.lr.ph.i.4
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str, i32 noundef %i.ap) #13 ; 0 uses
  br label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.m, %bb.l
  %i.at = lshr i32 %i.i, 8
  %i.au = and i32 %i.at, 15                       ; 3 uses
  %i.av = icmp samesign ult i32 %i.au, 10
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.5
  %i.aw = add nuw nsw i32 %i.au, 87
  %fputc.i.5 = tail call i32 @fputc(i32 %i.aw, ptr %i.u) ; 0 uses
  br label %.lr.ph.i.6

bb.o:                                             ; preds = %.lr.ph.i.5
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str, i32 noundef %i.au) #13 ; 0 uses
  br label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.o, %bb.n
  %i.ay = lshr i32 %i.d, 4
  %i.az = and i32 %i.ay, 15                       ; 3 uses
  %i.ba = icmp samesign ult i32 %i.az, 10
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.6
  %i.bb = add nuw nsw i32 %i.az, 87
  %fputc.i.6 = tail call i32 @fputc(i32 %i.bb, ptr %i.u) ; 0 uses
  br label %Kit_PrintHexadecimal.exit

bb.q:                                             ; preds = %.lr.ph.i.6
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str, i32 noundef %i.az) #13 ; 0 uses
  br label %Kit_PrintHexadecimal.exit

Kit_PrintHexadecimal.exit:                        ; preds = %bb.q, %bb.p
  %i.bd = and i32 %i.d, 15
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str, i32 noundef %i.bd) #13 ; 0 uses
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.r, label %bb.b, !llvm.loop !387

bb.r:                                             ; preds = %Kit_PrintHexadecimal.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define noundef nonnull ptr @Kit_TruthDumpToFile(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Kit_TruthDumpToFile.pFileName, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2) #13 ; 0 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @Kit_TruthDumpToFile.pFileName, ptr noundef nonnull @.str.6) ; 5 uses
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %i.b) ; 0 uses
  %i.d = shl nuw i32 1, %1                        ; 2 uses
  %i.e = icmp sgt i32 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader.i, label %Kit_PrintHexadecimal.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = lshr i32 %i.d, 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.013.in.i = phi i32 [ %.013.i, %bb.d ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.013.i = add nsw i32 %.013.in.i, -1            ; 3 uses
  %i.g = lshr i32 %.013.i, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = shl i32 %.013.i, 2
  %i.l = and i32 %i.k, 28
  %i.m = lshr i32 %i.j, %i.l
  %i.n = and i32 %i.m, 15                         ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 10
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef %i.n) #13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = add nuw nsw i32 %i.n, 87
  %fputc.i = tail call i32 @fputc(i32 %i.q, ptr %i.b) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = icmp samesign ugt i32 %.013.in.i, 1
  br i1 %i.r, label %.lr.ph.i, label %Kit_PrintHexadecimal.exit, !llvm.loop !383

Kit_PrintHexadecimal.exit:                        ; preds = %bb.d, %bb.a
  %i.s = tail call i64 @fwrite(ptr nonnull @.str.8, i64 15, i64 1, ptr %i.b) ; 0 uses
  %i.t = tail call i32 @fclose(ptr noundef %i.b)  ; 0 uses
  ret ptr @Kit_TruthDumpToFile.pFileName
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @Kit_TruthPrintProfile_int(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [20 x i32], align 16              ; 4 uses
  %i.c = alloca [20 x i32], align 16              ; 4 uses
  %i.d = alloca [20 x i32], align 16              ; 4 uses
  %i.e = alloca [20 x i32], align 16              ; 4 uses
  %i.f = alloca [20 x [20 x i32]], align 16       ; 8 uses
  %i.g = alloca [20 x [20 x i32]], align 16       ; 8 uses
  %i.h = alloca [20 x [20 x i32]], align 16       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.i = icmp slt i32 %1, 6
  %i.j = add nsw i32 %1, -5
  %i.k = shl nuw i32 1, %i.j
  %i.l = select i1 %i.i, i32 1, i32 %i.k          ; 12 uses
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #14 ; 5 uses
  %i.q = sext i32 %i.l to i64
  %i.r = shl nsw i64 %i.q, 2                      ; 6 uses
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 2 uses
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 40 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 30 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 40 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 7 uses
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.r) #14 ; 30 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64              ; 7 uses
  %i.ac = call i32 @Kit_TruthCountMinterms(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef %i.p) ; 0 uses
  %i.ad = icmp sgt i32 %1, 0                      ; 3 uses
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge526

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  br label %.lr.ph

.preheader.preheader:                             ; preds = %.lr.ph
  %i.ae = zext nneg i32 %1 to i64
  %i.af = shl nuw nsw i64 %i.ae, 2                ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i32 %1, 1
  br i1 %i.ag, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = tail call i32 @Kit_TruthBooleanDiffCount(ptr noundef %0, i32 noundef %1, i32 noundef %i.ah)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.preheader, label %.lr.ph, !llvm.loop !388

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv582 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next583.1, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %2 = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %indvars.iv582
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %indvars.iv582
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %indvars.iv582
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %2, i8 -1, i64 %i.af, i1 false), !tbaa !8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ak, i8 -1, i64 %i.af, i1 false), !tbaa !8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.al, i8 -1, i64 %i.af, i1 false), !tbaa !8
  %indvars.iv.next583 = or disjoint i64 %indvars.iv582, 1 ; 3 uses
  %3 = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %indvars.iv.next583
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %indvars.iv.next583
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %indvars.iv.next583
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 -1, i64 %i.af, i1 false), !tbaa !8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.am, i8 -1, i64 %i.af, i1 false), !tbaa !8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.an, i8 -1, i64 %i.af, i1 false), !tbaa !8
  %indvars.iv.next583.1 = add nuw nsw i64 %indvars.iv582, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph525.unr-lcssa, label %.preheader, !llvm.loop !389

.lr.ph525.unr-lcssa:                              ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph525, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.lr.ph525.unr-lcssa, %.preheader.preheader
  %indvars.iv582.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next583.1, %.lr.ph525.unr-lcssa ] ; 3 uses
  %lcmp.mod1307 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1307)
  %4 = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %indvars.iv582.epil.init
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %indvars.iv582.epil.init
  %i.ap = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %indvars.iv582.epil.init
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %4, i8 -1, i64 %i.af, i1 false), !tbaa !8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ao, i8 -1, i64 %i.af, i1 false), !tbaa !8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ap, i8 -1, i64 %i.af, i1 false), !tbaa !8
  br label %.lr.ph525

.lr.ph525:                                        ; preds = %.lr.ph525.unr-lcssa, %.preheader.epil.preheader
  %i.aq = add nsw i32 %1, -2
  %i.ar = shl nuw i32 1, %i.aq                    ; 4 uses
  %i.as = icmp sgt i32 %i.l, 0                    ; 4 uses
  %i.at = zext i32 %i.l to i64                    ; 11 uses
  %i.au = add nsw i32 %1, -1                      ; 5 uses
  %i.av = sdiv i32 %i.l, 2
  %i.aw = sext i32 %i.av to i64                   ; 4 uses
  %.not565 = icmp eq i32 %1, 1
  %i.ax = icmp samesign ult i32 %1, 7
  %i.ay = add nsw i32 %1, -6
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = select i1 %i.ax, i32 1, i32 %i.az       ; 52 uses
  %i.bb = icmp sgt i32 %i.ba, 0                   ; 24 uses
  %wide.trip.count.i245 = zext i32 %i.ba to i64   ; 73 uses
  %i.bc = zext nneg i32 %i.au to i64
  %wide.trip.count602 = zext nneg i32 %1 to i64
  %wide.trip.count593 = zext nneg i32 %i.au to i64
  %wide.trip.count598 = zext nneg i32 %i.au to i64
  %i.bd = shl nsw i64 %i.aw, 2                    ; 7 uses
  %i.be = shl nsw i64 %i.aw, 2                    ; 6 uses
  %i.bf = shl nsw i64 %i.aw, 2
  %i.bg = shl nuw nsw i64 %i.at, 2
  %i.bh = add nsw i64 %i.bg, -4                   ; 2 uses
  %i.bi = and i64 %i.bh, -8
  %i.bj = or i64 %i.bh, 4                         ; 2 uses
  %i.bk = add nsw i64 %i.bi, 8                    ; 2 uses
  %i.bl = add nsw i64 %wide.trip.count.i245, -1   ; 10 uses
  %min.iters.check1215 = icmp ult i32 %i.l, 8
  %n.vec1217 = and i64 %i.at, 2147483640
  %xtraiter1308 = and i64 %i.at, 3                ; 2 uses
  %lcmp.mod1309.not = icmp eq i64 %xtraiter1308, 0
  %i.bm = icmp ult i32 %i.l, 4
  %i.bn = add nsw i64 %i.at, -1
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 2 uses
  %min.iters.check1187 = icmp ult i32 %i.l, 15
  %n.vec1189 = and i64 %i.bp, -2                  ; 3 uses
  %i.bq = shl i64 %n.vec1189, 1
  %cmp.n1195 = icmp eq i64 %i.bp, %n.vec1189
  %min.iters.check1147 = icmp ult i32 %i.l, 8
  %n.vec1149 = and i64 %i.at, 2147483640
  %xtraiter1315 = and i64 %i.at, 1
  %i.br = icmp eq i32 %i.l, 1
  %unroll_iter1319 = and i64 %i.at, 2147483646
  %lcmp.mod1317.not = icmp eq i64 %xtraiter1315, 0
  %lcmp.mod1318 = trunc i32 %i.l to i1
  %min.iters.check1131 = icmp ult i32 %i.ba, 8
  %n.vec1133 = and i64 %wide.trip.count.i245, 2147483640
  %xtraiter1321 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.bs = icmp ult i32 %i.ba, 4
  %unroll_iter1325 = and i64 %wide.trip.count.i245, 2147483644
  %lcmp.mod1323.not = icmp eq i64 %xtraiter1321, 0
  %lcmp.mod1324 = icmp ne i64 %xtraiter1321, 0
  %min.iters.check1117 = icmp ult i32 %i.ba, 8
  %n.vec1119 = and i64 %wide.trip.count.i245, 2147483640
  %xtraiter1327 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.bt = icmp ult i32 %i.ba, 4
  %unroll_iter1331 = and i64 %wide.trip.count.i245, 2147483644
  %lcmp.mod1329.not = icmp eq i64 %xtraiter1327, 0
  %lcmp.mod1330 = icmp ne i64 %xtraiter1327, 0
  %min.iters.check1103 = icmp ult i32 %i.ba, 8
  %n.vec1105 = and i64 %wide.trip.count.i245, 2147483640
  %xtraiter1333 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.bu = icmp ult i32 %i.ba, 4
  %unroll_iter1337 = and i64 %wide.trip.count.i245, 2147483644
  %lcmp.mod1335.not = icmp eq i64 %xtraiter1333, 0
  %lcmp.mod1336 = icmp ne i64 %xtraiter1333, 0
  %min.iters.check1089 = icmp ult i32 %i.ba, 8
  %n.vec1091 = and i64 %wide.trip.count.i245, 2147483640
  %xtraiter1339 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.bv = icmp ult i32 %i.ba, 4
  %unroll_iter1343 = and i64 %wide.trip.count.i245, 2147483644
  %lcmp.mod1341.not = icmp eq i64 %xtraiter1339, 0
  %lcmp.mod1342 = icmp ne i64 %xtraiter1339, 0
  %min.iters.check1075 = icmp ult i32 %i.ba, 8
  %n.vec1077 = and i64 %wide.trip.count.i245, 2147483640
  %xtraiter1345 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.bw = icmp ult i32 %i.ba, 4
  %unroll_iter1349 = and i64 %wide.trip.count.i245, 2147483644
  %lcmp.mod1347.not = icmp eq i64 %xtraiter1345, 0
  %lcmp.mod1348 = icmp ne i64 %xtraiter1345, 0
  %min.iters.check1043 = icmp ult i32 %i.ba, 8
  %n.vec1045 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1357 = and i64 %wide.trip.count.i245, 1
  %i.bx = icmp eq i64 %i.bl, 0
  %unroll_iter1361 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1359.not = icmp eq i64 %xtraiter1357, 0
  %lcmp.mod1360 = trunc i32 %i.ba to i1
  %min.iters.check1029 = icmp ult i32 %i.ba, 8
  %n.vec1031 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1363 = and i64 %wide.trip.count.i245, 1
  %i.by = icmp eq i64 %i.bl, 0
  %unroll_iter1367 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1365.not = icmp eq i64 %xtraiter1363, 0
  %lcmp.mod1366 = trunc i32 %i.ba to i1
  %min.iters.check1015 = icmp ult i32 %i.ba, 8
  %n.vec1017 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1369 = and i64 %wide.trip.count.i245, 1
  %i.bz = icmp eq i64 %i.bl, 0
  %unroll_iter1373 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1371.not = icmp eq i64 %xtraiter1369, 0
  %lcmp.mod1372 = trunc i32 %i.ba to i1
  %min.iters.check1001 = icmp ult i32 %i.ba, 8
  %n.vec1003 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1375 = and i64 %wide.trip.count.i245, 1
  %i.ca = icmp eq i64 %i.bl, 0
  %unroll_iter1379 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1377.not = icmp eq i64 %xtraiter1375, 0
  %lcmp.mod1378 = trunc i32 %i.ba to i1
  %min.iters.check987 = icmp ult i32 %i.ba, 8
  %n.vec989 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1381 = and i64 %wide.trip.count.i245, 1
  %i.cb = icmp eq i64 %i.bl, 0
  %unroll_iter1385 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1383.not = icmp eq i64 %xtraiter1381, 0
  %lcmp.mod1384 = trunc i32 %i.ba to i1
  %min.iters.check955 = icmp ult i32 %i.ba, 8
  %invariant.op1487 = sub i64 %i.bf, %i.z
  %n.vec957 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1393 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.cc = icmp ult i32 %i.ba, 4
  %unroll_iter1397 = and i64 %wide.trip.count.i245, 4294967292
  %lcmp.mod1395.not = icmp eq i64 %xtraiter1393, 0
  %lcmp.mod1396 = icmp ne i64 %xtraiter1393, 0
  %min.iters.check941 = icmp ult i32 %i.ba, 8
  %invariant.op1489 = sub i64 %i.be, %i.z
  %n.vec943 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1399 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.cd = icmp ult i32 %i.ba, 4
  %unroll_iter1403 = and i64 %wide.trip.count.i245, 4294967292
  %lcmp.mod1401.not = icmp eq i64 %xtraiter1399, 0
  %lcmp.mod1402 = icmp ne i64 %xtraiter1399, 0
  %min.iters.check927 = icmp ult i32 %i.ba, 8
  %invariant.op1491.a = sub i64 %i.be, %i.z
  %n.vec929 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1405 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.ce = icmp ult i32 %i.ba, 4
  %unroll_iter1409 = and i64 %wide.trip.count.i245, 4294967292
  %lcmp.mod1407.not = icmp eq i64 %xtraiter1405, 0
  %lcmp.mod1408 = icmp ne i64 %xtraiter1405, 0
  %min.iters.check913 = icmp ult i32 %i.ba, 8
  %invariant.op1493 = sub i64 %i.be, %i.z
  %n.vec915 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1411 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.cf = icmp ult i32 %i.ba, 4
  %unroll_iter1415 = and i64 %wide.trip.count.i245, 4294967292
  %lcmp.mod1413.not = icmp eq i64 %xtraiter1411, 0
  %lcmp.mod1414 = icmp ne i64 %xtraiter1411, 0
  %min.iters.check899 = icmp ult i32 %i.ba, 8
  %invariant.op1495 = sub i64 %i.be, %i.z
  %n.vec901 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1417 = and i64 %wide.trip.count.i245, 3 ; 3 uses
  %i.cg = icmp ult i32 %i.ba, 4
  %unroll_iter1421 = and i64 %wide.trip.count.i245, 4294967292
  %lcmp.mod1419.not = icmp eq i64 %xtraiter1417, 0
  %lcmp.mod1420 = icmp ne i64 %xtraiter1417, 0
  %invariant.op1497 = sub i64 %i.be, %i.z
  %min.iters.check867 = icmp ult i32 %i.ba, 8
  %invariant.op1499 = sub i64 %i.bd, %i.ab
  %n.vec869 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1429 = and i64 %wide.trip.count.i245, 1
  %i.ch = icmp eq i64 %i.bl, 0
  %unroll_iter1433 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1431.not = icmp eq i64 %xtraiter1429, 0
  %lcmp.mod1432 = trunc i32 %i.ba to i1
  %min.iters.check853 = icmp ult i32 %i.ba, 8
  %invariant.op1501 = sub i64 %i.bd, %i.ab
  %n.vec855 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1435 = and i64 %wide.trip.count.i245, 1
  %i.ci = icmp eq i64 %i.bl, 0
  %unroll_iter1439 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1437.not = icmp eq i64 %xtraiter1435, 0
  %lcmp.mod1438 = trunc i32 %i.ba to i1
  %min.iters.check839 = icmp ult i32 %i.ba, 8
  %invariant.op1503 = sub i64 %i.bd, %i.ab
  %n.vec841 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1441 = and i64 %wide.trip.count.i245, 1
  %i.cj = icmp eq i64 %i.bl, 0
  %unroll_iter1445 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1443.not = icmp eq i64 %xtraiter1441, 0
  %lcmp.mod1444 = trunc i32 %i.ba to i1
  %min.iters.check825 = icmp ult i32 %i.ba, 8
  %invariant.op1505 = sub i64 %i.bd, %i.ab
  %n.vec827 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1447 = and i64 %wide.trip.count.i245, 1
  %i.ck = icmp eq i64 %i.bl, 0
  %unroll_iter1451 = and i64 %wide.trip.count.i245, 4294967294
  %lcmp.mod1449.not = icmp eq i64 %xtraiter1447, 0
  %lcmp.mod1450 = trunc i32 %i.ba to i1
  %min.iters.check811 = icmp ult i32 %i.ba, 8
  %invariant.op1507 = sub i64 %i.bd, %i.ab
  %n.vec813 = and i64 %wide.trip.count.i245, 4294967288
  %xtraiter1453 = and i64 %wide.trip.count.i245, 1
  %i.cl = icmp eq i64 %i.bl, 0
  %unroll_iter1457 = and i64 %wide.trip.count.i245, 4294967294
end_hunk_0
