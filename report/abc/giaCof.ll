Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCof?download=true
inline.NumInlined: 312
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cof_ManPrintFanio:bb.a
._crit_edge.thread:                               ; preds = %bb.bk, %._crit_edge
  call void @free(ptr noundef nonnull %i.cm) #28
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  %i.jh = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !36 ; 2 uses
  %.not.i237 = icmp eq ptr %i.ji, null
  br i1 %.not.i237, label %Vec_IntFree.exit238, label %bb.bl

bb.bl:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.ji) #28
  br label %Vec_IntFree.exit238

Vec_IntFree.exit238:                              ; preds = %Vec_IntFree.exit, %bb.bl
  call void @free(ptr noundef nonnull %i.co) #28
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !36 ; 2 uses
  %.not.i239 = icmp eq ptr %i.jk, null
  br i1 %.not.i239, label %Vec_IntFree.exit240, label %bb.bm

bb.bm:                                            ; preds = %Vec_IntFree.exit238
  call void @free(ptr noundef nonnull %i.jk) #28
  br label %Vec_IntFree.exit240

Vec_IntFree.exit240:                              ; preds = %Vec_IntFree.exit238, %bb.bm
  call void @free(ptr noundef nonnull %i.cn) #28
  %i.jl = getelementptr i8, ptr %0, i64 28
  %.val204 = load i32, ptr %i.jl, align 4, !tbaa !51
  %i.jm = sitofp i32 %.val204 to double           ; 2 uses
  %i.jn = fdiv double %.0158.lcssa352364378, %i.jm
  %i.jo = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %.0.lcssa, i64 1
  %i.jq = fdiv <2 x double> %i.bk, %i.jp          ; 2 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0
  %i.js = extractelement <2 x double> %i.jq, i64 1
  %i.jt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %.0164.lcssa349367375, double noundef %i.jn, i32 noundef %.0162.lcssa350366376, double noundef %i.jr, i32 noundef %.0160.lcssa351365377, double noundef %i.js) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @Gia_ManPrintFanio(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #28
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !91
  %.neg16 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !92
  %.neg = sdiv i64 %i.e, -1000
  %.neg17 = add i64 %.neg, %.neg16
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg17, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.f = call ptr @Cof_ManCreateLogicSimple(ptr noundef %0) ; 8 uses
  %i.g = call i32 @Gia_ManLevelNum(ptr noundef %0) #28
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %i.h, ptr %i.i, align 8, !tbaa !65
  %i.j = sext i32 %i.h to i64
  %i.k = call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 4) #26
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.k, ptr %i.l, align 8, !tbaa !54
  call void @Cof_ManPrintFanio(ptr noundef %i.f)
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i, label %Cof_ManResetTravId.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.f, i64 40
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i, label %Cof_ManResetTravId.exit, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.split.i.i
  %.08.i.i = phi i32 [ %i.x, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = zext nneg i32 %.08.i.i to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !50
  %.val7.i.i = load i32, ptr %i.s, align 4        ; 2 uses
  %i.u = lshr i32 %.val7.i.i, 4
  %i.v = and i32 %i.u, 15
  %i.w = lshr i32 %.val7.i.i, 8
  %narrow.i.i.i = add nuw nsw i32 %.08.i.i, 6
  %narrow2.i.i.i = add nuw nsw i32 %narrow.i.i.i, %i.w
  %i.x = add nuw nsw i32 %narrow2.i.i.i, %i.v     ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.o
  br i1 %i.y, label %.lr.ph.split.i.i, label %Cof_ManResetTravId.exit, !llvm.loop !0

Cof_ManResetTravId.exit:                          ; preds = %.lr.ph.split.i.i, %bb.c, %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 1, ptr %i.z, align 8, !tbaa !55
  call void @Gia_ManHashStart(ptr noundef %0) #28
  call void @Cof_ManPrintHighFanout(ptr noundef nonnull %i.f, i32 noundef %1)
  call void @Gia_ManHashStop(ptr noundef %0) #28
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22)
  %i.aa = load i32, ptr %i.n, align 8, !tbaa !41
  %i.ab = shl nsw i32 %i.aa, 2
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fmul nnan double %i.ac, f0x3EB0000000000000
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, double noundef %i.ad)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.24)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ae = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #28
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %Abc_Clock.exit15, label %bb.d

