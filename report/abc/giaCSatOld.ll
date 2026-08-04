inline.NumInlined: 134
inline.NumDeleted: 56
begin_hunk_0_@Cbs0_ManSolve:bb.a
bb.s:                                             ; preds = %Vec_IntPush.exit.i, %bb.i
  %i.by = phi i32 [ %i.au, %bb.i ], [ %.pre21.i, %Vec_IntPush.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next.i, %i.bz
  br i1 %i.ca, label %bb.h, label %Cbs0_ManSaveModel.exit, !llvm.loop !74

Cbs0_ManSaveModel.exit:                           ; preds = %bb.s, %bb.h, %bb.f, %Cbs0_ManCheckLimits.exit, %Cbs0_ManAssign.exit
  %.pr = load i32, ptr %i.l, align 4, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.cb, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = icmp sgt i32 %.pr, 0
  br i1 %i.cd, label %.lr.ph.i19, label %Cbs0_ManCancelUntil.exit

.lr.ph.i19:                                       ; preds = %Cbs0_ManSaveModel.exit, %bb.t
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i22, %bb.t ], [ 0, %Cbs0_ManSaveModel.exit ] ; 2 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i20
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !34 ; 3 uses
  %.not.i21 = icmp eq ptr %i.cg, null
  br i1 %.not.i21, label %Cbs0_ManCancelUntil.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i19
  %i.ch = load i64, ptr %i.cg, align 4
  %i.ci = and i64 %i.ch, -4611686019501129729
  store i64 %i.ci, ptr %i.cg, align 4
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %i.cj = load i32, ptr %i.l, align 4, !tbaa !32
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next.i22, %i.ck
  br i1 %i.cl, label %.lr.ph.i19, label %Cbs0_ManCancelUntil.exit, !llvm.loop !72

Cbs0_ManCancelUntil.exit:                         ; preds = %.lr.ph.i19, %bb.t, %Cbs0_ManSaveModel.exit.thread, %Cbs0_ManSaveModel.exit
  store i32 0, ptr %i.l, align 4, !tbaa !32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.cn, align 4, !tbaa !42
  store i32 0, ptr %i.cm, align 8, !tbaa !41
  %i.co = load i32, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !75
  %i.cr = add nsw i32 %i.cq, %i.co
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !76
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !45  ; 2 uses
  %i.cv = tail call noundef i32 @llvm.smax.i32(i32 %i.ct, i32 %i.cu)
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !76
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !46
  %i.cy = icmp sgt i32 %i.cu, %i.cx
  br i1 %i.cy, label %Cbs0_ManCheckLimits.exit23.thread, label %Cbs0_ManCheckLimits.exit23

Cbs0_ManCheckLimits.exit23:                       ; preds = %Cbs0_ManCancelUntil.exit
  %i.cz = load i32, ptr %0, align 8, !tbaa !48
  %i.da = icmp sle i32 %i.co, %i.cz
  %cond.fr = freeze i1 %i.da
  %spec.select = select i1 %cond.fr, i32 %i.ad, i32 -1
  br label %Cbs0_ManCheckLimits.exit23.thread

Cbs0_ManCheckLimits.exit23.thread:                ; preds = %Cbs0_ManCheckLimits.exit23, %Cbs0_ManCancelUntil.exit
  %i.db = phi i32 [ -1, %Cbs0_ManCancelUntil.exit ], [ %spec.select, %Cbs0_ManCheckLimits.exit23 ]
  ret i32 %i.db
}

