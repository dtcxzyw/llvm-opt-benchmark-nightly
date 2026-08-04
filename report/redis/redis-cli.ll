inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@main:bb.a
  call void @exit(i32 noundef 0) #37
  unreachable

bb.acm:                                           ; preds = %bb.acb
  %i.cuy = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !276
  %.not38 = icmp eq i32 %i.cuy, 0
  br i1 %.not38, label %bb.ada, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.cuz = call fastcc i32 @cliConnect(i32 noundef 0)
  %i.cva = icmp eq i32 %i.cuz, -1
  br i1 %i.cva, label %bb.aco, label %bb.acp

bb.aco:                                           ; preds = %bb.acn
  call void @exit(i32 noundef 1) #40
  unreachable

bb.acp:                                           ; preds = %bb.acn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.cvb = call i64 @time(ptr noundef null) #32
  %i.cvc = call i32 @getpid() #32
  %i.cvd = trunc i64 %i.cvb to i32
  %i.cve = xor i32 %i.cvc, %i.cvd
  call void @srand(i32 noundef %i.cve) #32
  %i.cvf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cvg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.acq

bb.acq:                                           ; preds = %bb.acz, %bb.acp
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.cvm = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #32 ; 0 uses
  %i.cvn = load i64, ptr %6, align 8, !tbaa !314
  %i.cvo = mul nsw i64 %i.cvn, 1000000
  %i.cvp = load i64, ptr %i.cvf, align 8, !tbaa !315
  %i.cvq = add nsw i64 %i.cvo, %i.cvp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.neg.neg.i = sdiv i64 %i.cvq, 1000
  %invariant.op.i = add nsw i64 %.neg.neg.i, 1000
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acx, %bb.acq
  %.030.i = phi i64 [ 0, %bb.acq ], [ %.232.i, %bb.acx ] ; 4 uses
  %.027.i = phi i64 [ 0, %bb.acq ], [ %.229.i, %bb.acx ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.cvr = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #32 ; 0 uses
  %i.cvs = load i64, ptr %5, align 8, !tbaa !314
  %i.cvt = mul nsw i64 %i.cvs, 1000000
  %i.cvu = load i64, ptr %i.cvg, align 8, !tbaa !315
  %i.cvv = add nsw i64 %i.cvt, %i.cvu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.cvw = sdiv i64 %i.cvv, 1000
  %i.cvx = icmp slt i64 %i.cvw, %invariant.op.i
  br i1 %i.cvx, label %.preheader37.i, label %bb.acz

.preheader37.i:                                   ; preds = %bb.acr, %.preheader37.i
  %.041.i = phi i32 [ %i.cxh, %.preheader37.i ], [ 0, %bb.acr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i8 0, ptr %i.cvh, align 1, !tbaa !73
  %i.cvy = call i32 @rand() #32
  %i.cvz = srem i32 %i.cvy, 57
  %i.cwa = trunc nsw i32 %i.cvz to i8
  %i.cwb = add nsw i8 %i.cwa, 65
  store i8 %i.cwb, ptr %i.e, align 1, !tbaa !73
  %i.cwc = call i32 @rand() #32
  %i.cwd = srem i32 %i.cwc, 57
  %i.cwe = trunc nsw i32 %i.cwd to i8
  %i.cwf = add nsw i8 %i.cwe, 65
  store i8 %i.cwf, ptr %i.cvi, align 1, !tbaa !73
  %i.cwg = call i32 @rand() #32
  %i.cwh = srem i32 %i.cwg, 57
  %i.cwi = trunc nsw i32 %i.cwh to i8
  %i.cwj = add nsw i8 %i.cwi, 65
  store i8 %i.cwj, ptr %i.cvj, align 1, !tbaa !73
  %i.cwk = call i32 @rand() #32
  %i.cwl = srem i32 %i.cwk, 57
  %i.cwm = trunc nsw i32 %i.cwl to i8
  %i.cwn = add nsw i8 %i.cwm, 65
  store i8 %i.cwn, ptr %i.cvk, align 1, !tbaa !73
  %i.cwo = call i32 @rand() #32
  %i.cwp = srem i32 %i.cwo, 57
  %i.cwq = trunc nsw i32 %i.cwp to i8
  %i.cwr = add nsw i8 %i.cwq, 65
  store i8 %i.cwr, ptr %i.cvl, align 1, !tbaa !73
  %i.cws = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !223
  %i.cwt = add i64 %i.cws, 1                      ; 2 uses
  %i.cwu = call i32 @rand() #32
  %i.cwv = sitofp i32 %i.cwu to double
  %i.cww = fdiv double %i.cwv, f0x41DFFFFFFFC00000
  %i.cwx = sitofp i64 %i.cwt to double
  %i.cwy = call double @pow(double noundef %i.cwx, double noundef 7.200000e+00) #32, !tbaa !9
  %i.cwz = fadd double %i.cwy, -1.000000e+00
  %i.cxa = call double @llvm.fmuladd.f64(double %i.cwz, double %i.cww, double 1.000000e+00)
  %i.cxb = call double @pow(double noundef %i.cxa, double noundef f0x3FC1C71C71C71C72) #32, !tbaa !9
  %i.cxc = fptosi double %i.cxb to i64
  %i.cxd = sub i64 %i.cwt, %i.cxc
  %i.cxe = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.123, i64 noundef %i.cxd) #32 ; 0 uses
  %i.cxf = load ptr, ptr @context, align 8, !tbaa !215
  %i.cxg = call i32 (ptr, ptr, ...) @redisAppendCommand(ptr noundef %i.cxf, ptr noundef nonnull @.str.873, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.cxh = add nuw nsw i32 %.041.i, 1             ; 2 uses
  %exitcond.not.i143 = icmp eq i32 %i.cxh, 250
  br i1 %exitcond.not.i143, label %.preheader36.i, label %.preheader37.i, !llvm.loop !372

.preheader36.i:                                   ; preds = %.preheader37.i, %.preheader36.i
  %.142.i = phi i32 [ %i.cxk, %.preheader36.i ], [ 0, %.preheader37.i ]
  %i.cxi = load ptr, ptr @context, align 8, !tbaa !215
  %i.cxj = call i32 @redisGetReply(ptr noundef %i.cxi, ptr noundef nonnull %i.c) #32 ; 0 uses
  %i.cxk = add nuw nsw i32 %.142.i, 1             ; 2 uses
  %exitcond50.not.i = icmp eq i32 %i.cxk, 250
  br i1 %exitcond50.not.i, label %.preheader35.i, label %.preheader36.i, !llvm.loop !373

.preheader35.i:                                   ; preds = %.preheader36.i, %.preheader35.i
  %.243.i = phi i32 [ %i.cya, %.preheader35.i ], [ 0, %.preheader36.i ]
  %i.cxl = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !223
  %i.cxm = add i64 %i.cxl, 1                      ; 2 uses
  %i.cxn = call i32 @rand() #32
  %i.cxo = sitofp i32 %i.cxn to double
  %i.cxp = fdiv double %i.cxo, f0x41DFFFFFFFC00000
  %i.cxq = sitofp i64 %i.cxm to double
  %i.cxr = call double @pow(double noundef %i.cxq, double noundef 7.200000e+00) #32, !tbaa !9
  %i.cxs = fadd double %i.cxr, -1.000000e+00
  %i.cxt = call double @llvm.fmuladd.f64(double %i.cxs, double %i.cxp, double 1.000000e+00)
  %i.cxu = call double @pow(double noundef %i.cxt, double noundef f0x3FC1C71C71C71C72) #32, !tbaa !9
  %i.cxv = fptosi double %i.cxu to i64
  %i.cxw = sub i64 %i.cxm, %i.cxv
  %i.cxx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.123, i64 noundef %i.cxw) #32 ; 0 uses
  %i.cxy = load ptr, ptr @context, align 8, !tbaa !215
  %i.cxz = call i32 (ptr, ptr, ...) @redisAppendCommand(ptr noundef %i.cxy, ptr noundef nonnull @.str.874, ptr noundef nonnull %i.d) #32 ; 0 uses
  %i.cya = add nuw nsw i32 %.243.i, 1             ; 2 uses
  %exitcond51.not.i = icmp eq i32 %i.cya, 250
  br i1 %exitcond51.not.i, label %.preheader.i144, label %.preheader35.i, !llvm.loop !374

.preheader.i144:                                  ; preds = %.preheader35.i, %bb.acw
  %.346.i = phi i32 [ %i.cym, %bb.acw ], [ 0, %.preheader35.i ]
  %.12845.i = phi i64 [ %.229.i, %bb.acw ], [ %.027.i, %.preheader35.i ] ; 4 uses
  %.13144.i = phi i64 [ %.232.i, %bb.acw ], [ %.030.i, %.preheader35.i ] ; 4 uses
  %i.cyb = load ptr, ptr @context, align 8, !tbaa !215
  %i.cyc = call i32 @redisGetReply(ptr noundef %i.cyb, ptr noundef nonnull %i.c) #32
  %i.cyd = icmp eq i32 %i.cyc, 0
  br i1 %i.cyd, label %bb.acs, label %bb.acw

bb.acs:                                           ; preds = %.preheader.i144
  %i.cye = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %i.cyf = load i32, ptr %i.cye, align 8, !tbaa !41
  switch i32 %i.cyf, label %bb.acv [
    i32 6, label %bb.act
    i32 4, label %bb.acu
  ]

bb.act:                                           ; preds = %bb.acs
  %i.cyg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cye, i64 32
  %i.cyi = load ptr, ptr %i.cyh, align 8, !tbaa !42
  %i.cyj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cyg, ptr noundef nonnull @.str.4, ptr noundef %i.cyi) #39 ; 0 uses
  br label %bb.acw

