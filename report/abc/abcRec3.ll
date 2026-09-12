Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcRec3?download=true
inline.NumInlined: 568
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Lms_ManPrintFuncStats:bb.a

bb.x:                                             ; preds = %.critedge.16
  tail call void @free(ptr noundef nonnull %i.go) #27
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %.critedge.16, %bb.x
  tail call void @free(ptr noundef nonnull %i.l) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.a, %Vec_StrFree.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define void @Lms_ManPrintFreqStats(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16504 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !99
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val79 = load i32, ptr %i.g, align 4, !tbaa !90 ; 2 uses
  %i.h = sitofp i32 %.val79 to double
  %i.i = fmul nnan double %i.h, 1.000000e+02
  %i.j = load i32, ptr %i.b, align 8, !tbaa !99
  %i.k = sitofp i32 %i.j to double
  %i.l = fdiv double %i.i, %i.k
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.val79, double noundef %i.l) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !161  ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val101 = load i32, ptr %i.p, align 4, !tbaa !45
  %i.q = icmp sgt i32 %.val101, 0
  br i1 %i.q, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %i.r = phi ptr [ %i.dg, %bb.m ], [ %i.o, %bb.a ]
  %.sroa.9.0113 = phi i32 [ %.sroa.9.1, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.6.0112 = phi i32 [ %.sroa.6.1, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0111 = phi i32 [ %.sroa.0.1, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.927.0110 = phi i32 [ %.sroa.927.1, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.625.0109 = phi i32 [ %.sroa.625.1, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.023.0108 = phi i32 [ %.sroa.023.1, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.935.0107 = phi i32 [ %.sroa.935.196, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.633.0106 = phi i32 [ %.sroa.633.194, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.031.0105 = phi i32 [ %.sroa.031.192, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.943.0104 = phi i32 [ %.sroa.943.190, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.641.0103 = phi i32 [ %.sroa.641.188, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.sroa.039.0102 = phi i32 [ %.sroa.039.186, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val71 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val71, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51   ; 6 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !73   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ab = lshr i32 %i.aa, %i.z
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !92
  %i.af = load i32, ptr %i.v, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !71
  %i.ai = and i32 %i.ah, %i.aa
  %i.aj = mul nsw i32 %i.ai, %i.af
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ak ; 6 uses
  %i.am = load i32, ptr %0, align 8, !tbaa !63    ; 10 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %Abc_TtSupportSize.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ao = icmp samesign ult i32 %i.am, 7
  %i.ap = add nsw i32 %i.am, -6                   ; 2 uses
  %i.aq = shl nuw i32 1, %i.ap                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %.idx.i.i = shl nsw i64 %i.ar, 3
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %.idx.i.i
  %smax56.i.i = call i32 @llvm.smax.i32(i32 %i.aq, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.ao, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.at = load i64, ptr %i.al, align 8, !tbaa !42 ; 12 uses
  %i.au = lshr i64 %i.at, 1
  %i.av = xor i64 %i.au, %i.at
  %.fr = freeze i64 %i.av
  %i.aw = and i64 %.fr, 6148914691236517205
  %.not17.us.i = icmp ne i64 %i.aw, 0
  %i.ax = zext i1 %.not17.us.i to i32             ; 2 uses
  %exitcond55.not.i = icmp eq i32 %i.am, 1
  br i1 %exitcond55.not.i, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %.lr.ph.split.us.i
  %i.ay = lshr i64 %i.at, 2
  %i.az = xor i64 %i.ay, %i.at
  %.fr141 = freeze i64 %i.az
  %i.ba = and i64 %.fr141, 3689348814741910323
  %.not17.us.i.1 = icmp ne i64 %i.ba, 0
  %i.bb = zext i1 %.not17.us.i.1 to i32
  %spec.select.i.1 = add nuw nsw i32 %i.ax, %i.bb ; 2 uses
  %exitcond55.not.i.1 = icmp eq i32 %i.am, 2
  br i1 %exitcond55.not.i.1, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.bc = lshr i64 %i.at, 4
  %i.bd = xor i64 %i.bc, %i.at
  %.fr142 = freeze i64 %i.bd
  %i.be = and i64 %.fr142, 1085102592571150095
  %.not17.us.i.2 = icmp ne i64 %i.be, 0
  %i.bf = zext i1 %.not17.us.i.2 to i32
  %spec.select.i.2 = add nuw nsw i32 %spec.select.i.1, %i.bf ; 2 uses
  %exitcond55.not.i.2 = icmp eq i32 %i.am, 3
  br i1 %exitcond55.not.i.2, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.bg = lshr i64 %i.at, 8
  %i.bh = xor i64 %i.bg, %i.at
  %.fr143 = freeze i64 %i.bh
  %i.bi = and i64 %.fr143, 71777214294589695
  %.not17.us.i.3 = icmp ne i64 %i.bi, 0
  %i.bj = zext i1 %.not17.us.i.3 to i32
  %spec.select.i.3 = add nuw nsw i32 %spec.select.i.2, %i.bj ; 2 uses
  %exitcond55.not.i.3 = icmp eq i32 %i.am, 4
  br i1 %exitcond55.not.i.3, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.bk = lshr i64 %i.at, 16
  %i.bl = xor i64 %i.bk, %i.at
  %.fr144 = freeze i64 %i.bl
  %i.bm = and i64 %.fr144, 281470681808895
  %.not17.us.i.4 = icmp ne i64 %i.bm, 0
  %i.bn = zext i1 %.not17.us.i.4 to i32
  %spec.select.i.4 = add nuw nsw i32 %spec.select.i.3, %i.bn ; 2 uses
  %exitcond55.not.i.4 = icmp eq i32 %i.am, 5
  br i1 %exitcond55.not.i.4, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.bo = lshr i64 %i.at, 32
  %.masked = and i64 %i.at, 4294967295
  %i.bp = xor i64 %i.bo, %.masked
  %.fr.us.i.5 = freeze i64 %i.bp
  %.not17.us.i.5 = icmp ne i64 %.fr.us.i.5, 0
  %i.bq = zext i1 %.not17.us.i.5 to i32
  %spec.select.i.5 = add nuw nsw i32 %spec.select.i.4, %i.bq
  br label %Abc_TtSupportSize.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.not48.i.i = icmp eq i32 %i.ap, 31
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.preheader.i

.lr.ph.split.split.split.preheader.i:             ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %i.am to i64
  br label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.split.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %indvars.iv.next.i, %Abc_TtHasVar.exit.thread.i ] ; 5 uses
  %.022.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %i.co, %Abc_TtHasVar.exit.thread.i ] ; 4 uses
  %i.br = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.br, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.split.split.i
  %i.bs = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bt = shl nuw nsw i32 1, %i.bs
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !42
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.c, !llvm.loop !2

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.b ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv53.i.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !42 ; 2 uses
  %i.bz = lshr i64 %i.by, %i.bu
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = and i64 %i.ca, %i.bw
  %.not39.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not39.i.i, label %bb.b, label %Abc_TtHasVar.exit.thread13.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.cc = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 31
  %i.ce = trunc nsw i64 %i.cc to i32              ; 2 uses
  %i.cf = shl i32 2, %i.ce
  %i.cg = sext i32 %i.cf to i64
  br i1 %i.cd, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.ch = shl nuw i32 1, %i.ce                    ; 2 uses
  %1 = sext i32 %i.ch to i64
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.cl, %._crit_edge.us.i.i ], [ %i.al, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %1
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.e, !llvm.loop !3

bb.e:                                             ; preds = %bb.d, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !42
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.ck = load i64, ptr %gep.i.i, align 8, !tbaa !42
  %.not.us.i.i = icmp eq i64 %i.cj, %i.ck
  br i1 %.not.us.i.i, label %bb.d, label %Abc_TtHasVar.exit.thread13.i

._crit_edge.us.i.i:                               ; preds = %bb.d
  %i.cl = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.cg ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %i.as
  br i1 %i.cm, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !4

Abc_TtHasVar.exit.thread13.i:                     ; preds = %bb.c, %bb.e
  %i.cn = add nsw i32 %.022.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.b, %Abc_TtHasVar.exit.thread13.i, %.preheader.lr.ph.i.i
  %i.co = phi i32 [ %i.cn, %Abc_TtHasVar.exit.thread13.i ], [ %.022.i, %bb.b ], [ %.022.i, %.preheader.lr.ph.i.i ], [ %.022.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i, !llvm.loop !5

Abc_TtSupportSize.exit:                           ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.us.i, %Abc_TtHasVar.exit.us.i.1, %Abc_TtHasVar.exit.us.i.2, %Abc_TtHasVar.exit.us.i.3, %Abc_TtHasVar.exit.us.i.4, %Abc_TtHasVar.exit.us.i.5, %.lr.ph, %.lr.ph.split.i
  %.0.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %spec.select.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ 0, %.lr.ph.split.i ], [ %i.ax, %.lr.ph.split.us.i ], [ %spec.select.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %spec.select.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %spec.select.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %spec.select.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %i.co, %Abc_TtHasVar.exit.thread.i ]
  %i.cp = call i32 @Dau_DsdDecompose(ptr noundef %i.al, i32 noundef %i.am, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #27 ; 3 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.i, label %bb.f

bb.f:                                             ; preds = %Abc_TtSupportSize.exit
  %i.cr = icmp slt i32 %i.cp, %.0.lcssa.i
  br i1 %i.cr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cs = add nsw i32 %.sroa.641.0103, 1
  %i.ct = add nsw i32 %i.u, %.sroa.633.0106
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cu = add nsw i32 %.sroa.943.0104, 1
  %i.cv = add nsw i32 %i.u, %.sroa.935.0107
  br label %bb.j

bb.i:                                             ; preds = %Abc_TtSupportSize.exit
  %i.cw = add nsw i32 %.sroa.039.0102, 1
  %i.cx = add nsw i32 %i.u, %.sroa.031.0105
  %i.cy = add nsw i32 %.sroa.023.0108, 1
  %i.cz = add nsw i32 %i.u, %.sroa.0.0111
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.h
  %.sroa.641.1.ph = phi i32 [ %.sroa.641.0103, %bb.h ], [ %i.cs, %bb.g ] ; 2 uses
  %.sroa.943.1.ph = phi i32 [ %i.cu, %bb.h ], [ %.sroa.943.0104, %bb.g ] ; 2 uses
  %.sroa.633.1.ph = phi i32 [ %.sroa.633.0106, %bb.h ], [ %i.ct, %bb.g ] ; 2 uses
  %.sroa.935.1.ph = phi i32 [ %i.cv, %bb.h ], [ %.sroa.935.0107, %bb.g ] ; 2 uses
  %i.da = call i32 @Dau_DsdCheck1Step(ptr noundef null, ptr noundef %i.al, i32 noundef %i.cp, ptr noundef null) #27
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = add nsw i32 %.sroa.625.0109, 1
  %i.dd = add nsw i32 %i.u, %.sroa.6.0112
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.de = add nsw i32 %.sroa.927.0110, 1
  %i.df = add nsw i32 %i.u, %.sroa.9.0113
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.sroa.935.196 = phi i32 [ %.sroa.935.0107, %bb.i ], [ %.sroa.935.1.ph, %bb.k ], [ %.sroa.935.1.ph, %bb.l ] ; 2 uses
  %.sroa.633.194 = phi i32 [ %.sroa.633.0106, %bb.i ], [ %.sroa.633.1.ph, %bb.k ], [ %.sroa.633.1.ph, %bb.l ] ; 2 uses
  %.sroa.031.192 = phi i32 [ %i.cx, %bb.i ], [ %.sroa.031.0105, %bb.k ], [ %.sroa.031.0105, %bb.l ] ; 2 uses
  %.sroa.943.190 = phi i32 [ %.sroa.943.0104, %bb.i ], [ %.sroa.943.1.ph, %bb.k ], [ %.sroa.943.1.ph, %bb.l ] ; 2 uses
  %.sroa.641.188 = phi i32 [ %.sroa.641.0103, %bb.i ], [ %.sroa.641.1.ph, %bb.k ], [ %.sroa.641.1.ph, %bb.l ] ; 2 uses
  %.sroa.039.186 = phi i32 [ %i.cw, %bb.i ], [ %.sroa.039.0102, %bb.k ], [ %.sroa.039.0102, %bb.l ] ; 2 uses
  %.sroa.023.1 = phi i32 [ %i.cy, %bb.i ], [ %.sroa.023.0108, %bb.k ], [ %.sroa.023.0108, %bb.l ] ; 2 uses
  %.sroa.625.1 = phi i32 [ %.sroa.625.0109, %bb.i ], [ %i.dc, %bb.k ], [ %.sroa.625.0109, %bb.l ] ; 2 uses
  %.sroa.927.1 = phi i32 [ %.sroa.927.0110, %bb.i ], [ %.sroa.927.0110, %bb.k ], [ %i.de, %bb.l ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %i.cz, %bb.i ], [ %.sroa.0.0111, %bb.k ], [ %.sroa.0.0111, %bb.l ] ; 2 uses
  %.sroa.6.1 = phi i32 [ %.sroa.6.0112, %bb.i ], [ %i.dd, %bb.k ], [ %.sroa.6.0112, %bb.l ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.0113, %bb.i ], [ %.sroa.9.0113, %bb.k ], [ %i.df, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !161 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %.val = load i32, ptr %i.dh, align 4, !tbaa !45
  %i.di = sext i32 %.val to i64
  %i.dj = icmp slt i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !160

.critedge.loopexit:                               ; preds = %bb.m
  %i.dk = sitofp i32 %.sroa.039.186 to double
  %i.dl = fmul nnan double %i.dk, 1.000000e+02
  %i.dm = sitofp i32 %.sroa.641.188 to double
  %i.dn = fmul nnan double %i.dm, 1.000000e+02
  %i.do = sitofp i32 %.sroa.943.190 to double
  %i.dp = fmul nnan double %i.do, 1.000000e+02
  %i.dq = sitofp i32 %.sroa.031.192 to double
  %i.dr = fmul nnan double %i.dq, 1.000000e+02
  %i.ds = sitofp i32 %.sroa.633.194 to double
  %i.dt = fmul nnan double %i.ds, 1.000000e+02
  %i.du = sitofp i32 %.sroa.935.196 to double
  %i.dv = fmul nnan double %i.du, 1.000000e+02
  %i.dw = sitofp i32 %.sroa.023.1 to double
  %i.dx = fmul nnan double %i.dw, 1.000000e+02
  %i.dy = sitofp i32 %.sroa.625.1 to double
  %i.dz = fmul nnan double %i.dy, 1.000000e+02
  %i.ea = sitofp i32 %.sroa.927.1 to double
  %i.eb = fmul nnan double %i.ea, 1.000000e+02
  %i.ec = sitofp i32 %.sroa.0.1 to double
  %i.ed = fmul nnan double %i.ec, 1.000000e+02
  %i.ee = sitofp i32 %.sroa.6.1 to double
  %i.ef = fmul nnan double %i.ee, 1.000000e+02
  %i.eg = sitofp i32 %.sroa.9.1 to double
  %i.eh = fmul nnan double %i.eg, 1.000000e+02
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.sroa.039.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dl, %.critedge.loopexit ]
  %.sroa.641.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dn, %.critedge.loopexit ]
  %.sroa.943.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dp, %.critedge.loopexit ]
  %.sroa.031.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dr, %.critedge.loopexit ]
  %.sroa.633.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dt, %.critedge.loopexit ]
  %.sroa.935.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dv, %.critedge.loopexit ]
  %.sroa.023.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dx, %.critedge.loopexit ]
  %.sroa.625.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dz, %.critedge.loopexit ]
  %.sroa.927.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.eb, %.critedge.loopexit ]
  %.sroa.0.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ed, %.critedge.loopexit ]
  %.sroa.6.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ef, %.critedge.loopexit ]
  %.sroa.9.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.eh, %.critedge.loopexit ]
  %i.ei = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  %.val77 = load i32, ptr %i.ek, align 4, !tbaa !90
  %i.el = sitofp i32 %.val77 to double
  %i.em = fdiv double %.sroa.039.0.lcssa, %i.el
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.em) ; 0 uses
  %i.eo = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %.val76 = load i32, ptr %i.ep, align 4, !tbaa !90
  %i.eq = sitofp i32 %.val76 to double
  %i.er = fdiv double %.sroa.641.0.lcssa, %i.eq
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.er) ; 0 uses
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.eu = getelementptr i8, ptr %i.et, i64 4
  %.val75 = load i32, ptr %i.eu, align 4, !tbaa !90
  %i.ev = sitofp i32 %.val75 to double
  %i.ew = fdiv double %.sroa.943.0.lcssa, %i.ev
  %i.ex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.ew) ; 0 uses
  %i.ey = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12) ; 0 uses
  %i.fa = load i32, ptr %i.b, align 8, !tbaa !99
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = fdiv double %.sroa.031.0.lcssa, %i.fb
  %i.fd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.fc) ; 0 uses
  %i.fe = load i32, ptr %i.b, align 8, !tbaa !99
  %i.ff = sitofp i32 %i.fe to double
  %i.fg = fdiv double %.sroa.633.0.lcssa, %i.ff
  %i.fh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.fg) ; 0 uses
  %i.fi = load i32, ptr %i.b, align 8, !tbaa !99
  %i.fj = sitofp i32 %i.fi to double
  %i.fk = fdiv double %.sroa.935.0.lcssa, %i.fj
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.fk) ; 0 uses
  %putchar69 = call i32 @putchar(i32 10)          ; 0 uses
  %i.fm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %.val74 = load i32, ptr %i.fo, align 4, !tbaa !90
  %i.fp = sitofp i32 %.val74 to double
  %i.fq = fdiv double %.sroa.023.0.lcssa, %i.fp
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.fq) ; 0 uses
  %i.fs = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ft = getelementptr i8, ptr %i.fs, i64 4
  %.val73 = load i32, ptr %i.ft, align 4, !tbaa !90
  %i.fu = sitofp i32 %.val73 to double
  %i.fv = fdiv double %.sroa.625.0.lcssa, %i.fu
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.fv) ; 0 uses
  %i.fx = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.fy = getelementptr i8, ptr %i.fx, i64 4
  %.val72 = load i32, ptr %i.fy, align 4, !tbaa !90
  %i.fz = sitofp i32 %.val72 to double
  %i.ga = fdiv double %.sroa.927.0.lcssa, %i.fz
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.ga) ; 0 uses
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12) ; 0 uses
  %i.ge = load i32, ptr %i.b, align 8, !tbaa !99
  %i.gf = sitofp i32 %i.ge to double
