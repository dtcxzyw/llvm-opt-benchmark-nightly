Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/nbench1?download=true
inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoFPUTransIteration:bb.a
  %i.aq = fmul double %i.u, %i.an
  %i.ar = tail call double @cos(double noundef %i.aq) #11, !tbaa !7
  %i.as = fmul double %i.ap, %i.ar
  %i.at = fadd double %i.am, %i.as                ; 2 uses
  %i.au = add nsw i32 %i.y, -3                    ; 2 uses
  %.not.us39.i.2 = icmp eq i32 %i.au, 0
  br i1 %.not.us39.i.2, label %TrapezoidIntegrate.exit12, label %thefunction.exit27.us37.i, !llvm.loop !84

TrapezoidIntegrate.exit12:                        ; preds = %thefunction.exit27.us37.i
  %i.av = fmul nnan double %i.u, 2.000000e+00     ; 2 uses
  %i.aw = tail call double @cos(double noundef %i.av) #11, !tbaa !7
  %i.ax = fmul double %i.aw, 9.000000e+00
  %i.ay = fmul double %i.ax, 5.000000e-01
  %i.az = fadd double %i.at, %i.ay
  %i.ba = fmul double %i.az, 1.000000e-02
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store double %i.ba, ptr %i.bb, align 8, !tbaa !33
  %i.bc = tail call double @sin(double noundef %i.v) #11, !tbaa !7
  %i.bd = fmul double %i.bc, 5.000000e-01
  br label %thefunction.exit27.us45.i

thefunction.exit27.us45.i:                        ; preds = %thefunction.exit27.us45.i, %TrapezoidIntegrate.exit12
  %i.be = phi i32 [ 198, %TrapezoidIntegrate.exit12 ], [ %i.ca, %thefunction.exit27.us45.i ]
  %.033.us43.i = phi double [ %i.bd, %TrapezoidIntegrate.exit12 ], [ %i.bz, %thefunction.exit27.us45.i ]
  %.02132.us44.i = phi double [ 0.000000e+00, %TrapezoidIntegrate.exit12 ], [ %i.bt, %thefunction.exit27.us45.i ]
  %i.bf = fadd double %.02132.us44.i, 1.000000e-02 ; 4 uses
  %i.bg = fadd double %i.bf, 1.000000e+00
  %i.bh = tail call double @pow(double noundef %i.bg, double noundef %i.bf) #11, !tbaa !7
  %i.bi = fmul double %i.u, %i.bf
  %i.bj = tail call double @sin(double noundef %i.bi) #11, !tbaa !7
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = fadd double %.033.us43.i, %i.bk
  %i.bm = fadd double %i.bf, 1.000000e-02         ; 4 uses
  %i.bn = fadd double %i.bm, 1.000000e+00
  %i.bo = tail call double @pow(double noundef %i.bn, double noundef %i.bm) #11, !tbaa !7
  %i.bp = fmul double %i.u, %i.bm
  %i.bq = tail call double @sin(double noundef %i.bp) #11, !tbaa !7
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fadd double %i.bl, %i.br
  %i.bt = fadd double %i.bm, 1.000000e-02         ; 4 uses
  %i.bu = fadd double %i.bt, 1.000000e+00
  %i.bv = tail call double @pow(double noundef %i.bu, double noundef %i.bt) #11, !tbaa !7
  %i.bw = fmul double %i.u, %i.bt
  %i.bx = tail call double @sin(double noundef %i.bw) #11, !tbaa !7
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %i.bs, %i.by                ; 2 uses
  %i.ca = add nsw i32 %i.be, -3                   ; 2 uses
  %.not.us47.i.2 = icmp eq i32 %i.ca, 0
  br i1 %.not.us47.i.2, label %TrapezoidIntegrate.exit13, label %thefunction.exit27.us45.i, !llvm.loop !84