bb.acu:                                           ; preds = %bb.acs
  %i.cyk = add nsw i64 %.12845.i, 1
  br label %bb.acw

bb.acv:                                           ; preds = %bb.acs
  %i.cyl = add nsw i64 %.13144.i, 1
  br label %bb.acw

bb.acw:                                           ; preds = %bb.acv, %bb.acu, %bb.act, %.preheader.i144
  %.232.i = phi i64 [ %i.cyl, %bb.acv ], [ %.13144.i, %bb.act ], [ %.13144.i, %bb.acu ], [ %.13144.i, %.preheader.i144 ] ; 2 uses
  %.229.i = phi i64 [ %.12845.i, %bb.acv ], [ %.12845.i, %bb.act ], [ %i.cyk, %bb.acu ], [ %.12845.i, %.preheader.i144 ] ; 2 uses
  %i.cym = add nuw nsw i32 %.346.i, 1             ; 2 uses
  %exitcond52.not.i = icmp eq i32 %i.cym, 250
  br i1 %exitcond52.not.i, label %bb.acx, label %.preheader.i144, !llvm.loop !375

bb.acx:                                           ; preds = %bb.acw
  %i.cyn = load ptr, ptr @context, align 8, !tbaa !215
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 8
  %i.cyp = load i32, ptr %i.cyo, align 8, !tbaa !166
  %.not.i145 = icmp eq i32 %i.cyp, 0
  br i1 %.not.i145, label %bb.acr, label %bb.acy, !llvm.loop !376