end_hunk_0
begin_hunk_1_@If_CutFindBestStruct:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load253 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !42
  %wide.load254 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index252 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x i64> %wide.load253, ptr %i.bd, align 8, !tbaa !42
  store <2 x i64> %wide.load254, ptr %i.be, align 8, !tbaa !42
  %index.next255 = add nuw i64 %index252, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next255, %n.vec250
  br i1 %i.bf, label %middle.block256, label %vector.body251, !llvm.loop !217

middle.block256:                                  ; preds = %vector.body251
  %cmp.n257 = icmp eq i64 %n.vec250, %wide.trip.count24.i.i
  br i1 %cmp.n257, label %If_CutTruthW.exit, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i, %middle.block256
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec250, %middle.block256 ] ; 3 uses
  %xtraiter332 = and i64 %wide.trip.count24.i.i, 3 ; 2 uses
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter334 = phi i64 [ %prol.iter334.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv21.i.i.prol
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv21.i.i.prol
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !42
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter334.next = add i64 %prol.iter334, 1   ; 2 uses
  %prol.iter334.cmp.not = icmp eq i64 %prol.iter334.next, %xtraiter332
  br i1 %prol.iter334.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !218

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.bj = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count24.i.i
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %If_CutTruthW.exit, label %.lr.ph18.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !42
  %i.bn = xor i64 %i.bm, -1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.i
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !42
  %i.br = xor i64 %i.bq, -1
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !42
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.1
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !42
  %i.bv = xor i64 %i.bu, -1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !42
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.2
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !42
  %i.bz = xor i64 %i.by, -1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !42
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph.i.i, !llvm.loop !219

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv21.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !42
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv21.i.i
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !42
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next22.i.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !42
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !42
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next22.i.i.1
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i.1
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !42
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next22.i.i.2
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i.2
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !42
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph18.i.i, !llvm.loop !220

If_CutTruthW.exit:                                ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %middle.block256, %.preheader14.i.i, %.preheader.i.i
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %Abc_TtSupport.exit.thread.thread, label %.lr.ph.i

Abc_TtSupport.exit.thread.thread:                 ; preds = %If_CutTruthW.exit
  %i.cn = load i64, ptr %i.b, align 4
  %i.co = and i64 %i.cn, -4096
  %i.cp = or disjoint i64 %i.co, 1
  store i64 %i.cp, ptr %i.b, align 4
  br label %.loopexit

.lr.ph.i:                                         ; preds = %If_CutTruthW.exit
  %i.cq = icmp ult i32 %i.c, 117440512
  %i.cr = add nsw i32 %i.d, -6                    ; 2 uses
  %i.cs = shl nuw i32 1, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %.idx.i.i = shl nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.cq, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cv = load i64, ptr %i.k, align 8, !tbaa !42  ; 6 uses
  %wide.trip.count55.i = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count55.i, 1
  %i.cw = icmp eq i32 %i.d, 1
  br i1 %i.cw, label %Abc_TtHasVar.exit.us.i.epil.preheader, label %.lr.ph.split.us.i.new

.lr.ph.split.us.i.new:                            ; preds = %.lr.ph.split.us.i
  %unroll_iter = and i64 %wide.trip.count55.i, 6
  br label %Abc_TtHasVar.exit.us.i

Abc_TtHasVar.exit.us.i:                           ; preds = %Abc_TtHasVar.exit.us.i, %.lr.ph.split.us.i.new
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %indvars.iv.next53.i.1, %Abc_TtHasVar.exit.us.i ] ; 4 uses
  %.023.us.i = phi i32 [ 0, %.lr.ph.split.us.i.new ], [ %spec.select.i.1, %Abc_TtHasVar.exit.us.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %niter.next.1, %Abc_TtHasVar.exit.us.i ]
  %i.cx = trunc nuw nsw i64 %indvars.iv52.i to i32
  %i.cy = shl nuw i32 1, %i.cx                    ; 2 uses
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = lshr i64 %i.cv, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv52.i
  %i.dc = load i64, ptr %i.db, align 16, !tbaa !42
  %i.dd = xor i64 %i.da, %i.cv
  %i.de = and i64 %i.dd, %i.dc
  %.fr.us.i = freeze i64 %i.de
  %.not18.us.i = icmp eq i64 %.fr.us.i, 0
  %i.df = select i1 %.not18.us.i, i32 0, i32 %i.cy
  %spec.select.i = or i32 %i.df, %.023.us.i
  %indvars.iv.next53.i = or disjoint i64 %indvars.iv52.i, 1 ; 2 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %i.dh = shl nuw i32 1, %i.dg                    ; 2 uses
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = lshr i64 %i.cv, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next53.i
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !42
  %i.dm = xor i64 %i.dj, %i.cv
  %i.dn = and i64 %i.dm, %i.dl
  %.fr.us.i.1 = freeze i64 %i.dn
  %.not18.us.i.1 = icmp eq i64 %.fr.us.i.1, 0
  %i.do = select i1 %.not18.us.i.1, i32 0, i32 %i.dh
  %spec.select.i.1 = or i32 %i.do, %spec.select.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSupport.exit.thread225.unr-lcssa, label %Abc_TtHasVar.exit.us.i, !llvm.loop !7

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.not48.i.i = icmp eq i32 %i.cr, 31
  br i1 %.not48.i.i, label %.lr.ph181.preheader, label %.lr.ph.split.split.split.preheader.i