TrapezoidIntegrate.exit13:                        ; preds = %thefunction.exit27.us45.i
  %i.cb = tail call double @sin(double noundef %i.av) #11, !tbaa !7
  %i.cc = fmul double %i.cb, 9.000000e+00
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = fadd double %i.bz, %i.cd
  %i.cf = fmul double %i.ce, 1.000000e-02
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  store double %i.cf, ptr %i.cg, align 8, !tbaa !33
  %i.ch = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %TrapezoidIntegrate.exit13, %TrapezoidIntegrate.exit
  %i.ci = tail call i64 @StopStopwatch(i64 noundef %i.a) #11
  ret i64 %i.ci
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
define dso_local void @DoAssign() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load i32, ptr @global_assignstruct, align 8, !tbaa !30
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a, %bb.d
  %storemerge = phi i64 [ %i.l, %bb.d ], [ 1, %bb.a ] ; 2 uses
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.d = mul i64 %storemerge, 81608
  %i.e = call ptr @AllocateMemory(i64 noundef %i.d, ptr noundef nonnull %i.a) #11 ; 4 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  call void @ReportError(ptr noundef nonnull @.str.57, i32 noundef %i.f) #11
  call void @FreeMemory(ptr noundef %i.e, ptr noundef nonnull %i.a) #11
  call void (...) @ErrorExit() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.h = call fastcc i64 @DoAssignIteration(ptr noundef %i.e, i64 noundef %i.g)
  %i.i = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @FreeMemory(ptr noundef %i.e, ptr noundef nonnull %i.a) #11
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  br label %.preheader

bb.e:                                             ; preds = %bb.a
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.n = mul i64 %i.m, 81608
  %i.o = call ptr @AllocateMemory(i64 noundef %i.n, ptr noundef nonnull %i.a) #11 ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ReportError(ptr noundef nonnull @.str.57, i32 noundef %i.p) #11
  call void @FreeMemory(ptr noundef %i.o, ptr noundef nonnull %i.a) #11
  call void (...) @ErrorExit() #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.f
  %.024 = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.e, %bb.c ] ; 9 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.r = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.q)
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.t = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.s)
  %i.u = add i64 %i.t, %i.r
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.w = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.v)
  %i.x = add i64 %i.w, %i.u
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.z = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.y)
  %i.aa = add i64 %i.z, %i.x
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.ac = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.ab)
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.af = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.ae)
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.ai = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.ah)
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.al = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.ak)
  %i.am = add i64 %i.al, %i.aj
  call void @FreeMemory(ptr noundef %.024, ptr noundef nonnull %i.a) #11
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !31
  %i.ao = uitofp i64 %i.an to double
  %i.ap = fmul nnan double %i.ao, 8.000000e+00
  %i.aq = call double @TicksToFracSecs(i64 noundef %i.am) #11
  %i.ar = fdiv double %i.ap, %i.aq
  store double %i.ar, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 24), align 8, !tbaa !32
  %i.as = load i32, ptr @global_assignstruct, align 8, !tbaa !30
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  store i32 1, ptr @global_assignstruct, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoAssignIteration(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [101 x i16], align 16             ; 29 uses
  %i.b = alloca [101 x i16], align 16             ; 12 uses
  %i.c = alloca [101 x [101 x i16]], align 16     ; 11 uses
  %i.d = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c, %bb.a
  %indvars.iv12.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next13.i.i, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [808 x i8], ptr %0, i64 %indvars.iv12.i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.f = tail call i32 @abs_randwc(i32 noundef 5000000) #11
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  store i64 %i.g, ptr %i.h, align 8, !tbaa !15
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 101
  br i1 %exitcond.not.i.i, label %bb.c, label %bb.b, !llvm.loop !86

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next13.i.i = add nuw nsw i64 %indvars.iv12.i.i, 1 ; 2 uses
  %exitcond15.not.i.i = icmp eq i64 %indvars.iv.next13.i.i, 101
  br i1 %exitcond15.not.i.i, label %LoadAssign.exit.i, label %.preheader.i.i, !llvm.loop !87

LoadAssign.exit.i:                                ; preds = %bb.c
  %i.i = icmp ugt i64 %1, 1
  br i1 %i.i, label %.preheader.i, label %LoadAssignArrayWithRand.exit

.preheader.i:                                     ; preds = %LoadAssign.exit.i, %CopyToAssign.exit.i
  %.014.i = phi i64 [ %i.dx, %CopyToAssign.exit.i ], [ 1, %LoadAssign.exit.i ] ; 2 uses
  %.sroa.0.013.i = phi ptr [ %i.k, %CopyToAssign.exit.i ], [ %0, %LoadAssign.exit.i ]
  %i.j = mul i64 %.014.i, 81608
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 81608 ; 2 uses
  %i.l = add i64 %i.j, -32
  %diff.check = icmp ult i64 %i.l, -31            ; 2 uses
  br label %.preheader.i9.i

.preheader.i9.i:                                  ; preds = %.unr-lcssa, %.preheader.i
  %indvars.iv15.i.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next16.i.i, %.unr-lcssa ] ; 3 uses
  %i.m = getelementptr inbounds nuw [808 x i8], ptr %0, i64 %indvars.iv15.i.i ; 55 uses
  %i.n = getelementptr inbounds nuw [808 x i8], ptr %i.k, i64 %indvars.iv15.i.i ; 55 uses
  br i1 %diff.check, label %vector.body, label %scalar.ph.prol.preheader