bb.acy:                                           ; preds = %bb.acx
  %i.cyq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cyr = call i64 @fwrite(ptr nonnull @.str.875, i64 26, i64 1, ptr %i.cyq) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.acz:                                           ; preds = %bb.acr
  %i.cys = add nsw i64 %.027.i, %.030.i           ; 3 uses
  %i.cyt = icmp sgt i64 %i.cys, 0                 ; 2 uses
  %i.cyu = sitofp i64 %.030.i to double
  %i.cyv = uitofp nneg i64 %i.cys to double
  %i.cyw = sitofp i64 %.027.i to double
  %i.cyx = insertelement <2 x double> poison, double %i.cyu, i64 0
  %i.cyy = insertelement <2 x double> %i.cyx, double %i.cyw, i64 1
  %i.cyz = insertelement <2 x double> poison, double %i.cyv, i64 0
  %i.cza = shufflevector <2 x double> %i.cyz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.czb = fdiv <2 x double> %i.cyy, %i.cza
  %36 = fmul <2 x double> %i.czb, splat (double 1.000000e+02) ; 2 uses
  %37 = extractelement <2 x double> %36, i64 0
  %i.czc = select i1 %i.cyt, double %37, double 0.000000e+00
  %i.czd = extractelement <2 x double> %36, i64 1
  %i.cze = select i1 %i.cyt, double %i.czd, double 0.000000e+00
  %i.czf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.876, i64 noundef %i.cys, i64 noundef %.030.i, double noundef %i.czc, i64 noundef %.027.i, double noundef %i.cze) ; 0 uses
  br label %bb.acq