bb.d:                                             ; preds = %Cof_ManResetTravId.exit
  %i.ag = load i64, ptr %2, align 8, !tbaa !91
  %i.ah = mul nsw i64 %i.ag, 1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !92
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ah
  br label %Abc_Clock.exit15

Abc_Clock.exit15:                                 ; preds = %Cof_ManResetTravId.exit, %bb.d
  %.0.i14 = phi i64 [ %i.al, %bb.d ], [ -1, %Cof_ManResetTravId.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.am = add i64 %.0.i14, %.0.i.neg
  %i.an = sitofp i64 %i.am to double
  %i.ao = fdiv double %i.an, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.ao)
  br label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit15, %Abc_Clock.exit
  call void @Cof_ManStop(ptr noundef nonnull %i.f)
  ret void
}

declare i32 @Gia_ManLevelNum(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManHashStart(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManHashStop(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #12 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !47
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #28 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #28
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #28 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !97
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #28 ; 0 uses
  call void @free(ptr noundef %i.d) #28
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !97, !noalias !98
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #28, !inline_history !95 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManDupCofInt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val129 = load i32, ptr %i.b, align 8, !tbaa !40 ; 3 uses
  %i.c = icmp slt i32 %1, %.val129
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %1, i32 noundef 0, i32 noundef %.val129) ; 0 uses
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %.val132 = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %.val132, i64 %i.f ; 7 uses
  %.val136 = load i64, ptr %i.g, align 4          ; 3 uses
  %i.h = and i64 %.val136, 2147483648
  %.not.i.i = icmp ne i64 %i.h, 0
  %i.i = and i64 %.val136, 536870911
  %i.j = icmp eq i64 %i.i, 536870911
  %narrow.i.not.not.i.not159 = or i1 %.not.i.i, %i.j
  %i.k = and i64 %.val136, 2684354559
  %narrow.i3.i = icmp ne i64 %i.k, 2684354559
  %narrow.i.not = and i1 %narrow.i3.i, %narrow.i.not.not.i.not159
  br i1 %narrow.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %1) ; 0 uses
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.m = tail call ptr @Gia_ManStart(i32 noundef %.val129) #28 ; 12 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #30
  %i.p = add i64 %i.o, 1
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #27 ; 2 uses
  %i.r = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %i.n) #28 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 3 uses
  %.not.i149 = icmp eq ptr %i.u, null
  br i1 %.not.i149, label %Abc_UtilStrsav.exit150, label %bb.f

bb.f:                                             ; preds = %Abc_UtilStrsav.exit
  %i.v = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.u) #30
  %i.w = add i64 %i.v, 1
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #27 ; 2 uses
  %i.y = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull readonly dereferenceable(1) %i.u) #28 ; 0 uses
  br label %Abc_UtilStrsav.exit150

Abc_UtilStrsav.exit150:                           ; preds = %Abc_UtilStrsav.exit, %bb.f
  %i.z = phi ptr [ %i.x, %bb.f ], [ null, %Abc_UtilStrsav.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !67
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.m) #28
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #28
  %.val137 = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %.val137, i64 8
  store i32 0, ptr %i.ab, align 4, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val126161 = load i32, ptr %i.ae, align 4, !tbaa !34
  %i.af = icmp sgt i32 %.val126161, 0
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit150, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %Abc_UtilStrsav.exit150 ] ; 2 uses
  %i.ag = phi ptr [ %i.ap, %bb.g ], [ %i.ad, %Abc_UtilStrsav.exit150 ]
  %.0163 = phi i32 [ %spec.select, %bb.g ], [ -1, %Abc_UtilStrsav.exit150 ] ; 2 uses
  %.val142 = load ptr, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.not116 = icmp eq ptr %.val142, null
  br i1 %.not116, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val143.val = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val143.val, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %.val142, i64 %i.ak ; 2 uses
  %i.am = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.m) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = icmp eq ptr %i.al, %i.g                 ; 2 uses
  %spec.store.select = select i1 %i.ao, i32 0, i32 %i.am
  store i32 %spec.store.select, ptr %i.an, align 4, !tbaa !46
  %spec.select = select i1 %i.ao, i32 %i.am, i32 %.0163 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.val126 = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.ar = sext i32 %.val126 to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph, label %.critedge, !llvm.loop !99