vector.body:                                      ; preds = %.preheader.i9.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !tbaa !15
  %wide.load22 = load <2 x i64>, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 8, !tbaa !15
  store <2 x i64> %wide.load22, ptr %i.p, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %wide.load.1 = load <2 x i64>, ptr %i.q, align 8, !tbaa !15
  %wide.load22.1 = load <2 x i64>, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store <2 x i64> %wide.load.1, ptr %i.s, align 8, !tbaa !15
  store <2 x i64> %wide.load22.1, ptr %i.t, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %wide.load.2 = load <2 x i64>, ptr %i.u, align 8, !tbaa !15
  %wide.load22.2 = load <2 x i64>, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store <2 x i64> %wide.load.2, ptr %i.w, align 8, !tbaa !15
  store <2 x i64> %wide.load22.2, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %wide.load.3 = load <2 x i64>, ptr %i.y, align 8, !tbaa !15
  %wide.load22.3 = load <2 x i64>, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store <2 x i64> %wide.load.3, ptr %i.aa, align 8, !tbaa !15
  store <2 x i64> %wide.load22.3, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %wide.load.4 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !15
  %wide.load22.4 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  store <2 x i64> %wide.load.4, ptr %i.ae, align 8, !tbaa !15
  store <2 x i64> %wide.load22.4, ptr %i.af, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %wide.load.5 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !15
  %wide.load22.5 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store <2 x i64> %wide.load.5, ptr %i.ai, align 8, !tbaa !15
  store <2 x i64> %wide.load22.5, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %wide.load.6 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !15
  %wide.load22.6 = load <2 x i64>, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  store <2 x i64> %wide.load.6, ptr %i.am, align 8, !tbaa !15
  store <2 x i64> %wide.load22.6, ptr %i.an, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %wide.load.7 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !15
  %wide.load22.7 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  store <2 x i64> %wide.load.7, ptr %i.aq, align 8, !tbaa !15
  store <2 x i64> %wide.load22.7, ptr %i.ar, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %wide.load.8 = load <2 x i64>, ptr %i.as, align 8, !tbaa !15
  %wide.load22.8 = load <2 x i64>, ptr %i.at, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  store <2 x i64> %wide.load.8, ptr %i.au, align 8, !tbaa !15
  store <2 x i64> %wide.load22.8, ptr %i.av, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  %wide.load.9 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !15
  %wide.load22.9 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  store <2 x i64> %wide.load.9, ptr %i.ay, align 8, !tbaa !15
  store <2 x i64> %wide.load22.9, ptr %i.az, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %wide.load.10 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !15
  %wide.load22.10 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  store <2 x i64> %wide.load.10, ptr %i.bc, align 8, !tbaa !15
  store <2 x i64> %wide.load22.10, ptr %i.bd, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %wide.load.11 = load <2 x i64>, ptr %i.be, align 8, !tbaa !15
  %wide.load22.11 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 352
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  store <2 x i64> %wide.load.11, ptr %i.bg, align 8, !tbaa !15
  store <2 x i64> %wide.load22.11, ptr %i.bh, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 400
  %wide.load.12 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !15
  %wide.load22.12 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 400
  store <2 x i64> %wide.load.12, ptr %i.bk, align 8, !tbaa !15
  store <2 x i64> %wide.load22.12, ptr %i.bl, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %wide.load.13 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !15
  %wide.load22.13 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  store <2 x i64> %wide.load.13, ptr %i.bo, align 8, !tbaa !15
  store <2 x i64> %wide.load22.13, ptr %i.bp, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %wide.load.14 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !15
  %wide.load22.14 = load <2 x i64>, ptr %i.br, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  store <2 x i64> %wide.load.14, ptr %i.bs, align 8, !tbaa !15
  store <2 x i64> %wide.load22.14, ptr %i.bt, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  %wide.load.15 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !15
  %wide.load22.15 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 480
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 496
  store <2 x i64> %wide.load.15, ptr %i.bw, align 8, !tbaa !15
  store <2 x i64> %wide.load22.15, ptr %i.bx, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 528
  %wide.load.16 = load <2 x i64>, ptr %i.by, align 8, !tbaa !15
  %wide.load22.16 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 512
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 528
  store <2 x i64> %wide.load.16, ptr %i.ca, align 8, !tbaa !15
  store <2 x i64> %wide.load22.16, ptr %i.cb, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 560
  %wide.load.17 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !15
  %wide.load22.17 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 560
  store <2 x i64> %wide.load.17, ptr %i.ce, align 8, !tbaa !15
  store <2 x i64> %wide.load22.17, ptr %i.cf, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %wide.load.18 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !15
  %wide.load22.18 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 576
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 592
  store <2 x i64> %wide.load.18, ptr %i.ci, align 8, !tbaa !15
  store <2 x i64> %wide.load22.18, ptr %i.cj, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 608
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 624
  %wide.load.19 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !15
  %wide.load22.19 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 608
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 624
  store <2 x i64> %wide.load.19, ptr %i.cm, align 8, !tbaa !15
  store <2 x i64> %wide.load22.19, ptr %i.cn, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 656
  %wide.load.20 = load <2 x i64>, ptr %i.co, align 8, !tbaa !15
  %wide.load22.20 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 640
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 656
  store <2 x i64> %wide.load.20, ptr %i.cq, align 8, !tbaa !15
  store <2 x i64> %wide.load22.20, ptr %i.cr, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 672
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  %wide.load.21 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !15
  %wide.load22.21 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 672
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 688
  store <2 x i64> %wide.load.21, ptr %i.cu, align 8, !tbaa !15
  store <2 x i64> %wide.load22.21, ptr %i.cv, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 704
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %wide.load.22 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !15
  %wide.load22.22 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 704
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 720
  store <2 x i64> %wide.load.22, ptr %i.cy, align 8, !tbaa !15
  store <2 x i64> %wide.load22.22, ptr %i.cz, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 736
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 752
  %wide.load.23 = load <2 x i64>, ptr %i.da, align 8, !tbaa !15
  %wide.load22.23 = load <2 x i64>, ptr %i.db, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 736
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 752
  store <2 x i64> %wide.load.23, ptr %i.dc, align 8, !tbaa !15
  store <2 x i64> %wide.load22.23, ptr %i.dd, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 768
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 784
  %wide.load.24 = load <2 x i64>, ptr %i.de, align 8, !tbaa !15
  %wide.load22.24 = load <2 x i64>, ptr %i.df, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 768
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 784
  store <2 x i64> %wide.load.24, ptr %i.dg, align 8, !tbaa !15
  store <2 x i64> %wide.load22.24, ptr %i.dh, align 8, !tbaa !15
  br label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %.preheader.i9.i, %vector.body
  %indvars.iv.i10.i.ph = phi i64 [ 0, %.preheader.i9.i ], [ 100, %vector.body ]
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv.i10.i.prol = phi i64 [ %indvars.iv.next.i11.i.prol, %scalar.ph.prol ], [ %indvars.iv.i10.i.ph, %scalar.ph.prol.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i10.i.prol
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i10.i.prol
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !15
  %indvars.iv.next.i11.i.prol = add nuw nsw i64 %indvars.iv.i10.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !88

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol
  br i1 %diff.check, label %.unr-lcssa, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i10.i = phi i64 [ %indvars.iv.next.i11.i.3, %scalar.ph ], [ %indvars.iv.next.i11.i.prol, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i10.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i10.i
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !15
  %indvars.iv.next.i11.i = add nuw nsw i64 %indvars.iv.i10.i, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i11.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i11.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !15
  %indvars.iv.next.i11.i.1 = add nuw nsw i64 %indvars.iv.i10.i, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i11.i.1
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !15
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i11.i.1
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !15
  %indvars.iv.next.i11.i.2 = add nuw nsw i64 %indvars.iv.i10.i, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i11.i.2
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i11.i.2
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !15
  %indvars.iv.next.i11.i.3 = add nuw nsw i64 %indvars.iv.i10.i, 4 ; 2 uses
  %exitcond.not.i12.i.3 = icmp eq i64 %indvars.iv.next.i11.i.3, 101
  br i1 %exitcond.not.i12.i.3, label %.unr-lcssa, label %scalar.ph, !llvm.loop !89

.unr-lcssa:                                       ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next16.i.i = add nuw nsw i64 %indvars.iv15.i.i, 1 ; 2 uses
  %exitcond18.not.i.i = icmp eq i64 %indvars.iv.next16.i.i, 101
  br i1 %exitcond18.not.i.i, label %CopyToAssign.exit.i, label %.preheader.i9.i, !llvm.loop !90

CopyToAssign.exit.i:                              ; preds = %.unr-lcssa
  %i.dx = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dx, %1
  br i1 %exitcond.not.i, label %LoadAssignArrayWithRand.exit.thread, label %.preheader.i, !llvm.loop !91

LoadAssignArrayWithRand.exit.thread:              ; preds = %CopyToAssign.exit.i
  %i.dy = tail call i64 (...) @StartStopwatch() #11
  br label %.lr.ph.preheader

LoadAssignArrayWithRand.exit:                     ; preds = %LoadAssign.exit.i
  %i.dz = tail call i64 (...) @StartStopwatch() #11 ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %LoadAssignArrayWithRand.exit.thread, %LoadAssignArrayWithRand.exit
  %i.ea = phi i64 [ %i.dy, %LoadAssignArrayWithRand.exit.thread ], [ %i.dz, %LoadAssignArrayWithRand.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Assignment.exit
  %.014 = phi i64 [ %i.un, %Assignment.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.0.013 = phi ptr [ %i.um, %Assignment.exit ], [ %0, %.lr.ph.preheader ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  br label %.preheader52.i.i

.preheader52.i.i:                                 ; preds = %vector.ph79, %.lr.ph
  %indvars.iv68.i.i = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next69.i.i, %vector.ph79 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [808 x i8], ptr %.sroa.0.013, i64 %indvars.iv68.i.i ; 54 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %.preheader52.i.i
  %index89 = phi i64 [ 0, %.preheader52.i.i ], [ %index.next94, %vector.body88 ] ; 2 uses
  %vec.phi90 = phi <2 x i64> [ splat (i64 9223372036854775807), %.preheader52.i.i ], [ %i.ej, %vector.body88 ]
  %vec.phi91 = phi <2 x i64> [ splat (i64 9223372036854775807), %.preheader52.i.i ], [ %i.ek, %vector.body88 ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index89 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load92 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !15
  %wide.load93 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !15
  %i.ej = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load92, <2 x i64> %vec.phi90) ; 2 uses
  %i.ek = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load93, <2 x i64> %vec.phi91) ; 2 uses
  %index.next94 = add nuw i64 %index89, 4         ; 2 uses
  %i.el = icmp eq i64 %index.next94, 100
  br i1 %i.el, label %vector.ph79, label %vector.body88, !llvm.loop !92

vector.ph79:                                      ; preds = %vector.body88
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.ej, <2 x i64> %i.ek)
  %i.em = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 800
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !15
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %i.eo, i64 %i.em) ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %spec.select.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 50 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load82 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !15
  %wide.load83 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !15
  %i.eq = sub nsw <2 x i64> %wide.load82, %broadcast.splat
  %i.er = sub nsw <2 x i64> %wide.load83, %broadcast.splat
  store <2 x i64> %i.eq, ptr %i.eg, align 8, !tbaa !15
  store <2 x i64> %i.er, ptr %i.ep, align 8, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 32 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 48 ; 2 uses
  %wide.load82.1 = load <2 x i64>, ptr %i.es, align 8, !tbaa !15
  %wide.load83.1 = load <2 x i64>, ptr %i.et, align 8, !tbaa !15
  %i.eu = sub nsw <2 x i64> %wide.load82.1, %broadcast.splat
  %i.ev = sub nsw <2 x i64> %wide.load83.1, %broadcast.splat
  store <2 x i64> %i.eu, ptr %i.es, align 8, !tbaa !15
  store <2 x i64> %i.ev, ptr %i.et, align 8, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 64 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 80 ; 2 uses
  %wide.load82.2 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !15
  %wide.load83.2 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !15
  %i.ey = sub nsw <2 x i64> %wide.load82.2, %broadcast.splat
  %i.ez = sub nsw <2 x i64> %wide.load83.2, %broadcast.splat
  store <2 x i64> %i.ey, ptr %i.ew, align 8, !tbaa !15
  store <2 x i64> %i.ez, ptr %i.ex, align 8, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 96 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eg, i64 112 ; 2 uses
  %wide.load82.3 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !15
  %wide.load83.3 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !15
  %i.fc = sub nsw <2 x i64> %wide.load82.3, %broadcast.splat
  %i.fd = sub nsw <2 x i64> %wide.load83.3, %broadcast.splat
  store <2 x i64> %i.fc, ptr %i.fa, align 8, !tbaa !15
  store <2 x i64> %i.fd, ptr %i.fb, align 8, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eg, i64 128 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eg, i64 144 ; 2 uses
  %wide.load82.4 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !15
  %wide.load83.4 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !15
  %i.fg = sub nsw <2 x i64> %wide.load82.4, %broadcast.splat
  %i.fh = sub nsw <2 x i64> %wide.load83.4, %broadcast.splat
  store <2 x i64> %i.fg, ptr %i.fe, align 8, !tbaa !15
  store <2 x i64> %i.fh, ptr %i.ff, align 8, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eg, i64 160 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 176 ; 2 uses
  %wide.load82.5 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !15
  %wide.load83.5 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !15
  %i.fk = sub nsw <2 x i64> %wide.load82.5, %broadcast.splat
  %i.fl = sub nsw <2 x i64> %wide.load83.5, %broadcast.splat
  store <2 x i64> %i.fk, ptr %i.fi, align 8, !tbaa !15
  store <2 x i64> %i.fl, ptr %i.fj, align 8, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 192 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eg, i64 208 ; 2 uses
  %wide.load82.6 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !15
  %wide.load83.6 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !15
  %i.fo = sub nsw <2 x i64> %wide.load82.6, %broadcast.splat
  %i.fp = sub nsw <2 x i64> %wide.load83.6, %broadcast.splat
  store <2 x i64> %i.fo, ptr %i.fm, align 8, !tbaa !15
  store <2 x i64> %i.fp, ptr %i.fn, align 8, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eg, i64 224 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eg, i64 240 ; 2 uses
  %wide.load82.7 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !15
  %wide.load83.7 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !15
  %i.fs = sub nsw <2 x i64> %wide.load82.7, %broadcast.splat
  %i.ft = sub nsw <2 x i64> %wide.load83.7, %broadcast.splat
  store <2 x i64> %i.fs, ptr %i.fq, align 8, !tbaa !15
  store <2 x i64> %i.ft, ptr %i.fr, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 256 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eg, i64 272 ; 2 uses
  %wide.load82.8 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !15
  %wide.load83.8 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !15
  %i.fw = sub nsw <2 x i64> %wide.load82.8, %broadcast.splat
  %i.fx = sub nsw <2 x i64> %wide.load83.8, %broadcast.splat
  store <2 x i64> %i.fw, ptr %i.fu, align 8, !tbaa !15
  store <2 x i64> %i.fx, ptr %i.fv, align 8, !tbaa !15
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 288 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eg, i64 304 ; 2 uses
  %wide.load82.9 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !15
  %wide.load83.9 = load <2 x i64>, ptr %i.fz, align 8, !tbaa !15
  %i.ga = sub nsw <2 x i64> %wide.load82.9, %broadcast.splat
  %i.gb = sub nsw <2 x i64> %wide.load83.9, %broadcast.splat
  store <2 x i64> %i.ga, ptr %i.fy, align 8, !tbaa !15
  store <2 x i64> %i.gb, ptr %i.fz, align 8, !tbaa !15
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eg, i64 320 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eg, i64 336 ; 2 uses
  %wide.load82.10 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !15
  %wide.load83.10 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !15
  %i.ge = sub nsw <2 x i64> %wide.load82.10, %broadcast.splat
  %i.gf = sub nsw <2 x i64> %wide.load83.10, %broadcast.splat
  store <2 x i64> %i.ge, ptr %i.gc, align 8, !tbaa !15
  store <2 x i64> %i.gf, ptr %i.gd, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eg, i64 352 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eg, i64 368 ; 2 uses
  %wide.load82.11 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !15
  %wide.load83.11 = load <2 x i64>, ptr %i.gh, align 8, !tbaa !15
  %i.gi = sub nsw <2 x i64> %wide.load82.11, %broadcast.splat
  %i.gj = sub nsw <2 x i64> %wide.load83.11, %broadcast.splat
  store <2 x i64> %i.gi, ptr %i.gg, align 8, !tbaa !15
  store <2 x i64> %i.gj, ptr %i.gh, align 8, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eg, i64 384 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eg, i64 400 ; 2 uses
  %wide.load82.12 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !15
  %wide.load83.12 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !15
  %i.gm = sub nsw <2 x i64> %wide.load82.12, %broadcast.splat
  %i.gn = sub nsw <2 x i64> %wide.load83.12, %broadcast.splat
  store <2 x i64> %i.gm, ptr %i.gk, align 8, !tbaa !15
  store <2 x i64> %i.gn, ptr %i.gl, align 8, !tbaa !15
  %i.go = getelementptr inbounds nuw i8, ptr %i.eg, i64 416 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eg, i64 432 ; 2 uses
  %wide.load82.13 = load <2 x i64>, ptr %i.go, align 8, !tbaa !15
  %wide.load83.13 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !15
  %i.gq = sub nsw <2 x i64> %wide.load82.13, %broadcast.splat
  %i.gr = sub nsw <2 x i64> %wide.load83.13, %broadcast.splat
  store <2 x i64> %i.gq, ptr %i.go, align 8, !tbaa !15
  store <2 x i64> %i.gr, ptr %i.gp, align 8, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eg, i64 448 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eg, i64 464 ; 2 uses
  %wide.load82.14 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !15
  %wide.load83.14 = load <2 x i64>, ptr %i.gt, align 8, !tbaa !15
  %i.gu = sub nsw <2 x i64> %wide.load82.14, %broadcast.splat
  %i.gv = sub nsw <2 x i64> %wide.load83.14, %broadcast.splat
  store <2 x i64> %i.gu, ptr %i.gs, align 8, !tbaa !15
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !tbaa !15
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eg, i64 480 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eg, i64 496 ; 2 uses
  %wide.load82.15 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !15
  %wide.load83.15 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !15
  %i.gy = sub nsw <2 x i64> %wide.load82.15, %broadcast.splat
  %i.gz = sub nsw <2 x i64> %wide.load83.15, %broadcast.splat
  store <2 x i64> %i.gy, ptr %i.gw, align 8, !tbaa !15
  store <2 x i64> %i.gz, ptr %i.gx, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eg, i64 512 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eg, i64 528 ; 2 uses
  %wide.load82.16 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !15
  %wide.load83.16 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !15
  %i.hc = sub nsw <2 x i64> %wide.load82.16, %broadcast.splat
  %i.hd = sub nsw <2 x i64> %wide.load83.16, %broadcast.splat
  store <2 x i64> %i.hc, ptr %i.ha, align 8, !tbaa !15
  store <2 x i64> %i.hd, ptr %i.hb, align 8, !tbaa !15
  %i.he = getelementptr inbounds nuw i8, ptr %i.eg, i64 544 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eg, i64 560 ; 2 uses
  %wide.load82.17 = load <2 x i64>, ptr %i.he, align 8, !tbaa !15
  %wide.load83.17 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !15
  %i.hg = sub nsw <2 x i64> %wide.load82.17, %broadcast.splat
  %i.hh = sub nsw <2 x i64> %wide.load83.17, %broadcast.splat
  store <2 x i64> %i.hg, ptr %i.he, align 8, !tbaa !15
  store <2 x i64> %i.hh, ptr %i.hf, align 8, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %i.eg, i64 576 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eg, i64 592 ; 2 uses
  %wide.load82.18 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !15
  %wide.load83.18 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !15
end_hunk_0