bb.ada:                                           ; preds = %bb.acm
  %i.czg = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 268), align 4, !tbaa !247
  %.not39 = icmp eq i32 %i.czg, 0
  br i1 %.not39, label %bb.adg, label %bb.adb

bb.adb:                                           ; preds = %bb.ada
  %i.czh = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !281
  %i.czi = sext i32 %i.czh to i64
  %i.czj = mul nsw i64 %i.czi, 1000000            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.czk = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #32 ; 0 uses
  %i.czl = load i64, ptr %4, align 8, !tbaa !314
  %i.czm = mul nsw i64 %i.czl, 1000000
  %i.czn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.czo = load i64, ptr %i.czn, align 8, !tbaa !315
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.czp = add i64 %i.czo, %i.czj
  %i.czq = add i64 %i.czp, %i.czm
  %i.czr = call ptr @signal(i32 noundef 2, ptr noundef nonnull @longStatLoopModeStop) #32 ; 0 uses
  %i.czs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.czt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.czu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.czv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.czw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.czx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.czy = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.czz = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.daa = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dab = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.dac = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.dad = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.dae = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.daf = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.dag = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.dah = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.dai = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  br label %vector.ph.outer

vector.ph.outer:                                  ; preds = %bb.ade, %bb.adb
  %.018.i.ph = phi i64 [ %i.dbn, %bb.ade ], [ 0, %bb.adb ]
  %.0.i146.ph = phi i64 [ %.1.i152, %bb.ade ], [ 0, %bb.adb ] ; 2 uses
  br label %vector.ph