.lr.ph.split.split.split.preheader.i:             ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.split.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %indvars.iv.next.i, %Abc_TtHasVar.exit.thread.i ] ; 6 uses
  %.023.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %i.em, %Abc_TtHasVar.exit.thread.i ] ; 4 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.dp, label %.lr.ph.i.i111, label %.preheader.lr.ph.i.i

.lr.ph.i.i111:                                    ; preds = %.lr.ph.split.split.split.i
  %i.dq = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dr = shl nuw nsw i32 1, %i.dq                ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i111
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i111 ], [ %indvars.iv.next54.i.i, %bb.c ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv53.i.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !42 ; 2 uses
  %i.dx = lshr i64 %i.dw, %i.ds
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = and i64 %i.dy, %i.du
  %.not39.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not39.i.i, label %bb.c, label %Abc_TtHasVar.exit.thread14.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.ea = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 31
  %i.ec = trunc nsw i64 %i.ea to i32              ; 2 uses
  %i.ed = shl i32 2, %i.ec
  %i.ee = sext i32 %i.ed to i64
  br i1 %i.eb, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.ef = shl nuw i32 1, %i.ec                    ; 2 uses
  %7 = sext i32 %i.ef to i64
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 1)
  %wide.trip.count.i.i107 = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.ej, %._crit_edge.us.i.i ], [ %i.k, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %7
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i.i109 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %exitcond.not.i.i110 = icmp eq i64 %indvars.iv.next.i.i109, %wide.trip.count.i.i107
  br i1 %exitcond.not.i.i110, label %._crit_edge.us.i.i, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %bb.e, %.preheader.us.i.i
  %indvars.iv.i.i108 = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i109, %bb.e ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i108
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !42
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i108
  %i.ei = load i64, ptr %gep.i.i, align 8, !tbaa !42
  %.not.us.i.i = icmp eq i64 %i.eh, %i.ei
  br i1 %.not.us.i.i, label %bb.e, label %Abc_TtHasVar.exit.thread14.loopexit.i

._crit_edge.us.i.i:                               ; preds = %bb.e
  %i.ej = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.ee ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.cu
  br i1 %i.ek, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !4

Abc_TtHasVar.exit.thread14.loopexit.i:            ; preds = %bb.f
  %.pre.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %.pre59.i = shl nuw i32 1, %.pre.i
  br label %Abc_TtHasVar.exit.thread14.i

Abc_TtHasVar.exit.thread14.i:                     ; preds = %bb.d, %Abc_TtHasVar.exit.thread14.loopexit.i
  %.pre-phi60.i = phi i32 [ %.pre59.i, %Abc_TtHasVar.exit.thread14.loopexit.i ], [ %i.dr, %bb.d ]
  %i.el = or i32 %.pre-phi60.i, %.023.i
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.c, %Abc_TtHasVar.exit.thread14.i, %.preheader.lr.ph.i.i
  %i.em = phi i32 [ %i.el, %Abc_TtHasVar.exit.thread14.i ], [ %.023.i, %bb.c ], [ %.023.i, %.preheader.lr.ph.i.i ], [ %.023.i, %._crit_edge.us.i.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtSupport.exit, label %.lr.ph.split.split.split.i, !llvm.loop !7

Abc_TtSupport.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.lr.ph181.preheader, label %bb.g

Abc_TtSupport.exit.thread225.unr-lcssa:           ; preds = %Abc_TtHasVar.exit.us.i
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %Abc_TtSupport.exit.thread225, label %Abc_TtHasVar.exit.us.i.epil.preheader

Abc_TtHasVar.exit.us.i.epil.preheader:            ; preds = %Abc_TtSupport.exit.thread225.unr-lcssa, %.lr.ph.split.us.i
  %indvars.iv52.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i ], [ %indvars.iv.next53.i.1, %Abc_TtSupport.exit.thread225.unr-lcssa ] ; 2 uses
  %.023.us.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.1, %Abc_TtSupport.exit.thread225.unr-lcssa ]
  %lcmp.mod338 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.eo = trunc nuw nsw i64 %indvars.iv52.i.epil.init to i32
  %i.ep = shl nuw i32 1, %i.eo                    ; 2 uses
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 %i.cv, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv52.i.epil.init
  %i.et = load i64, ptr %i.es, align 8, !tbaa !42
  %i.eu = xor i64 %i.er, %i.cv
  %i.ev = and i64 %i.eu, %i.et
  %.fr.us.i.epil = freeze i64 %i.ev
  %.not18.us.i.epil = icmp eq i64 %.fr.us.i.epil, 0
  %i.ew = select i1 %.not18.us.i.epil, i32 0, i32 %i.ep
  %spec.select.i.epil = or i32 %i.ew, %.023.us.i.epil.init
  br label %Abc_TtSupport.exit.thread225

Abc_TtSupport.exit.thread225:                     ; preds = %Abc_TtSupport.exit.thread225.unr-lcssa, %Abc_TtHasVar.exit.us.i.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %Abc_TtSupport.exit.thread225.unr-lcssa ], [ %spec.select.i.epil, %Abc_TtHasVar.exit.us.i.epil.preheader ] ; 2 uses
  %i.ex = icmp eq i32 %spec.select.i.lcssa, 0
  br i1 %i.ex, label %.lr.ph181.preheader, label %bb.g

