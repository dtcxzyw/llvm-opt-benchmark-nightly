Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sunadaptcontroller_soderlind?download=true
inline.NumInlined: 33
inline.NumDeleted: 1
begin_hunk_0_@SUNAdaptController_SetOptions_Soderlind:bb.a
  %i.bz = tail call double @SUNStrToReal(ptr noundef %i.by) #17 ; 2 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !23    ; 4 uses
  store double %i.bu, ptr %i.ca, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store double %i.bz, ptr %i.cb, align 8, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cd = fcmp une double %i.bz, 0.000000e+00
  %..i.i = zext i1 %i.cd to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  store i32 %..i.i, ptr %i.ce, align 4, !tbaa !27
  br label %SUNAdaptController_SetParams_Soderlind.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(9) @.str.18) #19
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = add nsw i32 %.0144177.i, 1              ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40
  %i.cl = tail call double @SUNStrToReal(ptr noundef %i.ck) #17
  %i.cm = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  store double %i.cl, ptr %i.cm, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 84
  store i32 0, ptr %i.co, align 4, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i8 0, i64 32, i1 false)
  br label %SUNAdaptController_SetParams_Soderlind.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(14) @.str.19) #19
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr i8, ptr %i.m, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !40
  %i.ct = tail call double @SUNStrToReal(ptr noundef %i.cs) #17
  %i.cu = add nsw i32 %.0144177.i, 2              ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !40
  %i.cy = tail call double @SUNStrToReal(ptr noundef %i.cx) #17 ; 3 uses
  %i.cz = fadd double %i.ct, %i.cy
  %i.da = fneg double %i.cy
  %i.db = load ptr, ptr %0, align 8, !tbaa !23    ; 4 uses
  store double %i.cz, ptr %i.db, align 8, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store double %i.da, ptr %i.dc, align 8, !tbaa !31
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = fcmp une double %i.cy, 0.000000e+00
  %..i172.i = zext i1 %i.de to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  store i32 %..i172.i, ptr %i.df, align 4, !tbaa !27
  br label %SUNAdaptController_SetParams_Soderlind.exit.i

bb.y:                                             ; preds = %bb.w
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(14) @.str.20) #19
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr i8, ptr %i.m, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !40
  %i.dk = tail call double @SUNStrToReal(ptr noundef %i.dj) #17
  %i.dl = add nsw i32 %.0144177.i, 2              ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40
  %i.dp = tail call double @SUNStrToReal(ptr noundef %i.do) #17 ; 2 uses
  %i.dq = fadd double %i.dk, %i.dp
  %i.dr = fneg double %i.dp
  %i.ds = load ptr, ptr %0, align 8, !tbaa !23    ; 5 uses
  store double %i.dq, ptr %i.ds, align 8, !tbaa !30
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store double %i.dr, ptr %i.dt, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.du, align 8, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  store double 0.000000e+00, ptr %i.dv, align 8, !tbaa !38
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 84
  store i32 1, ptr %i.dw, align 4, !tbaa !27
  br label %SUNAdaptController_SetParams_Soderlind.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(17) @.str.21) #19
  %i.dy = icmp eq i32 %i.dx, 0
  %spec.select171.i = select i1 %i.dy, i32 1, i32 %.0146176.i
  br label %SUNAdaptController_SetParams_Soderlind.exit.i

SUNAdaptController_SetParams_Soderlind.exit.i:    ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.q, %bb.o, %bb.l, %bb.k, %bb.i, %.lr.ph.i
  %.1147.i = phi i32 [ %.0146176.i, %.lr.ph.i ], [ %spec.select171.i, %bb.aa ], [ %.0146176.i, %bb.l ], [ %.0146176.i, %bb.t ], [ %.0146176.i, %bb.v ], [ %.0146176.i, %bb.x ], [ %.0146176.i, %bb.z ], [ %.0146176.i, %bb.i ], [ %.0146176.i, %bb.k ], [ %.0146176.i, %bb.o ], [ %.0146176.i, %bb.q ], [ %.0146176.i, %bb.r ] ; 2 uses
  %.1145.i = phi i32 [ %.0144177.i, %.lr.ph.i ], [ %.0144177.i, %bb.aa ], [ %i.af, %bb.l ], [ %i.bv, %bb.t ], [ %i.ch, %bb.v ], [ %i.cu, %bb.x ], [ %i.dl, %bb.z ], [ %i.af, %bb.i ], [ %i.af, %bb.k ], [ %i.bd, %bb.o ], [ %i.bd, %bb.q ], [ %i.bd, %bb.r ]
  %i.dz = add nsw i32 %.1145.i, 1                 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, %3
  br i1 %i.ea, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %SUNAdaptController_SetParams_Soderlind.exit.i
  %i.eb = icmp eq i32 %.1147.i, 0
  br i1 %i.eb, label %setFromCommandLine_Soderlind.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i
  %i.ec = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.ed = tail call i32 @SUNAdaptController_Write(ptr noundef %0, ptr noundef %i.ec) #17 ; 0 uses
  br label %setFromCommandLine_Soderlind.exit

setFromCommandLine_Soderlind.exit:                ; preds = %bb.ab, %bb.f, %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.j) #17
  br label %bb.ac