vector.ph:                                        ; preds = %vector.ph.outer, %compute_something_fast.exit.i
  %.018.i = phi i64 [ %i.dbn, %compute_something_fast.exit.i ], [ %.018.i.ph, %vector.ph.outer ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.daj = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #32 ; 0 uses
  %i.dak = load i64, ptr %3, align 8, !tbaa !314
  %i.dal = load i64, ptr %i.czs, align 8, !tbaa !315
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.b, align 16, !tbaa !73
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.czu, align 16, !tbaa !73
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.czv, align 16, !tbaa !73
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.czw, align 16, !tbaa !73
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.czx, align 16, !tbaa !73
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.czy, align 16, !tbaa !73
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.czz, align 16, !tbaa !73
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.daa, align 16, !tbaa !73
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.dab, align 16, !tbaa !73
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.dac, align 16, !tbaa !73
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.dad, align 16, !tbaa !73
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.dae, align 16, !tbaa !73
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.daf, align 16, !tbaa !73
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.dag, align 16, !tbaa !73
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.dah, align 16, !tbaa !73
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.dai, align 16, !tbaa !73
  br label %.preheader.i.i149

.preheader.i.i149:                                ; preds = %.preheader.i.i149, %vector.ph
  %.01824.i.i = phi i32 [ 1000, %vector.ph ], [ %i.daw, %.preheader.i.i149 ]
  %.01923.i.i = phi i8 [ 0, %vector.ph ], [ %i.dax, %.preheader.i.i149 ] ; 2 uses
  %.02022.i.i = phi i32 [ 0, %vector.ph ], [ %i.dbc, %.preheader.i.i149 ]
  %i.dam = or disjoint i8 %.01923.i.i, 1
  %i.dan = zext i8 %i.dam to i64
  %i.dao = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dan ; 2 uses
  %i.dap = load i8, ptr %i.dao, align 1, !tbaa !73 ; 2 uses
  %i.daq = zext i8 %i.dap to i32
  %i.dar = add i32 %.02022.i.i, %i.daq            ; 2 uses
  %i.das = and i32 %i.dar, 255
  %i.dat = zext nneg i32 %i.das to i64
  %i.dau = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dat ; 2 uses
  %i.dav = load i8, ptr %i.dau, align 1, !tbaa !73
  store i8 %i.dav, ptr %i.dao, align 1, !tbaa !73
  store i8 %i.dap, ptr %i.dau, align 1, !tbaa !73
  %i.daw = add nsw i32 %.01824.i.i, -2            ; 2 uses
  %i.dax = add i8 %.01923.i.i, 2                  ; 2 uses
  %i.day = zext i8 %i.dax to i64
  %i.daz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.day ; 2 uses
  %i.dba = load i8, ptr %i.daz, align 2, !tbaa !73 ; 2 uses
  %i.dbb = zext i8 %i.dba to i32
  %i.dbc = add i32 %i.dar, %i.dbb                 ; 2 uses
  %i.dbd = and i32 %i.dbc, 255
  %i.dbe = zext nneg i32 %i.dbd to i64
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dbe ; 2 uses
  %i.dbg = load i8, ptr %i.dbf, align 1, !tbaa !73
  store i8 %i.dbg, ptr %i.daz, align 2, !tbaa !73
  store i8 %i.dba, ptr %i.dbf, align 1, !tbaa !73
  %.not.i.i150.1 = icmp eq i32 %i.daw, 0
  br i1 %.not.i.i150.1, label %compute_something_fast.exit.i, label %.preheader.i.i149, !llvm.loop !224

compute_something_fast.exit.i:                    ; preds = %.preheader.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.dbh = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #32 ; 0 uses
  %i.dbi = load i64, ptr %2, align 8, !tbaa !314
  %i.dbj = mul nsw i64 %i.dbi, 1000000
  %i.dbk = load i64, ptr %i.czt, align 8, !tbaa !315
  %i.dbl = add nsw i64 %i.dbj, %i.dbk             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.neg.i151 = mul i64 %i.dak, -1000000
  %.neg21.i = sub i64 %.neg.i151, %i.dal
  %i.dbm = add i64 %i.dbl, %.neg21.i              ; 4 uses
  %i.dbn = add nuw nsw i64 %.018.i, 1             ; 4 uses
  %i.dbo = icmp slt i64 %i.dbm, 1
  br i1 %i.dbo, label %vector.ph, label %bb.adc

bb.adc:                                           ; preds = %compute_something_fast.exit.i
  %i.dbp = icmp sgt i64 %i.dbm, %.0.i146.ph
  br i1 %i.dbp, label %bb.add, label %bb.ade

bb.add:                                           ; preds = %bb.adc
  %i.dbq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.877, i64 noundef %i.dbm) ; 0 uses
  br label %bb.ade