.lr.ph181.preheader:                              ; preds = %.lr.ph.split.i, %Abc_TtSupport.exit.thread225, %Abc_TtSupport.exit
  %storemerge.in.in = load i64, ptr %i.b, align 4
  %storemerge.in = and i64 %storemerge.in.in, -4096
  %storemerge = or disjoint i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.b, align 4
  %i.ey = zext nneg i32 %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 120, i64 %i.ey, i1 false), !tbaa !56
  br label %.loopexit

bb.g:                                             ; preds = %Abc_TtSupport.exit.thread225, %Abc_TtSupport.exit
  %.0.lcssa.i227 = phi i32 [ %spec.select.i.lcssa, %Abc_TtSupport.exit.thread225 ], [ %i.em, %Abc_TtSupport.exit ] ; 4 uses
  %i.ez = add nsw i32 %.0.lcssa.i227, 1
  %i.fa = and i32 %i.ez, %.0.lcssa.i227
  %i.fb = icmp ne i32 %i.fa, 0
  %i.fc = icmp eq i32 %.0.lcssa.i227, 1
  %or.cond = or i1 %i.fc, %i.fb
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fd = load i64, ptr %i.b, align 4
  %i.fe = and i64 %i.fd, -4096
  %i.ff = or disjoint i64 %i.fe, 1
  store i64 %i.ff, ptr %i.b, align 4
  %i.fg = lshr i64 %.val105, 24
  %i.fh = and i64 %i.fg, 255
  %umax198 = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 120, i64 %umax198, i1 false), !tbaa !56
  %i.fi = tail call fastcc i32 @Abc_TtSuppFindFirst(i32 noundef %.0.lcssa.i227)
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fj
  store i8 0, ptr %i.fk, align 1, !tbaa !56
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fj
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !51
  %i.fn = getelementptr i8, ptr %0, i64 40
  %.val106 = load ptr, ptr %i.fn, align 8, !tbaa !124
  %i.fo = getelementptr i8, ptr %.val106, i64 8
  %.val106.val = load ptr, ptr %i.fo, align 8, !tbaa !85
  %i.fp = sext i32 %i.fm to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %.val106.val, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !125
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 92
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !236
  %i.fu = fptosi float %i.ft to i32
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.fv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %Abc_Clock.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fx = load i64, ptr %6, align 8, !tbaa !59
  %.neg159 = mul i64 %i.fx, -1000000
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !60
  %.neg = sdiv i64 %i.fz, -1000
  %.neg160 = add i64 %.neg, %.neg159
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.i, %bb.j
  %.0.i.neg = phi i64 [ %.neg160, %bb.j ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 17 uses
  %i.gb = load ptr, ptr %i.j, align 8, !tbaa !120 ; 14 uses
  %i.gc = ptrtoaddr ptr %i.gb to i64              ; 2 uses
  %i.gd = load i64, ptr %i.b, align 4
  %i.ge = lshr i64 %i.gd, 24
  %i.gf = and i64 %i.ge, 255                      ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !121 ; 5 uses
  %.not.i.i112 = icmp eq ptr %i.gh, null
  %.val.pre.i114 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !123 ; 2 uses
  br i1 %.not.i.i112, label %If_CutTruthWR.exit.i115, label %bb.k

bb.k:                                             ; preds = %Abc_Clock.exit
  %i.gi = ashr i32 %.val.pre.i114, 1              ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !91
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !70
  %i.gn = ashr i32 %i.gi, %i.gm
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !92
  %i.gr = load i32, ptr %i.gh, align 8, !tbaa !69
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !71
  %i.gu = and i32 %i.gt, %i.gi
  %i.gv = mul nsw i32 %i.gu, %i.gr
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gw
  br label %If_CutTruthWR.exit.i115

If_CutTruthWR.exit.i115:                          ; preds = %bb.k, %Abc_Clock.exit
  %i.gy = phi ptr [ %i.gx, %bb.k ], [ null, %Abc_Clock.exit ] ; 13 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64              ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gf
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !51 ; 5 uses
  %i.hc = and i32 %.val.pre.i114, 1
  %.not.i7.i116 = icmp eq i32 %i.hc, 0
  %i.hd = icmp sgt i32 %i.hb, 0                   ; 2 uses
  br i1 %.not.i7.i116, label %.preheader.i.i124, label %.preheader14.i.i117

.preheader14.i.i117:                              ; preds = %If_CutTruthWR.exit.i115
  br i1 %i.hd, label %.lr.ph.preheader.i.i118, label %If_CutTruthW.exit131

.lr.ph.preheader.i.i118:                          ; preds = %.preheader14.i.i117
  %wide.trip.count.i.i119 = zext nneg i32 %i.hb to i64 ; 5 uses
  %min.iters.check262 = icmp ult i32 %i.hb, 6
  %i.he = sub i64 %i.gz, %i.gc
  %diff.check260 = icmp ugt i64 %i.he, -32
  %or.cond318 = select i1 %min.iters.check262, i1 true, i1 %diff.check260
  br i1 %or.cond318, label %.lr.ph.i.i120.preheader, label %vector.ph263

vector.ph263:                                     ; preds = %.lr.ph.preheader.i.i118
  %n.vec264 = and i64 %wide.trip.count.i.i119, 2147483644 ; 3 uses
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next269, %vector.body265 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %index266 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load267 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !42
  %wide.load268 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !42
  %i.hh = xor <2 x i64> %wide.load267, splat (i64 -1)
end_hunk_1
begin_hunk_2_@Abc_RecToHop3:bb.a
vector.ph166:                                     ; preds = %.lr.ph18.preheader.i.i
  %n.vec167 = and i64 %wide.trip.count24.i.i, 2147483644 ; 3 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next172, %vector.body168 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index169 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load170 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !42
  %wide.load171 = load <2 x i64>, ptr %i.be, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index169 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x i64> %wide.load170, ptr %i.bf, align 8, !tbaa !42
  store <2 x i64> %wide.load171, ptr %i.bg, align 8, !tbaa !42
  %index.next172 = add nuw i64 %index169, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.bh, label %middle.block173, label %vector.body168, !llvm.loop !239

middle.block173:                                  ; preds = %vector.body168
  %cmp.n174 = icmp eq i64 %n.vec167, %wide.trip.count24.i.i
  br i1 %cmp.n174, label %If_CutTruthW.exit, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i, %middle.block173
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec167, %middle.block173 ] ; 3 uses
  %xtraiter181 = and i64 %wide.trip.count24.i.i, 3 ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter183 = phi i64 [ %prol.iter183.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv21.i.i.prol
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv21.i.i.prol
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !42
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !240

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.bl = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count24.i.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %If_CutTruthW.exit, label %.lr.ph18.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !42
  %i.bp = xor i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !42
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !42
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.1
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !42
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !42
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.2
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !42
  %i.cb = xor i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !42
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph.i.i, !llvm.loop !241

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv21.i.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv21.i.i
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !42
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next22.i.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !42
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !42
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next22.i.i.1
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i.1
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !42
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next22.i.i.2
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i.2
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !42
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph18.i.i, !llvm.loop !242

If_CutTruthW.exit:                                ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %middle.block173, %.preheader14.i.i, %.preheader.i.i
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %Abc_TtSupport.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %If_CutTruthW.exit
  %i.cp = icmp ult i32 %i.h, 117440512
  %i.cq = add nsw i32 %i.i, -6                    ; 2 uses
  %i.cr = shl nuw i32 1, %i.cq                    ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %.idx.i.i = shl nsw i64 %i.cs, 3
  %i.ct = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.cp, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cu = load i64, ptr %i.k, align 8, !tbaa !42  ; 6 uses
  %wide.trip.count55.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter184 = and i64 %wide.trip.count55.i, 1
  %i.cv = icmp eq i32 %i.i, 1
  br i1 %i.cv, label %Abc_TtHasVar.exit.us.i.epil.preheader, label %.lr.ph.split.us.i.new

.lr.ph.split.us.i.new:                            ; preds = %.lr.ph.split.us.i
  %unroll_iter = and i64 %wide.trip.count55.i, 6
  br label %Abc_TtHasVar.exit.us.i

Abc_TtHasVar.exit.us.i:                           ; preds = %Abc_TtHasVar.exit.us.i, %.lr.ph.split.us.i.new
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %indvars.iv.next53.i.1, %Abc_TtHasVar.exit.us.i ] ; 4 uses
  %.023.us.i = phi i32 [ 0, %.lr.ph.split.us.i.new ], [ %spec.select.i.1, %Abc_TtHasVar.exit.us.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %niter.next.1, %Abc_TtHasVar.exit.us.i ]
  %i.cw = trunc nuw nsw i64 %indvars.iv52.i to i32
  %i.cx = shl nuw i32 1, %i.cw                    ; 2 uses
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = lshr i64 %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv52.i
  %i.db = load i64, ptr %i.da, align 16, !tbaa !42
  %i.dc = xor i64 %i.cz, %i.cu
  %i.dd = and i64 %i.dc, %i.db
  %.fr.us.i = freeze i64 %i.dd
  %.not18.us.i = icmp eq i64 %.fr.us.i, 0
  %i.de = select i1 %.not18.us.i, i32 0, i32 %i.cx
  %spec.select.i = or i32 %i.de, %.023.us.i
  %indvars.iv.next53.i = or disjoint i64 %indvars.iv52.i, 1 ; 2 uses
  %i.df = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %i.dg = shl nuw i32 1, %i.df                    ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = lshr i64 %i.cu, %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next53.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !42
  %i.dl = xor i64 %i.di, %i.cu
  %i.dm = and i64 %i.dl, %i.dk
  %.fr.us.i.1 = freeze i64 %i.dm
  %.not18.us.i.1 = icmp eq i64 %.fr.us.i.1, 0
  %i.dn = select i1 %.not18.us.i.1, i32 0, i32 %i.dg
  %spec.select.i.1 = or i32 %i.dn, %spec.select.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSupport.exit.loopexit.unr-lcssa, label %Abc_TtHasVar.exit.us.i, !llvm.loop !7

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.not48.i.i = icmp eq i32 %i.cq, 31
  br i1 %.not48.i.i, label %Abc_TtSupport.exit.thread, label %.lr.ph.split.split.split.preheader.i