.critedge:                                        ; preds = %.lr.ph, %bb.g, %Abc_UtilStrsav.exit150
  %.0.lcssa = phi i32 [ -1, %Abc_UtilStrsav.exit150 ], [ %spec.select, %bb.g ], [ %.0163, %.lr.ph ] ; 2 uses
  %i.at = load i32, ptr %i.b, align 8, !tbaa !40  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph168, label %.critedge2

.lr.ph168:                                        ; preds = %.critedge, %bb.j
  %i.av = phi i32 [ %i.bv, %bb.j ], [ %i.at, %.critedge ] ; 2 uses
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %bb.j ], [ 0, %.critedge ] ; 2 uses
  %.2167 = phi i32 [ %.3, %bb.j ], [ %.0.lcssa, %.critedge ] ; 3 uses
  %.val131 = load ptr, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %.val131, i64 %indvars.iv187 ; 5 uses
  %.not117 = icmp eq ptr %.val131, null
  br i1 %.not117, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %.lr.ph168
  %.val135 = load i64, ptr %i.aw, align 4         ; 5 uses
  %i.ax = and i64 %.val135, 2147483648
  %.not.i151 = icmp ne i64 %i.ax, 0
  %i.ay = and i64 %.val135, 536870911             ; 2 uses
  %i.az = icmp eq i64 %i.ay, 536870911
  %narrow.i152.not = or i1 %.not.i151, %i.az
  br i1 %narrow.i152.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [12 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !46
  %i.be = trunc i64 %.val135 to i32
  %i.bf = lshr i32 %i.be, 29
  %i.bg = and i32 %i.bf, 1
  %i.bh = xor i32 %i.bd, %i.bg
  %i.bi = lshr i64 %.val135, 32
  %i.bj = and i64 %i.bi, 536870911
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [12 x i8], ptr %i.aw, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !46
  %i.bo = lshr i64 %.val135, 61
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 1
  %i.br = xor i32 %i.bn, %i.bq
  %i.bs = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.m, i32 noundef %i.bh, i32 noundef %i.br) #28 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bu = icmp eq ptr %i.aw, %i.g                 ; 2 uses
  %spec.store.select155 = select i1 %i.bu, i32 0, i32 %i.bs
  store i32 %spec.store.select155, ptr %i.bt, align 4, !tbaa !46
  %spec.select156 = select i1 %i.bu, i32 %i.bs, i32 %.2167
  %.pre = load i32, ptr %i.b, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = phi i32 [ %i.av, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %.2167, %bb.h ], [ %spec.select156, %bb.i ] ; 2 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next188, %i.bw
  br i1 %i.bx, label %.lr.ph168, label %.critedge2, !llvm.loop !100