bb.ac:                                            ; preds = %setFromCommandLine_Soderlind.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNAdaptController_SetDefaults_Soderlind(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
  store <2 x double> <double 1.250000e+00, double 5.000000e-01>, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double -7.500000e-01, double 2.500000e-01>, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> <double 7.500000e-01, double 1.000000e+00>, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 2, ptr %i.d, align 4, !tbaa !27
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define noundef i32 @SUNAdaptController_Write_Soderlind(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #5 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 37, i64 1, ptr %1) ; 0 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = load double, ptr %i.a, align 8, !tbaa !30
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, double noundef %i.b) #17 ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !31
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, double noundef %i.f) #17 ; 0 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !35
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, double noundef %i.j) #17 ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !34
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.4, double noundef %i.n) #17 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !38
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5, double noundef %i.r) #17 ; 0 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load double, ptr %i.u, align 8, !tbaa !29
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, double noundef %i.v) #17 ; 0 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load double, ptr %i.y, align 8, !tbaa !33
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.7, double noundef %i.z) #17 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !37
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.8, double noundef %i.ad) #17 ; 0 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !32
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.9, double noundef %i.ah) #17 ; 0 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load double, ptr %i.ak, align 8, !tbaa !36
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.10, double noundef %i.al) #17 ; 0 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !28
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %i.ap) #17 ; 0 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 84
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %i.at) #17 ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNAdaptController_SetErrorBias_Soderlind(ptr nofree noundef readonly captures(none) %0, double noundef %1) #4 {
bb.a:
  %i.a = fcmp ugt double %1, 0.000000e+00
  %i.b = load ptr, ptr %0, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %. = select i1 %i.a, double %1, double 1.000000e+00
  store double %., ptr %i.c, align 8, !tbaa !29
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNAdaptController_UpdateH_Soderlind(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %3 = load <2 x double>, ptr %i.c, align 8, !tbaa !25
  %4 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %2, i64 0
  %5 = fmul <2 x double> %4, %3
  store <2 x double> %5, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store double %i.e, ptr %i.f, align 8, !tbaa !36
  store double %1, ptr %i.d, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.h, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @SUNAdaptController_Space_Soderlind(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  store i64 10, ptr %1, align 8, !tbaa !44
  store i64 2, ptr %2, align 8, !tbaa !44
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNAdaptController_SetParams_Soderlind(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %2, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %3, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %4, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %5, ptr %i.e, align 8, !tbaa !38
  %i.f = fcmp une double %5, 0.000000e+00
  %i.g = fcmp une double %3, 0.000000e+00
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 2, ptr %i.h, align 4, !tbaa !27
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = fcmp une double %4, 0.000000e+00
  %i.j = fcmp une double %2, 0.000000e+00
  %or.cond3 = or i1 %i.j, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 84 ; 2 uses
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.k, align 4, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef ptr @SUNAdaptController_PID(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SUNAdaptController_NewEmpty(ptr noundef %0) #17 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 9 uses
  store ptr @SUNAdaptController_GetType_Soderlind, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @SUNAdaptController_EstimateStep_Soderlind, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @SUNAdaptController_Reset_Soderlind, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @SUNAdaptController_SetOptions_Soderlind, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @SUNAdaptController_SetDefaults_Soderlind, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @SUNAdaptController_Write_Soderlind, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr @SUNAdaptController_SetErrorBias_Soderlind, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr @SUNAdaptController_UpdateH_Soderlind, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr @SUNAdaptController_Space_Soderlind, ptr %i.k, align 8, !tbaa !22
  %i.l = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #18 ; 9 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  store <2 x double> splat (double 1.000000e+00), ptr %i.m, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store <2 x double> splat (double 1.000000e+00), ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store double 1.000000e+00, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i32 0, ptr %i.s, align 8, !tbaa !28
  store <2 x double> <double 5.800000e-01, double -2.100000e-01>, ptr %i.l, align 8, !tbaa !25
  store double 1.000000e-01, ptr %i.n, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.p, align 4, !tbaa !27
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNAdaptController_SetParams_PID(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 6 uses
  store double %1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %2, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %3, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = fcmp une double %3, 0.000000e+00
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 2, ptr %i.f, align 4, !tbaa !27
  br label %SUNAdaptController_SetParams_Soderlind.exit

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp une double %2, 0.000000e+00
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 84 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.h, align 4, !tbaa !27
  br label %SUNAdaptController_SetParams_Soderlind.exit

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 4, !tbaa !27
  br label %SUNAdaptController_SetParams_Soderlind.exit

SUNAdaptController_SetParams_Soderlind.exit:      ; preds = %bb.b, %bb.d, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef ptr @SUNAdaptController_PI(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SUNAdaptController_NewEmpty(ptr noundef %0) #17 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 9 uses
  store ptr @SUNAdaptController_GetType_Soderlind, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @SUNAdaptController_EstimateStep_Soderlind, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @SUNAdaptController_Reset_Soderlind, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @SUNAdaptController_SetOptions_Soderlind, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @SUNAdaptController_SetDefaults_Soderlind, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @SUNAdaptController_Write_Soderlind, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr @SUNAdaptController_SetErrorBias_Soderlind, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr @SUNAdaptController_UpdateH_Soderlind, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr @SUNAdaptController_Space_Soderlind, ptr %i.k, align 8, !tbaa !22
  %i.l = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #18 ; 8 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  store <2 x double> splat (double 1.000000e+00), ptr %i.m, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store <2 x double> splat (double 1.000000e+00), ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i32 0, ptr %i.r, align 8, !tbaa !28
  store <2 x double> <double 8.000000e-01, double -3.100000e-01>, ptr %i.l, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.o, align 4, !tbaa !27
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNAdaptController_SetParams_PI(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
SUNAdaptController_SetParams_Soderlind.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
  store double %1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