bb.ade:                                           ; preds = %bb.add, %bb.adc
  %.1.i152 = phi i64 [ %i.dbm, %bb.add ], [ %.0.i146.ph, %bb.adc ] ; 2 uses
  %i.dbr = load volatile i32, ptr @force_cancel_loop, align 4, !tbaa !9
  %.not.i153 = icmp ne i32 %i.dbr, 0
  %i.dbs = icmp sgt i64 %i.dbl, %i.czq
  %or.cond.i154 = select i1 %.not.i153, i1 true, i1 %i.dbs
  br i1 %or.cond.i154, label %bb.adf, label %vector.ph.outer

bb.adf:                                           ; preds = %bb.ade
  %i.dbt = sitofp i64 %i.czj to double
  %i.dbu = uitofp nneg i64 %i.dbn to double
  %i.dbv = fdiv double %i.dbt, %i.dbu             ; 3 uses
  %i.dbw = fmul double %i.dbv, 1.000000e+03
  %i.dbx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.878, i64 noundef %i.dbn, double noundef %i.dbv, double noundef %i.dbw) ; 0 uses
  %i.dby = uitofp nneg i64 %.1.i152 to double
  %i.dbz = fdiv double %i.dby, %i.dbv
  %i.dca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.879, double noundef %i.dbz) ; 0 uses
  call void @exit(i32 noundef 0) #37
  unreachable

bb.adg:                                           ; preds = %bb.ada
  %i.dcb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 720), align 8, !tbaa !296 ; 2 uses
  %.not40 = icmp eq ptr %i.dcb, null
  br i1 %.not40, label %bb.adi, label %bb.adh

bb.adh:                                           ; preds = %bb.adg
  call fastcc void @cliInitHelp()
  %i.dcc = call fastcc ptr @getHintForInput(ptr noundef nonnull %i.dcb)
  %puts.i156 = call i32 @puts(ptr nonnull dereferenceable(1) %i.dcc) ; 0 uses
  call void @exit(i32 noundef 0) #37
  unreachable

bb.adi:                                           ; preds = %bb.adg
  %i.dcd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 728), align 8, !tbaa !297 ; 2 uses
  %.not41 = icmp eq ptr %i.dcd, null
  br i1 %.not41, label %bb.adk, label %bb.adj

bb.adj:                                           ; preds = %bb.adi
  call void @testHintSuite(ptr noundef nonnull %i.dcd)
  unreachable

bb.adk:                                           ; preds = %bb.adi
  %i.dce = icmp ne i32 %0, %.0637841.i
  %i.dcf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 512), align 8 ; 2 uses
  %i.dcg = icmp ne ptr %i.dcf, null
  %or.cond3 = select i1 %i.dce, i1 true, i1 %i.dcg
  br i1 %or.cond3, label %bb.adm, label %bb.adl

bb.adl:                                           ; preds = %bb.adk
  %i.dch = call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #32 ; 0 uses
  %i.dci = call ptr @signal(i32 noundef 2, ptr noundef nonnull @sigIntHandler) #32 ; 0 uses
  %i.dcj = call fastcc i32 @cliConnect(i32 noundef 0) ; 0 uses
  call fastcc void @repl()
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 512), align 8, !tbaa !288
  br label %bb.adm

bb.adm:                                           ; preds = %bb.adl, %bb.adk
  %i.dck = phi ptr [ %.pr, %bb.adl ], [ %i.dcf, %bb.adk ]
  %.not42 = icmp eq ptr %i.dck, null
  br i1 %.not42, label %bb.aed, label %bb.adn

bb.adn:                                           ; preds = %bb.adm
  %i.dcl = call fastcc i32 @cliConnect(i32 noundef 0)
  %.not43 = icmp eq i32 %i.dcl, 0
  br i1 %.not43, label %bb.adp, label %bb.ado

bb.ado:                                           ; preds = %bb.adn
  call void @exit(i32 noundef 1) #40
  unreachable

bb.adp:                                           ; preds = %bb.adn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
end_hunk_0