.lr.ph.split.split.split.preheader.i:             ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.split.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %indvars.iv.next.i, %Abc_TtHasVar.exit.thread.i ] ; 6 uses
  %.023.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %i.el, %Abc_TtHasVar.exit.thread.i ] ; 4 uses
  %i.do = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.do, label %.lr.ph.i.i107, label %.preheader.lr.ph.i.i

.lr.ph.i.i107:                                    ; preds = %.lr.ph.split.split.split.i
  %i.dp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dq = shl nuw nsw i32 1, %i.dp                ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i107
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i107 ], [ %indvars.iv.next54.i.i, %bb.c ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv53.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !42 ; 2 uses
  %i.dw = lshr i64 %i.dv, %i.dr
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = and i64 %i.dx, %i.dt
  %.not39.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not39.i.i, label %bb.c, label %Abc_TtHasVar.exit.thread14.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.dz = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 31
  %i.eb = trunc nsw i64 %i.dz to i32              ; 2 uses
  %i.ec = shl i32 2, %i.eb
  %i.ed = sext i32 %i.ec to i64
  br i1 %i.ea, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.ee = shl nuw i32 1, %i.eb                    ; 2 uses
  %4 = sext i32 %i.ee to i64
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 1)
  %wide.trip.count.i.i103 = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.ei, %._crit_edge.us.i.i ], [ %i.k, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %4
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i.i105 = add nuw nsw i64 %indvars.iv.i.i104, 1 ; 2 uses
  %exitcond.not.i.i106 = icmp eq i64 %indvars.iv.next.i.i105, %wide.trip.count.i.i103
  br i1 %exitcond.not.i.i106, label %._crit_edge.us.i.i, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %bb.e, %.preheader.us.i.i
  %indvars.iv.i.i104 = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i105, %bb.e ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i104
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !42
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i104
  %i.eh = load i64, ptr %gep.i.i, align 8, !tbaa !42
  %.not.us.i.i = icmp eq i64 %i.eg, %i.eh
  br i1 %.not.us.i.i, label %bb.e, label %Abc_TtHasVar.exit.thread14.loopexit.i

._crit_edge.us.i.i:                               ; preds = %bb.e
  %i.ei = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.ed ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %i.ct
  br i1 %i.ej, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !4

Abc_TtHasVar.exit.thread14.loopexit.i:            ; preds = %bb.f
  %.pre.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %.pre59.i = shl nuw i32 1, %.pre.i
  br label %Abc_TtHasVar.exit.thread14.i

Abc_TtHasVar.exit.thread14.i:                     ; preds = %bb.d, %Abc_TtHasVar.exit.thread14.loopexit.i
  %.pre-phi60.i = phi i32 [ %.pre59.i, %Abc_TtHasVar.exit.thread14.loopexit.i ], [ %i.dq, %bb.d ]
  %i.ek = or i32 %.pre-phi60.i, %.023.i
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.c, %Abc_TtHasVar.exit.thread14.i, %.preheader.lr.ph.i.i
  %i.el = phi i32 [ %i.ek, %Abc_TtHasVar.exit.thread14.i ], [ %.023.i, %bb.c ], [ %.023.i, %.preheader.lr.ph.i.i ], [ %.023.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtSupport.exit, label %.lr.ph.split.split.split.i, !llvm.loop !7

Abc_TtSupport.exit.loopexit.unr-lcssa:            ; preds = %Abc_TtHasVar.exit.us.i
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %Abc_TtSupport.exit, label %Abc_TtHasVar.exit.us.i.epil.preheader

Abc_TtHasVar.exit.us.i.epil.preheader:            ; preds = %Abc_TtSupport.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i
  %indvars.iv52.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i ], [ %indvars.iv.next53.i.1, %Abc_TtSupport.exit.loopexit.unr-lcssa ] ; 2 uses
  %.023.us.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.1, %Abc_TtSupport.exit.loopexit.unr-lcssa ]
  %lcmp.mod187 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.em = trunc nuw nsw i64 %indvars.iv52.i.epil.init to i32
  %i.en = shl nuw i32 1, %i.em                    ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = lshr i64 %i.cu, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv52.i.epil.init
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !42
  %i.es = xor i64 %i.ep, %i.cu
  %i.et = and i64 %i.es, %i.er
  %.fr.us.i.epil = freeze i64 %i.et
  %.not18.us.i.epil = icmp eq i64 %.fr.us.i.epil, 0
  %i.eu = select i1 %.not18.us.i.epil, i32 0, i32 %i.en
  %spec.select.i.epil = or i32 %i.eu, %.023.us.i.epil.init
  br label %Abc_TtSupport.exit

Abc_TtSupport.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtHasVar.exit.us.i.epil.preheader, %Abc_TtSupport.exit.loopexit.unr-lcssa
  %.0.lcssa.i = phi i32 [ %spec.select.i.epil, %Abc_TtHasVar.exit.us.i.epil.preheader ], [ %spec.select.i.1, %Abc_TtSupport.exit.loopexit.unr-lcssa ], [ %i.el, %Abc_TtHasVar.exit.thread.i ] ; 5 uses
  %i.ev = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.ev, label %Abc_TtSupport.exit.thread, label %bb.g

Abc_TtSupport.exit.thread:                        ; preds = %.lr.ph.split.i, %If_CutTruthW.exit, %Abc_TtSupport.exit
  %i.ew = getelementptr i8, ptr %0, i64 24
  %.val96 = load ptr, ptr %i.ew, align 8, !tbaa !249
  %i.ex = xor i32 %i.am, 1
  br label %bb.am

bb.g:                                             ; preds = %Abc_TtSupport.exit
  %i.ey = add nsw i32 %.0.lcssa.i, 1
  %i.ez = and i32 %i.ey, %.0.lcssa.i
  %i.fa = icmp ne i32 %i.ez, 0
  %i.fb = icmp eq i32 %.0.lcssa.i, 1
  %or.cond = or i1 %i.fb, %i.fa
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fc = tail call fastcc i32 @Abc_TtSuppFindFirst(i32 noundef %.0.lcssa.i)
  %i.fd = tail call ptr @Hop_IthVar(ptr noundef %0, i32 noundef %i.fc) #27
  %.val89 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !123
  %i.fe = and i32 %.val89, 1
  br label %bb.am