.critedge2:                                       ; preds = %.lr.ph168, %bb.j, %.critedge
  %i.by = phi i32 [ %i.at, %.critedge ], [ %i.bv, %bb.j ], [ %i.av, %.lr.ph168 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.0.lcssa, %.critedge ], [ %.3, %bb.j ], [ %.2167, %.lr.ph168 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !38 ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %.val125 = load i32, ptr %i.cb, align 4, !tbaa !34 ; 5 uses
  %i.cc = icmp sgt i32 %.val125, 0
  br i1 %i.cc, label %.lr.ph173, label %.critedge4

.lr.ph173:                                        ; preds = %.critedge2
  %.val146 = load ptr, ptr %i.e, align 8, !tbaa !44 ; 4 uses
  %.not118 = icmp eq ptr %.val146, null
  br i1 %.not118, label %.critedge4, label %.lr.ph173.split

.lr.ph173.split:                                  ; preds = %.lr.ph173
  %i.cd = getelementptr i8, ptr %i.ca, i64 8
  %.val147.val = load ptr, ptr %i.cd, align 8, !tbaa !36 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val125 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ce = icmp eq i32 %.val125, 1
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph173.split.new

.lr.ph173.split.new:                              ; preds = %.lr.ph173.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph173.split.new
  %indvars.iv190 = phi i64 [ 0, %.lr.ph173.split.new ], [ %indvars.iv.next191.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph173.split.new ], [ %niter.next.1, %bb.k ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val147.val, i64 %indvars.iv190
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !47
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [12 x i8], ptr %.val146, i64 %i.ch ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 4            ; 2 uses
  %i.ck = and i64 %i.cj, 536870911
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [12 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !46
  %i.cp = trunc i64 %i.cj to i32
  %i.cq = lshr i32 %i.cp, 29
  %i.cr = and i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !46
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val147.val, i64 %indvars.iv190
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [12 x i8], ptr %.val146, i64 %i.cx ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 4            ; 2 uses
  %i.da = and i64 %i.cz, 536870911
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds [12 x i8], ptr %i.cy, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !46
  %i.df = trunc i64 %i.cz to i32
  %i.dg = lshr i32 %i.df, 29
  %i.dh = and i32 %i.dg, 1
  %i.di = xor i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !46
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge4.loopexit.unr-lcssa, label %bb.k, !llvm.loop !101

.critedge4.loopexit.unr-lcssa:                    ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge4, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph173.split
  %indvars.iv190.epil.init = phi i64 [ 0, %.lr.ph173.split ], [ %indvars.iv.next191.1, %.critedge4.loopexit.unr-lcssa ]
  %lcmp.mod214 = trunc i32 %.val125 to i1
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.val147.val, i64 %indvars.iv190.epil.init
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !47
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [12 x i8], ptr %.val146, i64 %i.dm ; 3 uses
  %i.do = load i64, ptr %i.dn, align 4            ; 2 uses
  %i.dp = and i64 %i.do, 536870911
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds [12 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !46
  %i.du = trunc i64 %i.do to i32
  %i.dv = lshr i32 %i.du, 29
  %i.dw = and i32 %i.dv, 1
  %i.dx = xor i32 %i.dw, %i.dt
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !46
  br label %.critedge4

.critedge4:                                       ; preds = %.epil.preheader, %.critedge4.loopexit.unr-lcssa, %.lr.ph173, %.critedge2
  %i.dz = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %.val124175 = load i32, ptr %i.ea, align 4, !tbaa !34 ; 4 uses
  %i.eb = icmp sgt i32 %.val124175, 0
  br i1 %i.eb, label %.lr.ph177, label %.critedge6

.lr.ph177:                                        ; preds = %.critedge4
  %.val140 = load ptr, ptr %i.e, align 8, !tbaa !44 ; 4 uses
  %.not119 = icmp eq ptr %.val140, null
  br i1 %.not119, label %.critedge6, label %bb.l

bb.l:                                             ; preds = %.lr.ph177
  %2 = getelementptr i8, ptr %i.m, i64 64
  %3 = getelementptr i8, ptr %i.dz, i64 8
  %.val141.val = load ptr, ptr %3, align 8, !tbaa !36 ; 3 uses
  %.val139 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = getelementptr i8, ptr %.val139, i64 8
  %.val140.a = load ptr, ptr %4, align 8, !tbaa !36 ; 3 uses
  %wide.trip.count195 = zext nneg i32 %.val124175 to i64 ; 2 uses
  %xtraiter219 = and i64 %wide.trip.count195, 1
  %.not119.a = icmp eq i32 %.val124175, 1
  br i1 %.not119.a, label %.critedge6.loopexit, label %.lr.ph176.split.new

.lr.ph176.split.new:                              ; preds = %bb.l
  %unroll_iter222 = and i64 %wide.trip.count195, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph176.split.new
  %indvars.iv192 = phi i64 [ 0, %.lr.ph176.split.new ], [ %indvars.iv.next193.1, %bb.m ] ; 4 uses
  %niter223 = phi i64 [ 0, %.lr.ph176.split.new ], [ %niter223.next.1, %bb.m ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val141.val, i64 %indvars.iv192
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !47
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [12 x i8], ptr %.val140, i64 %i.ee ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %.val140.a, i64 %indvars.iv192
  %6 = load i32, ptr %5, align 4, !tbaa !47
  %7 = shl nsw i32 %6, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %8 = icmp eq ptr %i.ef, %i.g
  %spec.store.select157 = select i1 %8, i32 1, i32 %7
  store i32 %spec.store.select157, ptr %i.eg, align 4, !tbaa !46
  %indvars.iv.next193 = or disjoint i64 %indvars.iv192, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val141.val, i64 %indvars.iv.next193
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !47
  %9 = sext i32 %i.ei to i64
  %10 = getelementptr inbounds [12 x i8], ptr %.val140, i64 %9 ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %.val140.a, i64 %indvars.iv.next193
  %12 = load i32, ptr %11, align 4, !tbaa !47
  %13 = shl nsw i32 %12, 1
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %15 = icmp eq ptr %10, %i.g
  %spec.store.select157.1 = select i1 %15, i32 1, i32 %13
  store i32 %spec.store.select157.1, ptr %14, align 4, !tbaa !46
  %indvars.iv.next193.1 = add nuw nsw i64 %indvars.iv192, 2 ; 2 uses
  %niter223.next.1 = add i64 %niter223, 2         ; 2 uses
  %niter223.ncmp.1 = icmp eq i64 %niter223.next.1, %unroll_iter222
  br i1 %niter223.ncmp.1, label %.critedge6.loopexit.unr-lcssa, label %bb.m, !llvm.loop !102

.critedge6.loopexit.unr-lcssa:                    ; preds = %bb.m
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %.critedge6, label %.critedge6.loopexit

.critedge6.loopexit:                              ; preds = %.critedge6.loopexit.unr-lcssa, %bb.l
  %indvars.iv192.epil.init = phi i64 [ 0, %bb.l ], [ %indvars.iv.next193.1, %.critedge6.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod221 = trunc i32 %.val124175 to i1
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %16 = getelementptr inbounds nuw [4 x i8], ptr %.val141.val, i64 %indvars.iv192.epil.init
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [12 x i8], ptr %.val140, i64 %18 ; 2 uses
  %20 = getelementptr inbounds nuw [4 x i8], ptr %.val140.a, i64 %indvars.iv192.epil.init
  %.pre203 = load i32, ptr %20, align 4, !tbaa !47
  %21 = shl nsw i32 %.pre203, 1
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp eq ptr %19, %i.g
  %spec.store.select157.epil = select i1 %23, i32 1, i32 %21
  store i32 %spec.store.select157.epil, ptr %22, align 4, !tbaa !46
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge6.loopexit.unr-lcssa, %.lr.ph177, %.critedge4
  %i.ej = icmp sgt i32 %i.by, 0
  br i1 %i.ej, label %.lr.ph180, label %.critedge8

.lr.ph180:                                        ; preds = %.critedge6, %bb.p
  %i.ek = phi i32 [ %i.fk, %bb.p ], [ %i.by, %.critedge6 ]
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %bb.p ], [ 0, %.critedge6 ] ; 2 uses
  %.val130 = load ptr, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %.val130, i64 %indvars.iv196 ; 5 uses
  %.not120 = icmp eq ptr %.val130, null
  br i1 %.not120, label %.critedge8.a, label %bb.n

bb.n:                                             ; preds = %.lr.ph180
  %.val134 = load i64, ptr %i.el, align 4         ; 5 uses
  %i.em = and i64 %.val134, 2147483648
  %.not.i153 = icmp ne i64 %i.em, 0
  %i.en = and i64 %.val134, 536870911             ; 2 uses
  %i.eo = icmp eq i64 %i.en, 536870911
  %narrow.i154.not = or i1 %.not.i153, %i.eo
  br i1 %narrow.i154.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ep = sub nsw i64 0, %i.en
  %i.eq = getelementptr inbounds [12 x i8], ptr %i.el, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !46
  %i.et = trunc i64 %.val134 to i32
  %i.eu = lshr i32 %i.et, 29
  %i.ev = and i32 %i.eu, 1
  %i.ew = xor i32 %i.es, %i.ev
  %i.ex = lshr i64 %.val134, 32
  %i.ey = and i64 %i.ex, 536870911
  %i.ez = sub nsw i64 0, %i.ey
  %i.fa = getelementptr inbounds [12 x i8], ptr %i.el, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !46
  %i.fd = lshr i64 %.val134, 61
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 1
  %i.fg = xor i32 %i.fc, %i.ff
  %i.fh = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.m, i32 noundef %i.ew, i32 noundef %i.fg) #28
  %i.fi = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.fj = icmp eq ptr %i.el, %i.g
  %spec.store.select158 = select i1 %i.fj, i32 1, i32 %i.fh
  store i32 %spec.store.select158, ptr %i.fi, align 4, !tbaa !46
  %.pre204 = load i32, ptr %i.b, align 8, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fk = phi i32 [ %.pre204, %bb.o ], [ %i.ek, %bb.n ] ; 2 uses
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next197, %i.fl
  br i1 %i.fm, label %.lr.ph180, label %.critedge8.a, !llvm.loop !103

.critedge8.a:                                     ; preds = %bb.p, %.lr.ph180
  %i.fn = load ptr, ptr %i.bz, align 8, !tbaa !38 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %.val182 = load i32, ptr %i.fo, align 4, !tbaa !34
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.a, %.critedge6
  %.val181 = phi i32 [ %.val182, %.critedge8.a ], [ %.val125, %.critedge6 ]
  %24 = phi ptr [ %i.fn, %.critedge8.a ], [ %i.ca, %.critedge6 ]
  %25 = icmp sgt i32 %.val181, 0
  br i1 %25, label %.lr.ph184, label %.critedge10

.lr.ph184:                                        ; preds = %.critedge8, %bb.s
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.s ], [ 0, %.critedge8 ] ; 2 uses
  %i.fp = phi ptr [ %i.gk, %bb.s ], [ %24, %.critedge8 ]
  %.val144 = load ptr, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.not121 = icmp eq ptr %.val144, null
  br i1 %.not121, label %.critedge10, label %bb.q

bb.q:                                             ; preds = %.lr.ph184
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %.val145.val = load ptr, ptr %i.fq, align 8, !tbaa !36
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val145.val, i64 %indvars.iv199
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !47
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [12 x i8], ptr %.val144, i64 %i.ft ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !46 ; 3 uses
  %i.fx = load i64, ptr %i.fu, align 4            ; 2 uses
  %i.fy = and i64 %i.fx, 536870911
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr inbounds [12 x i8], ptr %i.fu, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !46
  %i.gd = trunc i64 %i.fx to i32
  %i.ge = lshr i32 %i.gd, 29
  %i.gf = and i32 %i.ge, 1
  %i.gg = xor i32 %i.gf, %i.gc                    ; 2 uses
  %i.gh = icmp eq i32 %i.fw, %i.gg
  br i1 %i.gh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = tail call i32 @Gia_ManHashMux(ptr noundef nonnull %i.m, i32 noundef %.2.lcssa, i32 noundef %i.gg, i32 noundef %i.fw) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sink = phi i32 [ %i.gi, %bb.r ], [ %i.fw, %bb.q ]
  %i.gj = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.m, i32 noundef %.sink)
  store i32 %i.gj, ptr %i.fv, align 4, !tbaa !46
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.gk = load ptr, ptr %i.bz, align 8, !tbaa !38 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 4
  %.val = load i32, ptr %i.gl, align 4, !tbaa !34
  %i.gm = sext i32 %.val to i64
  %i.gn = icmp slt i64 %indvars.iv.next200, %i.gm
  br i1 %i.gn, label %.lr.ph184, label %.critedge10, !llvm.loop !104

.critedge10:                                      ; preds = %.lr.ph184, %bb.s, %.critedge8
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.m) #28
  %i.go = getelementptr i8, ptr %0, i64 16
  %.val148 = load i32, ptr %i.go, align 8, !tbaa !68
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.m, i32 noundef %.val148) #28
  br label %bb.t