; Function Attrs: nounwind uwtable
define void @Cbs0_ManSatPrintStats(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %.val = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !24
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.val.val) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val3.i = load i32, ptr %i.k, align 4, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val.i = load i32, ptr %i.n, align 4, !tbaa !24
  %i.o = add i32 %.val.i, %.val3.i
  %i.p = xor i32 %i.o, -1
  %i.q = add i32 %i.h, %i.p
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.q) ; 0 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !48
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !46
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.v) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load i32, ptr %i.x, align 8, !tbaa !80   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !81  ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  %i.ab = sitofp i32 %i.y to double               ; 2 uses
  %i.ac = fmul nnan double %i.ab, 1.000000e+02
  %i.ad = sitofp i32 %i.aa to double
  %i.ae = fdiv double %i.ac, %i.ad
  %i.af = select i1 %.not, double 0.000000e+00, double %i.ae
  %.not46 = icmp eq i32 %i.y, 0
  br i1 %.not46, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !82
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fdiv double %i.ai, %i.ab
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ak = phi double [ %i.aj, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.y, double noundef %i.af, double noundef %i.ak) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.an = load i64, ptr %i.am, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !84 ; 2 uses
  %.not47 = icmp eq i64 %i.ap, 0
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = sitofp i64 %i.an to double
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul nnan <2 x double> %i.at, <double 1.000000e+00, double 1.000000e+02>
  %i.av = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.aq, i64 1
  %i.aw = fdiv <2 x double> %i.au, %i.av          ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1
  %i.ay = select i1 %.not47, double 0.000000e+00, double %i.ax
  %i.az = extractelement <2 x double> %i.aw, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.8, double noundef %i.az, double noundef %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !85 ; 3 uses
  %i.bc = load i32, ptr %i.z, align 4, !tbaa !81  ; 2 uses
  %.not48 = icmp eq i32 %i.bc, 0
  %i.bd = sitofp i32 %i.bb to double              ; 2 uses
  %i.be = fmul nnan double %i.bd, 1.000000e+02
  %i.bf = sitofp i32 %i.bc to double
  %i.bg = fdiv double %i.be, %i.bf
  %i.bh = select i1 %.not48, double 0.000000e+00, double %i.bg
  %.not49 = icmp eq i32 %i.bb, 0
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !86
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = fdiv double %i.bk, %i.bd
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bm = phi double [ %i.bl, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.bb, double noundef %i.bh, double noundef %i.bm) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !87
  %i.bq = load i64, ptr %i.ao, align 8, !tbaa !84 ; 2 uses
  %.not50 = icmp eq i64 %i.bq, 0
  %i.br = sitofp i64 %i.bq to double
  %i.bs = sitofp i64 %i.bp to double
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul nnan <2 x double> %i.bu, <double 1.000000e+00, double 1.000000e+02>
  %i.bw = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.br, i64 1
  %i.bx = fdiv <2 x double> %i.bv, %i.bw          ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 1
  %i.bz = select i1 %.not50, double 0.000000e+00, double %i.by
  %i.ca = extractelement <2 x double> %i.bx, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.8, double noundef %i.ca, double noundef %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !88 ; 3 uses
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !81  ; 2 uses
  %i.ce = sitofp i32 %i.cc to double              ; 2 uses
  %.not52 = icmp eq i32 %i.cc, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !89
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = fdiv double %i.ch, %i.ce
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cj = phi double [ %i.ci, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.not51 = icmp eq i32 %i.cd, 0
  %i.ck = fmul nnan double %i.ce, 1.000000e+02
  %i.cl = sitofp i32 %i.cd to double
  %i.cm = fdiv double %i.ck, %i.cl
  %i.cn = select i1 %.not51, double 0.000000e+00, double %i.cm
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.cc, double noundef %i.cn, double noundef %i.cj) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !90
  %i.cr = load i64, ptr %i.ao, align 8, !tbaa !84 ; 2 uses
  %.not53 = icmp eq i64 %i.cr, 0
  %1 = sitofp i64 %i.cr to double
  %i.cs = sitofp i64 %i.cq to double
  %2 = insertelement <2 x double> poison, double %i.cs, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = fmul nnan <2 x double> %3, <double 1.000000e+02, double 1.000000e+00>
  %5 = insertelement <2 x double> <double poison, double 1.000000e+06>, double %1, i64 0
  %6 = fdiv <2 x double> %4, %5                   ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %i.ct = select i1 %.not53, double 0.000000e+00, double %7
  %8 = extractelement <2 x double> %6, i64 1
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.8, double noundef %8, double noundef %i.ct)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11)
  %i.cu = load i64, ptr %i.ao, align 8, !tbaa !84
  %i.cv = sitofp i64 %i.cu to double
  %i.cw = fdiv double %i.cv, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.12, double noundef %i.cw)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #13 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #23 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #23
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #23 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #25
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #23 ; 0 uses
  call void @free(ptr noundef %i.d) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !91, !noalias !93
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #23, !inline_history !96 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Cbs_ManSolveMiter(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %9, align 8, !tbaa !97
  %.neg103 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !99
  %.neg = sdiv i64 %i.e, -1000
  %.neg104 = add i64 %.neg, %.neg103
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg104, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @Gia_ManCreateRefs(ptr noundef %0) #23
  call void @Gia_ManCleanMark0(ptr noundef %0) #23
  call void @Gia_ManCleanMark1(ptr noundef %0) #23
  %i.f = call noalias dereferenceable_or_null(168) ptr @calloc(i64 noundef 1, i64 noundef 168) #21 ; 26 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i32 10000, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 10000, ptr %i.h, align 8, !tbaa !21
  %i.i = call noalias dereferenceable_or_null(80000) ptr @malloc(i64 noundef 80000) #22
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !22
  %i.k = call noalias dereferenceable_or_null(80000) ptr @malloc(i64 noundef 80000) #22
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !24
  store i32 1000, ptr %i.m, align 8, !tbaa !27
  %i.o = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #22
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  store ptr %i.m, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 100, ptr %i.r, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i32 1, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 1, ptr %i.t, align 4, !tbaa !31
  store i32 %1, ptr %i.f, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %0, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val68 = load i32, ptr %i.v, align 8, !tbaa !100
  %i.w = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val69 = load ptr, ptr %i.w, align 8, !tbaa !77 ; 3 uses
  %i.x = getelementptr i8, ptr %.val69, i64 4     ; 2 uses
  %.val69.val = load i32, ptr %i.x, align 4, !tbaa !24
  %i.y = sub nsw i32 %.val69.val, %.val68         ; 2 uses
  %i.z = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 7 uses
  %i.aa = add i32 %i.y, -1
  %or.cond.i = icmp ult i32 %i.aa, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.y ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 9 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !101
  store i32 %spec.store.select.i, ptr %i.z, align 8, !tbaa !103
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_StrAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.ac = sext i32 %spec.store.select.i to i64
  %i.ad = call noalias ptr @malloc(i64 noundef %i.ac) #22
  br label %Vec_StrAlloc.exit