bb.i:                                             ; preds = %bb.g
  %i.ff = call fastcc i32 @If_CutFindBestStruct(ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.fg = load i32, ptr %i.c, align 4, !tbaa !51
  %i.fh = getelementptr i8, ptr %i.f, i64 32      ; 5 uses
  %.val83 = load ptr, ptr %i.fh, align 8, !tbaa !43
  %i.fi = getelementptr i8, ptr %i.f, i64 72
  %.val84 = load ptr, ptr %i.fi, align 8, !tbaa !49
  %i.fj = getelementptr i8, ptr %.val84, i64 8
  %.val84.val = load ptr, ptr %i.fj, align 8, !tbaa !50
  %i.fk = sext i32 %i.fg to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val84.val, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !51
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [12 x i8], ptr %.val83, i64 %i.fn ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 960 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !109
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fs = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 0, ptr %i.ft, align 4, !tbaa !45
  store i32 256, ptr %i.fs, align 8, !tbaa !74
  %i.fu = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #25
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !50
  store ptr %i.fs, ptr %i.fp, align 8, !tbaa !109
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fw = load i64, ptr %i.fo, align 4
  %i.fx = and i64 %i.fw, 536870911
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds [12 x i8], ptr %i.fo, i64 %i.fy
  call void @Gia_ObjCollectInternal(ptr noundef nonnull %i.f, ptr noundef nonnull %i.fz) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 5 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !87
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i32 0, ptr %i.gc, align 4, !tbaa !83
  %i.gd = load i32, ptr %i.b, align 4             ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.l

.preheader:                                       ; preds = %Vec_PtrPush.exit
  %i.ge = load ptr, ptr %i.fp, align 8, !tbaa !109 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 4
  %.val79129 = load i32, ptr %i.gf, align 4, !tbaa !45
  %i.gg = icmp sgt i32 %.val79129, 0
  br i1 %i.gg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.gh = getelementptr i8, ptr %i.f, i64 952     ; 2 uses
  br label %bb.v

bb.l:                                             ; preds = %bb.k, %Vec_PtrPush.exit
  %indvars.iv = phi i64 [ 0, %bb.k ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 3 uses
  %i.gi = load ptr, ptr %i.ga, align 8, !tbaa !87 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !56
  %i.gl = sext i8 %i.gk to i32
  %i.gm = call ptr @Hop_IthVar(ptr noundef %0, i32 noundef %i.gl) #27
  %i.gn = trunc nuw nsw i64 %indvars.iv to i32
  %i.go = lshr i32 %i.gd, %i.gn
  %i.gp = and i32 %i.go, 1
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = zext nneg i32 %i.gp to i64
  %i.gs = xor i64 %i.gr, %i.gq
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !83 ; 7 uses
  %i.gw = load i32, ptr %i.gi, align 8, !tbaa !84
  %i.gx = icmp eq i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.m, label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.l
  %i.gy = icmp slt i32 %i.gv, 16
  br i1 %i.gy, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !85 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ha, null
  br i1 %.not9.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hb = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ha, i64 noundef 128) #26
  br label %Vec_PtrGrow.exit.i

bb.p:                                             ; preds = %bb.n
  %i.hc = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.p, %bb.o
  %i.hd = phi ptr [ %i.hb, %bb.o ], [ %i.hc, %bb.p ]
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !85
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.q:                                             ; preds = %bb.m
  %i.he = icmp samesign ult i32 %i.gv, 1073741823
  %i.hf = shl nuw nsw i32 %i.gv, 1
  %spec.select.i108 = select i1 %i.he, i32 %i.hf, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.gv, %spec.select.i108
  br i1 %.not.i10.i, label %bb.r, label %Vec_PtrPush.exit

bb.r:                                             ; preds = %bb.q
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !85 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.hh, null
end_hunk_2
begin_hunk_3_@Abc_RecToGia3:bb.a
vector.ph176:                                     ; preds = %.lr.ph18.preheader.i.i
  %n.vec177 = and i64 %wide.trip.count24.i.i, 2147483644 ; 3 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next182, %vector.body178 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index179 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load180 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !42
  %wide.load181 = load <2 x i64>, ptr %i.be, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index179 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x i64> %wide.load180, ptr %i.bf, align 8, !tbaa !42
  store <2 x i64> %wide.load181, ptr %i.bg, align 8, !tbaa !42
  %index.next182 = add nuw i64 %index179, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.bh, label %middle.block183, label %vector.body178, !llvm.loop !252

middle.block183:                                  ; preds = %vector.body178
  %cmp.n184 = icmp eq i64 %n.vec177, %wide.trip.count24.i.i
  br i1 %cmp.n184, label %If_CutTruthW.exit, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i, %middle.block183
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec177, %middle.block183 ] ; 3 uses
  %xtraiter191 = and i64 %wide.trip.count24.i.i, 3 ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter193 = phi i64 [ %prol.iter193.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv21.i.i.prol
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv21.i.i.prol
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !42
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter193.next = add i64 %prol.iter193, 1   ; 2 uses
  %prol.iter193.cmp.not = icmp eq i64 %prol.iter193.next, %xtraiter191
  br i1 %prol.iter193.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !253

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.bl = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count24.i.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %If_CutTruthW.exit, label %.lr.ph18.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !42
  %i.bp = xor i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !42
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !42
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.1
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !42
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !42
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.2
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !42
  %i.cb = xor i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !42
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph.i.i, !llvm.loop !254

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv21.i.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv21.i.i
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !42
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next22.i.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !42
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !42
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next22.i.i.1
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i.1
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !42
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next22.i.i.2
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next22.i.i.2
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !42
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph18.i.i, !llvm.loop !255

If_CutTruthW.exit:                                ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %middle.block183, %.preheader14.i.i, %.preheader.i.i
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %Abc_TtSupport.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %If_CutTruthW.exit
  %i.cp = icmp ult i32 %i.h, 117440512
  %i.cq = add nsw i32 %i.i, -6                    ; 2 uses
  %i.cr = shl nuw i32 1, %i.cq                    ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %.idx.i.i = shl nsw i64 %i.cs, 3
  %i.ct = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.cp, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cu = load i64, ptr %i.k, align 8, !tbaa !42  ; 6 uses
  %wide.trip.count55.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter194 = and i64 %wide.trip.count55.i, 1
  %i.cv = icmp eq i32 %i.i, 1
  br i1 %i.cv, label %Abc_TtHasVar.exit.us.i.epil.preheader, label %.lr.ph.split.us.i.new

.lr.ph.split.us.i.new:                            ; preds = %.lr.ph.split.us.i
  %unroll_iter = and i64 %wide.trip.count55.i, 6
  br label %Abc_TtHasVar.exit.us.i

Abc_TtHasVar.exit.us.i:                           ; preds = %Abc_TtHasVar.exit.us.i, %.lr.ph.split.us.i.new
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %indvars.iv.next53.i.1, %Abc_TtHasVar.exit.us.i ] ; 4 uses
  %.023.us.i = phi i32 [ 0, %.lr.ph.split.us.i.new ], [ %spec.select.i.1, %Abc_TtHasVar.exit.us.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.new ], [ %niter.next.1, %Abc_TtHasVar.exit.us.i ]
  %i.cw = trunc nuw nsw i64 %indvars.iv52.i to i32
  %i.cx = shl nuw i32 1, %i.cw                    ; 2 uses
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = lshr i64 %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv52.i
  %i.db = load i64, ptr %i.da, align 16, !tbaa !42
  %i.dc = xor i64 %i.cz, %i.cu
  %i.dd = and i64 %i.dc, %i.db
  %.fr.us.i = freeze i64 %i.dd
  %.not18.us.i = icmp eq i64 %.fr.us.i, 0
  %i.de = select i1 %.not18.us.i, i32 0, i32 %i.cx
  %spec.select.i = or i32 %i.de, %.023.us.i
  %indvars.iv.next53.i = or disjoint i64 %indvars.iv52.i, 1 ; 2 uses
  %i.df = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %i.dg = shl nuw i32 1, %i.df                    ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = lshr i64 %i.cu, %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next53.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !42
  %i.dl = xor i64 %i.di, %i.cu
  %i.dm = and i64 %i.dl, %i.dk
  %.fr.us.i.1 = freeze i64 %i.dm
  %.not18.us.i.1 = icmp eq i64 %.fr.us.i.1, 0
  %i.dn = select i1 %.not18.us.i.1, i32 0, i32 %i.dg
  %spec.select.i.1 = or i32 %i.dn, %spec.select.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSupport.exit.loopexit.unr-lcssa, label %Abc_TtHasVar.exit.us.i, !llvm.loop !7

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.not48.i.i = icmp eq i32 %i.cq, 31
  br i1 %.not48.i.i, label %Abc_TtSupport.exit.thread, label %.lr.ph.split.split.split.preheader.i

.lr.ph.split.split.split.preheader.i:             ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.split.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %indvars.iv.next.i, %Abc_TtHasVar.exit.thread.i ] ; 6 uses
  %.023.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %i.el, %Abc_TtHasVar.exit.thread.i ] ; 4 uses
  %i.do = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.do, label %.lr.ph.i.i114, label %.preheader.lr.ph.i.i

.lr.ph.i.i114:                                    ; preds = %.lr.ph.split.split.split.i
  %i.dp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dq = shl nuw nsw i32 1, %i.dp                ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i114
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i114 ], [ %indvars.iv.next54.i.i, %bb.c ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv53.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !42 ; 2 uses
  %i.dw = lshr i64 %i.dv, %i.dr
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = and i64 %i.dx, %i.dt
  %.not39.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not39.i.i, label %bb.c, label %Abc_TtHasVar.exit.thread14.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.dz = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 31
  %i.eb = trunc nsw i64 %i.dz to i32              ; 2 uses
  %i.ec = shl i32 2, %i.eb
  %i.ed = sext i32 %i.ec to i64
  br i1 %i.ea, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.ee = shl nuw i32 1, %i.eb                    ; 2 uses
  %5 = sext i32 %i.ee to i64
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 1)
  %wide.trip.count.i.i110 = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.ei, %._crit_edge.us.i.i ], [ %i.k, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %5
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i.i112 = add nuw nsw i64 %indvars.iv.i.i111, 1 ; 2 uses
  %exitcond.not.i.i113 = icmp eq i64 %indvars.iv.next.i.i112, %wide.trip.count.i.i110
  br i1 %exitcond.not.i.i113, label %._crit_edge.us.i.i, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %bb.e, %.preheader.us.i.i
  %indvars.iv.i.i111 = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i112, %bb.e ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i111
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !42
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i111
  %i.eh = load i64, ptr %gep.i.i, align 8, !tbaa !42
  %.not.us.i.i = icmp eq i64 %i.eg, %i.eh
  br i1 %.not.us.i.i, label %bb.e, label %Abc_TtHasVar.exit.thread14.loopexit.i

._crit_edge.us.i.i:                               ; preds = %bb.e
  %i.ei = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.ed ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %i.ct
  br i1 %i.ej, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !4

Abc_TtHasVar.exit.thread14.loopexit.i:            ; preds = %bb.f
  %.pre.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %.pre59.i = shl nuw i32 1, %.pre.i
  br label %Abc_TtHasVar.exit.thread14.i

Abc_TtHasVar.exit.thread14.i:                     ; preds = %bb.d, %Abc_TtHasVar.exit.thread14.loopexit.i
  %.pre-phi60.i = phi i32 [ %.pre59.i, %Abc_TtHasVar.exit.thread14.loopexit.i ], [ %i.dq, %bb.d ]
  %i.ek = or i32 %.pre-phi60.i, %.023.i
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.c, %Abc_TtHasVar.exit.thread14.i, %.preheader.lr.ph.i.i
  %i.el = phi i32 [ %i.ek, %Abc_TtHasVar.exit.thread14.i ], [ %.023.i, %bb.c ], [ %.023.i, %.preheader.lr.ph.i.i ], [ %.023.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtSupport.exit, label %.lr.ph.split.split.split.i, !llvm.loop !7

Abc_TtSupport.exit.loopexit.unr-lcssa:            ; preds = %Abc_TtHasVar.exit.us.i
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %Abc_TtSupport.exit, label %Abc_TtHasVar.exit.us.i.epil.preheader

Abc_TtHasVar.exit.us.i.epil.preheader:            ; preds = %Abc_TtSupport.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i
  %indvars.iv52.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i ], [ %indvars.iv.next53.i.1, %Abc_TtSupport.exit.loopexit.unr-lcssa ] ; 2 uses
  %.023.us.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.1, %Abc_TtSupport.exit.loopexit.unr-lcssa ]
  %lcmp.mod197 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.em = trunc nuw nsw i64 %indvars.iv52.i.epil.init to i32
  %i.en = shl nuw i32 1, %i.em                    ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = lshr i64 %i.cu, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv52.i.epil.init
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !42
  %i.es = xor i64 %i.ep, %i.cu
  %i.et = and i64 %i.es, %i.er
  %.fr.us.i.epil = freeze i64 %i.et
  %.not18.us.i.epil = icmp eq i64 %.fr.us.i.epil, 0
  %i.eu = select i1 %.not18.us.i.epil, i32 0, i32 %i.en
  %spec.select.i.epil = or i32 %i.eu, %.023.us.i.epil.init
  br label %Abc_TtSupport.exit