bb.t:                                             ; preds = %.critedge10, %bb.c, %._crit_edge
  %.0108 = phi ptr [ %i.m, %.critedge10 ], [ null, %bb.c ], [ null, %._crit_edge ]
  ret ptr %.0108
}

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #4

declare void @Gia_ManHashAlloc(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManFillValue(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendCi(ptr nofree noundef captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 4 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2684354559                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.f, align 4, !tbaa !34
  %i.g = and i32 %.val, 536870911
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 32
  %i.j = and i64 %i.c, -2305843004918726657
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 4
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !33   ; 6 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val11 = load ptr, ptr %i.m, align 8, !tbaa !44 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34   ; 7 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !35
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  store ptr %i.w, ptr %i.s, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.x = icmp samesign ult i32 %i.o, 1073741823
  %i.y = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aa, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ac) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  store ptr %i.af, ptr %i.z, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.l, align 8, !tbaa !35
  %.pre = load i32, ptr %i.n, align 4, !tbaa !34
  %.val10.pre = load ptr, ptr %i.m, align 8, !tbaa !44
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %.val10 = phi ptr [ %.val11, %bb.a ], [ %.val11, %bb.f ], [ %.val10.pre, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ag = phi i32 [ %i.o, %bb.a ], [ %i.o, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ah = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ai = ptrtoint ptr %.val11 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 12
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = add nsw i32 %i.ag, 1
  store i32 %i.ao, ptr %i.n, align 4, !tbaa !34
  %i.ap = sext i32 %i.ag to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %i.al, ptr %i.aq, align 4, !tbaa !47
  %i.ar = ptrtoint ptr %.val10 to i64
  %i.as = sub i64 %i.ah, %i.ar
  %i.at = sdiv exact i64 %i.as, 12
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 1
  ret i32 %i.av
}

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendCo(ptr noundef %0, i32 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 8 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2147483648                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.f = ptrtoint ptr %.val20 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %1, 1
  %i.k = sub i32 %i.i, %i.j
  %i.l = and i32 %i.k, 536870911
  %i.m = zext nneg i32 %i.l to i64
  %i.n = and i64 %i.c, -1073741824
  %i.o = shl i32 %1, 29
  %i.p = and i32 %i.o, 536870912
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.m               ; 2 uses
  store i64 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !34
  %i.w = and i32 %.val, 536870911
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = and i64 %i.s, -2305843004918726657
  %i.aa = or disjoint i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.a, align 4
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !38  ; 6 uses
  %.val19 = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.ac = ptrtoint ptr %.val19 to i64
  %i.ad = sub i64 %i.e, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34 ; 7 uses
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !35
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.ap = phi ptr [ %i.an, %bb.d ], [ %i.ao, %bb.e ]
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.aq = icmp samesign ult i32 %i.ah, 1073741823
  %i.ar = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
end_hunk_0