Vec_StrAlloc.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.ae = phi ptr [ %i.ad, %bb.c ], [ null, %Abc_Clock.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !104
  %i.ag = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !24
  store i32 10000, ptr %i.ag, align 8, !tbaa !27
  %i.ai = call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !28
  %i.ak = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !24
  store i32 100, ptr %i.ak, align 8, !tbaa !27
  %i.am = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !28
  %i.ao = getelementptr i8, ptr %0, i64 32
  %.val65105 = load i32, ptr %i.x, align 4, !tbaa !24
  %i.ap = icmp sgt i32 %.val65105, 0
  br i1 %i.ap, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_StrAlloc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 108 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 124 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ao
  %i.bf = phi ptr [ %i.ae, %.lr.ph ], [ %i.gk, %bb.ao ] ; 6 uses
  %i.bg = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.gl, %bb.ao ] ; 12 uses
  %i.bh = phi ptr [ %i.ae, %.lr.ph ], [ %i.gm, %bb.ao ] ; 8 uses
  %i.bi = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.gn, %bb.ao ] ; 10 uses
  %i.bj = phi ptr [ %i.ae, %.lr.ph ], [ %i.go, %bb.ao ] ; 10 uses
  %i.bk = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.gp, %bb.ao ] ; 8 uses
  %i.bl = phi i32 [ 0, %.lr.ph ], [ %i.gq, %bb.ao ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 5 uses
  %i.bm = phi ptr [ %.val69, %.lr.ph ], [ %i.gr, %bb.ao ] ; 2 uses
  %.val70 = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %.val71.val = load ptr, ptr %i.bn, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val71.val, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !11
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [12 x i8], ptr %.val70, i64 %i.bq ; 4 uses
  %.not = icmp eq ptr %.val70, null
  br i1 %.not, label %.critedge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.n, align 4, !tbaa !24
  %i.bs = load i64, ptr %i.br, align 4            ; 2 uses
  %i.bt = and i64 %i.bs, 536870911
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [12 x i8], ptr %i.br, i64 %i.bu
  %.val72 = load i64, ptr %i.bv, align 4
  %i.bw = and i64 %.val72, 2305843005455597567
  %narrow.i.not = icmp eq i64 %i.bw, 2305843005455597567
end_hunk_0