Abc_TtSupport.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtHasVar.exit.us.i.epil.preheader, %Abc_TtSupport.exit.loopexit.unr-lcssa
  %.0.lcssa.i = phi i32 [ %spec.select.i.epil, %Abc_TtHasVar.exit.us.i.epil.preheader ], [ %spec.select.i.1, %Abc_TtSupport.exit.loopexit.unr-lcssa ], [ %i.el, %Abc_TtHasVar.exit.thread.i ] ; 5 uses
  %i.ev = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.ev, label %Abc_TtSupport.exit.thread, label %bb.g

bb.g:                                             ; preds = %Abc_TtSupport.exit
  %i.ew = add nsw i32 %.0.lcssa.i, 1
  %i.ex = and i32 %i.ew, %.0.lcssa.i
  %i.ey = icmp ne i32 %i.ex, 0
  %i.ez = icmp eq i32 %.0.lcssa.i, 1
  %or.cond = or i1 %i.ez, %i.ey
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fa = tail call fastcc i32 @Abc_TtSuppFindFirst(i32 noundef %.0.lcssa.i)
  %i.fb = getelementptr i8, ptr %3, i64 8
  %.val95 = load ptr, ptr %i.fb, align 8, !tbaa !50
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !51
  %i.ff = xor i32 %i.fe, %i.am
  br label %Abc_TtSupport.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.fg = call fastcc i32 @If_CutFindBestStruct(ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.fh = load i32, ptr %i.c, align 4, !tbaa !51
  %i.fi = getelementptr i8, ptr %i.f, i64 32      ; 5 uses
  %.val96 = load ptr, ptr %i.fi, align 8, !tbaa !43
  %i.fj = getelementptr i8, ptr %i.f, i64 72
  %.val97 = load ptr, ptr %i.fj, align 8, !tbaa !49
  %i.fk = getelementptr i8, ptr %.val97, i64 8
  %.val97.val = load ptr, ptr %i.fk, align 8, !tbaa !50
  %i.fl = sext i32 %i.fh to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %.val97.val, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !51
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [12 x i8], ptr %.val96, i64 %i.fo ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 960 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !109
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ft = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 0, ptr %i.fu, align 4, !tbaa !45
  store i32 256, ptr %i.ft, align 8, !tbaa !74
  %i.fv = call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #25
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !50
  store ptr %i.ft, ptr %i.fq, align 8, !tbaa !109
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fx = load i64, ptr %i.fp, align 4
  %i.fy = and i64 %i.fx, 536870911
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr inbounds [12 x i8], ptr %i.fp, i64 %i.fz
  call void @Gia_ObjCollectInternal(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ga) #27
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 5 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !88
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 0, ptr %i.gd, align 4, !tbaa !45
  %i.ge = getelementptr i8, ptr %3, i64 8
  %i.gf = load i32, ptr %i.b, align 4, !tbaa !51  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.l

.preheader:                                       ; preds = %Vec_IntPush.exit
  %i.gg = load ptr, ptr %i.fq, align 8, !tbaa !109 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 4
  %.val85137 = load i32, ptr %i.gh, align 4, !tbaa !45
  %i.gi = icmp sgt i32 %.val85137, 0
  br i1 %i.gi, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.gj = getelementptr i8, ptr %i.f, i64 952     ; 2 uses
  %.not82 = icmp eq i32 %4, 0
  %i.gk = getelementptr i8, ptr %0, i64 32        ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1008
  br label %bb.v

bb.l:                                             ; preds = %bb.k, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %bb.k ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 3 uses
  %i.gp = load ptr, ptr %i.gb, align 8, !tbaa !88 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !56
  %.val94 = load ptr, ptr %i.ge, align 8, !tbaa !50
  %i.gs = sext i8 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.val94, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !51
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  %i.gw = lshr i32 %i.gf, %i.gv
  %i.gx = and i32 %i.gw, 1
  %i.gy = xor i32 %i.gx, %i.gu
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !45 ; 7 uses
  %i.hb = load i32, ptr %i.gp, align 8, !tbaa !74
  %i.hc = icmp eq i32 %i.ha, %i.hb
  br i1 %i.hc, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.hd = icmp slt i32 %i.ha, 16
  br i1 %i.hd, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.he = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !50 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hf, null
  br i1 %.not9.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hg = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hf, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.p:                                             ; preds = %bb.n
  %i.hh = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.p, %bb.o
  %i.hi = phi ptr [ %i.hg, %bb.o ], [ %i.hh, %bb.p ]
  store ptr %i.hi, ptr %i.he, align 8, !tbaa !50
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.m
  %i.hj = icmp samesign ult i32 %i.ha, 1073741823
  %i.hk = shl nuw nsw i32 %i.ha, 1
  %spec.select.i115 = select i1 %i.hj, i32 %i.hk, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ha, %spec.select.i115
  br i1 %.not.i9.i, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
end_hunk_3
begin_hunk_4_@Abc_NtkRecTruthCompare:bb.a
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !65
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = tail call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.an, i64 noundef %i.ar) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.as, %bb.b ], [ %i.o, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkRecDumpTt3(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = load ptr, ptr @s_pMan3, align 8, !tbaa !108 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !63   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val48 = load i32, ptr %i.f, align 4, !tbaa !90 ; 7 uses
  %i.g = icmp eq i32 %.val48, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %Vec_IntFree.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.39) ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %Vec_StrAlloc.exit

bb.d:                                             ; preds = %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %Vec_IntFree.exit

Vec_StrAlloc.exit:                                ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %.val48, i32 16) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !53
  store i32 %spec.store.select.i, ptr %i.j, align 8, !tbaa !54
  %i.l = sext i32 %spec.store.select.i to i64     ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #25
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 5 uses
  store ptr %i.j, ptr %i.o, align 8, !tbaa !127
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val4761 = load i32, ptr %i.q, align 4, !tbaa !90
  %i.r = icmp sgt i32 %.val4761, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_StrAlloc.exit
  %i.s = icmp sgt i32 %i.c, 0
  %i.t = icmp samesign ult i32 %i.c, 7
  %i.u = add nsw i32 %i.c, -6                     ; 2 uses
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  %i.w = sext i32 %i.v to i64
  %.idx.i.i = shl nsw i64 %i.w, 3
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  %.not48.i.i = icmp eq i32 %i.u, 31
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  %exitcond55.not.i = icmp eq i32 %i.c, 1
  %exitcond55.not.i.1 = icmp eq i32 %i.c, 2
  %exitcond55.not.i.2 = icmp eq i32 %i.c, 3
  %exitcond55.not.i.3 = icmp eq i32 %i.c, 4
  %exitcond55.not.i.4 = icmp eq i32 %i.c, 5
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Vec_StrPush.exit
  %i.x = phi ptr [ %i.p, %.lr.ph ], [ %i.dk, %Vec_StrPush.exit ] ; 4 uses
  %.062 = phi i32 [ 0, %.lr.ph ], [ %i.dj, %Vec_StrPush.exit ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !70
  %i.ac = lshr i32 %.062, %i.ab
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !92 ; 2 uses
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !71
  %i.aj = and i32 %i.ai, %.062
  %i.ak = mul nsw i32 %i.aj, %i.ag
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.al ; 4 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !127 ; 6 uses
  br i1 %i.s, label %.lr.ph.i, label %Abc_TtSupportSize.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %.idx.i.i
  br i1 %i.t, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !42 ; 12 uses
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = xor i64 %i.aq, %i.ap
  %.fr = freeze i64 %i.ar
  %i.as = and i64 %.fr, 6148914691236517205
  %.not17.us.i = icmp ne i64 %i.as, 0
  %i.at = zext i1 %.not17.us.i to i8              ; 2 uses
  br i1 %exitcond55.not.i, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %.lr.ph.split.us.i
  %i.au = lshr i64 %i.ap, 2
  %i.av = xor i64 %i.au, %i.ap
  %.fr97 = freeze i64 %i.av
  %i.aw = and i64 %.fr97, 3689348814741910323
  %.not17.us.i.1 = icmp ne i64 %i.aw, 0
  %i.ax = zext i1 %.not17.us.i.1 to i8
  %spec.select.i.1 = add nuw nsw i8 %i.at, %i.ax  ; 2 uses
  br i1 %exitcond55.not.i.1, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.ay = lshr i64 %i.ap, 4
  %i.az = xor i64 %i.ay, %i.ap
  %.fr98 = freeze i64 %i.az
  %i.ba = and i64 %.fr98, 1085102592571150095
  %.not17.us.i.2 = icmp ne i64 %i.ba, 0
  %i.bb = zext i1 %.not17.us.i.2 to i8
  %spec.select.i.2 = add nuw nsw i8 %spec.select.i.1, %i.bb ; 2 uses
  br i1 %exitcond55.not.i.2, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.bc = lshr i64 %i.ap, 8
  %i.bd = xor i64 %i.bc, %i.ap
  %.fr99 = freeze i64 %i.bd
  %i.be = and i64 %.fr99, 71777214294589695
  %.not17.us.i.3 = icmp ne i64 %i.be, 0
  %i.bf = zext i1 %.not17.us.i.3 to i8
  %spec.select.i.3 = add nuw nsw i8 %spec.select.i.2, %i.bf ; 2 uses
  br i1 %exitcond55.not.i.3, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.bg = lshr i64 %i.ap, 16
  %i.bh = xor i64 %i.bg, %i.ap
  %.fr100 = freeze i64 %i.bh
  %i.bi = and i64 %.fr100, 281470681808895
  %.not17.us.i.4 = icmp ne i64 %i.bi, 0
  %i.bj = zext i1 %.not17.us.i.4 to i8
  %spec.select.i.4 = add nuw nsw i8 %spec.select.i.3, %i.bj ; 2 uses
  br i1 %exitcond55.not.i.4, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.bk = lshr i64 %i.ap, 32
  %.masked = and i64 %i.ap, 4294967295
  %i.bl = xor i64 %i.bk, %.masked
  %.fr.us.i.5 = freeze i64 %i.bl
  %.not17.us.i.5 = icmp ne i64 %.fr.us.i.5, 0
  %i.bm = zext i1 %.not17.us.i.5 to i8
  %spec.select.i.5 = add nuw nsw i8 %spec.select.i.4, %i.bm
  br label %Abc_TtSupportSize.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.i, %Abc_TtHasVar.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.split.i ] ; 5 uses
  %.022.i = phi i8 [ %i.ck, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %i.bn = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.bn, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.split.split.i
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !42
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.h, !llvm.loop !2

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.g ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv53.i.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !42 ; 2 uses
  %i.bv = lshr i64 %i.bu, %i.bq
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = and i64 %i.bw, %i.bs
  %.not39.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not39.i.i, label %bb.g, label %Abc_TtHasVar.exit.thread13.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.by = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.bz = icmp eq i64 %i.by, 31
  %i.ca = trunc nsw i64 %i.by to i32              ; 2 uses
  %i.cb = shl i32 2, %i.ca
  %i.cc = sext i32 %i.cb to i64
  br i1 %i.bz, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.cd = shl nuw i32 1, %i.ca                    ; 2 uses
  %2 = sext i32 %i.cd to i64
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.ch, %._crit_edge.us.i.i ], [ %i.am, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %2
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.j, !llvm.loop !3

bb.j:                                             ; preds = %bb.i, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !42
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.cg = load i64, ptr %gep.i.i, align 8, !tbaa !42
  %.not.us.i.i = icmp eq i64 %i.cf, %i.cg
  br i1 %.not.us.i.i, label %bb.i, label %Abc_TtHasVar.exit.thread13.i

._crit_edge.us.i.i:                               ; preds = %bb.i
  %i.ch = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.cc ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.ao
  br i1 %i.ci, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !4

Abc_TtHasVar.exit.thread13.i:                     ; preds = %bb.h, %bb.j
  %i.cj = add i8 %.022.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.g, %Abc_TtHasVar.exit.thread13.i, %.preheader.lr.ph.i.i
  %i.ck = phi i8 [ %i.cj, %Abc_TtHasVar.exit.thread13.i ], [ %.022.i, %bb.g ], [ %.022.i, %.preheader.lr.ph.i.i ], [ %.022.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i, !llvm.loop !5

Abc_TtSupportSize.exit:                           ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.us.i, %Abc_TtHasVar.exit.us.i.1, %Abc_TtHasVar.exit.us.i.2, %Abc_TtHasVar.exit.us.i.3, %Abc_TtHasVar.exit.us.i.4, %Abc_TtHasVar.exit.us.i.5, %bb.f, %.lr.ph.split.i
  %.0.lcssa.i = phi i8 [ 0, %bb.f ], [ %spec.select.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ 0, %.lr.ph.split.i ], [ %i.at, %.lr.ph.split.us.i ], [ %spec.select.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %spec.select.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %spec.select.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %spec.select.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %i.ck, %Abc_TtHasVar.exit.thread.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !53 ; 7 uses
  %i.cn = load i32, ptr %i.an, align 8, !tbaa !54
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.k, label %Vec_StrPush.exit

bb.k:                                             ; preds = %Abc_TtSupportSize.exit
  %i.cp = icmp slt i32 %i.cm, 16
  br i1 %i.cp, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !55 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.cr, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cr, i64 noundef 16) #26
  br label %Vec_StrGrow.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ct = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.n, %bb.m
  %i.cu = phi ptr [ %i.cs, %bb.m ], [ %i.ct, %bb.n ]
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !55
  br label %Vec_StrGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.cv = icmp samesign ult i32 %i.cm, 1073741823
  %i.cw = shl nuw nsw i32 %i.cm, 1
  %spec.select.i50 = select i1 %i.cv, i32 %i.cw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.cm, %spec.select.i50
  br i1 %.not.i9.i, label %bb.p, label %Vec_StrPush.exit

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !55 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.cy, null
  %i.cz = zext nneg i32 %spec.select.i50 to i64   ; 2 uses
  br i1 %.not9.i10.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = tail call ptr @realloc(ptr noundef nonnull %i.cy, i64 noundef %i.cz) #26
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.db = tail call noalias ptr @malloc(i64 noundef %i.cz) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dc = phi ptr [ %i.da, %bb.q ], [ %i.db, %bb.r ]
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !55
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.s, %Vec_StrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i50, %bb.s ], [ 16, %Vec_StrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.an, align 8, !tbaa !54
  %.pre = load i32, ptr %i.cl, align 4, !tbaa !53
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %Abc_TtSupportSize.exit, %bb.o, %Vec_StrGrow.exit11.sink.split.i
  %i.dd = phi i32 [ %i.cm, %Abc_TtSupportSize.exit ], [ %i.cm, %bb.o ], [ %.pre, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !55
  %i.dg = add nsw i32 %i.dd, 1
  store i32 %i.dg, ptr %i.cl, align 4, !tbaa !53
  %i.dh = sext i32 %i.dd to i64
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh
  store i8 %.0.lcssa.i, ptr %i.di, align 1, !tbaa !56
  %i.dj = add nuw nsw i32 %.062, 1                ; 2 uses
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !73  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %.val47 = load i32, ptr %i.dl, align 4, !tbaa !90
  %i.dm = icmp slt i32 %i.dj, %.val47
  br i1 %i.dm, label %bb.e, label %.critedge, !llvm.loop !273

.critedge:                                        ; preds = %bb.e, %Vec_StrPush.exit, %Vec_StrAlloc.exit
  %i.dn = shl nsw i64 %i.l, 2
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dn) #25 ; 7 uses
  %i.dp = icmp sgt i32 %.val48, 0                 ; 2 uses
  br i1 %i.dp, label %.lr.ph.preheader.i, label %Vec_IntStartNatural.exit

.lr.ph.preheader.i:                               ; preds = %.critedge
  %wide.trip.count.i51 = zext nneg i32 %.val48 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val48, 8
  br i1 %min.iters.check, label %.lr.ph.i52.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i51, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <4 x i32> %vec.ind, ptr %i.dq, align 4, !tbaa !51
  store <4 x i32> %step.add, ptr %i.dr, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i51
  br i1 %cmp.n, label %Vec_IntStartNatural.exit, label %.lr.ph.i52.preheader

.lr.ph.i52.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i53.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader, %.lr.ph.i52
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %.lr.ph.i52 ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i53
  %i.du = trunc nuw nsw i64 %indvars.iv.i53 to i32
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !51
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i51
  br i1 %exitcond.not.i55, label %Vec_IntStartNatural.exit, label %.lr.ph.i52, !llvm.loop !275

Vec_IntStartNatural.exit:                         ; preds = %.lr.ph.i52, %middle.block, %.critedge
  %i.dv = sext i32 %.val48 to i64
  tail call void @qsort(ptr noundef %i.do, i64 noundef %i.dv, i64 noundef 4, ptr noundef nonnull @Abc_NtkRecTruthCompare) #27
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !94  ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %Vec_StrFreeP.exit, label %bb.t

bb.t:                                             ; preds = %Vec_IntStartNatural.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !55 ; 2 uses
  %.not.i56 = icmp eq ptr %i.dz, null
  br i1 %.not.i56, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.dz) #27
  %i.ea = load ptr, ptr %i.o, align 8, !tbaa !94  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr null, ptr %i.eb, align 8, !tbaa !55
  br label %bb.u

bb.u:                                             ; preds = %.thread.i, %bb.t
  %i.ec = phi ptr [ %i.ea, %.thread.i ], [ %i.dw, %bb.t ]
  tail call void @free(ptr noundef nonnull %i.ec) #27
  store ptr null, ptr %i.o, align 8, !tbaa !94
  br label %Vec_StrFreeP.exit

Vec_StrFreeP.exit:                                ; preds = %Vec_IntStartNatural.exit, %bb.u
  br i1 %i.dp, label %.lr.ph65, label %.critedge2

.lr.ph65:                                         ; preds = %Vec_StrFreeP.exit
  %.not44 = icmp eq i32 %1, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ee = icmp slt i32 %i.c, 11
  %i.ef = zext i1 %i.ee to i32
  %wide.trip.count74 = zext nneg i32 %.val48 to i64 ; 2 uses
  br i1 %.not44, label %.lr.ph65.split.us, label %.lr.ph65.split

.lr.ph65.split.us:                                ; preds = %.lr.ph65, %.lr.ph65.split.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.lr.ph65.split.us ], [ 0, %.lr.ph65 ] ; 2 uses
end_hunk_4
